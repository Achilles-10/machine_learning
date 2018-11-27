# Model and Cost Function

## Model Representation

$$ \begin{cases}
    m\rightarrow \rm number\;of\;training\;examples\\
    x^{(i)}\rightarrow \rm"input\;features"\\
    y^{(i)}\rightarrow \rm"target\;variable"\\
    (x^{(i)},y^{(i)})\rightarrow \rm training\;example\\
    \theta\rightarrow \rm parameters
\end{cases} $$

* $Learning\;Process:$
![process](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/macf/macf_1.png)
h is a function called `hypothesis`.
$$ h_{\theta}(x_i)=\theta_0+\theta_1\cdot x $$

## Cost Function
$$ J(\theta_0,\theta_1)=\frac{1}{2m}\sum_{i=1}^{m}(\hat{y_i}-y_i)^2=\frac{1}{2m}\sum_{i=1}^{m}(h_\theta(x_i)-y_i)^2 $$

* **Goal**:
$$ \rm {minimize}_{\theta_0,\theta_1}\ J(\theta_0,\theta_1) $$

This function is also called "Squared error function" or "Mean squared error". The mean if `halved` $(\frac{1}{2})$ as a convenience.

The following image summarizes what the cost function dose:
![cost function](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/macf/macf_2.png)

## Cost Function Intuition

![$J(\theta_1)$](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/macf/macf_3.png)

* **Contour Plot**

all points of the same line has a constant value

![Contour Plot](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/macf/macf_4.png)

The point in the center of the inner most 'circle' is our Goal

![Contour Plot](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/macf/macf_5.png)
