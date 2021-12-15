function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

   
    theta =theta-alpha/m*X'*(X*theta-y);
    %theta(1)=theta(1)-alpha/m*X(:,1)'*(X*theta-y);
    %theta(2)=theta(2)-alpha/m*X(:,2)'*(X*theta-y);
    %theta(3)=theta(3)-alpha/m*X(:,3)'*(X*theta-y);
   
    J_history(iter) = computeCostMulti(X, y, theta);

endfor


endfunction