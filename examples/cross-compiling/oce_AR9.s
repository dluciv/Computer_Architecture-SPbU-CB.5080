
cce_AR9.o:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <sizeofint>:
#include <stdio.h>

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

000000000000004c <main>:

int main()
{
  4c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  50:	910003fd 	mov	x29, sp
  printf("%d\n", factorial(6));
  54:	528000c0 	mov	w0, #0x6                   	// #6
  58:	94000000 	bl	8 <factorial>
  5c:	2a0003e1 	mov	w1, w0
  60:	90000000 	adrp	x0, 0 <sizeofint>
  64:	91000000 	add	x0, x0, #0x0
  68:	94000000 	bl	0 <printf>
  return 0;
  6c:	52800000 	mov	w0, #0x0                   	// #0
}
  70:	a8c17bfd 	ldp	x29, x30, [sp], #16
  74:	d65f03c0 	ret

Disassembly of section .rodata:

0000000000000000 <.rodata>:
   0:	000a6425 	.inst	0x000a6425 ; undefined

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
  return sizeof(int);
   0:	00000106 	udf	#262
}
   4:	08010005 	stxrb	w1, w5, [x0]
{
   8:	00000000 	udf	#0
   c:	00000002 	udf	#2
  int r = 1;
  10:	00001d00 	udf	#7424
	...
    r *= n--;
  20:	00780000 	.inst	0x00780000 ; undefined
	...
  2c:	08010000 	stxrb	w1, w0, [x0]
  30:	00000007 	udf	#7
  while(n > 1)
  34:	05040300 	.inst	0x05040300 ; undefined
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
  printf("%d\n", factorial(6));
  54:	00000000 	udf	#0
  58:	00050201 	.inst	0x00050201 ; undefined
  5c:	01000000 	.inst	0x01000000 ; undefined
  60:	00000508 	udf	#1288
  64:	01010000 	.inst	0x01010000 ; undefined
  68:	00000008 	udf	#8
  return 0;
  6c:	00660400 	.inst	0x00660400 ; undefined
}
  70:	00050000 	.inst	0x00050000 ; undefined
  74:	02000000 	.inst	0x02000000 ; undefined
  78:	350c0164 	cbnz	w4, 180a4 <main+0x18058>
  7c:	8a000000 	and	x0, x0, x0
  80:	06000000 	.inst	0x06000000 ; undefined
  84:	0000008a 	udf	#138
  88:	08080007 	stxrb	w8, w7, [x0]
  8c:	0000006d 	udf	#109
  90:	00000009 	udf	#9
  94:	05100100 	mov	z0.b, p0/z, #8
  98:	00000035 	udf	#53
	...
  a4:	0000002c 	udf	#44
  a8:	00000000 	udf	#0
  ac:	000a9c01 	.inst	0x000a9c01 ; undefined
  b0:	01000000 	.inst	0x01000000 ; undefined
  b4:	00350508 	.inst	0x00350508 ; NYI
	...
  c0:	00440000 	.inst	0x00440000 ; undefined
  c4:	00000000 	udf	#0
  c8:	9c010000 	ldr	q0, 20c8 <main+0x207c>
  cc:	000000eb 	udf	#235
  d0:	01006e0b 	.inst	0x01006e0b ; undefined
  d4:	00351308 	.inst	0x00351308 ; NYI
  d8:	91020000 	add	x0, x0, #0x80
  dc:	00720c6c 	.inst	0x00720c6c ; undefined
  e0:	35070a01 	cbnz	w1, e220 <main+0xe1d4>
  e4:	02000000 	.inst	0x02000000 ; undefined
  e8:	0d007c91 	.inst	0x0d007c91 ; undefined
  ec:	00000000 	udf	#0
  f0:	35050301 	cbnz	w1, a150 <main+0xa104>
	...
  fc:	08000000 	stxrb	w0, w0, [x0]
 100:	00000000 	udf	#0
 104:	01000000 	.inst	0x01000000 ; undefined
 108:	Address 0x108 is out of bounds.


Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
  return sizeof(int);
   0:	0b002401 	add	w1, w0, w0, lsl #9
}
   4:	030b3e0b 	.inst	0x030b3e0b ; undefined
{
   8:	0200000e 	.inst	0x0200000e ; undefined
   c:	0e250111 	saddl	v17.8h, v8.8b, v5.8b
  int r = 1;
  10:	1f030b13 	fmadd	s19, s24, s3, s2
  14:	01111f1b 	.inst	0x01111f1b ; undefined
  while(n > 1)
  18:	17100712 	b	fffffffffc401c60 <main+0xfffffffffc401c14>
    r *= n--;
  1c:	24030000 	cmphs	p0.b, p0/z, z0.b, z3.b
  20:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
  24:	0008030b 	.inst	0x0008030b ; undefined
  28:	00260400 	.inst	0x00260400 ; NYI
  2c:	00001349 	udf	#4937
  30:	3f012e05 	.inst	0x3f012e05 ; undefined
  while(n > 1)
  34:	3a0e0319 	adcs	w25, w24, w14
  38:	39053b0b 	strb	w11, [x24, #334]
  3c:	4919270b 	.inst	0x4919270b ; undefined
  return r;
  40:	01193c13 	.inst	0x01193c13 ; undefined
}
  44:	06000013 	.inst	0x06000013 ; undefined
  48:	13490005 	.inst	0x13490005 ; undefined
{
  4c:	18070000 	ldr	w0, e04c <main+0xe000>
  50:	08000000 	stxrb	w0, w0, [x0]
  printf("%d\n", factorial(6));
  54:	0b0b000f 	add	w15, w0, w11
  58:	00001349 	udf	#4937
  5c:	3f002e09 	.inst	0x3f002e09 ; undefined
  60:	3a0e0319 	adcs	w25, w24, w14
  64:	390b3b0b 	strb	w11, [x24, #718]
  68:	1113490b 	add	w11, w8, #0x4d2
  return 0;
  6c:	40071201 	.inst	0x40071201 ; undefined
}
  70:	00197c18 	.inst	0x00197c18 ; undefined
  74:	012e0a00 	.inst	0x012e0a00 ; undefined
  78:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
  7c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  80:	19270b39 	.inst	0x19270b39 ; undefined
  84:	01111349 	.inst	0x01111349 ; undefined
  88:	18400712 	ldr	w18, 80168 <main+0x8011c>
  8c:	1301197a 	sbfx	w26, w11, #1, #6
  90:	050b0000 	.inst	0x050b0000 ; undefined
  94:	3a080300 	adcs	w0, w24, w8
  98:	390b3b0b 	strb	w11, [x24, #718]
  9c:	0213490b 	.inst	0x0213490b ; undefined
  a0:	0c000018 	st4	{v24.8b-v27.8b}, [x0]
  a4:	08030034 	stxrb	w3, w20, [x1]
  a8:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  ac:	13490b39 	.inst	0x13490b39 ; undefined
  b0:	00001802 	udf	#6146
  b4:	3f002e0d 	.inst	0x3f002e0d ; undefined
  b8:	3a0e0319 	adcs	w25, w24, w14
  bc:	390b3b0b 	strb	w11, [x24, #718]
  c0:	1113490b 	add	w11, w8, #0x4d2
  c4:	40071201 	.inst	0x40071201 ; undefined
  c8:	00197a18 	.inst	0x00197a18 ; undefined
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
  18:	00000078 	udf	#120
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
  return sizeof(int);
   0:	0000007b 	udf	#123
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
  4c:	130a0515 	sbfiz	w21, w8, #22, #2
  50:	23210105 	.inst	0x23210105 ; undefined
  printf("%d\n", factorial(6));
  54:	052f0705 	ext	z5.b, z5.b, z24.b, #121
  58:	0b052f08 	add	w8, w24, w5, lsl #11
  5c:	3c070521 	str	b1, [x9], #112
  60:	053b0b05 	ext	z5.b, z5.b, z24.b, #218
  64:	01053e0a 	.inst	0x01053e0a ; undefined
  68:	03053121 	.inst	0x03053121 ; undefined
  return 0;
  6c:	0402002f 	.inst	0x0402002f ; undefined
}
  70:	052e0601 	ext	z1.b, z1.b, z16.b, #113
  74:	054b060a 	.inst	0x054b060a ; undefined
  78:	02022101 	.inst	0x02022101 ; undefined
  7c:	Address 0x7c is out of bounds.


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
  34:	6300746e 	.inst	0x6300746e ; undefined
  38:	00726168 	.inst	0x00726168 ; undefined
  3c:	20554e47 	.inst	0x20554e47 ; undefined
  return r;
  40:	20373143 	.inst	0x20373143 ; undefined
}
  44:	312e3331 	adds	w17, w25, #0xb8c
  48:	2d20302e 	stp	s14, s12, [x1, #-256]
{
  4c:	6372616d 	.inst	0x6372616d ; undefined
  50:	72613d68 	.inst	0x72613d68 ; undefined
  printf("%d\n", factorial(6));
  54:	2d39766d 	stp	s13, s29, [x19, #-56]
  58:	6d2d2061 	stp	d1, d8, [x3, #-304]
  5c:	7474696c 	.inst	0x7474696c ; undefined
  60:	652d656c 	.inst	0x652d656c ; undefined
  64:	6169646e 	.inst	0x6169646e ; undefined
  68:	6d2d206e 	stp	d14, d8, [x3, #-304]
  return 0;
  6c:	3d696261 	ldr	b1, [x19, #2648]
}
  70:	3436706c 	cbz	w12, 6ce7c <main+0x6ce30>
  74:	00672d20 	.inst	0x00672d20 ; undefined
  78:	6e69616d 	rsubhn2	v13.8h, v11.4s, v9.4s
  7c:	6e6f6c00 	umin	v0.8h, v0.8h, v15.8h
  80:	6e692067 	usubl2	v7.4s, v3.8h, v9.8h
  84:	61660074 	.inst	0x61660074 ; undefined
  88:	726f7463 	.inst	0x726f7463 ; undefined
  8c:	006c6169 	.inst	0x006c6169 ; undefined
  90:	726f6873 	.inst	0x726f6873 ; undefined
  94:	6e752074 	usubl2	v20.4s, v3.8h, v21.8h
  98:	6e676973 	.inst	0x6e676973 ; undefined
  9c:	69206465 	stgp	x5, x25, [x3, #-1024]
  a0:	7000746e 	adr	x14, f2f <main+0xee3>
  a4:	746e6972 	.inst	0x746e6972 ; undefined
  a8:	68730066 	.inst	0x68730066 ; undefined
  ac:	2074726f 	.inst	0x2074726f ; undefined
  b0:	00746e69 	.inst	0x00746e69 ; undefined
  b4:	6e676973 	.inst	0x6e676973 ; undefined
  b8:	63206465 	.inst	0x63206465 ; undefined
  bc:	00726168 	.inst	0x00726168 ; undefined

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
  24:	706d6f43 	adr	x3, dae0f <main+0xdadc3>
  28:	72657475 	.inst	0x72657475 ; undefined
  2c:	6372415f 	.inst	0x6372415f ; undefined
  30:	65746968 	fnmls	z8.h, p2/m, z11.h, z20.h
  while(n > 1)
  34:	72757463 	.inst	0x72757463 ; undefined
  38:	50532d65 	adr	x5, a65e6 <main+0xa659a>
  3c:	432d5562 	.inst	0x432d5562 ; undefined
  return r;
  40:	30352e42 	adr	x2, 6a609 <main+0x6a5bd>
}
  44:	652f3038 	.inst	0x652f3038 ; undefined
  48:	706d6178 	adr	x24, dac77 <main+0xdac2b>
{
  4c:	2f73656c 	.inst	0x2f73656c ; undefined
  50:	736f7263 	.inst	0x736f7263 ; undefined
  printf("%d\n", factorial(6));
  54:	6f632d73 	.inst	0x6f632d73 ; undefined
  58:	6c69706d 	ldnp	d13, d28, [x3, #-368]
  5c:	00676e69 	.inst	0x00676e69 ; undefined
  60:	2e656363 	rsubhn	v3.4h, v27.4s, v5.4s
  64:	682f0063 	.inst	0x682f0063 ; undefined
  68:	2f656d6f 	.inst	0x2f656d6f ; undefined
  return 0;
  6c:	2f5f2f64 	.inst	0x2f5f2f64 ; undefined
}
  70:	65666173 	fnmls	z19.h, p0/m, z11.h, z6.h
  74:	2f66775f 	.inst	0x2f66775f ; undefined
  78:	6b726f77 	.inst	0x6b726f77 ; undefined
  7c:	6250532f 	.inst	0x6250532f ; undefined
  80:	6f632f55 	.inst	0x6f632f55 ; undefined
  84:	65737275 	fnmls	z21.h, p4/m, z19.h, z19.h
  88:	6f432f73 	.inst	0x6f432f73 ; undefined
  8c:	7475706d 	.inst	0x7475706d ; undefined
  90:	415f7265 	.inst	0x415f7265 ; undefined
  94:	69686372 	ldpsw	x18, x24, [x27, #-192]
  98:	74636574 	.inst	0x74636574 ; undefined
  9c:	2d657275 	ldp	s21, s28, [x19, #-216]
  a0:	55625053 	.inst	0x55625053 ; undefined
  a4:	2e42432d 	.inst	0x2e42432d ; undefined
  a8:	30383035 	adr	x21, 706ad <main+0x70661>
  ac:	6178652f 	.inst	0x6178652f ; undefined
  b0:	656c706d 	fnmls	z13.h, p4/m, z3.h, z12.h
  b4:	72632f73 	.inst	0x72632f73 ; undefined
  b8:	2d73736f 	ldp	s15, s28, [x27, #-104]
  bc:	706d6f63 	adr	x3, daeab <main+0xdae5f>
  c0:	6e696c69 	umin	v9.8h, v3.8h, v9.8h
  c4:	752f0067 	.inst	0x752f0067 ; undefined
  c8:	612f7273 	.inst	0x612f7273 ; undefined
  cc:	68637261 	.inst	0x68637261 ; undefined
  d0:	6c2d3436 	stnp	d22, d13, [x1, #-304]
  d4:	78756e69 	.inst	0x78756e69 ; undefined
  d8:	756e672d 	.inst	0x756e672d ; undefined
  dc:	636e692f 	.inst	0x636e692f ; undefined
  e0:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
  e4:	65636300 	fnmls	z0.h, p0/m, z24.h, z3.h
  e8:	6300632e 	.inst	0x6300632e ; undefined
  ec:	632e6563 	.inst	0x632e6563 ; undefined
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
  40:	0000001c 	udf	#28
  44:	00000044 	udf	#68
  48:	00000000 	udf	#0
  4c:	0000002c 	udf	#44
  50:	100e4100 	adr	x0, 1c870 <main+0x1c824>
  54:	019e029d 	.inst	0x019e029d ; undefined
  58:	0eddde49 	.inst	0x0eddde49 ; undefined
  5c:	00000000 	udf	#0
