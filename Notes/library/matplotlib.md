# **Matplotlib**

## **基本使用**

### **基本用法**

```python
import matplotlib.pyplot as plt
import numpy as np
x=np.linspace(-1,1,50) #范围是(-1,1)，点数是50
y=2*x+1
plt.figure() #定义一个图像窗口
plt.plot(x,y) #绘制(x, y)曲线
plt.show() #显示图像
```

* 窗口操作

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/matplotlib/plt_1.png)

从左到右依次为
1. reset original view
2. back to previous view
3. forward to next view
4. pan axes with left mouse, zoom with right
5. zoom to rectangle
6. configure subplots
7. save the figure

### **figure图像**

figure是一个单独的小窗口，小窗口里面可以有更多的小图片

```python
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(-3, 3, 50)
y1 = 2*x + 1
y2 = x**2
```

使用`plt.figure`定义一个图像窗口，使用`plt.plot`绘制曲线

```python
plt.figure()
plt.plot(x, y1)
plt.show()
```

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/matplotlib/plt_1.png)

另外定义一个`figure3`

```python
plt.figure(num=3, figsize=(8, 5),) #num:figure编号 figsize:figure大小
plt.plot(x, y2)
plt.plot(x, y1, color='red', linewidth=1.0, linestyle='--') #color:颜色 linewidth:线宽 linestyle:'--'表示曲线
plt.show()
```
![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/matplotlib/plt_2.png)


### **设置坐标轴**

```python
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(-3, 3, 50)
y1 = 2*x + 1
y2 = x**2
plt.figure()
plt.plot(x,y2)
plt.plot(x, y1, color='red', linewidth=1.0, linestyle='--')
```

`plt.xlim`和`plt.ylim`可设置坐标轴上下限，参数接受一个`tuple`

`plt.xlabel`和`plt.ylabel`设置坐标轴标签

`plt.xticks`更换坐标轴刻度，或改变坐标轴值

```python
plt.xlim((-1,2))
plt.ylim((-2,3))

plt.xlabel("I am x")
plt.ylabel("I am y")

new_ticks=np.linspace(-1,2,5)
print(new_ticks)
plt.xticks(new_ticks)
plt.yticks([-2,-1,0,1,2],["really bad","bad","so-so",r"$good$","pretty good"]) #支持正则表达式

plt.show()
```
![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/matplotlib/plt_3.png)

`plt.axis`选取当前坐标轴

`.spines.set_color`设置坐标轴边框颜色

`.xaxis.set_ticks_position`选择用哪个边框替换坐标轴(所有位置：`top`,`bottom`,`both`,`default`,`none`)

`.set_position`设置边框位置(位置所有属性：`data`,`axes`,`outward`)

```python
# gca = 'get current axis'
ax=plt.gca()
ax.spines['right'].set_color('none') #顶部边轴
ax.spines['top'].set_color('none')

ax.xaxis.set_ticks_position('bottom') #用底边框替代x轴
ax.yaxis.set_ticks_position('left')

ax.spines['bottom'].set_position(('data',0))
ax.spines['left'].set_position(('data',0))

plt.show()
```

![](https://raw.githubusercontent.com/Achilles-10/machine_learning/master/Notes/imgs/matplotlib/plt_4.png)

### **Legend图例**


### **Annotation标注**


### **tick能见度**