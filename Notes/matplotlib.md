# **Matplotlib**

## **基础用法**

```python
import matplotlib.pyplot as plt
import numpy as np
x=np.linspace(-1,1,50)
y=2^x+1
plt.figure() #定义一个图像窗口
plt.plot(x,y) #绘制(x, y)曲线
plt.show() #显示图像
```

* 窗口操作
