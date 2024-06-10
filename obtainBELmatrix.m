function belmatrix = obtainBELmatrix()
    % BEL
    filebel = 'BEL.xlsx';
    databel = readtable(filebel);
    vectortrad = databel{:,1};
    termalbel = calculate_file_to_matrix(filebel, 1);
    tradbel = calculate_histogram(vectortrad, 1);
    numberofaddingrows = length(termalbel) - length(tradbel);
    N = size(tradbel, 1); % Get the number of rows in the original matrix
    additional_rows = zeros(numberofaddingrows, 2); % Creating rows of zeros
    tradbel = [tradbel; additional_rows]; % Concatenate the original matrix with additional rows
    BEL = termalbel;
    BEL(:,2) = tradbel(:,2)*0.7 + termalbel(:,2)*0.3;
    belmatrix = positiveToNegativeMatrix(BEL);

end