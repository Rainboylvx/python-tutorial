# 条件判断练习

## 学习目标

这一节用来集中练习 `if`、`else`、`elif` 和逻辑运算符。

做题时建议按下面步骤思考：

1. 先读懂输入是什么。
2. 再判断有几种情况。
3. 写出条件。
4. 最后输出结果。

## 1. 三个数的最大值

### 题目描述

输入三个整数，每行一个，求出最大的数并输出。

### 输入示例

```text
4
5
6
```

### 输出示例

```text
6
```

### 参考代码

```python
a = int(input("input first number: "))
b = int(input("input second number: "))
c = int(input("input third number: "))

if a < b:
    a = b

if a < c:
    a = c

print("max number is:", a)
```

思路：先让 `a` 变成 `a` 和 `b` 中较大的数，再用 `a` 和 `c` 比较。

## 2. 简单计算器

### 题目描述

输入两个整数和一个运算符，计算结果。

支持四种运算：`+`、`-`、`*`、`/`。

### 输入示例

```text
1
2
+
```

### 输出示例

```text
3
```

### 参考代码

```python
a = int(input())
b = int(input())
c = input()

if c == "+":
    print(a + b)
elif c == "-":
    print(a - b)
elif c == "/":
    print(a / b)
elif c == "*":
    print(a * b)
```

这里使用 `elif`，因为一次输入的运算符只会属于一种情况。

## 3. 判断奇偶数

### 题目描述

输入一个整数，判断它是奇数还是偶数。

核心思路：如果一个数除以 `2` 的余数是 `0`，它就是偶数；否则就是奇数。

### 输入示例

```text
7
```

### 输出示例

```text
奇数
```

### 参考代码

```python
num = int(input("请输入一个整数: "))

if num % 2 == 0:
    print("偶数")
else:
    print("奇数")
```

## 4. 成绩等级转换

### 题目描述

输入一个 `0` 到 `100` 之间的分数，输出对应等级。

- `90` 分及以上：`A`
- `80` 到 `89` 分：`B`
- `60` 到 `79` 分：`C`
- `60` 分以下：`D`

### 输入示例

```text
85
```

### 输出示例

```text
B
```

### 参考代码

```python
score = int(input("请输入分数: "))

if score >= 90:
    print("A")
elif score >= 80:
    print("B")
elif score >= 60:
    print("C")
else:
    print("D")
```

注意：程序从上往下检查。能走到 `elif score >= 80`，说明 `score >= 90` 已经不成立。

## 5. 判断闰年

### 题目描述

输入一个年份，判断它是否是闰年。

闰年规则：

1. 能被 `4` 整除，并且不能被 `100` 整除。
2. 或者，能被 `400` 整除。

### 输入示例

```text
2000
```

### 输出示例

```text
是闰年
```

### 参考代码

```python
year = int(input("请输入年份: "))

if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
    print("是闰年")
else:
    print("不是闰年")
```

## 6. 简易文字冒险游戏

### 题目描述

根据玩家的选择输出不同结果。这个练习用来练习嵌套 `if`。

场景：

1. 第一步选择向左 `left` 还是向右 `right`。
2. 如果向左，会遇到老虎，再选择逃跑 `run` 或战斗 `fight`。
3. 如果向右，会发现宝箱，再选择打开 `open` 或离开 `leave`。

### 输入示例

```text
left
fight
```

### 输出示例

```text
你被老虎吃掉了...游戏结束。
```

### 参考代码

```python
print("你来到了一个黑暗的分岔路口。")
choice1 = input("你想去左边 (left) 还是右边 (right)? ")

if choice1 == "left":
    print("你遇到了一只饥饿的老虎！")
    choice2 = input("你要逃跑 (run) 还是战斗 (fight)? ")

    if choice2 == "run":
        print("你成功逃脱了，但在慌乱中丢了钱包。")
    elif choice2 == "fight":
        print("你被老虎吃掉了...游戏结束。")
    else:
        print("你犹豫不决，老虎扑了过来。")

elif choice1 == "right":
    print("你发现了一个发光的宝箱！")
    choice2 = input("你要打开 (open) 还是离开 (leave)? ")

    if choice2 == "open":
        print("哇！你发现了传说中的宝藏，你发财了！")
    elif choice2 == "leave":
        print("你安全地离开了，但与财富擦肩而过。")
    else:
        print("宝箱突然变成了怪物，咬了你一口。")

else:
    print("你原地不动，天黑了，你被冻僵了。")
```

## 7. 判断能否构成三角形

### 题目描述

输入三条边的长度，判断它们能否组成三角形。

规则：任意两边之和必须大于第三边。

也就是要同时满足：

1. $a + b > c$
2. $a + c > b$
3. $b + c > a$

### 输入示例

```text
3
4
5
```

### 输出示例

```text
可以构成三角形
```

### 参考代码

