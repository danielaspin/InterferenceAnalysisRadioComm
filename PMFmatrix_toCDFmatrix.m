function cdf_matrix = PMFmatrix_toCDFmatrix(pmf_matrix)
    % Sort the PMF matrix based on the first column (values)
    sorted_pmf = sortrows(pmf_matrix, 1);
    
    % Compute the cumulative sum of the probabilities in the second column
    cumulative_prob = cumsum(sorted_pmf(:, 2));
    
    % Create the CDF matrix
    cdf_matrix = [sorted_pmf(:, 1), cumulative_prob];
end