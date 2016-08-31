# Car Playground

## 运行环境
```
>ruby -v
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin15]
```
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
2.3.1 :002 > car.position= '5 5'
2.3.1 :003 > car.position= "1 2 E"
2.3.1 :004 > car.position= "LMLMDDLMLMM"
2.3.1 :005 > car.position= "3 3 N"
2.3.1 :006 > car.position= "MMRMMRMRSLM"
2.3.1 :007 > car.run
Expected Output:
指令D错误
指令D错误
2 2 E
指令S错误
5 3 S
```

## 测试
### 需要用到gem
```
sudo gem install test-unit
```
### 运行测试代码
```rb
ruby testsuite.rb
Loaded suite Unnamed TestSuite
Started
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
Expected Output:
1 3 N
5 1 E
Finished in 0.000836 seconds.
----------------------------------------------------------------------------------------------------------------------------------------------------
1 tests, 6 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
----------------------------------------------------------------------------------------------------------------------------------------------------
1196.17 tests/s, 7177.03 assertions/s
```
