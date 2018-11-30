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