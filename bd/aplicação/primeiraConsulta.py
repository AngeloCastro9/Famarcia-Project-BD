import mysql.connector

cnx = mysql.connector.connect(user='root', password='root',
                              host='127.0.0.1',
                              database='sicapharma')

cursor = cnx.cursor()
print("Primeira Consulta: ")
cursor.execute("SELECT c.cpf, c.endereco, p.quantidade, m.nome FROM Cliente as c, prescricao_has_Medicamento as p, Medico as m")
results = cursor
for row in results:
    print (row)
cursor.close()
cnx.close()