
cce_MPS.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <sizeofint>:
#include <stdio.h>
#define DOUBLE_PI 3.14159265358979323846

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

00000084 <ipow>:

double ipow(int pow, double base)
{
  84:	27bdffe8 	[33maddiu[0m	[34msp[0m,[34msp[0m,[35m-24[0m
  88:	ffbe0010 	[33msd[0m	[34ms8[0m,[35m16[0m([34msp[0m)
  8c:	03a0f025 	[33mmove[0m	[34ms8[0m,[34msp[0m
  90:	afc40018 	[33msw[0m	[34ma0[0m,[35m24[0m([34ms8[0m)
  94:	ffc50020 	[33msd[0m	[34ma1[0m,[35m32[0m([34ms8[0m)
  double res = 1, tmp = base;
  98:	d7800000 	[33mldc1[0m	[34m$f0[0m,[35m0[0m([34mgp[0m)
  9c:	f7c00000 	[33msdc1[0m	[34m$f0[0m,[35m0[0m([34ms8[0m)
  a0:	d7c00020 	[33mldc1[0m	[34m$f0[0m,[35m32[0m([34ms8[0m)
  a4:	f7c00008 	[33msdc1[0m	[34m$f0[0m,[35m8[0m([34ms8[0m)
  while(pow)
  a8:	1000000f 	[33mb[0m	[35me8[0m <[32mipow[0m[35m+0x[0m[35m64[0m>
  ac:	00000000 	[33mnop[0m
  {
    if(pow & 1)
  b0:	8fc20018 	[33mlw[0m	[34mv0[0m,[35m24[0m([34ms8[0m)
  b4:	30420001 	[33mandi[0m	[34mv0[0m,[34mv0[0m,[35m0x1[0m
  b8:	10400005 	[33mbeqz[0m	[34mv0[0m,[35md0[0m <[32mipow[0m[35m+0x[0m[35m4c[0m>
  bc:	00000000 	[33mnop[0m
      res *= tmp;
  c0:	d7c10000 	[33mldc1[0m	[34m$f1[0m,[35m0[0m([34ms8[0m)
  c4:	d7c00008 	[33mldc1[0m	[34m$f0[0m,[35m8[0m([34ms8[0m)
  c8:	46200802 	[33mmul.d[0m	[34m$f0[0m,[34m$f1[0m,[34m$f0[0m
  cc:	f7c00000 	[33msdc1[0m	[34m$f0[0m,[35m0[0m([34ms8[0m)
    tmp *= tmp;
  d0:	d7c00008 	[33mldc1[0m	[34m$f0[0m,[35m8[0m([34ms8[0m)
  d4:	46200002 	[33mmul.d[0m	[34m$f0[0m,[34m$f0[0m,[34m$f0[0m
  d8:	f7c00008 	[33msdc1[0m	[34m$f0[0m,[35m8[0m([34ms8[0m)
    pow >>= 1;
  dc:	8fc20018 	[33mlw[0m	[34mv0[0m,[35m24[0m([34ms8[0m)
  e0:	00021043 	[33msra[0m	[34mv0[0m,[34mv0[0m,[35m0x1[0m
  e4:	afc20018 	[33msw[0m	[34mv0[0m,[35m24[0m([34ms8[0m)
  while(pow)
  e8:	8fc20018 	[33mlw[0m	[34mv0[0m,[35m24[0m([34ms8[0m)
  ec:	1440fff0 	[33mbnez[0m	[34mv0[0m,[35mb0[0m <[32mipow[0m[35m+0x[0m[35m2c[0m>
  f0:	00000000 	[33mnop[0m
  }
  return res;
  f4:	d7c00000 	[33mldc1[0m	[34m$f0[0m,[35m0[0m([34ms8[0m)
}
  f8:	03c0e825 	[33mmove[0m	[34msp[0m,[34ms8[0m
  fc:	dfbe0010 	[33mld[0m	[34ms8[0m,[35m16[0m([34msp[0m)
 100:	27bd0018 	[33maddiu[0m	[34msp[0m,[34msp[0m,[35m24[0m
 104:	03e00008 	[33mjr[0m	[34mra[0m
 108:	00000000 	[33mnop[0m

0000010c <main>:

int main()
{
 10c:	27bdffd0 	[33maddiu[0m	[34msp[0m,[34msp[0m,[35m-48[0m
 110:	ffbf0028 	[33msd[0m	[34mra[0m,[35m40[0m([34msp[0m)
 114:	ffbe0020 	[33msd[0m	[34ms8[0m,[35m32[0m([34msp[0m)
 118:	03a0f025 	[33mmove[0m	[34ms8[0m,[34msp[0m
  printf("sizeof(int): %d\n", sizeofint());
 11c:	0c000000 	[33mjal[0m	[35m0[0m <[32msizeofint[0m>
 120:	00000000 	[33mnop[0m
 124:	00402825 	[33mmove[0m	[34ma1[0m,[34mv0[0m
 128:	3c020000 	[33mlui[0m	[34mv0[0m,[35m0x0[0m
 12c:	24440000 	[33maddiu[0m	[34ma0[0m,[34mv0[0m,[35m0[0m
 130:	0c000000 	[33mjal[0m	[35m0[0m <[32msizeofint[0m>
 134:	00000000 	[33mnop[0m
  printf("factorial(6): %d.\n", factorial(6));
 138:	24040006 	[33mli[0m	[34ma0[0m,[35m6[0m
 13c:	0c000000 	[33mjal[0m	[35m0[0m <[32msizeofint[0m>
 140:	00000000 	[33mnop[0m
 144:	00402825 	[33mmove[0m	[34ma1[0m,[34mv0[0m
 148:	3c020000 	[33mlui[0m	[34mv0[0m,[35m0x0[0m
 14c:	24440018 	[33maddiu[0m	[34ma0[0m,[34mv0[0m,[35m24[0m
 150:	0c000000 	[33mjal[0m	[35m0[0m <[32msizeofint[0m>
 154:	00000000 	[33mnop[0m
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
 158:	d7800008 	[33mldc1[0m	[34m$f0[0m,[35m8[0m([34mgp[0m)
 15c:	44250000 	[33mdmfc1[0m	[34ma1[0m,[34m$f0[0m
 160:	24040005 	[33mli[0m	[34ma0[0m,[35m5[0m
 164:	0c000000 	[33mjal[0m	[35m0[0m <[32msizeofint[0m>
 168:	00000000 	[33mnop[0m
 16c:	44220000 	[33mdmfc1[0m	[34mv0[0m,[34m$f0[0m
 170:	00402825 	[33mmove[0m	[34ma1[0m,[34mv0[0m
 174:	3c020000 	[33mlui[0m	[34mv0[0m,[35m0x0[0m
 178:	24440030 	[33maddiu[0m	[34ma0[0m,[34mv0[0m,[35m48[0m
 17c:	0c000000 	[33mjal[0m	[35m0[0m <[32msizeofint[0m>
 180:	00000000 	[33mnop[0m
  return 0;
 184:	00001025 	[33mmove[0m	[34mv0[0m,[34mzero[0m
}
 188:	03c0e825 	[33mmove[0m	[34msp[0m,[34ms8[0m
 18c:	dfbf0028 	[33mld[0m	[34mra[0m,[35m40[0m([34msp[0m)
 190:	dfbe0020 	[33mld[0m	[34ms8[0m,[35m32[0m([34msp[0m)
 194:	27bd0030 	[33maddiu[0m	[34msp[0m,[34msp[0m,[35m48[0m
 198:	03e00008 	[33mjr[0m	[34mra[0m
 19c:	00000000 	[33mnop[0m

Disassembly of section .reginfo:

00000000 <.reginfo>:
{
   0:	f000003c 	[33mscd[0m	[34mzero[0m,[35m60[0m([34mzero[0m)
   4:	00000000 	[33mnop[0m
   8:	00000003 	[33msra[0m	[34mzero[0m,[34mzero[0m,[35m0x0[0m
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
  44:	40000000 	[33mmfc0[0m	[34mzero[0m,[34mc0_index[0m
  48:	fffffff8 	[33msd[0m	[34mra[0m,[35m-8[0m([34mra[0m)
	...
  54:	00000018 	[33mmult[0m	[34mzero[0m,[34mzero[0m
  58:	0000001e 	[33mddiv[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  while(n > 1)
  5c:	0000001f 	[33mddivu[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  60:	00000000 	[33mnop[0m
  64:	c0000000 	[33mll[0m	[34mzero[0m,[35m0[0m([34mzero[0m)
  68:	fffffff8 	[33msd[0m	[34mra[0m,[35m-8[0m([34mra[0m)
	...
}
  74:	00000030 	[33mtge[0m	[34mzero[0m,[34mzero[0m
  78:	0000001e 	[33mddiv[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  7c:	0000001f 	[33mddivu[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	73697a65 	[33m.word[0m	[35m0x73697a65[0m
   4:	6f662869 	[33mldr[0m	[34ma2[0m,[35m10345[0m([34mk1[0m)
   8:	6e74293a 	[33mldr[0m	[34ms4[0m,[35m10554[0m([34ms3[0m)
   c:	2025640a 	[33maddi[0m	[34ma1[0m,[34mat[0m,[35m25610[0m
	...
  18:	66616374 	[33mdaddiu[0m	[34mat[0m,[34ms3[0m,[35m25460[0m
  1c:	6f726961 	[33mldr[0m	[34ms2[0m,[35m26977[0m([34mk1[0m)
  20:	6c283629 	[33mldr[0m	[34mt0[0m,[35m13865[0m([34mat[0m)
  24:	3a202564 	[33mxori[0m	[34mzero[0m,[34ms1[0m,[35m0x2564[0m
  28:	2e0a0000 	[33msltiu[0m	[34mt2[0m,[34ms0[0m,[35m0[0m
  2c:	00000000 	[33mnop[0m
  30:	50695e35 	[33mbeql[0m	[34mv1[0m,[34mt1[0m,[35m17908[0m <[32mmain[0m[35m+0x[0m[35m177fc[0m>
  34:	3a20256c 	[33mxori[0m	[34mzero[0m,[34ms1[0m,[35m0x256c[0m
  38:	Address 0x38 is out of bounds.


Disassembly of section .sdata:

00000000 <.sdata>:
   0:	3ff00000 	[33m.word[0m	[35m0x3ff00000[0m
   4:	00000000 	[33mnop[0m
   8:	400921fb 	[33m.word[0m	[35m0x400921fb[0m
   c:	54442d18 	[33mbnel[0m	[34mv0[0m,[34ma0[0m,[35mb470[0m <[32mmain[0m[35m+0x[0m[35mb364[0m>

Disassembly of section .debug_info:

00000000 <.debug_info>:
{
   0:	00000151 	[33m.word[0m	[35m0x151[0m
   4:	00050104 	[33m.word[0m	[35m0x50104[0m
   8:	00000000 	[33mnop[0m
  return sizeof(int);
   c:	05000000 	[33mbltz[0m	[34mt0[0m,[35m10[0m <[32m.debug_info[0m[35m+0x[0m[35m10[0m>
}
  10:	a21d0000 	[33msb[0m	[34msp[0m,[35m0[0m([34ms0[0m)
  14:	007b0000 	[33m.word[0m	[35m0x7b0000[0m
  18:	000e0000 	[33msll[0m	[34mzero[0m,[34mt6[0m,[35m0x0[0m
  1c:	00000000 	[33mnop[0m
  20:	01a00000 	[33m.word[0m	[35m0x1a00000[0m
{
  24:	00000101 	[33m.word[0m	[35m0x101[0m
  28:	06000001 	[33mbltz[0m	[34ms0[0m,[35m30[0m <[32m.debug_info[0m[35m+0x[0m[35m30[0m>
  2c:	48010108 	[33m.word[0m	[35m0x48010108[0m
  30:	000000e6 	[33m.word[0m	[35m0xe6[0m
  int r = 1;
  34:	01020500 	[33m.word[0m	[35m0x1020500[0m
  38:	00013901 	[33m.word[0m	[35m0x13901[0m
  while(n > 1)
  3c:	02070000 	[33m.word[0m	[35m0x2070000[0m
  40:	01130104 	[33m.word[0m	[35m0x1130104[0m
    r *= n--;
  44:	05000000 	[33mbltz[0m	[34mt0[0m,[35m48[0m <[32m.debug_info[0m[35m+0x[0m[35m48[0m>
  48:	f9010407 	[33msdc2[0m	[34m$1[0m,[35m1031[0m([34mt0[0m)
  4c:	00000090 	[33m.word[0m	[35m0x90[0m
  50:	01080500 	[33m.word[0m	[35m0x1080500[0m
  54:	00000001 	[33mmovf[0m	[34mzero[0m,[34mzero[0m,[34m$fcc0[0m
  58:	08070000 	[33mj[0m	[35m1c0000[0m <[32mmain[0m[35m+0x[0m[35m1bfef4[0m>
  while(n > 1)
  5c:	00ca0604 	[33m.word[0m	[35m0xca0604[0m
  60:	05696e74 	[33mtgeiu[0m	[34mt3[0m,[35m28276[0m
  64:	00010407 	[33m.word[0m	[35m0x10407[0m
  68:	0000006e 	[33m.word[0m	[35m0x6e[0m
  return r;
  6c:	01080400 	[33m.word[0m	[35m0x1080400[0m
}
  70:	00012d01 	[33m.word[0m	[35m0x12d01[0m
  74:	01060000 	[33m.word[0m	[35m0x1060000[0m
  78:	00f40700 	[33m.word[0m	[35m0xf40700[0m
  7c:	00007308 	[33m.word[0m	[35m0x7308[0m
  80:	04000000 	[33mbltz[0m	[34mzero[0m,[35m84[0m <[32m.debug_info[0m[35m+0x[0m[35m84[0m>
{
  84:	7a090000 	[33m.word[0m	[35m0x7a090000[0m
  88:	012602ce 	[33m.word[0m	[35m0x12602ce[0m
  8c:	05000000 	[33mbltz[0m	[34mt0[0m,[35m90[0m <[32m.debug_info[0m[35m+0x[0m[35m90[0m>
  90:	5e000000 	[33mbgtzl[0m	[34ms0[0m,[35m94[0m <[32m.debug_info[0m[35m+0x[0m[35m94[0m>
  94:	9c0a0000 	[33mlwu[0m	[34mt2[0m,[35m0[0m([34mzero[0m)
  double res = 1, tmp = base;
  98:	007f0b00 	[33m.word[0m	[35m0x7f0b00[0m
  9c:	0c000000 	[33mjal[0m	[35m0[0m <[32m.debug_info[0m>
  a0:	81011e05 	[33mlb[0m	[34mat[0m,[35m7685[0m([34mt0[0m)
  a4:	0000005e 	[33m.word[0m	[35m0x5e[0m
  while(pow)
  a8:	0000010c 	[33msyscall[0m	[35m0x4[0m
  ac:	00000094 	[33m.word[0m	[35m0x94[0m
    if(pow & 1)
  b0:	019c0300 	[33m.word[0m	[35m0x19c0300[0m
  b4:	00014311 	[33m.word[0m	[35m0x14311[0m
  b8:	08000001 	[33mj[0m	[35m4[0m <[32m.debug_info[0m[35m+0x[0m[35m4[0m>
  bc:	05000000 	[33mbltz[0m	[34mt0[0m,[35mc0[0m <[32m.debug_info[0m[35m+0x[0m[35mc0[0m>
      res *= tmp;
  c0:	84000000 	[33mlh[0m	[34mzero[0m,[35m0[0m([34mzero[0m)
  c4:	88019c00 	[33mlwl[0m	[34mat[0m,[35m-25600[0m([34mzero[0m)
  c8:	00010504 	[33m.word[0m	[35m0x10504[0m
  cc:	706f7700 	[33m.word[0m	[35m0x706f7700[0m
    tmp *= tmp;
  d0:	11110000 	[33mbeq[0m	[34mt0[0m,[34ms1[0m,[35md4[0m <[32m.debug_info[0m[35m+0x[0m[35md4[0m>
  d4:	005e0291 	[33m.word[0m	[35m0x5e0291[0m
  d8:	000d0000 	[33msll[0m	[34mzero[0m,[34mt5[0m,[35m0x0[0m
    pow >>= 1;
  dc:	00e10111 	[33m.word[0m	[35m0xe10111[0m
  e0:	1d000001 	[33mbgtz[0m	[34mt0[0m,[35me8[0m <[32m.debug_info[0m[35m+0x[0m[35me8[0m>
  e4:	05029108 	[33mbltzl[0m	[34mt0[0m,[35mfffe4508[0m <[32mmain[0m[35m+0x[0m[35mfffe43fc[0m>
  while(pow)
  e8:	02726573 	[33mtltu[0m	[34ms3[0m,[34ms2[0m,[35m0x195[0m
  ec:	00130a00 	[33msll[0m	[34mat[0m,[34ms3[0m,[35m0x8[0m
  f0:	00010502 	[33msrl[0m	[34mzero[0m,[34mat[0m,[35m0x14[0m
  return res;
  f4:	91680274 	[33mlbu[0m	[34mt0[0m,[35m628[0m([34mt3[0m)
}
  f8:	6d700013 	[33mldr[0m	[34ms0[0m,[35m19[0m([34mt3[0m)
  fc:	13000001 	[33mbeqz[0m	[34mt8[0m,[35m104[0m <[32m.debug_info[0m[35m+0x[0m[35m104[0m>
 100:	05029170 	[33mbltzl[0m	[34mt0[0m,[35mfffe46c4[0m <[32mmain[0m[35m+0x[0m[35mfffe45b8[0m>
 104:	00010804 	[33msllv[0m	[34mat[0m,[34mat[0m,[34mzero[0m
 108:	0000010c 	[33msyscall[0m	[35m0x4[0m
{
 10c:	03000001 	[33mmovf[0m	[34mzero[0m,[34mt8[0m,[34m$fcc0[0m
 110:	02090500 	[33m.word[0m	[35m0x2090500[0m
 114:	00005e00 	[33msll[0m	[34mt3[0m,[34mzero[0m,[35m0x18[0m
 118:	00002400 	[33msll[0m	[34ma0[0m,[34mzero[0m,[35m0x10[0m
  printf("sizeof(int): %d\n", sizeofint());
 11c:	00006001 	[33mmovf[0m	[34mt4[0m,[34mzero[0m,[34m$fcc0[0m
 120:	9c000001 	[33mlwu[0m	[34mzero[0m,[35m1[0m([34mzero[0m)
 124:	3e046e00 	[33m.word[0m	[35m0x3e046e00[0m
 128:	09130000 	[33mj[0m	[35m44c0000[0m <[32mmain[0m[35m+0x[0m[35m44bfef4[0m>
 12c:	005e0291 	[33m.word[0m	[35m0x5e0291[0m
 130:	00027200 	[33msll[0m	[34mt6[0m,[34mv0[0m,[35m0x8[0m
 134:	0b070000 	[33mj[0m	[35mc1c0000[0m <[32mmain[0m[35m+0x[0m[35mc1bfef4[0m>
  printf("factorial(6): %d.\n", factorial(6));
 138:	005e0291 	[33m.word[0m	[35m0x5e0291[0m
 13c:	70000e00 	[33m.word[0m	[35m0x70000e00[0m
 140:	00008601 	[33m.word[0m	[35m0x8601[0m
 144:	04050000 	[33m.word[0m	[35m0x4050000[0m
 148:	005e0000 	[33m.word[0m	[35m0x5e0000[0m
 14c:	00000000 	[33mnop[0m
 150:	0024019c 	[33m.word[0m	[35m0x24019c[0m
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
{
   0:	0124000b 	[33mmovn[0m	[34mzero[0m,[34mt1[0m,[34ma0[0m
   4:	0b3e0b03 	[33mj[0m	[35mcf82c0c[0m <[32mmain[0m[35m+0x[0m[35mcf82b00[0m>
   8:	0e000002 	[33mjal[0m	[35m8000008[0m <[32mmain[0m[35m+0x[0m[35m7fffefc[0m>
  return sizeof(int);
   c:	34000308 	[33mli[0m	[34mzero[0m,[35m0x308[0m
}
  10:	3a21013b 	[33mxori[0m	[34mat[0m,[34ms1[0m,[35m0x13b[0m
  14:	0b390b49 	[33mj[0m	[35mce42d24[0m <[32mmain[0m[35m+0x[0m[35mce42c18[0m>
  18:	13021800 	[33mbeq[0m	[34mt8[0m,[34mv0[0m,[35m601c[0m <[32mmain[0m[35m+0x[0m[35m5f10[0m>
  1c:	00032e01 	[33m.word[0m	[35m0x32e01[0m
  20:	3f19030e 	[33m.word[0m	[35m0x3f19030e[0m
{
  24:	3a21013b 	[33mxori[0m	[34mat[0m,[34ms1[0m,[35m0x13b[0m
  28:	0b390b27 	[33mj[0m	[35mce42c9c[0m <[32mmain[0m[35m+0x[0m[35mce42b90[0m>
  2c:	19491311 	[33m.word[0m	[35m0x19491311[0m
  30:	01120640 	[33m.word[0m	[35m0x1120640[0m
  int r = 1;
  34:	187a1901 	[33m.word[0m	[35m0x187a1901[0m
  38:	13000004 	[33mbeqz[0m	[34mt8[0m,[35m4c[0m <[32m.debug_abbrev[0m[35m+0x[0m[35m4c[0m>
  while(n > 1)
  3c:	05000308 	[33mbltz[0m	[34mt0[0m,[35mc60[0m <[32mmain[0m[35m+0x[0m[35mb54[0m>
  40:	3a21013b 	[33mxori[0m	[34mat[0m,[34ms1[0m,[35m0x13b[0m
    r *= n--;
  44:	0b390b49 	[33mj[0m	[35mce42d24[0m <[32mmain[0m[35m+0x[0m[35mce42c18[0m>
  48:	13021800 	[33mbeq[0m	[34mt8[0m,[34mv0[0m,[35m604c[0m <[32mmain[0m[35m+0x[0m[35m5f40[0m>
  4c:	00051101 	[33m.word[0m	[35m0x51101[0m
  50:	250e130b 	[33maddiu[0m	[34mt6[0m,[34mt0[0m,[35m4875[0m
  54:	030e1b0e 	[33m.word[0m	[35m0x30e1b0e[0m
  58:	11011206 	[33mbeq[0m	[34mt0[0m,[34mat[0m,[35m4874[0m <[32mmain[0m[35m+0x[0m[35m4768[0m>
  while(n > 1)
  5c:	10170000 	[33mbeq[0m	[34mzero[0m,[34ms7[0m,[35m60[0m <[32m.debug_abbrev[0m[35m+0x[0m[35m60[0m>
  60:	0624000b 	[33m.word[0m	[35m0x624000b[0m
  64:	0b3e0b03 	[33mj[0m	[35mcf82c0c[0m <[32mmain[0m[35m+0x[0m[35mcf82b00[0m>
  68:	08000007 	[33mj[0m	[35m1c[0m <[32m.debug_abbrev[0m[35m+0x[0m[35m1c[0m>
  return r;
  6c:	26004913 	[33maddiu[0m	[34mzero[0m,[34ms0[0m,[35m18707[0m
}
  70:	0000080f 	[33m.word[0m	[35m0x80f[0m
  74:	000b0b49 	[33m.word[0m	[35m0xb0b49[0m
  78:	13000009 	[33mbeqz[0m	[34mt8[0m,[35ma0[0m <[32m.debug_abbrev[0m[35m+0x[0m[35ma0[0m>
  7c:	2e013f19 	[33msltiu[0m	[34mat[0m,[34ms0[0m,[35m16153[0m
  80:	030e3a0b 	[33m.word[0m	[35m0x30e3a0b[0m
{
  84:	3b0b390b 	[33mxori[0m	[34mt3[0m,[34mt8[0m,[35m0x390b[0m
  88:	27194913 	[33maddiu[0m	[34mt9[0m,[34mt8[0m,[35m18707[0m
  8c:	3c190113 	[33mlui[0m	[34mt9[0m,[35m0x113[0m
  90:	00000a05 	[33m.word[0m	[35m0xa05[0m
  94:	00491300 	[33m.word[0m	[35m0x491300[0m
  double res = 1, tmp = base;
  98:	000b1800 	[33msll[0m	[34mv1[0m,[34mt3[0m,[35m0x0[0m
  9c:	00000c2e 	[33m.word[0m	[35m0xc2e[0m
  a0:	003f1903 	[33m.word[0m	[35m0x3f1903[0m
  a4:	0e3a0b3b 	[33mjal[0m	[35m8e82cec[0m <[32mmain[0m[35m+0x[0m[35m8e82be0[0m>
  while(pow)
  a8:	0b390b49 	[33mj[0m	[35mce42d24[0m <[32mmain[0m[35m+0x[0m[35mce42c18[0m>
  ac:	13110112 	[33mbeq[0m	[34mt8[0m,[34ms1[0m,[35m4f8[0m <[32mmain[0m[35m+0x[0m[35m3ec[0m>
    if(pow & 1)
  b0:	0640187c 	[33mbltz[0m	[34ms2[0m,[35m62a4[0m <[32mmain[0m[35m+0x[0m[35m6198[0m>
  b4:	1900000d 	[33mblez[0m	[34mt0[0m,[35mec[0m <[32mipow[0m[35m+0x[0m[35m68[0m>
  b8:	0500030e 	[33mbltz[0m	[34mt0[0m,[35mcf4[0m <[32mmain[0m[35m+0x[0m[35mbe8[0m>
  bc:	3a0b3b0b 	[33mxori[0m	[34mt3[0m,[34ms0[0m,[35m0x3b0b[0m
      res *= tmp;
  c0:	390b4913 	[33mxori[0m	[34mt3[0m,[34mt0[0m,[35m0x4913[0m
  c4:	02180000 	[33m.word[0m	[35m0x2180000[0m
  c8:	0e2e003f 	[33mjal[0m	[35m8b800fc[0m <[32mmain[0m[35m+0x[0m[35m8b7fff0[0m>
  cc:	19030e3a 	[33m.word[0m	[35m0x19030e3a[0m
    tmp *= tmp;
  d0:	0b3b0b39 	[33mj[0m	[35mcec2ce4[0m <[32mmain[0m[35m+0x[0m[35mcec2bd8[0m>
  d4:	0b491311 	[33mj[0m	[35md244c44[0m <[32mmain[0m[35m+0x[0m[35md244b38[0m>
  d8:	01120640 	[33m.word[0m	[35m0x1120640[0m
    pow >>= 1;
  dc:	187a1900 	[33m.word[0m	[35m0x187a1900[0m
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
{
   0:	0000001c 	[33mdmult[0m	[34mzero[0m,[34mzero[0m
   4:	00020000 	[33msll[0m	[34mzero[0m,[34mv0[0m,[35m0x0[0m
   8:	00000400 	[33msll[0m	[34mzero[0m,[34mzero[0m,[35m0x10[0m
	...
}
  14:	000001a0 	[33m.word[0m	[35m0x1a0[0m
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
{
   0:	000000b7 	[33m.word[0m	[35m0xb7[0m
   4:	00030000 	[33msll[0m	[34mzero[0m,[34mv1[0m,[35m0x0[0m
   8:	003f0101 	[33m.word[0m	[35m0x3f0101[0m
  return sizeof(int);
   c:	fb0e0d00 	[33msdc2[0m	[34m$14[0m,[35m3328[0m([34mt8[0m)
}
  10:	01010101 	[33m.word[0m	[35m0x1010101[0m
  14:	00000001 	[33mmovf[0m	[34mzero[0m,[34mzero[0m,[34m$fcc0[0m
  18:	0000012f 	[33m.word[0m	[35m0x12f[0m
  1c:	7573722f 	[33mjalx[0m	[35m5cdc8bc[0m <[32mmain[0m[35m+0x[0m[35m5cdc7b0[0m>
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
  50:	00001605 	[33m.word[0m	[35m0x1605[0m
  54:	0abb0501 	[33mj[0m	[35maec1404[0m <[32mmain[0m[35m+0x[0m[35maec12f8[0m>
  58:	4b083f05 	[33mc2[0m	[35m0x1083f05[0m
  while(n > 1)
  5c:	07f30508 	[33mbgezall[0m	[34mra[0m,[35m1480[0m <[32mmain[0m[35m+0x[0m[35m1374[0m>
  60:	83050b83 	[33mlb[0m	[34ma1[0m,[35m2947[0m([34mt8[0m)
  64:	0507ba05 	[33m.word[0m	[35m0x507ba05[0m
  68:	0bb9050a 	[33mj[0m	[35mee41428[0m <[32mmain[0m[35m+0x[0m[35mee4131c[0m>
  return r;
  6c:	f405014b 	[33msdc1[0m	[34m$f5[0m,[35m331[0m([34mzero[0m)
}
  70:	083f050a 	[33mj[0m	[35mfc1428[0m <[32mmain[0m[35m+0x[0m[35mfc131c[0m>
  74:	083d0513 	[33mj[0m	[35mf4144c[0m <[32mmain[0m[35m+0x[0m[35mf41340[0m>
  78:	82050883 	[33mlb[0m	[34ma1[0m,[35m2179[0m([34ms0[0m)
  7c:	050c8405 	[33mteqi[0m	[34mt0[0m,[35m-31739[0m
  80:	0782050b 	[33mbltzl[0m	[34mgp[0m,[35m14b0[0m <[32mmain[0m[35m+0x[0m[35m13a4[0m>
{
  84:	830509f3 	[33mlb[0m	[34ma1[0m,[35m2547[0m([34mt8[0m)
  88:	bbb5050a 	[33mswr[0m	[34ms5[0m,[35m1290[0m([34msp[0m)
  8c:	c105014b 	[33mll[0m	[34ma1[0m,[35m331[0m([34mt0[0m)
  90:	083f0503 	[33mj[0m	[35mfc140c[0m <[32mmain[0m[35m+0x[0m[35mfc1300[0m>
  94:	f3000204 	[33mscd[0m	[34mzero[0m,[35m516[0m([34mt8[0m)
  double res = 1, tmp = base;
  98:	01068206 	[33m.word[0m	[35m0x1068206[0m
  9c:	083d0002 	[33mj[0m	[35mf40008[0m <[32mmain[0m[35m+0x[0m[35mf3fefc[0m>
  a0:	040106ba 	[33mb[0m	[35m1b8c[0m <[32mmain[0m[35m+0x[0m[35m1a80[0m>
  a4:	06083d00 	[33mtgei[0m	[34ms0[0m,[35m15616[0m
  while(pow)
  a8:	02040106 	[33m.word[0m	[35m0x2040106[0m
  ac:	0874050a 	[33mj[0m	[35m1d01428[0m <[32mmain[0m[35m+0x[0m[35m1d0131c[0m>
    if(pow & 1)
  b0:	06083d05 	[33mtgei[0m	[34ms0[0m,[35m15621[0m
  b4:	014b0218 	[33m.word[0m	[35m0x14b0218[0m
  b8:	Address 0xb8 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
{
   0:	6c6f6e67 	[33mldr[0m	[34mt7[0m,[35m28263[0m([34mv1[0m)
   4:	206c6f6e 	[33maddi[0m	[34mt4[0m,[34mv1[0m,[35m28526[0m
   8:	6720696e 	[33mdaddiu[0m	[34mzero[0m,[34mt9[0m,[35m26990[0m
  return sizeof(int);
   c:	74002f68 	[33mjalx[0m	[35mbda0[0m <[32mmain[0m[35m+0x[0m[35mbc94[0m>
}
  10:	6f6d652f 	[33mldr[0m	[34mt5[0m,[35m25903[0m([34mk1[0m)
  14:	642f5f2f 	[33mdaddiu[0m	[34mt7[0m,[34mat[0m,[35m24367[0m
  18:	73616665 	[33m.word[0m	[35m0x73616665[0m
  1c:	5f77662f 	[33m.word[0m	[35m0x5f77662f[0m
  20:	776f726b 	[33mjalx[0m	[35mdbdc9ac[0m <[32mmain[0m[35m+0x[0m[35mdbdc8a0[0m>
{
  24:	2f535062 	[33msltiu[0m	[34ms3[0m,[34mk0[0m,[35m20578[0m
  28:	552f636f 	[33mbnel[0m	[34mt1[0m,[34mt7[0m,[35m18de8[0m <[32mmain[0m[35m+0x[0m[35m18cdc[0m>
  2c:	75727365 	[33mjalx[0m	[35m5c9cd94[0m <[32mmain[0m[35m+0x[0m[35m5c9cc88[0m>
  30:	732f436f 	[33m.word[0m	[35m0x732f436f[0m
  int r = 1;
  34:	6d707574 	[33mldr[0m	[34ms0[0m,[35m30068[0m([34mt3[0m)
  38:	65725f41 	[33mdaddiu[0m	[34ms2[0m,[34mt3[0m,[35m24385[0m
  while(n > 1)
  3c:	72636869 	[33m.word[0m	[35m0x72636869[0m
  40:	74656374 	[33mjalx[0m	[35m1958dd0[0m <[32mmain[0m[35m+0x[0m[35m1958cc4[0m>
    r *= n--;
  44:	7572652d 	[33mjalx[0m	[35m5c994b4[0m <[32mmain[0m[35m+0x[0m[35m5c993a8[0m>
  48:	53506255 	[33mbeql[0m	[34mk0[0m,[34ms0[0m,[35m189a0[0m <[32mmain[0m[35m+0x[0m[35m18894[0m>
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
  94:	20756e73 	[33maddi[0m	[34ms5[0m,[34mv1[0m,[35m28275[0m
  double res = 1, tmp = base;
  98:	69676e65 	[33mldl[0m	[34ma3[0m,[35m28261[0m([34mt3[0m)
  9c:	6420696e 	[33mdaddiu[0m	[34mzero[0m,[34mat[0m,[35m26990[0m
  a0:	7400474e 	[33mjalx[0m	[35m11d38[0m <[32mmain[0m[35m+0x[0m[35m11c2c[0m>
  a4:	55204331 	[33mbnezl[0m	[34mt1[0m,[35m10d6c[0m <[32mmain[0m[35m+0x[0m[35m10c60[0m>
  while(pow)
  a8:	37203133 	[33mori[0m	[34mzero[0m,[34mt9[0m,[35m0x3133[0m
  ac:	2e312e30 	[33msltiu[0m	[34ms1[0m,[34ms1[0m,[35m11824[0m
    if(pow & 1)
  b0:	202d6d61 	[33maddi[0m	[34mt5[0m,[34mat[0m,[35m28001[0m
  b4:	7263683d 	[33m.word[0m	[35m0x7263683d[0m
  b8:	6d697073 	[33mldr[0m	[34mt1[0m,[35m28787[0m([34mt3[0m)
  bc:	3634202d 	[33mori[0m	[34ms4[0m,[34ms1[0m,[35m0x202d[0m
      res *= tmp;
  c0:	6d697073 	[33mldr[0m	[34mt1[0m,[35m28787[0m([34mt3[0m)
  c4:	3634202d 	[33mori[0m	[34ms4[0m,[34ms1[0m,[35m0x202d[0m
  c8:	67006c6f 	[33mdaddiu[0m	[34mzero[0m,[34mt8[0m,[35m27759[0m
  cc:	6e67206c 	[33mldr[0m	[34ma3[0m,[35m8300[0m([34ms3[0m)
    tmp *= tmp;
  d0:	6f6e6720 	[33mldr[0m	[34mt6[0m,[35m26400[0m([34mk1[0m)
  d4:	756e7369 	[33mjalx[0m	[35m5b9cda4[0m <[32mmain[0m[35m+0x[0m[35m5b9cc98[0m>
  d8:	676e6564 	[33mdaddiu[0m	[34mt6[0m,[34mk1[0m,[35m25956[0m
    pow >>= 1;
  dc:	20696e74 	[33maddi[0m	[34mt1[0m,[34mv1[0m,[35m28276[0m
  e0:	00626173 	[33mtltu[0m	[34mv1[0m,[34mv0[0m,[35m0x185[0m
  e4:	6500756e 	[33mdaddiu[0m	[34mzero[0m,[34mt0[0m,[35m30062[0m
  while(pow)
  e8:	7369676e 	[33m.word[0m	[35m0x7369676e[0m
  ec:	65642063 	[33mdaddiu[0m	[34ma0[0m,[34mt3[0m,[35m8291[0m
  f0:	68617200 	[33mldl[0m	[34mat[0m,[35m29184[0m([34mv1[0m)
  return res;
  f4:	63686172 	[33mdaddi[0m	[34mt0[0m,[34mk1[0m,[35m24946[0m
}
  f8:	006c6f6e 	[33m.word[0m	[35m0x6c6f6e[0m
  fc:	6720696e 	[33mdaddiu[0m	[34mzero[0m,[34mt9[0m,[35m26990[0m
 100:	74006661 	[33mjalx[0m	[35m19984[0m <[32mmain[0m[35m+0x[0m[35m19878[0m>
 104:	63746f72 	[33mdaddi[0m	[34ms4[0m,[34mk1[0m,[35m28530[0m
 108:	69616c00 	[33mldl[0m	[34mat[0m,[35m27648[0m([34mt3[0m)
{
 10c:	646f7562 	[33mdaddiu[0m	[34mt7[0m,[34mv1[0m,[35m30050[0m
 110:	6c650073 	[33mldr[0m	[34ma1[0m,[35m115[0m([34mv1[0m)
 114:	686f7274 	[33mldl[0m	[34mt7[0m,[35m29300[0m([34mv1[0m)
 118:	20756e73 	[33maddi[0m	[34ms5[0m,[34mv1[0m,[35m28275[0m
  printf("sizeof(int): %d\n", sizeofint());
 11c:	69676e65 	[33mldl[0m	[34ma3[0m,[35m28261[0m([34mt3[0m)
 120:	6420696e 	[33mdaddiu[0m	[34mzero[0m,[34mat[0m,[35m26990[0m
 124:	74007072 	[33mjalx[0m	[35m1c1c8[0m <[32mmain[0m[35m+0x[0m[35m1c0bc[0m>
 128:	696e7466 	[33mldl[0m	[34mt6[0m,[35m29798[0m([34mt3[0m)
 12c:	006c6f6e 	[33m.word[0m	[35m0x6c6f6e[0m
 130:	6720646f 	[33mdaddiu[0m	[34mzero[0m,[34mt9[0m,[35m25711[0m
 134:	75626c65 	[33mjalx[0m	[35m589b194[0m <[32mmain[0m[35m+0x[0m[35m589b088[0m>
  printf("factorial(6): %d.\n", factorial(6));
 138:	0073686f 	[33m.word[0m	[35m0x73686f[0m
 13c:	72742069 	[33m.word[0m	[35m0x72742069[0m
 140:	6e740069 	[33mldr[0m	[34ms4[0m,[35m105[0m([34ms3[0m)
 144:	706f7700 	[33m.word[0m	[35m0x706f7700[0m
 148:	7369676e 	[33m.word[0m	[35m0x7369676e[0m
 14c:	65642063 	[33mdaddiu[0m	[34ma0[0m,[34mt3[0m,[35m8291[0m
 150:	68617200 	[33mldl[0m	[34mat[0m,[35m29184[0m([34mv1[0m)

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
  60:	00000088 	[33m.word[0m	[35m0x88[0m
  64:	440e1844 	[33m.word[0m	[35m0x440e1844[0m
  68:	9e02440d 	[33mlwu[0m	[34mv0[0m,[35m17421[0m([34ms0[0m)
  return r;
  6c:	1e026c0d 	[33m.word[0m	[35m0x1e026c0d[0m
}
  70:	1d48de0e 	[33m.word[0m	[35m0x1d48de0e[0m
  74:	00000000 	[33mnop[0m
  78:	00000020 	[33madd[0m	[34mzero[0m,[34mzero[0m,[34mzero[0m
  7c:	00000000 	[33mnop[0m
  80:	0000010c 	[33msyscall[0m	[35m0x4[0m
{
  84:	00000094 	[33m.word[0m	[35m0x94[0m
  88:	440e3048 	[33m.word[0m	[35m0x440e3048[0m
  8c:	9f029e04 	[33mlwu[0m	[34mv0[0m,[35m-25084[0m([34mt8[0m)
  90:	440d1e02 	[33m.word[0m	[35m0x440d1e02[0m
  94:	700d1d4c 	[33m.word[0m	[35m0x700d1d4c[0m
  double res = 1, tmp = base;
  98:	dedf0e00 	[33mld[0m	[34mra[0m,[35m3584[0m([34ms6[0m)

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
{
   0:	41000000 	[33m.word[0m	[35m0x41000000[0m
   4:	0f676e75 	[33mjal[0m	[35md9db9d4[0m <[32mmain[0m[35m+0x[0m[35md9db8c8[0m>
   8:	00010000 	[33msll[0m	[34mzero[0m,[34mat[0m,[35m0x0[0m
  return sizeof(int);
   c:	00070401 	[33m.word[0m	[35m0x70401[0m