```python
print("请输入三角形的三条边长度：")
a = int(input("边长1: "))
b = int(input("边长2: "))
c = int(input("边长3: "))

if (a + b > c) and (a + c > b) and (b + c > a):
    print("可以构成三角形")
    if a == b and b == c:
        print("而且这是一个等边三角形！")
else:
    print("这三条边无法构成三角形")
```

## 8. 模拟用户登录系统

### 题目描述

模拟一个简单登录系统。先判断用户名是否正确；如果用户名正确，再判断密码是否正确。

预设账号：

- 用户名：`admin`
- 密码：`123456`

### 输入示例

```text
admin
123456
```

### 输出示例

```text
登录成功！欢迎回来。
```

### 参考代码

```python
username = input("请输入用户名: ")
password = input("请输入密码: ")

if username == "admin":
    if password == "123456":
        print("登录成功！欢迎回来。")
    else:
        print("密码错误，请重试。")
else:
    print("用户名不存在")
```

## 9. BMI 计算器

### 题目描述

输入体重和身高，计算 BMI，并判断身体状态。

公式：

$$
BMI = \frac{\text{体重}(kg)}{\text{身高}(m) \times \text{身高}(m)}
$$

判断标准：

- `BMI < 18.5`：体重过轻
- `18.5 <= BMI < 24`：正常范围
- `24 <= BMI < 28`：过重
- `BMI >= 28`：肥胖

### 输入示例

```text
70
1.75
```

### 输出示例

```text
你的BMI指数是: 22.86
正常范围
```

### 参考代码

```python
weight = float(input("请输入体重 (kg): "))
height = float(input("请输入身高 (m): "))

bmi = weight / (height * height)

print(f"你的BMI指数是: {bmi:.2f}")

if bmi < 18.5:
    print("体重过轻")
elif bmi < 24:
    print("正常范围")
elif bmi < 28:
    print("过重")
else:
    print("肥胖")
```

## 10. 商场打折系统

### 题目描述

输入消费金额，根据规则计算最终价格。

规则：

- 满 `1000` 元，打 `7` 折。
- 满 `500` 元，打 `8` 折。
- 满 `100` 元，打 `9` 折。
- 不满 `100` 元，不打折。

### 输入示例

```text
600
```

### 输出示例

```text
原价: 600.0
享受折扣: 8折
最终价格: 480.0
```

### 参考代码

```python
price = float(input("请输入商品总金额: "))
final_price = price
discount_desc = "无折扣"

if price >= 1000:
    final_price = price * 0.7
    discount_desc = "7折"
elif price >= 500:
    final_price = price * 0.8
    discount_desc = "8折"
elif price >= 100:
    final_price = price * 0.9
    discount_desc = "9折"

print("原价:", price)
print("享受折扣:", discount_desc)
print("最终价格:", final_price)
```

## 11. 坐标象限判断

### 题目描述

输入坐标 $(x, y)$，判断点在第几象限，或者是否在坐标轴上。

规则：

- 第一象限：`x > 0`，`y > 0`
- 第二象限：`x < 0`，`y > 0`
- 第三象限：`x < 0`，`y < 0`
- 第四象限：`x > 0`，`y < 0`
- 原点：`x == 0` 且 `y == 0`
- 坐标轴上：`x == 0` 或 `y == 0`，但不是原点

### 输入示例

```text
-5
3
```

### 输出示例

```text
点 (-5, 3) 位于第二象限
```

### 参考代码

```python
x = int(input("请输入X坐标: "))
y = int(input("请输入Y坐标: "))

if x == 0 and y == 0:
    print("该点位于原点")
elif x == 0:
    print("该点位于Y轴上")
elif y == 0:
    print("该点位于X轴上")
elif x > 0 and y > 0:
    print(f"点 ({x}, {y}) 位于第一象限")
elif x < 0 and y > 0:
    print(f"点 ({x}, {y}) 位于第二象限")
elif x < 0 and y < 0:
    print(f"点 ({x}, {y}) 位于第三象限")
else:
    print(f"点 ({x}, {y}) 位于第四象限")
```

## 12. 简单出租车计费

### 题目描述

根据行驶里程计算车费。

规则：

- `3` 公里以内，收费 `13` 元。
- 超过 `3` 公里的部分，每公里 `2.3` 元。

### 输入示例

```text
5
```

### 输出示例

```text
应付车费: 17.6 元
```

### 参考代码

```python
distance = float(input("请输入行驶里程(公里): "))

if distance <= 3:
    cost = 13
else:
    extra_distance = distance - 3
    cost = 13 + extra_distance * 2.3

print("应付车费:", cost, "元")
```

## 本课小结

- 读题时先找清楚“有几种情况”。
- 二选一通常用 `if-else`。
- 多选一通常用 `if-elif-else`。
- 多个条件同时出现时，可以用 `and`、`or` 连接。
