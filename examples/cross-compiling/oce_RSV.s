
cce_RSV.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <sizeofint>:
#include <stdio.h>
#define DOUBLE_PI 3.14159265358979323846

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

000000000000007c <ipow>:

double ipow(int pow, double base)
{
  7c:	fd010113          	addi	sp,sp,-48
  80:	02813423          	sd	s0,40(sp)
  84:	03010413          	addi	s0,sp,48
  88:	00050793          	mv	a5,a0
  8c:	fca43827          	fsd	fa0,-48(s0)
  90:	fcf42e23          	sw	a5,-36(s0)
  double res = 1, tmp = base;
  94:	000007b7          	lui	a5,0x0
  98:	0007b787          	fld	fa5,0(a5) # 0 <sizeofint>
  9c:	fef43427          	fsd	fa5,-24(s0)
  a0:	fd043787          	fld	fa5,-48(s0)
  a4:	fef43027          	fsd	fa5,-32(s0)
  while(pow)
  a8:	03c0006f          	j	e4 <.L8>

00000000000000ac <.L10>:
  {
    if(pow & 1)
  ac:	fdc42783          	lw	a5,-36(s0)
  b0:	0017f793          	andi	a5,a5,1
  b4:	0007879b          	sext.w	a5,a5
  b8:	00078a63          	beqz	a5,cc <.L9>
      res *= tmp;
  bc:	fe843707          	fld	fa4,-24(s0)
  c0:	fe043787          	fld	fa5,-32(s0)
  c4:	12f777d3          	fmul.d	fa5,fa4,fa5
  c8:	fef43427          	fsd	fa5,-24(s0)

00000000000000cc <.L9>:
    tmp *= tmp;
  cc:	fe043787          	fld	fa5,-32(s0)
  d0:	12f7f7d3          	fmul.d	fa5,fa5,fa5
  d4:	fef43027          	fsd	fa5,-32(s0)
    pow >>= 1;
  d8:	fdc42783          	lw	a5,-36(s0)
  dc:	4017d79b          	sraiw	a5,a5,0x1
  e0:	fcf42e23          	sw	a5,-36(s0)

00000000000000e4 <.L8>:
  while(pow)
  e4:	fdc42783          	lw	a5,-36(s0)
  e8:	0007879b          	sext.w	a5,a5
  ec:	fc0790e3          	bnez	a5,ac <.L10>
  }
  return res;
  f0:	fe843787          	fld	fa5,-24(s0)
}
  f4:	22f78553          	fmv.d	fa0,fa5
  f8:	02813403          	ld	s0,40(sp)
  fc:	03010113          	addi	sp,sp,48
 100:	00008067          	ret

0000000000000104 <main>:

int main()
{
 104:	ff010113          	addi	sp,sp,-16
 108:	00113423          	sd	ra,8(sp)
 10c:	00813023          	sd	s0,0(sp)
 110:	01010413          	addi	s0,sp,16
  printf("sizeof(int): %d\n", sizeofint());
 114:	00000097          	auipc	ra,0x0
 118:	000080e7          	jalr	ra # 114 <main+0x10>
 11c:	00050793          	mv	a5,a0
 120:	00078593          	mv	a1,a5
 124:	000007b7          	lui	a5,0x0
 128:	00078513          	mv	a0,a5
 12c:	00000097          	auipc	ra,0x0
 130:	000080e7          	jalr	ra # 12c <main+0x28>
  printf("factorial(6): %d.\n", factorial(6));
 134:	00600513          	li	a0,6
 138:	00000097          	auipc	ra,0x0
 13c:	000080e7          	jalr	ra # 138 <main+0x34>
 140:	00050793          	mv	a5,a0
 144:	00078593          	mv	a1,a5
 148:	000007b7          	lui	a5,0x0
 14c:	00078513          	mv	a0,a5
 150:	00000097          	auipc	ra,0x0
 154:	000080e7          	jalr	ra # 150 <main+0x4c>
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
 158:	000007b7          	lui	a5,0x0
 15c:	0007b787          	fld	fa5,0(a5) # 0 <sizeofint>
 160:	22f78553          	fmv.d	fa0,fa5
 164:	00500513          	li	a0,5
 168:	00000097          	auipc	ra,0x0
 16c:	000080e7          	jalr	ra # 168 <main+0x64>
 170:	e20507d3          	fmv.x.d	a5,fa0
 174:	00078593          	mv	a1,a5
 178:	000007b7          	lui	a5,0x0
 17c:	00078513          	mv	a0,a5
 180:	00000097          	auipc	ra,0x0
 184:	000080e7          	jalr	ra # 180 <main+0x7c>
  return 0;
 188:	00000793          	li	a5,0
}
 18c:	00078513          	mv	a0,a5
 190:	00813083          	ld	ra,8(sp)
 194:	00013403          	ld	s0,0(sp)
 198:	01010113          	addi	sp,sp,16
 19c:	00008067          	ret

