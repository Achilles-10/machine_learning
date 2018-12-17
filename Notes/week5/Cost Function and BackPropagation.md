# **Cost Function and BackPropagation**

## **Cost Function**

* define a few variables:
  * $L$ = total number of layers in the network
  * $s_l$ = number of units (not counting bias unit) in layer I
  * $K$ = number of output units/classes

* **Cost Function:**
  $$ J(\Theta)=-\frac{1}{m}\sum_{i=1}^m\sum_{k=1}^K[y_k^{(i)}\log((h_\Theta(x^{(i)}))_k)+(1-y_k^{(i)})\log(1-(h_\Theta(x^{(i)}))_k)]+\frac{\lambda}{2m}\sum_{l=1}^{L-1}\sum_{i=1}^{s_l}\sum_{j=1}^{s_l+1}(\Theta_{j,i}^{(l)})^2 $$

* **Note:**
  * the double sum simply adds up the logistic regression costs calculated for each cell in the output layer
  * the triple sum simply adds up the squares of all the individual $\Theta$s in the entire network
  * the i in the triple sum does not refer to training example

## **Backpropagation Algorithm**

Backpropagation algorithm is for minimizing the cost function. Our goal is to compute:
$min_\Theta J(\Theta)$

we'll use the following algorithm:
![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/cfab/cfab_1.png)

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/cfab/cfab_2.png)

* **Note:**
  Compute $\delta^{(L-1)},\delta^{(L-2)},\dots,\delta^{(2)}$ using $\delta^{(l)}=((\Theta^{(l)})^T\delta^{(l+1)}).*a^{(l)}.*(1-a^{(l)})$



## **Back propagation Intuition**

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/cfab/cfab_3.png)

