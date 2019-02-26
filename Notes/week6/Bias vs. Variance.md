# Diagnosing Bias vs. Variance

> * `High bias` is `underfitting`: both $J_{train}(\Theta)$ and $J_{CV}(\Theta)$ will be high and $J_{CV}\approx J_{train}$
> * `High variance` is `overfitting`: $J_{train}(\Theta)$ will be low and $J_{CV}(\Theta)$ will be much higher than $J_{train}(\Theta)$

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/bvv/bvv_1.png)

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/bvv/bvv_2.png)

In order to choose the model and regularization term $\lambda$, we need to:
1. Create a list of lambdas (i.e. λ∈{0,0.01,0.02,0.04,0.08,0.16,0.32,0.64,1.28,2.56,5.12,10.24});
2. Create a set of models with different degrees or any other variants
3. Iterate through the $\lambda$ and for each $\lambda$ go through all the models to learn some $\Theta$
4. Compute the cross validation error using the learned $\Theta$(computed with $\lambda$) on the $J_{CV}(\Theta)$ `without` regularization or $\lambda=0$
5. Select the best combo that produces the lowest error on the cross validation set.
6. Using the best combo $\Theta\;and\;\lambda$, apply it on $J_{test}(\Theta)$ to see if has a good generalization of the problem.