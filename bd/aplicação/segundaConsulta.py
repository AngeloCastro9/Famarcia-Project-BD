import mysql.connector

cnx = mysql.connector.connect(user='root', password='An323131',
                              host='127.0.0.1',
                              database='sicapharma')

cursor = cnx.cursor()
print("Segunda Consulta: ")
cursor.execute("SELECT medico.nome, medico.especialidade, medicamento.nome, c.endereco, pre.quantidade FROM medico as medico, medicamento as medicamento, c as cliente pre as prescricao_has_cliente WHERE c.endereco = 'Fortaleza' && 'Itapipoca0', ", multi=True)
results = cursor
for row in results:
  print (row[0], "|", row[1], "|", row[2], "|", row[3])
cursor.close()
cnx.close()