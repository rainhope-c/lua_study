-- ѧ�¶����Ǻ�����˼�� ����һ�½���Ҫѧϰ������

-- ѭ�� ���ѭ�����߼���ûʲô����� ����һ��һ��ѭ�����﷨
-- whileѭ�� for...do...ѭ�� repeat...untilѭ��������
-- ѭ�����������break��goto break��ʾ������ǰѭ�� goto��ʾ������Ŀ��Ƶ�ת�Ƶ�һ����ǩ��
-- while(true)
-- do
    -- print("����ѭ��")
-- end
-- �Ҿ��þ���Ҫע��һ��boolean���Ͱ�0�жϳ�true������



-- ���� 
-- ����˵��������ͷϷ
-- lua������Ҫ��������; һ�����ָ������ ���Ǽ��㲢����ֵ
-- lua�����ж������ֵ ֮���ö��Ÿ��� �о����ܰ�
-- lua�к��������ʽΪ
-- optional_function_scope function function_name( argument1, argument2, argument3..., argumentn)
--     function_body
--     return result_params_comma_separated
-- end
-- �Ҿ�����Ҫע��ľ��������Ǹ�end �����������Զ����Ҳͦ�õ�
function max(num1,num2)
    if(num1>num2)   then
        result=num1
    else
        result=num2
    end

    return result
end
print("10��9��ȱȽϴ����",max(10,9))

-- lua�л����԰Ѻ�����Ϊ�������ݸ���һ���������е�Ƕ�׵ĸо����ܺ���ݹ����ôд��
myprint = function(param)  -- ���Ƕ��庯������һ�ַ���
    print("���Լ�����Ĵ�ӡ���� -  ##",param,"##")
end
function add(num1,num2,functionRrint)
    result =num1+num2
    functionRrint(result)
end
myprint(10)
add(2,5,myprint)

-- lua���������ж������ֵ ����string.find���� ����ƥ�䴮��ʼ���������±꣨�Ҳ����ͷ���nil��
s,e=string.find("Hello World","or");
print(s,e)
-- ���Լ����庯��ʱֻҪreturn�����г��������ֵȻ�󶺺Ÿ���������

-- �ɱ����
-- lua�������Խ��ܿɱ���Ŀ�Ĳ��� �ں��������б���ʹ��������...��ʾ�����Ŀɱ����
function add(...)
    local s=0
    for i,v in ipairs{...} do  -- ���{...}��ʾһ�������б䳤�������ɵ�����
        s=s+v
    end
    return s
end
print(add(3,4,5,6,7))
-- ����ͨ��select("#",...)����ȡ�ɱ����������
function average(...)
    result=0;
    local arg={...}
    for i,v in ipairs(arg) do
        result =result+v;
    end
    return result/select("#",...)
end
print("ƽ��ֵ",average(10,5,3,4,2,4))
-- ��������Ҫͬʱ����̶������Ϳɱ����ʱ���̶�����һ��Ҫ�ڿɱ����ǰ�� ����ǱȽ���������
-- select(n, ��) ���ڷ��ش���� n ��ʼ������λ�õ����в����б�
function f(...)
    local a,b,c=select(3,...)  -- �ӵ�����λ�ÿ�ʼ������a��Ӧ�ұ߱����б�ĵ�һ������
    print(a,b,c)
    print(select(2,...))  -->��ӡ�ӵڶ���λ�ÿ�ʼ��ȫ��
end
f("a","b","c")