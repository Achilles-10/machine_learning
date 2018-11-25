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
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

H = sigmoid(X * theta);
T1 = sum((-y).*log(H)-(1-y).*log(1-H));
T2 = sum(theta.^2) - theta(1) ^ 2;
J = T1 ./ m + lambda / (2*m) * T2;

% ====================Compute grad==================

n = length(theta);
grad(1) = sum((H - y) .* X(:,1)) / m;
for j = 2 : n
    grad(j) = sum((H - y) .* X(:, j)) / m + theta(j) * lambda / m;
end

% =============================================================

end
