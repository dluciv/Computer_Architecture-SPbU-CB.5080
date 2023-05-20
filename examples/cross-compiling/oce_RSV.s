
cce_RSV.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <sizeofint>:
#include <stdio.h>

int sizeofint()
{
   0:	ff010113          	addi	sp,sp,-16
   4:	00813423          	sd	s0,8(sp)
   8:	01010413          	addi	s0,sp,16
  return sizeof(int);
   c:	00400793          	li	a5,4
}
  10:	00078513          	mv	a0,a5
  14:	00813403          	ld	s0,8(sp)
  18:	01010113          	addi	sp,sp,16
  1c:	00008067          	ret

0000000000000020 <factorial>:

int factorial(int n)
{
  20:	fd010113          	addi	sp,sp,-48
  24:	02813423          	sd	s0,40(sp)
  28:	03010413          	addi	s0,sp,48
  2c:	00050793          	mv	a5,a0
  30:	fcf42e23          	sw	a5,-36(s0)
  int r = 1;
  34:	00100793          	li	a5,1
  38:	fef42623          	sw	a5,-20(s0)
  while(n > 1)
  3c:	01c0006f          	j	58 <.L4>

0000000000000040 <.L5>:
    r *= n--;
  40:	fdc42783          	lw	a5,-36(s0)
  44:	fff7871b          	addiw	a4,a5,-1
  48:	fce42e23          	sw	a4,-36(s0)
  4c:	fec42703          	lw	a4,-20(s0)
  50:	02f707bb          	mulw	a5,a4,a5
  54:	fef42623          	sw	a5,-20(s0)

0000000000000058 <.L4>:
  while(n > 1)
  58:	fdc42783          	lw	a5,-36(s0)
  5c:	0007871b          	sext.w	a4,a5
  60:	00100793          	li	a5,1
  64:	fce7cee3          	blt	a5,a4,40 <.L5>
  return r;
  68:	fec42783          	lw	a5,-20(s0)
}
  6c:	00078513          	mv	a0,a5
  70:	02813403          	ld	s0,40(sp)
  74:	03010113          	addi	sp,sp,48
  78:	00008067          	ret

000000000000007c <main>:

int main()
{
  7c:	ff010113          	addi	sp,sp,-16
  80:	00113423          	sd	ra,8(sp)
  84:	00813023          	sd	s0,0(sp)
  88:	01010413          	addi	s0,sp,16
  printf("%d\n", factorial(6));
  8c:	00600513          	li	a0,6
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <main+0x14>
  98:	00050793          	mv	a5,a0
  9c:	00078593          	mv	a1,a5
  a0:	000007b7          	lui	a5,0x0
  a4:	00078513          	mv	a0,a5
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <main+0x2c>
  return 0;
  b0:	00000793          	li	a5,0
}
  b4:	00078513          	mv	a0,a5
  b8:	00813083          	ld	ra,8(sp)
  bc:	00013403          	ld	s0,0(sp)
  c0:	01010113          	addi	sp,sp,16
  c4:	00008067          	ret

Disassembly of section .rodata:

0000000000000000 <.LC0>:
   0:	6425                	.2byte	0x6425
   2:	000a                	.2byte	0xa

Disassembly of section .debug_info:

