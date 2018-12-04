# **Logistic Regression**

## **Cost Function**

* **Cost Function for Logistic Regression:**
  $$ \begin{aligned}
      &J(\theta)=\frac{1}{m}\sum_{i=1}^{m}{\rm Cost}(h(x^{(i)}),y^{(i)})\\
      &{\rm Cost}(h(x^{(i)}),y^{(i)})=-\log(h_\theta(x))\quad&{\rm if\;}y=1\\
      &{\rm Cost}(h(x^{(i)}),y^{(i)})=-\log(1-h_\theta(x))\quad&{\rm if\;}y=0
  \end{aligned} $$

Now we can guarantee that $J(\theta$ is convex for logistic regression

* **Plot:**
  ![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/car/car_2.png)

  ![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/car/car_3.png)

  $$ \begin{aligned}
      &{\rm Cost}(h_\theta(x),y)=0\;&{\rm if\;}h_\theta(x)=y\\
      &{\rm Cost}(h_\theta(x),y)\to\infty\;&{\rm if\;}y=0\;{\rm and\;}h_\theta(x)\to1\\
      &{\rm Cost}(h_\theta(x),y)\to\infty\;&{\rm if\;}y=1\;{\rm and\;}h_\theta(x)\to0
  \end{aligned} $$

## **Simplified Cost Function and Gradient Descent**

compress the cost function's two conditional cases into one case:
$$ {\rm Cost}(h_\theta(x),y)=-y\log(h_\theta(x))-(1-y)\log(1-h_\theta(x)) $$

write the entire cost function as follows:
$$ J(\theta)=-\frac{1}{m}\sum_{i=1}^m[y^{(i)}\log(h_\theta(x^{(i)}))+(1-y^{(i)})\log(1-h_\theta(x^{(i)}))] $$

A vectorized implementation is:
$$ \begin{aligned}
    &h=g(X\theta)\\
    &J(\theta)=\frac{1}{m}\cdot(-y^T\log(h)-(1-y)^T\log(1-h))
\end{aligned} $$

* **Gradient Descent**
  
  **General form**:
  $$ \begin{aligned}
      &{\rm Repeat\;}\{\\
      &\theta_j:=\theta_j-\alpha\frac{\partial}{\partial\theta_j}J(\theta)\\
      &\}
  \end{aligned} $$

  **Specific form**:
  $$ \begin{aligned}
      &{\rm Repeat\;}\{\\
      &\theta_j:=\theta_j-\frac{\alpha}{m}\sum_{i=1}^m(h_\theta(x^{(i)})-y^{(i)})x_j^{(i)}\\
      &\}
  \end{aligned} $$

  **A vectorize implementation:**
  $$ \theta:=\theta-\frac{\alpha}{m}X^T(g(X\theta)-\vec{y}) $$

## **Advanced Optimization**