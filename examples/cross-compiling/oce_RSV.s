
cce_RSV.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <sizeofint>:
// #include <stdio.h>

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

Disassembly of section .debug_info:

0000000000000000 <.Ldebug_info0>:
   0:	008d                	.2byte	0x8d
{
   2:	0000                	.2byte	0x0
   4:	0005                	.2byte	0x5
   6:	0801                	.2byte	0x801
   8:	0000                	.2byte	0x0
   a:	0000                	.2byte	0x0
  return sizeof(int);
   c:	0001                	.2byte	0x1
   e:	0000                	.2byte	0x0
}
  10:	1d00                	.2byte	0x1d00
	...
{
  2e:	0002                	.2byte	0x2
  30:	0000                	.2byte	0x0
  32:	0100                	.2byte	0x100
  int r = 1;
  34:	0508                	.2byte	0x508
  36:	0000006b          	.4byte	0x6b
	...
    r *= n--;
  4a:	9c01                	.2byte	0x9c01
  4c:	0000006b          	.4byte	0x6b
  50:	01006e03          	lwu	t3,16(zero) # 10 <.Ldebug_info0+0x10>
  54:	1308                	.2byte	0x1308
  56:	0000006b          	.4byte	0x6b
  while(n > 1)
  5a:	9102                	.2byte	0x9102
  5c:	045c                	.2byte	0x45c
  5e:	0072                	.2byte	0x72
  60:	0a01                	.2byte	0xa01
  62:	00006b07          	.4byte	0x6b07
  66:	0200                	.2byte	0x200
  return r;
  68:	6c91                	.2byte	0x6c91
  6a:	0500                	.2byte	0x500
}
  6c:	0504                	.2byte	0x504
  6e:	6e69                	.2byte	0x6e69
  70:	0074                	.2byte	0x74
  72:	0006                	.2byte	0x6
  74:	0000                	.2byte	0x0
  76:	0100                	.2byte	0x100
  78:	006b0503          	lb	a0,6(s6)
	...
  8c:	0000                	.2byte	0x0
  8e:	9c01                	.2byte	0x9c01
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.Ldebug_abbrev0>:
   0:	1101                	.2byte	0x1101
{
   2:	2501                	.2byte	0x2501
   4:	130e                	.2byte	0x130e
   6:	1b1f030b          	.4byte	0x1b1f030b
   a:	111f 1201 1007      	.byte	0x1f, 0x11, 0x01, 0x12, 0x07, 0x10
}
  10:	02000017          	auipc	zero,0x2000
  14:	012e                	.2byte	0x12e
  16:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
  1e:	0b39                	.2byte	0xb39
{
  20:	13491927          	.4byte	0x13491927
  24:	0111                	.2byte	0x111
  26:	0712                	.2byte	0x712
  28:	1840                	.2byte	0x1840
  2a:	197a                	.2byte	0x197a
  2c:	1301                	.2byte	0x1301
  2e:	0000                	.2byte	0x0
  30:	03000503          	lb	a0,48(zero) # 30 <.Ldebug_abbrev0+0x30>
  int r = 1;
  34:	3a08                	.2byte	0x3a08
  36:	390b3b0b          	.4byte	0x390b3b0b
  3a:	0213490b          	.4byte	0x213490b
  while(n > 1)
  3e:	0018                	.2byte	0x18
    r *= n--;
  40:	0400                	.2byte	0x400
  42:	0034                	.2byte	0x34
  44:	0b3a0803          	lb	a6,179(s4)
  48:	0b390b3b          	.4byte	0xb390b3b
  4c:	1349                	.2byte	0x1349
  4e:	1802                	.2byte	0x1802
  50:	0000                	.2byte	0x0
  52:	2405                	.2byte	0x2405
  54:	0b00                	.2byte	0xb00
  56:	030b3e0b          	.4byte	0x30b3e0b
  while(n > 1)
  5a:	0008                	.2byte	0x8
  5c:	0600                	.2byte	0x600
  5e:	002e                	.2byte	0x2e
  60:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
  return r;
  68:	0b39                	.2byte	0xb39
  6a:	1349                	.2byte	0x1349
}
  6c:	0111                	.2byte	0x111
  6e:	0712                	.2byte	0x712
  70:	1840                	.2byte	0x1840
  72:	197a                	.2byte	0x197a
  74:	0000                	.2byte	0x0
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
   0:	0094                	.2byte	0x94
   2:	0000                	.2byte	0x0
   4:	0005                	.2byte	0x5
   6:	0008                	.2byte	0x8
   8:	002a                	.2byte	0x2a
   a:	0000                	.2byte	0x0
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
  20:	011f 0000 0000      	.byte	0x1f, 0x01, 0x00, 0x00, 0x00, 0x00
  26:	0102                	.2byte	0x102
  28:	021f 020f 0000      	.byte	0x1f, 0x02, 0x0f, 0x02, 0x00, 0x00
	...
  int r = 1;
  36:	0105                	.2byte	0x105
  38:	0900                	.2byte	0x900
  3a:	0002                	.2byte	0x2
  while(n > 1)
  3c:	0000                	.2byte	0x0
  3e:	0000                	.2byte	0x0
    r *= n--;
  40:	0000                	.2byte	0x0
  42:	1500                	.2byte	0x1500
  44:	0a05                	.2byte	0xa05
  46:	00090103          	lb	sp,0(s2)
  4a:	0100                	.2byte	0x100
  4c:	0105                	.2byte	0x105
  4e:	00090103          	lb	sp,0(s2)
  52:	0100                	.2byte	0x100
  54:	00090303          	lb	t1,0(s2)
  while(n > 1)
  58:	0100                	.2byte	0x100
  5a:	0705                	.2byte	0x705
  5c:	00090103          	lb	sp,0(s2)
  60:	0100                	.2byte	0x100
  62:	0805                	.2byte	0x805
  64:	00090103          	lb	sp,0(s2)
  return r;
  68:	0100                	.2byte	0x100
  6a:	0b05                	.2byte	0xb05
}
  6c:	00090103          	lb	sp,0(s2)
  70:	0100                	.2byte	0x100
  72:	0705                	.2byte	0x705
  74:	00090003          	lb	zero,0(s2)
  78:	0100                	.2byte	0x100
  7a:	0b05                	.2byte	0xb05
  7c:	00097f03          	.4byte	0x97f03
  80:	0100                	.2byte	0x100
  82:	0a05                	.2byte	0xa05
  84:	00090203          	lb	tp,0(s2)
  88:	0100                	.2byte	0x100
  8a:	0105                	.2byte	0x105
  8c:	00090103          	lb	sp,0(s2)
  90:	0100                	.2byte	0x100
  92:	0009                	.2byte	0x9
  94:	0000                	.2byte	0x0
  96:	0101                	.2byte	0x101

