-- ����
-- lua��ÿ���������  ";""  �ǿ���ʡ�Ե�
print("Hello World")
--[[Ȼ�����ע��
����ôд��]]--
-- ��������Ҳ�ܷ������lua��print��Ĭ�϶�ռһ�е� �����C��ͬ

-- ��������
print("**********��������**********")
-- lua�Ƕ�̬������������ ��������Ҫ����ֻ��Ҫ��ֵ ��ʼ״̬���κα�����Ĭ���������Ͷ���nil
-- ��Ҫɾ��ĳ������Ҳֻ��Ҫ�����������ֵΪnil
-- lua�е��������Ͱ��� nil number string boolean function userdata thread table
-- ��lua�� Ĭ������±�������ȫ�ֱ���


-- ���ǿ���ͨ��type������ȡһ����������������(ע�ⷵ��ֵʵ������һ��string)
-- nil�ǿ�(null)
a=nil
print(a)


-- number  ���е���ֵ����number ʵ����˫���ȵ�ʵ������
b=1.2
print(b)


-- string lua���ַ��������������õ�����Ҳ������˫����
c="123"
print(c)
d='1234'
print(d)
-- Ҳ������"[[]]"����ʾһ���ַ���
test=[[������˫��������ס������]]
print(test)
-- �ڶ�һ�������ַ�����������������ʱ�� lua����ͼ����������ַ���ת��Ϊһ������
-- �Ҿ��������������� �����ܴ���-2e2=-200����
print("\"2\"+6����")
print("2"+6)
-- ����Ӻŵ�ʹ��Ҳע��lua���ַ���������+���� ʵ������ʹ�������� ..
print("��".."��")
-- ���Էǳ���ݵ���һ��stringǰ���һ��"#"�������䳤��
print(#"�����Ƕ�����")


-- boolean ���ǲ����ͣ���ͼ�
-- ע��lua��fasle��nil����false �����ȫ������true(����0!)
e=true
print(e)
if 0 then
    print("����0��trur")
else
    print("����0��false")
end


-- table�� ����ν�ı�ʵ���ϵĹ������飬������������������ֻ����ַ���
local tbl1={}  -- ����һ���ձ�
local tbl2={"apple","pear","orange","grape"}  -- ֱ�ӳ�ʼ��һ����

a={}  -- �ձ�
a["key"]='value'  -- "key"->"value"
key=10
a[key]=22
a[key]=a[key] + 11  --10->33
for k,v in pairs(a) do  --��ʵ˵��Ҳ��̫������forѭ�� ��֮�Ǳ������
    print(k.." : "..v)
end
-- lua�ı���һ������ĵط���Ĭ��������1��ʼ�����Ǵ��㿪ʼ
-- table����̶����ȴ�С ���Զ�����


-- function ���� lua�еĺ����кܶ���������� ���纯����������"��һ��ֵ" ���Դ��ڱ�����
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
-- ����������������ж���120 Ҳ����˵����1����ֱ�Ӹ�ֵ������2
-- ���� funtion �����������������ķ�ʽͨ����������
function testFun(tab,fun)
    for k,v in pairs(tab) do
        print(fun(k,v))
    end
end
tab={key1="val1",key2="val2"}  -- �൱����tab[key1]="val1" tab[key2]="val2"
testFun(tab,
function (key,val)  -- ��������(��ʵ˵��û��̫��
    return key.."="..val;
end
);

-- thread �߳�
-- userdata �Զ�������