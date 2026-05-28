# 变量：带名字的箱子

## 学习目标

学完这一课，你应该能够：

1. 理解变量的作用。
2. 会创建变量，并使用变量参与计算。
3. 知道变量必须先赋值，再使用。
4. 掌握基本的变量命名规则。

## 什么是变量

变量可以理解成一个“带名字的箱子”。

这个箱子可以做三件事：

- 放入数据，这叫“赋值”。
- 取出数据，这叫“使用变量”。
- 换成新的数据，这叫“重新赋值”。

例如：

```python
age = 18
print(age)
```

这段代码的意思是：创建一个叫 `age` 的变量，把数字 `18` 放进去，然后打印出来。

## 编程中的变量和数学中的变量

数学里的等号通常表示“相等”。

```text
x = 2
```

这表示 `x` 的值就是 `2`。

但在 Python 中，`=` 表示“赋值”，意思是“把右边的值放到左边的变量里”。

```python
x = 2
x = x + 2
print(x)
```

第二行的意思不是“`x` 等于 `x + 2`”，而是：

1. 先取出 `x` 现在的值，也就是 `2`。
2. 计算 `2 + 2`，得到 `4`。
3. 再把 `4` 放回 `x` 里面。

最后输出：

```text
4
```

## 创建变量并赋值

```python
myint = 7
print(myint)
```

这里创建了变量 `myint`，并把数字 `7` 放进去。

变量也可以参与计算：

```python
one = 1
two = 2
three = one + two

print(three)
```

输出：

```text
3
```

## 变量必须先创建，再使用

下面这段代码会报错：

```python
one = 1
two = 2
print(three)

three = one + two
print(three)
```

原因是：执行 `print(three)` 时，变量 `three` 还没有被创建。

Python 会提示：

```text
NameError: name 'three' is not defined
```

这就像你想打开一个还没有准备好的箱子，当然会出错。

正确写法是：

```python
one = 1
two = 2
three = one + two
print(three)
```

## 修改变量的值

变量里的内容可以改变。

```python
age = 18
print(age)

age = age + 1
print(age)
```

第一次输出 `18`，第二次输出 `19`。

## 变量命名规则

变量名需要遵守规则：

- 可以包含字母、数字和下划线 `_`。
- 不能以数字开头。
- 不能使用 Python 关键字，例如 `if`、`for`。
- 名字最好有意义，让别人一看就知道它表示什么。

好的命名：

```python
student_age = 18
total_price = 100
user_name = "小明"
```

不好的命名：

```python
a = 18
1st = "小明"
if = 5
```

`a` 虽然能用，但意思不清楚。`1st` 和 `if` 在 Python 中不能作为变量名。

## 实际例子：计算购物总价

```python
price = 25.5
quantity = 3
total = price * quantity

print(f"商品单价：{price}元")
print(f"购买数量：{quantity}个")
print(f"总计：{total}元")
```

这里的变量含义很清楚：

- `price` 表示单价。
- `quantity` 表示数量。
- `total` 表示总价。

## 本课小结

!!! note
    变量就是带名字的存储空间。它可以存放数据，也可以被程序取出来使用。

请特别记住：

- `=` 在 Python 中表示赋值。
- 变量必须先赋值，再使用。
- 变量名要尽量写得清楚。

## 练习题

### 第一部分：基础计算

请编写程序，计算并打印下面的结果：

1. `15 + 28`
2. `100 - 57`
3. `12 * 13`
4. `144 / 12`
5. `(20 + 15) * 2 - 10 / 2`

参考代码：

```python
print(15 + 28)
print(100 - 57)
print(12 * 13)
print(144 / 12)
print((20 + 15) * 2 - 10 / 2)
```

### 第二部分：变量应用

1. 创建变量 `width` 存储数字 `10`，变量 `height` 存储数字 `5`，计算并打印长方形面积。

    ```python
    width = 10
    height = 5
    print(width * height)
    ```

2. 创建变量 `price` 存储商品价格，变量 `quantity` 存储购买数量，计算总价并打印。

    ```python
    price = 68.5
    quantity = 10
    print(price * quantity)
    ```

3. 创建变量 `celsius` 存储摄氏温度，将它转换为华氏温度。

    公式：`F = C * 9 / 5 + 32`

    ```python
    celsius = 30
    F = celsius * 9 / 5 + 32
    print(F)
    ```

4. 创建变量 `seconds` 存储秒数，例如 `4000`，把它转换成“小时、分钟、秒”。

    ```python
    seconds = 4000
    h = seconds // 3600
    m = seconds // 60 % 60
    s = seconds % 60
    print(h, m, s)
    ```

说明：

- `//` 表示整除，只保留整数部分，例如 `7 // 3 = 2`。
- `%` 表示取余数，例如 `7 % 3 = 1`。

### 第三部分：综合练习

1. 计算一个三位数各位数字之和，例如 `358` 的结果是 `3 + 5 + 8 = 16`。

    ```python
    num = 358
    hundreds = num // 100
    tens = (num // 10) % 10
    ones = num % 10
    sum_digits = hundreds + tens + ones
    print(f"{num}的各位数字之和为：{sum_digits}")
    ```

2. 假设你有 100 元，苹果单价 5.5 元，橘子单价 3.2 元。买 3 个苹果和 4 个橘子后，计算还剩多少钱。

    ```python
    total_money = 100
    apple_price = 5.5
    orange_price = 3.2
    apple_quantity = 3
    orange_quantity = 4

    cost = apple_price * apple_quantity + orange_price * orange_quantity
    remaining = total_money - cost
    print(f"购买后剩余{remaining:.2f}元")
    ```

3. 计算半径为 `7` 的圆的面积，`pi` 取 `3.14`。

    ```python
    r = 7
    pi = 3.14
    area = pi * r * r
    print(f"半径为{r}的圆的面积为：{area}")
    ```

4. 交换两个变量的值。

    ```python
    a = 5
    b = 10

    temp = a
    a = b
    b = temp

    print(f"交换后：a={a}, b={b}")
    ```

    Python 还支持更简洁的写法：

    ```python
    a = 5
    b = 10
    a, b = b, a
    print(f"交换后：a={a}, b={b}")
    ```
