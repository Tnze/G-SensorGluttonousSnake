                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.7.0 #10231 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module SquareEdition
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _snake_to_LED
                                     13 	.globl _step
                                     14 	.globl _moveSnake
                                     15 	.globl _setFood
                                     16 	.globl _nextCell
                                     17 	.globl _reset
                                     18 	.globl _printLEDs
                                     19 	.globl _Init_Max7219
                                     20 	.globl _Write_Max7219
                                     21 	.globl _Write_Max7219_byte
                                     22 	.globl _Delay_xms
                                     23 	.globl _TF2
                                     24 	.globl _EXF2
                                     25 	.globl _RCLK
                                     26 	.globl _TCLK
                                     27 	.globl _EXEN2
                                     28 	.globl _TR2
                                     29 	.globl _C_T2
                                     30 	.globl _CP_RL2
                                     31 	.globl _T2CON_7
                                     32 	.globl _T2CON_6
                                     33 	.globl _T2CON_5
                                     34 	.globl _T2CON_4
                                     35 	.globl _T2CON_3
                                     36 	.globl _T2CON_2
                                     37 	.globl _T2CON_1
                                     38 	.globl _T2CON_0
                                     39 	.globl _PT2
                                     40 	.globl _ET2
                                     41 	.globl _CY
                                     42 	.globl _AC
                                     43 	.globl _F0
                                     44 	.globl _RS1
                                     45 	.globl _RS0
                                     46 	.globl _OV
                                     47 	.globl _F1
                                     48 	.globl _P
                                     49 	.globl _PS
                                     50 	.globl _PT1
                                     51 	.globl _PX1
                                     52 	.globl _PT0
                                     53 	.globl _PX0
                                     54 	.globl _RD
                                     55 	.globl _WR
                                     56 	.globl _T1
                                     57 	.globl _T0
                                     58 	.globl _INT1
                                     59 	.globl _INT0
                                     60 	.globl _TXD
                                     61 	.globl _RXD
                                     62 	.globl _P3_7
                                     63 	.globl _P3_6
                                     64 	.globl _P3_5
                                     65 	.globl _P3_4
                                     66 	.globl _P3_3
                                     67 	.globl _P3_2
                                     68 	.globl _P3_1
                                     69 	.globl _P3_0
                                     70 	.globl _EA
                                     71 	.globl _ES
                                     72 	.globl _ET1
                                     73 	.globl _EX1
                                     74 	.globl _ET0
                                     75 	.globl _EX0
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _SM0
                                     85 	.globl _SM1
                                     86 	.globl _SM2
                                     87 	.globl _REN
                                     88 	.globl _TB8
                                     89 	.globl _RB8
                                     90 	.globl _TI
                                     91 	.globl _RI
                                     92 	.globl _P1_7
                                     93 	.globl _P1_6
                                     94 	.globl _P1_5
                                     95 	.globl _P1_4
                                     96 	.globl _P1_3
                                     97 	.globl _P1_2
                                     98 	.globl _P1_1
                                     99 	.globl _P1_0
                                    100 	.globl _TF1
                                    101 	.globl _TR1
                                    102 	.globl _TF0
                                    103 	.globl _TR0
                                    104 	.globl _IE1
                                    105 	.globl _IT1
                                    106 	.globl _IE0
                                    107 	.globl _IT0
                                    108 	.globl _P0_7
                                    109 	.globl _P0_6
                                    110 	.globl _P0_5
                                    111 	.globl _P0_4
                                    112 	.globl _P0_3
                                    113 	.globl _P0_2
                                    114 	.globl _P0_1
                                    115 	.globl _P0_0
                                    116 	.globl _TH2
                                    117 	.globl _TL2
                                    118 	.globl _RCAP2H
                                    119 	.globl _RCAP2L
                                    120 	.globl _T2CON
                                    121 	.globl _B
                                    122 	.globl _ACC
                                    123 	.globl _PSW
                                    124 	.globl _IP
                                    125 	.globl _P3
                                    126 	.globl _IE
                                    127 	.globl _P2
                                    128 	.globl _SBUF
                                    129 	.globl _SCON
                                    130 	.globl _P1
                                    131 	.globl _TH1
                                    132 	.globl _TH0
                                    133 	.globl _TL1
                                    134 	.globl _TL0
                                    135 	.globl _TMOD
                                    136 	.globl _TCON
                                    137 	.globl _PCON
                                    138 	.globl _DPH
                                    139 	.globl _DPL
                                    140 	.globl _SP
                                    141 	.globl _P0
                                    142 	.globl _food
                                    143 	.globl _snake_len
                                    144 	.globl _snake
                                    145 	.globl _leds
                                    146 	.globl _Write_Max7219_PARM_2
                                    147 ;--------------------------------------------------------
                                    148 ; special function registers
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0	=	0x0080
                           000081   153 _SP	=	0x0081
                           000082   154 _DPL	=	0x0082
                           000083   155 _DPH	=	0x0083
                           000087   156 _PCON	=	0x0087
                           000088   157 _TCON	=	0x0088
                           000089   158 _TMOD	=	0x0089
                           00008A   159 _TL0	=	0x008a
                           00008B   160 _TL1	=	0x008b
                           00008C   161 _TH0	=	0x008c
                           00008D   162 _TH1	=	0x008d
                           000090   163 _P1	=	0x0090
                           000098   164 _SCON	=	0x0098
                           000099   165 _SBUF	=	0x0099
                           0000A0   166 _P2	=	0x00a0
                           0000A8   167 _IE	=	0x00a8
                           0000B0   168 _P3	=	0x00b0
                           0000B8   169 _IP	=	0x00b8
                           0000D0   170 _PSW	=	0x00d0
                           0000E0   171 _ACC	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                           0000C8   173 _T2CON	=	0x00c8
                           0000CA   174 _RCAP2L	=	0x00ca
                           0000CB   175 _RCAP2H	=	0x00cb
                           0000CC   176 _TL2	=	0x00cc
                           0000CD   177 _TH2	=	0x00cd
                                    178 ;--------------------------------------------------------
                                    179 ; special function bits
                                    180 ;--------------------------------------------------------
                                    181 	.area RSEG    (ABS,DATA)
      000000                        182 	.org 0x0000
                           000080   183 _P0_0	=	0x0080
                           000081   184 _P0_1	=	0x0081
                           000082   185 _P0_2	=	0x0082
                           000083   186 _P0_3	=	0x0083
                           000084   187 _P0_4	=	0x0084
                           000085   188 _P0_5	=	0x0085
                           000086   189 _P0_6	=	0x0086
                           000087   190 _P0_7	=	0x0087
                           000088   191 _IT0	=	0x0088
                           000089   192 _IE0	=	0x0089
                           00008A   193 _IT1	=	0x008a
                           00008B   194 _IE1	=	0x008b
                           00008C   195 _TR0	=	0x008c
                           00008D   196 _TF0	=	0x008d
                           00008E   197 _TR1	=	0x008e
                           00008F   198 _TF1	=	0x008f
                           000090   199 _P1_0	=	0x0090
                           000091   200 _P1_1	=	0x0091
                           000092   201 _P1_2	=	0x0092
                           000093   202 _P1_3	=	0x0093
                           000094   203 _P1_4	=	0x0094
                           000095   204 _P1_5	=	0x0095
                           000096   205 _P1_6	=	0x0096
                           000097   206 _P1_7	=	0x0097
                           000098   207 _RI	=	0x0098
                           000099   208 _TI	=	0x0099
                           00009A   209 _RB8	=	0x009a
                           00009B   210 _TB8	=	0x009b
                           00009C   211 _REN	=	0x009c
                           00009D   212 _SM2	=	0x009d
                           00009E   213 _SM1	=	0x009e
                           00009F   214 _SM0	=	0x009f
                           0000A0   215 _P2_0	=	0x00a0
                           0000A1   216 _P2_1	=	0x00a1
                           0000A2   217 _P2_2	=	0x00a2
                           0000A3   218 _P2_3	=	0x00a3
                           0000A4   219 _P2_4	=	0x00a4
                           0000A5   220 _P2_5	=	0x00a5
                           0000A6   221 _P2_6	=	0x00a6
                           0000A7   222 _P2_7	=	0x00a7
                           0000A8   223 _EX0	=	0x00a8
                           0000A9   224 _ET0	=	0x00a9
                           0000AA   225 _EX1	=	0x00aa
                           0000AB   226 _ET1	=	0x00ab
                           0000AC   227 _ES	=	0x00ac
                           0000AF   228 _EA	=	0x00af
                           0000B0   229 _P3_0	=	0x00b0
                           0000B1   230 _P3_1	=	0x00b1
                           0000B2   231 _P3_2	=	0x00b2
                           0000B3   232 _P3_3	=	0x00b3
                           0000B4   233 _P3_4	=	0x00b4
                           0000B5   234 _P3_5	=	0x00b5
                           0000B6   235 _P3_6	=	0x00b6
                           0000B7   236 _P3_7	=	0x00b7
                           0000B0   237 _RXD	=	0x00b0
                           0000B1   238 _TXD	=	0x00b1
                           0000B2   239 _INT0	=	0x00b2
                           0000B3   240 _INT1	=	0x00b3
                           0000B4   241 _T0	=	0x00b4
                           0000B5   242 _T1	=	0x00b5
                           0000B6   243 _WR	=	0x00b6
                           0000B7   244 _RD	=	0x00b7
                           0000B8   245 _PX0	=	0x00b8
                           0000B9   246 _PT0	=	0x00b9
                           0000BA   247 _PX1	=	0x00ba
                           0000BB   248 _PT1	=	0x00bb
                           0000BC   249 _PS	=	0x00bc
                           0000D0   250 _P	=	0x00d0
                           0000D1   251 _F1	=	0x00d1
                           0000D2   252 _OV	=	0x00d2
                           0000D3   253 _RS0	=	0x00d3
                           0000D4   254 _RS1	=	0x00d4
                           0000D5   255 _F0	=	0x00d5
                           0000D6   256 _AC	=	0x00d6
                           0000D7   257 _CY	=	0x00d7
                           0000AD   258 _ET2	=	0x00ad
                           0000BD   259 _PT2	=	0x00bd
                           0000C8   260 _T2CON_0	=	0x00c8
                           0000C9   261 _T2CON_1	=	0x00c9
                           0000CA   262 _T2CON_2	=	0x00ca
                           0000CB   263 _T2CON_3	=	0x00cb
                           0000CC   264 _T2CON_4	=	0x00cc
                           0000CD   265 _T2CON_5	=	0x00cd
                           0000CE   266 _T2CON_6	=	0x00ce
                           0000CF   267 _T2CON_7	=	0x00cf
                           0000C8   268 _CP_RL2	=	0x00c8
                           0000C9   269 _C_T2	=	0x00c9
                           0000CA   270 _TR2	=	0x00ca
                           0000CB   271 _EXEN2	=	0x00cb
                           0000CC   272 _TCLK	=	0x00cc
                           0000CD   273 _RCLK	=	0x00cd
                           0000CE   274 _EXF2	=	0x00ce
                           0000CF   275 _TF2	=	0x00cf
                                    276 ;--------------------------------------------------------
                                    277 ; overlayable register banks
                                    278 ;--------------------------------------------------------
                                    279 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        280 	.ds 8
                                    281 ;--------------------------------------------------------
                                    282 ; internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area DSEG    (DATA)
      000021                        285 _Write_Max7219_PARM_2:
      000021                        286 	.ds 1
      000022                        287 _leds::
      000022                        288 	.ds 8
      00002A                        289 _snake::
      00002A                        290 	.ds 64
      00006A                        291 _snake_len::
      00006A                        292 	.ds 2
      00006C                        293 _food::
      00006C                        294 	.ds 1
      00006D                        295 _step_next_1_23:
      00006D                        296 	.ds 1
                                    297 ;--------------------------------------------------------
                                    298 ; overlayable items in internal ram 
                                    299 ;--------------------------------------------------------
                                    300 	.area	OSEG    (OVR,DATA)
                                    301 	.area	OSEG    (OVR,DATA)
                                    302 	.area	OSEG    (OVR,DATA)
                                    303 	.area	OSEG    (OVR,DATA)
                                    304 	.area	OSEG    (OVR,DATA)
                                    305 ;--------------------------------------------------------
                                    306 ; Stack segment in internal ram 
                                    307 ;--------------------------------------------------------
                                    308 	.area	SSEG
      00006E                        309 __start__stack:
      00006E                        310 	.ds	1
                                    311 
                                    312 ;--------------------------------------------------------
                                    313 ; indirectly addressable internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area ISEG    (DATA)
                                    316 ;--------------------------------------------------------
                                    317 ; absolute internal ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area IABS    (ABS,DATA)
                                    320 	.area IABS    (ABS,DATA)
                                    321 ;--------------------------------------------------------
                                    322 ; bit data
                                    323 ;--------------------------------------------------------
                                    324 	.area BSEG    (BIT)
      000000                        325 _Write_Max7219_byte_sloc0_1_0:
      000000                        326 	.ds 1
                                    327 ;--------------------------------------------------------
                                    328 ; paged external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area PSEG    (PAG,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XSEG    (XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; absolute external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XABS    (ABS,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external initialized ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XISEG   (XDATA)
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT0 (CODE)
                                    345 	.area GSINIT1 (CODE)
                                    346 	.area GSINIT2 (CODE)
                                    347 	.area GSINIT3 (CODE)
                                    348 	.area GSINIT4 (CODE)
                                    349 	.area GSINIT5 (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.area GSFINAL (CODE)
                                    352 	.area CSEG    (CODE)
                                    353 ;--------------------------------------------------------
                                    354 ; interrupt vector 
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
      000000                        357 __interrupt_vect:
      000000 02 00 06         [24]  358 	ljmp	__sdcc_gsinit_startup
                                    359 ;--------------------------------------------------------
                                    360 ; global & static initialisations
                                    361 ;--------------------------------------------------------
                                    362 	.area HOME    (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.area GSFINAL (CODE)
                                    365 	.area GSINIT  (CODE)
                                    366 	.globl __sdcc_gsinit_startup
                                    367 	.globl __sdcc_program_startup
                                    368 	.globl __start__stack
                                    369 	.globl __mcs51_genXINIT
                                    370 	.globl __mcs51_genXRAMCLEAR
                                    371 	.globl __mcs51_genRAMCLEAR
                                    372 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:61: int snake_len = 1; //贪吃蛇长度
      00005F 75 6A 01         [24]  373 	mov	_snake_len,#0x01
      000062 75 6B 00         [24]  374 	mov	(_snake_len + 1),#0x00
                                    375 	.area GSFINAL (CODE)
      000065 02 00 03         [24]  376 	ljmp	__sdcc_program_startup
                                    377 ;--------------------------------------------------------
                                    378 ; Home
                                    379 ;--------------------------------------------------------
                                    380 	.area HOME    (CODE)
                                    381 	.area HOME    (CODE)
      000003                        382 __sdcc_program_startup:
      000003 02 02 74         [24]  383 	ljmp	_main
                                    384 ;	return from main will return to caller
                                    385 ;--------------------------------------------------------
                                    386 ; code
                                    387 ;--------------------------------------------------------
                                    388 	.area CSEG    (CODE)
                                    389 ;------------------------------------------------------------
                                    390 ;Allocation info for local variables in function 'Delay_xms'
                                    391 ;------------------------------------------------------------
                                    392 ;x                         Allocated to registers r6 r7 
                                    393 ;i                         Allocated to registers r4 r5 
                                    394 ;j                         Allocated to registers r2 r3 
                                    395 ;------------------------------------------------------------
                                    396 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:16: void Delay_xms(unsigned int x)
                                    397 ;	-----------------------------------------
                                    398 ;	 function Delay_xms
                                    399 ;	-----------------------------------------
      000068                        400 _Delay_xms:
                           000007   401 	ar7 = 0x07
                           000006   402 	ar6 = 0x06
                           000005   403 	ar5 = 0x05
                           000004   404 	ar4 = 0x04
                           000003   405 	ar3 = 0x03
                           000002   406 	ar2 = 0x02
                           000001   407 	ar1 = 0x01
                           000000   408 	ar0 = 0x00
      000068 AE 82            [24]  409 	mov	r6,dpl
      00006A AF 83            [24]  410 	mov	r7,dph
                                    411 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:19: for (i = 0; i < x; i++)
      00006C 7C 00            [12]  412 	mov	r4,#0x00
      00006E 7D 00            [12]  413 	mov	r5,#0x00
      000070                        414 00107$:
      000070 C3               [12]  415 	clr	c
      000071 EC               [12]  416 	mov	a,r4
      000072 9E               [12]  417 	subb	a,r6
      000073 ED               [12]  418 	mov	a,r5
      000074 9F               [12]  419 	subb	a,r7
      000075 50 1B            [24]  420 	jnc	00109$
                                    421 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:20: for (j = 0; j < 112; j++)
      000077 7A 70            [12]  422 	mov	r2,#0x70
      000079 7B 00            [12]  423 	mov	r3,#0x00
      00007B                        424 00105$:
      00007B EA               [12]  425 	mov	a,r2
      00007C 24 FF            [12]  426 	add	a,#0xff
      00007E F8               [12]  427 	mov	r0,a
      00007F EB               [12]  428 	mov	a,r3
      000080 34 FF            [12]  429 	addc	a,#0xff
      000082 F9               [12]  430 	mov	r1,a
      000083 88 02            [24]  431 	mov	ar2,r0
      000085 89 03            [24]  432 	mov	ar3,r1
      000087 E8               [12]  433 	mov	a,r0
      000088 49               [12]  434 	orl	a,r1
      000089 70 F0            [24]  435 	jnz	00105$
                                    436 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:19: for (i = 0; i < x; i++)
      00008B 0C               [12]  437 	inc	r4
      00008C BC 00 E1         [24]  438 	cjne	r4,#0x00,00107$
      00008F 0D               [12]  439 	inc	r5
      000090 80 DE            [24]  440 	sjmp	00107$
      000092                        441 00109$:
                                    442 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:22: }
      000092 22               [24]  443 	ret
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'Write_Max7219_byte'
                                    446 ;------------------------------------------------------------
                                    447 ;DATA                      Allocated to registers r7 
                                    448 ;i                         Allocated to registers r6 
                                    449 ;------------------------------------------------------------
                                    450 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:25: void Write_Max7219_byte(unsigned char DATA)
                                    451 ;	-----------------------------------------
                                    452 ;	 function Write_Max7219_byte
                                    453 ;	-----------------------------------------
      000093                        454 _Write_Max7219_byte:
      000093 AF 82            [24]  455 	mov	r7,dpl
                                    456 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:28: CS = 0;
                                    457 ;	assignBit
      000095 C2 A1            [12]  458 	clr	_P2_1
                                    459 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:29: for (i = 8; i >= 1; i--)
      000097 7E 08            [12]  460 	mov	r6,#0x08
      000099                        461 00102$:
                                    462 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:31: CLK = 0;
                                    463 ;	assignBit
      000099 C2 A2            [12]  464 	clr	_P2_2
                                    465 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:32: DIN = DATA & 0x80;
      00009B EF               [12]  466 	mov	a,r7
      00009C 33               [12]  467 	rlc	a
                                    468 ;	assignBit
      00009D 92 00            [24]  469 	mov  _Write_Max7219_byte_sloc0_1_0,c
      00009F 92 A0            [24]  470 	mov	_P2_0,c
                                    471 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:33: DATA = DATA << 1;
      0000A1 8F 05            [24]  472 	mov	ar5,r7
      0000A3 ED               [12]  473 	mov	a,r5
      0000A4 2D               [12]  474 	add	a,r5
      0000A5 FF               [12]  475 	mov	r7,a
                                    476 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:34: CLK = 1;
                                    477 ;	assignBit
      0000A6 D2 A2            [12]  478 	setb	_P2_2
                                    479 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:29: for (i = 8; i >= 1; i--)
      0000A8 1E               [12]  480 	dec	r6
      0000A9 BE 01 00         [24]  481 	cjne	r6,#0x01,00110$
      0000AC                        482 00110$:
      0000AC 50 EB            [24]  483 	jnc	00102$
                                    484 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:36: }
      0000AE 22               [24]  485 	ret
                                    486 ;------------------------------------------------------------
                                    487 ;Allocation info for local variables in function 'Write_Max7219'
                                    488 ;------------------------------------------------------------
                                    489 ;dat                       Allocated with name '_Write_Max7219_PARM_2'
                                    490 ;address                   Allocated to registers r7 
                                    491 ;------------------------------------------------------------
                                    492 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:39: void Write_Max7219(unsigned char address, unsigned char dat)
                                    493 ;	-----------------------------------------
                                    494 ;	 function Write_Max7219
                                    495 ;	-----------------------------------------
      0000AF                        496 _Write_Max7219:
      0000AF AF 82            [24]  497 	mov	r7,dpl
                                    498 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:41: CS = 0;
                                    499 ;	assignBit
      0000B1 C2 A1            [12]  500 	clr	_P2_1
                                    501 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:42: Write_Max7219_byte(address); //写入地址，即数码管编号
      0000B3 8F 82            [24]  502 	mov	dpl,r7
      0000B5 12 00 93         [24]  503 	lcall	_Write_Max7219_byte
                                    504 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:43: Write_Max7219_byte(dat);     //写入数据，即数码管显示数字
      0000B8 85 21 82         [24]  505 	mov	dpl,_Write_Max7219_PARM_2
      0000BB 12 00 93         [24]  506 	lcall	_Write_Max7219_byte
                                    507 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:44: CS = 1;
                                    508 ;	assignBit
      0000BE D2 A1            [12]  509 	setb	_P2_1
                                    510 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:45: }
      0000C0 22               [24]  511 	ret
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'Init_Max7219'
                                    514 ;------------------------------------------------------------
                                    515 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:48: void Init_Max7219(void)
                                    516 ;	-----------------------------------------
                                    517 ;	 function Init_Max7219
                                    518 ;	-----------------------------------------
      0000C1                        519 _Init_Max7219:
                                    520 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:50: Write_Max7219(0x09, 0x00); //译码方式：No decode
      0000C1 75 21 00         [24]  521 	mov	_Write_Max7219_PARM_2,#0x00
      0000C4 75 82 09         [24]  522 	mov	dpl,#0x09
      0000C7 12 00 AF         [24]  523 	lcall	_Write_Max7219
                                    524 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:51: Write_Max7219(0x0a, 0x03); //亮度
      0000CA 75 21 03         [24]  525 	mov	_Write_Max7219_PARM_2,#0x03
      0000CD 75 82 0A         [24]  526 	mov	dpl,#0x0a
      0000D0 12 00 AF         [24]  527 	lcall	_Write_Max7219
                                    528 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:52: Write_Max7219(0x0b, 0x07); //扫描界限；8个数码管显示
      0000D3 75 21 07         [24]  529 	mov	_Write_Max7219_PARM_2,#0x07
      0000D6 75 82 0B         [24]  530 	mov	dpl,#0x0b
      0000D9 12 00 AF         [24]  531 	lcall	_Write_Max7219
                                    532 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:53: Write_Max7219(0x0c, 0x01); //掉电模式：0，普通模式：1
      0000DC 75 21 01         [24]  533 	mov	_Write_Max7219_PARM_2,#0x01
      0000DF 75 82 0C         [24]  534 	mov	dpl,#0x0c
      0000E2 12 00 AF         [24]  535 	lcall	_Write_Max7219
                                    536 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:54: Write_Max7219(0x0f, 0x00); //显示测试：1；测试结束，正常显示：0
      0000E5 75 21 00         [24]  537 	mov	_Write_Max7219_PARM_2,#0x00
      0000E8 75 82 0F         [24]  538 	mov	dpl,#0x0f
                                    539 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:55: }
      0000EB 02 00 AF         [24]  540 	ljmp	_Write_Max7219
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'printLEDs'
                                    543 ;------------------------------------------------------------
                                    544 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:64: void printLEDs()
                                    545 ;	-----------------------------------------
                                    546 ;	 function printLEDs
                                    547 ;	-----------------------------------------
      0000EE                        548 _printLEDs:
                                    549 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:66: Write_Max7219(0x01, leds[0]);
      0000EE 85 22 21         [24]  550 	mov	_Write_Max7219_PARM_2,_leds
      0000F1 75 82 01         [24]  551 	mov	dpl,#0x01
      0000F4 12 00 AF         [24]  552 	lcall	_Write_Max7219
                                    553 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:67: Write_Max7219(0x02, leds[1]);
      0000F7 85 23 21         [24]  554 	mov	_Write_Max7219_PARM_2,(_leds + 0x0001)
      0000FA 75 82 02         [24]  555 	mov	dpl,#0x02
      0000FD 12 00 AF         [24]  556 	lcall	_Write_Max7219
                                    557 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:68: Write_Max7219(0x03, leds[2]);
      000100 85 24 21         [24]  558 	mov	_Write_Max7219_PARM_2,(_leds + 0x0002)
      000103 75 82 03         [24]  559 	mov	dpl,#0x03
      000106 12 00 AF         [24]  560 	lcall	_Write_Max7219
                                    561 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:69: Write_Max7219(0x04, leds[3]);
      000109 85 25 21         [24]  562 	mov	_Write_Max7219_PARM_2,(_leds + 0x0003)
      00010C 75 82 04         [24]  563 	mov	dpl,#0x04
      00010F 12 00 AF         [24]  564 	lcall	_Write_Max7219
                                    565 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:71: Write_Max7219(0x05, leds[4]);
      000112 85 26 21         [24]  566 	mov	_Write_Max7219_PARM_2,(_leds + 0x0004)
      000115 75 82 05         [24]  567 	mov	dpl,#0x05
      000118 12 00 AF         [24]  568 	lcall	_Write_Max7219
                                    569 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:72: Write_Max7219(0x06, leds[5]);
      00011B 85 27 21         [24]  570 	mov	_Write_Max7219_PARM_2,(_leds + 0x0005)
      00011E 75 82 06         [24]  571 	mov	dpl,#0x06
      000121 12 00 AF         [24]  572 	lcall	_Write_Max7219
                                    573 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:73: Write_Max7219(0x07, leds[6]);
      000124 85 28 21         [24]  574 	mov	_Write_Max7219_PARM_2,(_leds + 0x0006)
      000127 75 82 07         [24]  575 	mov	dpl,#0x07
      00012A 12 00 AF         [24]  576 	lcall	_Write_Max7219
                                    577 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:74: Write_Max7219(0x08, leds[7]);
      00012D 85 29 21         [24]  578 	mov	_Write_Max7219_PARM_2,(_leds + 0x0007)
      000130 75 82 08         [24]  579 	mov	dpl,#0x08
                                    580 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:75: }
      000133 02 00 AF         [24]  581 	ljmp	_Write_Max7219
                                    582 ;------------------------------------------------------------
                                    583 ;Allocation info for local variables in function 'reset'
                                    584 ;------------------------------------------------------------
                                    585 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:78: void reset()
                                    586 ;	-----------------------------------------
                                    587 ;	 function reset
                                    588 ;	-----------------------------------------
      000136                        589 _reset:
                                    590 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:81: }
      000136 22               [24]  591 	ret
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'nextCell'
                                    594 ;------------------------------------------------------------
                                    595 ;next                      Allocated to registers r5 r6 r7 
                                    596 ;head                      Allocated to registers r4 
                                    597 ;------------------------------------------------------------
                                    598 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:86: void nextCell(char *next)
                                    599 ;	-----------------------------------------
                                    600 ;	 function nextCell
                                    601 ;	-----------------------------------------
      000137                        602 _nextCell:
      000137 AD 82            [24]  603 	mov	r5,dpl
      000139 AE 83            [24]  604 	mov	r6,dph
      00013B AF F0            [24]  605 	mov	r7,b
                                    606 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:88: char head = snake[snake_len - 1];
      00013D E5 6A            [12]  607 	mov	a,_snake_len
      00013F 14               [12]  608 	dec	a
      000140 24 2A            [12]  609 	add	a,#_snake
      000142 F9               [12]  610 	mov	r1,a
      000143 87 04            [24]  611 	mov	ar4,@r1
                                    612 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:89: if (SW1)
      000145 30 93 1E         [24]  613 	jnb	_P1_3,00108$
                                    614 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:90: if (SW2)
      000148 30 94 0D         [24]  615 	jnb	_P1_4,00102$
                                    616 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:91: *next = head - 1;
      00014B 8C 03            [24]  617 	mov	ar3,r4
      00014D 1B               [12]  618 	dec	r3
      00014E 8D 82            [24]  619 	mov	dpl,r5
      000150 8E 83            [24]  620 	mov	dph,r6
      000152 8F F0            [24]  621 	mov	b,r7
      000154 EB               [12]  622 	mov	a,r3
      000155 02 02 92         [24]  623 	ljmp	__gptrput
      000158                        624 00102$:
                                    625 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:93: *next = head - 0b10000;
      000158 8C 03            [24]  626 	mov	ar3,r4
      00015A EB               [12]  627 	mov	a,r3
      00015B 24 F0            [12]  628 	add	a,#0xf0
      00015D 8D 82            [24]  629 	mov	dpl,r5
      00015F 8E 83            [24]  630 	mov	dph,r6
      000161 8F F0            [24]  631 	mov	b,r7
      000163 02 02 92         [24]  632 	ljmp	__gptrput
      000166                        633 00108$:
                                    634 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:96: if (SW2)
      000166 30 94 0E         [24]  635 	jnb	_P1_4,00105$
                                    636 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:97: *next = head + 0b10000;
      000169 8C 03            [24]  637 	mov	ar3,r4
      00016B 74 10            [12]  638 	mov	a,#0x10
      00016D 2B               [12]  639 	add	a,r3
      00016E 8D 82            [24]  640 	mov	dpl,r5
      000170 8E 83            [24]  641 	mov	dph,r6
      000172 8F F0            [24]  642 	mov	b,r7
      000174 02 02 92         [24]  643 	ljmp	__gptrput
      000177                        644 00105$:
                                    645 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:99: *next = head + 1;
      000177 0C               [12]  646 	inc	r4
      000178 8D 82            [24]  647 	mov	dpl,r5
      00017A 8E 83            [24]  648 	mov	dph,r6
      00017C 8F F0            [24]  649 	mov	b,r7
      00017E EC               [12]  650 	mov	a,r4
                                    651 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:101: }
      00017F 02 02 92         [24]  652 	ljmp	__gptrput
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'setFood'
                                    655 ;------------------------------------------------------------
                                    656 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:103: void setFood()
                                    657 ;	-----------------------------------------
                                    658 ;	 function setFood
                                    659 ;	-----------------------------------------
      000182                        660 _setFood:
                                    661 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:106: }
      000182 22               [24]  662 	ret
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'moveSnake'
                                    665 ;------------------------------------------------------------
                                    666 ;i                         Allocated to registers 
                                    667 ;------------------------------------------------------------
                                    668 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:108: void moveSnake()
                                    669 ;	-----------------------------------------
                                    670 ;	 function moveSnake
                                    671 ;	-----------------------------------------
      000183                        672 _moveSnake:
                                    673 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:110: for (int i = snake_len; i > 0; i--)
      000183 AE 6A            [24]  674 	mov	r6,_snake_len
      000185 AF 6B            [24]  675 	mov	r7,(_snake_len + 1)
      000187                        676 00103$:
      000187 C3               [12]  677 	clr	c
      000188 E4               [12]  678 	clr	a
      000189 9E               [12]  679 	subb	a,r6
      00018A 74 80            [12]  680 	mov	a,#(0x00 ^ 0x80)
      00018C 8F F0            [24]  681 	mov	b,r7
      00018E 63 F0 80         [24]  682 	xrl	b,#0x80
      000191 95 F0            [12]  683 	subb	a,b
      000193 50 16            [24]  684 	jnc	00105$
                                    685 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:111: snake[i] = snake[i - 1];
      000195 EE               [12]  686 	mov	a,r6
      000196 24 2A            [12]  687 	add	a,#_snake
      000198 F9               [12]  688 	mov	r1,a
      000199 8E 05            [24]  689 	mov	ar5,r6
      00019B ED               [12]  690 	mov	a,r5
      00019C 14               [12]  691 	dec	a
      00019D 24 2A            [12]  692 	add	a,#_snake
      00019F F8               [12]  693 	mov	r0,a
      0001A0 86 05            [24]  694 	mov	ar5,@r0
      0001A2 A7 05            [24]  695 	mov	@r1,ar5
                                    696 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:110: for (int i = snake_len; i > 0; i--)
      0001A4 1E               [12]  697 	dec	r6
      0001A5 BE FF 01         [24]  698 	cjne	r6,#0xff,00115$
      0001A8 1F               [12]  699 	dec	r7
      0001A9                        700 00115$:
      0001A9 80 DC            [24]  701 	sjmp	00103$
      0001AB                        702 00105$:
                                    703 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:112: }
      0001AB 22               [24]  704 	ret
                                    705 ;------------------------------------------------------------
                                    706 ;Allocation info for local variables in function 'step'
                                    707 ;------------------------------------------------------------
                                    708 ;next                      Allocated with name '_step_next_1_23'
                                    709 ;i                         Allocated to registers r6 r7 
                                    710 ;------------------------------------------------------------
                                    711 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:115: void step()
                                    712 ;	-----------------------------------------
                                    713 ;	 function step
                                    714 ;	-----------------------------------------
      0001AC                        715 _step:
                                    716 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:118: nextCell(&next);
      0001AC 90 00 6D         [24]  717 	mov	dptr,#_step_next_1_23
      0001AF 75 F0 40         [24]  718 	mov	b,#0x40
      0001B2 12 01 37         [24]  719 	lcall	_nextCell
                                    720 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:121: for (int i = 0; i < snake_len; i++)
      0001B5 7E 00            [12]  721 	mov	r6,#0x00
      0001B7 7F 00            [12]  722 	mov	r7,#0x00
      0001B9                        723 00108$:
      0001B9 C3               [12]  724 	clr	c
      0001BA EE               [12]  725 	mov	a,r6
      0001BB 95 6A            [12]  726 	subb	a,_snake_len
      0001BD EF               [12]  727 	mov	a,r7
      0001BE 64 80            [12]  728 	xrl	a,#0x80
      0001C0 85 6B F0         [24]  729 	mov	b,(_snake_len + 1)
      0001C3 63 F0 80         [24]  730 	xrl	b,#0x80
      0001C6 95 F0            [12]  731 	subb	a,b
      0001C8 50 1B            [24]  732 	jnc	00103$
                                    733 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:122: if (snake[i] == next) //咬到自己了
      0001CA EE               [12]  734 	mov	a,r6
      0001CB 24 2A            [12]  735 	add	a,#_snake
      0001CD F9               [12]  736 	mov	r1,a
      0001CE E7               [12]  737 	mov	a,@r1
      0001CF FD               [12]  738 	mov	r5,a
      0001D0 B5 6D 0B         [24]  739 	cjne	a,_step_next_1_23,00109$
                                    740 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:123: reset();
      0001D3 C0 07            [24]  741 	push	ar7
      0001D5 C0 06            [24]  742 	push	ar6
      0001D7 12 01 36         [24]  743 	lcall	_reset
      0001DA D0 06            [24]  744 	pop	ar6
      0001DC D0 07            [24]  745 	pop	ar7
      0001DE                        746 00109$:
                                    747 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:121: for (int i = 0; i < snake_len; i++)
      0001DE 0E               [12]  748 	inc	r6
      0001DF BE 00 D7         [24]  749 	cjne	r6,#0x00,00108$
      0001E2 0F               [12]  750 	inc	r7
      0001E3 80 D4            [24]  751 	sjmp	00108$
      0001E5                        752 00103$:
                                    753 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:126: if (food == next)
      0001E5 E5 6D            [12]  754 	mov	a,_step_next_1_23
      0001E7 B5 6C 12         [24]  755 	cjne	a,_food,00105$
                                    756 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:128: setFood();
      0001EA 12 01 82         [24]  757 	lcall	_setFood
                                    758 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:129: moveSnake();
      0001ED 12 01 83         [24]  759 	lcall	_moveSnake
                                    760 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:130: snake[0] = next;
      0001F0 85 6D 2A         [24]  761 	mov	_snake,_step_next_1_23
                                    762 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:131: snake_len++;
      0001F3 05 6A            [12]  763 	inc	_snake_len
      0001F5 E4               [12]  764 	clr	a
      0001F6 B5 6A 09         [24]  765 	cjne	a,_snake_len,00110$
      0001F9 05 6B            [12]  766 	inc	(_snake_len + 1)
      0001FB 22               [24]  767 	ret
      0001FC                        768 00105$:
                                    769 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:135: moveSnake();
      0001FC 12 01 83         [24]  770 	lcall	_moveSnake
                                    771 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:136: snake[0] = next;
      0001FF 85 6D 2A         [24]  772 	mov	_snake,_step_next_1_23
      000202                        773 00110$:
                                    774 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:138: }
      000202 22               [24]  775 	ret
                                    776 ;------------------------------------------------------------
                                    777 ;Allocation info for local variables in function 'snake_to_LED'
                                    778 ;------------------------------------------------------------
                                    779 ;i                         Allocated to registers r6 r7 
                                    780 ;i                         Allocated to registers r6 r7 
                                    781 ;------------------------------------------------------------
                                    782 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:140: void snake_to_LED()
                                    783 ;	-----------------------------------------
                                    784 ;	 function snake_to_LED
                                    785 ;	-----------------------------------------
      000203                        786 _snake_to_LED:
                                    787 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:142: for (int i = 0; i < 8; i++) //先熄灭所有灯
      000203 7E 00            [12]  788 	mov	r6,#0x00
      000205 7F 00            [12]  789 	mov	r7,#0x00
      000207                        790 00104$:
      000207 C3               [12]  791 	clr	c
      000208 EE               [12]  792 	mov	a,r6
      000209 94 08            [12]  793 	subb	a,#0x08
      00020B EF               [12]  794 	mov	a,r7
      00020C 64 80            [12]  795 	xrl	a,#0x80
      00020E 94 80            [12]  796 	subb	a,#0x80
      000210 50 0D            [24]  797 	jnc	00101$
                                    798 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:143: leds[i] = 0;
      000212 EE               [12]  799 	mov	a,r6
      000213 24 22            [12]  800 	add	a,#_leds
      000215 F8               [12]  801 	mov	r0,a
      000216 76 00            [12]  802 	mov	@r0,#0x00
                                    803 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:142: for (int i = 0; i < 8; i++) //先熄灭所有灯
      000218 0E               [12]  804 	inc	r6
      000219 BE 00 EB         [24]  805 	cjne	r6,#0x00,00104$
      00021C 0F               [12]  806 	inc	r7
      00021D 80 E8            [24]  807 	sjmp	00104$
      00021F                        808 00101$:
                                    809 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:144: for (int i = 0; i < snake_len; i++) //有蛇的位置点亮
      00021F 7E 00            [12]  810 	mov	r6,#0x00
      000221 7F 00            [12]  811 	mov	r7,#0x00
      000223                        812 00107$:
      000223 C3               [12]  813 	clr	c
      000224 EE               [12]  814 	mov	a,r6
      000225 95 6A            [12]  815 	subb	a,_snake_len
      000227 EF               [12]  816 	mov	a,r7
      000228 64 80            [12]  817 	xrl	a,#0x80
      00022A 85 6B F0         [24]  818 	mov	b,(_snake_len + 1)
      00022D 63 F0 80         [24]  819 	xrl	b,#0x80
      000230 95 F0            [12]  820 	subb	a,b
      000232 50 3F            [24]  821 	jnc	00109$
                                    822 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:145: leds[snake[i] & 0b1111] |= 0b10000000 >> (snake[i] >> 4);
      000234 EE               [12]  823 	mov	a,r6
      000235 24 2A            [12]  824 	add	a,#_snake
      000237 F9               [12]  825 	mov	r1,a
      000238 87 05            [24]  826 	mov	ar5,@r1
      00023A 8D 03            [24]  827 	mov	ar3,r5
      00023C 53 03 0F         [24]  828 	anl	ar3,#0x0f
      00023F EB               [12]  829 	mov	a,r3
      000240 24 22            [12]  830 	add	a,#_leds
      000242 F9               [12]  831 	mov	r1,a
      000243 87 04            [24]  832 	mov	ar4,@r1
      000245 ED               [12]  833 	mov	a,r5
      000246 C4               [12]  834 	swap	a
      000247 54 0F            [12]  835 	anl	a,#0x0f
      000249 FD               [12]  836 	mov	r5,a
      00024A 8D F0            [24]  837 	mov	b,r5
      00024C 05 F0            [12]  838 	inc	b
      00024E 7D 80            [12]  839 	mov	r5,#0x80
      000250 E4               [12]  840 	clr	a
      000251 FB               [12]  841 	mov	r3,a
      000252 33               [12]  842 	rlc	a
      000253 92 D2            [24]  843 	mov	ov,c
      000255 80 08            [24]  844 	sjmp	00129$
      000257                        845 00128$:
      000257 A2 D2            [12]  846 	mov	c,ov
      000259 EB               [12]  847 	mov	a,r3
      00025A 13               [12]  848 	rrc	a
      00025B FB               [12]  849 	mov	r3,a
      00025C ED               [12]  850 	mov	a,r5
      00025D 13               [12]  851 	rrc	a
      00025E FD               [12]  852 	mov	r5,a
      00025F                        853 00129$:
      00025F D5 F0 F5         [24]  854 	djnz	b,00128$
      000262 7A 00            [12]  855 	mov	r2,#0x00
      000264 EC               [12]  856 	mov	a,r4
      000265 42 05            [12]  857 	orl	ar5,a
      000267 EA               [12]  858 	mov	a,r2
      000268 42 03            [12]  859 	orl	ar3,a
      00026A A7 05            [24]  860 	mov	@r1,ar5
                                    861 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:144: for (int i = 0; i < snake_len; i++) //有蛇的位置点亮
      00026C 0E               [12]  862 	inc	r6
      00026D BE 00 B3         [24]  863 	cjne	r6,#0x00,00107$
      000270 0F               [12]  864 	inc	r7
      000271 80 B0            [24]  865 	sjmp	00107$
      000273                        866 00109$:
                                    867 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:146: }
      000273 22               [24]  868 	ret
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'main'
                                    871 ;------------------------------------------------------------
                                    872 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:148: void main()
                                    873 ;	-----------------------------------------
                                    874 ;	 function main
                                    875 ;	-----------------------------------------
      000274                        876 _main:
                                    877 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:151: SW1 = 1;
                                    878 ;	assignBit
      000274 D2 93            [12]  879 	setb	_P1_3
                                    880 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:152: SW2 = 1;
                                    881 ;	assignBit
      000276 D2 94            [12]  882 	setb	_P1_4
                                    883 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:154: Init_Max7219();
      000278 12 00 C1         [24]  884 	lcall	_Init_Max7219
                                    885 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:155: setFood();
      00027B 12 01 82         [24]  886 	lcall	_setFood
                                    887 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:156: snake[0] = (3 << 4) + 5;
      00027E 75 2A 35         [24]  888 	mov	_snake,#0x35
                                    889 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:157: while (1)
      000281                        890 00102$:
                                    891 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:159: snake_to_LED();
      000281 12 02 03         [24]  892 	lcall	_snake_to_LED
                                    893 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:160: printLEDs();
      000284 12 00 EE         [24]  894 	lcall	_printLEDs
                                    895 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:161: Delay_xms(500);
      000287 90 01 F4         [24]  896 	mov	dptr,#0x01f4
      00028A 12 00 68         [24]  897 	lcall	_Delay_xms
                                    898 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:162: step();
      00028D 12 01 AC         [24]  899 	lcall	_step
                                    900 ;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/SquareEdition.c:164: }
      000290 80 EF            [24]  901 	sjmp	00102$
                                    902 	.area CSEG    (CODE)
                                    903 	.area CONST   (CODE)
                                    904 	.area XINIT   (CODE)
                                    905 	.area CABS    (ABS,CODE)
