ASSEMBLER
: EXIT IPOP NXT ;
: (lit) CRX PHX NXT ;
: (slit) CRX TXY TIX PHX PHY ADD TYX TXI NXT ;
: (dodoes) CRX PHX CRX TXI NXT ;
: DUP SPX PHX NXT ;
: SWAP PLX PLY PHX PHY NXT ;
: ROT PLX PLY PLZ PHY PHX PHZ NXT ;
: -ROT PLX PLY PLZ PHX PHZ PHY NXT ;
: OVER PLY SPX PHY PHX NXT ;
: PICK PLY TYX ADD TSX SUB RYY PHY NXT ;
: DROP PLX NXT ;
: 2DROP PLX PLX NXT ;
: 2DUP PLY SPX PHY PHX PHY NXT ;
: 2SWAP PLX PLY PLZ RPHZ PLZ PHY PHX PHZ RPLZ PHZ NXT ;
: 2OVER PLZ RPHZ PLZ PLY SPX PHY PHZ RPLZ PHZ PHX PHY NXT ;
: NIP PLX PSX NXT ;
: TUCK PLX PLY PHX PHY PHX NXT ;
: ?DUP SPX XJMP 1 0 NXT PHX NXT ;
: >R PLX RPHX NXT ;
: R> RPLX PHX NXT ;
: R@ RPX PHX NXT ;
: ! PLY PLX WYX NXT ;
: C! PLY PLX CWYX NXT ;
: @ SPX RXX PSX NXT ;
: C@ SPX CRXX PSX NXT ;
: AND PLY SPX AND PSX NXT ;
: OR PLY SPX OR PSX NXT ;
: XOR PLY SPX XOR PSX NXT ;
: INVERT SPX NOT PSX NXT ;
: (branch) CRX TXI NXT ;
: (0branch) PLY CRX YJMP 1 0 TXI NXT ;
: ROLL PLY TYZ INCZ TYX ADD TSX SUB RXY PHX PLX TYX INCY INCY RYY WXY INCX INCX TXY DECZ ZJMP -11 -1 NXT ;
: + PLY PLX ADD PHY NXT ;
: - PLY PLX SUB PHY NXT ;
: +! PLY TYZ RYY PLX ADD TZX WXY NXT ;
: * PLY PLX MUL PHY NXT ;
: U< PLY SPX SUB PSX NXT ;
: U> PLX PLY SUB PHX NXT ;
: M* PLY PLX SMUL PHY PHX NXT ;
: UM* PLY PLX MUL PHY PHX NXT ;
: 0= SPX XJMP 3 0 NOT PSX NXT ENTX 0 0 PSX NXT ;
: 0<> SPX XJMP 1 0 NXT ENTX -1 -1 PSX NXT ;
: 0< PLY SIGN PHX NXT ;
: 0> PLY YJMP 2 0 PHY NXT SIGN NOT PHX NXT ;
: <> PLY SPX SUB YJMP 2 0 PSX NXT ENTX -1 -1 PSX NXT ;
: = PLY SPX SUB YJMP 5 0 ENTX -1 -1 PSX NXT ENTX 0 0 PSX NXT ;
: EMPTYR ENTX 0 3 TXR NXT ;
: EMPTYS ENTX 0 2 TXS NXT ;
: DEPTH TSX ENTY 0 2 SUB TYX ENTY 1 0 ASH PHX NXT ;
: 2* ENTY 1 0 SPX LSH PSX NXT ;
: 2/ ENTY 1 0 SPX ASH PSX NXT ;
: RSHIFT PLY SPX RSH PSX NXT ;
: LSHIFT PLY SPX LSH PSX NXT ;
: 2>R PLY PLX RPHX RPHY NXT ;
: 2R> RPLY RPLX PHX PHY NXT ;
: 2R@ RPLY RPX RPHY PHX PHY NXT ;
: 1+ SPX INCX PSX NXT ;
: 1- SPX DECX PSX NXT ;
: EXECUTE PLX TXP ;
: */MOD PLZ PLY PLX SMUL SDIV PHZ PHY NXT ;
: */ PLZ PLY PLX SMUL SDIV PHY NXT ;
: /MOD PLZ PLY SIGN SDIV PHZ PHY NXT ;
: / PLZ PLY SIGN SDIV PHY NXT ;
: MOD PLZ PLY SIGN SDIV PHZ NXT ;
: UM/MOD PLZ PLX PLY DIV PHZ PHY NXT ;
: FM/MOD PLZ PLX PLY SDIV PHZ PHY NXT ;
: O+ PLY PLX ADD PHY PHX NXT ;
: UDM/MOD PLZ PLX PLY DIV PHZ PHY PHX NXT ;
: < PLY SIGN TYZ PLY PHY XOR TXY SIGN NOT XJMP 4 0 PLY SIGN PHX NXT PLX TZY SUB PHX NXT ;
: > PLX PLY PHX SIGN TYZ PLY PHY XOR TXY SIGN NOT XJMP 4 0 PLY SIGN PHX NXT PLX TZY SUB PHX NXT ;
: NEGATE SPX NOT INCX PSX NXT ;
: (do) CRX RPHX PLY PLZ RPHZ RPHY NXT ;
: (?do) CRX RPHX PLY PLX RPHX RPHY SUB YJMP 4 0 RPLY RPLY RPLX TXI NXT ;
: I RPX PHX NXT ;
: J RPLZ RPLY PHY RPLY RPX RPHY PLY RPHY RPHZ PHX NXT ;
: UNLOOP RPLY RPLY RPLY NXT ;
: (loop) RPLY INCY RPX RPHY SUB CRX YJMP 4 0 RPLY RPLY RPLY NXT TXI NXT ;
: (+loop) RPLY TYZ PLX ADD RPX DECX RPHY TZY TXZ SUB SIGN PHX TZX RPLY RPHY SUB SIGN PLY XOR TXY CRX YJMP 2 0 TXI NXT RPLY RPLY RPLY NXT ;
: WAIT BRK NXT ;
: LEAVE RPLX RPLX RPLX TXI NXT ;
: RECEIVE-AT PLZ PLY SPX RCV PSX NXT ;
: DELETE-MSG PLY PLX DMSG NXT ;
: SET-CHANNEL PLY PLX CHAN NXT ;
: SEND PLY PLX SEND NXT ;

