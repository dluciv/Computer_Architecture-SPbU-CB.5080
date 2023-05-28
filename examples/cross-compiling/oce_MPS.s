
cce_MPS.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <sizeofint>:
#include <stdio.h>
#define DOUBLE_PI 3.14159265358979323846

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

00000084 <ipow>:

double ipow(int pow, double base)
{
  84:	27bdffe8 	addiu	sp,sp,-24
  88:	ffbe0010 	sd	s8,16(sp)
  8c:	03a0f025 	move	s8,sp
  90:	afc40018 	sw	a0,24(s8)
  94:	ffc50020 	sd	a1,32(s8)
  double res = 1, tmp = base;
  98:	d7800000 	ldc1	$f0,0(gp)
  9c:	f7c00000 	sdc1	$f0,0(s8)
  a0:	d7c00020 	ldc1	$f0,32(s8)
  a4:	f7c00008 	sdc1	$f0,8(s8)
  while(pow)
  a8:	1000000f 	b	e8 <ipow+0x64>
  ac:	00000000 	nop
  {
    if(pow & 1)
  b0:	8fc20018 	lw	v0,24(s8)
  b4:	30420001 	andi	v0,v0,0x1
  b8:	10400005 	beqz	v0,d0 <ipow+0x4c>
  bc:	00000000 	nop
      res *= tmp;
  c0:	d7c10000 	ldc1	$f1,0(s8)
  c4:	d7c00008 	ldc1	$f0,8(s8)
  c8:	46200802 	mul.d	$f0,$f1,$f0
  cc:	f7c00000 	sdc1	$f0,0(s8)
    tmp *= tmp;
  d0:	d7c00008 	ldc1	$f0,8(s8)
  d4:	46200002 	mul.d	$f0,$f0,$f0
  d8:	f7c00008 	sdc1	$f0,8(s8)
    pow >>= 1;
  dc:	8fc20018 	lw	v0,24(s8)
  e0:	00021043 	sra	v0,v0,0x1
  e4:	afc20018 	sw	v0,24(s8)
  while(pow)
  e8:	8fc20018 	lw	v0,24(s8)
  ec:	1440fff0 	bnez	v0,b0 <ipow+0x2c>
  f0:	00000000 	nop
  }
  return res;
  f4:	d7c00000 	ldc1	$f0,0(s8)
}
  f8:	03c0e825 	move	sp,s8
  fc:	dfbe0010 	ld	s8,16(sp)
 100:	27bd0018 	addiu	sp,sp,24
 104:	03e00008 	jr	ra
 108:	00000000 	nop

0000010c <main>:

int main()
{
 10c:	27bdffd0 	addiu	sp,sp,-48
 110:	ffbf0028 	sd	ra,40(sp)
 114:	ffbe0020 	sd	s8,32(sp)
 118:	03a0f025 	move	s8,sp
  printf("sizeof(int): %d\n", sizeofint());
 11c:	0c000000 	jal	0 <sizeofint>
 120:	00000000 	nop
 124:	00402825 	move	a1,v0
 128:	3c020000 	lui	v0,0x0
 12c:	24440000 	addiu	a0,v0,0
 130:	0c000000 	jal	0 <sizeofint>
 134:	00000000 	nop
  printf("factorial(6): %d.\n", factorial(6));
 138:	24040006 	li	a0,6
 13c:	0c000000 	jal	0 <sizeofint>
 140:	00000000 	nop
 144:	00402825 	move	a1,v0
 148:	3c020000 	lui	v0,0x0
 14c:	24440018 	addiu	a0,v0,24
 150:	0c000000 	jal	0 <sizeofint>
 154:	00000000 	nop
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
 158:	d7800008 	ldc1	$f0,8(gp)
 15c:	44250000 	dmfc1	a1,$f0
 160:	24040005 	li	a0,5
 164:	0c000000 	jal	0 <sizeofint>
 168:	00000000 	nop
 16c:	44220000 	dmfc1	v0,$f0
 170:	00402825 	move	a1,v0
 174:	3c020000 	lui	v0,0x0
 178:	24440030 	addiu	a0,v0,48
 17c:	0c000000 	jal	0 <sizeofint>
 180:	00000000 	nop
  return 0;
 184:	00001025 	move	v0,zero
}
 188:	03c0e825 	move	sp,s8
 18c:	dfbf0028 	ld	ra,40(sp)
 190:	dfbe0020 	ld	s8,32(sp)
 194:	27bd0030 	addiu	sp,sp,48
 198:	03e00008 	jr	ra
 19c:	00000000 	nop

