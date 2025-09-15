## 课程目标

1. 理解多条件判断的应用场景
2. 掌握`if-elif-else`的层级关系
3. 能够处理三选一以上的条件分支

## 多条件决策结构

想象一个成绩评级系统：
- 90分以上显示"A"
- 80-89分显示"B"
- 70-79分显示"C"
- 其他情况显示"需要努力"

```python
score = int(input("输入分数（0-100）"))
if score >= 90:
    print("A")
elif score >= 80:
    print("B")
elif score >= 70:
    print("C")
else:
    print("需要努力")