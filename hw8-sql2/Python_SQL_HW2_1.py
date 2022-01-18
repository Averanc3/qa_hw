import psycopg2
import names

conn = psycopg2.connect(dbname='qa_ddl_25_16',
                        user='user_25_16',
                        password='123',
                        host='159.69.151.133',
                        port='5056')

cur = conn.cursor()

# cur.execute('CREATE TABLE public.employees (id serial PRIMARY KEY, employee_name varchar not null);')

cur.execute('select * from public.employees;')
employee_names = []
for i in range(70):
    employee_names.append(names.get_first_name())

for i in range(len(employee_names)):
    name = str(employee_names[i])
    cur.execute("""INSERT INTO public.employees (employee_name) VALUES (%s);""", (name, ))

cur.execute('SELECT * FROM public.employees')
cur.fetchall()

conn.commit()

cur.close()
conn.close()