0000000000000000 <.Ldebug_info0>:
   0:	011a                	.2byte	0x11a
{
   2:	0000                	.2byte	0x0
   4:	0005                	.2byte	0x5
   6:	0801                	.2byte	0x801
   8:	0000                	.2byte	0x0
   a:	0000                	.2byte	0x0
  return sizeof(int);
   c:	0002                	.2byte	0x2
   e:	0000                	.2byte	0x0
}
  10:	1d00                	.2byte	0x1d00
	...
{
  2e:	0101                	.2byte	0x101
  30:	0006                	.2byte	0x6
  32:	0000                	.2byte	0x0
  int r = 1;
  34:	0100                	.2byte	0x100
  36:	0801                	.2byte	0x801
  38:	0000                	.2byte	0x0
  3a:	0000                	.2byte	0x0
  while(n > 1)
  3c:	0201                	.2byte	0x201
  3e:	0005                	.2byte	0x5
    r *= n--;
  40:	0000                	.2byte	0x0
  42:	0100                	.2byte	0x100
  44:	0702                	.2byte	0x702
  46:	0000                	.2byte	0x0
  48:	0000                	.2byte	0x0
  4a:	69050403          	lb	s0,1680(a0)
  4e:	746e                	.2byte	0x746e
  50:	0100                	.2byte	0x100
  52:	0704                	.2byte	0x704
  54:	0000                	.2byte	0x0
  56:	0000                	.2byte	0x0
  while(n > 1)
  58:	0801                	.2byte	0x801
  5a:	0005                	.2byte	0x5
  5c:	0000                	.2byte	0x0
  5e:	0100                	.2byte	0x100
  60:	0708                	.2byte	0x708
  62:	0000                	.2byte	0x0
  64:	0000                	.2byte	0x0
  66:	0801                	.2byte	0x801
  return r;
  68:	0005                	.2byte	0x5
  6a:	0000                	.2byte	0x0
}
  6c:	0100                	.2byte	0x100
  6e:	0410                	.2byte	0x410
  70:	0000                	.2byte	0x0
  72:	0000                	.2byte	0x0
  74:	0101                	.2byte	0x101
  76:	0008                	.2byte	0x8
  78:	0000                	.2byte	0x0
  7a:	0400                	.2byte	0x400
{
  7c:	0074                	.2byte	0x74
  7e:	0000                	.2byte	0x0
  80:	0805                	.2byte	0x805
  82:	0000007b          	.4byte	0x7b
  86:	0801                	.2byte	0x801
  88:	00000007          	.4byte	0x7
  printf("%d\n", factorial(6));
  8c:	0600                	.2byte	0x600
  8e:	0000                	.2byte	0x0
  90:	0000                	.2byte	0x0
  92:	c802                	.2byte	0xc802
  94:	4a05                	.2byte	0x4a05
  96:	0000                	.2byte	0x0
  98:	a400                	.2byte	0xa400
  9a:	0000                	.2byte	0x0
  9c:	0700                	.2byte	0x700
  9e:	0080                	.2byte	0x80
  a0:	0000                	.2byte	0x0
  a2:	0008                	.2byte	0x8
  a4:	0009                	.2byte	0x9
  a6:	0000                	.2byte	0x0
  a8:	0100                	.2byte	0x100
  aa:	0510                	.2byte	0x510
  ac:	004a                	.2byte	0x4a
	...
}
  be:	0000                	.2byte	0x0
  c0:	9c01                	.2byte	0x9c01
  c2:	000a                	.2byte	0xa
  c4:	0000                	.2byte	0x0
  c6:	0100                	.2byte	0x100
  c8:	0508                	.2byte	0x508
  ca:	004a                	.2byte	0x4a
	...
  dc:	0000                	.2byte	0x0
  de:	9c01                	.2byte	0x9c01
  e0:	00ff                	.2byte	0xff
  e2:	0000                	.2byte	0x0
  e4:	01006e0b          	.4byte	0x1006e0b
  e8:	1308                	.2byte	0x1308
  ea:	004a                	.2byte	0x4a
  ec:	0000                	.2byte	0x0
  ee:	9102                	.2byte	0x9102
  f0:	0c5c                	.2byte	0xc5c
  f2:	0072                	.2byte	0x72
  f4:	0a01                	.2byte	0xa01
  f6:	00004a07          	.4byte	0x4a07
  fa:	0200                	.2byte	0x200
  fc:	6c91                	.2byte	0x6c91
  fe:	0d00                	.2byte	0xd00
 100:	0000                	.2byte	0x0
 102:	0000                	.2byte	0x0
 104:	0301                	.2byte	0x301
 106:	4a05                	.2byte	0x4a05
	...
 118:	0000                	.2byte	0x0
 11a:	0100                	.2byte	0x100
 11c:	009c                	.2byte	0x9c

Disassembly of section .debug_abbrev:

