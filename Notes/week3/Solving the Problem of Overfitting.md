

# Solving the Problem of Overfitting **

## **The Overfitting Problem**

* 
  1. **`underfitting`:** high bias, function is too simple, uses too few features
    ![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/spo/spo_1.png)
  2. **`overfitting`:** complicated function, fits the available data but does not generalize well to predict new data.
      ![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/spo/spo_2.png)


* Two main option to address the issue of overfitting:
  1. `Reduce the number of features:`
   * Manually select which features to keep
   * Use a model selection algorithm
  
  2. `Regularization:`
   * Keep all the features, but reduce the magnitude of parameters $\theta_j$
   * Regularization works well when we have a lot of slightly useful features

## **Cost Function**

* **Idea:** `Reduce some features weight`

* **Function:**
  $$ {\rm min}_\theta\frac{1}{2m}\sum_{i=1}^{m}(h\theta(x^{(i)})-y^{(i)})^2+\lambda\sum_{j=1}^n\theta_j^2 $$

  The $\lambda$, or lambda, is the `regularization parameter`. It determines how much the costs of out theta parameters are inflated.

## **Reugularized Linear Regression**

* **`Gradient Descent:`**
  $$ \begin{aligned}
     &{\rm Repeat\{}\\
     &\theta_0:=\theta_0-\alpha\frac{1}{m}\sum_{i=1}^m(h_\theta(x^{(i)})-y^{(i)})x_0^{(i)}\\
     &\theta_j:=\theta_j-\alpha[(\frac{1}{m}\sum_{i=1}^m(h_\theta(x^{(i)})-y^{(i)})x^{(i)})+\frac{\lambda}{m}\theta_j]\quad j\in\{1,2\dots n\}\\
     &\}
  \end{aligned} $$

  $\theta_j$ can also be represented as:
  $$ \theta_j:=\theta_j(1-\alpha\frac{\lambda}{m})-\alpha\frac{1}{m}\sum_{i=1}^m(h_\theta(x^{(i)})-y^{(i)})x_j^{(i)} $$

  1-$\alpha\frac{\lambda}{m}$ will always be less than 1.

* **`Normal Equation`**
  $$ \begin{aligned}
     &\theta=(X^TX+\lambda\cdot L)^{-1}X^Ty\\
     &{\rm where}\;L=\begin{bmatrix}
  ​      0 & \\
  ​        & 1 & \\
  ​        &   & 1 \\
  ​        &   &   & \ddots &\\
  ​        &   &   &   & 1
     \end{bmatrix}
  \end{aligned} $$
  Now $X^T+\lambda\cdot L$ becomes invertible

## **Regularized Logistic Regression**

To avoid overfitting, we can regularize logistic regression.

* **Cost Function:**
  $$ J(\theta)=-\frac{1}{m}\sum_{i=1}^{m}[y^{(i)}\log h_\theta(x^{(i)})+(1-y^{(i)})\log(1-h_\theta(x^{(i)}))] $$

  **Regularize:**
  $$ J(\theta)=-\frac{1}{m}\sum_{i=1}^{m}[y^{(i)}\log h_\theta(x^{(i)})+(1-y^{(i)})\log(1-h_\theta(x^{(i)}))]+\frac{\lambda}{2m}\sum_{j=1}^{n}\theta_j^2 $$

  The second sum,$\sum_{j=1}^{n}\theta_j^2$,`means to explicity exclude` the bias term $\theta_0$.