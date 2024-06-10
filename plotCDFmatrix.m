function plotCDFmatrix(PMFmatrix, optional1)

    % Convert the first PMF matrix to CDF matrix
    cdf_matrix1 = PMFmatrix_toCDFmatrix(PMFmatrix);

    % Plot the first CDF matrix
    plot(cdf_matrix1(:, 1), cdf_matrix1(:, 2), '-', 'DisplayName', inputname(1), 'LineWidth', 2);
    hold on;

    % Check if the second argument is provided
    if nargin > 1
        % Convert the second PMF matrix to CDF matrix
        cdf_matrix2 = PMFmatrix_toCDFmatrix(optional1);
        % Plot the second CDF matrix if it is provided
        plot(cdf_matrix2(:, 1), cdf_matrix2(:, 2), '-', 'DisplayName', inputname(2), 'LineWidth', 2);
    end

    % Add legend to the plot
    legend show;

    xlabel('dB');
    ylabel('Cumulative Probability');
    title('CDF Matrices Plot');

    % Set y-axis limits to be between 0 and 1
    ylim([0 1]);
    
    hold off;
end