0000000000000000 <.Ldebug_abbrev0>:
   0:	2401                	.2byte	0x2401
{
   2:	0b00                	.2byte	0xb00
   4:	030b3e0b          	.4byte	0x30b3e0b
   8:	000e                	.2byte	0xe
   a:	0200                	.2byte	0x200
  return sizeof(int);
   c:	0111                	.2byte	0x111
   e:	0e25                	.2byte	0xe25
}
  10:	1f030b13          	addi	s6,t1,496
  14:	01111f1b          	slliw	t5,sp,0x11
  18:	0712                	.2byte	0x712
  1a:	1710                	.2byte	0x1710
  1c:	0000                	.2byte	0x0
  1e:	0b002403          	lw	s0,176(zero) # b0 <.Ldebug_abbrev0+0xb0>
{
  22:	030b3e0b          	.4byte	0x30b3e0b
  26:	0008                	.2byte	0x8
  28:	0400                	.2byte	0x400
  2a:	0026                	.2byte	0x26
  2c:	1349                	.2byte	0x1349
  2e:	0000                	.2byte	0x0
  30:	0f05                	.2byte	0xf05
  32:	0b00                	.2byte	0xb00
  int r = 1;
  34:	0013490b          	.4byte	0x13490b
  38:	0600                	.2byte	0x600
  3a:	012e                	.2byte	0x12e
  while(n > 1)
  3c:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
    r *= n--;
  44:	0b39                	.2byte	0xb39
  46:	13491927          	.4byte	0x13491927
  4a:	193c                	.2byte	0x193c
  4c:	1301                	.2byte	0x1301
  4e:	0000                	.2byte	0x0
  50:	49000507          	.4byte	0x49000507
  54:	08000013          	li	zero,128
  while(n > 1)
  58:	0018                	.2byte	0x18
  5a:	0000                	.2byte	0x0
  5c:	2e09                	.2byte	0x2e09
  5e:	3f00                	.2byte	0x3f00
  60:	0319                	.2byte	0x319
  62:	3a0e                	.2byte	0x3a0e
  64:	390b3b0b          	.4byte	0x390b3b0b
  return r;
  68:	1113490b          	.4byte	0x1113490b
}
  6c:	1201                	.2byte	0x1201
  6e:	7c184007          	.4byte	0x7c184007
  72:	0019                	.2byte	0x19
  74:	0a00                	.2byte	0xa00
  76:	012e                	.2byte	0x12e
  78:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
{
  80:	0b39                	.2byte	0xb39
  82:	13491927          	.4byte	0x13491927
  86:	0111                	.2byte	0x111
  88:	0712                	.2byte	0x712
  8a:	1840                	.2byte	0x1840
  printf("%d\n", factorial(6));
  8c:	197a                	.2byte	0x197a
  8e:	1301                	.2byte	0x1301
  90:	0000                	.2byte	0x0
  92:	0300050b          	.4byte	0x300050b
  96:	3a08                	.2byte	0x3a08
  98:	390b3b0b          	.4byte	0x390b3b0b
  9c:	0213490b          	.4byte	0x213490b
  a0:	0018                	.2byte	0x18
  a2:	0c00                	.2byte	0xc00
  a4:	0034                	.2byte	0x34
  a6:	0b3a0803          	lb	a6,179(s4)
  aa:	0b390b3b          	.4byte	0xb390b3b
  ae:	1349                	.2byte	0x1349
  return 0;
  b0:	1802                	.2byte	0x1802
  b2:	0000                	.2byte	0x0
}
  b4:	2e0d                	.2byte	0x2e0d
  b6:	3f00                	.2byte	0x3f00
  b8:	0319                	.2byte	0x319
  ba:	3a0e                	.2byte	0x3a0e
  bc:	390b3b0b          	.4byte	0x390b3b0b
  c0:	1113490b          	.4byte	0x1113490b
  c4:	1201                	.2byte	0x1201
  c6:	7a184007          	.4byte	0x7a184007
  ca:	0019                	.2byte	0x19
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
{
   0:	002c                	.2byte	0x2c
   2:	0000                	.2byte	0x0
   4:	0002                	.2byte	0x2
   6:	0000                	.2byte	0x0
   8:	0000                	.2byte	0x0
   a:	0008                	.2byte	0x8
	...

Disassembly of section .debug_line:

0000000000000000 <.Ldebug_line0>:
   0:	000000bb          	addw	ra,zero,zero
   4:	0005                	.2byte	0x5
   6:	0008                	.2byte	0x8
   8:	00000033          	add	zero,zero,zero
  return sizeof(int);
   c:	0101                	.2byte	0x101
   e:	fb01                	.2byte	0xfb01
}
  10:	0d0e                	.2byte	0xd0e
  12:	0100                	.2byte	0x100
  14:	0101                	.2byte	0x101
  16:	0001                	.2byte	0x1
  18:	0000                	.2byte	0x0
  1a:	0001                	.2byte	0x1
  1c:	0100                	.2byte	0x100
  1e:	0101                	.2byte	0x101
{
  20:	021f 0000 0000      	.byte	0x1f, 0x02, 0x00, 0x00, 0x00, 0x00
  26:	0000                	.2byte	0x0
  28:	0000                	.2byte	0x0
  2a:	0102                	.2byte	0x102
  2c:	021f 030f 0000      	.byte	0x1f, 0x02, 0x0f, 0x03, 0x00, 0x00
	...
  while(n > 1)
  3e:	0501                	.2byte	0x501
    r *= n--;
  40:	0001                	.2byte	0x1
  42:	0209                	.2byte	0x209
	...
  4c:	0515                	.2byte	0x515
  4e:	030a                	.2byte	0x30a
  50:	0901                	.2byte	0x901
  52:	0000                	.2byte	0x0
  54:	0501                	.2byte	0x501
  56:	0301                	.2byte	0x301
  while(n > 1)
  58:	0901                	.2byte	0x901
  5a:	0000                	.2byte	0x0
  5c:	0301                	.2byte	0x301
  5e:	00000903          	lb	s2,0(zero) # 0 <.Ldebug_line0>
  62:	0501                	.2byte	0x501
  64:	09010307          	.4byte	0x9010307
  return r;
  68:	0000                	.2byte	0x0
  6a:	0501                	.2byte	0x501
}
  6c:	0308                	.2byte	0x308
  6e:	0901                	.2byte	0x901
  70:	0000                	.2byte	0x0
  72:	0501                	.2byte	0x501
  74:	0901030b          	.4byte	0x901030b
  78:	0000                	.2byte	0x0
  7a:	0501                	.2byte	0x501
{
  7c:	09000307          	.4byte	0x9000307
  80:	0000                	.2byte	0x0
  82:	0501                	.2byte	0x501
  84:	097f030b          	.4byte	0x97f030b
  88:	0000                	.2byte	0x0
  8a:	0501                	.2byte	0x501
  printf("%d\n", factorial(6));
  8c:	030a                	.2byte	0x30a
  8e:	0902                	.2byte	0x902
  90:	0000                	.2byte	0x0
  92:	0501                	.2byte	0x501
  94:	0301                	.2byte	0x301
  96:	0901                	.2byte	0x901
  98:	0000                	.2byte	0x0
  9a:	0301                	.2byte	0x301
  9c:	00000903          	lb	s2,0(zero) # 0 <.Ldebug_line0>
  a0:	0501                	.2byte	0x501
  a2:	09010303          	lb	t1,144(sp)
  a6:	0000                	.2byte	0x0
  a8:	0501                	.2byte	0x501
  aa:	030a                	.2byte	0x30a
  ac:	0901                	.2byte	0x901
  ae:	0000                	.2byte	0x0
  return 0;
  b0:	0501                	.2byte	0x501
  b2:	0301                	.2byte	0x301
}
  b4:	0901                	.2byte	0x901
  b6:	0000                	.2byte	0x0
  b8:	0901                	.2byte	0x901
  ba:	0000                	.2byte	0x0
  bc:	0100                	.2byte	0x100
  be:	01              	Address 0x00000000000000be is out of bounds.


