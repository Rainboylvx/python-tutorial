# 逻辑表达式

## 学习目标

学完这一课，你应该能够：

1. 理解 `True` 和 `False`。
2. 使用 `and`、`or`、`not` 组合条件。
3. 在 `if` 判断中写出更复杂的条件。

## `True` 和 `False`

`True` 表示真，`False` 表示假。

它们是 Python 可以直接识别的值。

比较表达式的结果通常就是 `True` 或 `False`。

```python
print(1 == 1)
print(2 > 1)
print(2 < 1)
```

输出：

```text
True
True
False
```

## 什么是逻辑运算符

逻辑运算符可以把多个条件组合起来。

Python 中常用的逻辑运算符有三个：

- `and`：并且，两个条件都成立才成立。
- `or`：或者，只要有一个条件成立就成立。
- `not`：取反，把真变成假，把假变成真。

## 真值表

| A | B | `not A` | `A and B` | `A or B` |
|---|---|---------|-----------|----------|
| `True` | `True` | `False` | `True` | `True` |
| `True` | `False` | `False` | `False` | `True` |
| `False` | `True` | `True` | `False` | `True` |
| `False` | `False` | `True` | `False` | `False` |

## `and`：两个条件都要满足

```python
print(True and True)
print(True and False)
print(5 > 3 and 2 == 2)
```

只有两边都为 `True`，结果才是 `True`。

常见例子：判断一个数是否在 `0` 到 `10` 之间。

```python
number = int(input("please input a number: "))

if number >= 0 and number <= 10:
    print("数字在0到10之间")
else:
    print("数字不在0到10之间")
```

## `or`：满足一个条件就可以

```python
print(False or True)
print(False or False)
print(3 < 2 or 10 >= 5)
```

只要有一边为 `True`，结果就是 `True`。

常见例子：儿童或学生可以享受折扣。

```python
age = int(input("input your age: "))
student_string = input("Are you student (yes/no)? ")
is_student = student_string == "yes"

if age <= 13 or is_student:
    print("可以享受折扣")
else:
    print("不可以享受折扣")
```

## `not`：取反

```python
print(not True)
print(not False)
print(not 5 == 3)
```

`not` 会把结果反过来。

例如：

```python
is_raining = False

if not is_raining:
    print("可以出去玩")
```

## 实际例子：登录验证

当用户名和密码都正确时，输出 `登录成功`。

```python
username = "admin"
password = "123456"

input_user = input("用户名：")
input_pass = input("密码：")

if input_user == username and input_pass == password:
    print("登录成功！")
else:
    print("用户名或密码错误")
```

这里必须用户名正确，并且密码正确，才能登录成功。

## 运算符优先级

逻辑运算符也有优先级：

1. `not` 最高。
2. `and` 第二。
3. `or` 最低。

示例：

```python
print(True or False and not True)
```

它等价于：

```python
print(True or (False and (not True)))
```

如果不确定优先级，建议加括号，让代码更清楚。

## 短路求值

Python 在判断逻辑表达式时，有时不会计算后面的条件。

### `and` 的短路

如果 `and` 左边已经是 `False`，整个结果一定是 `False`，右边就不会再计算。

```python
def check():
    print("函数被调用")
    return True

print(False and check())
```

### `or` 的短路

如果 `or` 左边已经是 `True`，整个结果一定是 `True`，右边就不会再计算。

```python
def check():
    print("函数被调用")
    return True

print(True or check())
```

## 本课小结

| 运算符 | 含义 | 示例 |
|--------|------|------|
| `and` | 并且 | `x > 5 and x < 10` |
| `or` | 或者 | `y == 3 or y == 5` |
| `not` | 取反 | `not is_available` |

## 练习题

1. 判断闰年：能被 `4` 整除但不能被 `100` 整除，或者能被 `400` 整除。
2. 判断一个数字是否是偶数，并且大于 `10`。
3. 输入年龄和是否为学生，判断是否可以享受折扣。
