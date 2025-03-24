org 100h

mov cx, 5

mov ah,02h  ;IMLEC KESMESI START
mov dh, 11h ;row
mov dl,22h ;column
mov bh,0
int 10h; KESME


don:

    push cx
        mov ah, 00h
        
       int 16h
        ;klavyeden veri al
        
        
        MOV AH,0Ah    ; imleckarakter yazma

        MOV BH,0         ;AL de karakter görünecek

        MOV CX,2      ; karakteri 1 kez yazsin

       int 10h
       
        MOV AH,03h  ; imlecpozisyonokuma

       int 10h      ; DL de sutundegeri var
       
       
        add dl,2
        
        
        int 10h
        
        
    pop cx

loop don

ret