: FW 0x60 PHX NXT ;
: BW 0x61 PHX NXT ;
: UP 0x62 PHX NXT ;
: DN 0x63 PHX NXT ;
: TL 0x64 NXT ;
: TR 0x65 NXT ;

: DT PLX 0x68 PHX NXT ;
: DT-UP PLX 0x69 PHX NXT ;
: DT-DN PLX 0x6a PHX NXT ;
: DIG 0x70 PHX NXT ;
: DIG-UP 0x71 PHX NXT ;
: DIG-DN 0x72 PHX NXT ;
: PLACE PLX 0x74 PHX NXT ;
: PLACE-UP PLX 0x75 PHX NXT ;
: PLACE-DN PLX 0x76 PHX NXT ;

: REFUEL PLY PLX 0x80 PHX NXT ;

ENVIRONMENT
256 CONSTANT /COUNTED-STRING
34 CONSTANT /HOLD
84 CONSTANT /PAD
8 CONSTANT ADRESS-UNIT-BITS
-1 CONSTANT CORE
-1 CONSTANT CORE-EXT
-1 CONSTANT FLOORED
255 CONSTANT MAX-CHAR
32767 CONSTANT MAX-N
-1 CONSTANT MAX-U
128 CONSTANT RETURN-STACK-CELLS
128 CONSTANT STACK-CELLS
0xffffffff 2CONSTANT MAX-UD
0x7fffffff 2CONSTANT MAX-D
-1 CONSTANT SEARCH-ORDER
-1 CONSTANT SEARCH-ORDER-EXT
8 CONSTANT WORDLISTS

FORTH
32 CONSTANT BL
0 CONSTANT FALSE
-1 CONSTANT TRUE
0x100 CONSTANT (source)
0x104 CONSTANT >IN
0x106 CONSTANT SOURCE-ID
0x108 CONSTANT BASE
0x10a CONSTANT STATE
0x10c CONSTANT LATEST
0x110 CONSTANT SPAN
0x112 CONSTANT (here)
0x114 CONSTANT LT
0x116 CONSTANT #TIB
0x118 CONSTANT TIB
0x1a0 CONSTANT 'NUMBER
0x1a2 CONSTANT NEW-WORDLIST
0x1a4 CONSTANT CW
0x1a6 CONSTANT NWORDER
0x1b0 CONSTANT WORDLISTS
0x1b0 CONSTANT FORTH-WORDLIST
0x1b2 CONSTANT ENVDICO
0x1d0 CONSTANT WORDER

