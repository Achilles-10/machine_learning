# Backpropagation in Practice



## Implementation Note: Unrolling Parameters



![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/bip/bip_1.png)



## Gradient Checking



Gradient checking will assure that our backpropagation works as intended.



* approximate the derivative of our cost function with:

  $$ \frac{\partial}{\partial\Theta}J(\Theta)\approx\frac{J(\Theta+\epsilon)-J(\Theta-\epsilon)}{2\epsilon} $$

* With multiple theta matrices, we can approximate the derivative `with respect to` $\Theta$ as follows:

  $$ \frac{\partial}{\partial\Theta_j}J(\Theta)\approx\frac{J(\Theta_1,\dots,\Theta_j+\epsilon,\dots,\Theta_n)-J(\Theta_1,\dots,\Theta_j-\epsilon,\dots,\Theta_n)}{2\epsilon} $$



Once we compute the gradApprox vector, we can check that gradApprox $\approx$ deltaVector.

Once you have verified `once` that your backpropagation algorithm is correct, you don't need to compute gradApprox again. The code to compute gradApprox can be very slow.



## Random Initialization



Initializing all theta weights to zero does not work in neural networks.

we can randomly initialize our weights for our $\Theta$ matrices using the following method:

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/bip/bip_2.png)





* Note: the $\epsilon$ used above is unrelated to the $\epsilon$ form Gradient Checking



## Putting it Together



* `Pick a network architecture`:
  * Number of input units = dimension of features $x^{(i)}$
  * Number of output units = number of classes
  * Number of hidden units per layer = usually more the better (must balance with cost of computation as it increases with more hidden units)
  * Defaults: 1.hidden layer. If you have more than 1 hidden layer, then it is recommended that you have the same number of units in every hidden layer



* `Training a Neural Networking`
  * Randomly initialize the weights
  * implement forward propagation to get $h_\Theta(x^{(i)})$ for any $x^{(i)}$
  * implement the cost function
  * implement backpropagation to compute partial derivatives
  * Use gradient checking to conform that your backpropagation works. Then disable gradient checking
  * Use gradient descent or a built-in optimization function to minimize the cost function with weights in theta

When we perform forward and back propagation, we can use a loop on every training example.

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/bip/bip_3.png)

$J(\Theta)$ is not convex and thus we can end up in a local minimum.