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
elif c == "-":
    print(a-b)
elif c == "/":
    print(a/b)
elif c == "*":
    print(a*b)
```