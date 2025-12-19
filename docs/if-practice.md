## 1. 三个数的最大数

输入三个整数,每行一个整数,求出最大的那个数,然后输出

输入:
```
4
5
6
```

输出:

```
6
```

```python
a = int(input('input first number:'))
b = int(input('input second number:'))
c = int(input('input third number:'))

# 经过下面的这个if a变成a,b 中的较大的那数
if a < b :
    a = b

# 因为a已经是a,b中较大的那个数,同样的套路,
# 用a与c比较,然后赋值 ,就可以让a变成 a, b c 中最大的那个数
if a < c:
    a = c
print('max number is : ',a)
```

## 2. 简单计算器

一个最简单的计算器，支持+，-， *  / 四种运算。仅需考虑输入输出为整数的情况.

输入: 

1. 三行,第一二行是两个需要运算的数
2. 第三行,运算的符号

```
1
2
+
```

输出
```
3
```

```python
a = int(input())
b = int(input())
c = input()

if c == "+":
    print(a+b)
if c == "-":
    print(a-b)
if c == "/":
    print(a/b)
if c == "*":
    print(a*b)
```


## 3 判断奇偶数

这是一个非常经典的入门题目。输入一个整数，判断它是奇数还是偶数。

  * **核心逻辑：** 如果一个数除以 2 的余数是 0，它就是偶数，否则是奇数。我们需要用到取模运算符 `%`。

输入：

```
7
```

输出：

```
奇数
```

```python
num = int(input("请输入一个整数: "))

# % 是取模运算，即计算除法的余数
# 如果余数为0，说明能被2整除
if num % 2 == 0:
    print("偶数")
else:
    # 既然不是偶数，那肯定是奇数，这里使用 else 简化逻辑
    print("奇数")
```

-----

## 4 成绩等级转换 (多重选择)

在你的“简单计算器”例子中，你使用了多个 `if`。但在实际开发中，如果条件是互斥的（比如一个分数不可能既是 A 又是 B），使用 `elif` (else if) 会更高效且逻辑更清晰。

输入一个 0 到 100 之间的分数，输出对应的等级：

  * 90分以上 (含90): A
  * 80-89分: B
  * 60-79分: C
  * 60分以下: D

输入：

```
85
```

输出：

```
B
```

```python
score = int(input("请输入分数: "))

if score >= 90:
    print("A")
elif score >= 80:
    # 程序能走到这里，说明上面的 score >= 90 不成立
    # 所以这里隐含了 score < 90 且 score >= 80
    print("B")
elif score >= 60:
    print("C")
else:
    # 上面都不满足，那就是小于 60 分
    print("D")
```

-----

## 5 判断闰年 (逻辑运算符的运用)

这个题目稍微难一点点，用来练习逻辑运算符 `and` (并且) 和 `or` (或者)。

**规则：**

1.  能被 4 整除，**但不能**被 100 整除的年份是闰年。
2.  **或者**，能被 400 整除的年份也是闰年。

输入：

```
2000
```

输出：

```
是闰年
```

```python
year = int(input("请输入年份: "))

# 这里有两个条件，满足任意一个即为闰年：
# 条件1: (year % 4 == 0) and (year % 100 != 0)
# 条件2: (year % 400 == 0)
if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
    print("是闰年")
else:
    print("不是闰年")
```

-----


## 6 简易文字冒险游戏 (嵌套 if 练习)

在这个练习中，我们需要根据玩家的每一步选择，给出不同的反馈。这需要使用“嵌套结构”，注意看代码的**缩进**，它是 Python 识别逻辑层次的关键。

**场景描述：**
你来到了一个分岔路口。

1.  第一步：向左走 (left) 还是向右走 (right)？
      * 如果向左：你会遇到一只饥饿的老虎。你是逃跑 (run) 还是战斗 (fight)？
      * 如果向右：你会发现一个宝箱。你是打开 (open) 还是离开 (leave)？

输入：

```
left
fight
```

输出：

```
你被老虎吃掉了...游戏结束。
```

```python
print("你来到了一个黑暗的分岔路口。")
choice1 = input("你想去左边 (left) 还是右边 (right)? ")

if choice1 == "left":
    # 进入左边的分支逻辑
    print("你遇到了一只饥饿的老虎！")
    choice2 = input("你要逃跑 (run) 还是战斗 (fight)? ")
    
    # 这里的 if 是嵌套在上面的 if 里面的
    if choice2 == "run":
        print("你成功逃脱了，但在慌乱中丢了钱包。")
    elif choice2 == "fight":
        print("你被老虎吃掉了...游戏结束。")
    else:
        print("你犹豫不决，老虎扑了过来。")

elif choice1 == "right":
    # 进入右边的分支逻辑
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

-----

## 7 能否构成三角形 (几何逻辑)

这是一个非常经典的数学逻辑题，比“比大小”更进阶一步。

**规则：**
任意两边之和必须**大于**第三边。也就是说，要同时满足三个条件：

1.  $a + b > c$
2.  $a + c > b$
3.  $b + c > a$

输入：

```
3
4
5
```

输出：

```
可以构成三角形
```

```python
print("请输入三角形的三条边长度：")
a = int(input("边长1: "))
b = int(input("边长2: "))
c = int(input("边长3: "))

