
def vocales(a):
    count=0
    for i in a:
        if i=="a" or i=="e" or i=="i" or i=="o" or i=="u":
            count += 1
    print(vocales("hoy es viernes y mañana sabado"))
    return count



def edad():
    a=int(input("introduce tu año de nacimiento"))
    edad=2020-a
    return edad
