# 逻辑表达式

## 0. True 与 False

`True`与`False`是python的字面常量.什么是字面常量,就是数字$1,2,3,4,\cdots$一样可以被直接识别的量.

`True`表示真, `False`表示假,它们通常是逻辑表达式(就是数学上你们学的命题,能判断真假的)的返回值(就是计算结果.)

```python
print(1==1) # True
print(2>1) # True
print(2<1) # False
```

## 1. 什么是逻辑运算符？


- Python中的三个基本逻辑运算符：`not`、`and`、`or`
    - `not` 否,对命题进行取反
    - `and` 且,连接两个命题
    - `or`  或,连接两个命题
- 用于组合或操作布尔值（`True`/`False`）
- 常用于条件判断和循环控制

## 2. 真值表快速预览

| A     | B     | not A | A and B | A or B |
|-------|-------|-------|---------|--------|
| True  | True  | False | True    | True   |
| True  | False | False | False   | True   |
| False | True  | True  | False   | True   |
| False | False | True  | False   | False  |

---

## 3. 运算符详解

### (1) `and` 运算符
- **规则**：两个条件都为`True`时返回`True`，否则返回`False`
- **示例**：
  ```python
  print(True and True)   # 输出 True
  print(True and False)  # 输出 False
  print(5 > 3 and 2 == 2)  # 输出 True
  ```

### (2) `or` 运算符
- **规则**：任意一个条件为`True`时返回`True`，否则返回`False`
- **示例**：
  ```python
  print(False or True)   # 输出 True
  print(False or False)  # 输出 False
  print(3 < 2 or 10 >= 5)  # 输出 True
  ```

### (3) `not` 运算符
- **规则**：反转布尔值
- **示例**：
  ```python
  print(not True)   # 输出 False
  print(not False)  # 输出 True
  print(not 5 == 3)  # 输出 True
  ```

---

## 4. 实际应用场景

### 示例1：登录验证

当输入的用户名与密码都正确的时候,输出`登录成功`

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

### 示例2：年龄验证

旅游地点对学生或儿童(13岁以下)有折扣

```python
age = int(input("input your age:"))
student_string = input("Are you student (yes,no) ?")
is_student = student_string == "yes"

if age <= 13 or is_student:
    print("可以享受折扣")
else:
    print("不可以享受折扣")
```

### 示例3：数值范围判断

输入的数字是否在$[0,10]$之间

```python
number = int(input("please input a number:"))
if number >= 0 and number <= 10:
    print("数字在0到10之间")
else
    print("数字不在0到10之间")
```

---

## 5. 运算符优先级
1. `not` 优先级最高
2. `and` 次之
3. `or` 最低

**示例**：
```python
print(True or False and not True)
# 等效于 True or (False and (not True)) → True
```

---

## 6. 短路求值特性
- **`and`**：如果第一个表达式为`False`，直接返回`False`，不计算第二个表达式
- **`or`**：如果第一个表达式为`True`，直接返回`True`，不计算第二个表达式

**示例**：
```python
def check():
    print("函数被调用")
    return True

print(False and check())  # 不会调用check()
print(True or check())    # 不会调用check()
```

---

## 7. 总结表格
| 运算符 | 描述         | 示例                  |
|--------|--------------|-----------------------|
| `and`  | 逻辑与       | `x > 5 and x < 10`    |
| `or`   | 逻辑或       | `y == 3 or y == 5`    |
| `not`  | 逻辑非       | `not is_available`    |

---

## 8. 练习题

1. 判断闰年条件：能被4整除但不能被100整除，或者能被400整除
2. 成绩等级判断：90分以上为A，80-89为B，70-79为C，其他为D
3. 编写一个判断数字是否是偶数且大于10的程序
