# **Computing Parameters Analytically**

## $Normal Equation$

In the "Normal Equation" method, we will minimize $J(\theta)$ by explicitly taking its derivatives with respect to the $\theta_j$ ’s, and setting them to zero. 

* **Normal Equaltion Formular:**
  $$ \theta=(X^TX)^{-1}X^Ty $$
  There's no need`` to do feature scaling with the normal 
  
* **Comparison of Gradient Descent and Normal Equation:**
  

| **Gradient Descent** | **Normal Equation** |
| :------ | :------ |
| Need to choose $\alpha$ | No need |
| Needs many iterations | No need to iterate |
| $O(kn^2)$ | $O(n^3)$ |
| Works well when $n$ is large | Slow if $n$ is very large |

In practice, when n exceeds `10,000` it might be a good time to go from normal equation to an iterative process

## **Normal Equation Noninvertibility**

if $X^TX$ is `noninvertible`, the common causes might be having:
1. Redundant features, where two features are very closely related(i.e. they are linearly dependent)
2. Too many features(e.g. $m\leq n$). In this case, delete some features or use "regularization"