Disassembly of section .reginfo:

00000000 <.reginfo>:
{
   0:	f000003c 	scd	zero,60(zero)
   4:	00000000 	nop
   8:	00000003 	sra	zero,zero,0x0
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
  44:	40000000 	mfc0	zero,c0_index
  48:	fffffff8 	sd	ra,-8(ra)
	...
  54:	00000018 	mult	zero,zero
  58:	0000001e 	ddiv	zero,zero,zero
  while(n > 1)
  5c:	0000001f 	ddivu	zero,zero,zero
  60:	00000000 	nop
  64:	c0000000 	ll	zero,0(zero)
  68:	fffffff8 	sd	ra,-8(ra)
	...
}
  74:	00000030 	tge	zero,zero
  78:	0000001e 	ddiv	zero,zero,zero
  7c:	0000001f 	ddivu	zero,zero,zero

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	73697a65 	.word	0x73697a65
   4:	6f662869 	ldr	a2,10345(k1)
   8:	6e74293a 	ldr	s4,10554(s3)
   c:	2025640a 	addi	a1,at,25610
	...
  18:	66616374 	daddiu	at,s3,25460
  1c:	6f726961 	ldr	s2,26977(k1)
  20:	6c283629 	ldr	t0,13865(at)
  24:	3a202564 	xori	zero,s1,0x2564
  28:	2e0a0000 	sltiu	t2,s0,0
  2c:	00000000 	nop
  30:	50695e35 	beql	v1,t1,17908 <main+0x177fc>
  34:	3a20256c 	xori	zero,s1,0x256c
  38:	Address 0x38 is out of bounds.


Disassembly of section .sdata:

00000000 <.sdata>:
   0:	3ff00000 	.word	0x3ff00000
   4:	00000000 	nop
   8:	400921fb 	.word	0x400921fb
   c:	54442d18 	bnel	v0,a0,b470 <main+0xb364>

Disassembly of section .debug_info:

