function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
z = X * theta;
hypothesis = sigmoid(z);
phase_1 = sum((-y)' * log(hypothesis));
phase_2 = sum((1-y)' * log(1 -hypothesis));
theta(1) = 0;
phase_3 = lambda/(2*m) * (theta' * theta);
difference = phase_1 - phase_2;
initial_J = 1/m * difference;
J = initial_J + phase_3;
 

%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

vect_error = hypothesis - y;
grad_initial = 1/m * (X' * vect_error);
regression_term = lambda/m * theta;
grad = grad_initial + regression_term;





% =============================================================

end
