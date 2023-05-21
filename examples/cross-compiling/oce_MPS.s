
cce_MPS.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <sizeofint>:
#include <stdio.h>

int sizeofint()
{
   0:	27bdfff8 	addiu	sp,sp,-8
   4:	ffbe0000 	sd	s8,0(sp)
   8:	03a0f025 	move	s8,sp
  return sizeof(int);
   c:	24020004 	li	v0,4
}
  10:	03c0e825 	move	sp,s8
  14:	dfbe0000 	ld	s8,0(sp)
  18:	27bd0008 	addiu	sp,sp,8
  1c:	03e00008 	jr	ra
  20:	00000000 	nop

00000024 <factorial>:

int factorial(int n)
{
  24:	27bdfff0 	addiu	sp,sp,-16
  28:	ffbe0008 	sd	s8,8(sp)
  2c:	03a0f025 	move	s8,sp
  30:	afc40010 	sw	a0,16(s8)
  int r = 1;
  34:	24020001 	li	v0,1
  38:	afc20000 	sw	v0,0(s8)
  while(n > 1)
  3c:	10000007 	b	5c <factorial+0x38>
  40:	00000000 	nop
    r *= n--;
  44:	8fc20010 	lw	v0,16(s8)
  48:	2443ffff 	addiu	v1,v0,-1
  4c:	afc30010 	sw	v1,16(s8)
  50:	8fc30000 	lw	v1,0(s8)
  54:	70621002 	mul	v0,v1,v0
  58:	afc20000 	sw	v0,0(s8)
  while(n > 1)
  5c:	8fc20010 	lw	v0,16(s8)
  60:	28420002 	slti	v0,v0,2
  64:	1040fff7 	beqz	v0,44 <factorial+0x20>
  68:	00000000 	nop
  return r;
  6c:	8fc20000 	lw	v0,0(s8)
}
  70:	03c0e825 	move	sp,s8
  74:	dfbe0008 	ld	s8,8(sp)
  78:	27bd0010 	addiu	sp,sp,16
  7c:	03e00008 	jr	ra
  80:	00000000 	nop

00000084 <main>:

int main()
{
  84:	27bdffd0 	addiu	sp,sp,-48
  88:	ffbf0028 	sd	ra,40(sp)
  8c:	ffbe0020 	sd	s8,32(sp)
  90:	03a0f025 	move	s8,sp
  printf("%d\n", factorial(6));
  94:	24040006 	li	a0,6
  98:	0c000000 	jal	0 <sizeofint>
  9c:	00000000 	nop
  a0:	00402825 	move	a1,v0
  a4:	3c020000 	lui	v0,0x0
  a8:	24440000 	addiu	a0,v0,0
  ac:	0c000000 	jal	0 <sizeofint>
  b0:	00000000 	nop
  return 0;
  b4:	00001025 	move	v0,zero
}
  b8:	03c0e825 	move	sp,s8
  bc:	dfbf0028 	ld	ra,40(sp)
  c0:	dfbe0020 	ld	s8,32(sp)
  c4:	27bd0030 	addiu	sp,sp,48
  c8:	03e00008 	jr	ra
  cc:	00000000 	nop

Disassembly of section .reginfo:

00000000 <.reginfo>:
{
   0:	e000003c 	sc	zero,60(zero)
	...

Disassembly of section .MIPS.abiflags:

00000000 <.MIPS.abiflags>:
   0:	00004001 	movf	t0,zero,$fcc0
   4:	02020001 	.word	0x2020001
	...
  10:	00000001 	movf	zero,zero,$fcc0
  14:	00000000 	nop

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	00000000 	nop
   4:	40000000 	mfc0	zero,c0_index
	...
}
  14:	00000008 	jr	zero
  18:	0000001e 	ddiv	zero,zero,zero
  1c:	0000001f 	ddivu	zero,zero,zero
  20:	00000000 	nop
{
  24:	40000000 	mfc0	zero,c0_index
  28:	fffffff8 	sd	ra,-8(ra)
	...
  int r = 1;
  34:	00000010 	mfhi	zero
  38:	0000001e 	ddiv	zero,zero,zero
  while(n > 1)
  3c:	0000001f 	ddivu	zero,zero,zero
  40:	00000000 	nop
    r *= n--;
  44:	c0000000 	ll	zero,0(zero)
  48:	fffffff8 	sd	ra,-8(ra)
	...
  54:	00000030 	tge	zero,zero
  58:	0000001e 	ddiv	zero,zero,zero
  while(n > 1)
  5c:	0000001f 	ddivu	zero,zero,zero

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	25640a00 	addiu	a0,t3,2560

Disassembly of section .debug_info:

00000000 <.debug_info>:
{
   0:	000000fa 	dsrl	zero,zero,0x3
   4:	00050104 	.word	0x50104
   8:	00000000 	nop
  return sizeof(int);
   c:	02000000 	.word	0x2000000
}
  10:	a21d0000 	sb	sp,0(s0)
  14:	007b0000 	.word	0x7b0000
  18:	000e0000 	sll	zero,t6,0x0
  1c:	00000000 	nop
  20:	00d00000 	.word	0xd00000
{
  24:	00000101 	.word	0x101
  28:	06000001 	bltz	s0,30 <.debug_info+0x30>
  2c:	37010108 	ori	at,t8,0x108
  30:	000000e1 	.word	0xe1
  int r = 1;
  34:	01020500 	.word	0x1020500
  38:	00012d01 	.word	0x12d01
  while(n > 1)
  3c:	02070000 	.word	0x2070000
  40:	01070104 	.word	0x1070104
    r *= n--;
  44:	05000000 	bltz	t0,48 <.debug_info+0x48>
  48:	f4010407 	sdc1	$f1,1031(zero)
  4c:	00000090 	.word	0x90
  50:	01080500 	.word	0x1080500
  54:	00000001 	movf	zero,zero,$fcc0
  58:	08070000 	j	1c0000 <main+0x1bff7c>
  while(n > 1)
  5c:	00ca0304 	.word	0xca0304
  60:	05696e74 	tgeiu	t3,28276
  64:	00010407 	.word	0x10407
  68:	0000006e 	.word	0x6e
  return r;
  6c:	01080400 	.word	0x1080400
}
  70:	00012101 	.word	0x12101
  74:	01060000 	.word	0x1060000
  78:	00ef0400 	.word	0xef0400
  7c:	00007305 	.word	0x7305
  80:	04000000 	bltz	zero,84 <.debug_info+0x84>
{
  84:	7a060000 	.word	0x7a060000
  88:	011a02ce 	.word	0x11a02ce
  8c:	05000000 	bltz	t0,90 <.debug_info+0x90>
  90:	5e000000 	bgtzl	s0,94 <.debug_info+0x94>
  printf("%d\n", factorial(6));
  94:	9c070000 	lwu	a3,0(zero)
  98:	007f0800 	.word	0x7f0800
  9c:	09000000 	j	4000000 <main+0x3ffff7c>
  a0:	81011005 	lb	at,4101(t0)
  a4:	0000005e 	.word	0x5e
  a8:	00000084 	.word	0x84
  ac:	0000004c 	syscall	0x1
  b0:	019c0a00 	.word	0x19c0a00
  return 0;
  b4:	0000fd01 	.word	0xfd01
}
  b8:	08050000 	j	140000 <main+0x13ff7c>
  bc:	005e0000 	.word	0x5e0000
  c0:	00240000 	.word	0x240000
  c4:	0060019c 	.word	0x60019c
  c8:	000000e7 	.word	0xe7
  cc:	0b6e0001 	j	db80004 <main+0xdb7ff80>
  d0:	08130000 	j	4c0000 <main+0x4bff7c>
  d4:	005e0291 	.word	0x5e0291
  d8:	000c7200 	sll	t6,t4,0x8
  dc:	010a0700 	.word	0x10a0700
  e0:	00005e02 	srl	t3,zero,0x18
  e4:	9170000d 	lbu	s0,13(t3)
  e8:	00000086 	.word	0x86
  ec:	01030500 	.word	0x1030500
  f0:	00005e00 	sll	t3,zero,0x18
  f4:	00000000 	nop
  f8:	00002401 	.word	0x2401
  fc:	Address 0xfc is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
{
   0:	0124000b 	movn	zero,t1,a0
   4:	0b3e0b03 	j	cf82c0c <main+0xcf82b88>
   8:	0e000002 	jal	8000008 <main+0x7ffff84>
  return sizeof(int);
   c:	1101250e 	beq	t0,at,9448 <main+0x93c4>
}
  10:	130b030e 	beq	t8,t3,c4c <main+0xbc8>
  14:	1b0e1101 	.word	0x1b0e1101
  18:	12061017 	beq	s0,a2,4078 <main+0x3ff4>
  1c:	00000324 	.word	0x324
  20:	000b0b3e 	dsrl32	at,t3,0xc
{
  24:	0b030800 	j	c0c2000 <main+0xc0c1f7c>
  28:	00042600 	sll	a0,a0,0x18
  2c:	49130000 	bc2tl	$cc4,30 <.debug_abbrev+0x30>
  30:	050f000b 	.word	0x50f000b
  int r = 1;
  34:	0b491300 	j	d244c00 <main+0xd244b7c>
  38:	00062e01 	.word	0x62e01
  while(n > 1)
  3c:	3f19030e 	.word	0x3f19030e
  40:	3a0b3b0b 	xori	t3,s0,0x3b0b
    r *= n--;
  44:	390b2719 	xori	t3,t0,0x2719
  48:	49133c19 	bc2tl	$cc4,f0b0 <main+0xf02c>
  4c:	01130000 	.word	0x1130000
  50:	07050049 	.word	0x7050049
  54:	13000008 	beqz	t8,78 <.debug_abbrev+0x78>
  58:	18000000 	blez	zero,5c <.debug_abbrev+0x5c>
  while(n > 1)
  5c:	092e003f 	j	4b800fc <main+0x4b80078>
  60:	19030e3a 	.word	0x19030e3a
  64:	0b3b0b39 	j	cec2ce4 <main+0xcec2c60>
  68:	0b491311 	j	d244c44 <main+0xd244bc0>
  return r;
  6c:	01120640 	.word	0x1120640
}
  70:	187c1900 	.word	0x187c1900
  74:	000a2e01 	.word	0xa2e01
  78:	3f19030e 	.word	0x3f19030e
  7c:	3a0b3b0b 	xori	t3,s0,0x3b0b
  80:	390b2719 	xori	t3,t0,0x2719
{
  84:	49131101 	bc2tl	$cc4,448c <main+0x4408>
  88:	12064018 	beq	s0,a2,100ec <main+0x10068>
  8c:	7a190113 	.word	0x7a190113
  90:	00000b05 	.word	0xb05
  printf("%d\n", factorial(6));
  94:	0003083a 	dsrl	at,v1,0x0
  98:	0b3b0b39 	j	cec2ce4 <main+0xcec2c60>
  9c:	0b491302 	j	d244c08 <main+0xd244b84>
  a0:	1800000c 	blez	zero,d4 <main+0x50>
  a4:	34000308 	li	zero,0x308
  a8:	3a0b3b0b 	xori	t3,s0,0x3b0b
  ac:	390b4913 	xori	t3,t0,0x4913
  b0:	02180000 	.word	0x2180000
  return 0;
  b4:	0d2e003f 	jal	4b800fc <main+0x4b80078>
}
  b8:	19030e3a 	.word	0x19030e3a
  bc:	0b3b0b39 	j	cec2ce4 <main+0xcec2c60>
  c0:	0b491311 	j	d244c44 <main+0xd244bc0>
  c4:	01120640 	.word	0x1120640
  c8:	187a1900 	.word	0x187a1900
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
{
   0:	0000001c 	dmult	zero,zero
   4:	00020000 	sll	zero,v0,0x0
   8:	00000400 	sll	zero,zero,0x10
	...
}
  14:	000000d0 	.word	0xd0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
{
   0:	00000084 	.word	0x84
   4:	00030000 	sll	zero,v1,0x0
   8:	003f0101 	.word	0x3f0101
  return sizeof(int);
   c:	fb0e0d00 	sdc2	$14,3328(t8)
}
  10:	01010101 	.word	0x1010101
  14:	00000001 	movf	zero,zero,$fcc0
  18:	0000012f 	.word	0x12f
  1c:	7573722f 	jalx	5cdc8bc <main+0x5cdc838>
  20:	6d697073 	ldr	t1,28787(t3)
{
  24:	36342d65 	ori	s4,s1,0x2d65
  28:	6c662f69 	ldr	a2,12137(v1)
  2c:	6e636c75 	ldr	v1,27765(s3)
  30:	64650000 	daddiu	a1,v1,0
  int r = 1;
  34:	6363652e 	daddi	v1,k1,25902
  38:	63000000 	daddi	zero,t8,0
  while(n > 1)
  3c:	00737464 	.word	0x737464
  40:	696f2e68 	ldl	t7,11880(t3)
    r *= n--;
  44:	00010000 	sll	zero,at,0x0
  48:	00050100 	sll	zero,a1,0x4
  4c:	05020000 	bltzl	t0,50 <.debug_line+0x50>
  50:	00001505 	.word	0x1505
  54:	0abb0501 	j	aec1404 <main+0xaec1380>
  58:	4b083f05 	c2	0x1083f05
  while(n > 1)
  5c:	07f30508 	bgezall	ra,1480 <main+0x13fc>
  60:	83050b83 	lb	a1,2947(t8)
  64:	0507ba05 	.word	0x507ba05
  68:	0bb9050a 	j	ee41428 <main+0xee413a4>
  return r;
  6c:	f405014b 	sdc1	$f5,331(zero)
}
  70:	083f0503 	j	fc140c <main+0xfc1388>
  74:	f3000204 	scd	zero,516(t8)
  78:	0106ba05 	.word	0x106ba05
  7c:	0a06083d 	j	81820f4 <main+0x8182070>
  80:	05014b02 	bgez	t0,12c8c <main+0x12c08>
{
  84:	18000101 	blez	zero,48c <main+0x408>

Disassembly of section .debug_str:

00000000 <.debug_str>:
{
   0:	6c6f6e67 	ldr	t7,28263(v1)
   4:	206c6f6e 	addi	t4,v1,28526
   8:	6720696e 	daddiu	zero,t9,26990
  return sizeof(int);
   c:	74002f68 	jalx	bda0 <main+0xbd1c>
}
  10:	6f6d652f 	ldr	t5,25903(k1)
  14:	642f5f2f 	daddiu	t7,at,24367
  18:	73616665 	.word	0x73616665
  1c:	5f77662f 	.word	0x5f77662f
  20:	776f726b 	jalx	dbdc9ac <main+0xdbdc928>
{
  24:	2f535062 	sltiu	s3,k0,20578
  28:	552f636f 	bnel	t1,t7,18de8 <main+0x18d64>
  2c:	75727365 	jalx	5c9cd94 <main+0x5c9cd10>
  30:	732f436f 	.word	0x732f436f
  int r = 1;
  34:	6d707574 	ldr	s0,30068(t3)
  38:	65725f41 	daddiu	s2,t3,24385
  while(n > 1)
  3c:	72636869 	.word	0x72636869
  40:	74656374 	jalx	1958dd0 <main+0x1958d4c>
    r *= n--;
  44:	7572652d 	jalx	5c994b4 <main+0x5c99430>
  48:	53506255 	beql	k0,s0,189a0 <main+0x1891c>
  4c:	2d43422e 	sltiu	v1,t2,16942
  50:	35303830 	ori	s0,t1,0x3830
  54:	2f657861 	sltiu	a1,k1,30817
  58:	6d706c65 	ldr	s0,27749(t3)
  while(n > 1)
  5c:	732f6372 	.word	0x732f6372
  60:	6f73732d 	ldr	s3,29485(k1)
  64:	636f6d70 	daddi	t7,k1,28016
  68:	696c696e 	ldl	t4,26990(t3)
  return r;
  6c:	6700756e 	daddiu	zero,t8,30062
}
  70:	7369676e 	.word	0x7369676e
  74:	65642069 	daddiu	a0,t3,8297
  78:	6e740063 	ldr	s4,99(s3)
  7c:	63652e63 	daddi	a1,k1,11875
  80:	006d6169 	.word	0x6d6169
{
  84:	6e007369 	ldr	zero,29545(s0)
  88:	7a656f66 	.word	0x7a656f66
  8c:	696e7400 	ldl	t6,29696(t3)
  90:	6c6f6e67 	ldr	t7,28263(v1)
  printf("%d\n", factorial(6));
  94:	20756e73 	addi	s5,v1,28275
  98:	69676e65 	ldl	a3,28261(t3)
  9c:	6420696e 	daddiu	zero,at,26990
  a0:	7400474e 	jalx	11d38 <main+0x11cb4>
  a4:	55204331 	bnezl	t1,10d6c <main+0x10ce8>
  a8:	37203133 	ori	zero,t9,0x3133
  ac:	2e312e30 	sltiu	s1,s1,11824
  b0:	202d6d61 	addi	t5,at,28001
  return 0;
  b4:	7263683d 	.word	0x7263683d
}
  b8:	6d697073 	ldr	t1,28787(t3)
  bc:	3634202d 	ori	s4,s1,0x202d
  c0:	6d697073 	ldr	t1,28787(t3)
  c4:	3634202d 	ori	s4,s1,0x202d
  c8:	67006c6f 	daddiu	zero,t8,27759
  cc:	6e67206c 	ldr	a3,8300(s3)
  d0:	6f6e6720 	ldr	t6,26400(k1)
  d4:	756e7369 	jalx	5b9cda4 <main+0x5b9cd20>
  d8:	676e6564 	daddiu	t6,k1,25956
  dc:	20696e74 	addi	t1,v1,28276
  e0:	00756e73 	tltu	v1,s5,0x1b9
  e4:	69676e65 	ldl	a3,28261(t3)
  e8:	64206368 	daddiu	zero,at,25448
  ec:	61720063 	daddi	s2,t3,99
  f0:	68617200 	ldl	at,29184(v1)
  f4:	6c6f6e67 	ldr	t7,28263(v1)
  f8:	20696e74 	addi	t1,v1,28276
  fc:	00666163 	.word	0x666163
 100:	746f7269 	jalx	1bdc9a4 <main+0x1bdc920>
 104:	616c0073 	daddi	t4,t3,115
 108:	686f7274 	ldl	t7,29300(v1)
 10c:	20756e73 	addi	s5,v1,28275
 110:	69676e65 	ldl	a3,28261(t3)
 114:	6420696e 	daddiu	zero,at,26990
 118:	74007072 	jalx	1c1c8 <main+0x1c144>
 11c:	696e7466 	ldl	t6,29798(t3)
 120:	006c6f6e 	.word	0x6c6f6e
 124:	6720646f 	daddiu	zero,t9,25711
 128:	75626c65 	jalx	589b194 <main+0x589b110>
 12c:	0073686f 	.word	0x73686f
 130:	72742069 	.word	0x72742069
 134:	6e740073 	ldr	s4,115(s3)
 138:	69676e65 	ldl	a3,28261(t3)
 13c:	64206368 	daddiu	zero,at,25448
 140:	Address 0x140 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
{
   0:	00474343 	.word	0x474343
   4:	3a202847 	xori	zero,s1,0x2847
   8:	4e552920 	madd.s	$f4,$f18,$f5,$f21
  return sizeof(int);
   c:	31332e31 	andi	s3,t1,0x2e31
}
  10:	Address 0x10 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
{
   0:	0000000c 	syscall
   4:	ffffffff 	sd	ra,-1(ra)
   8:	0100017c 	.word	0x100017c
  return sizeof(int);
   c:	1f0d1d00 	.word	0x1f0d1d00
}
  10:	0000001c 	dmult	zero,zero
	...
  1c:	00000024 	and	zero,zero,zero
  20:	440e0844 	.word	0x440e0844
{
  24:	9e02440d 	lwu	v0,17421(s0)
  28:	1e480d1d 	.word	0x1e480d1d
  2c:	48de0e00 	.word	0x48de0e00
  30:	00000020 	add	zero,zero,zero
  int r = 1;
  34:	00000000 	nop
  38:	00000024 	and	zero,zero,zero
  while(n > 1)
  3c:	00000060 	.word	0x60
  40:	440e1044 	.word	0x440e1044
    r *= n--;
  44:	9e02440d 	lwu	v0,17421(s0)
  48:	1e02440d 	.word	0x1e02440d
  4c:	1d48de0e 	.word	0x1d48de0e
  50:	00000000 	nop
  54:	00000020 	add	zero,zero,zero
  58:	00000000 	nop
  while(n > 1)
  5c:	00000084 	.word	0x84
  60:	0000004c 	syscall	0x1
  64:	440e3048 	.word	0x440e3048
  68:	9f029e04 	lwu	v0,-25084(t8)
  return r;
  6c:	440d1e68 	.word	0x440d1e68
}
  70:	0d1d4cde 	jal	4753378 <main+0x47532f4>
  74:	df0e0000 	ld	t6,0(t8)

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
{
   0:	41000000 	.word	0x41000000
   4:	0f676e75 	jal	d9db9d4 <main+0xd9db950>
   8:	00010000 	sll	zero,at,0x0
  return sizeof(int);
   c:	00070401 	.word	0x70401
