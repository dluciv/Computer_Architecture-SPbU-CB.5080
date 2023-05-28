
cce_AR9.o:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <sizeofint>:
#include <stdio.h>
#define DOUBLE_PI 3.14159265358979323846

int sizeofint()
{
  return sizeof(int);
   0:	52800080 	mov	w0, #0x4                   	// #4
}
   4:	d65f03c0 	ret

0000000000000008 <factorial>:

int factorial(int n)
{
   8:	d10083ff 	sub	sp, sp, #0x20
   c:	b9000fe0 	str	w0, [sp, #12]
  int r = 1;
  10:	52800020 	mov	w0, #0x1                   	// #1
  14:	b9001fe0 	str	w0, [sp, #28]
  while(n > 1)
  18:	14000007 	b	34 <factorial+0x2c>
    r *= n--;
  1c:	b9400fe0 	ldr	w0, [sp, #12]
  20:	51000401 	sub	w1, w0, #0x1
  24:	b9000fe1 	str	w1, [sp, #12]
  28:	b9401fe1 	ldr	w1, [sp, #28]
  2c:	1b007c20 	mul	w0, w1, w0
  30:	b9001fe0 	str	w0, [sp, #28]
  while(n > 1)
  34:	b9400fe0 	ldr	w0, [sp, #12]
  38:	7100041f 	cmp	w0, #0x1
  3c:	54ffff0c 	b.gt	1c <factorial+0x14>
  return r;
  40:	b9401fe0 	ldr	w0, [sp, #28]
}
  44:	910083ff 	add	sp, sp, #0x20
  48:	d65f03c0 	ret

000000000000004c <ipow>:

double ipow(int pow, double base)
{
  4c:	d10083ff 	sub	sp, sp, #0x20
  50:	b9000fe0 	str	w0, [sp, #12]
  54:	fd0003e0 	str	d0, [sp]
  double res = 1, tmp = base;
  58:	1e6e1000 	fmov	d0, #1.000000000000000000e+00
  5c:	fd000fe0 	str	d0, [sp, #24]
  60:	fd4003e0 	ldr	d0, [sp]
  64:	fd000be0 	str	d0, [sp, #16]
  while(pow)
  68:	1400000f 	b	a4 <ipow+0x58>
  {
    if(pow & 1)
  6c:	b9400fe0 	ldr	w0, [sp, #12]
  70:	12000000 	and	w0, w0, #0x1
  74:	7100001f 	cmp	w0, #0x0
  78:	540000a0 	b.eq	8c <ipow+0x40>  // b.none
      res *= tmp;
  7c:	fd400fe1 	ldr	d1, [sp, #24]
  80:	fd400be0 	ldr	d0, [sp, #16]
  84:	1e600820 	fmul	d0, d1, d0
  88:	fd000fe0 	str	d0, [sp, #24]
    tmp *= tmp;
  8c:	fd400be0 	ldr	d0, [sp, #16]
  90:	1e600800 	fmul	d0, d0, d0
  94:	fd000be0 	str	d0, [sp, #16]
    pow >>= 1;
  98:	b9400fe0 	ldr	w0, [sp, #12]
  9c:	13017c00 	asr	w0, w0, #1
  a0:	b9000fe0 	str	w0, [sp, #12]
  while(pow)
  a4:	b9400fe0 	ldr	w0, [sp, #12]
  a8:	7100001f 	cmp	w0, #0x0
  ac:	54fffe01 	b.ne	6c <ipow+0x20>  // b.any
  }
  return res;
  b0:	fd400fe0 	ldr	d0, [sp, #24]
}
  b4:	910083ff 	add	sp, sp, #0x20
  b8:	d65f03c0 	ret

00000000000000bc <main>:

int main()
{
  bc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  c0:	910003fd 	mov	x29, sp
  printf("sizeof(int): %d\n", sizeofint());
  c4:	94000000 	bl	0 <sizeofint>
  c8:	2a0003e1 	mov	w1, w0
  cc:	90000000 	adrp	x0, 0 <sizeofint>
  d0:	91000000 	add	x0, x0, #0x0
  d4:	94000000 	bl	0 <printf>
  printf("factorial(6): %d.\n", factorial(6));
  d8:	528000c0 	mov	w0, #0x6                   	// #6
  dc:	94000000 	bl	8 <factorial>
  e0:	2a0003e1 	mov	w1, w0
  e4:	90000000 	adrp	x0, 0 <sizeofint>
  e8:	91000000 	add	x0, x0, #0x0
  ec:	94000000 	bl	0 <printf>
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  f0:	90000000 	adrp	x0, 0 <sizeofint>
  f4:	fd400000 	ldr	d0, [x0]
  f8:	528000a0 	mov	w0, #0x5                   	// #5
  fc:	94000000 	bl	4c <ipow>
 100:	90000000 	adrp	x0, 0 <sizeofint>
 104:	91000000 	add	x0, x0, #0x0
 108:	94000000 	bl	0 <printf>
  return 0;
 10c:	52800000 	mov	w0, #0x0                   	// #0
}
 110:	a8c17bfd 	ldp	x29, x30, [sp], #16
 114:	d65f03c0 	ret

Disassembly of section .rodata:

0000000000000000 <.rodata>:
   0:	657a6973 	fnmls	z19.h, p2/m, z11.h, z26.h
   4:	6928666f 	stgp	x15, x25, [x19, #-768]
   8:	3a29746e 	.inst	0x3a29746e ; undefined
   c:	0a642520 	bic	w0, w9, w4, lsr #9
	...
  18:	74636166 	.inst	0x74636166 ; undefined
  1c:	6169726f 	.inst	0x6169726f ; undefined
  20:	2936286c 	stp	w12, w10, [x3, #-80]
  24:	6425203a 	fmul	z26.h, z1.h, z5.h[0]
  28:	00000a2e 	udf	#2606
  2c:	00000000 	udf	#0
  30:	355e6950 	cbnz	w16, bcd58 <main+0xbcc9c>
  34:	6c25203a 	stnp	d26, d8, [x1, #-432]
  38:	00000a66 	udf	#2662
  3c:	00000000 	udf	#0
  40:	54442d18 	bc.hi	885e0 <main+0x88524>  // bc.pmore
  44:	400921fb 	.inst	0x400921fb ; undefined

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
  return sizeof(int);
   0:	00000165 	udf	#357
}
   4:	08010005 	stxrb	w1, w5, [x0]
{
   8:	00000000 	udf	#0
   c:	00000005 	udf	#5
  int r = 1;
  10:	00001d00 	udf	#7424
	...
    r *= n--;
  20:	01180000 	.inst	0x01180000 ; undefined
	...
  2c:	08010000 	stxrb	w1, w0, [x0]
  30:	00000007 	udf	#7
  while(n > 1)
  34:	05040600 	.inst	0x05040600 ; undefined
  38:	00746e69 	.inst	0x00746e69 ; undefined
  3c:	00080101 	.inst	0x00080101 ; undefined
  return r;
  40:	01000000 	.inst	0x01000000 ; undefined
}
  44:	00000702 	udf	#1794
  48:	04010000 	sub	z0.b, p0/m, z0.b, z0.b
{
  4c:	00000007 	udf	#7
  50:	06010100 	.inst	0x06010100 ; undefined
  54:	00000000 	udf	#0
  double res = 1, tmp = base;
  58:	00050201 	.inst	0x00050201 ; undefined
  5c:	01000000 	.inst	0x01000000 ; undefined
  60:	00000508 	udf	#1288
  64:	01010000 	.inst	0x01010000 ; undefined
  while(pow)
  68:	00000008 	udf	#8
    if(pow & 1)
  6c:	00660700 	.inst	0x00660700 ; undefined
  70:	00080000 	.inst	0x00080000 ; undefined
  74:	02000000 	.inst	0x02000000 ; undefined
  78:	350c0164 	cbnz	w4, 180a4 <main+0x17fe8>
      res *= tmp;
  7c:	8a000000 	and	x0, x0, x0
  80:	09000000 	.inst	0x09000000 ; undefined
  84:	0000008a 	udf	#138
  88:	080b000a 	stxrb	w11, w10, [x0]
    tmp *= tmp;
  8c:	0000006d 	udf	#109
  90:	0000000c 	udf	#12
  94:	051e0100 	mov	z0.b, p14/z, #8
    pow >>= 1;
  98:	00000035 	udf	#53
	...
  while(pow)
  a4:	0000005c 	udf	#92
  a8:	00000000 	udf	#0
  ac:	00039c01 	.inst	0x00039c01 ; undefined
  return res;
  b0:	11000000 	add	w0, w0, #0x0
}
  b4:	00010908 	.inst	0x00010908 ; undefined
	...
{
  c0:	00007000 	udf	#28672
  printf("sizeof(int): %d\n", sizeofint());
  c4:	00000000 	udf	#0
  c8:	099c0100 	.inst	0x099c0100 ; undefined
  cc:	04000001 	add	z1.b, p0/m, z1.b, z0.b
  d0:	00776f70 	.inst	0x00776f70 ; undefined
  d4:	00351111 	.inst	0x00351111 ; NYI
  printf("factorial(6): %d.\n", factorial(6));
  d8:	91020000 	add	x0, x0, #0x80
  dc:	00000d6c 	udf	#3436
  e0:	11010000 	add	w0, w0, #0x40
  e4:	0001091d 	.inst	0x0001091d ; undefined
  e8:	60910200 	.inst	0x60910200 ; undefined
  ec:	73657202 	.inst	0x73657202 ; undefined
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  f0:	090a1300 	.inst	0x090a1300 ; undefined
  f4:	02000001 	.inst	0x02000001 ; undefined
  f8:	74027891 	.inst	0x74027891 ; undefined
  fc:	1300706d 	sbfx	w13, w3, #0, #29
 100:	00010913 	.inst	0x00010913 ; undefined
 104:	70910200 	adr	x0, fffffffffff22147 <main+0xfffffffffff2208b>
 108:	04080100 	smax	z0.b, p0/m, z0.b, z8.b
  return 0;
 10c:	00000000 	udf	#0
}
 110:	00000003 	udf	#3
 114:	35050900 	cbnz	w0, a234 <main+0xa178>
	...
 120:	44000000 	.inst	0x44000000 ; undefined
 124:	00000000 	udf	#0
 128:	01000000 	.inst	0x01000000 ; undefined
 12c:	00014a9c 	.inst	0x00014a9c ; undefined
 130:	006e0400 	.inst	0x006e0400 ; undefined
 134:	00351309 	.inst	0x00351309 ; NYI
 138:	91020000 	add	x0, x0, #0x80
 13c:	0072026c 	.inst	0x0072026c ; undefined
 140:	0035070b 	.inst	0x0035070b ; NYI
 144:	91020000 	add	x0, x0, #0x80
 148:	000e007c 	.inst	0x000e007c ; undefined
 14c:	01000000 	.inst	0x01000000 ; undefined
 150:	00350504 	.inst	0x00350504 ; NYI
	...
 15c:	00080000 	.inst	0x00080000 ; undefined
 160:	00000000 	udf	#0
 164:	9c010000 	ldr	q0, 2164 <main+0x20a8>
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
  return sizeof(int);
   0:	0b002401 	add	w1, w0, w0, lsl #9
}
   4:	030b3e0b 	.inst	0x030b3e0b ; undefined
{
   8:	0200000e 	.inst	0x0200000e ; undefined
   c:	08030034 	stxrb	w3, w20, [x1]
  int r = 1;
  10:	3b01213a 	.inst	0x3b01213a ; undefined
  14:	490b390b 	.inst	0x490b390b ; undefined
  while(n > 1)
  18:	00180213 	.inst	0x00180213 ; undefined
    r *= n--;
  1c:	012e0300 	.inst	0x012e0300 ; undefined
  20:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
  24:	3b01213a 	.inst	0x3b01213a ; undefined
  28:	270b390b 	.inst	0x270b390b ; undefined
  2c:	11134919 	add	w25, w8, #0x4d2
  30:	40071201 	.inst	0x40071201 ; undefined
  while(n > 1)
  34:	01197a18 	.inst	0x01197a18 ; undefined
  38:	04000013 	add	z19.b, p0/m, z19.b, z0.b
  3c:	08030005 	stxrb	w3, w5, [x0]
  return r;
  40:	3b01213a 	.inst	0x3b01213a ; undefined
}
  44:	490b390b 	.inst	0x490b390b ; undefined
  48:	00180213 	.inst	0x00180213 ; undefined
{
  4c:	01110500 	.inst	0x01110500 ; undefined
  50:	0b130e25 	add	w5, w17, w19, lsl #3
  54:	1f1b1f03 	fmadd	s3, s24, s27, s7
  double res = 1, tmp = base;
  58:	07120111 	.inst	0x07120111 ; undefined
  5c:	00001710 	udf	#5904
  60:	0b002406 	add	w6, w0, w0, lsl #9
  64:	030b3e0b 	.inst	0x030b3e0b ; undefined
  while(pow)
  68:	07000008 	.inst	0x07000008 ; undefined
    if(pow & 1)
  6c:	13490026 	.inst	0x13490026 ; undefined
  70:	2e080000 	ext	v0.8b, v0.8b, v8.8b, #0
  74:	03193f01 	.inst	0x03193f01 ; undefined
  78:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
      res *= tmp;
  7c:	270b3905 	.inst	0x270b3905 ; undefined
  80:	3c134919 	.inst	0x3c134919 ; undefined
  84:	00130119 	.inst	0x00130119 ; undefined
  88:	00050900 	.inst	0x00050900 ; undefined
    tmp *= tmp;
  8c:	00001349 	udf	#4937
  90:	0000180a 	udf	#6154
  94:	000f0b00 	.inst	0x000f0b00 ; undefined
    pow >>= 1;
  98:	13490b0b 	.inst	0x13490b0b ; undefined
  9c:	2e0c0000 	ext	v0.8b, v0.8b, v12.8b, #0
  a0:	03193f00 	.inst	0x03193f00 ; undefined
  while(pow)
  a4:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  a8:	490b390b 	.inst	0x490b390b ; undefined
  ac:	12011113 	and	w19, w8, #0x8000000f
  return res;
  b0:	7c184007 	stur	h7, [x0, #-124]
}
  b4:	0d000019 	st1	{v25.b}[0], [x0]
  b8:	0e030005 	tbl	v5.8b, {v0.16b}, v3.8b
{
  bc:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  c0:	13490b39 	.inst	0x13490b39 ; undefined
  printf("sizeof(int): %d\n", sizeofint());
  c4:	00001802 	udf	#6146
  c8:	3f002e0e 	.inst	0x3f002e0e ; undefined
  cc:	3a0e0319 	adcs	w25, w24, w14
  d0:	390b3b0b 	strb	w11, [x24, #718]
  d4:	1113490b 	add	w11, w8, #0x4d2
  printf("factorial(6): %d.\n", factorial(6));
  d8:	40071201 	.inst	0x40071201 ; undefined
  dc:	00197a18 	.inst	0x00197a18 ; undefined
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
  return sizeof(int);
   0:	0000002c 	udf	#44
}
   4:	00000002 	udf	#2
{
   8:	00080000 	.inst	0x00080000 ; undefined
	...
  while(n > 1)
  18:	00000118 	udf	#280
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
  return sizeof(int);
   0:	000000a9 	udf	#169
}
   4:	00080005 	.inst	0x00080005 ; undefined
{
   8:	00000033 	udf	#51
   c:	fb010104 	.inst	0xfb010104 ; undefined
  int r = 1;
  10:	01000d0e 	.inst	0x01000d0e ; undefined
  14:	00010101 	.inst	0x00010101 ; undefined
  while(n > 1)
  18:	00010000 	.inst	0x00010000 ; undefined
    r *= n--;
  1c:	01010100 	.inst	0x01010100 ; undefined
  20:	0000021f 	udf	#543
  24:	00000000 	udf	#0
  28:	01020000 	.inst	0x01020000 ; undefined
  2c:	030f021f 	.inst	0x030f021f ; undefined
	...
  while(n > 1)
  3c:	05010000 	orr	z0.s, z0.s, #0x1
  return r;
  40:	02090001 	.inst	0x02090001 ; undefined
	...
{
  4c:	130a0516 	sbfiz	w22, w8, #22, #2
  50:	23210105 	.inst	0x23210105 ; undefined
  54:	052f0705 	ext	z5.b, z5.b, z24.b, #121
  double res = 1, tmp = base;
  58:	0b052f08 	add	w8, w24, w5, lsl #11
  5c:	3c070521 	str	b1, [x9], #112
  60:	053b0b05 	ext	z5.b, z5.b, z24.b, #218
  64:	01053e0a 	.inst	0x01053e0a ; undefined
  while(pow)
  68:	0a053121 	and	w1, w9, w5, lsl #12
    if(pow & 1)
  6c:	2e13053d 	.inst	0x2e13053d ; undefined
  70:	052f0805 	ext	z5.b, z5.b, z0.b, #122
  74:	0705220c 	.inst	0x0705220c ; undefined
  78:	2f0b052e 	ushr	v14.8b, v9.8b, #5
      res *= tmp;
  7c:	3d4b0905 	ldr	b5, [x8, #706]
  80:	430a0537 	.inst	0x430a0537 ; undefined
  84:	31210105 	adds	w5, w8, #0x840
  88:	002f0305 	.inst	0x002f0305 ; NYI
    tmp *= tmp;
  8c:	06010402 	.inst	0x06010402 ; undefined
  90:	004b0620 	.inst	0x004b0620 ; undefined
  94:	06010402 	.inst	0x06010402 ; undefined
    pow >>= 1;
  98:	004b062e 	.inst	0x004b062e ; undefined
  9c:	06010402 	.inst	0x06010402 ; undefined
  a0:	060a054a 	.inst	0x060a054a ; undefined
  while(pow)
  a4:	2101053d 	.inst	0x2101053d ; undefined
  a8:	01000202 	.inst	0x01000202 ; undefined
  ac:	Address 0xac is out of bounds.


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
  return sizeof(int);
   0:	69736e75 	ldpsw	x21, x27, [x19, #-104]
}
   4:	64656e67 	.inst	0x64656e67 ; undefined
{
   8:	746e6920 	.inst	0x746e6920 ; undefined
   c:	736e7500 	.inst	0x736e7500 ; undefined
  int r = 1;
  10:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
  14:	68632064 	.inst	0x68632064 ; undefined
  while(n > 1)
  18:	73007261 	.inst	0x73007261 ; undefined
    r *= n--;
  1c:	6f657a69 	fcmla	v9.8h, v19.8h, v5.h[3], #270
  20:	746e6966 	.inst	0x746e6966 ; undefined
  24:	6e6f6c00 	umin	v0.8h, v0.8h, v15.8h
  28:	6e752067 	usubl2	v7.4s, v3.8h, v21.8h
  2c:	6e676973 	.inst	0x6e676973 ; undefined
  30:	69206465 	stgp	x5, x25, [x3, #-1024]
  while(n > 1)
  34:	6200746e 	.inst	0x6200746e ; undefined
  38:	00657361 	.inst	0x00657361 ; undefined
  3c:	72616863 	.inst	0x72616863 ; undefined
  return r;
  40:	554e4700 	.inst	0x554e4700 ; undefined
}
  44:	37314320 	tbnz	w0, #6, 28a8 <main+0x27ec>
  48:	2e333120 	usubw	v0.8h, v9.8h, v19.8b
{
  4c:	20302e31 	.inst	0x20302e31 ; undefined
  50:	72616d2d 	.inst	0x72616d2d ; undefined
  54:	613d6863 	.inst	0x613d6863 ; undefined
  double res = 1, tmp = base;
  58:	39766d72 	ldrb	w18, [x11, #3483]
  5c:	2d20612d 	stp	s13, s24, [x9, #-256]
  60:	74696c6d 	.inst	0x74696c6d ; undefined
  64:	2d656c74 	ldp	s20, s27, [x3, #-216]
  while(pow)
  68:	69646e65 	ldpsw	x5, x27, [x19, #-224]
    if(pow & 1)
  6c:	2d206e61 	stp	s1, s27, [x19, #-256]
  70:	6962616d 	ldpsw	x13, x24, [x11, #-240]
  74:	36706c3d 	tbz	w29, #14, df8 <main+0xd3c>
  78:	672d2034 	.inst	0x672d2034 ; undefined
      res *= tmp;
  7c:	69616d00 	ldpsw	x0, x27, [x8, #-248]
  80:	6f6c006e 	mla	v14.8h, v3.8h, v12.h[2]
  84:	6920676e 	stgp	x14, x25, [x27, #-1024]
  88:	6600746e 	.inst	0x6600746e ; undefined
    tmp *= tmp;
  8c:	6f746361 	umlsl2	v1.4s, v27.8h, v4.h[3]
  90:	6c616972 	ldnp	d18, d26, [x11, #-496]
  94:	756f6400 	.inst	0x756f6400 ; undefined
    pow >>= 1;
  98:	00656c62 	.inst	0x00656c62 ; undefined
  9c:	726f6873 	.inst	0x726f6873 ; undefined
  a0:	6e752074 	usubl2	v20.4s, v3.8h, v21.8h
  while(pow)
  a4:	6e676973 	.inst	0x6e676973 ; undefined
  a8:	69206465 	stgp	x5, x25, [x3, #-1024]
  ac:	7000746e 	adr	x14, f3b <main+0xe7f>
  return res;
  b0:	746e6972 	.inst	0x746e6972 ; undefined
}
  b4:	68730066 	.inst	0x68730066 ; undefined
  b8:	2074726f 	.inst	0x2074726f ; undefined
{
  bc:	00746e69 	.inst	0x00746e69 ; undefined
  c0:	776f7069 	.inst	0x776f7069 ; undefined
  printf("sizeof(int): %d\n", sizeofint());
  c4:	67697300 	.inst	0x67697300 ; undefined
  c8:	2064656e 	.inst	0x2064656e ; undefined
  cc:	72616863 	.inst	0x72616863 ; undefined
	...

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
  return sizeof(int);
   0:	6d6f682f 	ldp	d15, d26, [x1, #-272]
}
   4:	2f642f65 	.inst	0x2f642f65 ; undefined
{
   8:	61732f5f 	.inst	0x61732f5f ; undefined
   c:	775f6566 	.inst	0x775f6566 ; undefined
  int r = 1;
  10:	6f772f66 	.inst	0x6f772f66 ; undefined
  14:	532f6b72 	.inst	0x532f6b72 ; undefined
  while(n > 1)
  18:	2f556250 	umlsl	v16.4s, v18.4h, v5.h[1]
    r *= n--;
  1c:	72756f63 	.inst	0x72756f63 ; undefined
  20:	2f736573 	.inst	0x2f736573 ; undefined
  24:	706d6f43 	adr	x3, dae0f <main+0xdad53>
  28:	72657475 	.inst	0x72657475 ; undefined
  2c:	6372415f 	.inst	0x6372415f ; undefined
  30:	65746968 	fnmls	z8.h, p2/m, z11.h, z20.h
  while(n > 1)
  34:	72757463 	.inst	0x72757463 ; undefined
  38:	50532d65 	adr	x5, a65e6 <main+0xa652a>
  3c:	432d5562 	.inst	0x432d5562 ; undefined
  return r;
  40:	30352e42 	adr	x2, 6a609 <main+0x6a54d>
}
  44:	652f3038 	.inst	0x652f3038 ; undefined
  48:	706d6178 	adr	x24, dac77 <main+0xdabbb>
{
  4c:	2f73656c 	.inst	0x2f73656c ; undefined
  50:	736f7263 	.inst	0x736f7263 ; undefined
  54:	6f632d73 	.inst	0x6f632d73 ; undefined
  double res = 1, tmp = base;
  58:	6c69706d 	ldnp	d13, d28, [x3, #-368]
  5c:	00676e69 	.inst	0x00676e69 ; undefined
  60:	2e656363 	rsubhn	v3.4h, v27.4s, v5.4s
  64:	682f0063 	.inst	0x682f0063 ; undefined
  while(pow)
  68:	2f656d6f 	.inst	0x2f656d6f ; undefined
    if(pow & 1)
  6c:	2f5f2f64 	.inst	0x2f5f2f64 ; undefined
  70:	65666173 	fnmls	z19.h, p0/m, z11.h, z6.h
  74:	2f66775f 	.inst	0x2f66775f ; undefined
  78:	6b726f77 	.inst	0x6b726f77 ; undefined
      res *= tmp;
  7c:	6250532f 	.inst	0x6250532f ; undefined
  80:	6f632f55 	.inst	0x6f632f55 ; undefined
  84:	65737275 	fnmls	z21.h, p4/m, z19.h, z19.h
  88:	6f432f73 	.inst	0x6f432f73 ; undefined
    tmp *= tmp;
  8c:	7475706d 	.inst	0x7475706d ; undefined
  90:	415f7265 	.inst	0x415f7265 ; undefined
  94:	69686372 	ldpsw	x18, x24, [x27, #-192]
    pow >>= 1;
  98:	74636574 	.inst	0x74636574 ; undefined
  9c:	2d657275 	ldp	s21, s28, [x19, #-216]
  a0:	55625053 	.inst	0x55625053 ; undefined
  while(pow)
  a4:	2e42432d 	.inst	0x2e42432d ; undefined
  a8:	30383035 	adr	x21, 706ad <main+0x705f1>
  ac:	6178652f 	.inst	0x6178652f ; undefined
  return res;
  b0:	656c706d 	fnmls	z13.h, p4/m, z3.h, z12.h
}
  b4:	72632f73 	.inst	0x72632f73 ; undefined
  b8:	2d73736f 	ldp	s15, s28, [x27, #-104]
{
  bc:	706d6f63 	adr	x3, daeab <main+0xdadef>
  c0:	6e696c69 	umin	v9.8h, v3.8h, v9.8h
  printf("sizeof(int): %d\n", sizeofint());
  c4:	752f0067 	.inst	0x752f0067 ; undefined
  c8:	612f7273 	.inst	0x612f7273 ; undefined
  cc:	68637261 	.inst	0x68637261 ; undefined
  d0:	6c2d3436 	stnp	d22, d13, [x1, #-304]
  d4:	78756e69 	.inst	0x78756e69 ; undefined
  printf("factorial(6): %d.\n", factorial(6));
  d8:	756e672d 	.inst	0x756e672d ; undefined
  dc:	636e692f 	.inst	0x636e692f ; undefined
  e0:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
  e4:	65636300 	fnmls	z0.h, p0/m, z24.h, z3.h
  e8:	6300632e 	.inst	0x6300632e ; undefined
  ec:	632e6563 	.inst	0x632e6563 ; undefined
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  f0:	64747300 	.inst	0x64747300 ; undefined
  f4:	682e6f69 	.inst	0x682e6f69 ; undefined
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
  return sizeof(int);
   0:	43434700 	.inst	0x43434700 ; undefined
}
   4:	4728203a 	.inst	0x4728203a ; undefined
{
   8:	2029554e 	.inst	0x2029554e ; undefined
   c:	312e3331 	adds	w17, w25, #0xb8c
  int r = 1;
  10:	Address 0x10 is out of bounds.


Disassembly of section .eh_frame:

0000000000000000 <.eh_frame>:
   0:	00000010 	udf	#16
   4:	00000000 	udf	#0
   8:	00527a01 	.inst	0x00527a01 ; undefined
   c:	011e7804 	.inst	0x011e7804 ; undefined
  10:	001f0c1b 	.inst	0x001f0c1b ; undefined
  14:	00000010 	udf	#16
  18:	00000018 	udf	#24
  1c:	00000000 	udf	#0
  20:	00000008 	udf	#8
  24:	00000000 	udf	#0
  28:	00000014 	udf	#20
  2c:	0000002c 	udf	#44
  30:	00000000 	udf	#0
  34:	00000044 	udf	#68
  38:	200e4100 	.inst	0x200e4100 ; undefined
  3c:	00000e4f 	udf	#3663
  40:	00000014 	udf	#20
  44:	00000044 	udf	#68
  48:	00000000 	udf	#0
  4c:	00000070 	udf	#112
  50:	200e4100 	.inst	0x200e4100 ; undefined
  54:	00000e5a 	udf	#3674
  58:	0000001c 	udf	#28
  5c:	0000005c 	udf	#92
  60:	00000000 	udf	#0
  64:	0000005c 	udf	#92
  68:	100e4100 	adr	x0, 1c888 <main+0x1c7cc>
  6c:	019e029d 	.inst	0x019e029d ; undefined
  70:	0eddde55 	.inst	0x0eddde55 ; undefined
  74:	00000000 	udf	#0
