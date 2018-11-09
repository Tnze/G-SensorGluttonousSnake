;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.7.0 #10231 (Mac OS X x86_64)
;--------------------------------------------------------
	.module tnze
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _snake_to_LED
	.globl _step
	.globl _moveSnake
	.globl _setFood
	.globl _nextCell
	.globl _reset
	.globl _printLEDs
	.globl _Init_Max7219
	.globl _Write_Max7219
	.globl _Write_Max7219_byte
	.globl _Delay_xms
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _food
	.globl _snake_len
	.globl _snake
	.globl _leds
	.globl _Write_Max7219_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Write_Max7219_PARM_2:
	.ds 1
_leds::
	.ds 8
_snake::
	.ds 64
_snake_len::
	.ds 2
_food::
	.ds 1
_step_next_1_23:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_Write_Max7219_byte_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:60: int snake_len = 1; //贪吃蛇长度
	mov	_snake_len,#0x01
	mov	(_snake_len + 1),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_xms'
;------------------------------------------------------------
;x                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:15: void Delay_xms(unsigned int x)
;	-----------------------------------------
;	 function Delay_xms
;	-----------------------------------------
_Delay_xms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:18: for (i = 0; i < x; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:19: for (j = 0; j < 112; j++)
	mov	r2,#0x70
	mov	r3,#0x00
00105$:
	mov	a,r2
	add	a,#0xff
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r1,a
	mov	ar2,r0
	mov	ar3,r1
	mov	a,r0
	orl	a,r1
	jnz	00105$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:18: for (i = 0; i < x; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:21: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write_Max7219_byte'
;------------------------------------------------------------
;DATA                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:24: void Write_Max7219_byte(unsigned char DATA)
;	-----------------------------------------
;	 function Write_Max7219_byte
;	-----------------------------------------
_Write_Max7219_byte:
	mov	r7,dpl
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:27: CS = 0;
;	assignBit
	clr	_P2_1
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:28: for (i = 8; i >= 1; i--)
	mov	r6,#0x08
00102$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:30: CLK = 0;
;	assignBit
	clr	_P2_2
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:31: DIN = DATA & 0x80;
	mov	a,r7
	rlc	a
;	assignBit
	mov  _Write_Max7219_byte_sloc0_1_0,c
	mov	_P2_0,c
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:32: DATA = DATA << 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:33: CLK = 1;
;	assignBit
	setb	_P2_2
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:28: for (i = 8; i >= 1; i--)
	dec	r6
	cjne	r6,#0x01,00110$
00110$:
	jnc	00102$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write_Max7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write_Max7219_PARM_2'
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:38: void Write_Max7219(unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Write_Max7219
;	-----------------------------------------
_Write_Max7219:
	mov	r7,dpl
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:40: CS = 0;
;	assignBit
	clr	_P2_1
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:41: Write_Max7219_byte(address); //写入地址，即数码管编号
	mov	dpl,r7
	lcall	_Write_Max7219_byte
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:42: Write_Max7219_byte(dat);     //写入数据，即数码管显示数字
	mov	dpl,_Write_Max7219_PARM_2
	lcall	_Write_Max7219_byte
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:43: CS = 1;
;	assignBit
	setb	_P2_1
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_Max7219'
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:47: void Init_Max7219(void)
;	-----------------------------------------
;	 function Init_Max7219
;	-----------------------------------------
_Init_Max7219:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:49: Write_Max7219(0x09, 0x00); //译码方式：No decode
	mov	_Write_Max7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:50: Write_Max7219(0x0a, 0x03); //亮度
	mov	_Write_Max7219_PARM_2,#0x03
	mov	dpl,#0x0a
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:51: Write_Max7219(0x0b, 0x07); //扫描界限；8个数码管显示
	mov	_Write_Max7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:52: Write_Max7219(0x0c, 0x01); //掉电模式：0，普通模式：1
	mov	_Write_Max7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:53: Write_Max7219(0x0f, 0x00); //显示测试：1；测试结束，正常显示：0
	mov	_Write_Max7219_PARM_2,#0x00
	mov	dpl,#0x0f
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:54: }
	ljmp	_Write_Max7219
;------------------------------------------------------------
;Allocation info for local variables in function 'printLEDs'
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:63: void printLEDs()
;	-----------------------------------------
;	 function printLEDs
;	-----------------------------------------
_printLEDs:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:65: Write_Max7219(0x01, leds[0]);
	mov	_Write_Max7219_PARM_2,_leds
	mov	dpl,#0x01
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:66: Write_Max7219(0x02, leds[1]);
	mov	_Write_Max7219_PARM_2,(_leds + 0x0001)
	mov	dpl,#0x02
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:67: Write_Max7219(0x03, leds[2]);
	mov	_Write_Max7219_PARM_2,(_leds + 0x0002)
	mov	dpl,#0x03
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:68: Write_Max7219(0x04, leds[3]);
	mov	_Write_Max7219_PARM_2,(_leds + 0x0003)
	mov	dpl,#0x04
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:70: Write_Max7219(0x05, leds[4]);
	mov	_Write_Max7219_PARM_2,(_leds + 0x0004)
	mov	dpl,#0x05
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:71: Write_Max7219(0x06, leds[5]);
	mov	_Write_Max7219_PARM_2,(_leds + 0x0005)
	mov	dpl,#0x06
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:72: Write_Max7219(0x07, leds[6]);
	mov	_Write_Max7219_PARM_2,(_leds + 0x0006)
	mov	dpl,#0x07
	lcall	_Write_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:73: Write_Max7219(0x08, leds[7]);
	mov	_Write_Max7219_PARM_2,(_leds + 0x0007)
	mov	dpl,#0x08
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:74: }
	ljmp	_Write_Max7219
;------------------------------------------------------------
;Allocation info for local variables in function 'reset'
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:77: void reset()
;	-----------------------------------------
;	 function reset
;	-----------------------------------------
_reset:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:80: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nextCell'
;------------------------------------------------------------
;next                      Allocated to registers r5 r6 r7 
;head                      Allocated to registers r4 
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:85: void nextCell(char *next)
;	-----------------------------------------
;	 function nextCell
;	-----------------------------------------
_nextCell:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:87: char head = snake[snake_len - 1];
	mov	a,_snake_len
	dec	a
	add	a,#_snake
	mov	r1,a
	mov	ar4,@r1
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:88: if (SW1)
	jnb	_P1_3,00108$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:89: if (SW2)
	jnb	_P1_4,00102$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:90: *next = head - 1;
	mov	ar3,r4
	dec	r3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	ljmp	__gptrput
00102$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:92: *next = head - 0b10000;
	mov	ar3,r4
	mov	a,r3
	add	a,#0xf0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__gptrput
00108$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:95: if (SW2)
	jnb	_P1_4,00105$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:96: *next = head + 0b10000;
	mov	ar3,r4
	mov	a,#0x10
	add	a,r3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__gptrput
00105$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:98: *next = head + 1;
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:100: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'setFood'
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:102: void setFood()
;	-----------------------------------------
;	 function setFood
;	-----------------------------------------
_setFood:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'moveSnake'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:107: void moveSnake()
;	-----------------------------------------
;	 function moveSnake
;	-----------------------------------------
_moveSnake:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:109: for (int i = snake_len; i > 0; i--)
	mov	r6,_snake_len
	mov	r7,(_snake_len + 1)
00103$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:110: snake[i] = snake[i - 1];
	mov	a,r6
	add	a,#_snake
	mov	r1,a
	mov	ar5,r6
	mov	a,r5
	dec	a
	add	a,#_snake
	mov	r0,a
	mov	ar5,@r0
	mov	@r1,ar5
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:109: for (int i = snake_len; i > 0; i--)
	dec	r6
	cjne	r6,#0xff,00115$
	dec	r7
00115$:
	sjmp	00103$
00105$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'step'
;------------------------------------------------------------
;next                      Allocated with name '_step_next_1_23'
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:114: void step()
;	-----------------------------------------
;	 function step
;	-----------------------------------------
_step:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:117: nextCell(&next);
	mov	dptr,#_step_next_1_23
	mov	b,#0x40
	lcall	_nextCell
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:120: for (int i = 0; i < snake_len; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
	clr	c
	mov	a,r6
	subb	a,_snake_len
	mov	a,r7
	xrl	a,#0x80
	mov	b,(_snake_len + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:121: if (snake[i] == next) //咬到自己了
	mov	a,r6
	add	a,#_snake
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	cjne	a,_step_next_1_23,00109$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:122: reset();
	push	ar7
	push	ar6
	lcall	_reset
	pop	ar6
	pop	ar7
00109$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:120: for (int i = 0; i < snake_len; i++)
	inc	r6
	cjne	r6,#0x00,00108$
	inc	r7
	sjmp	00108$
00103$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:125: if (food == next)
	mov	a,_step_next_1_23
	cjne	a,_food,00105$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:127: setFood();
	lcall	_setFood
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:128: moveSnake();
	lcall	_moveSnake
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:129: snake[0] = next;
	mov	_snake,_step_next_1_23
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:130: snake_len++;
	inc	_snake_len
	clr	a
	cjne	a,_snake_len,00110$
	inc	(_snake_len + 1)
	ret
00105$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:134: moveSnake();
	lcall	_moveSnake
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:135: snake[0] = next;
	mov	_snake,_step_next_1_23
00110$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:137: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'snake_to_LED'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:139: void snake_to_LED()
;	-----------------------------------------
;	 function snake_to_LED
;	-----------------------------------------
_snake_to_LED:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:141: for (int i = 0; i < 8; i++) //先熄灭所有灯
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:142: leds[i] = 0;
	mov	a,r6
	add	a,#_leds
	mov	r0,a
	mov	@r0,#0x00
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:141: for (int i = 0; i < 8; i++) //先熄灭所有灯
	inc	r6
	cjne	r6,#0x00,00104$
	inc	r7
	sjmp	00104$
00101$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:143: for (int i = 0; i < snake_len; i++) //有蛇的位置点亮
	mov	r6,#0x00
	mov	r7,#0x00
00107$:
	clr	c
	mov	a,r6
	subb	a,_snake_len
	mov	a,r7
	xrl	a,#0x80
	mov	b,(_snake_len + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:144: leds[snake[i] & 0b1111] |= 0b10000000 >> (snake[i] >> 4);
	mov	a,r6
	add	a,#_snake
	mov	r1,a
	mov	ar5,@r1
	mov	ar3,r5
	anl	ar3,#0x0f
	mov	a,r3
	add	a,#_leds
	mov	r1,a
	mov	ar4,@r1
	mov	a,r5
	swap	a
	anl	a,#0x0f
	mov	r5,a
	mov	b,r5
	inc	b
	mov	r5,#0x80
	clr	a
	mov	r3,a
	rlc	a
	mov	ov,c
	sjmp	00129$
00128$:
	mov	c,ov
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r5
	rrc	a
	mov	r5,a
00129$:
	djnz	b,00128$
	mov	r2,#0x00
	mov	a,r4
	orl	ar5,a
	mov	a,r2
	orl	ar3,a
	mov	@r1,ar5
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:143: for (int i = 0; i < snake_len; i++) //有蛇的位置点亮
	inc	r6
	cjne	r6,#0x00,00107$
	inc	r7
	sjmp	00107$
00109$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:145: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:147: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:150: SW1 = 1;
;	assignBit
	setb	_P1_3
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:151: SW2 = 1;
;	assignBit
	setb	_P1_4
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:153: Init_Max7219();
	lcall	_Init_Max7219
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:154: setFood();
	lcall	_setFood
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:155: snake[0] = (3 << 4) + 5;
	mov	_snake,#0x35
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:156: while (1)
00102$:
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:158: snake_to_LED();
	lcall	_snake_to_LED
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:159: printLEDs();
	lcall	_printLEDs
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:160: Delay_xms(500);
	mov	dptr,#0x01f4
	lcall	_Delay_xms
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:161: step();
	lcall	_step
;	/Users/Tnze/Documents/projects/51/CubeGluttonousSnake/tnze.c:163: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
