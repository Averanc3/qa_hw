import psycopg2


conn = psycopg2.connect(dbname='qa_ddl_25_16',
                        user='user_25_16',
                        password='123',
                        host='159.69.151.133',
                        port='5056')

cur = conn.cursor()

cur.execute('CREATE TABLE public.salary (id serial PRIMARY KEY, monthly_salary int not null);')

numb = 1000
while numb < 2501:
    cur.execute("""INSERT INTO public.salary (monthly_salary) VALUES (%s);""", [numb])
    numb += 100

cur.execute('SELECT * FROM public.salary;')
cur.fetchall()

conn.commit()

cur.close()
conn.close()