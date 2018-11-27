# **Parameter Learning**

## **Gradient Descent**

* **Illustration**:
![Gradient Descent](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/pl/pl_1.png)

Each time when we take a step, $J(\theta_0,\theta_1)$ would heads toward to its minimum value(sometimes local minimum).

* **Algorithm**:
$$ 
\begin{aligned}
    &{\rm repeat\;until\;convergence}:\\&\theta_j\;:=\theta_j-\alpha\frac{\partial}{\partial\theta_j}J(\theta_0,\theta_1)\\&{\rm where\;j=0,1\;represent\;the\;feature\;index\;number}
\end{aligned}
$$

At each iteration, we should simultaneously update the parameters.

![Update](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/pl/pl_2.png)

## Gradient Descent Intuition

* **Convergence**

Our formular for a single parameter was:
$$ 
\begin{aligned}
    &{\rm repeat\;until\;convergence}:\\&\theta_1\;:=\theta_1-\alpha\frac{d}{d\theta_1}J(\theta_1)
\end{aligned}
$$
![Convergence](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/pl/pl_3.png)

Regardless of the slope's sign for $\frac{d}{d\theta_1}J(\theta_1),\theta_1$ eventually converges to its minimum value.

* **Learning Rate($\alpha$)**

We should adjust our parameter $\alpha$ to ensure that the gradient descent algorithm converges in a reasonable time.

![Learning Rate](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/pl/pl_4.png)

* **Fixed Step Size($\alpha$)**

![Fixed Step Size](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/pl/pl_5.png)