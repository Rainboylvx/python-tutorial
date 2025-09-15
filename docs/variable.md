
## **变量：带名字的箱子**

### **什么是变量？**
变量就像是一个**带名字的箱子**，用来存放数据。你可以：

- 把数据放进箱子里（赋值）
- 从箱子里取出数据使用（调用变量）
- 更换箱子里的内容（重新赋值）

### **代码中的变量 vs 数学中的变量**

**在数学中：**
```python
x = 2  # 表示 x 就是 2，是一个永恒的等式
x = x + 2  # ❌ 这在数学上不成立（2 ≠ 2 + 2）
```

**在编程中：**
```python
x = 2    # ✅ 创建一个名为x的箱子，放入数字2
x = x + 2  # ✅ 从x箱子取出2，加上2得到4，再把4放回x箱子
print(x)  # 现在x箱子里装的是4
```

### **变量的基本操作**

**1. 创建变量并赋值**
```python
# 创建名为myint的箱子，放入数字7
myint = 7
print(myint)  # 查看箱子里的内容：7
```

**2. 使用变量进行计算**
```python
# 创建三个箱子
one = 1      # 箱子"one"里放1
two = 2      # 箱子"two"里放2

# 从"one"取出1，从"two"取出2，相加得到3
# 把3放入名为"three"的新箱子
three = one + two
print(three)  # 查看结果：3
```

使用不存在的箱子,会发生什么事情?

```
# 创建三个箱子
one = 1      # 箱子"one"里放1
two = 2      # 箱子"two"里放2
print(three)  # <---- 注意这一行
# 从"one"取出1，从"two"取出2，相加得到3
# 把3放入名为"three"的新箱子
three = one + two
print(three)  # 查看结果：3
```

> 说明：
> - 如果你尝试使用还没有创建的变量（比如上面 print(three) 这一行），Python 会报错：
>   `NameError: name 'three' is not defined`
> - 这就像你要打开一个还没准备好的箱子，当然会出错。
> - 正确做法是：先给变量赋值，再使用它。

**3. 更改变量内容**
```python
age = 18      # 创建箱子"age"，放入18
print(age)    # 输出：18

age = age + 1 # 取出18，加上1得到19，放回箱子
print(age)    # 现在箱子里是：19
```

### **变量的命名规则**
- 只能包含字母、数字和下划线
- 不能以数字开头
- 不能使用Python关键字（如if、for等）
- 建议使用有意义的名称

**好的命名：**
```python
student_age = 18
total_price = 100
user_name = "小明"
```

**不好的命名：**
```python
a = 18        # 不知道a代表什么
1st = "小明"   # ❌ 以数字开头
if = 5        # ❌ 使用关键字
```

### **实际应用示例**
```python
# 计算购物总价
price = 25.5      # 单价
quantity = 3      # 数量
total = price * quantity  # 总价 = 单价 × 数量

print(f"商品单价：{price}元")
print(f"购买数量：{quantity}个")  
print(f"总计：{total}元")
```

---


!!! note
    **总结：** 变量就是带名字的存储空间，可以随时存放和取出数据，让程序能够灵活地处理和计算信息。

## 作业:


一些适合初学者的练习题，涵盖变量和基本运算符`（+、-、*、/）`。

## **Python基础练习题（变量与基本运算）**

#### 第一部分：基础计算题（直接计算）
1. 编写程序计算：15加上28，然后打印结果
2. 编写程序计算：100减去57，然后打印结果  
3. 编写程序计算：12乘以13，然后打印结果
4. 编写程序计算：144除以12，然后打印结果
5. 编写程序计算：(20 + 15) * 2 - 10 / 2

```python
print(15 + 28)
print(100 - 57)
print(12 * 13)
print(144 / 12)
print((20 + 15) * 2 - 10 / 2)
```


#### 第二部分：变量应用题
6. 创建一个变量`width`存储数字10，变量`height`存储数字5，计算并打印长方形的面积
    ```python
    width = 10
    height = 5
    print(width * height)
    ```
7. 创建一个变量`price`存储商品价格（例如68.5），变量`quantity`存储购买数量（例如3），计算总价并打印
    ```python
    price = 68.5
    quantity = 10
    print(price * quantity)
    ```
8. 创建变量`celsius`存储摄氏温度（例如25），将其转换为华氏温度（公式：F = C × 9/5 + 32）
    ```python
    celsius = 30
    F = celsius * 9 / 5 + 32
    print(F)
    ```
9. 创建变量`seconds`存储一个时间值（例如4000秒），将其转换为小时、分钟和秒（例如：4000秒=1小时6分40秒）
    ```python
    seconds = 4000
    h = seconds // 60 // 60
    m = seconds // 60 % 60
    s = seconds %60
    print(h,m,s)
    ```

> 说明：

- `//` 表示整除，只保留整数部分，比如 `7 // 3 = 2`
- `%` 表示取余数，比如 `7 % 3 = 1`

> 为什么可以这样转换？

- 1小时=60分钟=3600秒，1分钟=60秒。
- 用 `//` 计算有多少个“整小时”或“整分钟”，用 `%` 计算剩下的“秒数”。
- 比如：4000秒，先用 `4000 // 3600` 得到1小时，`4000 % 3600 = 400`，再用 `400 // 60` 得到6分钟，`400 % 60 = 40` 得到40秒。
- 代码里 `h = seconds // 60 // 60`，其实等价于 `seconds // 3600`，只是写法不同。



#### 第三部分：综合应用题
10. 计算一个三位数（例如358）的各位数字之和（提示：使用整除//和取余%）
    ```python
    num = 358
    hundreds = num // 100      # 百位数：3
    tens = (num // 10) % 10    # 十位数：5  
    ones = num % 10            # 个位数：8
    sum_digits = hundreds + tens + ones
    print(f"{num}的各位数字之和为：{sum_digits}")
    ```
11. 假设你有100元，苹果单价5.5元，橘子单价3.2元，买3个苹果和4个橘子后，计算剩余多少钱
    ```python
    total_money = 100
    apple_price = 5.5
    orange_price = 3.2
    apple_quantity = 3
    orange_quantity = 4

    cost = apple_price * apple_quantity + orange_price * orange_quantity
    remaining = total_money - cost
    print(f"购买{apple_quantity}个苹果和{orange_quantity}个橘子后，剩余{remaining:.2f}元")
    ```
12. 计算一个圆的面积（半径r=7，π取3.14，公式：面积=π×r²）
    ```python
    r = 7
    pi = 3.14
    area = pi * r * r  # 或者 area = pi * r**2
    print(f"半径为{r}的圆的面积为：{area}")
    ```
13. 交换两个变量的值（例如a=5, b=10，交换后a=10, b=5）
    ```python
    # 方法1：使用临时变量
    a = 5
    b = 10
    temp = a
    a = b
    b = temp
    print(f"交换后：a={a}, b={b}")
    ```

    ```python
    # 方法2：Python特有的简洁写法
    a = 5
    b = 10
    a, b = b, a
    print(f"交换后：a={a}, b={b}")
    ```

---

### **附加挑战题（可选）**
14. 计算两点(x1,y1)和(x2,y2)之间的距离（例如：(3,4)和(6,8)）
15. 计算一元二次方程 ax²+bx+c=0 的根（设定a=1, b=-5, c=6）