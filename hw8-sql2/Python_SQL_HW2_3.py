import random

import psycopg2


conn = psycopg2.connect(dbname='qa_ddl_25_16',
                        user='user_25_16',
                        password='123',
                        host='159.69.151.133',
                        port='5056')

cur = conn.cursor()

cur.execute('CREATE TABLE public.employee_salary '
            '(id serial PRIMARY KEY, employee_id int not null unique, salary_id int not null);')

dl = []
bl = []
cl = []
hl = []

i = 1
while i < 41:
    d = random.randint(1,70)
    b = random.randint(1,16)
    c = random.randint(71, 200)

    print('hello')
    if d in dl or c in cl:
        continue
    if i in range(31):
        i += 1
        cur.execute("""INSERT INTO public.employee_salary (employee_id, salary_id) VALUES (%s, %s)""", [d, b])
        print('hello inside')
    else:
        print('hello endin')
        i += 1
        cur.execute("""INSERT INTO public.employee_salary (employee_id, salary_id) VALUES (%s, %s)""", [c, b])
    dl.append(d)
    cl.append(c)


cur.execute('SELECT * FROM public.employee_salary;')
cur.fetchall()

conn.commit()

cur.close()
conn.close()

