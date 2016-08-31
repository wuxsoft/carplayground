# Car Playground

## 直接得到示例结果

```rb
2.3.1 :001 > car = Carmove.new
2.3.1 :002 > car.run
Test Input:
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
Expected Output:
1 3 N
5 1 E
```

## 手动调用

```rb
2.3.1 :001 > car = Car.new
2.3.1 :002 > car.setposition '5 5'
2.3.1 :003 > car.setposition "1 2 E"
2.3.1 :004 > car.setposition "LMLMDDLMLMM"
2.3.1 :005 > car.setposition "3 3 N"
2.3.1 :006 > car.setposition "MMRMMRMRSLM"
2.3.1 :007 > car.run
Expected Output:
指令D错误
指令D错误
2 2 E
指令S错误
5 3 S
```
