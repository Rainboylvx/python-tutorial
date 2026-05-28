# 再学 `print()`

## 学习目标

学完这一课，你应该能够：

1. 使用 `print()` 输出文字、数字和变量。
2. 使用逗号同时输出多个内容。
3. 使用 f-string 让输出更清楚。
4. 了解换行、不换行和制表符。

## 1. 直接打印内容

```python
print("Hello World!")
print("欢迎学习 Python")
print(100)
print(3.14)
```

文字需要加引号，数字可以直接写。

## 2. 打印变量

```python
name = "小明"
age = 18
score = 95.5

print(name)
print(age)
print(score)
```

`print()` 会把变量里存的内容输出到屏幕上。

## 3. 使用逗号组合输出

逗号可以把多个内容放在同一个 `print()` 里。

```python
name = "小明"
age = 18
score = 95.5

print("学生姓名：", name, "年龄：", age, "分数：", score)
```

逗号输出的好处是简单，而且会自动在内容之间加空格。

再看一个计算例子：

```python
x = 10
y = 20
print("x =", x, "y =", y, "x + y =", x + y)
```

## 4. 使用 f-string 输出

f-string 是非常推荐的输出方式。

写法是在字符串前面加 `f`，再用 `{}` 放入变量或表达式。

```python
name = "小明"
age = 18
score = 95.5

print(f"学生姓名：{name}，年龄：{age}，分数：{score}")
```

也可以直接写计算：

```python
price = 25.5
quantity = 3
total = price * quantity

print(f"商品单价：{price}元")
print(f"购买数量：{quantity}个")
print(f"总计：{total}元")
```

控制小数位数：

```python
pi = 3.1415926
print(f"圆周率：{pi:.2f}")
```

输出：

```text
圆周率：3.14
```

## 5. 字符串拼接输出

字符串可以用 `+` 拼接。

```python
name = "小明"
age = 18

print("学生姓名：" + name + "，年龄：" + str(age))
```

注意：数字要先用 `str()` 转换成字符串，才能和字符串拼接。

初学时更推荐使用 f-string，因为更清楚。

## 6. 特殊格式

### 换行

```python
print("第一行\n第二行")
```

`\n` 表示换行。

### 不换行

```python
print("Hello", end=" ")
print("World!", end="")
```

输出：

```text
Hello World!
```

`end` 可以指定 `print()` 结尾使用什么内容。默认结尾是换行。

### 制表符

```python
print("姓名\t年龄\t分数")
print("小明\t18\t95.5")
print("小红\t17\t88.0")
```

`\t` 类似按一次 Tab 键，可以帮助内容对齐。

## 7. 综合例子

```python
student_name = "张三"
student_class = "高一(3)班"
math_score = 92
english_score = 88

print("=" * 30)
print(f"学生姓名：{student_name}")
print(f"所在班级：{student_class}")
print(f"数学成绩：{math_score}分")
print(f"英语成绩：{english_score}分")
print(f"总分：{math_score + english_score}分")
print("=" * 30)
```

## 本课小结

| 方法 | 示例 | 特点 |
|------|------|------|
| 逗号分隔 | `print("x =", x)` | 简单，会自动加空格 |
| f-string | `print(f"x = {x}")` | 清楚，推荐使用 |
| 字符串拼接 | `print("x=" + str(x))` | 数字需要先转换 |
| 格式化数字 | `print(f"{pi:.2f}")` | 可以控制小数位数 |

建议初学者优先使用 f-string。
