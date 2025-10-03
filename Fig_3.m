clear; clf;
rng('shuffle'); % Change seed each run; use rng(0) for reproducibility
% Problem parameters
M = 200;
N = 256;
tolerance = 1e-6; % Euclidean error threshold for a successful recovery
num_trials = 1000; % Number of trials per sparsity level
% Fix measurement matrix A
A = randn(M, N);
% Range of sparsity levels
K_values = 5:5:125;
num_K = length(K_values);
% Store success rates
success_rates_omp = zeros(1, num_K);
success_rates_our = zeros(1, num_K);
% --- Main Simulation Loop ---
for i = 1:num_K
    K = K_values(i);
    successes_omp = 0;
    successes_our = 0;
    for trial = 1:num_trials
        % Generate a K-sparse signal x_true
        x_true = zeros(N,1);
        idx = randperm(N, K);
        x_true(idx) = randn(K,1);
        % Generate measurements
        y = A * x_true;
        
        % --- Standard OMP ---
        r = y;
        Lambda = [];
        for t = 1:K
            correlations = abs(A' * r);
            correlations(Lambda) = -inf; % Prevent re-selection due to numerical issues
            [~, lambda_t] = max(correlations);
            Lambda(end+1) = lambda_t; %#ok<SAGROW>
            A_hat = A(:, Lambda);
            theta = A_hat \ y;
            r = y - A_hat * theta;
        end
        x_hat = zeros(N,1);
        x_hat(Lambda) = theta;
        % Check success
        err = norm(x_hat - x_true);
        if err < tolerance
            successes_omp = successes_omp + 1;
        end
        
        % --- Our OMP with Gram-Schmidt ---
        r = y;
        Lambda = [];
        Q = [];
        for t = 1:K
            correlations = abs(A' * r);
            correlations(Lambda) = -inf; % Prevent re-selection due to numerical issues
            [~, lambda_t] = max(correlations);
            Lambda(end+1) = lambda_t; %#ok<SAGROW>
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
        % Check success
        err = norm(x_hat - x_true);
        if err < tolerance
            successes_our = successes_our + 1;
        end
    end
    % Store success rate (%)
    success_rates_omp(i) = (successes_omp / num_trials) * 100;
    success_rates_our(i) = (successes_our / num_trials) * 100;
    fprintf('K = %d, OMP Success Rate = %.2f%%, Our OMP Success Rate = %.2f%%\n', K, success_rates_omp(i), success_rates_our(i));
end
% --- Plotting Section ---
figure('Color','w');
% Plot OMP success rate
plot(K_values, success_rates_omp, 's-', 'LineWidth', 1.5, 'MarkerSize', 6, ...
'DisplayName', 'OMP');
hold on;
% Plot Our OMP
plot(K_values, success_rates_our, 'o--', 'LineWidth', 1.5, 'MarkerSize', 6, 'DisplayName', 'Our OMP');
hold off;
% Labels, title, legend
title('Success Rate as a Function of Sparsity Level (K)');
xlabel('Sparsity level (K)');
ylabel('Success rate (%)');
legend('Location','SouthWest');
grid on;
% Axis formatting
xlim([0 130]);
ylim([0 100]);