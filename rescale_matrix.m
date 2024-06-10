function rescaled_matrix = rescale_matrix(matrix, res)
    matrix(:,1)=round((matrix(:,1)/res))*res;
    low=min(matrix(:,1));
    high=max(matrix(:,1));
    rescaled_matrix(:,1)=low:res:high;

    for i=1:length(rescaled_matrix(:,1))
        rescaled_matrix(i,2)=(matrix(:,1)==rescaled_matrix(i,1))'*matrix(:,2);
    end
end