% plot_fig2_recreation_UPDATED.m
% This script runs an Orthogonal Matching Pursuit (OMP) recovery simulation
% and plots recovery vs original signal in the same style as omp.m example.

clear; clf;
rng('shuffle');  % Change seed each run; use rng(0) for reproducibility

% Problem parameters
M = 200;
N = 256;
K = 36;

max_attempts = 500;    % Number of random trials to find a successful reconstruction
tolerance = 1e-6;      % Euclidean error threshold for success

% Fix measurement matrix A
A = randn(M, N);

found = false;
attempt = 0;

% --- OMP Simulation Loop ---
while ~found && attempt < max_attempts
    attempt = attempt + 1;
    
    % Generate a K-sparse signal x_true
    x_true = zeros(N,1);
    idx = randperm(N, K);
    x_true(idx) = randn(K,1);  % standard normal values for consistency

    % Measurements
    y = A * x_true;

    % --- OMP with Gram-Schmidt ---
    r = y;
    Lambda = [];
    Q = [];
    for t = 1:K
        [~, lambda_t] = max(abs(A' * r));
        Lambda(end+1) = lambda_t;    %#ok<SAGROW>
        a_t = A(:, lambda_t);

        % Orthogonalize atom
        q_t = a_t;
        for j = 1:size(Q,2)
            h = Q(:,j)' * a_t;
            q_t = q_t - h * Q(:,j);
        end
        q_t = q_t / norm(q_t);
        Q = [Q, q_t]; %#ok<AGROW>
        r = r - (q_t' * r) * q_t;
    end

    % Reconstruct x_hat
    x_hat = zeros(N,1);
    if ~isempty(Lambda)
        A_hat = A(:, Lambda);
        theta = A_hat \ y;
        x_hat(Lambda) = theta;
    end

    % Check if recovery was successful
    err = norm(x_hat - x_true);
    if err < tolerance
        found = true;
        fprintf('Successful reconstruction on attempt %d: error = %.2e\n', attempt, err);
    end
end

if ~found
    warning('Did not find a trial with error < %.1e in %d attempts. Showing last attempt (error=%.2e).', ...
            tolerance, max_attempts, err);
end

% --- Plotting Section (MATCHES omp.m STYLE) ---
figure('Color','w');

% Plot Recovery as red dashed line with circular markers
plot(1:N, x_hat, 'r--', 'LineWidth', 1, 'Marker', '.', 'MarkerSize', 10, ...
     'DisplayName','Recovery');
hold on;

% Plot Original as solid black line
plot(1:N, x_true, 'k-', 'LineWidth', 1, 'DisplayName','Original');
hold off;

% Labels, legend, title
title(sprintf('Recovery vs. Original'));
xlabel('Index');
ylabel('Amplitude');
xlim([0 N]);
legend('Location','NorthEast');
grid on;

fprintf('Final Euclidean distance ||x - x̂||_2 = %.3e\n', err);
