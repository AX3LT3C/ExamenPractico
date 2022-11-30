name=str(input("Digite su nombre: "));
pan=int(input("Digite la cantidad de pantalones a llevar: "));

print("EL TOTAL DE PANTALONES QUE LLEVO SON: ",pan);

totalpa=pan*160.50;
print("EL TOTAL A PAGAR SON: ", totalpa);

if(pan>7):
    tot=totalpa*0.10;
    print("SE LE DESCONTO Q",tot);
elif(pan>10):
    tota=totalpa*0.25;
    print("SE LE DESCONTO Q",tota);
elif(totalpa>700):
    desc=totalpa*0.5;
    print("SE LE DESCONTO Q",desc);
else:
    print("NO TIENE NINGUN DESCUENTO PERO SE COBRARA SU COMPRA");