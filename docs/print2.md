# **print() 函数使用教程**

## **1. 基础打印**
```python
# 直接打印文字
print("Hello World!")
print("欢迎学习Python")

# 打印数字
print(100)
print(3.14)
```

## **2. 打印变量**
```python
name = "小明"
age = 18
score = 95.5

print(name)      # 打印变量值
print(age)
print(score)
```

## **3. 组合打印（逗号分隔）**
```python
# 自动用空格分隔
print("学生姓名：", name, "年龄：", age, "分数：", score)

# 打印多个变量
x = 10
y = 20
print("x =", x, "y =", y, "x+y =", x+y)
```

## **4. f-string 格式化打印（推荐！）**
```python
# 在字符串前加 f，用 {} 包裹变量
print(f"学生姓名：{name}，年龄：{age}，分数：{score}")

# 可以直接进行计算
price = 25.5
quantity = 3
total = price * quantity
print(f"商品单价：{price}元")
print(f"购买数量：{quantity}个")  
print(f"总计：{total}元")

# 数字格式化
pi = 3.1415926
print(f"圆周率：{pi:.2f}")  # 保留2位小数
```

## **5. 字符串拼接打印**
```python
# 用 + 号连接字符串
print("学生姓名：" + name + "，年龄：" + str(age))

# 注意：数字需要先转换为字符串
print("总分：" + str(score) + "分")
```

## **6. 特殊格式打印**
```python
# 换行打印
print("第一行\n第二行")  # \n 表示换行

# 不换行打印
print("Hello", end=" ")  # end="" 指定结束符
print("World!", end="")
# 输出：Hello World!

# 制表符（对齐）
print("姓名\t年龄\t分数")  # \t 相当于按Tab键
print("小明\t18\t95.5")
print("小红\t17\t88.0")
```

## **7. 实际应用示例**
```python
# 学生信息卡片
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

## **打印技巧总结**
| 方法 | 示例 | 优点 |
|------|------|------|
| 逗号分隔 | `print("x=", x)` | 简单，自动加空格 |
| f-string | `print(f"x={x}")` | 最清晰，功能强 |
| 字符串拼接 | `print("x=" + str(x))` | 需要转换数字 |
| 格式化数字 | `print(f"{pi:.2f}")` | 控制小数位数 |

**建议初学者多使用 f-string，既简单又强大！**

需要我解释哪个部分或者提供更多例子吗？