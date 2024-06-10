-- 初见
-- lua里每个语句最后的  ";""  是可以省略的
print("Hello World")
--[[然后多行注释
是这么写的]]--
-- 这里我们也能发现这个lua的print是默认独占一行的 这点与C不同

-- 数据类型
print("**********数据类型**********")
-- lua是动态数据类型语言 变量不需要定义只需要赋值 初始状态下任何变量的默认数据类型都是nil
-- 想要删除某个变量也只需要把这个变量赋值为nil
-- lua中的数据类型包括 nil number string boolean function userdata thread table
-- 在lua中 默认情况下变量总是全局变量


-- 我们可以通过type函数获取一个变量的数据类型(注意返回值实质上是一个string)
-- nil是空(null)
a=nil
print(a)


-- number  所有的数值都是number 实质是双精度的实浮点数
b=1.2
print(b)


-- string lua中字符串的声明可以用单引号也可以用双引号
c="123"
print(c)
d='1234'
print(d)
-- 也可以用"[[]]"来表示一块字符串
test=[[这是用双方括号括住的内容]]
print(test)
-- 在对一个数字字符串进行算术操作的时候 lua会试图把这个数字字符串转化为一个数字
-- 我觉得这个还蛮神奇的 甚至能处理-2e2=-200这种
print("\"2\"+6等于")
print("2"+6)
-- 这个加号的使用也注定lua中字符串不能用+连接 实际上是使用两个点 ..
print("连".."接")
-- 可以非常快捷的在一个string前添加一个"#"来计算其长度
print(#"长度是多少呢")


-- boolean 就是布尔型，真和假
-- 注意lua把fasle和nil看做false 其余的全部看做true(包括0!)
e=true
print(e)
if 0 then
    print("数字0是trur")
else
    print("数字0是false")
end


-- table表 这所谓的表实际上的关联数组，数组的索引可以是数字或者字符串
local tbl1={}  -- 创建一个空表
local tbl2={"apple","pear","orange","grape"}  -- 直接初始化一个表

a={}  -- 空表
a["key"]='value'  -- "key"->"value"
key=10
a[key]=22
a[key]=a[key] + 11  --10->33
for k,v in pairs(a) do  --老实说我也不太理解这个for循环 总之是遍历输出
    print(k.." : "..v)
end
-- lua的表还有一个神奇的地方是默认索引从1开始而不是从零开始
-- table不会固定长度大小 会自动增长


-- function 函数 lua中的函数有很多奇妙的性质 比如函数被看作是"第一类值" 可以存在变量里
function factorial1(n)
    if n==0 then
        return 1
    else
        return n* factorial1(n-1)
    end
end
print(factorial1(5))
factorial2=factorial1
print(factorial2(5))
-- 发现这里输出的两行都是120 也就是说函数1可以直接赋值给函数2
-- 此外 funtion 还可以以匿名函数的方式通过参数传递
function testFun(tab,fun)
    for k,v in pairs(tab) do
        print(fun(k,v))
    end
end
tab={key1="val1",key2="val2"}  -- 相当于书tab[key1]="val1" tab[key2]="val2"
testFun(tab,
function (key,val)  -- 匿名函数(老实说我没看太懂
    return key.."="..val;
end
);

-- thread 线程
-- userdata 自定义类型