
cce_MPS.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <sizeofint>:
// #include <stdio.h>

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

Disassembly of section .reginfo:

00000000 <.reginfo>:
{
   0:	e000001c 	[33msc[0m	[34mzero[0m,[35m28[0m([34mzero[0m)
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

Disassembly of section .debug_info:

00000000 <.debug_info>:
{
   0:	00000075 	[33m.word[0m	[35m0x75[0m
   4:	00050104 	[33m.word[0m	[35m0x50104[0m
   8:	00000000 	[33mnop[0m
  return sizeof(int);
   c:	01000000 	[33m.word[0m	[35m0x1000000[0m
}
  10:	001d0000 	[33msll[0m	[34mzero[0m,[34msp[0m,[35m0x0[0m
  14:	009c0000 	[33m.word[0m	[35m0x9c0000[0m
  18:	00320000 	[33m.word[0m	[35m0x320000[0m
  1c:	00000000 	[33mnop[0m
  20:	00840000 	[33m.word[0m	[35m0x840000[0m
{
  24:	00000200 	[33msll[0m	[34mzero[0m,[34mzero[0m,[35m0x8[0m
  28:	00002801 	[33mmovf[0m	[34ma1[0m,[34mzero[0m,[34m$fcc0[0m
  2c:	08050000 	[33mj[0m	[35m140000[0m <[32mfactorial[0m[35m+0x[0m[35m13ffdc[0m>
  30:	005b0000 	[33m.word[0m	[35m0x5b0000[0m
  int r = 1;
  34:	00240000 	[33m.word[0m	[35m0x240000[0m
  38:	0060019c 	[33m.word[0m	[35m0x60019c[0m
  while(n > 1)
  3c:	0000005b 	[33m.word[0m	[35m0x5b[0m
  40:	036e0001 	[33m.word[0m	[35m0x36e0001[0m
    r *= n--;
  44:	08130000 	[33mj[0m	[35m4c0000[0m <[32mfactorial[0m[35m+0x[0m[35m4bffdc[0m>
  48:	005b0291 	[33m.word[0m	[35m0x5b0291[0m
  4c:	00047200 	[33msll[0m	[34mt6[0m,[34ma0[0m,[35m0x8[0m
  50:	010a0700 	[33m.word[0m	[35m0x10a0700[0m
  54:	00005b02 	[33msrl[0m	[34mt3[0m,[34mzero[0m,[35m0xc[0m
  58:	91700005 	[33mlbu[0m	[34ms0[0m,[35m5[0m([34mt3[0m)
  while(n > 1)
  5c:	0405696e 	[33m.word[0m	[35m0x405696e[0m
  60:	74000600 	[33mjalx[0m	[35m1800[0m <[32mfactorial[0m[35m+0x[0m[35m17dc[0m>
  64:	00009201 	[33m.word[0m	[35m0x9201[0m
  68:	03050000 	[33m.word[0m	[35m0x3050000[0m
  return r;
  6c:	005b0000 	[33m.word[0m	[35m0x5b0000[0m
}
  70:	00000000 	[33mnop[0m
  74:	0024019c 	[33m.word[0m	[35m0x24019c[0m
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
{
   0:	01110125 	[33m.word[0m	[35m0x1110125[0m
   4:	0e130b03 	[33mjal[0m	[35m84c2c0c[0m <[32mfactorial[0m[35m+0x[0m[35m84c2be8[0m>
   8:	0e1b0e11 	[33mjal[0m	[35m86c3844[0m <[32mfactorial[0m[35m+0x[0m[35m86c3820[0m>
  return sizeof(int);
   c:	01120610 	[33m.word[0m	[35m0x1120610[0m
}
  10:	17000002 	[33mbnez[0m	[34mt8[0m,[35m1c[0m <[32m.debug_abbrev[0m[35m+0x[0m[35m1c[0m>
  14:	2e013f19 	[33msltiu[0m	[34mat[0m,[34ms0[0m,[35m16153[0m
  18:	030e3a0b 	[33m.word[0m	[35m0x30e3a0b[0m
  1c:	3b0b390b 	[33mxori[0m	[34mt3[0m,[34mt8[0m,[35m0x390b[0m
  20:	27194913 	[33maddiu[0m	[34mt9[0m,[34mt8[0m,[35m18707[0m
{
  24:	11011206 	[33mbeq[0m	[34mt0[0m,[34mat[0m,[35m4840[0m <[32mfactorial[0m[35m+0x[0m[35m481c[0m>
  28:	40187a19 	[33m.word[0m	[35m0x40187a19[0m
  2c:	01130000 	[33m.word[0m	[35m0x1130000[0m
  30:	03050003 	[33m.word[0m	[35m0x3050003[0m
  int r = 1;
  34:	083a0b3b 	[33mj[0m	[35me82cec[0m <[32mfactorial[0m[35m+0x[0m[35me82cc8[0m>
  38:	0b390b49 	[33mj[0m	[35mce42d24[0m <[32mfactorial[0m[35m+0x[0m[35mce42d00[0m>
  while(n > 1)
  3c:	13021800 	[33mbeq[0m	[34mt8[0m,[34mv0[0m,[35m6040[0m <[32mfactorial[0m[35m+0x[0m[35m601c[0m>
  40:	00043400 	[33msll[0m	[34ma2[0m,[34ma0[0m,[35m0x10[0m
    r *= n--;
  44:	03083a0b 	[33m.word[0m	[35m0x3083a0b[0m
  48:	3b0b390b 	[33mxori[0m	[34mt3[0m,[34mt8[0m,[35m0x390b[0m
  4c:	49130218 	[33mbc2tl[0m	[34m$cc4[0m,[35m8b0[0m <[32mfactorial[0m[35m+0x[0m[35m88c[0m>
  50:	00000524 	[33m.word[0m	[35m0x524[0m
  54:	000b0b3e 	[33mdsrl32[0m	[34mat[0m,[34mt3[0m,[35m0xc[0m
  58:	0b030800 	[33mj[0m	[35mc0c2000[0m <[32mfactorial[0m[35m+0x[0m[35mc0c1fdc[0m>
  while(n > 1)
  5c:	00062e00 	[33msll[0m	[34ma1[0m,[34ma2[0m,[35m0x18[0m
  60:	3f19030e 	[33m.word[0m	[35m0x3f19030e[0m
  64:	3a0b3b0b 	[33mxori[0m	[34mt3[0m,[34ms0[0m,[35m0x3b0b[0m
  68:	390b4913 	[33mxori[0m	[34mt3[0m,[34mt0[0m,[35m0x4913[0m
  return r;
  6c:	11011206 	[33mbeq[0m	[34mt0[0m,[34mat[0m,[35m4888[0m <[32mfactorial[0m[35m+0x[0m[35m4864[0m>
}
  70:	40187a19 	[33m.word[0m	[35m0x40187a19[0m
  74:	Address 0x74 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
{
   0:	0000001c 	[33mdmult[0m	[34mzero[0m,[34mzero[0m
   4:	00020000 	[33msll[0m	[34mzero[0m,[34mv0[0m,[35m0x0[0m
   8:	00000400 	[33msll[0m	[34mzero[0m,[34mzero[0m,[35m0x10[0m
	...
}
  14:	00000084 	[33m.word[0m	[35m0x84[0m
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
{
   0:	0000004e 	[33m.word[0m	[35m0x4e[0m
   4:	00030000 	[33msll[0m	[34mzero[0m,[34mv1[0m,[35m0x0[0m
   8:	001c0101 	[33m.word[0m	[35m0x1c0101[0m
  return sizeof(int);
   c:	fb0e0d00 	[33msdc2[0m	[34m$14[0m,[35m3328[0m([34mt8[0m)
}
  10:	01010101 	[33m.word[0m	[35m0x1010101[0m
  14:	00000001 	[33mmovf[0m	[34mzero[0m,[34mzero[0m,[34m$fcc0[0m
  18:	00000100 	[33msll[0m	[34mzero[0m,[34mzero[0m,[35m0x4[0m
  1c:	6363652e 	[33mdaddi[0m	[34mv1[0m,[34mk1[0m,[35m25902[0m
  20:	63000000 	[33mdaddi[0m	[34mzero[0m,[34mt8[0m,[35m0[0m
{
  24:	00000501 	[33m.word[0m	[35m0x501[0m
  28:	00050200 	[33msll[0m	[34mzero[0m,[34ma1[0m,[35m0x8[0m
  2c:	00000015 	[33m.word[0m	[35m0x15[0m
  30:	050abb05 	[33mtlti[0m	[34mt0[0m,[35m-17659[0m
  int r = 1;
  34:	014b083f 	[33m.word[0m	[35m0x14b083f[0m
  38:	0507f305 	[33m.word[0m	[35m0x507f305[0m
  while(n > 1)
  3c:	0883050b 	[33mj[0m	[35m20c142c[0m <[32mfactorial[0m[35m+0x[0m[35m20c1408[0m>
  40:	830507ba 	[33mlb[0m	[34ma1[0m,[35m1978[0m([34mt8[0m)
    r *= n--;
  44:	050bb905 	[33mtltiu[0m	[34mt0[0m,[35m-18171[0m
  48:	0af40501 	[33mj[0m	[35mbd01404[0m <[32mfactorial[0m[35m+0x[0m[35mbd013e0[0m>
  4c:	4b021400 	[33mc2[0m	[35m0x1021400[0m
  50:	Address 0x50 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
{
   0:	474e5520 	[33mc1[0m	[35m0x14e5520[0m
   4:	43313720 	[33mwait[0m	[35m0x4c4dc[0m
   8:	31332e31 	[33mandi[0m	[34ms3[0m,[34mt1[0m,[35m0x2e31[0m
  return sizeof(int);
   c:	2e30202d 	[33msltiu[0m	[34ms0[0m,[34ms1[0m,[35m8237[0m
}
  10:	6d617263 	[33mldr[0m	[34mat[0m,[35m29283[0m([34mt3[0m)
  14:	683d6d69 	[33mldl[0m	[34msp[0m,[35m28009[0m([34mat[0m)
  18:	70733634 	[33m.word[0m	[35m0x70733634[0m
  1c:	202d6d69 	[33maddi[0m	[34mt5[0m,[34mat[0m,[35m28009[0m
  20:	70733634 	[33m.word[0m	[35m0x70733634[0m
{
  24:	202d6700 	[33maddi[0m	[34mt5[0m,[34mat[0m,[35m26368[0m
  28:	66616374 	[33mdaddiu[0m	[34mat[0m,[34ms3[0m,[35m25460[0m
  2c:	6f726961 	[33mldr[0m	[34ms2[0m,[35m26977[0m([34mk1[0m)
  30:	6c002f68 	[33mldr[0m	[34mzero[0m,[35m12136[0m([34mzero[0m)
  int r = 1;
  34:	6f6d652f 	[33mldr[0m	[34mt5[0m,[35m25903[0m([34mk1[0m)
  38:	642f5f2f 	[33mdaddiu[0m	[34mt7[0m,[34mat[0m,[35m24367[0m
  while(n > 1)
  3c:	73616665 	[33m.word[0m	[35m0x73616665[0m
  40:	5f77662f 	[33m.word[0m	[35m0x5f77662f[0m
    r *= n--;
  44:	776f726b 	[33mjalx[0m	[35mdbdc9ac[0m <[32mfactorial[0m[35m+0x[0m[35mdbdc988[0m>
  48:	2f535062 	[33msltiu[0m	[34ms3[0m,[34mk0[0m,[35m20578[0m
  4c:	552f636f 	[33mbnel[0m	[34mt1[0m,[34mt7[0m,[35m18e0c[0m <[32mfactorial[0m[35m+0x[0m[35m18de8[0m>
  50:	75727365 	[33mjalx[0m	[35m5c9cd94[0m <[32mfactorial[0m[35m+0x[0m[35m5c9cd70[0m>
  54:	732f436f 	[33m.word[0m	[35m0x732f436f[0m
  58:	6d707574 	[33mldr[0m	[34ms0[0m,[35m30068[0m([34mt3[0m)
  while(n > 1)
  5c:	65725f41 	[33mdaddiu[0m	[34ms2[0m,[34mt3[0m,[35m24385[0m
  60:	72636869 	[33m.word[0m	[35m0x72636869[0m
  64:	74656374 	[33mjalx[0m	[35m1958dd0[0m <[32mfactorial[0m[35m+0x[0m[35m1958dac[0m>
  68:	7572652d 	[33mjalx[0m	[35m5c994b4[0m <[32mfactorial[0m[35m+0x[0m[35m5c99490[0m>
  return r;
  6c:	53506255 	[33mbeql[0m	[34mk0[0m,[34ms0[0m,[35m189c4[0m <[32mfactorial[0m[35m+0x[0m[35m189a0[0m>
}
  70:	2d43422e 	[33msltiu[0m	[34mv1[0m,[34mt2[0m,[35m16942[0m
  74:	35303830 	[33mori[0m	[34ms0[0m,[34mt1[0m,[35m0x3830[0m
  78:	2f657861 	[33msltiu[0m	[34ma1[0m,[34mk1[0m,[35m30817[0m
  7c:	6d706c65 	[33mldr[0m	[34ms0[0m,[35m27749[0m([34mt3[0m)
  80:	732f6372 	[33m.word[0m	[35m0x732f6372[0m
  84:	6f73732d 	[33mldr[0m	[34ms3[0m,[35m29485[0m([34mk1[0m)
  88:	636f6d70 	[33mdaddi[0m	[34mt7[0m,[34mk1[0m,[35m28016[0m
  8c:	696c696e 	[33mldl[0m	[34mt4[0m,[35m26990[0m([34mt3[0m)
  90:	67007369 	[33mdaddiu[0m	[34mzero[0m,[34mt8[0m,[35m29545[0m
  94:	7a656f66 	[33m.word[0m	[35m0x7a656f66[0m
  98:	696e7400 	[33mldl[0m	[34mt6[0m,[35m29696[0m([34mt3[0m)
  9c:	6363652e 	[33mdaddi[0m	[34mv1[0m,[34mk1[0m,[35m25902[0m
  a0:	Address 0xa0 is out of bounds.


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

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
{
   0:	41000000 	[33m.word[0m	[35m0x41000000[0m
   4:	0f676e75 	[33mjal[0m	[35md9db9d4[0m <[32mfactorial[0m[35m+0x[0m[35md9db9b0[0m>
   8:	00010000 	[33msll[0m	[34mzero[0m,[34mat[0m,[35m0x0[0m
  return sizeof(int);
   c:	00070401 	[33m.word[0m	[35m0x70401[0m
