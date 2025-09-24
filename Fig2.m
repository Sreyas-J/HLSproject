% plot_fig2_recreation_FIXED.m
% This script runs an Orthogonal Matching Pursuit (OMP) recovery simulation
% and formats the output plot to match the provided image.

clear; clf;
rng('shuffle');  % Change seed each run; use rng(0) for reproducibility

% Problem parameters from the figure's caption
M = 200;
N = 256;
K = 36;

max_attempts = 500;    % How many random trials to search for a "good" example
tolerance = 1e-6;      % Euclidean error threshold for a successful recovery

% Fix measurement matrix A
A = randn(M, N);

found = false;
attempt = 0;

% --- OMP Simulation Loop ---
% Find one trial where OMP successfully reconstructs the signal
while ~found && attempt < max_attempts
    attempt = attempt + 1;
    % Generate a K-sparse signal x_true
    x_true = zeros(N,1);
    idx = randperm(N, K);
    % Make signal values more pronounced to be visible
    x_true(idx) = 5 * (2 * rand(K, 1) - 1) + sign(randn(K,1)).*2;

    % Generate measurements y
    y = A * x_true;

    % --- OMP with Gram-Schmidt ---
    r = y;
    Lambda = [];
    Q = []; % Orthonormalized atoms from A
    for t = 1:K
        % Atom selection: find the column in A most correlated with the residual r
        [~, lambda_t] = max(abs(A' * r));
        Lambda(end+1) = lambda_t;    %#ok<SAGROW>
        a_t = A(:, lambda_t);

        % Gram-Schmidt orthogonalization of the new atom w.r.t. previous ones
        q_t = a_t;
        for j = 1:size(Q,2)
            h = Q(:,j)' * a_t;       % Projection coefficient
            q_t = q_t - h * Q(:,j);  % Remove projection
        end

        norm_qt = norm(q_t);
        %if norm_qt < 1e-12
            % Atom is nearly linearly dependent; skip adding (this is rare)
         %   q_t = zeros(size(a_t));
        %else
            q_t = q_t / norm_qt;     % Normalize to get an orthonormal vector
            Q = [Q, q_t];            %#ok<AGROW>
            % Update the residual by removing the projection onto the new vector
            r = r - (q_t' * r) * q_t;
        %end
    end

    % Compute coefficients using least squares on the set of selected atoms
    x_hat = zeros(N,1);
    if ~isempty(Lambda)
        A_hat = A(:, Lambda);
        theta = A_hat \ y; % Solve the least-squares problem
        x_hat(Lambda) = theta;
    end

    % Check if the recovery was successful
    err = norm(x_hat - x_true);
    if err < tolerance
        found = true;
        fprintf('Found successful reconstruction on attempt %d: error = %.2e\n', attempt, err);
    end
end

if ~found
    warning('Did not find a trial with error < %.1e in %d attempts. Showing last attempt (error=%.2e).', ...
            tolerance, max_attempts, err);
end

% --- Plotting Section (CORRECTED PLOT ORDER) ---
figure('Color','w'); % Create a new figure with a white background

% **FIX:** Plot the "Original" signal (black, solid line) FIRST
plot(x_true, '-', 'Color', 'k', 'LineWidth', 1.2, 'DisplayName', 'Original');
hold on; % Hold the plot to overlay the next one

% **FIX:** Plot the "Recovery" signal (red, dashed line) on TOP
plot(x_hat, '--', 'Color', [0.85, 0, 0], 'LineWidth', 1.0, 'DisplayName', 'Recovery');
hold off; % Release the hold

ylabel('Amplitude');
xlabel('Dimension');
title(sprintf('Reconstruction result of our OMP algorithm, M = 200, N = 256,and K = 36'));

% --- Format Axes and Legend ---
% Set axis limits and ticks to match the image
xlim([0 N]);
ylim([-15 15]);
xticks(0:50:250);
yticks(-15:5:15);

% Remove the grid
grid off;

% Set the legend to the top-right corner with a box
lgd = legend('Location', 'NorthEast');
set(lgd, 'Box', 'on');

fprintf('Final Euclidean distance ||x - x̂||_2 = %.3e\n', err);