: CHARS ; IMMEDIATE
: ALIGN ; IMMEDIATE
: ALIGNED ; IMMEDIATE
: CELL+ 2 + ;
: CELL- 2 - ;
: CHAR+ 1+ ;
: CELLS 2* ;
: EMIT S" screen" SET-CHANNEL 2 ! 2 1 SEND ;
: RECEIVE 0x80 RECEIVE-AT ;
: 2! SWAP OVER ! CELL+ ! ;
: 2@ DUP CELL+ @ SWAP @ ;
: SOURCE (source) 2@ ;
: S>D DUP 0< ;
: MAX 2DUP > IF DROP ELSE NIP THEN ;
: MIN 2DUP > IF NIP ELSE DROP THEN ;
: D+ ROT + -ROT O+ ROT + ;
: HEX 16 BASE ! ;
: DECIMAL 10 BASE ! ;
: TUCK SWAP OVER ;
: NIP SWAP DROP ;
: ABS DUP 0< IF NEGATE THEN ;
: (marker) LATEST ! (here) ! ;
: TYPE DUP 0> IF OVER + SWAP ?DO I C@ EMIT LOOP ELSE 2DROP THEN ;
: RSTR 1+ DUP 2 + C@ 127 AND TUCK - SWAP ;
: CR 10 EMIT ;
: SPACE 32 EMIT ;
: SPACES DUP 0> IF 0 DO SPACE LOOP ELSE DROP THEN ;
: STR= 0 DO OVER C@ OVER C@ <> IF UNLOOP 2DROP FALSE EXIT THEN SWAP 1+ SWAP 1+ LOOP 2DROP TRUE ;
: IMMEDIATE LATEST @ 1- DUP C@ 128 OR SWAP C! ;
: HERE (here) @ ;
: [ FALSE STATE ! ; IMMEDIATE
: ] TRUE STATE ! ;
: ALLOT (here) +! ;
: , HERE ! 2 ALLOT ;
: C, HERE C! 1 ALLOT ;
: SKIP-WHITE BEGIN DUP C@ 33 < WHILE 1+ 2DUP = IF EXIT THEN REPEAT ;
: EXIT-IF-END SOURCE NIP >IN @ = IF SOURCE + 0 R> DROP THEN ;
: PARSE-LIMITS SOURCE OVER + SWAP >IN @ + ;
: >IN-END SOURCE NIP >IN ! ;
: COUNTED-STRING DUP HERE C! HERE 1+ -ROT OVER + SWAP DO I C@ OVER C! 1+ LOOP DROP HERE ;
: PARSE-WORD EXIT-IF-END PARSE-LIMITS SKIP-WHITE 2DUP = IF >IN-END DROP 0 EXIT THEN DUP >R BEGIN DUP C@ 32 > WHILE 1+ 2DUP = IF >IN-END DROP R@ - R> SWAP EXIT THEN REPEAT NIP DUP SOURCE DROP - 1+ >IN ! R@ - R> SWAP ;
: PARSE SOURCE NIP >IN @ = IF DROP SOURCE + 0 EXIT THEN PARSE-LIMITS DUP >R ROT >R BEGIN DUP C@ R@ <> WHILE 1+ 2DUP = IF R> DROP >IN-END DROP R@ - R> SWAP EXIT THEN REPEAT R> DROP NIP DUP SOURCE DROP - 1+ >IN ! R@ - R> SWAP ;

\ TODO: Fix WORD not skipping leading delimiters
: WORD SOURCE NIP >IN @ = IF DROP 0 HERE C! HERE EXIT THEN PARSE-LIMITS DUP >R ROT >R BEGIN DUP C@ R@ <> WHILE 1+ 2DUP = IF R> DROP >IN-END DROP R@ - R> SWAP EXIT THEN REPEAT R> DROP NIP DUP SOURCE DROP - 1+ >IN ! R@ - R> SWAP COUNTED-STRING ;

