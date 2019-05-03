import mysql.connector

cnx = mysql.connector.connect(user='root', password='An323131',
                              host='127.0.0.1',
                              database='sicapharma')

cursor = cnx.cursor()
print("Primeira Consulta: ")
cursor.execute("SELECT c.cpf, c.rg, c.endereco, p.quantidade, m.nome FROM cliente as c, p as prescricao_has_Medicamento, m.medico WHERE p.quantidade > p.quantidade", multi=True)
results = cursor
for row in results:
  print (row[0], "|", row[1], "|", row[2], "|", row[3])
cursor.close()
cnx.close()