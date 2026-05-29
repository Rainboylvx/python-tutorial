# OJ 入门：一行两个数字怎么读

## 学习目标

学完这一课，你应该能够：

1. 看懂 OJ 题目里的“一行两个整数”。
2. 使用 `input()` 读取一整行。
3. 使用 `split()` 把一行内容拆开。
4. 使用下标取出第一个数和第二个数。
5. 把字符串转换成整数，再完成 A+B。

## OJ 题目常见写法

很多 OJ 题目会这样写：

> 输入一行，包含两个整数 `a` 和 `b`。输出 `a + b` 的结果。

输入样例：

```text
3 5
```

输出样例：

```text
8
```

这里最重要的是：`3` 和 `5` 在同一行，中间用空格隔开。

所以我们要学会读取“一行里的多个数字”。

## 第一步：先读取一整行

先不要急着做加法。我们先观察 Python 到底读到了什么。

```python
num_string = input()
print(num_string)
```

如果输入：

```text
3 5
```

那么 `num_string` 里面存的是：

```python
"3 5"
```

注意：这是一个字符串，不是两个数字。

## 第二步：用 `split()` 拆开

`split()` 的作用是：按照空格把字符串拆开。

```python
num_string = input()
num_list = num_string.split()
print(num_list)
```

输入：

```text
3 5
```

输出：

```text
['3', '5']
```

也就是说：

```python
"3 5".split()
```

会得到：

```python
["3", "5"]
```

这个结果是一个列表。

## 第三步：用下标取出两个数

列表中的位置从 `0` 开始数。

对于这个列表：

```python
num_list = ["3", "5"]
```

- `num_list[0]` 是第一个内容，也就是 `"3"`。
- `num_list[1]` 是第二个内容，也就是 `"5"`。

可以用下面的代码观察：

```python
num_string = input()
num_list = num_string.split()

print(num_list)
print(num_list[0])
print(num_list[1])
```

输入：

```text
3 5
```

输出：

```text
['3', '5']
3
5
```

!!! note
    虽然输出看起来是 `3` 和 `5`，但 `num_list[0]` 和 `num_list[1]` 仍然是字符串。

## 第四步：转换成整数

如果直接写：

```python
num_list = input().split()
print(num_list[0] + num_list[1])
```

输入：

```text
3 5
```

输出会是：

```text
35
```

为什么不是 `8`？

因为 `num_list[0]` 是字符串 `"3"`，`num_list[1]` 是字符串 `"5"`。

字符串的 `+` 表示拼接，所以结果是 `"35"`。

要做数学加法，必须先用 `int()` 转换：

```python
num_list = input().split()
a = int(num_list[0])
b = int(num_list[1])
print(a + b)
```

输入：

```text
3 5
```

输出：

```text
8
```

这就是 OJ 中 A+B 的基本写法。

## 完整代码

```python
num_list = input().split()
a = int(num_list[0])
b = int(num_list[1])
print(a + b)
```

请按顺序理解这四行：

1. `input()` 读取一整行。
2. `.split()` 按空格拆开，得到列表。
3. `num_list[0]` 和 `num_list[1]` 取出两个位置上的内容。
4. `int()` 转换成整数，再相加。

## 为什么不是写两次 `input()`

如果题目输入是：

```text
3 5
```

就表示两个数字在同一行。

这时不应该写：

```python
a = int(input())
b = int(input())
print(a + b)
```

这段代码需要两行输入：

```text
3
5
```

所以，看到“一行两个整数”，要想到：

```python
num_list = input().split()
```

## 一行多个数字

同样的方法也可以处理一行多个数字。

输入：

```text
1 2 3 4 5
```

代码：

```python
num_list = input().split()
print(num_list)
print(num_list[0])
print(num_list[1])
print(num_list[2])
```

输出：

```text
['1', '2', '3', '4', '5']
1
2
3
```

如果要把它们当作数字使用，就要分别转换：

```python
num_list = input().split()
a = int(num_list[0])
b = int(num_list[1])
c = int(num_list[2])
print(a + b + c)
```

## 小练习

### 练习 1：A+B

输入一行两个整数，输出它们的和。

输入：

```text
10 20
```

输出：

```text
30
```

参考代码：

```python
num_list = input().split()
a = int(num_list[0])
b = int(num_list[1])
print(a + b)
```

### 练习 2：三个数相加

输入一行三个整数，输出它们的和。

输入：

```text
1 2 3
```

输出：

```text
6
```

参考代码：

```python
num_list = input().split()
a = int(num_list[0])
b = int(num_list[1])
c = int(num_list[2])
print(a + b + c)
```

### 练习 3：两个数相乘

输入一行两个整数，输出它们的乘积。

输入：

```text
6 7
```

输出：

```text
42
```

参考代码：

```python
num_list = input().split()
a = int(num_list[0])
b = int(num_list[1])
print(a * b)
```

## 本课小结

- `input()` 读取一整行。
- `split()` 按空格把一行拆成列表。
- 列表下标从 `0` 开始。
- `num_list[0]` 表示第一个内容，`num_list[1]` 表示第二个内容。
- `split()` 得到的是字符串，做数学计算前要用 `int()` 转换。
- OJ 中看到“一行两个整数”，可以写：

```python
num_list = input().split()
a = int(num_list[0])
b = int(num_list[1])
print(a + b)
```
