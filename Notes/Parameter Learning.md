# **Parameter Learning**

## **Gradient Descent**

* **Illustration**:
![Gradient Descent](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/pl_1.png)

Each time when we take a step, $J(\theta_0,\theta_1)$ would heads toward to the minimum

* **Algorithm**:
$$ \begin{aligned}
    &{\rm repeat\;until\;convergence}:\\&\theta_j\;:=\theta_j-\alpha\frac{\partial}{\partial\theta_j}J(\theta_0,\theta_1)\\&{\rm where\;j=0,1\;represent\;the\;feature\;index\;number}
\end{aligned}
$$

At each iteration, we should simultaneously update the parameters.

![Update](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/pl_2.png)