ORG 100h

LEA BX, sayilar ; sayilar dizisinin baslangic adresiniBX registerina atadik   

MOV AL, 5 ; kacinci indise ulasmak istiyorsak onu AL register icine atiyoruz dizi indisi 0 dan baslar


XLATB ; AL = 7h

RET

sayilar db 5h,6h,7h,8h   
sayilar2 db 0Ch, 0Dh, 3 dup(0Fh)