# **Classification and Representation**

## **Classification**

Given $x^{(i)}$, the corresponding $y^{(i)}$ is called the label for the training example

we won't use linear regression to handle classification

## **Hypothesis Representation**

* **Sigmoid Function (Logistic Function):**
  $$ \begin{aligned}
      &h_\theta(x)=g(\theta^Tx)\\&z=\theta^Tx\\&g(z)=\frac{1}{1+e^{-z}}
  \end{aligned} $$

The following image shows us what the sigmoid function looks like:
![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/car/car_1.png)

$h_\theta(x)$ will give the `probability` that the output is 1.

$$ \begin{aligned}
    &h_\theta(x)=P(y=1|x;\theta)=1-P(y=0|x;\theta)\\&P(y=0|x;\theta)+P(y=1|x;\theta)=1
\end{aligned} $$

## **Decision Boundary**

$$ \begin{aligned}
    &y=1\ \Rightarrow\ g(z)\geq0.5\ \Rightarrow\ \theta^Tx\geq0\\&y=0\ \Rightarrow\ g(z)<0.5\ \Rightarrow\ \theta^Tx<0
\end{aligned} $$