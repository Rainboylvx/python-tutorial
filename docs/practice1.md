# 练习 1：输入、计算和输出

## 学习目标

这一节主要用来练习前面学过的内容：

1. 使用 `input()` 接收输入。
2. 使用 `int()` 和 `float()` 转换数据类型。
3. 使用变量保存中间结果。
4. 使用 `print()` 输出答案。

## 1. 两个数相乘

### 题目描述

输入两个整数，计算它们的乘积并输出。

### 参考代码

```python
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))

res = num1 * num2
print("the answer is:", res)
```

!!! note
    `input()` 里的提示文字可以不写。写提示文字的好处是让用户知道应该输入什么。

## 2. 矩形面积和周长

### 题目描述

输入矩形的长和宽，计算并输出面积和周长。

### 输入示例

```text
5
3
```

### 输出示例

```text
Area: 15
Perimeter: 16
```

### 参考代码

```python
width = int(input())
length = int(input())

print("Area:", width * length)
print("Perimeter:", 2 * (width + length))
```

!!! note
    变量名不一定要和参考代码完全一样。你也可以写成 `a`、`b`，但建议使用有意义的名字，例如 `width`、`length`。

## 3. 翻转三位数

### 题目描述

输入一个不含 `0` 的三位数，把它倒过来输出。

例如输入 `123`，输出 `321`。

### 思路分析

假设输入的数字是 `x`。

1. 个位数字：`x % 10`
2. 十位数字：`x // 10 % 10`
3. 百位数字：`x // 100`
4. 新数字：`个位 * 100 + 十位 * 10 + 百位`

### 参考代码

```python
x = int(input("input a number: "))

a = x % 10
b = x // 10 % 10
c = x // 100

d = a * 100 + b * 10 + c
print(d)
```

## 4. 学习小数：`float`

前面我们主要使用整数。如果用户输入的是小数，就需要使用 `float()`。

`float` 表示浮点数，你可以先把它理解成“小数”。

对比下面两种除法：

```python
print(3 / 2)
print(3 // 2)
```

输出：

```text
1.5
1
```

- `/` 表示普通除法，结果可能是小数。
- `//` 表示整除，只保留整数部分。

## 5. 圆的周长和面积

### 题目描述

输入圆的半径，计算并输出圆的面积和周长。

### 参考代码

```python
r = float(input("input r of circle: "))

perimeter = 3.1415 * 2 * r
area = 3.1415 * r * r

print("Area:", area)
print("Perimeter:", perimeter)
```

## 6. BMI 指数计算器

### 题目描述

BMI 是常用的身体质量指数，计算公式为：

$$
BMI = \frac{\text{体重}(kg)}{\text{身高}(m)^2}
$$

输入身高和体重，计算 BMI。

### 输入格式

- 第一行：身高，单位是米，例如 `1.75`。
- 第二行：体重，单位是千克，例如 `70.5`。

### 输入示例

```text
1.75
70
```

### 输出示例

```text
BMI: 22.857142857142858
```

### 参考代码

```python
height = float(input())
weight = float(input())

bmi = weight / (height * height)
print("BMI:", bmi)
```

如果希望保留两位小数，可以这样写：

```python
print(f"BMI: {bmi:.2f}")
```

输出：

```text
BMI: 22.86
```

## 本课小结

- 输入整数时，用 `int(input())`。
- 输入小数时，用 `float(input())`。
- 复杂计算可以分成几步，用变量保存中间结果。
- 写代码时，变量名清楚，思路也会更清楚。
