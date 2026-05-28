# OJ 入门：A+B 和一行多个数字

## 学习目标

学完这一课，你应该能够：

1. 看懂 OJ 题目中的“输入”和“输出”。
2. 写出最基础的 A+B 程序。
3. 读取一行中的两个数字。
4. 读取一行中的多个数字。
5. 理解 `split()` 和 `map()` 的作用。

## 什么是 OJ

OJ 是 Online Judge 的缩写，可以理解成“在线判题系统”。

你提交代码后，系统会自动运行你的程序，并检查输出是否和标准答案一样。

OJ 题目通常会给出：

- 题目描述：要你解决什么问题。
- 输入格式：程序会收到什么数据。
- 输出格式：程序应该打印什么结果。
- 输入样例和输出样例：帮助你理解题目。

做 OJ 题时，最重要的一点是：

> 按题目要求读取输入，按题目要求输出结果。

## 第一题：A+B

### 题目描述

输入两个整数 `a` 和 `b`，输出它们的和。

### 输入格式

一行，包含两个整数。

### 输入样例

```text
3 5
```

### 输出样例

```text
8
```

很多同学会卡在这里：题目说“一行两个整数”，不是让你写两次 `input()`。

输入是：

```text
3 5
```

这两个数字在同一行，中间用空格隔开。

## 错误理解：写两次 `input()`

如果你这样写：

```python
a = int(input())
b = int(input())
print(a + b)
```

这表示程序需要两行输入：

```text
3
5
```

但题目给的是一行：

```text
3 5
```

所以这种写法不符合“一行两个整数”的题目要求。

## 正确写法：`split()`

读取一行两个数字，可以这样写：

```python
a, b = input().split()
a = int(a)
b = int(b)

print(a + b)
```

我们一步一步看。

### 第一步：读取一整行

```python
s = input()
```

如果输入是：

```text
3 5
```

那么 `s` 里面存的是字符串：

```python
"3 5"
```

### 第二步：用 `split()` 按空格切开

```python
parts = s.split()
```

`split()` 会把字符串按空格切开。

```python
"3 5".split()
```

得到：

```python
["3", "5"]
```

注意：这里的 `"3"` 和 `"5"` 仍然是字符串。

### 第三步：分别取出两个数

```python
a, b = input().split()
```

这行代码的意思是：

- 把一行输入按空格切开。
- 第一个内容放进 `a`。
- 第二个内容放进 `b`。

如果输入是 `3 5`，那么：

```python
a = "3"
b = "5"
```

### 第四步：转换成整数

```python
a = int(a)
b = int(b)
```

转换后才能做数学加法。

完整代码：

```python
a, b = input().split()
a = int(a)
b = int(b)

print(a + b)
```

## 更常用的写法：`map()`

上面的代码可以写得更短：

```python
a, b = map(int, input().split())
print(a + b)
```

这行代码可以这样读：

1. `input()` 读取一整行。
2. `.split()` 按空格切开。
3. `map(int, ...)` 把每一部分都转换成整数。
4. `a, b = ...` 把两个整数分别放进 `a` 和 `b`。

!!! note
    初学时可以先写长版本。等你理解以后，再使用 `map()` 的简洁写法。

## 一行多个数字

有些题目会说：

> 输入一行，包含若干个整数。

例如：

```text
1 2 3 4 5
```

如果你不知道有几个数字，可以把它们读成一个列表。

```python
nums = list(map(int, input().split()))
print(nums)
```

输入：

```text
1 2 3 4 5
```

输出：

```text
[1, 2, 3, 4, 5]
```

这里：

- `input().split()` 得到 `["1", "2", "3", "4", "5"]`。
- `map(int, ...)` 把它们转换成整数。
- `list(...)` 把结果变成列表。

## 例题：一行多个数求和

### 题目描述

输入一行整数，输出它们的和。

### 输入样例

```text
1 2 3 4 5
```

### 输出样例

```text
15
```

### 参考代码

```python
nums = list(map(int, input().split()))
total = 0

for x in nums:
    total = total + x

print(total)
```

也可以使用 Python 自带的 `sum()`：

```python
nums = list(map(int, input().split()))
print(sum(nums))
```

## 一行数字数量固定的情况

如果题目明确说“一行三个整数”，可以这样写：

```python
a, b, c = map(int, input().split())
print(a + b + c)
```

如果题目说“一行两个整数”，就写：

```python
a, b = map(int, input().split())
print(a + b)
```

变量个数要和输入数字个数一致。

## 常见错误

### 1. 忘记转换成整数

错误代码：

```python
a, b = input().split()
print(a + b)
```

输入：

```text
3 5
```

输出会是：

```text
35
```

因为 `a` 和 `b` 是字符串，`+` 表示拼接，不是数学加法。

### 2. 变量个数和输入个数不一致

错误代码：

```python
a, b = map(int, input().split())
```

如果输入：

```text
1 2 3
```

程序会报错，因为左边只有两个变量，右边却有三个数字。

### 3. 在 OJ 中写多余提示

OJ 通常不需要提示文字。

不推荐：

```python
a, b = map(int, input("请输入两个数字：").split())
print(a + b)
```

推荐：

```python
a, b = map(int, input().split())
print(a + b)
```

因为 OJ 会严格比较输出，多余的提示文字可能导致答案错误。

## 本课小结

- 一行一个数字：`a = int(input())`
- 一行两个数字：`a, b = map(int, input().split())`
- 一行多个数字：`nums = list(map(int, input().split()))`
- `split()` 负责按空格切开字符串。
- `map(int, ...)` 负责把每一部分转换成整数。
- OJ 中不要输出题目没有要求的提示文字。
