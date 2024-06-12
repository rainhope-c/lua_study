-- 学新东西是很有意思的 来看一下今天要学习的内容

-- 循环 这个循环的逻辑是没什么新意的 来看一下一个循环的语法
-- while循环 for...do...循环 repeat...until循环这三种
-- 循环控制语句有break和goto break表示跳出当前循环 goto表示讲程序的控制点转移到一个标签处
-- while(true)
-- do
    -- print("无限循环")
-- end
-- 我觉得就是要注意一下boolean类型把0判断成true就行了



-- 函数 
-- 照理说函数是重头戏
-- lua函数主要有两种用途 一是完成指定任务 而是计算并返回值
-- lua可以有多个返回值 之间用逗号隔开 感觉这点很棒
-- lua中函数定义格式为
-- optional_function_scope function function_name( argument1, argument2, argument3..., argumentn)
--     function_body
--     return result_params_comma_separated
-- end
-- 我觉得需要注意的就是最后的那个end 不过编译器自动添加也挺好的
function max(num1,num2)
    if(num1>num2)   then
        result=num1
    else
        result=num2
    end

    return result
end
print("10和9相比比较大的是",max(10,9))

-- lua中还可以把函数作为参数传递给另一个函数（有点嵌套的感觉？很好奇递归会怎么写）
myprint = function(param)  -- 这是定义函数的另一种方法
    print("我自己定义的打印函数 -  ##",param,"##")
end
function add(num1,num2,functionRrint)
    result =num1+num2
    functionRrint(result)
end
myprint(10)
add(2,5,myprint)

-- lua函数可以有多个返回值 比如string.find函数 返回匹配串开始到结束的下标（找不到就返回nil）
s,e=string.find("Hello World","or");
print(s,e)
-- 在自己定义函数时只要return后面列出多个返回值然后逗号隔开就行了

-- 可变参数
-- lua函数可以接受可变数目的参数 在函数参数列表中使用三个点...表示函数的可变参数
function add(...)
    local s=0
    for i,v in ipairs{...} do  -- 这个{...}表示一个由所有变长参数构成的数组
        s=s+v
    end
    return s
end
print(add(3,4,5,6,7))
-- 可以通过select("#",...)来获取可变参数的数量
function average(...)
    result=0;
    local arg={...}
    for i,v in ipairs(arg) do
        result =result+v;
    end
    return result/select("#",...)
end
print("平均值",average(10,5,3,4,2,4))
-- 当我们需要同时传入固定参数和可变参数时，固定参数一定要在可变参数前面 这个是比较容易理解的
-- select(n, …) 用于返回从起点 n 开始到结束位置的所有参数列表。
function f(...)
    local a,b,c=select(3,...)  -- 从第三个位置开始，变量a对应右边变量列表的第一个参数
    print(a,b,c)
    print(select(2,...))  -->打印从第二个位置开始的全部
end
f("a","b","c")