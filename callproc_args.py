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
cursor.callproc('spGetItemsCat', ('book',))

''' Retrieve results by iterating through the stored_results() '''
results = []
for result in cursor.stored_results():
    results.append(result.fetchall())

''' Close cursor '''
cursor.close()
cnx.close()

''' Inspect results '''
print(results)