function convolved_matrix = convolve_matrices_withmatrixmulti_resolution(matrix1, matrix2, res)
    % Rescale matrixes to same resolution
    rescaled_matrix1 = rescale_matrix(matrix1, res);
    rescaled_matrix2 = rescale_matrix(matrix2, res);

    % Extract indices and probabilities from rescaled_matrix1 and rescaled_matrix2
    indices1 = rescaled_matrix1(:, 1);
    probabilities1 = rescaled_matrix1(:, 2);
    indices2 = rescaled_matrix2(:, 1);
    probabilities2 = rescaled_matrix2(:, 2);
    
    % Compute all possible convolutions
    conv_indices = indices1 + indices2';
    conv_probs = probabilities1 * probabilities2';
    
    % Reshape indices and probabilities into column vectors
    conv_indices = conv_indices(:);
    conv_probs = conv_probs(:);
    
    % Combine indices and probabilities into a matrix
    convolved_matrix = [conv_indices, conv_probs];
    
    % Combine indices with the same value and sum their probabilities
    [unique_indices, ~, ic] = unique(convolved_matrix(:, 1));
    convolved_matrix = [unique_indices, accumarray(ic, convolved_matrix(:, 2))];
end