Disassembly of section .debug_str:

0000000000000000 <.LASF9>:
   0:	6f6c                	.2byte	0x6f6c
{
   2:	676e                	.2byte	0x676e
   4:	6c20                	.2byte	0x6c20
   6:	20676e6f          	jal	t3,7620c <.LASF2+0x76111>
   a:	6e69                	.2byte	0x6e69
  return sizeof(int);
   c:	0074                	.2byte	0x74

000000000000000e <.LASF6>:
   e:	6e75                	.2byte	0x6e75
}
  10:	6e676973          	csrrsi	s2,0x6e6,14
  14:	6465                	.2byte	0x6465
  16:	6920                	.2byte	0x6920
  18:	746e                	.2byte	0x746e
	...

000000000000001b <.LASF13>:
  1b:	616d                	.2byte	0x616d
  1d:	6e69                	.2byte	0x6e69
	...

0000000000000020 <.LASF14>:
  20:	657a6973          	csrrsi	s2,0x657,20
{
  24:	6e69666f          	jal	a2,9670a <.LASF2+0x9660f>
  28:	0074                	.2byte	0x74

000000000000002a <.LASF8>:
  2a:	6f6c                	.2byte	0x6f6c
  2c:	676e                	.2byte	0x676e
  2e:	7520                	.2byte	0x7520
  30:	736e                	.2byte	0x736e
  32:	6769                	.2byte	0x6769
  int r = 1;
  34:	656e                	.2byte	0x656e
  36:	2064                	.2byte	0x2064
  38:	6e69                	.2byte	0x6e69
  3a:	0074                	.2byte	0x74

000000000000003c <.LASF12>:
  3c:	6f6c                	.2byte	0x6f6c
  while(n > 1)
  3e:	676e                	.2byte	0x676e
    r *= n--;
  40:	6c20                	.2byte	0x6c20
  42:	20676e6f          	jal	t3,76248 <.LASF2+0x7614d>
  46:	6e75                	.2byte	0x6e75
  48:	6e676973          	csrrsi	s2,0x6e6,14
  4c:	6465                	.2byte	0x6465
  4e:	6920                	.2byte	0x6920
  50:	746e                	.2byte	0x746e
	...

0000000000000053 <.LASF3>:
  53:	6e75                	.2byte	0x6e75
  55:	6e676973          	csrrsi	s2,0x6e6,14
  while(n > 1)
  59:	6465                	.2byte	0x6465
  5b:	6320                	.2byte	0x6320
  5d:	6168                	.2byte	0x6168
  5f:	0072                	.2byte	0x72

0000000000000061 <.LASF11>:
  61:	72616863          	bltu	sp,t1,791 <.LASF2+0x696>
	...

0000000000000066 <.LASF15>:
  66:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
  return r;
  6a:	20373143          	fmadd.s	ft2,fa4,ft3,ft4,rup
}
  6e:	3231                	.2byte	0x3231
  70:	322e                	.2byte	0x322e
  72:	302e                	.2byte	0x302e
  74:	2d20                	.2byte	0x2d20
  76:	616d                	.2byte	0x616d
  78:	6962                	.2byte	0x6962
  7a:	6c3d                	.2byte	0x6c3d
{
  7c:	3670                	.2byte	0x3670
  7e:	6434                	.2byte	0x6434
  80:	2d20                	.2byte	0x2d20
  82:	696d                	.2byte	0x696d
  84:	732d6173          	csrrsi	sp,mhpmevent18h,26
  88:	6570                	.2byte	0x6570
  8a:	30323d63          	.4byte	0x30323d63
  printf("%d\n", factorial(6));
  8e:	3931                	.2byte	0x3931
  90:	3231                	.2byte	0x3231
  92:	3331                	.2byte	0x3331
  94:	2d20                	.2byte	0x2d20
  96:	616d                	.2byte	0x616d
  98:	6372                	.2byte	0x6372
  9a:	3d68                	.2byte	0x3d68
  9c:	7672                	.2byte	0x7672
  9e:	3436                	.2byte	0x3436
  a0:	6d69                	.2byte	0x6d69
  a2:	6661                	.2byte	0x6661
  a4:	5f64                	.2byte	0x5f64
  a6:	697a                	.2byte	0x697a
  a8:	5f727363          	bgeu	tp,s7,68e <.LASF2+0x593>
  ac:	697a                	.2byte	0x697a
  ae:	6566                	.2byte	0x6566
  return 0;
  b0:	636e                	.2byte	0x636e
  b2:	6965                	.2byte	0x6965
}
  b4:	2d20                	.2byte	0x2d20
  b6:	          	jr	1782(s8)

