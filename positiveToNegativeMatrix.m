function flipped_matrix = positiveToNegativeMatrix(matrix_to_be_flipped)

    flipped1 = (flip(matrix_to_be_flipped(:,1)))*-1;
    flipped2 = flip(matrix_to_be_flipped(:,2));

    flipped_matrix = [flipped1, flipped2];

end