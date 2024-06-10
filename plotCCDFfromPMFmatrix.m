function plotCCDFfromPMFmatrix(PMFmatrix, varargin)
    
    % Extract indices and probabilities from the primary PMF matrix
    indices = PMFmatrix(:,1);
    probabilities = PMFmatrix(:,2);
    
    % Ensure the indices and probabilities are sorted in ascending order of indices
    [indices, sortIdx] = sort(indices);
    probabilities = probabilities(sortIdx);
    
    % Calculate the CCDF for the primary PMF matrix
    ccdf = cumsum(probabilities(end:-1:1));
    ccdf = ccdf(end:-1:1);
    
    % Plot the CCDF using semilogy for a semi-logarithmic plot
    figure;
    semilogy(indices, ccdf, 'DisplayName', 'Primary PMF');
    hold on;  % Hold the plot for adding the optional CCDFs
    
    % Check if optional PMF matrices are provided
    for i = 1:length(varargin)
        optionalPMFmatrix = varargin{i};
        
        if ~isempty(optionalPMFmatrix)
            % Extract indices and probabilities from the optional PMF matrix
            optIndices = optionalPMFmatrix(:,1);
            optProbabilities = optionalPMFmatrix(:,2);
            
            % Ensure the indices and probabilities are sorted in ascending order of indices
            [optIndices, optSortIdx] = sort(optIndices);
            optProbabilities = optProbabilities(optSortIdx);
            
            % Calculate the CCDF for the optional PMF matrix
            optCCDF = cumsum(optProbabilities(end:-1:1));
            optCCDF = optCCDF(end:-1:1);
            
            % Plot the CCDF for the optional PMF matrix
            semilogy(optIndices, optCCDF, 'DisplayName', sprintf('Optional PMF %d', i));
        end
    end
    
    % Finalize the plot
    title('Complementary Cumulative Distribution Function (CCDF)');
    xlabel('dB');
    ylabel('CCDF');
    legend;
    grid on;
    hold off;  % Release the plot hold

end