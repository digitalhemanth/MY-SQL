import pandas as pd
import numpy as np
import psycopg2
import psycopg2.extras as extras

data = pd.read_csv('departments.csv')
print(data)

def execute_values(conn, df, table):  
    tuples = [tuple(x) for x in df.to_numpy()]  
    cols = ','.join(list(df.columns))
    # SQL query to execute
    query = "INSERT INTO %s(%s) VALUES %%s" % (table, cols)
    cursor = conn.cursor()
    try:
        extras.execute_values(cursor, query, tuples)
        conn.commit()
    except (Exception, psycopg2.DatabaseError) as error:
        print("Error: %s" % error)
        conn.rollback()
        cursor.close()
        return 1
    print("the dataframe is inserted")
    cursor.close()  
  
conn = psycopg2.connect(user="postgres",
                                  password="python",
                                  host="127.0.0.1",
                                  port="5432",
                                  database="test")
print(conn,"\n connected to database")
execute_values(conn, data, 'pytest.departments')
