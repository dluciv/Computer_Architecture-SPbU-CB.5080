
cce_MPS.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <sizeofint>:
#include <stdio.h>

int sizeofint()
{
   0:	27bdfff8 	[33maddiu[0m	[34msp[0m,[34msp[0m,[35m-8[0m
   4:	ffbe0000 	[33msd[0m	[34ms8[0m,[35m0[0m([34msp[0m)
   8:	03a0f025 	[33mmove[0m	[34ms8[0m,[34msp[0m
  return sizeof(int);
   c:	24020004 	[33mli[0m	[34mv0[0m,[35m4[0m
}
  10:	03c0e825 	[33mmove[0m	[34msp[0m,[34ms8[0m
  14:	dfbe0000 	[33mld[0m	[34ms8[0m,[35m0[0m([34msp[0m)
  18:	27bd0008 	[33maddiu[0m	[34msp[0m,[34msp[0m,[35m8[0m
  1c:	03e00008 	[33mjr[0m	[34mra[0m
  20:	00000000 	[33mnop[0m

00000024 <factorial>:

int factorial(int n)
{
  24:	27bdfff0 	[33maddiu[0m	[34msp[0m,[34msp[0m,[35m-16[0m
  28:	ffbe0008 	[33msd[0m	[34ms8[0m,[35m8[0m([34msp[0m)
  2c:	03a0f025 	[33mmove[0m	[34ms8[0m,[34msp[0m
  30:	afc40010 	[33msw[0m	[34ma0[0m,[35m16[0m([34ms8[0m)
  int r = 1;
  34:	24020001 	[33mli[0m	[34mv0[0m,[35m1[0m
  38:	afc20000 	[33msw[0m	[34mv0[0m,[35m0[0m([34ms8[0m)
  while(n > 1)
  3c:	10000007 	[33mb[0m	[35m5c[0m <[32mfactorial[0m[35m+0x[0m[35m38[0m>
  40:	00000000 	[33mnop[0m
    r *= n--;
  44:	8fc20010 	[33mlw[0m	[34mv0[0m,[35m16[0m([34ms8[0m)
  48:	2443ffff 	[33maddiu[0m	[34mv1[0m,[34mv0[0m,[35m-1[0m
  4c:	afc30010 	[33msw[0m	[34mv1[0m,[35m16[0m([34ms8[0m)
  50:	8fc30000 	[33mlw[0m	[34mv1[0m,[35m0[0m([34ms8[0m)
  54:	70621002 	[33mmul[0m	[34mv0[0m,[34mv1[0m,[34mv0[0m
  58:	afc20000 	[33msw[0m	[34mv0[0m,[35m0[0m([34ms8[0m)
  while(n > 1)
  5c:	8fc20010 	[33mlw[0m	[34mv0[0m,[35m16[0m([34ms8[0m)
  60:	28420002 	[33mslti[0m	[34mv0[0m,[34mv0[0m,[35m2[0m
  64:	1040fff7 	[33mbeqz[0m	[34mv0[0m,[35m44[0m <[32mfactorial[0m[35m+0x[0m[35m20[0m>
  68:	00000000 	[33mnop[0m
  return r;
  6c:	8fc20000 	[33mlw[0m	[34mv0[0m,[35m0[0m([34ms8[0m)
}
  70:	03c0e825 	[33mmove[0m	[34msp[0m,[34ms8[0m
  74:	dfbe0008 	[33mld[0m	[34ms8[0m,[35m8[0m([34msp[0m)
  78:	27bd0010 	[33maddiu[0m	[34msp[0m,[34msp[0m,[35m16[0m
  7c:	03e00008 	[33mjr[0m	[34mra[0m
  80:	00000000 	[33mnop[0m

00000084 <main>:

int main()
{
  84:	27bdffd0 	[33maddiu[0m	[34msp[0m,[34msp[0m,[35m-48[0m
  88:	ffbf0028 	[33msd[0m	[34mra[0m,[35m40[0m([34msp[0m)
  8c:	ffbe0020 	[33msd[0m	[34ms8[0m,[35m32[0m([34msp[0m)
  90:	03a0f025 	[33mmove[0m	[34ms8[0m,[34msp[0m
  printf("%d\n", factorial(6));
  94:	24040006 	[33mli[0m	[34ma0[0m,[35m6[0m
  98:	0c000000 	[33mjal[0m	[35m0[0m <[32msizeofint[0m>
  9c:	00000000 	[33mnop[0m
  a0:	00402825 	[33mmove[0m	[34ma1[0m,[34mv0[0m
  a4:	3c020000 	[33mlui[0m	[34mv0[0m,[35m0x0[0m
  a8:	24440000 	[33maddiu[0m	[34ma0[0m,[34mv0[0m,[35m0[0m
  ac:	0c000000 	[33mjal[0m	[35m0[0m <[32msizeofint[0m>
  b0:	00000000 	[33mnop[0m
  return 0;
  b4:	00001025 	[33mmove[0m	[34mv0[0m,[34mzero[0m
}
  b8:	03c0e825 	[33mmove[0m	[34msp[0m,[34ms8[0m
  bc:	dfbf0028 	[33mld[0m	[34mra[0m,[35m40[0m([34msp[0m)
  c0:	dfbe0020 	[33mld[0m	[34ms8[0m,[35m32[0m([34msp[0m)
  c4:	27bd0030 	[33maddiu[0m	[34msp[0m,[34msp[0m,[35m48[0m
  c8:	03e00008 	[33mjr[0m	[34mra[0m
  cc:	00000000 	[33mnop[0m

Disassembly of section .reginfo:

00000000 <.reginfo>:
{
   0:	e000003c 	[33msc[0m	[34mzero[0m,[35m60[0m([34mzero[0m)
	...

Disassembly of section .MIPS.abiflags:

00000000 <.MIPS.abiflags>:
   0:	00004001 	[33mmovf[0m	[34mt0[0m,[34mzero[0m,[34m$fcc0[0m
   4:	02020001 	[33m.word[0m	[35m0x2020001[0m
	...
  10:	00000001 	[33mmovf[0m	[34mzero[0m,[34mzero[0m,[34m$fcc0[0m
  14:	00000000 	[33mnop[0m

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	00000000 	[33mnop[0m
   4:	40000000 	[33mmfc0[0m	[34mzero[0m,[34mc0_index[0m
	...
}
  14:	00000008 	[33mjr[0m	[34mzero[0m
  18:	0000001e 	[33mddiv[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  1c:	0000001f 	[33mddivu[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  20:	00000000 	[33mnop[0m
{
  24:	40000000 	[33mmfc0[0m	[34mzero[0m,[34mc0_index[0m
  28:	fffffff8 	[33msd[0m	[34mra[0m,[35m-8[0m([34mra[0m)
	...
  int r = 1;
  34:	00000010 	[33mmfhi[0m	[34mzero[0m
  38:	0000001e 	[33mddiv[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  while(n > 1)
  3c:	0000001f 	[33mddivu[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  40:	00000000 	[33mnop[0m
    r *= n--;
  44:	c0000000 	[33mll[0m	[34mzero[0m,[35m0[0m([34mzero[0m)
  48:	fffffff8 	[33msd[0m	[34mra[0m,[35m-8[0m([34mra[0m)
	...
  54:	00000030 	[33mtge[0m	[34mzero[0m,[34mzero[0m
  58:	0000001e 	[33mddiv[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  while(n > 1)
  5c:	0000001f 	[33mddivu[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	25640a00 	[33maddiu[0m	[34ma0[0m,[34mt3[0m,[35m2560[0m

Disassembly of section .debug_info:

00000000 <.debug_info>:
{
   0:	000000fa 	[33mdsrl[0m	[34mzero[0m,[34mzero[0m,[35m0x3[0m
   4:	00050104 	[33m.word[0m	[35m0x50104[0m
   8:	00000000 	[33mnop[0m
  return sizeof(int);
   c:	02000000 	[33m.word[0m	[35m0x2000000[0m
}
  10:	a21d0000 	[33msb[0m	[34msp[0m,[35m0[0m([34ms0[0m)
  14:	007b0000 	[33m.word[0m	[35m0x7b0000[0m
  18:	000e0000 	[33msll[0m	[34mzero[0m,[34mt6[0m,[35m0x0[0m
  1c:	00000000 	[33mnop[0m
  20:	00d00000 	[33m.word[0m	[35m0xd00000[0m
{
  24:	00000101 	[33m.word[0m	[35m0x101[0m
  28:	06000001 	[33mbltz[0m	[34ms0[0m,[35m30[0m <[32m.debug_info[0m[35m+0x[0m[35m30[0m>
  2c:	37010108 	[33mori[0m	[34mat[0m,[34mt8[0m,[35m0x108[0m
  30:	000000e1 	[33m.word[0m	[35m0xe1[0m
  int r = 1;
  34:	01020500 	[33m.word[0m	[35m0x1020500[0m
  38:	00012d01 	[33m.word[0m	[35m0x12d01[0m
  while(n > 1)
  3c:	02070000 	[33m.word[0m	[35m0x2070000[0m
  40:	01070104 	[33m.word[0m	[35m0x1070104[0m
    r *= n--;
  44:	05000000 	[33mbltz[0m	[34mt0[0m,[35m48[0m <[32m.debug_info[0m[35m+0x[0m[35m48[0m>
  48:	f4010407 	[33msdc1[0m	[34m$f1[0m,[35m1031[0m([34mzero[0m)
  4c:	00000090 	[33m.word[0m	[35m0x90[0m
  50:	01080500 	[33m.word[0m	[35m0x1080500[0m
  54:	00000001 	[33mmovf[0m	[34mzero[0m,[34mzero[0m,[34m$fcc0[0m
  58:	08070000 	[33mj[0m	[35m1c0000[0m <[32mmain[0m[35m+0x[0m[35m1bff7c[0m>
  while(n > 1)
  5c:	00ca0304 	[33m.word[0m	[35m0xca0304[0m
  60:	05696e74 	[33mtgeiu[0m	[34mt3[0m,[35m28276[0m
  64:	00010407 	[33m.word[0m	[35m0x10407[0m
  68:	0000006e 	[33m.word[0m	[35m0x6e[0m
  return r;
  6c:	01080400 	[33m.word[0m	[35m0x1080400[0m
}
  70:	00012101 	[33m.word[0m	[35m0x12101[0m
  74:	01060000 	[33m.word[0m	[35m0x1060000[0m
  78:	00ef0400 	[33m.word[0m	[35m0xef0400[0m
  7c:	00007305 	[33m.word[0m	[35m0x7305[0m
  80:	04000000 	[33mbltz[0m	[34mzero[0m,[35m84[0m <[32m.debug_info[0m[35m+0x[0m[35m84[0m>
{
  84:	7a060000 	[33m.word[0m	[35m0x7a060000[0m
  88:	011a02ce 	[33m.word[0m	[35m0x11a02ce[0m
  8c:	05000000 	[33mbltz[0m	[34mt0[0m,[35m90[0m <[32m.debug_info[0m[35m+0x[0m[35m90[0m>
  90:	5e000000 	[33mbgtzl[0m	[34ms0[0m,[35m94[0m <[32m.debug_info[0m[35m+0x[0m[35m94[0m>
  printf("%d\n", factorial(6));
  94:	9c070000 	[33mlwu[0m	[34ma3[0m,[35m0[0m([34mzero[0m)
  98:	007f0800 	[33m.word[0m	[35m0x7f0800[0m
  9c:	09000000 	[33mj[0m	[35m4000000[0m <[32mmain[0m[35m+0x[0m[35m3ffff7c[0m>
  a0:	81011005 	[33mlb[0m	[34mat[0m,[35m4101[0m([34mt0[0m)
  a4:	0000005e 	[33m.word[0m	[35m0x5e[0m
  a8:	00000084 	[33m.word[0m	[35m0x84[0m
  ac:	0000004c 	[33msyscall[0m	[35m0x1[0m
  b0:	019c0a00 	[33m.word[0m	[35m0x19c0a00[0m
  return 0;
  b4:	0000fd01 	[33m.word[0m	[35m0xfd01[0m
}
  b8:	08050000 	[33mj[0m	[35m140000[0m <[32mmain[0m[35m+0x[0m[35m13ff7c[0m>
  bc:	005e0000 	[33m.word[0m	[35m0x5e0000[0m
  c0:	00240000 	[33m.word[0m	[35m0x240000[0m
  c4:	0060019c 	[33m.word[0m	[35m0x60019c[0m
  c8:	000000e7 	[33m.word[0m	[35m0xe7[0m
  cc:	0b6e0001 	[33mj[0m	[35mdb80004[0m <[32mmain[0m[35m+0x[0m[35mdb7ff80[0m>
  d0:	08130000 	[33mj[0m	[35m4c0000[0m <[32mmain[0m[35m+0x[0m[35m4bff7c[0m>
  d4:	005e0291 	[33m.word[0m	[35m0x5e0291[0m
  d8:	000c7200 	[33msll[0m	[34mt6[0m,[34mt4[0m,[35m0x8[0m
  dc:	010a0700 	[33m.word[0m	[35m0x10a0700[0m
  e0:	00005e02 	[33msrl[0m	[34mt3[0m,[34mzero[0m,[35m0x18[0m
  e4:	9170000d 	[33mlbu[0m	[34ms0[0m,[35m13[0m([34mt3[0m)
  e8:	00000086 	[33m.word[0m	[35m0x86[0m
  ec:	01030500 	[33m.word[0m	[35m0x1030500[0m
  f0:	00005e00 	[33msll[0m	[34mt3[0m,[34mzero[0m,[35m0x18[0m
  f4:	00000000 	[33mnop[0m
  f8:	00002401 	[33m.word[0m	[35m0x2401[0m
  fc:	Address 0xfc is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
{
   0:	0124000b 	[33mmovn[0m	[34mzero[0m,[34mt1[0m,[34ma0[0m
   4:	0b3e0b03 	[33mj[0m	[35mcf82c0c[0m <[32mmain[0m[35m+0x[0m[35mcf82b88[0m>
   8:	0e000002 	[33mjal[0m	[35m8000008[0m <[32mmain[0m[35m+0x[0m[35m7ffff84[0m>
  return sizeof(int);
   c:	1101250e 	[33mbeq[0m	[34mt0[0m,[34mat[0m,[35m9448[0m <[32mmain[0m[35m+0x[0m[35m93c4[0m>
}
  10:	130b030e 	[33mbeq[0m	[34mt8[0m,[34mt3[0m,[35mc4c[0m <[32mmain[0m[35m+0x[0m[35mbc8[0m>
  14:	1b0e1101 	[33m.word[0m	[35m0x1b0e1101[0m
  18:	12061017 	[33mbeq[0m	[34ms0[0m,[34ma2[0m,[35m4078[0m <[32mmain[0m[35m+0x[0m[35m3ff4[0m>
  1c:	00000324 	[33m.word[0m	[35m0x324[0m
  20:	000b0b3e 	[33mdsrl32[0m	[34mat[0m,[34mt3[0m,[35m0xc[0m
{
  24:	0b030800 	[33mj[0m	[35mc0c2000[0m <[32mmain[0m[35m+0x[0m[35mc0c1f7c[0m>
  28:	00042600 	[33msll[0m	[34ma0[0m,[34ma0[0m,[35m0x18[0m
  2c:	49130000 	[33mbc2tl[0m	[34m$cc4[0m,[35m30[0m <[32m.debug_abbrev[0m[35m+0x[0m[35m30[0m>
  30:	050f000b 	[33m.word[0m	[35m0x50f000b[0m
  int r = 1;
  34:	0b491300 	[33mj[0m	[35md244c00[0m <[32mmain[0m[35m+0x[0m[35md244b7c[0m>
  38:	00062e01 	[33m.word[0m	[35m0x62e01[0m
  while(n > 1)
  3c:	3f19030e 	[33m.word[0m	[35m0x3f19030e[0m
  40:	3a0b3b0b 	[33mxori[0m	[34mt3[0m,[34ms0[0m,[35m0x3b0b[0m
    r *= n--;
  44:	390b2719 	[33mxori[0m	[34mt3[0m,[34mt0[0m,[35m0x2719[0m
  48:	49133c19 	[33mbc2tl[0m	[34m$cc4[0m,[35mf0b0[0m <[32mmain[0m[35m+0x[0m[35mf02c[0m>
  4c:	01130000 	[33m.word[0m	[35m0x1130000[0m
  50:	07050049 	[33m.word[0m	[35m0x7050049[0m
  54:	13000008 	[33mbeqz[0m	[34mt8[0m,[35m78[0m <[32m.debug_abbrev[0m[35m+0x[0m[35m78[0m>
  58:	18000000 	[33mblez[0m	[34mzero[0m,[35m5c[0m <[32m.debug_abbrev[0m[35m+0x[0m[35m5c[0m>
  while(n > 1)
  5c:	092e003f 	[33mj[0m	[35m4b800fc[0m <[32mmain[0m[35m+0x[0m[35m4b80078[0m>
  60:	19030e3a 	[33m.word[0m	[35m0x19030e3a[0m
  64:	0b3b0b39 	[33mj[0m	[35mcec2ce4[0m <[32mmain[0m[35m+0x[0m[35mcec2c60[0m>
  68:	0b491311 	[33mj[0m	[35md244c44[0m <[32mmain[0m[35m+0x[0m[35md244bc0[0m>
  return r;
  6c:	01120640 	[33m.word[0m	[35m0x1120640[0m
}
  70:	187c1900 	[33m.word[0m	[35m0x187c1900[0m
  74:	000a2e01 	[33m.word[0m	[35m0xa2e01[0m
  78:	3f19030e 	[33m.word[0m	[35m0x3f19030e[0m
  7c:	3a0b3b0b 	[33mxori[0m	[34mt3[0m,[34ms0[0m,[35m0x3b0b[0m
  80:	390b2719 	[33mxori[0m	[34mt3[0m,[34mt0[0m,[35m0x2719[0m
{
  84:	49131101 	[33mbc2tl[0m	[34m$cc4[0m,[35m448c[0m <[32mmain[0m[35m+0x[0m[35m4408[0m>
  88:	12064018 	[33mbeq[0m	[34ms0[0m,[34ma2[0m,[35m100ec[0m <[32mmain[0m[35m+0x[0m[35m10068[0m>
  8c:	7a190113 	[33m.word[0m	[35m0x7a190113[0m
  90:	00000b05 	[33m.word[0m	[35m0xb05[0m
  printf("%d\n", factorial(6));
  94:	0003083a 	[33mdsrl[0m	[34mat[0m,[34mv1[0m,[35m0x0[0m
  98:	0b3b0b39 	[33mj[0m	[35mcec2ce4[0m <[32mmain[0m[35m+0x[0m[35mcec2c60[0m>
  9c:	0b491302 	[33mj[0m	[35md244c08[0m <[32mmain[0m[35m+0x[0m[35md244b84[0m>
  a0:	1800000c 	[33mblez[0m	[34mzero[0m,[35md4[0m <[32mmain[0m[35m+0x[0m[35m50[0m>
  a4:	34000308 	[33mli[0m	[34mzero[0m,[35m0x308[0m
  a8:	3a0b3b0b 	[33mxori[0m	[34mt3[0m,[34ms0[0m,[35m0x3b0b[0m
  ac:	390b4913 	[33mxori[0m	[34mt3[0m,[34mt0[0m,[35m0x4913[0m
  b0:	02180000 	[33m.word[0m	[35m0x2180000[0m
  return 0;
  b4:	0d2e003f 	[33mjal[0m	[35m4b800fc[0m <[32mmain[0m[35m+0x[0m[35m4b80078[0m>
}
  b8:	19030e3a 	[33m.word[0m	[35m0x19030e3a[0m
  bc:	0b3b0b39 	[33mj[0m	[35mcec2ce4[0m <[32mmain[0m[35m+0x[0m[35mcec2c60[0m>
  c0:	0b491311 	[33mj[0m	[35md244c44[0m <[32mmain[0m[35m+0x[0m[35md244bc0[0m>
  c4:	01120640 	[33m.word[0m	[35m0x1120640[0m
  c8:	187a1900 	[33m.word[0m	[35m0x187a1900[0m
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
{
   0:	0000001c 	[33mdmult[0m	[34mzero[0m,[34mzero[0m
   4:	00020000 	[33msll[0m	[34mzero[0m,[34mv0[0m,[35m0x0[0m
   8:	00000400 	[33msll[0m	[34mzero[0m,[34mzero[0m,[35m0x10[0m
	...
}
  14:	000000d0 	[33m.word[0m	[35m0xd0[0m
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
{
   0:	00000084 	[33m.word[0m	[35m0x84[0m
   4:	00030000 	[33msll[0m	[34mzero[0m,[34mv1[0m,[35m0x0[0m
   8:	003f0101 	[33m.word[0m	[35m0x3f0101[0m
  return sizeof(int);
   c:	fb0e0d00 	[33msdc2[0m	[34m$14[0m,[35m3328[0m([34mt8[0m)
}
  10:	01010101 	[33m.word[0m	[35m0x1010101[0m
  14:	00000001 	[33mmovf[0m	[34mzero[0m,[34mzero[0m,[34m$fcc0[0m
  18:	0000012f 	[33m.word[0m	[35m0x12f[0m
  1c:	7573722f 	[33mjalx[0m	[35m5cdc8bc[0m <[32mmain[0m[35m+0x[0m[35m5cdc838[0m>
  20:	6d697073 	[33mldr[0m	[34mt1[0m,[35m28787[0m([34mt3[0m)
{
  24:	36342d65 	[33mori[0m	[34ms4[0m,[34ms1[0m,[35m0x2d65[0m
  28:	6c662f69 	[33mldr[0m	[34ma2[0m,[35m12137[0m([34mv1[0m)
  2c:	6e636c75 	[33mldr[0m	[34mv1[0m,[35m27765[0m([34ms3[0m)
  30:	64650000 	[33mdaddiu[0m	[34ma1[0m,[34mv1[0m,[35m0[0m
  int r = 1;
  34:	6363652e 	[33mdaddi[0m	[34mv1[0m,[34mk1[0m,[35m25902[0m
  38:	63000000 	[33mdaddi[0m	[34mzero[0m,[34mt8[0m,[35m0[0m
  while(n > 1)
  3c:	00737464 	[33m.word[0m	[35m0x737464[0m
  40:	696f2e68 	[33mldl[0m	[34mt7[0m,[35m11880[0m([34mt3[0m)
    r *= n--;
  44:	00010000 	[33msll[0m	[34mzero[0m,[34mat[0m,[35m0x0[0m
  48:	00050100 	[33msll[0m	[34mzero[0m,[34ma1[0m,[35m0x4[0m
  4c:	05020000 	[33mbltzl[0m	[34mt0[0m,[35m50[0m <[32m.debug_line[0m[35m+0x[0m[35m50[0m>
  50:	00001505 	[33m.word[0m	[35m0x1505[0m
  54:	0abb0501 	[33mj[0m	[35maec1404[0m <[32mmain[0m[35m+0x[0m[35maec1380[0m>
  58:	4b083f05 	[33mc2[0m	[35m0x1083f05[0m
  while(n > 1)
  5c:	07f30508 	[33mbgezall[0m	[34mra[0m,[35m1480[0m <[32mmain[0m[35m+0x[0m[35m13fc[0m>
  60:	83050b83 	[33mlb[0m	[34ma1[0m,[35m2947[0m([34mt8[0m)
  64:	0507ba05 	[33m.word[0m	[35m0x507ba05[0m
  68:	0bb9050a 	[33mj[0m	[35mee41428[0m <[32mmain[0m[35m+0x[0m[35mee413a4[0m>
  return r;
  6c:	f405014b 	[33msdc1[0m	[34m$f5[0m,[35m331[0m([34mzero[0m)
}
  70:	083f0503 	[33mj[0m	[35mfc140c[0m <[32mmain[0m[35m+0x[0m[35mfc1388[0m>
  74:	f3000204 	[33mscd[0m	[34mzero[0m,[35m516[0m([34mt8[0m)
  78:	0106ba05 	[33m.word[0m	[35m0x106ba05[0m
  7c:	0a06083d 	[33mj[0m	[35m81820f4[0m <[32mmain[0m[35m+0x[0m[35m8182070[0m>
  80:	05014b02 	[33mbgez[0m	[34mt0[0m,[35m12c8c[0m <[32mmain[0m[35m+0x[0m[35m12c08[0m>
{
  84:	18000101 	[33mblez[0m	[34mzero[0m,[35m48c[0m <[32mmain[0m[35m+0x[0m[35m408[0m>

Disassembly of section .debug_str:

00000000 <.debug_str>:
{
   0:	6c6f6e67 	[33mldr[0m	[34mt7[0m,[35m28263[0m([34mv1[0m)
   4:	206c6f6e 	[33maddi[0m	[34mt4[0m,[34mv1[0m,[35m28526[0m
   8:	6720696e 	[33mdaddiu[0m	[34mzero[0m,[34mt9[0m,[35m26990[0m
  return sizeof(int);
   c:	74002f68 	[33mjalx[0m	[35mbda0[0m <[32mmain[0m[35m+0x[0m[35mbd1c[0m>
}
  10:	6f6d652f 	[33mldr[0m	[34mt5[0m,[35m25903[0m([34mk1[0m)
  14:	642f5f2f 	[33mdaddiu[0m	[34mt7[0m,[34mat[0m,[35m24367[0m
  18:	73616665 	[33m.word[0m	[35m0x73616665[0m
  1c:	5f77662f 	[33m.word[0m	[35m0x5f77662f[0m
  20:	776f726b 	[33mjalx[0m	[35mdbdc9ac[0m <[32mmain[0m[35m+0x[0m[35mdbdc928[0m>
{
  24:	2f535062 	[33msltiu[0m	[34ms3[0m,[34mk0[0m,[35m20578[0m
  28:	552f636f 	[33mbnel[0m	[34mt1[0m,[34mt7[0m,[35m18de8[0m <[32mmain[0m[35m+0x[0m[35m18d64[0m>
  2c:	75727365 	[33mjalx[0m	[35m5c9cd94[0m <[32mmain[0m[35m+0x[0m[35m5c9cd10[0m>
  30:	732f436f 	[33m.word[0m	[35m0x732f436f[0m
  int r = 1;
  34:	6d707574 	[33mldr[0m	[34ms0[0m,[35m30068[0m([34mt3[0m)
  38:	65725f41 	[33mdaddiu[0m	[34ms2[0m,[34mt3[0m,[35m24385[0m
  while(n > 1)
  3c:	72636869 	[33m.word[0m	[35m0x72636869[0m
  40:	74656374 	[33mjalx[0m	[35m1958dd0[0m <[32mmain[0m[35m+0x[0m[35m1958d4c[0m>
    r *= n--;
  44:	7572652d 	[33mjalx[0m	[35m5c994b4[0m <[32mmain[0m[35m+0x[0m[35m5c99430[0m>
  48:	53506255 	[33mbeql[0m	[34mk0[0m,[34ms0[0m,[35m189a0[0m <[32mmain[0m[35m+0x[0m[35m1891c[0m>
  4c:	2d43422e 	[33msltiu[0m	[34mv1[0m,[34mt2[0m,[35m16942[0m
  50:	35303830 	[33mori[0m	[34ms0[0m,[34mt1[0m,[35m0x3830[0m
  54:	2f657861 	[33msltiu[0m	[34ma1[0m,[34mk1[0m,[35m30817[0m
  58:	6d706c65 	[33mldr[0m	[34ms0[0m,[35m27749[0m([34mt3[0m)
  while(n > 1)
  5c:	732f6372 	[33m.word[0m	[35m0x732f6372[0m
  60:	6f73732d 	[33mldr[0m	[34ms3[0m,[35m29485[0m([34mk1[0m)
  64:	636f6d70 	[33mdaddi[0m	[34mt7[0m,[34mk1[0m,[35m28016[0m
  68:	696c696e 	[33mldl[0m	[34mt4[0m,[35m26990[0m([34mt3[0m)
  return r;
  6c:	6700756e 	[33mdaddiu[0m	[34mzero[0m,[34mt8[0m,[35m30062[0m
}
  70:	7369676e 	[33m.word[0m	[35m0x7369676e[0m
  74:	65642069 	[33mdaddiu[0m	[34ma0[0m,[34mt3[0m,[35m8297[0m
  78:	6e740063 	[33mldr[0m	[34ms4[0m,[35m99[0m([34ms3[0m)
  7c:	63652e63 	[33mdaddi[0m	[34ma1[0m,[34mk1[0m,[35m11875[0m
  80:	006d6169 	[33m.word[0m	[35m0x6d6169[0m
{
  84:	6e007369 	[33mldr[0m	[34mzero[0m,[35m29545[0m([34ms0[0m)
  88:	7a656f66 	[33m.word[0m	[35m0x7a656f66[0m
  8c:	696e7400 	[33mldl[0m	[34mt6[0m,[35m29696[0m([34mt3[0m)
  90:	6c6f6e67 	[33mldr[0m	[34mt7[0m,[35m28263[0m([34mv1[0m)
  printf("%d\n", factorial(6));
  94:	20756e73 	[33maddi[0m	[34ms5[0m,[34mv1[0m,[35m28275[0m
  98:	69676e65 	[33mldl[0m	[34ma3[0m,[35m28261[0m([34mt3[0m)
  9c:	6420696e 	[33mdaddiu[0m	[34mzero[0m,[34mat[0m,[35m26990[0m
  a0:	7400474e 	[33mjalx[0m	[35m11d38[0m <[32mmain[0m[35m+0x[0m[35m11cb4[0m>
  a4:	55204331 	[33mbnezl[0m	[34mt1[0m,[35m10d6c[0m <[32mmain[0m[35m+0x[0m[35m10ce8[0m>
  a8:	37203133 	[33mori[0m	[34mzero[0m,[34mt9[0m,[35m0x3133[0m
  ac:	2e312e30 	[33msltiu[0m	[34ms1[0m,[34ms1[0m,[35m11824[0m
  b0:	202d6d61 	[33maddi[0m	[34mt5[0m,[34mat[0m,[35m28001[0m
  return 0;
  b4:	7263683d 	[33m.word[0m	[35m0x7263683d[0m
}
  b8:	6d697073 	[33mldr[0m	[34mt1[0m,[35m28787[0m([34mt3[0m)
  bc:	3634202d 	[33mori[0m	[34ms4[0m,[34ms1[0m,[35m0x202d[0m
  c0:	6d697073 	[33mldr[0m	[34mt1[0m,[35m28787[0m([34mt3[0m)
  c4:	3634202d 	[33mori[0m	[34ms4[0m,[34ms1[0m,[35m0x202d[0m
  c8:	67006c6f 	[33mdaddiu[0m	[34mzero[0m,[34mt8[0m,[35m27759[0m
  cc:	6e67206c 	[33mldr[0m	[34ma3[0m,[35m8300[0m([34ms3[0m)
  d0:	6f6e6720 	[33mldr[0m	[34mt6[0m,[35m26400[0m([34mk1[0m)
  d4:	756e7369 	[33mjalx[0m	[35m5b9cda4[0m <[32mmain[0m[35m+0x[0m[35m5b9cd20[0m>
  d8:	676e6564 	[33mdaddiu[0m	[34mt6[0m,[34mk1[0m,[35m25956[0m
  dc:	20696e74 	[33maddi[0m	[34mt1[0m,[34mv1[0m,[35m28276[0m
  e0:	00756e73 	[33mtltu[0m	[34mv1[0m,[34ms5[0m,[35m0x1b9[0m
  e4:	69676e65 	[33mldl[0m	[34ma3[0m,[35m28261[0m([34mt3[0m)
  e8:	64206368 	[33mdaddiu[0m	[34mzero[0m,[34mat[0m,[35m25448[0m
  ec:	61720063 	[33mdaddi[0m	[34ms2[0m,[34mt3[0m,[35m99[0m
  f0:	68617200 	[33mldl[0m	[34mat[0m,[35m29184[0m([34mv1[0m)
  f4:	6c6f6e67 	[33mldr[0m	[34mt7[0m,[35m28263[0m([34mv1[0m)
  f8:	20696e74 	[33maddi[0m	[34mt1[0m,[34mv1[0m,[35m28276[0m
  fc:	00666163 	[33m.word[0m	[35m0x666163[0m
 100:	746f7269 	[33mjalx[0m	[35m1bdc9a4[0m <[32mmain[0m[35m+0x[0m[35m1bdc920[0m>
 104:	616c0073 	[33mdaddi[0m	[34mt4[0m,[34mt3[0m,[35m115[0m
 108:	686f7274 	[33mldl[0m	[34mt7[0m,[35m29300[0m([34mv1[0m)
 10c:	20756e73 	[33maddi[0m	[34ms5[0m,[34mv1[0m,[35m28275[0m
 110:	69676e65 	[33mldl[0m	[34ma3[0m,[35m28261[0m([34mt3[0m)
 114:	6420696e 	[33mdaddiu[0m	[34mzero[0m,[34mat[0m,[35m26990[0m
 118:	74007072 	[33mjalx[0m	[35m1c1c8[0m <[32mmain[0m[35m+0x[0m[35m1c144[0m>
 11c:	696e7466 	[33mldl[0m	[34mt6[0m,[35m29798[0m([34mt3[0m)
 120:	006c6f6e 	[33m.word[0m	[35m0x6c6f6e[0m
 124:	6720646f 	[33mdaddiu[0m	[34mzero[0m,[34mt9[0m,[35m25711[0m
 128:	75626c65 	[33mjalx[0m	[35m589b194[0m <[32mmain[0m[35m+0x[0m[35m589b110[0m>
 12c:	0073686f 	[33m.word[0m	[35m0x73686f[0m
 130:	72742069 	[33m.word[0m	[35m0x72742069[0m
 134:	6e740073 	[33mldr[0m	[34ms4[0m,[35m115[0m([34ms3[0m)
 138:	69676e65 	[33mldl[0m	[34ma3[0m,[35m28261[0m([34mt3[0m)
 13c:	64206368 	[33mdaddiu[0m	[34mzero[0m,[34mat[0m,[35m25448[0m
 140:	Address 0x140 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
{
   0:	00474343 	[33m.word[0m	[35m0x474343[0m
   4:	3a202847 	[33mxori[0m	[34mzero[0m,[34ms1[0m,[35m0x2847[0m
   8:	4e552920 	[33mmadd.s[0m	[34m$f4[0m,[34m$f18[0m,[34m$f5[0m,[34m$f21[0m
  return sizeof(int);
   c:	31332e31 	[33mandi[0m	[34ms3[0m,[34mt1[0m,[35m0x2e31[0m
}
  10:	Address 0x10 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
{
   0:	0000000c 	[33msyscall[0m
   4:	ffffffff 	[33msd[0m	[34mra[0m,[35m-1[0m([34mra[0m)
   8:	0100017c 	[33m.word[0m	[35m0x100017c[0m
  return sizeof(int);
   c:	1f0d1d00 	[33m.word[0m	[35m0x1f0d1d00[0m
}
  10:	0000001c 	[33mdmult[0m	[34mzero[0m,[34mzero[0m
	...
  1c:	00000024 	[33mand[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  20:	440e0844 	[33m.word[0m	[35m0x440e0844[0m
{
  24:	9e02440d 	[33mlwu[0m	[34mv0[0m,[35m17421[0m([34ms0[0m)
  28:	1e480d1d 	[33m.word[0m	[35m0x1e480d1d[0m
  2c:	48de0e00 	[33m.word[0m	[35m0x48de0e00[0m
  30:	00000020 	[33madd[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  int r = 1;
  34:	00000000 	[33mnop[0m
  38:	00000024 	[33mand[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  while(n > 1)
  3c:	00000060 	[33m.word[0m	[35m0x60[0m
  40:	440e1044 	[33m.word[0m	[35m0x440e1044[0m
    r *= n--;
  44:	9e02440d 	[33mlwu[0m	[34mv0[0m,[35m17421[0m([34ms0[0m)
  48:	1e02440d 	[33m.word[0m	[35m0x1e02440d[0m
  4c:	1d48de0e 	[33m.word[0m	[35m0x1d48de0e[0m
  50:	00000000 	[33mnop[0m
  54:	00000020 	[33madd[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  58:	00000000 	[33mnop[0m
  while(n > 1)
  5c:	00000084 	[33m.word[0m	[35m0x84[0m
  60:	0000004c 	[33msyscall[0m	[35m0x1[0m
  64:	440e3048 	[33m.word[0m	[35m0x440e3048[0m
  68:	9f029e04 	[33mlwu[0m	[34mv0[0m,[35m-25084[0m([34mt8[0m)
  return r;
  6c:	440d1e68 	[33m.word[0m	[35m0x440d1e68[0m
}
  70:	0d1d4cde 	[33mjal[0m	[35m4753378[0m <[32mmain[0m[35m+0x[0m[35m47532f4[0m>
  74:	df0e0000 	[33mld[0m	[34mt6[0m,[35m0[0m([34mt8[0m)

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
{
   0:	41000000 	[33m.word[0m	[35m0x41000000[0m
   4:	0f676e75 	[33mjal[0m	[35md9db9d4[0m <[32mmain[0m[35m+0x[0m[35md9db950[0m>
   8:	00010000 	[33msll[0m	[34mzero[0m,[34mat[0m,[35m0x0[0m
  return sizeof(int);
   c:	00070401 	[33m.word[0m	[35m0x70401[0m