00000000000000b8 <.LASF7>:
  b8:	6f6c                	.2byte	0x6f6c
  ba:	676e                	.2byte	0x676e
  bc:	6920                	.2byte	0x6920
  be:	746e                	.2byte	0x746e
	...

00000000000000c1 <.LASF17>:
  c1:	6166                	.2byte	0x6166
  c3:	726f7463          	bgeu	t5,t1,7eb <.LASF2+0x6f0>
  c7:	6169                	.2byte	0x6169
  c9:	006c                	.2byte	0x6c

00000000000000cb <.LASF5>:
  cb:	726f6873          	csrrsi	a6,mhpmevent6h,30
  cf:	2074                	.2byte	0x2074
  d1:	6e75                	.2byte	0x6e75
  d3:	6e676973          	csrrsi	s2,0x6e6,14
  d7:	6465                	.2byte	0x6465
  d9:	6920                	.2byte	0x6920
  db:	746e                	.2byte	0x746e
	...

00000000000000de <.LASF16>:
  de:	7270                	.2byte	0x7270
  e0:	6e69                	.2byte	0x6e69
  e2:	6674                	.2byte	0x6674
	...

00000000000000e5 <.LASF10>:
  e5:	6f6c                	.2byte	0x6f6c
  e7:	676e                	.2byte	0x676e
  e9:	6420                	.2byte	0x6420
  eb:	6c62756f          	jal	a0,277b1 <.LASF2+0x276b6>
  ef:	0065                	.2byte	0x65

