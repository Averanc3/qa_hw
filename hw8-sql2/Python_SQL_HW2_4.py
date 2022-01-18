import psycopg2


conn = psycopg2.connect(dbname='qa_ddl_25_16',
                        user='user_25_16',
                        password='123',
                        host='159.69.151.133',
                        port='5056')

cur = conn.cursor()

cur.execute('CREATE TABLE public.roles (id serial PRIMARY KEY, role_name int not null unique);')
cur.execute('ALTER TABLE public.roles ALTER COLUMN role_name TYPE varchar')

rls = ['Junior Python developer',
         'Middle Python developer',
         'Senior Python developer',
         'Junior Java developer',
         'Middle Java developer',
         'Senior Java developer',
         'Junior JavaScript developer',
         'Middle JavaScript developer',
         'Senior JavaScript developer',
         'Junior Manual QA engineer',
         'Middle Manual QA engineer',
         'Senior Manual QA engineer',
         'Project Manager',
         'Designer',
         'HR',
         'CEO',
         'Sales manager',
         'Junior Automation QA engineer',
         'Middle Automation QA engineer',
         'Senior Automation QA engineer']

for i in range(len(rls)):
    cur.execute("""INSERT INTO public.roles (role_name) VALUES (%s)""", (rls[i], ))

cur.execute('SELECT * FROM public.roles;')
cur.fetchall()

conn.commit()

cur.close()
conn.close()