# 必须同时满足三个条件，所以使用 and 连接
if (a + b > c) and (a + c > b) and (b + c > a):
    print("可以构成三角形")
    # 这里可以尝试扩展：如果是等边三角形(三边相等)怎么判断？
    if a == b and b == c:
        print("而且这是一个等边三角形！")
else:
    print("这三条边无法构成三角形")
```

-----

## 8 模拟用户登录系统 (字符串匹配与逻辑层级)

这个练习模拟了真实的软件登录逻辑。我们需要先验证用户名是否存在，如果存在，再验证密码是否正确。

**预设账号：**

  * 用户名: `admin`
  * 密码: `123456`

输入：

```
admin
123456
```

输出：

```
登录成功！
```

输入(错误情况)：

```
guest
123456
```

输出：

```
用户名不存在
```

```python
username = input("请输入用户名: ")
password = input("请输入密码: ")

# 第一层：检查用户名
if username == "admin":
    # 用户名对了，才检查密码
    if password == "123456":
        print("登录成功！欢迎回来。")
    else:
        print("密码错误，请重试。")
else:
    # 用户名都不对，没必要检查密码了
    print("用户名不存在")
```

-----


## 9 身体质量指数 (BMI) 计算器

这是一个非常实用的健康小程序。
**公式：** $BMI = ext{体重(kg)} / (\text{身高(m)} \times \text{身高(m)})$

**标准：**

  * BMI  18.5: 体重过轻
  * 18.5 = BMI \< 24: 正常范围
  * 24 = BMI \< 28: 过重
  * BMI = 28: 肥胖

输入：

```
70
1.75
```

输出：

```
你的BMI是: 22.86
正常范围
```

```python
weight = float(input("请输入体重 (kg): "))
height = float(input("请输入身高 (m): "))

# 计算BMI
bmi = weight / (height * height)

# 格式化输出，保留两位小数
print(f"你的BMI指数是: {bmi:.2f}")

if bmi < 18.5:
    print("体重过轻")
elif bmi < 24:
    # 这里的逻辑隐含了 bmi >= 18.5
    print("正常范围")
elif bmi < 28:
    print("过重")
else:
    print("肥胖")
```

-----

## 10 商场打折系统 (逻辑修改变量值)

这个练习的核心在于：**根据条件改变变量的值**。
很多时候 `if` 不仅仅是用来 `print`，而是用来计算最终价格。

**规则：**

  * 消费满 100 元，打 9 折。
  * 消费满 500 元，打 8 折。
  * 消费满 1000 元，打 7 折。
  * 未满 100 元，不打折。

输入：

```
600
```

输出：

```
原价: 600
享受折扣: 8折
最终价格: 480.0
```

```python
price = float(input("请输入商品总金额: "))
final_price = price  # 默认最终价格等于原价
discount_desc = "无折扣" # 默认描述

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

-----

## 11 坐标象限判断 (多条件与边界处理)

这是一个训练数学思维的好题目。输入坐标 $(x, y)$，判断它在第几象限，或者在坐标轴上。

**规则回顾：**

  * 第一象限: x  0, y \> 0
  * 第二象限: x  0, y \> 0
  * 第三象限: x  0, y \< 0
  * 第四象限: x  0, y \< 0
  * 原点: x = 0, y = 0
  * 坐标轴上: x = 0 或 y = 0 (但不是原点)

输入：

```
-5
3
```

输出：

```
点 (-5, 3) 位于第二象限
```

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
    # 剩下的情况肯定是 x > 0 且 y < 0
    print(f"点 ({x}, {y}) 位于第四象限")
```

-----

## 12 简单的出租车计费 (分段函数)

这也是生活中常见的“分段计价”逻辑。

**规则：**

  * 起步价：3 公里以内（含 3 公里），收费 13 元。
  * 超过 3 公里的部分：每公里 2.3 元。

输入：

```
5
```

输出：

```
行驶里程: 5 公里
应付车费: 17.6 元
```

```python
distance = float(input("请输入行驶里程(公里): "))

if distance <= 3:
    cost = 13
else:
    # 超过的部分 = 总里程 - 起步里程
    extra_distance = distance - 3
    cost = 13 + (extra_distance * 2.3)

print("应付车费:", cost, "元")
```

-----