00000000000000f1 <.LASF4>:
  f1:	726f6873          	csrrsi	a6,mhpmevent6h,30
  f5:	2074                	.2byte	0x2074
  f7:	6e69                	.2byte	0x6e69
  f9:	0074                	.2byte	0x74

00000000000000fb <.LASF2>:
  fb:	6e676973          	csrrsi	s2,0x6e6,14
  ff:	6465                	.2byte	0x6465
 101:	6320                	.2byte	0x6320
 103:	6168                	.2byte	0x6168
 105:	0072                	.2byte	0x72

Disassembly of section .debug_line_str:

0000000000000000 <.LASF1>:
   0:	6d6f682f          	.4byte	0x6d6f682f
{
   4:	2f65                	.2byte	0x2f65
   6:	2f64                	.2byte	0x2f64
   8:	2f5f 6173 6566      	.byte	0x5f, 0x2f, 0x73, 0x61, 0x66, 0x65
  return sizeof(int);
   e:	775f 2f66 6f77      	.byte	0x5f, 0x77, 0x66, 0x2f, 0x77, 0x6f
}
  14:	6b72                	.2byte	0x6b72
  16:	6250532f          	.4byte	0x6250532f
  1a:	2f55                	.2byte	0x2f55
  1c:	72756f63          	bltu	a0,t2,75a <.LASF2+0x65f>
{
  20:	2f736573          	csrrsi	a0,0x2f7,6
  24:	706d6f43          	fmadd.s	ft10,fs10,ft6,fa4,unknown
  28:	7475                	.2byte	0x7475
  2a:	7265                	.2byte	0x7265
  2c:	415f 6372 6968      	.byte	0x5f, 0x41, 0x72, 0x63, 0x68, 0x69
  32:	6574                	.2byte	0x6574
  int r = 1;
  34:	72757463          	bgeu	a0,t2,75c <.LASF2+0x661>
  38:	2d65                	.2byte	0x2d65
  3a:	55625053          	.4byte	0x55625053
  while(n > 1)
  3e:	432d                	.2byte	0x432d
    r *= n--;
  40:	2e42                	.2byte	0x2e42
  42:	3035                	.2byte	0x3035
  44:	3038                	.2byte	0x3038
  46:	6178652f          	.4byte	0x6178652f
  4a:	706d                	.2byte	0x706d
  4c:	656c                	.2byte	0x656c
  4e:	72632f73          	csrrs	t5,mhpmevent6h,t1
  52:	2d73736f          	jal	t1,37b28 <.LASF2+0x37a2d>
  56:	706d6f63          	bltu	s10,t1,774 <.LASF2+0x679>
  while(n > 1)
  5a:	6c69                	.2byte	0x6c69
  5c:	6e69                	.2byte	0x6e69
  5e:	          	jr	1590(t1)

0000000000000060 <.LASF0>:
  60:	2e656363          	bltu	a0,t1,346 <.LASF2+0x24b>
  64:	682f0063          	beq	t5,sp,6e4 <.LASF2+0x5e9>
  return r;
  68:	2f656d6f          	jal	s10,5635e <.LASF2+0x56263>
}
  6c:	2f64                	.2byte	0x2f64
  6e:	2f5f 6173 6566      	.byte	0x5f, 0x2f, 0x73, 0x61, 0x66, 0x65
  74:	775f 2f66 6f77      	.byte	0x5f, 0x77, 0x66, 0x2f, 0x77, 0x6f
  7a:	6b72                	.2byte	0x6b72
{
  7c:	6250532f          	.4byte	0x6250532f
  80:	2f55                	.2byte	0x2f55
  82:	72756f63          	bltu	a0,t2,7c0 <.LASF2+0x6c5>
  86:	2f736573          	csrrsi	a0,0x2f7,6
  8a:	706d6f43          	fmadd.s	ft10,fs10,ft6,fa4,unknown
  printf("%d\n", factorial(6));
  8e:	7475                	.2byte	0x7475
  90:	7265                	.2byte	0x7265
  92:	415f 6372 6968      	.byte	0x5f, 0x41, 0x72, 0x63, 0x68, 0x69
  98:	6574                	.2byte	0x6574
  9a:	72757463          	bgeu	a0,t2,7c2 <.LASF2+0x6c7>
  9e:	2d65                	.2byte	0x2d65
  a0:	55625053          	.4byte	0x55625053
  a4:	432d                	.2byte	0x432d
  a6:	2e42                	.2byte	0x2e42
  a8:	3035                	.2byte	0x3035
  aa:	3038                	.2byte	0x3038
  ac:	6178652f          	.4byte	0x6178652f
  return 0;
  b0:	706d                	.2byte	0x706d
  b2:	656c                	.2byte	0x656c
}
  b4:	72632f73          	csrrs	t5,mhpmevent6h,t1
  b8:	2d73736f          	jal	t1,37b8e <.LASF2+0x37a93>
  bc:	706d6f63          	bltu	s10,t1,7da <.LASF2+0x6df>
  c0:	6c69                	.2byte	0x6c69
  c2:	6e69                	.2byte	0x6e69
  c4:	752f0067          	jr	1874(t5)
  c8:	722f7273          	csrrci	tp,0x722,30
  cc:	7369                	.2byte	0x7369
  ce:	34367663          	bgeu	a2,gp,41a <.LASF2+0x31f>
  d2:	652d                	.2byte	0x652d
  d4:	666c                	.2byte	0x666c
  d6:	636e692f          	.4byte	0x636e692f
  da:	756c                	.2byte	0x756c
  dc:	6564                	.2byte	0x6564
  de:	6300                	.2byte	0x6300
  e0:	632e6563          	bltu	t3,s2,70a <.LASF2+0x60f>
  e4:	6300                	.2byte	0x6300
  e6:	632e6563          	bltu	t3,s2,710 <.LASF2+0x615>
  ea:	7300                	.2byte	0x7300
  ec:	6474                	.2byte	0x6474
  ee:	6f69                	.2byte	0x6f69
  f0:	682e                	.2byte	0x682e
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
{
   0:	4700                	.2byte	0x4700
   2:	203a4343          	fmadd.s	ft6,fs4,ft3,ft4,rmm
   6:	4128                	.2byte	0x4128
   8:	6372                	.2byte	0x6372
   a:	2068                	.2byte	0x2068
  return sizeof(int);
   c:	694c                	.2byte	0x694c
   e:	756e                	.2byte	0x756e
}
  10:	2078                	.2byte	0x2078
  12:	6552                	.2byte	0x6552
  14:	6f70                	.2byte	0x6f70
  16:	6f746973          	csrrsi	s2,0x6f7,8
  1a:	6972                	.2byte	0x6972
  1c:	7365                	.2byte	0x7365
  1e:	2029                	.2byte	0x2029
{
  20:	3231                	.2byte	0x3231
  22:	322e                	.2byte	0x322e
  24:	302e                	.2byte	0x302e
	...

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
   0:	000c                	.2byte	0xc
{
   2:	0000                	.2byte	0x0
   4:	ffff                	.2byte	0xffff
   6:	ffff                	.2byte	0xffff
   8:	7c010003          	lb	zero,1984(sp)
  return sizeof(int);
   c:	0d01                	.2byte	0xd01
   e:	0002                	.2byte	0x2
}
  10:	002c                	.2byte	0x2c
	...
{
  26:	0000                	.2byte	0x0
  28:	0e44                	.2byte	0xe44
  2a:	4410                	.2byte	0x4410
  2c:	0288                	.2byte	0x288
  2e:	0c44                	.2byte	0xc44
  30:	0008                	.2byte	0x8
  32:	c84c                	.2byte	0xc84c
  int r = 1;
  34:	020c                	.2byte	0x20c
  36:	4410                	.2byte	0x4410
  38:	000e                	.2byte	0xe
  3a:	0000                	.2byte	0x0
  while(n > 1)
  3c:	0000                	.2byte	0x0
  3e:	0000                	.2byte	0x0
    r *= n--;
  40:	002c                	.2byte	0x2c
	...
  56:	0000                	.2byte	0x0
  while(n > 1)
  58:	0e44                	.2byte	0xe44
  5a:	4430                	.2byte	0x4430
  5c:	0288                	.2byte	0x288
  5e:	0c44                	.2byte	0xc44
  60:	0008                	.2byte	0x8
  62:	4802                	.2byte	0x4802
  64:	0cc8                	.2byte	0xcc8
  66:	3002                	.2byte	0x3002
  return r;
  68:	0e44                	.2byte	0xe44
  6a:	0000                	.2byte	0x0
}
  6c:	0000                	.2byte	0x0
  6e:	0000                	.2byte	0x0
  70:	002c                	.2byte	0x2c
	...
{
  86:	0000                	.2byte	0x0
  88:	0e44                	.2byte	0xe44
  8a:	4810                	.2byte	0x4810
  printf("%d\n", factorial(6));
  8c:	0281                	.2byte	0x281
  8e:	0488                	.2byte	0x488
  90:	0c44                	.2byte	0xc44
  92:	0008                	.2byte	0x8
  94:	c170                	.2byte	0xc170
  96:	c844                	.2byte	0xc844
  98:	020c                	.2byte	0x20c
  9a:	4410                	.2byte	0x4410
  9c:	000e                	.2byte	0xe
	...

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
{
   0:	4441                	.2byte	0x4441
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
  return sizeof(int);
   c:	003a                	.2byte	0x3a
   e:	0000                	.2byte	0x0
}
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3676                	.2byte	0x3676
  16:	6934                	.2byte	0x6934
  18:	7032                	.2byte	0x7032
  1a:	5f31                	.2byte	0x5f31
  1c:	326d                	.2byte	0x326d
  1e:	3070                	.2byte	0x3070
{
  20:	615f 7032 5f31      	.byte	0x5f, 0x61, 0x32, 0x70, 0x31, 0x5f
  26:	3266                	.2byte	0x3266
  28:	3270                	.2byte	0x3270
  2a:	645f 7032 5f32      	.byte	0x5f, 0x64, 0x32, 0x70, 0x32, 0x5f
  30:	697a                	.2byte	0x697a
  32:	32727363          	bgeu	tp,t2,358 <.LASF2+0x25d>
  int r = 1;
  36:	3070                	.2byte	0x3070
  38:	7a5f 6669 6e65      	.byte	0x5f, 0x7a, 0x69, 0x66, 0x65, 0x6e
  while(n > 1)
  3e:	32696563          	bltu	s2,t1,368 <.LASF2+0x26d>
    r *= n--;
  42:	3070                	.2byte	0x3070
	...
