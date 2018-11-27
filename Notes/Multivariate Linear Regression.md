# **Multivariate Linear Regression**

## **Multiple Features**

* **Notations**:
  $$ \begin{aligned}
      &x_j^{(i)}={\rm value\;of\;feature\;}j\;{\rm in\;the\;}i^{th}\;{\rm training\;example}\\&x^{(i)}={\rm the\;input\;(features)\;of\;the\;}i^{th}\;{\rm training\;example}\\&m={\rm the\;number\;of\;training\;examples}\\&n={\rm the\;number\;of\;features}
  \end{aligned} $$ 

* **Alogorithm**
  $$ h_\theta(x)=\theta_0+\theta_1x_1+\theta_2x_2+\dots+\theta_nx_n $$
  Use matrix multiplication:
  $$ h_\theta(x)=\begin{bmatrix}\theta_0&\theta_1&\dots&\theta_n\end{bmatrix}
  \begin{bmatrix}x_0\\x_1\\\vdots\\x_n\end{bmatrix}=\theta^Tx $$

## **Gradient Descent For Multiple Variables**

$$ \begin{aligned}
    &{\rm repeat\;until\;convergence:}\\&\theta_j:=\theta_j-\alpha\frac{1}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})\cdot x_j^{(i)}\quad{\rm for\;}j:=0\dots n
\end{aligned} $$

## **Gradient Descent in Practice I - Feature Scaling**

We can speed up gradient descent by `feature scaling` and `mean normalization`

* **Implementation**:
  $$ x_i:=\frac{x_i-\mu_i}{s_i}\\ $$
  where $\mu_i$ is the `average` of all the values for feature(i) and $s_i$ is the `range` of values(max-min) or the standard deviation.

## **Gradient Descent in Practice II - Learning Rate**

* **Debugging gradient descent**
  Make a plot with number of iterations on the x-axis and plot the cost function $J(\theta)$ over the number of iterations of gradient descent.
  ![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/mlr/mlr_1.png)

* **Automatic convergence test**
  Declare convergence if J(θ) decreases by less than E in one iteration, where E is some small value.However in practice it's difficult to choose this threshold value.
  ![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/mlr/mlr_1.png)

* **To summmarize**:
  1. if $\alpha$ is too small: slow convergence.
  2. if $\alpha$ is too large: may not decrease on every iteration and thus may not converge.

## **Features and Polynomial Regression**

We can `combine` multiple features into one. For example, we can combine $x_1$ and $x_2$ into a new feature $x_3$ by taking $x_1\cdot x_2$

* **Polynomial Regression:**
  We can `change the behavior or curve` of our hypothesis function by making it a quadratic, cubic or square root function (or any other form).

One important thing to keep in mind is, if we choose our features this way then feature scaling becomes very important.

>eg. if $x_1$ has range 1-1000 then range of $x_1^2$ becomes 1-100000.