Disassembly of section .rodata:

0000000000000000 <.LC1>:
   0:	657a6973          	csrrsi	s2,0x657,20
   4:	6928666f          	jal	a2,86696 <.LFE6+0x864f6>
   8:	746e                	.2byte	0x746e
   a:	3a29                	.2byte	0x3a29
   c:	2520                	.2byte	0x2520
   e:	0a64                	.2byte	0xa64
	...

0000000000000018 <.LC2>:
  18:	6166                	.2byte	0x6166
  1a:	726f7463          	bgeu	t5,t1,742 <.LFE6+0x5a2>
  1e:	6169                	.2byte	0x6169
  20:	286c                	.2byte	0x286c
  22:	2936                	.2byte	0x2936
  24:	203a                	.2byte	0x203a
  26:	6425                	.2byte	0x6425
  28:	0a2e                	.2byte	0xa2e
  2a:	0000                	.2byte	0x0
  2c:	0000                	.2byte	0x0
	...

0000000000000030 <.LC4>:
  30:	6950                	.2byte	0x6950
  32:	355e                	.2byte	0x355e
  34:	203a                	.2byte	0x203a
  36:	6c25                	.2byte	0x6c25
  38:	0a66                	.2byte	0xa66
  3a:	0000                	.2byte	0x0
  3c:	0000                	.2byte	0x0
	...

0000000000000040 <.LC0>:
  40:	0000                	.2byte	0x0
  42:	0000                	.2byte	0x0
  44:	0000                	.2byte	0x0
  46:	3ff0                	.2byte	0x3ff0

0000000000000048 <.LC3>:
  48:	2d18                	.2byte	0x2d18
  4a:	5444                	.2byte	0x5444
  4c:	400921fb          	.4byte	0x400921fb

Disassembly of section .debug_info:

