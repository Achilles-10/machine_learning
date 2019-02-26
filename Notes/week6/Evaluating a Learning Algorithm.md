# **Evaluating a Learning Algorithm**

## **Evaluating a Hypothesis**

* **what can we do:**
  1. getting more training examples
  2. trying smaller set of features
  3. trying additional features
  4. trying polynomial features
  5. increasing or decreasing $\lambda$

* **evaluating the hypothesis:**
    1. split up the dataset into: **training set**(70%) and **test set**(30%)
    2. learn $\Theta$ and minimize $J_{train}(\Theta) using training set$
    3. compute the test set error $J_{test}(\Theta)$ 

> `test set error:`
> 1. for linear regression: $J_{test}(\Theta) = \frac{1}{2m_{test}}\sum_{i=1}^{m_{test}}(h_\Theta(x^{(i)}_{test})-y^{(i)}_{test})^2$
> 2. for classification: $err(h_\Theta(x),y) = \begin{cases}\rm1\;if\;h_\Theta(x)\geq0.5\;and\;y=0\;or\;h_\Theta(x)<0.5\;and\;y=1\\\rm0\; otherwise \end{cases}$
> Test Error = $\frac{1}{x_{test}}\sum_{i=1}^{m_{test}}err(h_\Theta(x^{(i)}_{test}),y^{(i)}_{test})$

## **Model Selection and Train/Validation/Test Sets**

* given many models with different polynomial degrees.
* break down dataset into three sets:
  1. Training set: 60%
  2. Cross validation set: 20%
  3. Test set: 20%
* calculate three separate error values for the three different sets using the following method:
  1. Optimize the parameters in Θ using the training set for each polynomial degree
  2. Find the polynomial degree d with the least error using the cross validation set
  3. Estimate the generalization error using the test set with $J_{test}(\Theta^{(d)})$, (d = theta from polynomial with lower error)