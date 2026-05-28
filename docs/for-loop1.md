# `for` 循环入门

## 学习目标

学完这一课，你应该能够：

1. 理解循环可以解决重复劳动。
2. 使用 `range()` 生成整数序列。
3. 写出基本的 `for` 循环。
4. 使用循环完成累加、筛选和简单图形输出。

## 为什么需要循环

假设老师让你打印 `1` 到 `100`。

如果不会循环，你可能会这样写：

```python
print(1)
print(2)
print(3)
print(4)
# ...
print(99)
print(100)
```

这样太麻烦了。

如果要打印 `1` 到 `10000`，更不可能一行一行写。

为了解决这种重复任务，Python 提供了 `for` 循环。

## `range()`：生成一串数字

`range` 的意思是“范围”。

在 Python 中，`range(1, 101)` 会生成从 `1` 到 `100` 的整数序列。

注意：它包含开头，不包含结尾。

```python
range(1, 5)
```

生成的是：

```text
1, 2, 3, 4
```

没有 `5`。

所以要打印到 `100`，需要写：

```python
range(1, 101)
```

## `for` 循环的基本格式

```python
for i in range(1, 101):
    print(i)
```

可以这样理解：

- `for`：告诉 Python 要开始循环。
- `i`：循环变量，每次装入一个新的数字。
- `in`：从后面的范围中依次取值。
- `range(1, 101)`：生成 `1` 到 `100`。
- `:`：冒号后面缩进的代码属于循环。
- `print(i)`：每次循环都执行一次。

执行过程是：

1. 第一次，`i` 是 `1`，打印 `1`。
2. 第二次，`i` 是 `2`，打印 `2`。
3. 一直重复到 `i` 是 `100`。
4. `101` 不包含在范围内，循环结束。

## `range()` 的完整格式

```python
range(start, stop, step)
```

- `start`：起始值，默认是 `0`。
- `stop`：结束值，不包含这个值。
- `step`：步长，默认是 `1`。

![](./images/range1.png)

![](./images/range2.png)

例如：

```python
for i in range(5):
    print(i)
```

输出：

```text
0
1
2
3
4
```

因为 `range(5)` 等价于 `range(0, 5)`。

## `range()` 小练习

### 1. 打印 1 到 10

```python
for i in range(1, 11):
    print(i)
```

### 2. 打印 10 到 1

```python
for i in range(10, 0, -1):
    print(i)
```

### 3. 打印 1 到 10 中的偶数

方法一：循环所有数字，再用 `if` 判断。

```python
for i in range(1, 11):
    if i % 2 == 0:
        print(i)
```

方法二：直接让步长为 `2`。

```python
for i in range(2, 11, 2):
    print(i)
```

### 4. 打印 10 到 1 中的奇数

```python
for i in range(10, 0, -1):
    if i % 2 != 0:
        print(i)
```

也可以写成：

```python
for i in range(9, 0, -2):
    print(i)
```

## 综合练习

### 1. 累加求和

计算 `1 + 2 + 3 + ... + 100`，并输出结果。

```python
total = 0

for i in range(1, 101):
    total = total + i

print(f"1到100的和是: {total}")
```

思路：

- `total` 用来保存当前总和。
- 每次循环，把新的 `i` 加到 `total` 中。

### 2. 偶数过滤器

打印 `1` 到 `20` 之间的偶数。

```python
print("1-20之间的偶数有：")

for i in range(1, 21):
    if i % 2 == 0:
        print(i, end=" ")
```

### 3. 火箭倒计时

从 `10` 倒数到 `1`，最后输出 `发射！`。

```python
print("准备倒计时...")

for i in range(10, 0, -1):
    print(i)

print("发射！")
```

### 4. 打印星星塔

输出效果：

```text
*
**
***
****
*****
```

方法一：使用字符串乘法。

```python
for i in range(1, 6):
    print("*" * i)
```

方法二：使用嵌套循环。

```python
for i in range(1, 6):
    for j in range(i):
        print("*", end="")
    print()
```

### 5. 选班长

班里有 `10` 个人。男生编号是 `1` 到 `5`，女生编号是 `6` 到 `10`。

现在要选一个男生和一个女生作为班长，输出所有可能方案，并输出方案总数。

```python
total = 0

for i in range(1, 6):
    for j in range(6, 11):
        print(i, j)
        total = total + 1

print(f"total = {total}")
```

### 6. 求阶乘

定义：

$$
n! = 1 \times 2 \times 3 \times \cdots \times n
$$

输入一个数字 `n`，输出 `n!`。

例如输入 `3`，输出 `6`，因为：

$$
1 \times 2 \times 3 = 6
$$

```python
n = int(input())
ans = 1

for i in range(1, n + 1):
    ans = ans * i

print(ans)
```

### 7. 求阶乘的和

定义：

$$
\sum_{i=1}^n i! = 1! + 2! + \cdots + n!
$$

输入一个数字 `n`，输出阶乘和。

例如输入 `3`，输出 `9`，因为：

$$
1! + 2! + 3! = 1 + 2 + 6 = 9
$$

```python
n = int(input())
total = 0

for i in range(1, n + 1):
    ans = 1
    for j in range(1, i + 1):
        ans = ans * j
    total = total + ans

print(total)
```

### 8. 九九乘法表

```python
for i in range(1, 10):
    for j in range(1, i + 1):
        print(f"{j}*{i}={i*j}", end="\t")
    print()
```

外层循环控制行数，内层循环控制每一行打印多少个公式。

## 有趣的代码：画正方形

```python
import turtle

t = turtle.Turtle()
t.speed(1)

for i in range(4):
    t.forward(100)
    t.right(90)

t.hideturtle()
turtle.done()
```

这个程序会画出一个正方形。

其中：

- `range(4)` 表示重复 4 次。
- `t.forward(100)` 表示向前走 100。
- `t.right(90)` 表示右转 90 度。

## 本课小结

- `for` 循环用来重复执行代码。
- `range(start, stop, step)` 可以生成整数序列。
- `range` 包含开始值，不包含结束值。
- 循环中可以结合变量、`if`、嵌套循环解决更多问题。