0000000000000000 <.Ldebug_info0>:
   0:	0179                	.2byte	0x179
{
   2:	0000                	.2byte	0x0
   4:	0005                	.2byte	0x5
   6:	0801                	.2byte	0x801
   8:	0000                	.2byte	0x0
   a:	0000                	.2byte	0x0
  return sizeof(int);
   c:	0005                	.2byte	0x5
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
  4a:	0406                	.2byte	0x406
  4c:	6905                	.2byte	0x6905
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
  7a:	0700                	.2byte	0x700
{
  7c:	0074                	.2byte	0x74
  7e:	0000                	.2byte	0x0
  80:	0808                	.2byte	0x808
  82:	0000007b          	.4byte	0x7b
  86:	0801                	.2byte	0x801
  88:	00000007          	.4byte	0x7
  8c:	0900                	.2byte	0x900
  8e:	0000                	.2byte	0x0
  90:	0000                	.2byte	0x0
  92:	c802                	.2byte	0xc802
  double res = 1, tmp = base;
  94:	4a05                	.2byte	0x4a05
  96:	0000                	.2byte	0x0
  98:	a400                	.2byte	0xa400
  9a:	0000                	.2byte	0x0
  9c:	0a00                	.2byte	0xa00
  9e:	0080                	.2byte	0x80
  a0:	0000                	.2byte	0x0
  a2:	000c000b          	.4byte	0xc000b
  a6:	0000                	.2byte	0x0
  while(pow)
  a8:	0100                	.2byte	0x100
  aa:	051e                	.2byte	0x51e
    if(pow & 1)
  ac:	004a                	.2byte	0x4a
	...
      res *= tmp;
  be:	0000                	.2byte	0x0
  c0:	9c01                	.2byte	0x9c01
  c2:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
  c6:	1100                	.2byte	0x1100
  c8:	1d08                	.2byte	0x1d08
  ca:	0001                	.2byte	0x1
	...
    pow >>= 1;
  dc:	0100                	.2byte	0x100
  de:	1d9c                	.2byte	0x1d9c
  e0:	0001                	.2byte	0x1
  e2:	0400                	.2byte	0x400
  while(pow)
  e4:	6f70                	.2byte	0x6f70
  e6:	11110077          	.4byte	0x11110077
  ea:	004a                	.2byte	0x4a
  ec:	0000                	.2byte	0x0
  ee:	9102                	.2byte	0x9102
  return res;
  f0:	0d5c                	.2byte	0xd5c
  f2:	0000                	.2byte	0x0
}
  f4:	0000                	.2byte	0x0
  f6:	1101                	.2byte	0x1101
  f8:	1d1d                	.2byte	0x1d1d
  fa:	0001                	.2byte	0x1
  fc:	0200                	.2byte	0x200
  fe:	5091                	.2byte	0x5091
 100:	7202                	.2byte	0x7202
 102:	7365                	.2byte	0x7365
{
 104:	1300                	.2byte	0x1300
 106:	1d0a                	.2byte	0x1d0a
 108:	0001                	.2byte	0x1
 10a:	0200                	.2byte	0x200
 10c:	6891                	.2byte	0x6891
 10e:	7402                	.2byte	0x7402
 110:	706d                	.2byte	0x706d
 112:	1300                	.2byte	0x1300
  printf("sizeof(int): %d\n", sizeofint());
 114:	00011d13          	slli	s10,sp,0x0
 118:	0200                	.2byte	0x200
 11a:	6091                	.2byte	0x6091
 11c:	0100                	.2byte	0x100
 11e:	0408                	.2byte	0x408
 120:	0000                	.2byte	0x0
 122:	0000                	.2byte	0x0
 124:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
 128:	0900                	.2byte	0x900
 12a:	4a05                	.2byte	0x4a05
	...
  printf("factorial(6): %d.\n", factorial(6));
 13c:	0000                	.2byte	0x0
 13e:	0100                	.2byte	0x100
 140:	5e9c                	.2byte	0x5e9c
 142:	0001                	.2byte	0x1
 144:	0400                	.2byte	0x400
 146:	006e                	.2byte	0x6e
 148:	1309                	.2byte	0x1309
 14a:	004a                	.2byte	0x4a
 14c:	0000                	.2byte	0x0
 14e:	9102                	.2byte	0x9102
 150:	025c                	.2byte	0x25c
 152:	0072                	.2byte	0x72
 154:	004a070b          	.4byte	0x4a070b
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
 158:	0000                	.2byte	0x0
 15a:	9102                	.2byte	0x9102
 15c:	006c                	.2byte	0x6c
 15e:	000e                	.2byte	0xe
 160:	0000                	.2byte	0x0
 162:	0100                	.2byte	0x100
 164:	0504                	.2byte	0x504
 166:	004a                	.2byte	0x4a
	...
 178:	0000                	.2byte	0x0
 17a:	9c01                	.2byte	0x9c01
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.Ldebug_abbrev0>:
   0:	2401                	.2byte	0x2401
{
   2:	0b00                	.2byte	0xb00
   4:	030b3e0b          	.4byte	0x30b3e0b
   8:	000e                	.2byte	0xe
   a:	0200                	.2byte	0x200
  return sizeof(int);
   c:	0034                	.2byte	0x34
   e:	213a0803          	lb	a6,531(s4)
}
  12:	3b01                	.2byte	0x3b01
  14:	490b390b          	.4byte	0x490b390b
  18:	00180213          	addi	tp,a6,1
  1c:	0300                	.2byte	0x300
  1e:	012e                	.2byte	0x12e
{
  20:	0e03193f 3b01213a 	.8byte	0x3b01213a0e03193f
  28:	270b390b          	.4byte	0x270b390b
  2c:	4919                	.2byte	0x4919
  2e:	12011113          	.4byte	0x12011113
  32:	7a184007          	.4byte	0x7a184007
  int r = 1;
  36:	0119                	.2byte	0x119
  38:	04000013          	li	zero,64
  while(n > 1)
  3c:	0005                	.2byte	0x5
  3e:	213a0803          	lb	a6,531(s4)
    r *= n--;
  42:	3b01                	.2byte	0x3b01
  44:	490b390b          	.4byte	0x490b390b
  48:	00180213          	addi	tp,a6,1
  4c:	0500                	.2byte	0x500
  4e:	0111                	.2byte	0x111
  50:	0e25                	.2byte	0xe25
  52:	1f030b13          	addi	s6,t1,496
  56:	01111f1b          	slliw	t5,sp,0x11
  while(n > 1)
  5a:	0712                	.2byte	0x712
  5c:	1710                	.2byte	0x1710
  5e:	0000                	.2byte	0x0
  60:	2406                	.2byte	0x2406
  62:	0b00                	.2byte	0xb00
  64:	030b3e0b          	.4byte	0x30b3e0b
  return r;
  68:	0008                	.2byte	0x8
  6a:	0700                	.2byte	0x700
}
  6c:	0026                	.2byte	0x26
  6e:	1349                	.2byte	0x1349
  70:	0000                	.2byte	0x0
  72:	0f08                	.2byte	0xf08
  74:	0b00                	.2byte	0xb00
  76:	0013490b          	.4byte	0x13490b
  7a:	0900                	.2byte	0x900
{
  7c:	012e                	.2byte	0x12e
  7e:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
  86:	0b39                	.2byte	0xb39
  88:	13491927          	.4byte	0x13491927
  8c:	193c                	.2byte	0x193c
  8e:	1301                	.2byte	0x1301
  90:	0000                	.2byte	0x0
  92:	050a                	.2byte	0x50a
  double res = 1, tmp = base;
  94:	4900                	.2byte	0x4900
  96:	0b000013          	li	zero,176
  9a:	0018                	.2byte	0x18
  9c:	0000                	.2byte	0x0
  9e:	2e0c                	.2byte	0x2e0c
  a0:	3f00                	.2byte	0x3f00
  a2:	0319                	.2byte	0x319
  a4:	3a0e                	.2byte	0x3a0e
  a6:	390b3b0b          	.4byte	0x390b3b0b
  while(pow)
  aa:	1113490b          	.4byte	0x1113490b
    if(pow & 1)
  ae:	1201                	.2byte	0x1201
  b0:	7c184007          	.4byte	0x7c184007
  b4:	0019                	.2byte	0x19
  b6:	0d00                	.2byte	0xd00
  b8:	0005                	.2byte	0x5
  ba:	0b3a0e03          	lb	t3,179(s4)
      res *= tmp;
  be:	0b390b3b          	.4byte	0xb390b3b
  c2:	1349                	.2byte	0x1349
  c4:	1802                	.2byte	0x1802
  c6:	0000                	.2byte	0x0
  c8:	2e0e                	.2byte	0x2e0e
  ca:	3f00                	.2byte	0x3f00
    tmp *= tmp;
  cc:	0319                	.2byte	0x319
  ce:	3a0e                	.2byte	0x3a0e
  d0:	390b3b0b          	.4byte	0x390b3b0b
  d4:	1113490b          	.4byte	0x1113490b
    pow >>= 1;
  d8:	1201                	.2byte	0x1201
  da:	7a184007          	.4byte	0x7a184007
  de:	0019                	.2byte	0x19
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
   0:	0121                	.2byte	0x121
   2:	0000                	.2byte	0x0
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
  4c:	0516                	.2byte	0x516
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
  8c:	030a                	.2byte	0x30a
  8e:	0902                	.2byte	0x902
  90:	0000                	.2byte	0x0
  92:	0501                	.2byte	0x501
  double res = 1, tmp = base;
  94:	0301                	.2byte	0x301
  96:	0901                	.2byte	0x901
  98:	0000                	.2byte	0x0
  9a:	0301                	.2byte	0x301
  9c:	00000903          	lb	s2,0(zero) # 0 <.Ldebug_line0>
  a0:	0501                	.2byte	0x501
  a2:	030a                	.2byte	0x30a
  a4:	0901                	.2byte	0x901
  a6:	0000                	.2byte	0x0
  while(pow)
  a8:	0501                	.2byte	0x501
  aa:	09000313          	li	t1,144
    if(pow & 1)
  ae:	0000                	.2byte	0x0
  b0:	0501                	.2byte	0x501
  b2:	0308                	.2byte	0x308
  b4:	0901                	.2byte	0x901
  b6:	0000                	.2byte	0x0
  b8:	0501                	.2byte	0x501
  ba:	030c                	.2byte	0x30c
      res *= tmp;
  bc:	0902                	.2byte	0x902
  be:	0000                	.2byte	0x0
  c0:	0501                	.2byte	0x501
  c2:	09000307          	.4byte	0x9000307
  c6:	0000                	.2byte	0x0
  c8:	0501                	.2byte	0x501
  ca:	0901030b          	.4byte	0x901030b
    tmp *= tmp;
  ce:	0000                	.2byte	0x0
  d0:	0501                	.2byte	0x501
  d2:	0309                	.2byte	0x309
  d4:	0901                	.2byte	0x901
  d6:	0000                	.2byte	0x0
    pow >>= 1;
  d8:	0301                	.2byte	0x301
  da:	0901                	.2byte	0x901
  dc:	0000                	.2byte	0x0
  de:	0301                	.2byte	0x301
  e0:	0000097b          	.4byte	0x97b
  while(pow)
  e4:	0501                	.2byte	0x501
  e6:	030a                	.2byte	0x30a
  e8:	00000907          	.4byte	0x907
  ec:	0501                	.2byte	0x501
  ee:	0301                	.2byte	0x301
  return res;
  f0:	0901                	.2byte	0x901
  f2:	0000                	.2byte	0x0
}
  f4:	0301                	.2byte	0x301
  f6:	00000903          	lb	s2,0(zero) # 0 <.Ldebug_line0>
  fa:	0501                	.2byte	0x501
  fc:	09010303          	lb	t1,144(sp)
 100:	0000                	.2byte	0x0
 102:	0301                	.2byte	0x301
{
 104:	0901                	.2byte	0x901
 106:	0000                	.2byte	0x0
 108:	0301                	.2byte	0x301
 10a:	0901                	.2byte	0x901
 10c:	0000                	.2byte	0x0
 10e:	0501                	.2byte	0x501
 110:	030a                	.2byte	0x30a
 112:	0901                	.2byte	0x901
  printf("sizeof(int): %d\n", sizeofint());
 114:	0000                	.2byte	0x0
 116:	0501                	.2byte	0x501
 118:	0301                	.2byte	0x301
 11a:	0901                	.2byte	0x901
 11c:	0000                	.2byte	0x0
 11e:	0901                	.2byte	0x901
 120:	0000                	.2byte	0x0
 122:	0100                	.2byte	0x100
 124:	01              	Address 0x0000000000000124 is out of bounds.


Disassembly of section .debug_str:

0000000000000000 <.LASF9>:
   0:	6f6c                	.2byte	0x6f6c
{
   2:	676e                	.2byte	0x676e
   4:	6c20                	.2byte	0x6c20
   6:	20676e6f          	jal	t3,7620c <.LFE6+0x7606c>
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

000000000000001b <.LASF17>:
  1b:	616d                	.2byte	0x616d
  1d:	6e69                	.2byte	0x6e69
	...

0000000000000020 <.LASF18>:
  20:	657a6973          	csrrsi	s2,0x657,20
{
  24:	6e69666f          	jal	a2,9670a <.LFE6+0x9656a>
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
  42:	20676e6f          	jal	t3,76248 <.LFE6+0x760a8>
  46:	6e75                	.2byte	0x6e75
  48:	6e676973          	csrrsi	s2,0x6e6,14
  4c:	6465                	.2byte	0x6465
  4e:	6920                	.2byte	0x6920
  50:	746e                	.2byte	0x746e
	...

0000000000000053 <.LASF13>:
  53:	6162                	.2byte	0x6162
  55:	          	csrrsi	a0,0x750,0

0000000000000058 <.LASF3>:
  58:	6e75                	.2byte	0x6e75
  while(n > 1)
  5a:	6e676973          	csrrsi	s2,0x6e6,14
  5e:	6465                	.2byte	0x6465
  60:	6320                	.2byte	0x6320
  62:	6168                	.2byte	0x6168
  64:	0072                	.2byte	0x72

0000000000000066 <.LASF11>:
  66:	72616863          	bltu	sp,t1,796 <.LFE6+0x5f6>
	...

000000000000006b <.LASF19>:
  6b:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
}
  6f:	20373143          	fmadd.s	ft2,fa4,ft3,ft4,rup
  73:	3231                	.2byte	0x3231
  75:	322e                	.2byte	0x322e
  77:	302e                	.2byte	0x302e
  79:	2d20                	.2byte	0x2d20
  7b:	616d                	.2byte	0x616d
{
  7d:	6962                	.2byte	0x6962
  7f:	6c3d                	.2byte	0x6c3d
  81:	3670                	.2byte	0x3670
  83:	6434                	.2byte	0x6434
  85:	2d20                	.2byte	0x2d20
  87:	696d                	.2byte	0x696d
  89:	732d6173          	csrrsi	sp,mhpmevent18h,26
  8d:	6570                	.2byte	0x6570
  8f:	30323d63          	.4byte	0x30323d63
  93:	3931                	.2byte	0x3931
  double res = 1, tmp = base;
  95:	3231                	.2byte	0x3231
  97:	3331                	.2byte	0x3331
  99:	2d20                	.2byte	0x2d20
  9b:	616d                	.2byte	0x616d
  9d:	6372                	.2byte	0x6372
  9f:	3d68                	.2byte	0x3d68
  a1:	7672                	.2byte	0x7672
  a3:	3436                	.2byte	0x3436
  a5:	6d69                	.2byte	0x6d69
  a7:	6661                	.2byte	0x6661
  while(pow)
  a9:	5f64                	.2byte	0x5f64
  ab:	697a                	.2byte	0x697a
    if(pow & 1)
  ad:	5f727363          	bgeu	tp,s7,693 <.LFE6+0x4f3>
  b1:	697a                	.2byte	0x697a
  b3:	6566                	.2byte	0x6566
  b5:	636e                	.2byte	0x636e
  b7:	6965                	.2byte	0x6965
  b9:	2d20                	.2byte	0x2d20
  bb:	          	jr	1782(s8)

00000000000000bd <.LASF7>:
  bd:	6f6c                	.2byte	0x6f6c
      res *= tmp;
  bf:	676e                	.2byte	0x676e
  c1:	6920                	.2byte	0x6920
  c3:	746e                	.2byte	0x746e
	...

00000000000000c6 <.LASF16>:
  c6:	6166                	.2byte	0x6166
  c8:	726f7463          	bgeu	t5,t1,7f0 <.LFE6+0x650>
    tmp *= tmp;
  cc:	6169                	.2byte	0x6169
  ce:	006c                	.2byte	0x6c

00000000000000d0 <.LASF14>:
  d0:	6f64                	.2byte	0x6f64
  d2:	6275                	.2byte	0x6275
  d4:	656c                	.2byte	0x656c
	...

00000000000000d7 <.LASF5>:
  d7:	726f6873          	csrrsi	a6,mhpmevent6h,30
    pow >>= 1;
  db:	2074                	.2byte	0x2074
  dd:	6e75                	.2byte	0x6e75
  df:	6e676973          	csrrsi	s2,0x6e6,14
  e3:	6465                	.2byte	0x6465
  while(pow)
  e5:	6920                	.2byte	0x6920
  e7:	746e                	.2byte	0x746e
	...

00000000000000ea <.LASF20>:
  ea:	7270                	.2byte	0x7270
  ec:	6e69                	.2byte	0x6e69
  ee:	6674                	.2byte	0x6674
	...

00000000000000f1 <.LASF10>:
  f1:	6f6c                	.2byte	0x6f6c
  return res;
  f3:	676e                	.2byte	0x676e
}
  f5:	6420                	.2byte	0x6420
  f7:	6c62756f          	jal	a0,277bd <.LFE6+0x2761d>
  fb:	0065                	.2byte	0x65

00000000000000fd <.LASF4>:
  fd:	726f6873          	csrrsi	a6,mhpmevent6h,30
 101:	2074                	.2byte	0x2074
 103:	6e69                	.2byte	0x6e69
{
 105:	0074                	.2byte	0x74

0000000000000107 <.LASF15>:
 107:	7069                	.2byte	0x7069
 109:	          	jal	a4,7839 <.LFE6+0x7699>

000000000000010c <.LASF2>:
 10c:	6e676973          	csrrsi	s2,0x6e6,14
 110:	6465                	.2byte	0x6465
 112:	6320                	.2byte	0x6320
  printf("sizeof(int): %d\n", sizeofint());
 114:	6168                	.2byte	0x6168
 116:	0072                	.2byte	0x72

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
  1c:	72756f63          	bltu	a0,t2,75a <.LFE6+0x5ba>
{
  20:	2f736573          	csrrsi	a0,0x2f7,6
  24:	706d6f43          	fmadd.s	ft10,fs10,ft6,fa4,unknown
  28:	7475                	.2byte	0x7475
  2a:	7265                	.2byte	0x7265
  2c:	415f 6372 6968      	.byte	0x5f, 0x41, 0x72, 0x63, 0x68, 0x69
  32:	6574                	.2byte	0x6574
  int r = 1;
  34:	72757463          	bgeu	a0,t2,75c <.LFE6+0x5bc>
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
  52:	2d73736f          	jal	t1,37b28 <.LFE6+0x37988>
  56:	706d6f63          	bltu	s10,t1,774 <.LFE6+0x5d4>
  while(n > 1)
  5a:	6c69                	.2byte	0x6c69
  5c:	6e69                	.2byte	0x6e69
  5e:	          	jr	1590(t1)

0000000000000060 <.LASF0>:
  60:	2e656363          	bltu	a0,t1,346 <.LFE6+0x1a6>
  64:	682f0063          	beq	t5,sp,6e4 <.LFE6+0x544>
  return r;
  68:	2f656d6f          	jal	s10,5635e <.LFE6+0x561be>
}
  6c:	2f64                	.2byte	0x2f64
  6e:	2f5f 6173 6566      	.byte	0x5f, 0x2f, 0x73, 0x61, 0x66, 0x65
  74:	775f 2f66 6f77      	.byte	0x5f, 0x77, 0x66, 0x2f, 0x77, 0x6f
  7a:	6b72                	.2byte	0x6b72
{
  7c:	6250532f          	.4byte	0x6250532f
  80:	2f55                	.2byte	0x2f55
  82:	72756f63          	bltu	a0,t2,7c0 <.LFE6+0x620>
  86:	2f736573          	csrrsi	a0,0x2f7,6
  8a:	706d6f43          	fmadd.s	ft10,fs10,ft6,fa4,unknown
  8e:	7475                	.2byte	0x7475
  90:	7265                	.2byte	0x7265
  92:	415f 6372 6968      	.byte	0x5f, 0x41, 0x72, 0x63, 0x68, 0x69
  double res = 1, tmp = base;
  98:	6574                	.2byte	0x6574
  9a:	72757463          	bgeu	a0,t2,7c2 <.LFE6+0x622>
  9e:	2d65                	.2byte	0x2d65
  a0:	55625053          	.4byte	0x55625053
  a4:	432d                	.2byte	0x432d
  a6:	2e42                	.2byte	0x2e42
  while(pow)
  a8:	3035                	.2byte	0x3035
  aa:	3038                	.2byte	0x3038
    if(pow & 1)
  ac:	6178652f          	.4byte	0x6178652f
  b0:	706d                	.2byte	0x706d
  b2:	656c                	.2byte	0x656c
  b4:	72632f73          	csrrs	t5,mhpmevent6h,t1
  b8:	2d73736f          	jal	t1,37b8e <.LFE6+0x379ee>
      res *= tmp;
  bc:	706d6f63          	bltu	s10,t1,7da <.LFE6+0x63a>
  c0:	6c69                	.2byte	0x6c69
  c2:	6e69                	.2byte	0x6e69
  c4:	752f0067          	jr	1874(t5)
  c8:	722f7273          	csrrci	tp,0x722,30
    tmp *= tmp;
  cc:	7369                	.2byte	0x7369
  ce:	34367663          	bgeu	a2,gp,41a <.LFE6+0x27a>
  d2:	652d                	.2byte	0x652d
  d4:	666c                	.2byte	0x666c
  d6:	636e692f          	.4byte	0x636e692f
    pow >>= 1;
  da:	756c                	.2byte	0x756c
  dc:	6564                	.2byte	0x6564
  de:	6300                	.2byte	0x6300
  e0:	632e6563          	bltu	t3,s2,70a <.LFE6+0x56a>
  while(pow)
  e4:	6300                	.2byte	0x6300
  e6:	632e6563          	bltu	t3,s2,710 <.LFE6+0x570>
  ea:	7300                	.2byte	0x7300
  ec:	6474                	.2byte	0x6474
  ee:	6f69                	.2byte	0x6f69
  return res;
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
  8a:	4430                	.2byte	0x4430
  8c:	0288                	.2byte	0x288
  8e:	0c44                	.2byte	0xc44
  90:	0008                	.2byte	0x8
  92:	7402                	.2byte	0x7402
  double res = 1, tmp = base;
  94:	0cc8                	.2byte	0xcc8
  96:	3002                	.2byte	0x3002
  98:	0e44                	.2byte	0xe44
  9a:	0000                	.2byte	0x0
  9c:	0000                	.2byte	0x0
  9e:	0000                	.2byte	0x0
  a0:	002c                	.2byte	0x2c
	...
    if(pow & 1)
  b6:	0000                	.2byte	0x0
  b8:	0e44                	.2byte	0xe44
  ba:	4810                	.2byte	0x4810
      res *= tmp;
  bc:	0281                	.2byte	0x281
  be:	0488                	.2byte	0x488
  c0:	0c44                	.2byte	0xc44
  c2:	0008                	.2byte	0x8
  c4:	8002                	.2byte	0x8002
  c6:	44c1                	.2byte	0x44c1
  c8:	0cc8                	.2byte	0xcc8
  ca:	1002                	.2byte	0x1002
    tmp *= tmp;
  cc:	0e44                	.2byte	0xe44
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
  32:	32727363          	bgeu	tp,t2,358 <.LFE6+0x1b8>
  int r = 1;
  36:	3070                	.2byte	0x3070
  38:	7a5f 6669 6e65      	.byte	0x5f, 0x7a, 0x69, 0x66, 0x65, 0x6e
  while(n > 1)
  3e:	32696563          	bltu	s2,t1,368 <.LFE6+0x1c8>
    r *= n--;
  42:	3070                	.2byte	0x3070
	...