00000000 <.debug_info>:
{
   0:	00000151 	.word	0x151
   4:	00050104 	.word	0x50104
   8:	00000000 	nop
  return sizeof(int);
   c:	05000000 	bltz	t0,10 <.debug_info+0x10>
}
  10:	a21d0000 	sb	sp,0(s0)
  14:	007b0000 	.word	0x7b0000
  18:	000e0000 	sll	zero,t6,0x0
  1c:	00000000 	nop
  20:	01a00000 	.word	0x1a00000
{
  24:	00000101 	.word	0x101
  28:	06000001 	bltz	s0,30 <.debug_info+0x30>
  2c:	48010108 	.word	0x48010108
  30:	000000e6 	.word	0xe6
  int r = 1;
  34:	01020500 	.word	0x1020500
  38:	00013901 	.word	0x13901
  while(n > 1)
  3c:	02070000 	.word	0x2070000
  40:	01130104 	.word	0x1130104
    r *= n--;
  44:	05000000 	bltz	t0,48 <.debug_info+0x48>
  48:	f9010407 	sdc2	$1,1031(t0)
  4c:	00000090 	.word	0x90
  50:	01080500 	.word	0x1080500
  54:	00000001 	movf	zero,zero,$fcc0
  58:	08070000 	j	1c0000 <main+0x1bfef4>
  while(n > 1)
  5c:	00ca0604 	.word	0xca0604
  60:	05696e74 	tgeiu	t3,28276
  64:	00010407 	.word	0x10407
  68:	0000006e 	.word	0x6e
  return r;
  6c:	01080400 	.word	0x1080400
}
  70:	00012d01 	.word	0x12d01
  74:	01060000 	.word	0x1060000
  78:	00f40700 	.word	0xf40700
  7c:	00007308 	.word	0x7308
  80:	04000000 	bltz	zero,84 <.debug_info+0x84>
{
  84:	7a090000 	.word	0x7a090000
  88:	012602ce 	.word	0x12602ce
  8c:	05000000 	bltz	t0,90 <.debug_info+0x90>
  90:	5e000000 	bgtzl	s0,94 <.debug_info+0x94>
  94:	9c0a0000 	lwu	t2,0(zero)
  double res = 1, tmp = base;
  98:	007f0b00 	.word	0x7f0b00
  9c:	0c000000 	jal	0 <.debug_info>
  a0:	81011e05 	lb	at,7685(t0)
  a4:	0000005e 	.word	0x5e
  while(pow)
  a8:	0000010c 	syscall	0x4
  ac:	00000094 	.word	0x94
    if(pow & 1)
  b0:	019c0300 	.word	0x19c0300
  b4:	00014311 	.word	0x14311
  b8:	08000001 	j	4 <.debug_info+0x4>
  bc:	05000000 	bltz	t0,c0 <.debug_info+0xc0>
      res *= tmp;
  c0:	84000000 	lh	zero,0(zero)
  c4:	88019c00 	lwl	at,-25600(zero)
  c8:	00010504 	.word	0x10504
  cc:	706f7700 	.word	0x706f7700
    tmp *= tmp;
  d0:	11110000 	beq	t0,s1,d4 <.debug_info+0xd4>
  d4:	005e0291 	.word	0x5e0291
  d8:	000d0000 	sll	zero,t5,0x0
    pow >>= 1;
  dc:	00e10111 	.word	0xe10111
  e0:	1d000001 	bgtz	t0,e8 <.debug_info+0xe8>
  e4:	05029108 	bltzl	t0,fffe4508 <main+0xfffe43fc>
  while(pow)
  e8:	02726573 	tltu	s3,s2,0x195
  ec:	00130a00 	sll	at,s3,0x8
  f0:	00010502 	srl	zero,at,0x14
  return res;
  f4:	91680274 	lbu	t0,628(t3)
}
  f8:	6d700013 	ldr	s0,19(t3)
  fc:	13000001 	beqz	t8,104 <.debug_info+0x104>
 100:	05029170 	bltzl	t0,fffe46c4 <main+0xfffe45b8>
 104:	00010804 	sllv	at,at,zero
 108:	0000010c 	syscall	0x4
{
 10c:	03000001 	movf	zero,t8,$fcc0
 110:	02090500 	.word	0x2090500
 114:	00005e00 	sll	t3,zero,0x18
 118:	00002400 	sll	a0,zero,0x10
  printf("sizeof(int): %d\n", sizeofint());
 11c:	00006001 	movf	t4,zero,$fcc0
 120:	9c000001 	lwu	zero,1(zero)
 124:	3e046e00 	.word	0x3e046e00
 128:	09130000 	j	44c0000 <main+0x44bfef4>
 12c:	005e0291 	.word	0x5e0291
 130:	00027200 	sll	t6,v0,0x8
 134:	0b070000 	j	c1c0000 <main+0xc1bfef4>
  printf("factorial(6): %d.\n", factorial(6));
 138:	005e0291 	.word	0x5e0291
 13c:	70000e00 	.word	0x70000e00
 140:	00008601 	.word	0x8601
 144:	04050000 	.word	0x4050000
 148:	005e0000 	.word	0x5e0000
 14c:	00000000 	nop
 150:	0024019c 	.word	0x24019c
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
{
   0:	0124000b 	movn	zero,t1,a0
   4:	0b3e0b03 	j	cf82c0c <main+0xcf82b00>
   8:	0e000002 	jal	8000008 <main+0x7fffefc>
  return sizeof(int);
   c:	34000308 	li	zero,0x308
}
  10:	3a21013b 	xori	at,s1,0x13b
  14:	0b390b49 	j	ce42d24 <main+0xce42c18>
  18:	13021800 	beq	t8,v0,601c <main+0x5f10>
  1c:	00032e01 	.word	0x32e01
  20:	3f19030e 	.word	0x3f19030e
{
  24:	3a21013b 	xori	at,s1,0x13b
  28:	0b390b27 	j	ce42c9c <main+0xce42b90>
  2c:	19491311 	.word	0x19491311
  30:	01120640 	.word	0x1120640
  int r = 1;
  34:	187a1901 	.word	0x187a1901
  38:	13000004 	beqz	t8,4c <.debug_abbrev+0x4c>
  while(n > 1)
  3c:	05000308 	bltz	t0,c60 <main+0xb54>
  40:	3a21013b 	xori	at,s1,0x13b
    r *= n--;
  44:	0b390b49 	j	ce42d24 <main+0xce42c18>
  48:	13021800 	beq	t8,v0,604c <main+0x5f40>
  4c:	00051101 	.word	0x51101
  50:	250e130b 	addiu	t6,t0,4875
  54:	030e1b0e 	.word	0x30e1b0e
  58:	11011206 	beq	t0,at,4874 <main+0x4768>
  while(n > 1)
  5c:	10170000 	beq	zero,s7,60 <.debug_abbrev+0x60>
  60:	0624000b 	.word	0x624000b
  64:	0b3e0b03 	j	cf82c0c <main+0xcf82b00>
  68:	08000007 	j	1c <.debug_abbrev+0x1c>
  return r;
  6c:	26004913 	addiu	zero,s0,18707
}
  70:	0000080f 	.word	0x80f
  74:	000b0b49 	.word	0xb0b49
  78:	13000009 	beqz	t8,a0 <.debug_abbrev+0xa0>
  7c:	2e013f19 	sltiu	at,s0,16153
  80:	030e3a0b 	.word	0x30e3a0b
{
  84:	3b0b390b 	xori	t3,t8,0x390b
  88:	27194913 	addiu	t9,t8,18707
  8c:	3c190113 	lui	t9,0x113
  90:	00000a05 	.word	0xa05
  94:	00491300 	.word	0x491300
  double res = 1, tmp = base;
  98:	000b1800 	sll	v1,t3,0x0
  9c:	00000c2e 	.word	0xc2e
  a0:	003f1903 	.word	0x3f1903
  a4:	0e3a0b3b 	jal	8e82cec <main+0x8e82be0>
  while(pow)
  a8:	0b390b49 	j	ce42d24 <main+0xce42c18>
  ac:	13110112 	beq	t8,s1,4f8 <main+0x3ec>
    if(pow & 1)
  b0:	0640187c 	bltz	s2,62a4 <main+0x6198>
  b4:	1900000d 	blez	t0,ec <ipow+0x68>
  b8:	0500030e 	bltz	t0,cf4 <main+0xbe8>
  bc:	3a0b3b0b 	xori	t3,s0,0x3b0b
      res *= tmp;
  c0:	390b4913 	xori	t3,t0,0x4913
  c4:	02180000 	.word	0x2180000
  c8:	0e2e003f 	jal	8b800fc <main+0x8b7fff0>
  cc:	19030e3a 	.word	0x19030e3a
    tmp *= tmp;
  d0:	0b3b0b39 	j	cec2ce4 <main+0xcec2bd8>
  d4:	0b491311 	j	d244c44 <main+0xd244b38>
  d8:	01120640 	.word	0x1120640
    pow >>= 1;
  dc:	187a1900 	.word	0x187a1900
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
{
   0:	0000001c 	dmult	zero,zero
   4:	00020000 	sll	zero,v0,0x0
   8:	00000400 	sll	zero,zero,0x10
	...
}
  14:	000001a0 	.word	0x1a0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
{
   0:	000000b7 	.word	0xb7
   4:	00030000 	sll	zero,v1,0x0
   8:	003f0101 	.word	0x3f0101
  return sizeof(int);
   c:	fb0e0d00 	sdc2	$14,3328(t8)
}
  10:	01010101 	.word	0x1010101
  14:	00000001 	movf	zero,zero,$fcc0
  18:	0000012f 	.word	0x12f
  1c:	7573722f 	jalx	5cdc8bc <main+0x5cdc7b0>
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
  50:	00001605 	.word	0x1605
  54:	0abb0501 	j	aec1404 <main+0xaec12f8>
  58:	4b083f05 	c2	0x1083f05
  while(n > 1)
  5c:	07f30508 	bgezall	ra,1480 <main+0x1374>
  60:	83050b83 	lb	a1,2947(t8)
  64:	0507ba05 	.word	0x507ba05
  68:	0bb9050a 	j	ee41428 <main+0xee4131c>
  return r;
  6c:	f405014b 	sdc1	$f5,331(zero)
}
  70:	083f050a 	j	fc1428 <main+0xfc131c>
  74:	083d0513 	j	f4144c <main+0xf41340>
  78:	82050883 	lb	a1,2179(s0)
  7c:	050c8405 	teqi	t0,-31739
  80:	0782050b 	bltzl	gp,14b0 <main+0x13a4>
{
  84:	830509f3 	lb	a1,2547(t8)
  88:	bbb5050a 	swr	s5,1290(sp)
  8c:	c105014b 	ll	a1,331(t0)
  90:	083f0503 	j	fc140c <main+0xfc1300>
  94:	f3000204 	scd	zero,516(t8)
  double res = 1, tmp = base;
  98:	01068206 	.word	0x1068206
  9c:	083d0002 	j	f40008 <main+0xf3fefc>
  a0:	040106ba 	b	1b8c <main+0x1a80>
  a4:	06083d00 	tgei	s0,15616
  while(pow)
  a8:	02040106 	.word	0x2040106
  ac:	0874050a 	j	1d01428 <main+0x1d0131c>
    if(pow & 1)
  b0:	06083d05 	tgei	s0,15621
  b4:	014b0218 	.word	0x14b0218
  b8:	Address 0xb8 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
{
   0:	6c6f6e67 	ldr	t7,28263(v1)
   4:	206c6f6e 	addi	t4,v1,28526
   8:	6720696e 	daddiu	zero,t9,26990
  return sizeof(int);
   c:	74002f68 	jalx	bda0 <main+0xbc94>
}
  10:	6f6d652f 	ldr	t5,25903(k1)
  14:	642f5f2f 	daddiu	t7,at,24367
  18:	73616665 	.word	0x73616665
  1c:	5f77662f 	.word	0x5f77662f
  20:	776f726b 	jalx	dbdc9ac <main+0xdbdc8a0>
{
  24:	2f535062 	sltiu	s3,k0,20578
  28:	552f636f 	bnel	t1,t7,18de8 <main+0x18cdc>
  2c:	75727365 	jalx	5c9cd94 <main+0x5c9cc88>
  30:	732f436f 	.word	0x732f436f
  int r = 1;
  34:	6d707574 	ldr	s0,30068(t3)
  38:	65725f41 	daddiu	s2,t3,24385
  while(n > 1)
  3c:	72636869 	.word	0x72636869
  40:	74656374 	jalx	1958dd0 <main+0x1958cc4>
    r *= n--;
  44:	7572652d 	jalx	5c994b4 <main+0x5c993a8>
  48:	53506255 	beql	k0,s0,189a0 <main+0x18894>
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
  94:	20756e73 	addi	s5,v1,28275
  double res = 1, tmp = base;
  98:	69676e65 	ldl	a3,28261(t3)
  9c:	6420696e 	daddiu	zero,at,26990
  a0:	7400474e 	jalx	11d38 <main+0x11c2c>
  a4:	55204331 	bnezl	t1,10d6c <main+0x10c60>
  while(pow)
  a8:	37203133 	ori	zero,t9,0x3133
  ac:	2e312e30 	sltiu	s1,s1,11824
    if(pow & 1)
  b0:	202d6d61 	addi	t5,at,28001
  b4:	7263683d 	.word	0x7263683d
  b8:	6d697073 	ldr	t1,28787(t3)
  bc:	3634202d 	ori	s4,s1,0x202d
      res *= tmp;
  c0:	6d697073 	ldr	t1,28787(t3)
  c4:	3634202d 	ori	s4,s1,0x202d
  c8:	67006c6f 	daddiu	zero,t8,27759
  cc:	6e67206c 	ldr	a3,8300(s3)
    tmp *= tmp;
  d0:	6f6e6720 	ldr	t6,26400(k1)
  d4:	756e7369 	jalx	5b9cda4 <main+0x5b9cc98>
  d8:	676e6564 	daddiu	t6,k1,25956
    pow >>= 1;
  dc:	20696e74 	addi	t1,v1,28276
  e0:	00626173 	tltu	v1,v0,0x185
  e4:	6500756e 	daddiu	zero,t0,30062
  while(pow)
  e8:	7369676e 	.word	0x7369676e
  ec:	65642063 	daddiu	a0,t3,8291
  f0:	68617200 	ldl	at,29184(v1)
  return res;
  f4:	63686172 	daddi	t0,k1,24946
}
  f8:	006c6f6e 	.word	0x6c6f6e
  fc:	6720696e 	daddiu	zero,t9,26990
 100:	74006661 	jalx	19984 <main+0x19878>
 104:	63746f72 	daddi	s4,k1,28530
 108:	69616c00 	ldl	at,27648(t3)
{
 10c:	646f7562 	daddiu	t7,v1,30050
 110:	6c650073 	ldr	a1,115(v1)
 114:	686f7274 	ldl	t7,29300(v1)
 118:	20756e73 	addi	s5,v1,28275
  printf("sizeof(int): %d\n", sizeofint());
 11c:	69676e65 	ldl	a3,28261(t3)
 120:	6420696e 	daddiu	zero,at,26990
 124:	74007072 	jalx	1c1c8 <main+0x1c0bc>
 128:	696e7466 	ldl	t6,29798(t3)
 12c:	006c6f6e 	.word	0x6c6f6e
 130:	6720646f 	daddiu	zero,t9,25711
 134:	75626c65 	jalx	589b194 <main+0x589b088>
  printf("factorial(6): %d.\n", factorial(6));
 138:	0073686f 	.word	0x73686f
 13c:	72742069 	.word	0x72742069
 140:	6e740069 	ldr	s4,105(s3)
 144:	706f7700 	.word	0x706f7700
 148:	7369676e 	.word	0x7369676e
 14c:	65642063 	daddiu	a0,t3,8291
 150:	68617200 	ldl	at,29184(v1)

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
  60:	00000088 	.word	0x88
  64:	440e1844 	.word	0x440e1844
  68:	9e02440d 	lwu	v0,17421(s0)
  return r;
  6c:	1e026c0d 	.word	0x1e026c0d
}
  70:	1d48de0e 	.word	0x1d48de0e
  74:	00000000 	nop
  78:	00000020 	add	zero,zero,zero
  7c:	00000000 	nop
  80:	0000010c 	syscall	0x4
{
  84:	00000094 	.word	0x94
  88:	440e3048 	.word	0x440e3048
  8c:	9f029e04 	lwu	v0,-25084(t8)
  90:	440d1e02 	.word	0x440d1e02
  94:	700d1d4c 	.word	0x700d1d4c
  double res = 1, tmp = base;
  98:	dedf0e00 	ld	ra,3584(s6)

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
{
   0:	41000000 	.word	0x41000000
   4:	0f676e75 	jal	d9db9d4 <main+0xd9db8c8>
   8:	00010000 	sll	zero,at,0x0
  return sizeof(int);
   c:	00070401 	.word	0x70401