Disassembly of section .debug_str:

0000000000000000 <.LASF3>:
   0:	6166                	.2byte	0x6166
{
   2:	726f7463          	bgeu	t5,t1,72a <.LFE1+0x6ae>
   6:	6169                	.2byte	0x6169
   8:	006c                	.2byte	0x6c

000000000000000a <.LASF4>:
   a:	657a6973          	csrrsi	s2,0x657,20
  return sizeof(int);
   e:	6e69666f          	jal	a2,966f4 <.LFE1+0x96678>
}
  12:	0074                	.2byte	0x74

0000000000000014 <.LASF2>:
  14:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
  18:	20373143          	fmadd.s	ft2,fa4,ft3,ft4,rup
  1c:	3231                	.2byte	0x3231
  1e:	322e                	.2byte	0x322e
{
  20:	302e                	.2byte	0x302e
  22:	2d20                	.2byte	0x2d20
  24:	616d                	.2byte	0x616d
  26:	6962                	.2byte	0x6962
  28:	6c3d                	.2byte	0x6c3d
  2a:	3670                	.2byte	0x3670
  2c:	6434                	.2byte	0x6434
  2e:	2d20                	.2byte	0x2d20
  30:	696d                	.2byte	0x696d
  32:	732d6173          	csrrsi	sp,mhpmevent18h,26
  int r = 1;
  36:	6570                	.2byte	0x6570
  38:	30323d63          	.4byte	0x30323d63
  while(n > 1)
  3c:	3931                	.2byte	0x3931
  3e:	3231                	.2byte	0x3231
    r *= n--;
  40:	3331                	.2byte	0x3331
  42:	2d20                	.2byte	0x2d20
  44:	616d                	.2byte	0x616d
  46:	6372                	.2byte	0x6372
  48:	3d68                	.2byte	0x3d68
  4a:	7672                	.2byte	0x7672
  4c:	3436                	.2byte	0x3436
  4e:	6d69                	.2byte	0x6d69
  50:	6661                	.2byte	0x6661
  52:	5f64                	.2byte	0x5f64
  54:	697a                	.2byte	0x697a
  56:	5f727363          	bgeu	tp,s7,63c <.LFE1+0x5c0>
  while(n > 1)
  5a:	697a                	.2byte	0x697a
  5c:	6566                	.2byte	0x6566
  5e:	636e                	.2byte	0x636e
  60:	6965                	.2byte	0x6965
  62:	2d20                	.2byte	0x2d20
  64:	67 00             	Address 0x0000000000000064 is out of bounds.


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
  1c:	72756f63          	bltu	a0,t2,75a <.LFE1+0x6de>
{
  20:	2f736573          	csrrsi	a0,0x2f7,6
  24:	706d6f43          	fmadd.s	ft10,fs10,ft6,fa4,unknown
  28:	7475                	.2byte	0x7475
  2a:	7265                	.2byte	0x7265
  2c:	415f 6372 6968      	.byte	0x5f, 0x41, 0x72, 0x63, 0x68, 0x69
  32:	6574                	.2byte	0x6574
  int r = 1;
  34:	72757463          	bgeu	a0,t2,75c <.LFE1+0x6e0>
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
  52:	2d73736f          	jal	t1,37b28 <.LFE1+0x37aac>
  56:	706d6f63          	bltu	s10,t1,774 <.LFE1+0x6f8>
  while(n > 1)
  5a:	6c69                	.2byte	0x6c69
  5c:	6e69                	.2byte	0x6e69
  5e:	          	jr	1590(t1)

0000000000000060 <.LASF0>:
  60:	2e656363          	bltu	a0,t1,346 <.LFE1+0x2ca>
  64:	682f0063          	beq	t5,sp,6e4 <.LFE1+0x668>
  return r;
  68:	2f656d6f          	jal	s10,5635e <.LFE1+0x562e2>
}
  6c:	2f64                	.2byte	0x2f64
  6e:	2f5f 6173 6566      	.byte	0x5f, 0x2f, 0x73, 0x61, 0x66, 0x65
  74:	775f 2f66 6f77      	.byte	0x5f, 0x77, 0x66, 0x2f, 0x77, 0x6f
  7a:	6b72                	.2byte	0x6b72
  7c:	6250532f          	.4byte	0x6250532f
  80:	2f55                	.2byte	0x2f55
  82:	72756f63          	bltu	a0,t2,7c0 <.LFE1+0x744>
  86:	2f736573          	csrrsi	a0,0x2f7,6
  8a:	706d6f43          	fmadd.s	ft10,fs10,ft6,fa4,unknown
  8e:	7475                	.2byte	0x7475
  90:	7265                	.2byte	0x7265
  92:	415f 6372 6968      	.byte	0x5f, 0x41, 0x72, 0x63, 0x68, 0x69
  98:	6574                	.2byte	0x6574
  9a:	72757463          	bgeu	a0,t2,7c2 <.LFE1+0x746>
  9e:	2d65                	.2byte	0x2d65
  a0:	55625053          	.4byte	0x55625053
  a4:	432d                	.2byte	0x432d
  a6:	2e42                	.2byte	0x2e42
  a8:	3035                	.2byte	0x3035
  aa:	3038                	.2byte	0x3038
  ac:	6178652f          	.4byte	0x6178652f
  b0:	706d                	.2byte	0x706d
  b2:	656c                	.2byte	0x656c
  b4:	72632f73          	csrrs	t5,mhpmevent6h,t1
  b8:	2d73736f          	jal	t1,37b8e <.LFE1+0x37b12>
  bc:	706d6f63          	bltu	s10,t1,7da <.LFE1+0x75e>
  c0:	6c69                	.2byte	0x6c69
  c2:	6e69                	.2byte	0x6e69
  c4:	63630067          	jr	1590(t1)
  c8:	2e65                	.2byte	0x2e65
  ca:	63630063          	beq	t1,s6,6ea <.LFE1+0x66e>
  ce:	2e65                	.2byte	0x2e65
  d0:	63 00             	Address 0x00000000000000d0 is out of bounds.


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
  32:	32727363          	bgeu	tp,t2,358 <.LFE1+0x2dc>
  int r = 1;
  36:	3070                	.2byte	0x3070
  38:	7a5f 6669 6e65      	.byte	0x5f, 0x7a, 0x69, 0x66, 0x65, 0x6e
  while(n > 1)
  3e:	32696563          	bltu	s2,t1,368 <.LFE1+0x2ec>
    r *= n--;
  42:	3070                	.2byte	0x3070
	...
