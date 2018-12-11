# Model Representation 

In neural networks, use the same logistic function as classification, $\frac{1}{1+e^{(-\theta^Tx)}}$

* **Simplistic representation:**
  $$ \begin{bmatrix}
      x_0\\x_1\\x_2
  \end{bmatrix}\rightarrow[\quad]\rightarrow h_\theta(x) $$

We have 3 layers: `input layer`,`hidden layer`,`output layer`

>$$ a^{(j)}_i={\rm "activation"\ of\ unit\ }i{\rm\ in\ layer\ }j\\\Theta^{(j)}={\rm matrix\ of\ weights\ controlling\ function\ mapping\ from\ layer\ }j{\rm\ to\ layer\ }j+1 $$

If we had hidden layer, it would look like:

$$ \begin{bmatrix}
    x_0\\x_1\\x_2\\x_3
\end{bmatrix}\rightarrow
\begin{bmatrix}
    a^{(2)}_1\\a^{(2)}_2\\a^{(2)}_3    
\end{bmatrix}\rightarrow h_\theta(x) $$

$$ {\rm where\ }a^{(j)}_i=g(\sum_{k=0}^{n}\Theta_{i,k}^{(j-1)}x_k) $$

If network has $s_j$ units in layer j and $s_j+1$ units in layer j+1, then $\Theta^{(j)}{\rm\ is\ of\ dimension\ }s_{j+1}\times(s_j+1)$

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/nn/nn_1.png)

* **Vectorized implementation**
  Setting x = $a^{(1)}$, then we have
  $$ \begin{aligned}
      &z^{(j)}=\Theta^{(j-1)}a^{(j-1)}\\&a^{(j)}=g(z^{(j)})\\&z^{(j+1)}=\Theta^{(j)}a^{(j)}\\&h_\Theta(x)=a^{(j+1)}=g(z^{(j+1)})
  \end{aligned} $$