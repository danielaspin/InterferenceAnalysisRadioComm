function A = calculate_histogram(X, res)
    Y= [round(min(X))/res*res:res:round(max(X)/res)*res]';
    A=[Y';hist(X,Y)/sum(hist(X,Y))]';
end