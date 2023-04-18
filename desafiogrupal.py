import random
#primera parte:
equipost= int(input("Ingrese la cantidad de equipos (debe ser un múltiplo de 4): "))
if (equipost%4)!=0:
    equipost= int(input("DEBE SER MULTIPLOS DE 4 "))
else:
    print(f"El numero de equipos que tienes son {equipost}")


#segunda parte:
carrera1=input("Ingrese el nombre de una primera carrera:  ")
carrerra2=input("ingrese el nombre de una segunda carrera:  ")
carrera3=input("INgrese el nombre de una tercera carrera:   ")
carrera4=input("Ingrese el nombre de una cuarta carrera:    ")
direcciones = ['carrera1','carrera2','carrera3','carrera4']

#desarollo de equipos
equipos=[f'Equipo{i}'for i in range(1,equipost+1)]
random.shuffle(equipos)

print("EL numnero de equipos participantes son:  ")
for i, equipo in enumerate(equipos):
    print(f"{i + 1}.{equipo}")


opcion = int(input("Ingrese el número de un equipo para ver sus partidos: "))
while opcion in range(1, equipost + 1):
    opcion = int(input("\nEl número ingresado no está en la lista. Ingrese otro número: "))

equipo_escogido = equipos[opcion - 1]

partidos = []
for i in range(0, equipost, 2):
    partido = (equipos[i], equipos[i+1])
    partidos.append(partido)

print('\nResultados de los partidos: ')
for partido in partidos:
    resultado = random.choice(partido)
    print(f'{partido[0]} vs {partido[1]}: {resultado} gana')

ganadores = []
for partido in partidos:
    resultado = random.choice(partido)
    ganadores.append(resultado)

semifinales = []
for i in range(0, len(ganadores), 2):
    semifinal = (ganadores[i], ganadores[i+1])
    semifinales.append(semifinal)

print('\nResultados de las semifinales: ')
for semifinal in semifinales:
    resultado = random.choice(semifinal)
    print(f'{semifinal[0]} vs {semifinal[1]}: {resultado} gana')

final = random.choice(semifinales)
print('\nResultado de la final: ')
print(f'{final[0]} vs {final[1]}: {direcciones[3]} gana')

if equipo_escogido in final:
    print(f'\n¡{equipo_escogido} llegó a la final!')
elif equipo_escogido in ganadores:
    print(f'\n{equipo_escogido} ganó en las semifinales')
elif equipo_escogido in equipos:
    print(f'\n{equipo_escogido} perdió en las semifinales')