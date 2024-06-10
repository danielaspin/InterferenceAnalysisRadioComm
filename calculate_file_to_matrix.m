function A = calculate_file_to_matrix(file, res)

    data = readtable(file);
    X = data{:,2};

    lowest_value = round(min(X)/res)*res; % Returns the lowest value after rounding
    highest_value = round(max(X)/res)*res; % Returns the highest value after rounding

    Y = [lowest_value:res:highest_value]'; % Creates the left column in the matrix
    H = hist(X,Y); % Calculates the right column in the matrix
    R = H/sum(H); % Scales the result from count to density
 
    A = [Y';R]'; % Creates a M x 2 matrix
end