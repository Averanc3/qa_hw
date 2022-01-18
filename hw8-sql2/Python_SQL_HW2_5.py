import random

import psycopg2

conn = psycopg2.connect(dbname='qa_ddl_25_16',
                        user='user_25_16',
                        password='123',
                        host='159.69.151.133',
                        port='5056')

cur = conn.cursor()

cur.execute('CREATE TABLE public.roles_employee '
            '(id serial PRIMARY KEY, employee_id int not null unique, role_id int not null,'
            'FOREIGN KEY (employee_id) REFERENCES public.employees (id),'
            'FOREIGN KEY (role_id) REFERENCES public.roles (id));')

randemp = []
i = 0
while i < 40:
    re = random.randint(1, 40)
    print(re)
    if re in randemp:
        continue

    cur.execute("""INSERT INTO public.roles_employee (employee_id, role_id) VALUES (%s, %s)""",
                [re, random.randint(1, 20)])
    randemp.append(re)
    i += 1

cur.execute('SELECT * FROM public.roles_employee;')
cur.fetchall()

conn.commit()

cur.close()
conn.close()
