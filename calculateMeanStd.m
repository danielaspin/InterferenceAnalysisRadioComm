function calculateMeanStd(PMFmatrix)
    % Extract indices and probabilities from the matrix
    indices = PMFmatrix(:, 1);
    probabilities = PMFmatrix(:, 2);

    % Ensure that probabilities sum to 1
    if abs(sum(probabilities) - 1) > 1e-6
        error('Probabilities do not sum to 1.');
    end

    % Calculate the mean value
    meanValue = sum(indices .* probabilities);

    % Calculate the variance
    variance = sum(((indices - meanValue) .^ 2) .* probabilities);

    % Calculate the standard deviation
    stdValue = sqrt(variance);

    % Display the results
    disp(['Mean: ', num2str(meanValue)]);
    disp(['Standard Deviation: ', num2str(stdValue)]);

end
