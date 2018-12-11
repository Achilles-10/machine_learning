## **plotData**

```python
plt.scatter(x,y,marker='x',color='red')
```

`marker`参数：改变散点类型(e.g. 'x', 'o')
`color`参数：散点颜色(或者'c'参数)

## **computeCost**

```python
cost = sum(((np.dot(X,theta))-y)**2)/(2*m)
```

`np.dot()`：矩阵乘法，其中X为(m,2)维矩阵

## **gradientDescent**

```python
error = np.dot(X, theta).flatten() - y
theta -= (alpha / m) * np.sum(X * error[:, np.newaxis], 0)
```

`.flatten()`:变为1维向量

`error[:,np.newaxis]`:
>the `newaxis` is used to increase the dimension of the existing array by one more dimension
![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/ex/ex_1.png)

`np,sum(,0)`：`0`表示对每列求和，`1`表示对每行求和，`省略`该参数则对整个矩阵求和

## **featureNormalize**

`np.std()`中`ddof`参数：0 as default
```python
>>> a=np.array([1,2,3])
>>> np.std(a,0,ddof=1)
1.0
>>> np.std(a,0,ddof=0)
0.816496580927726
```

## **normalizeEqn**

矩阵乘法:
```python
np.dot(X,y)
X.dot(y)
```

矩阵转置:
```python
np.transpose(X)
X.transpose()
```

矩阵求逆:
```python
np.linalg.pinv(X) #求伪逆
np.linalg.inv(X)
```

## **ex1_multi**

<font size=4 color=yellow>**在numpy中，一个列表虽然是横着表示的，但它是列向量**</font>

`np.r_`和`np.c_`:

* `np.c_[A,B]`:
  $$ \begin{bmatrix}
      A & B
  \end{bmatrix} $$

* `np.r_[A,B]`:
  $$ \begin{bmatrix}
      A \\ B
  \end{bmatrix} $$

```python
>>> c
array([[1, 4],
       [2, 5],
       [3, 6]])
>>> d
array([[1, 2],
       [3, 4],
       [5, 6]])
>>> np.c_[c,d]
array([[1, 4, 1, 2],
       [2, 5, 3, 4],
       [3, 6, 5, 6]])
>>> np.r_[c,d]
array([[1, 4],
       [2, 5],
       [3, 6],
       [1, 2],
       [3, 4],
       [5, 6]])
```