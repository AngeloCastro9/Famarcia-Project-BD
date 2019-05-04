import mysql.connector

cnx = mysql.connector.connect(user='root', password='An323131',
                              host='127.0.0.1',
                              database='sicapharma')

cursor = cnx.cursor()
print("Segunda Consulta: ")
cursor.execute("SELECT medico.nome, medico.especialidade, medicamento.nome, c.endereco, pre.quantidade FROM Medico as medico, Medicamento as medicamento, Cliente as c, prescricao_has_Medicamento as pre WHERE c.endereco IN ('Fortaleza', 'Itapipoca')")
results = cursor
for row in results:
  print (row)
cursor.close()
cnx.close()