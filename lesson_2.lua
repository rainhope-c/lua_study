-- 第二天！（实际上现在已经是第三天了）
-- 首先来学习一下lua里的变量

-- Lua有三种变量类型：全局变量、局部变量和表中的域
-- 默认所有变量都是全局变量 哪怕实在语句块或者函数里 
-- 想要得到局部变量必须用local显示声明
-- 变量的默认值是nil

a =5
local b=4

function joke()
    c=5
    local d=5
end

joke()
print (c,d)
-- 这里体现出这个print是默认产生缩进的

do
    local a = 6   
    b = 6      
    print(a,b)
end

print(a,b)

-- 赋值
-- lua可是同时对多个变量赋值
a,b=10,2*3
print(a,b)  -->发现结果是10 6

-- 遇到赋值语句lua会先计算右边所有的值然后再执行赋值操作(也就是隐含了一个temp临时变量)
x=1
y=2
x,y=y,x
print(x,y)  -->实现swap(x,y)
-- 变量个数>值的个数->多余补nil
-- 变量个数<值的个数->多余值忽略

-- 索引
-- 对table的索引可以使用[]或者.两种形式
-- t[i]->t.i-?gettable_event(t,i)  实质是这样的一个调用函数

site={}  -- 设立空表
site["key"]="value"
print(site["key"])
print(site.key)