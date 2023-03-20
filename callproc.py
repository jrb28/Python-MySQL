# -*- coding: utf-8 -*-

''' Import MySQL connector '''
import mysql.connector as mysql

''' Set parameters for DB connection '''
db_user = 'root'
db_pwd = 'codio'
db_host = '127.0.0.1'
db_name = 'sales'

''' Create connection with MySQL '''
cnx = mysql.connect(user=db_user, passwd=db_pwd,
                    host=db_host, db=db_name)                              

''' Create cursor to receive data '''
cursor = cnx.cursor()

''' Request results from DB with SELECT query '''
cursor.callproc('spGetAllItems')

''' Retrieve results by iterating through the stored_results() '''
results = []
for result in cursor.stored_results():
    results.append(result.fetchall())

''' Close cursor '''
cursor.close()

''' Inspect results '''
print(results)
print(f'Number of results: {len(results)}')
for i,result in enumerate(results):
  print(f'Type of (outer) data result {i}: {type(result)}')
  print(f'Type of (inner) data result {i}: {type(result[0])}')