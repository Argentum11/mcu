# mcu
|instruction|description|save to||signal|
|---|---|---|---|---|
|Literal Operations||||number = kkkk kkkk|
|MOVLW|move a number to w|||11 0000 kkkk kkkk|
|ADDLW|do add operations between another number and w, then save it to w|||11 1110 kkkk kkkk|
|IORLW|do OR operations between another number and w, then save it to w|||11 1000 kkkk kkkk|
|ANDLW|do AND operations between another number and w, then save it to w|||11 1001 kkkk kkkk|
|SUBLW|do minus operations between another number and w, then save it to w|||11 1100 kkkk kkkk|
|XORLW|do XOR operations between another number and w, then save it to w|||11 1010 kkkk kkkk|
|||d=ir_out[7]|
|ADDLW|w + fff_ffff (register file address 0x00~0x7f)|d==0|w|00 0111 dfff ffff|
|||d==1|register||
|ANDWF|w & fff_ffff|d==0|w|00 0101 dfff ffff|
|||d==1|register||
|CLRF|clear fff_ffff to 0|register||00 0001 1fff ffff|
|CLRW|clear w to 0|w||00 0001 0000 00xx (x:Don't care)|
|COMF|not fff_ffff|d==0|w|00 1001 dfff ffff|
|||d==1|register||
|DECF|fff_ffff - 1|d==0|w|00 0011 dfff ffff|
|||d==1|register||
|GOTO| PC_out = ir_out[10:0]|||10 1fff ffff ffff|
|---|---|
|INCF|fff_ffff + 1|d==0|w|00 1010 dfff ffff|
|||d==1|register||
|IORWF|w \| fff_ffff|d==0|w|00 0100 dfff ffff|
|||d==1|register||
|MOVF|move fff_ffff to|d==0|w|00 1000 dfff ffff|
|||d==1|register||
|SUBWF| fff_ffff - w | d==0 | w | 00 0010 dfff ffff |
|||d==1|register||
|XORWF| fff_ffff ^ w | d==0 | w | 00 0110 dfff ffff |
|||d==1|register||
|||addr_port_b = ir_out[6:0]==7'h0d|||
|MOVWF| move w to | addr_port_b == 0 | register | 00 0000 1fff ffff |
||| addr_port_b == 1 | port_b | |
|---|---|
|BCF||
|BSF||
|BTFSC||
|BTFSS||
|DECFSZ||
|INCFSZ||
|---|---|
|ASRF| remain sign bit and right shift| d==0 | w |  11 0111 dfff ffff |
|| =>{ mux1_out[7],mux1_out[7:1] }|d==1|register||
|LSLF||
|LSRF||
|RLF||
|RRF||
|SWAP||
|---|---|
|CALL||
|RETURN||
|---|---|
|BRA||
|BRW||
|NOP||
