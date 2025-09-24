% success_rate_plotter.m
% Simulate OMP and "Our OMP" (Gram-Schmidt) success rates and plot like Fig.3
function Fig3()
    rng('default'); % reproducible results (remove if you want fresh randomness)
    
    % Problem / simulation settings (as in the figure)
    M = 200;        % number of measurements
    N = 256;        % signal dimension
    num_trials = 1000; % number of trials per K (as in caption)
    K_values = 1:100;  % sparsity sweep
    num_K_values = length(K_values);

    % Preallocate result arrays
    success_rates_OMP = zeros(1, num_K_values);
    success_rates_OurOMP = zeros(1, num_K_values);

    % Use a fresh random Gaussian measurement matrix for each trial set.
    % The paper's caption doesn't specify whether A is fixed across trials;
    % both choices are common. Here we keep A fixed for all trials for speed/reproducibility.
    A = randn(M, N);

    % --- Nested function: standard OMP for one trial ---
    function success = runOMP_once(A, K, N)
        x_true = zeros(N,1);
        idx = randperm(N, K);
        x_true(idx) = randn(K,1);
        y = A * x_true;

        r = y;
        Lambda = [];
        A_hat = [];
        for t = 1:K
            % select atom
            [~, lambda_t] = max(abs(A' * r));
            Lambda = [Lambda, lambda_t];
            A_hat = [A_hat, A(:, lambda_t)];
            % least squares
            theta = A_hat \ y;
            r = y - A_hat * theta;
        end
        x_hat = zeros(N,1);
        if ~isempty(Lambda)
            x_hat(Lambda) = theta;
        end
        success = (norm(x_hat - x_true) < 1e-6);
    end

    % --- Nested function: Our OMP (Gram-Schmidt) for one trial ---
    function success = runOurOMP_once(A, K, N)
        x_true = zeros(N,1);
        idx = randperm(N, K);
        x_true(idx) = randn(K,1);
        y = A * x_true;

        r = y;
        Lambda = [];
        Q = []; % orthonormal basis columns
        for t = 1:K
            % select atom
            [~, lambda_t] = max(abs(A' * r));
            Lambda = [Lambda, lambda_t];
            a_t = A(:, lambda_t);

            % Gram-Schmidt orthogonalization of a_t wrt columns of Q
            q_t = a_t;
            for j = 1:size(Q,2)
                % projection of a_t on Q(:,j)
                h = (Q(:,j)' * a_t);
                q_t = q_t - h * Q(:,j);
            end
            % guard against numerical zero
            norm_qt = norm(q_t);
            if norm_qt < 1e-12
                % If it became (nearly) zero, skip adding — keep residual unchanged
                q_t = zeros(size(a_t));
            else
                q_t = q_t / norm_qt;
                Q = [Q, q_t]; %#ok<AGROW>
                % residual update along q_t
                r = r - (q_t' * r) * q_t;
            end
        end

        % compute coefficients using least squares on selected atoms
        x_hat = zeros(N,1);
        if ~isempty(Lambda)
            A_hat = A(:, Lambda);
            theta = A_hat \ y;
            x_hat(Lambda) = theta;
        end
        success = (norm(x_hat - x_true) < 1e-6);
    end

    % --- Main experiment loop ---
    fprintf('Starting simulation: M=%d, N=%d, trials=%d\n', M, N, num_trials);
    for i = 1:num_K_values
        K = K_values(i);
        fprintf('K = %3d: ', K);

        total_success_OMP = 0;
        total_success_OurOMP = 0;

        % Option: use parfor here if you have the Parallel Toolbox to speed up.
        % parfor trial = 1:num_trials
        for trial = 1:num_trials
            total_success_OMP = total_success_OMP + runOMP_once(A, K, N);
            total_success_OurOMP = total_success_OurOMP + runOurOMP_once(A, K, N);
        end

        success_rates_OMP(i) = 100 * total_success_OMP / num_trials;
        success_rates_OurOMP(i) = 100 * total_success_OurOMP / num_trials;
        fprintf('OMP: %.2f%%  OurOMP: %.2f%%\n', success_rates_OMP(i), success_rates_OurOMP(i));
    end

    % --- Plotting (styles as in the figure) ---
    figure('Color','w');
    plot(K_values, success_rates_OMP, 's-', 'LineWidth', 1.5, 'MarkerSize', 6, ...
         'MarkerFaceColor','none', 'Color',[0 0.4470 0.7410]); % blue squares
    hold on;
    plot(K_values, success_rates_OurOMP, 'o-', 'LineWidth', 1.5, 'MarkerSize', 6, ...
         'MarkerFaceColor','none', 'Color',[0.8500 0.3250 0.0980]); % red circles
    hold off;

    xlabel('Sparsity level (K)');
    ylabel('Percentage recovered');
    title(sprintf('Success rate comparison, M = %d and N = %d, using %d trials', M, N, num_trials));
    legend('OMP','Our OMP','Location','SouthWest');
    grid on;
    xlim([0 100]);
    ylim([0 100]);

end
