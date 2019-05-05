import mysql.connector

cnx = mysql.connector.connect(user='root', password='root',
                              host='127.0.0.1',
                              database='sicapharma')

cursor = cnx.cursor()
print("Terceira Consulta: ")
cursor.execute("select count(Contrato.idContrato), Contrato.valor, Supervisor.cpf, historico.is_ativo from Contrato, Supervisor, historico WHERE historico.is_ativo = 1 group by Contrato.idContrato, Contrato.valor, Supervisor.cpf ")
results = cursor
for row in results:
    print (row)
cursor.close()
cnx.close()