: HEADER PARSE-WORD TUCK 0 C, OVER + SWAP DO I C@ C, LOOP LATEST @ , C, ;
: : HEADER HERE DUP LT ! 42 C, ] ;
: :CODE HEADER HERE DUP LT ! ;
: UNUSED HERE NEGATE ;
: NCHAR DUP C@ DUP 58 < IF 48 - ELSE DUP 97 < IF 55 - ELSE 87 - THEN THEN ;
: >NUMBER DUP >R 0 DO NCHAR DUP BASE @ < OVER 0< INVERT AND IF 2SWAP BASE @ * 0 SWAP ROT BASE @ UM* D+ ROT 0 D+ ROT 1+ ELSE DROP I UNLOOP R> SWAP - EXIT THEN LOOP R> DROP 0 ;
:NONAME 0 0 2SWAP OVER C@ 45 = IF SWAP 1+ SWAP 1- >NUMBER 2SWAP DROP NEGATE 1 2SWAP ELSE >NUMBER ROT DROP 1 -ROT THEN ; 'NUMBER !
: NUMBER 'NUMBER @ EXECUTE ;
: SAVE-INPUT >IN @ 1 ;
: RESTORE-INPUT DUP 1 = IF DROP >IN ! FALSE ELSE 0 ?DO DROP LOOP TRUE THEN ;
: COUNT DUP 1+ SWAP C@ ;
: CHAR PARSE-WORD DROP C@ ;
: FILL -ROT DUP 0> IF OVER + SWAP DO DUP I C! LOOP ELSE 2DROP THEN DROP ;
: ERASE 0 FILL ;
: ( 41 PARSE 2DROP ; IMMEDIATE
: .( 41 PARSE TYPE ; IMMEDIATE
: \ 10 PARSE 2DROP ; IMMEDIATE
: THEN HERE SWAP ! ; IMMEDIATE
: BEGIN HERE ; IMMEDIATE
: FIND-WORD-DICO SWAP >R BEGIN DUP 4 - RSTR R@ = IF 2 PICK R@ STR= IF NIP R> DROP EXIT THEN ELSE DROP THEN 3 - @ DUP 0= UNTIL NIP R> DROP ;
: GET-WL-LATEST DUP CW @ = IF DROP LATEST @ ELSE @ THEN ;
: FIND-WORD WORDER NWORDER @ 2* + WORDER DO I @ GET-WL-LATEST FIND-WORD-DICO ?DUP IF UNLOOP EXIT THEN 2 +LOOP 0 ;
: ' PARSE-WORD FIND-WORD ;
: POSTPONE ' DUP 1- C@ 128 AND IF , ELSE ['] (lit) , , ['] , , THEN ; IMMEDIATE
: LITERAL ['] (lit) , , ; IMMEDIATE
: NLITERAL DUP >R 0 DO ['] (lit) , 0 , LOOP R> 0 DO HERE 2 - I 4 * - ! LOOP ; IMMEDIATE
: DOES> ['] (dodoes) LATEST @ 1+ ! R> LATEST @ 5 + ! ;
: ['] ' POSTPONE LITERAL ; IMMEDIATE
: [COMPILE] ' , ; IMMEDIATE
: ; ['] EXIT , LATEST ! POSTPONE [ ; IMMEDIATE
: CODE; 41 C, LATEST ! ;
: [CHAR] CHAR POSTPONE LITERAL ; IMMEDIATE
: CREATE HEADER HERE LATEST ! 42 C, HERE 6 + POSTPONE LITERAL ['] EXIT , ;
: VARIABLE CREATE 2 ALLOT ;
: CONSTANT HEADER HERE LATEST ! 77 C, , 33 C, 41 C, ;
: MARKER HERE HEADER HERE SWAP 42 C, POSTPONE LITERAL LATEST @ POSTPONE LITERAL ['] (marker) , ['] EXIT , LATEST ! ;
: IF ['] (0branch) , HERE 0 , ; IMMEDIATE
: ELSE ['] (branch) , HERE SWAP 0 , HERE SWAP ! ; IMMEDIATE
: UNTIL ['] (0branch) , , ; IMMEDIATE
: REPEAT ['] (branch) , , HERE SWAP ! ; IMMEDIATE
: WHILE ['] (0branch) , HERE SWAP 0 , ; IMMEDIATE
: CASE 0 ; IMMEDIATE
: ENDCASE ['] DROP , BEGIN DUP 0<> WHILE HERE SWAP ! REPEAT DROP ; IMMEDIATE
: OF ['] OVER , ['] = , ['] (0branch) , HERE 0 , ['] DROP , ; IMMEDIATE
: ENDOF ['] (branch) , HERE 0 , HERE ROT ! ; IMMEDIATE
\ : S" 34 PARSE ['] (branch) , HERE 0 , -ROT 2DUP OVER + SWAP ?DO I C@ C, LOOP NIP SWAP DUP HERE SWAP ! 2 + POSTPONE LITERAL POSTPONE LITERAL ; IMMEDIATE
: SLITERAL ['] (slit) , DUP , OVER + SWAP ?DO I C@ C, LOOP ; IMMEDIATE
: S" 34 PARSE POSTPONE SLITERAL ; IMMEDIATE
: PAD HERE 36 + ;
: VALUE HEADER HERE LATEST ! 77 C, , 33 C, 41 C, ;
: TO PARSE-WORD FIND-WORD 1+ STATE @ IF POSTPONE LITERAL ['] ! , ELSE ! THEN ; IMMEDIATE
: COMPILE, , ;
: AGAIN ['] (branch) , , ; IMMEDIATE
: ABORT EMPTYS QUIT ;
: COMPILE-WORD 2DUP 2>R FIND-WORD ?DUP IF 2R> 2DROP DUP 1- C@ 128 AND IF EXECUTE ELSE , THEN ELSE 2R@ NUMBER 0= IF DROP 2R> 2DROP POSTPONE NLITERAL ELSE DROP 0 ?DO DROP LOOP 2R> TYPE SPACE 63 EMIT ABORT THEN THEN ;
: COUNT DUP 1+ SWAP C@ ;
: RECURSE LT @ , ; IMMEDIATE
: :NONAME HERE DUP LT ! 42 C, LATEST @ ] ;
: >BODY 7 + ;
: ENVIRONMENT? ENVDICO @ FIND-WORD-DICO DUP IF EXECUTE TRUE THEN ;
: D0= OR 0= ;
: HOLD HERE @ 1- DUP HERE ! C! ;
: # BASE @ UDM/MOD ROT DUP 9 > IF 55 + ELSE 48 + THEN HOLD ;
: #S BEGIN # 2DUP D0= UNTIL ;
: ." POSTPONE S" ['] TYPE , ; IMMEDIATE
: C" 34 PARSE ['] (branch) , HERE 0 , -ROT HERE -ROT DUP C, OVER + SWAP ?DO I C@ C, LOOP SWAP HERE SWAP ! POSTPONE LITERAL ; IMMEDIATE
: <# PAD HERE ! ;
: #> 2DROP HERE @ PAD OVER - ;
: SIGN 0< IF 45 HOLD THEN ;
: CONVERT -1 >NUMBER DROP ;
: MOVE DUP 0= IF DROP 2DROP EXIT THEN -ROT 2DUP U> IF ROT 0 DO OVER C@ OVER C! 1+ SWAP 1+ SWAP LOOP ELSE 2 PICK TUCK + -ROT + SWAP ROT 0 DO 1- SWAP 1- SWAP OVER C@ OVER C! LOOP THEN 2DROP ;
: . DUP >R ABS 0 <# BL HOLD #S R> SIGN #> TYPE ;
: U. 0 <# BL HOLD #S #> TYPE ;
: .R >R DUP >R ABS 0 <# BL HOLD #S R> SIGN #> R> OVER - SPACES TYPE ;
: U.R >R 0 <# BL HOLD #S #> R> OVER - SPACES TYPE ;
: WITHIN OVER - >R - R> U< ;
: DO ['] (do) , HERE 0 , HERE ; IMMEDIATE
: ?DO ['] (?do) , HERE 0 , HERE ; IMMEDIATE
: LOOP ['] (loop) , , HERE SWAP ! ; IMMEDIATE
: +LOOP ['] (+loop) , , HERE SWAP ! ; IMMEDIATE
: ACCEPT S" screen" DELETE-MSG BEGIN S" screen" 16 RECEIVE-AT DUP 0< WHILE DROP WAIT REPEAT MIN TUCK 16 -ROT MOVE ;
: EXPECT ACCEPT SPAN ! ;
: QUERY 0 >IN ! 0 SOURCE-ID ! TIB DUP 80 ACCEPT SPACE (source) 2! ;
: REFILL SOURCE-ID @ IF FALSE ELSE 0 >IN ! TIB DUP 80 ACCEPT SPACE (source) 2! TRUE THEN ;
: INTERPRET-WORD 2DUP 2>R FIND-WORD ?DUP IF 2R> 2DROP EXECUTE ELSE 2R@ NUMBER 0= IF 2DROP 2R> 2DROP ELSE DROP 0 ?DO DROP LOOP 2R> TYPE SPACE 63 EMIT ABORT THEN THEN ;
: EVALUATE SOURCE 2>R >IN @ >R SOURCE-ID @ >R -1 SOURCE-ID ! 0 >IN ! (source) 2! BEGIN PARSE-WORD ?DUP WHILE STATE @ IF COMPILE-WORD ELSE INTERPRET-WORD THEN REPEAT DROP R> SOURCE-ID ! R> >IN ! 2R> (source) 2! ;
: QUIT EMPTYR CR BEGIN REFILL WHILE BEGIN PARSE-WORD ?DUP WHILE STATE @ IF COMPILE-WORD ELSE INTERPRET-WORD THEN REPEAT DROP SPACE 79 EMIT 75 EMIT CR REPEAT ;
: (abort") ROT IF TYPE ABORT THEN 2DROP ;
: ABORT" POSTPONE S" ['] (abort") , ; IMMEDIATE
: DABS DUP 0< IF OVER NEGATE ROT IF SWAP INVERT ELSE SWAP NEGATE THEN THEN ;
: SM/REM OVER >R 2DUP XOR >R ABS >R DABS R> UM/MOD R> 0< IF NEGATE THEN SWAP R> 0< IF NEGATE THEN SWAP ;
\ : KEY BEGIN RAWKEY DUP 31 > OVER 127 < AND IF EXIT THEN DROP AGAIN ;
: ON SET-CHANNEL S" on" SEND ;
: OFF SET-CHANNEL S" off" SEND ;
: IO@ RECEIVE 3 < ;
: LOADPKG 0 0x11e C! PARSE-WORD 0x11a 2! BEGIN 0x11a 2@ SET-CHANNEL 0x11e 1 SEND 0x11e C@ 1+ 0x11e C! 0x11a 2@ 16 RECEIVE-AT 16 C@ WHILE 16 SWAP EVALUATE REPEAT DROP ;
: GET-CURRENT CW @ ;
: SET-CURRENT LATEST @ CW @ ! DUP CW ! @ LATEST ! ;
: WORDLIST NEW-WORDLIST @ DUP CELL+ NEW-WORDLIST ! ;
: DEFINITIONS WORDER @ SET-CURRENT ;
: GET-ORDER WORDER NWORDER @ 1- 2* + ?DO I @ -2 +LOOP NWORDER @ ;
: SET-ORDER DUP NWORDER ! WORDER 0 ?DO TUCK ! CELL+ LOOP DROP ;
: ALSO WORDER DUP CELL+ NWORDER @ 2* MOVE NWORDER 2 +! ;
: FORTH FORTH-WORDLIST WORDER ! ;
: ONLY FORTH 1 NWORDER ! ;
: ORDER WORDER NWORDER @ 2* + WORDER DO I @ . 2 +LOOP CR CW @ ;
: PREVIOUS WORDER CELL+ WORDER NWORDER @ 1- 2* MOVE NWORDER -2 +! ;
: SEARCH-WORDLIST GET-WL-LATEST FIND-WORD-DICO DUP IF DUP 1- C@ 128 AND IF 1 ELSE -1 THEN THEN ;
: FIND DUP COUNT WORDER NWORDER @ 2* + WORDER DO 2DUP I @ SEARCH-WORDLIST ?DUP IF 2>R 2DROP DROP 2R> UNLOOP EXIT THEN 2 +LOOP 2DROP 0 ;
: DUMP SET-CHANNEL 256 0 DO I 64 * PAD 1+ 64 MOVE I PAD C! PAD 65 SEND LOOP ;
: SAVE-STATE S" boot" DUMP ;
: COLD S" Computer is ready (" TYPE UNUSED U. S" bytes free)" TYPE QUIT ;
