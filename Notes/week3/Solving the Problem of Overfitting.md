# **Solving the Problem of Overfitting **

## **The Overfitting Problem**

* 
  1. **`underfitting`:** high bias, function is too simple, uses too few features
  ![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/spo/spo_1.png)

  2. **`overfitting`:** complicated function, fits the available data but does not generalize well to predict new data.
   ![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/spo/spo_2.png)


* Two main option to address the issue of overfitting:
  1. `Reduce the number of features:`
   * Manually select which features to keep
   * Use a model selection algorithm
  
  2. `Regularization:`
   * Keep all the features, but reduce the magnitude of parameters $\theta_j$
   * Regularization works well when we have a lot of slightly useful features

