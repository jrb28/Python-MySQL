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
query = 'SELECT * FROM item ORDER BY id ASC;'
cursor.execute(query)

''' Retrieve results '''
results = cursor.fetchall()

''' Close cursor '''
cursor.close()
cnx.close()

''' Inspect results '''
print(results)
print(f'Type of (outer) data: {type(results)}')
print(f'Type of (inner) data: {type(results[0])}')