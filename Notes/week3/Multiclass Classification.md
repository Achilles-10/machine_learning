# **Multiclass Classification: One-vs-all**

since $y = \{0,1,\dots,n\}$, we divide our problem into n+1 binary classification problems.

$$ \begin{aligned}
    &y\in\{0,1,\dots,n\}\\
    &h^{(0)}_\theta(x)=P(y=0\vert x;\theta)\\
    &h^{(1)}_\theta(x)=P(y=1\vert x;\theta)\\
    &\dots\\
    &h^{(n)}_\theta(x)=P(y=n\vert x;\theta)\\
    &{\rm prediction=max_i}(h^{(i)}_\theta(x))
\end{aligned} $$

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/mcova/mcova_1.png)

* **To summarize:**
  
  Train a logistic regression classifier $h_\theta(x)$ for each class￼ to predict the probability that ￼ ￼y = i￼ ￼.
  To make a prediction on a new x, pick the class ￼that maximizes $h_\theta(x)$