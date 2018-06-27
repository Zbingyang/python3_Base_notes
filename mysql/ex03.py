import pymysql

def get_conn():
    conn=pymysql.connect(
            host='localhost',
            user='root',
            passwd='123456',
            db='My',
            charset='utf8',
            autocommit=False,
            cursorclass=pymysql.cursors.DictCursor)
    return conn
def get_table():
    conn=get_conn()
    try:
        with conn.cursor() as cursor:
            cursor.execute('drop database if exists My')
            cursor.execute('create database My default charset utf8')
            cursor.execute('use My')
            cursor.execute('create table tb_address(id int not null primary key,name varchar(20) not null,tel varchar(20) not null)')
            conn.commit()
            print('创建成功！')
    except Exception as e:
        print('有错误',str(e))
        conn.rollback()
    finally:
        conn.close()
    print('1\t 返回')
    if 1 == int(input('请输入')):
        show()

def get_select(table):
    conn = get_conn()
    try:
        with conn.cursor() as cursor:
            sql = 'select * from tb_address'
            cursor.execute(sql)
            if cursor.rowcount == 0:
                print('你还没有联系人，请添加！')
            for _ in range(cursor.rowcount):
                result = cursor.fetchone()
                print(result)
    except Exception as e:
        print('有错误',str(e))
    finally:
        conn.close()

def get_insert(iid,name,tel):
    conn=get_conn()
    try:
        with conn.cursor() as cursor:
            result=cursor.execute('insert into tb_address(id,name,tel) \
                            values(%s,%s,%s)',(iid,name,tel))
            if result == 1:
                print('成功')
            conn.commit()
    except Exception as e:
        print('有错误',str(e))
        conn.rollback()
    finally:
        conn.close()
    print('1\t 继续\n 2\t 返回')
    number = int(input('请输入怒的操作！'))
    if number == 1:
        iid = int(input('请输入id！'))
        name = input('请输入联系人姓名！')
        tel = input('请输入练习人的号码！')
        get_insert(iid,name,tel)
    if number == 2:
        show()

def get_update(iid,name,tel):
    conn=get_conn()
    try:
        with conn.cursor() as cursor:
            result=cursor.execute('update tb_address set name=(%s),tel=(%s) where id=(%s)',(name,tel,iid))
            if result == 1:
                print('删除成功')
        conn.commit()
    except Exception as e:
        print('有错误',str(e))
        conn.rollback()
    finally:
        conn.close()

def get_delete(name):
    conn=get_conn()
    try:
        with conn.cursor() as cursor:
            result=cursor.execute('delete from tb_address where name=(%s),name')
            if result == 1:
                print('成功')
    except Exception as e:
        print('有错误',str(e))
    finally:
        conn.close()
    print('1 \t 继续 \n 2 \t 返回')
    if 1 == int(input('请输入你的操作')):
        name = input('请输入要删除的练习人的名字')
        get_delete(name)
    if 2 == int(input('请输入你的操作')):
        show()
def show():
    with open('hello.txt', 'r', encoding='utf8') as ff:
        print(ff.read())
    if 1 == int(input('>>>')):
        get_table()
    elif 2 == int(input('>>>')):
        get_select(table='tb_address')
    elif 3 == int(input('>>>')):
        iid = int(input('请输入id！'))
        name = input('请输入联系人姓名！')
        tel = input('请输入练习人的号码！')
        get_insert(iid,name,tel)
    elif 4 == int(input('>>>')):
        name = input('请输入你要删除的联系人！')
        get_delete(name)
    elif 5 == int(input('>>>')):
        iid = int(input('请输入你要更新的id'))
        name = input('请输入你的名字！')
        tel = input('请输入你电话！')
        get_update(iid,name,tel)
    elif 6 == int(input('请输入你的操作！')):
        flag = False
    else:
        print('输入错误！')

def main():
    flag = True
    while True:
        show()

if __name__ == '__main__':
    main()



