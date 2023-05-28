
cce_X86.o:     формат файла elf32-i386


Дизассемблирование раздела .group:

00000000 <.group>:
#include <stdio.h>
#define DOUBLE_PI 3.14159265358979323846

int sizeofint()
{
   0:	01 00                	[33madd    [0mDWORD PTR [[34meax[0m],[34meax[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	09 00                	[33mor     [0mDWORD PTR [[34meax[0m],[34meax[0m
	...

Дизассемблирование раздела .group:

00000000 <.group>:
   0:	01 00                	[33madd    [0mDWORD PTR [[34meax[0m],[34meax[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	0a 00                	[33mor     [0m[34mal[0m,BYTE PTR [[34meax[0m]
	...

Дизассемблирование раздела .group:

00000000 <.group>:
   0:	01 00                	[33madd    [0mDWORD PTR [[34meax[0m],[34meax[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	0b 00                	[33mor     [0m[34meax[0m,DWORD PTR [[34meax[0m]
	...

Дизассемблирование раздела .text:

00000000 <sizeofint>:
   0:	55                   	[33mpush   [0m[34mebp[0m
   1:	89 e5                	[33mmov    [0m[34mebp[0m,[34mesp[0m
   3:	e8 fc ff ff ff       	[33mcall   [0m[35m4[0m <[32msizeofint[0m[35m+0x[0m[35m4[0m>
   8:	05 01 00 00 00       	[33madd    [0m[34meax[0m,[35m0x1[0m
  return sizeof(int);
   d:	b8 04 00 00 00       	[33mmov    [0m[34meax[0m,[35m0x4[0m
}
  12:	5d                   	[33mpop    [0m[34mebp[0m
  13:	c3                   	[33mret[0m

00000014 <factorial>:

int factorial(int n)
{
  14:	55                   	[33mpush   [0m[34mebp[0m
  15:	89 e5                	[33mmov    [0m[34mebp[0m,[34mesp[0m
  17:	83 ec 10             	[33msub    [0m[34mesp[0m,[35m0x10[0m
  1a:	e8 fc ff ff ff       	[33mcall   [0m[35m1b[0m <[32mfactorial[0m[35m+0x[0m[35m7[0m>
  1f:	05 01 00 00 00       	[33madd    [0m[34meax[0m,[35m0x1[0m
  int r = 1;
  24:	c7 45 fc 01 00 00 00 	[33mmov    [0mDWORD PTR [[34mebp[0m[35m-[0m[35m0x4[0m],[35m0x1[0m
  while(n > 1)
  2b:	eb 12                	[33mjmp    [0m[35m3f[0m <[32mfactorial[0m[35m+0x[0m[35m2b[0m>
    r *= n--;
  2d:	8b 45 08             	[33mmov    [0m[34meax[0m,DWORD PTR [[34mebp[0m+[35m0x8[0m]
  30:	8d 50 ff             	[33mlea    [0m[34medx[0m,[[34meax[0m[35m-[0m[35m0x1[0m]
  33:	89 55 08             	[33mmov    [0mDWORD PTR [[34mebp[0m+[35m0x8[0m],[34medx[0m
  36:	8b 55 fc             	[33mmov    [0m[34medx[0m,DWORD PTR [[34mebp[0m[35m-[0m[35m0x4[0m]
  39:	0f af c2             	[33mimul   [0m[34meax[0m,[34medx[0m
  3c:	89 45 fc             	[33mmov    [0mDWORD PTR [[34mebp[0m[35m-[0m[35m0x4[0m],[34meax[0m
  while(n > 1)
  3f:	83 7d 08 01          	[33mcmp    [0mDWORD PTR [[34mebp[0m+[35m0x8[0m],[35m0x1[0m
  43:	7f e8                	[33mjg     [0m[35m2d[0m <[32mfactorial[0m[35m+0x[0m[35m19[0m>
  return r;
  45:	8b 45 fc             	[33mmov    [0m[34meax[0m,DWORD PTR [[34mebp[0m[35m-[0m[35m0x4[0m]
}
  48:	c9                   	[33mleave[0m
  49:	c3                   	[33mret[0m

0000004a <ipow>:

double ipow(int pow, double base)
{
  4a:	55                   	[33mpush   [0m[34mebp[0m
  4b:	89 e5                	[33mmov    [0m[34mebp[0m,[34mesp[0m
  4d:	83 ec 18             	[33msub    [0m[34mesp[0m,[35m0x18[0m
  50:	e8 fc ff ff ff       	[33mcall   [0m[35m51[0m <[32mipow[0m[35m+0x[0m[35m7[0m>
  55:	81 c1 02 00 00 00    	[33madd    [0m[34mecx[0m,[35m0x2[0m
  5b:	8b 45 0c             	[33mmov    [0m[34meax[0m,DWORD PTR [[34mebp[0m+[35m0xc[0m]
  5e:	8b 55 10             	[33mmov    [0m[34medx[0m,DWORD PTR [[34mebp[0m+[35m0x10[0m]
  61:	89 45 e8             	[33mmov    [0mDWORD PTR [[34mebp[0m[35m-[0m[35m0x18[0m],[34meax[0m
  64:	89 55 ec             	[33mmov    [0mDWORD PTR [[34mebp[0m[35m-[0m[35m0x14[0m],[34medx[0m
  double res = 1, tmp = base;
  67:	d9 e8                	[33mfld1[0m
  69:	dd 5d f0             	[33mfstp   [0mQWORD PTR [[34mebp[0m[35m-[0m[35m0x10[0m]
  6c:	dd 45 e8             	[33mfld    [0mQWORD PTR [[34mebp[0m[35m-[0m[35m0x18[0m]
  6f:	dd 5d f8             	[33mfstp   [0mQWORD PTR [[34mebp[0m[35m-[0m[35m0x8[0m]
  while(pow)
  72:	eb 1e                	[33mjmp    [0m[35m92[0m <[32mipow[0m[35m+0x[0m[35m48[0m>
  {
    if(pow & 1)
  74:	8b 45 08             	[33mmov    [0m[34meax[0m,DWORD PTR [[34mebp[0m+[35m0x8[0m]
  77:	83 e0 01             	[33mand    [0m[34meax[0m,[35m0x1[0m
  7a:	85 c0                	[33mtest   [0m[34meax[0m,[34meax[0m
  7c:	74 09                	[33mje     [0m[35m87[0m <[32mipow[0m[35m+0x[0m[35m3d[0m>
      res *= tmp;
  7e:	dd 45 f0             	[33mfld    [0mQWORD PTR [[34mebp[0m[35m-[0m[35m0x10[0m]
  81:	dc 4d f8             	[33mfmul   [0mQWORD PTR [[34mebp[0m[35m-[0m[35m0x8[0m]
  84:	dd 5d f0             	[33mfstp   [0mQWORD PTR [[34mebp[0m[35m-[0m[35m0x10[0m]
    tmp *= tmp;
  87:	dd 45 f8             	[33mfld    [0mQWORD PTR [[34mebp[0m[35m-[0m[35m0x8[0m]
  8a:	d8 c8                	[33mfmul   [0m[34mst[0m,[34mst(0)[0m
  8c:	dd 5d f8             	[33mfstp   [0mQWORD PTR [[34mebp[0m[35m-[0m[35m0x8[0m]
    pow >>= 1;
  8f:	d1 7d 08             	[33msar    [0mDWORD PTR [[34mebp[0m+[35m0x8[0m],1
  while(pow)
  92:	83 7d 08 00          	[33mcmp    [0mDWORD PTR [[34mebp[0m+[35m0x8[0m],[35m0x0[0m
  96:	75 dc                	[33mjne    [0m[35m74[0m <[32mipow[0m[35m+0x[0m[35m2a[0m>
  }
  return res;
  98:	dd 45 f0             	[33mfld    [0mQWORD PTR [[34mebp[0m[35m-[0m[35m0x10[0m]
}
  9b:	c9                   	[33mleave[0m
  9c:	c3                   	[33mret[0m

0000009d <main>:

int main()
{
  9d:	8d 4c 24 04          	[33mlea    [0m[34mecx[0m,[[34mesp[0m+[35m0x4[0m]
  a1:	83 e4 f0             	[33mand    [0m[34mesp[0m,[35m0xfffffff0[0m
  a4:	ff 71 fc             	[33mpush   [0mDWORD PTR [[34mecx[0m[35m-[0m[35m0x4[0m]
  a7:	55                   	[33mpush   [0m[34mebp[0m
  a8:	89 e5                	[33mmov    [0m[34mebp[0m,[34mesp[0m
  aa:	53                   	[33mpush   [0m[34mebx[0m
  ab:	51                   	[33mpush   [0m[34mecx[0m
  ac:	e8 fc ff ff ff       	[33mcall   [0m[35mad[0m <[32mmain[0m[35m+0x[0m[35m10[0m>
  b1:	81 c3 02 00 00 00    	[33madd    [0m[34mebx[0m,[35m0x2[0m
  printf("sizeof(int): %d\n", sizeofint());
  b7:	e8 fc ff ff ff       	[33mcall   [0m[35mb8[0m <[32mmain[0m[35m+0x[0m[35m1b[0m>
  bc:	83 ec 08             	[33msub    [0m[34mesp[0m,[35m0x8[0m
  bf:	50                   	[33mpush   [0m[34meax[0m
  c0:	8d 83 00 00 00 00    	[33mlea    [0m[34meax[0m,[[34mebx[0m+[35m0x0[0m]
  c6:	50                   	[33mpush   [0m[34meax[0m
  c7:	e8 fc ff ff ff       	[33mcall   [0m[35mc8[0m <[32mmain[0m[35m+0x[0m[35m2b[0m>
  cc:	83 c4 10             	[33madd    [0m[34mesp[0m,[35m0x10[0m
  printf("factorial(6): %d.\n", factorial(6));
  cf:	83 ec 0c             	[33msub    [0m[34mesp[0m,[35m0xc[0m
  d2:	6a 06                	[33mpush   [0m[35m0x6[0m
  d4:	e8 fc ff ff ff       	[33mcall   [0m[35md5[0m <[32mmain[0m[35m+0x[0m[35m38[0m>
  d9:	83 c4 10             	[33madd    [0m[34mesp[0m,[35m0x10[0m
  dc:	83 ec 08             	[33msub    [0m[34mesp[0m,[35m0x8[0m
  df:	50                   	[33mpush   [0m[34meax[0m
  e0:	8d 83 11 00 00 00    	[33mlea    [0m[34meax[0m,[[34mebx[0m+[35m0x11[0m]
  e6:	50                   	[33mpush   [0m[34meax[0m
  e7:	e8 fc ff ff ff       	[33mcall   [0m[35me8[0m <[32mmain[0m[35m+0x[0m[35m4b[0m>
  ec:	83 c4 10             	[33madd    [0m[34mesp[0m,[35m0x10[0m
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  ef:	83 ec 04             	[33msub    [0m[34mesp[0m,[35m0x4[0m
  f2:	dd 83 30 00 00 00    	[33mfld    [0mQWORD PTR [[34mebx[0m+[35m0x30[0m]
  f8:	8d 64 24 f8          	[33mlea    [0m[34mesp[0m,[[34mesp[0m[35m-[0m[35m0x8[0m]
  fc:	dd 1c 24             	[33mfstp   [0mQWORD PTR [[34mesp[0m]
  ff:	6a 05                	[33mpush   [0m[35m0x5[0m
 101:	e8 fc ff ff ff       	[33mcall   [0m[35m102[0m <[32mmain[0m[35m+0x[0m[35m65[0m>
 106:	83 c4 10             	[33madd    [0m[34mesp[0m,[35m0x10[0m
 109:	83 ec 04             	[33msub    [0m[34mesp[0m,[35m0x4[0m
 10c:	8d 64 24 f8          	[33mlea    [0m[34mesp[0m,[[34mesp[0m[35m-[0m[35m0x8[0m]
 110:	dd 1c 24             	[33mfstp   [0mQWORD PTR [[34mesp[0m]
 113:	8d 83 24 00 00 00    	[33mlea    [0m[34meax[0m,[[34mebx[0m+[35m0x24[0m]
 119:	50                   	[33mpush   [0m[34meax[0m
 11a:	e8 fc ff ff ff       	[33mcall   [0m[35m11b[0m <[32mmain[0m[35m+0x[0m[35m7e[0m>
 11f:	83 c4 10             	[33madd    [0m[34mesp[0m,[35m0x10[0m
  return 0;
 122:	b8 00 00 00 00       	[33mmov    [0m[34meax[0m,[35m0x0[0m
}
 127:	8d 65 f8             	[33mlea    [0m[34mesp[0m,[[34mebp[0m[35m-[0m[35m0x8[0m]
 12a:	59                   	[33mpop    [0m[34mecx[0m
 12b:	5b                   	[33mpop    [0m[34mebx[0m
 12c:	5d                   	[33mpop    [0m[34mebp[0m
 12d:	8d 61 fc             	[33mlea    [0m[34mesp[0m,[[34mecx[0m[35m-[0m[35m0x4[0m]
 130:	c3                   	[33mret[0m

Дизассемблирование раздела .rodata:

00000000 <.rodata>:
   0:	73 69                	[33mjae    [0m[35m6b[0m <[32mipow[0m[35m+0x[0m[35m21[0m>
   2:	7a 65                	[33mjp     [0m[35m69[0m <[32mipow[0m[35m+0x[0m[35m1f[0m>
   4:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
   5:	66 28 69 6e          	[33mdata16 [0m[33msub [0mBYTE PTR [[34mecx[0m+[35m0x6e[0m],[34mch[0m
   9:	74 29                	[33mje     [0m[35m34[0m <[32m.rodata[0m[35m+0x[0m[35m34[0m>
   b:	3a 20                	[33mcmp    [0m[34mah[0m,BYTE PTR [[34meax[0m]
   d:	25 64 0a 00 66       	[33mand    [0m[34meax[0m,[35m0x66000a64[0m
  12:	61                   	[33mpopa[0m
  13:	63 74 6f 72          	[33marpl   [0mWORD PTR [[34medi[0m+[34mebp[0m*[35m2[0m+[35m0x72[0m],[34msi[0m
  17:	69 61 6c 28 36 29 3a 	[33mimul   [0m[34mesp[0m,DWORD PTR [[34mecx[0m+[35m0x6c[0m],[35m0x3a293628[0m
  1e:	20 25 64 2e 0a 00    	[33mand    [0mBYTE PTR [34mds[0m:0xa2e64,[34mah[0m
  24:	50                   	[33mpush   [0m[34meax[0m
  25:	69 5e 35 3a 20 25 6c 	[33mimul   [0m[34mebx[0m,DWORD PTR [[34mesi[0m+[35m0x35[0m],[35m0x6c25203a[0m
  2c:	66 0a 00             	[33mdata16 [0m[33mor [0m[34mal[0m,BYTE PTR [[34meax[0m]
  2f:	00 18                	[33madd    [0mBYTE PTR [[34meax[0m],[34mbl[0m
  31:	2d 44 54 fb 21       	[33msub    [0m[34meax[0m,[35m0x21fb5444[0m
  36:	09                   	[33m.byte [0m[35m0x9[0m
  37:	40                   	[33minc    [0m[34meax[0m

Дизассемблирование раздела .text.__x86.get_pc_thunk.ax:

00000000 <__x86.get_pc_thunk.ax>:
   0:	8b 04 24             	[33mmov    [0m[34meax[0m,DWORD PTR [[34mesp[0m]
   3:	c3                   	[33mret[0m

Дизассемблирование раздела .text.__x86.get_pc_thunk.cx:

00000000 <__x86.get_pc_thunk.cx>:
   0:	8b 0c 24             	[33mmov    [0m[34mecx[0m,DWORD PTR [[34mesp[0m]
   3:	c3                   	[33mret[0m

Дизассемблирование раздела .text.__x86.get_pc_thunk.bx:

00000000 <__x86.get_pc_thunk.bx>:
   0:	8b 1c 24             	[33mmov    [0m[34mebx[0m,DWORD PTR [[34mesp[0m]
   3:	c3                   	[33mret[0m

Дизассемблирование раздела .debug_info:

00000000 <.debug_info>:
{
   0:	4b                   	[33mdec    [0m[34mebx[0m
   1:	01 00                	[33madd    [0mDWORD PTR [[34meax[0m],[34meax[0m
   3:	00 05 00 01 04 00    	[33madd    [0mBYTE PTR [34mds[0m:0x40100,[34mal[0m
   9:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   b:	00 05 1b 00 00 00    	[33madd    [0mBYTE PTR [34mds[0m:0x1b,[34mal[0m
  return sizeof(int);
  11:	1d 60 00 00 00       	[33msbb    [0m[34meax[0m,[35m0x60[0m
	...
{
  1e:	31 01                	[33mxor    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  20:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  22:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  int r = 1;
  24:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  26:	01 04 07             	[33madd    [0mDWORD PTR [[34medi[0m+[34meax[0m*[35m1[0m],[34meax[0m
  29:	0e                   	[33mpush   [0m[34mcs[0m
  2a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  while(n > 1)
  2c:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
    r *= n--;
  2e:	01 06                	[33madd    [0mDWORD PTR [[34mesi[0m],[34meax[0m
  30:	90                   	[33mnop[0m
  31:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  33:	00 06                	[33madd    [0mBYTE PTR [[34mesi[0m],[34mal[0m
  35:	2d 00 00 00 01       	[33msub    [0m[34meax[0m,[35m0x1000000[0m
  3a:	01 08                	[33madd    [0mDWORD PTR [[34meax[0m],[34mecx[0m
  3c:	95                   	[33mxchg   [0m[34mebp[0m,[34meax[0m
  3d:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  while(n > 1)
  3f:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  41:	02 07                	[33madd    [0m[34mal[0m,BYTE PTR [[34medi[0m]
  43:	c2 00 00             	[33mret    [0m[35m0x0[0m
  return r;
  46:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
}
  48:	04 07                	[33madd    [0m[34mal[0m,[35m0x7[0m
{
  4a:	62 00                	[33mbound  [0m[34meax[0m,QWORD PTR [[34meax[0m]
  4c:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  4e:	01 01                	[33madd    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  50:	06                   	[33mpush   [0m[34mes[0m
  51:	eb 00                	[33mjmp    [0m[35m53[0m <[32m.debug_info[0m[35m+0x[0m[35m53[0m>
  53:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  55:	01 02                	[33madd    [0mDWORD PTR [[34medx[0m],[34meax[0m
  57:	05 dc 00 00 00       	[33madd    [0m[34meax[0m,[35m0xdc[0m
  5c:	07                   	[33mpop    [0m[34mes[0m
  5d:	04 05                	[33madd    [0m[34mal[0m,[35m0x5[0m
  5f:	69 6e 74 00 01 08 05 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mesi[0m+[35m0x74[0m],[35m0x5080100[0m
  66:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  double res = 1, tmp = base;
  68:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  6a:	01 08                	[33madd    [0mDWORD PTR [[34meax[0m],[34mecx[0m
  6c:	07                   	[33mpop    [0m[34mes[0m
  6d:	74 00                	[33mje     [0m[35m6f[0m <[32m.debug_info[0m[35m+0x[0m[35m6f[0m>
  6f:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  71:	01 04 05 a8 00 00 00 	[33madd    [0mDWORD PTR [[34meax[0m*[35m1[0m+[35m0xa8[0m],[34meax[0m
    if(pow & 1)
  78:	08 d5                	[33mor     [0m[34mch[0m,[34mdl[0m
  7a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  7c:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
      res *= tmp;
  7e:	64 01 0c 5c          	[33madd    [0mDWORD PTR [34mfs[0m:[[34mesp[0m+[34mebx[0m*[35m2[0m],[34mecx[0m
  82:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  84:	00 90 00 00 00 09    	[33madd    [0mBYTE PTR [[34meax[0m+[35m0x9000000[0m],[34mdl[0m
    tmp *= tmp;
  8a:	90                   	[33mnop[0m
  8b:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  8d:	00 0a                	[33madd    [0mBYTE PTR [[34medx[0m],[34mcl[0m
    pow >>= 1;
  8f:	00 0b                	[33madd    [0mBYTE PTR [[34mebx[0m],[34mcl[0m
  91:	04 34                	[33madd    [0m[34mal[0m,[35m0x34[0m
  while(pow)
  93:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  95:	00 0c a3             	[33madd    [0mBYTE PTR [[34mebx[0m+[34meiz[0m*[35m4[0m],[34mcl[0m
  return res;
  98:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  9a:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
}
  9c:	1e                   	[33mpush   [0m[34mds[0m
{
  9d:	05 5c 00 00 00       	[33madd    [0m[34meax[0m,[35m0x5c[0m
  a2:	9d                   	[33mpopf[0m
  a3:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  a5:	00 94 00 00 00 01 9c 	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m-[35m0x63ff0000[0m],[34mdl[0m
  ac:	03 e6                	[33madd    [0m[34mesp[0m,[34mesi[0m
  ae:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  b0:	00 11                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mdl[0m
  b2:	08 ff                	[33mor     [0m[34mbh[0m,[34mbh[0m
  b4:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  b6:	00 4a 00             	[33madd    [0mBYTE PTR [[34medx[0m+[35m0x0[0m],[34mcl[0m
  printf("sizeof(int): %d\n", sizeofint());
  b9:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  bb:	53                   	[33mpush   [0m[34mebx[0m
  bc:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  be:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  c0:	9c                   	[33mpushf[0m
  c1:	ff 00                	[33minc    [0mDWORD PTR [[34meax[0m]
  c3:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  c5:	04 70                	[33madd    [0m[34mal[0m,[35m0x70[0m
  c7:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  c8:	77 00                	[33mja     [0m[35mca[0m <[32m.debug_info[0m[35m+0x[0m[35mca[0m>
  ca:	11 11                	[33madc    [0mDWORD PTR [[34mecx[0m],[34medx[0m
  cc:	5c                   	[33mpop    [0m[34mesp[0m
  cd:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  printf("factorial(6): %d.\n", factorial(6));
  cf:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  d1:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
  d2:	00 0d 8b 00 00 00    	[33madd    [0mBYTE PTR [34mds[0m:0x8b,[34mcl[0m
  d8:	01 11                	[33madd    [0mDWORD PTR [[34mecx[0m],[34medx[0m
  da:	1d ff 00 00 00       	[33msbb    [0m[34meax[0m,[35m0xff[0m
  df:	02 91 60 02 72 65    	[33madd    [0m[34mdl[0m,BYTE PTR [[34mecx[0m+[35m0x65720260[0m]
  e5:	73 00                	[33mjae    [0m[35me7[0m <[32m.debug_info[0m[35m+0x[0m[35me7[0m>
  e7:	13 0a                	[33madc    [0m[34mecx[0m,DWORD PTR [[34medx[0m]
  e9:	ff 00                	[33minc    [0mDWORD PTR [[34meax[0m]
  eb:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  ed:	02 91 68 02 74 6d    	[33madd    [0m[34mdl[0m,BYTE PTR [[34mecx[0m+[35m0x6d740268[0m]
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  f3:	70 00                	[33mjo     [0m[35mf5[0m <[32m.debug_info[0m[35m+0x[0m[35mf5[0m>
  f5:	13 13                	[33madc    [0m[34medx[0m,DWORD PTR [[34mebx[0m]
  f7:	ff 00                	[33minc    [0mDWORD PTR [[34meax[0m]
  f9:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  fb:	02 91 70 00 01 08    	[33madd    [0m[34mdl[0m,BYTE PTR [[34mecx[0m+[35m0x8010070[0m]
 101:	04 bb                	[33madd    [0m[34mal[0m,[35m0xbb[0m
 103:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
 105:	00 03                	[33madd    [0mBYTE PTR [[34mebx[0m],[34mal[0m
 107:	b1 00                	[33mmov    [0m[34mcl[0m,[35m0x0[0m
 109:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
 10b:	09 05 5c 00 00 00    	[33mor     [0mDWORD PTR [34mds[0m:0x5c,[34meax[0m
 111:	14 00                	[33madc    [0m[34mal[0m,[35m0x0[0m
 113:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
 115:	36 00 00             	[33madd    [0mBYTE PTR [34mss[0m:[[34meax[0m],[34mal[0m
 118:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
 11a:	9c                   	[33mpushf[0m
 11b:	38 01                	[33mcmp    [0mBYTE PTR [[34mecx[0m],[34mal[0m
 11d:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
 11f:	04 6e                	[33madd    [0m[34mal[0m,[35m0x6e[0m
 121:	00 09                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mcl[0m
  return 0;
 123:	13 5c 00 00          	[33madc    [0m[34mebx[0m,DWORD PTR [[34meax[0m+[34meax[0m*[35m1[0m+[35m0x0[0m]
}
 127:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
 129:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
 12a:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
 12c:	72 00                	[33mjb     [0m[35m12e[0m <[32m.debug_info[0m[35m+0x[0m[35m12e[0m>
 12e:	0b 07                	[33mor     [0m[34meax[0m,DWORD PTR [[34medi[0m]
 130:	5c                   	[33mpop    [0m[34mesp[0m
 131:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
 133:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
 135:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
 136:	74 00                	[33mje     [0m[35m138[0m <[32m.debug_info[0m[35m+0x[0m[35m138[0m>
 138:	0e                   	[33mpush   [0m[34mcs[0m
 139:	58                   	[33mpop    [0m[34meax[0m
 13a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
 13c:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
 13e:	04 05                	[33madd    [0m[34mal[0m,[35m0x5[0m
 140:	5c                   	[33mpop    [0m[34mesp[0m
 141:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
 143:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
 145:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
 147:	00 14 00             	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m],[34mdl[0m
 14a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
 14c:	01                   	[33m.byte [0m[35m0x1[0m
 14d:	9c                   	[33mpushf[0m
	...

Дизассемблирование раздела .debug_abbrev:

00000000 <.debug_abbrev>:
{
   0:	01 24 00             	[33madd    [0mDWORD PTR [[34meax[0m+[34meax[0m*[35m1[0m],[34mesp[0m
   3:	0b 0b                	[33mor     [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
   5:	3e 0b 03             	[33mor     [0m[34meax[0m,DWORD PTR [34mds[0m:[[34mebx[0m]
   8:	0e                   	[33mpush   [0m[34mcs[0m
   9:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   b:	02 34 00             	[33madd    [0m[34mdh[0m,BYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m]
  return sizeof(int);
   e:	03 08                	[33madd    [0m[34mecx[0m,DWORD PTR [[34meax[0m]
  10:	3a 21                	[33mcmp    [0m[34mah[0m,BYTE PTR [[34mecx[0m]
}
  12:	01 3b                	[33madd    [0mDWORD PTR [[34mebx[0m],[34medi[0m
{
  14:	0b 39                	[33mor     [0m[34medi[0m,DWORD PTR [[34mecx[0m]
  16:	0b 49 13             	[33mor     [0m[34mecx[0m,DWORD PTR [[34mecx[0m+[35m0x13[0m]
  19:	02 18                	[33madd    [0m[34mbl[0m,BYTE PTR [[34meax[0m]
  1b:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  1d:	03 2e                	[33madd    [0m[34mebp[0m,DWORD PTR [[34mesi[0m]
  1f:	01 3f                	[33madd    [0mDWORD PTR [[34medi[0m],[34medi[0m
  21:	19 03                	[33msbb    [0mDWORD PTR [[34mebx[0m],[34meax[0m
  23:	0e                   	[33mpush   [0m[34mcs[0m
  int r = 1;
  24:	3a 21                	[33mcmp    [0m[34mah[0m,BYTE PTR [[34mecx[0m]
  26:	01 3b                	[33madd    [0mDWORD PTR [[34mebx[0m],[34medi[0m
  28:	0b 39                	[33mor     [0m[34medi[0m,DWORD PTR [[34mecx[0m]
  2a:	0b 27                	[33mor     [0m[34mesp[0m,DWORD PTR [[34medi[0m]
  while(n > 1)
  2c:	19 49 13             	[33msbb    [0mDWORD PTR [[34mecx[0m+[35m0x13[0m],[34mecx[0m
    r *= n--;
  2f:	11 01                	[33madc    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  31:	12 06                	[33madc    [0m[34mal[0m,BYTE PTR [[34mesi[0m]
  33:	40                   	[33minc    [0m[34meax[0m
  34:	18 7a 19             	[33msbb    [0mBYTE PTR [[34medx[0m+[35m0x19[0m],[34mbh[0m
  37:	01 13                	[33madd    [0mDWORD PTR [[34mebx[0m],[34medx[0m
  39:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  3b:	04 05                	[33madd    [0m[34mal[0m,[35m0x5[0m
  3d:	00 03                	[33madd    [0mBYTE PTR [[34mebx[0m],[34mal[0m
  while(n > 1)
  3f:	08 3a                	[33mor     [0mBYTE PTR [[34medx[0m],[34mbh[0m
  41:	21 01                	[33mand    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  43:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  return r;
  45:	39 0b                	[33mcmp    [0mDWORD PTR [[34mebx[0m],[34mecx[0m
  47:	49                   	[33mdec    [0m[34mecx[0m
}
  48:	13 02                	[33madc    [0m[34meax[0m,DWORD PTR [[34medx[0m]
{
  4a:	18 00                	[33msbb    [0mBYTE PTR [[34meax[0m],[34mal[0m
  4c:	00 05 11 01 25 0e    	[33madd    [0mBYTE PTR [34mds[0m:0xe250111,[34mal[0m
  52:	13 0b                	[33madc    [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  54:	03 1f                	[33madd    [0m[34mebx[0m,DWORD PTR [[34medi[0m]
  56:	1b 1f                	[33msbb    [0m[34mebx[0m,DWORD PTR [[34medi[0m]
  58:	11 01                	[33madc    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  5a:	12 06                	[33madc    [0m[34mal[0m,BYTE PTR [[34mesi[0m]
  5c:	10 17                	[33madc    [0mBYTE PTR [[34medi[0m],[34mdl[0m
  5e:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  60:	06                   	[33mpush   [0m[34mes[0m
  61:	26 00 49 13          	[33madd    [0mBYTE PTR [34mes[0m:[[34mecx[0m+[35m0x13[0m],[34mcl[0m
  65:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  double res = 1, tmp = base;
  67:	07                   	[33mpop    [0m[34mes[0m
  68:	24 00                	[33mand    [0m[34mal[0m,[35m0x0[0m
  6a:	0b 0b                	[33mor     [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  6c:	3e 0b 03             	[33mor     [0m[34meax[0m,DWORD PTR [34mds[0m:[[34mebx[0m]
  6f:	08 00                	[33mor     [0mBYTE PTR [[34meax[0m],[34mal[0m
  71:	00 08                	[33madd    [0mBYTE PTR [[34meax[0m],[34mcl[0m
  while(pow)
  73:	2e 01 3f             	[33madd    [0mDWORD PTR [34mcs[0m:[[34medi[0m],[34medi[0m
    if(pow & 1)
  76:	19 03                	[33msbb    [0mDWORD PTR [[34mebx[0m],[34meax[0m
  78:	0e                   	[33mpush   [0m[34mcs[0m
  79:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mebx[0m]
  7b:	3b 05 39 0b 27 19    	[33mcmp    [0m[34meax[0m,DWORD PTR [34mds[0m:0x19270b39
      res *= tmp;
  81:	49                   	[33mdec    [0m[34mecx[0m
  82:	13 3c 19             	[33madc    [0m[34medi[0m,DWORD PTR [[34mecx[0m+[34mebx[0m*[35m1[0m]
  85:	01 13                	[33madd    [0mDWORD PTR [[34mebx[0m],[34medx[0m
    tmp *= tmp;
  87:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  89:	09 05 00 49 13 00    	[33mor     [0mDWORD PTR [34mds[0m:0x134900,[34meax[0m
    pow >>= 1;
  8f:	00 0a                	[33madd    [0mBYTE PTR [[34medx[0m],[34mcl[0m
  91:	18 00                	[33msbb    [0mBYTE PTR [[34meax[0m],[34mal[0m
  while(pow)
  93:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  95:	0b 0f                	[33mor     [0m[34mecx[0m,DWORD PTR [[34medi[0m]
  97:	00 0b                	[33madd    [0mBYTE PTR [[34mebx[0m],[34mcl[0m
  return res;
  99:	0b 49 13             	[33mor     [0m[34mecx[0m,DWORD PTR [[34mecx[0m+[35m0x13[0m]
}
  9c:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
{
  9e:	0c 2e                	[33mor     [0m[34mal[0m,[35m0x2e[0m
  a0:	00 3f                	[33madd    [0mBYTE PTR [[34medi[0m],[34mbh[0m
  a2:	19 03                	[33msbb    [0mDWORD PTR [[34mebx[0m],[34meax[0m
  a4:	0e                   	[33mpush   [0m[34mcs[0m
  a5:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mebx[0m]
  a7:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  a9:	39 0b                	[33mcmp    [0mDWORD PTR [[34mebx[0m],[34mecx[0m
  ab:	49                   	[33mdec    [0m[34mecx[0m
  ac:	13 11                	[33madc    [0m[34medx[0m,DWORD PTR [[34mecx[0m]
  ae:	01 12                	[33madd    [0mDWORD PTR [[34medx[0m],[34medx[0m
  b0:	06                   	[33mpush   [0m[34mes[0m
  b1:	40                   	[33minc    [0m[34meax[0m
  b2:	18 7c 19 00          	[33msbb    [0mBYTE PTR [[34mecx[0m+[34mebx[0m*[35m1[0m+[35m0x0[0m],[34mbh[0m
  b6:	00 0d 05 00 03 0e    	[33madd    [0mBYTE PTR [34mds[0m:0xe030005,[34mcl[0m
  printf("sizeof(int): %d\n", sizeofint());
  bc:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mebx[0m]
  be:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  c0:	39 0b                	[33mcmp    [0mDWORD PTR [[34mebx[0m],[34mecx[0m
  c2:	49                   	[33mdec    [0m[34mecx[0m
  c3:	13 02                	[33madc    [0m[34meax[0m,DWORD PTR [[34medx[0m]
  c5:	18 00                	[33msbb    [0mBYTE PTR [[34meax[0m],[34mal[0m
  c7:	00 0e                	[33madd    [0mBYTE PTR [[34mesi[0m],[34mcl[0m
  c9:	2e 00 3f             	[33madd    [0mBYTE PTR [34mcs[0m:[[34medi[0m],[34mbh[0m
  cc:	19 03                	[33msbb    [0mDWORD PTR [[34mebx[0m],[34meax[0m
  ce:	0e                   	[33mpush   [0m[34mcs[0m
  printf("factorial(6): %d.\n", factorial(6));
  cf:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mebx[0m]
  d1:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  d3:	39 0b                	[33mcmp    [0mDWORD PTR [[34mebx[0m],[34mecx[0m
  d5:	49                   	[33mdec    [0m[34mecx[0m
  d6:	13 11                	[33madc    [0m[34medx[0m,DWORD PTR [[34mecx[0m]
  d8:	01 12                	[33madd    [0mDWORD PTR [[34medx[0m],[34medx[0m
  da:	06                   	[33mpush   [0m[34mes[0m
  db:	40                   	[33minc    [0m[34meax[0m
  dc:	18 7a 19             	[33msbb    [0mBYTE PTR [[34medx[0m+[35m0x19[0m],[34mbh[0m
  df:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
	...

Дизассемблирование раздела .debug_aranges:

00000000 <.debug_aranges>:
{
   0:	1c 00                	[33msbb    [0m[34mal[0m,[35m0x0[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	02 00                	[33madd    [0m[34mal[0m,BYTE PTR [[34meax[0m]
   6:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   8:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   a:	04 00                	[33madd    [0m[34mal[0m,[35m0x0[0m
	...
{
  14:	31 01                	[33mxor    [0mDWORD PTR [[34mecx[0m],[34meax[0m
	...

Дизассемблирование раздела .debug_line:

00000000 <.debug_line>:
{
   0:	ab                   	[33mstos   [0mDWORD PTR [34mes[0m:[[34medi[0m],[34meax[0m
   1:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   3:	00 05 00 04 00 33    	[33madd    [0mBYTE PTR [34mds[0m:0x33000400,[34mal[0m
   9:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   b:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  return sizeof(int);
   d:	01 01                	[33madd    [0mDWORD PTR [[34mecx[0m],[34meax[0m
   f:	fb                   	[33msti[0m
  10:	0e                   	[33mpush   [0m[34mcs[0m
  11:	0d 00 01 01 01       	[33mor     [0m[34meax[0m,[35m0x1010100[0m
{
  16:	01 00                	[33madd    [0mDWORD PTR [[34meax[0m],[34meax[0m
  18:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  1a:	01 00                	[33madd    [0mDWORD PTR [[34meax[0m],[34meax[0m
  1c:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  1e:	01 01                	[33madd    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  20:	1f                   	[33mpop    [0m[34mds[0m
  21:	02 66 00             	[33madd    [0m[34mah[0m,BYTE PTR [[34mesi[0m+[35m0x0[0m]
  int r = 1;
  24:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  26:	c6 00 00             	[33mmov    [0mBYTE PTR [[34meax[0m],[35m0x0[0m
  29:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  while(n > 1)
  2b:	01 1f                	[33madd    [0mDWORD PTR [[34medi[0m],[34mebx[0m
    r *= n--;
  2d:	02 0f                	[33madd    [0m[34mcl[0m,BYTE PTR [[34medi[0m]
  2f:	03 d3                	[33madd    [0m[34medx[0m,[34mebx[0m
  31:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  33:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  35:	d9 00                	[33mfld    [0mDWORD PTR [[34meax[0m]
  37:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  39:	00 df                	[33madd    [0m[34mbh[0m,[34mbl[0m
  3b:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  3d:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  while(n > 1)
  3f:	05 01 00 05 02       	[33madd    [0m[34meax[0m,[35m0x2050001[0m
  44:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  return r;
  46:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
}
  48:	16                   	[33mpush   [0m[34mss[0m
  49:	05 0a c9 05 01       	[33madd    [0m[34meax[0m,[35m0x105c90a[0m
{
  4e:	59                   	[33mpop    [0m[34mecx[0m
  4f:	31 05 07 f3 05 08    	[33mxor    [0mDWORD PTR [34mds[0m:0x805f307,[34meax[0m
  55:	75 05                	[33mjne    [0m[35m5c[0m <[32m.debug_line[0m[35m+0x[0m[35m5c[0m>
  57:	0b 2f                	[33mor     [0m[34mebp[0m,DWORD PTR [[34medi[0m]
  59:	05 07 90 05 0b       	[33madd    [0m[34meax[0m,[35m0xb059007[0m
  5e:	8f 05 0a 68 05 01    	[33mpop    [0mDWORD PTR [34mds[0m:0x105680a
  64:	3d 31 05 0a 08       	[33mcmp    [0m[34meax[0m,[35m0x80a0531[0m
  double res = 1, tmp = base;
  69:	bb 05 13 58 05       	[33mmov    [0m[34mebx[0m,[35m0x5581305[0m
  6e:	08 67 05             	[33mor     [0mBYTE PTR [[34medi[0m+[35m0x5[0m],[34mah[0m
  71:	0c 30                	[33mor     [0m[34mal[0m,[35m0x30[0m
  while(pow)
  73:	05 07 66 05 0b       	[33madd    [0m[34meax[0m,[35m0xb056607[0m
    if(pow & 1)
  78:	4b                   	[33mdec    [0m[34mebx[0m
  79:	05 09 91 83 37       	[33madd    [0m[34meax[0m,[35m0x37839109[0m
      res *= tmp;
  7e:	05 0a 6d 05 01       	[33madd    [0m[34meax[0m,[35m0x1056d0a[0m
  83:	3d 31 05 03 08       	[33mcmp    [0m[34meax[0m,[35m0x8030531[0m
    tmp *= tmp;
  88:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
  89:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  8b:	04 01                	[33madd    [0m[34mal[0m,[35m0x1[0m
  8d:	06                   	[33mpush   [0m[34mes[0m
  8e:	58                   	[33mpop    [0m[34meax[0m
    pow >>= 1;
  8f:	06                   	[33mpush   [0m[34mes[0m
  90:	08 2f                	[33mor     [0mBYTE PTR [[34medi[0m],[34mch[0m
  while(pow)
  92:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  94:	04 01                	[33madd    [0m[34mal[0m,[35m0x1[0m
  96:	06                   	[33mpush   [0m[34mes[0m
  97:	c8 06 08 2f          	[33menter  [0m[35m0x806[0m,[35m0x2f[0m
}
  9b:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
{
  9d:	04 01                	[33madd    [0m[34mal[0m,[35m0x1[0m
  9f:	06                   	[33mpush   [0m[34mes[0m
  a0:	08 90 05 0a 06 08    	[33mor     [0mBYTE PTR [[34meax[0m+[35m0x8060a05[0m],[34mdl[0m
  a6:	83 05 01 59 02 0a 00 	[33madd    [0mDWORD PTR [34mds[0m:0xa025901,[35m0x0[0m
  ad:	01 01                	[33madd    [0mDWORD PTR [[34mecx[0m],[34meax[0m

Дизассемблирование раздела .debug_str:

00000000 <.debug_str>:
{
   0:	6c                   	[33mins    [0mBYTE PTR [34mes[0m:[[34medi[0m],[34mdx[0m
   1:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
   2:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
   3:	67 20 6c 6f          	[33mand    [0mBYTE PTR [si+[35m0x6f[0m],[34mch[0m
   7:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
   8:	67 20 69 6e          	[33mand    [0mBYTE PTR [bx+di+[35m0x6e[0m],[34mch[0m
   c:	74 00                	[33mje     [0m[35me[0m <[32m.debug_str[0m[35m+0x[0m[35me[0m>
  return sizeof(int);
   e:	75 6e                	[33mjne    [0m[35m7e[0m <[32m.debug_str[0m[35m+0x[0m[35m7e[0m>
  10:	73 69                	[33mjae    [0m[35m7b[0m <[32m.debug_str[0m[35m+0x[0m[35m7b[0m>
}
  12:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
{
  14:	65 64 20 69 6e       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mecx[0m+[35m0x6e[0m],[34mch[0m
  19:	74 00                	[33mje     [0m[35m1b[0m <[32m.debug_str[0m[35m+0x[0m[35m1b[0m>
  1b:	47                   	[33minc    [0m[34medi[0m
  1c:	4e                   	[33mdec    [0m[34mesi[0m
  1d:	55                   	[33mpush   [0m[34mebp[0m
  1e:	20 43 31             	[33mand    [0mBYTE PTR [[34mebx[0m+[35m0x31[0m],[34mal[0m
  21:	37                   	[33maaa[0m
  22:	20 31                	[33mand    [0mBYTE PTR [[34mecx[0m],[34mdh[0m
  int r = 1;
  24:	33 2e                	[33mxor    [0m[34mebp[0m,DWORD PTR [[34mesi[0m]
  26:	31 2e                	[33mxor    [0mDWORD PTR [[34mesi[0m],[34mebp[0m
  28:	31 20                	[33mxor    [0mDWORD PTR [[34meax[0m],[34mesp[0m
  2a:	32 30                	[33mxor    [0m[34mdh[0m,BYTE PTR [[34meax[0m]
  while(n > 1)
  2c:	32 33                	[33mxor    [0m[34mdh[0m,BYTE PTR [[34mebx[0m]
    r *= n--;
  2e:	30 34 32             	[33mxor    [0mBYTE PTR [[34medx[0m+[34mesi[0m*[35m1[0m],[34mdh[0m
  31:	39 20                	[33mcmp    [0mDWORD PTR [[34meax[0m],[34mesp[0m
  33:	2d 6d 33 32 20       	[33msub    [0m[34meax[0m,[35m0x2032336d[0m
  38:	2d 6d 74 75 6e       	[33msub    [0m[34meax[0m,[35m0x6e75746d[0m
  3d:	65 3d 67 65 6e 65    	[33mgs [0m[33mcmp [0m[34meax[0m,[35m0x656e6567[0m
  while(n > 1)
  43:	72 69                	[33mjb     [0m[35mae[0m <[32m.debug_str[0m[35m+0x[0m[35mae[0m>
  return r;
  45:	63 20                	[33marpl   [0mWORD PTR [[34meax[0m],[34msp[0m
  47:	2d 6d 61 72 63       	[33msub    [0m[34meax[0m,[35m0x6372616d[0m
{
  4c:	68 3d 78 38 36       	[33mpush   [0m[35m0x3638783d[0m
  51:	2d 36 34 20 2d       	[33msub    [0m[34meax[0m,[35m0x2d203436[0m
  56:	67 00 73 69          	[33madd    [0mBYTE PTR [bp+di+[35m0x69[0m],[34mdh[0m
  5a:	7a 65                	[33mjp     [0m[35mc1[0m <[32m.debug_str[0m[35m+0x[0m[35mc1[0m>
  5c:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  5d:	66 69 6e 74 00 6c    	[33mimul   [0m[34mbp[0m,WORD PTR [[34mesi[0m+[35m0x74[0m],[35m0x6c00[0m
  63:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  64:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  65:	67 20 75 6e          	[33mand    [0mBYTE PTR [di+[35m0x6e[0m],[34mdh[0m
  double res = 1, tmp = base;
  69:	73 69                	[33mjae    [0m[35md4[0m <[32m.debug_str[0m[35m+0x[0m[35md4[0m>
  6b:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
  6d:	65 64 20 69 6e       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mecx[0m+[35m0x6e[0m],[34mch[0m
  while(pow)
  72:	74 00                	[33mje     [0m[35m74[0m <[32m.debug_str[0m[35m+0x[0m[35m74[0m>
    if(pow & 1)
  74:	6c                   	[33mins    [0mBYTE PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  75:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  76:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  77:	67 20 6c 6f          	[33mand    [0mBYTE PTR [si+[35m0x6f[0m],[34mch[0m
  7b:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  7c:	67 20 75 6e          	[33mand    [0mBYTE PTR [di+[35m0x6e[0m],[34mdh[0m
      res *= tmp;
  80:	73 69                	[33mjae    [0m[35meb[0m <[32m.debug_str[0m[35m+0x[0m[35meb[0m>
  82:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
  84:	65 64 20 69 6e       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mecx[0m+[35m0x6e[0m],[34mch[0m
    tmp *= tmp;
  89:	74 00                	[33mje     [0m[35m8b[0m <[32m.debug_str[0m[35m+0x[0m[35m8b[0m>
  8b:	62 61 73             	[33mbound  [0m[34mesp[0m,QWORD PTR [[34mecx[0m+[35m0x73[0m]
  8e:	65 00 63 68          	[33madd    [0mBYTE PTR [34mgs[0m:[[34mebx[0m+[35m0x68[0m],[34mah[0m
  while(pow)
  92:	61                   	[33mpopa[0m
  93:	72 00                	[33mjb     [0m[35m95[0m <[32m.debug_str[0m[35m+0x[0m[35m95[0m>
  95:	75 6e                	[33mjne    [0m[35m105[0m <[32mmain[0m[35m+0x[0m[35m68[0m>
  97:	73 69                	[33mjae    [0m[35m102[0m <[32mmain[0m[35m+0x[0m[35m65[0m>
  return res;
  99:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
}
  9b:	65 64 20 63 68       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mebx[0m+[35m0x68[0m],[34mah[0m
{
  a0:	61                   	[33mpopa[0m
  a1:	72 00                	[33mjb     [0m[35ma3[0m <[32m.debug_str[0m[35m+0x[0m[35ma3[0m>
  a3:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  a4:	61                   	[33mpopa[0m
  a5:	69 6e 00 6c 6f 6e 67 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mesi[0m+[35m0x0[0m],[35m0x676e6f6c[0m
  ac:	20 69 6e             	[33mand    [0mBYTE PTR [[34mecx[0m+[35m0x6e[0m],[34mch[0m
  af:	74 00                	[33mje     [0m[35mb1[0m <[32m.debug_str[0m[35m+0x[0m[35mb1[0m>
  b1:	66 61                	[33mpopaw[0m
  b3:	63 74 6f 72          	[33marpl   [0mWORD PTR [[34medi[0m+[34mebp[0m*[35m2[0m+[35m0x72[0m],[34msi[0m
  printf("sizeof(int): %d\n", sizeofint());
  b7:	69 61 6c 00 64 6f 75 	[33mimul   [0m[34mesp[0m,DWORD PTR [[34mecx[0m+[35m0x6c[0m],[35m0x756f6400[0m
  be:	62 6c 65 00          	[33mbound  [0m[34mebp[0m,QWORD PTR [[34mebp[0m+[34meiz[0m*[35m2[0m+[35m0x0[0m]
  c2:	73 68                	[33mjae    [0m[35m12c[0m <[32mmain[0m[35m+0x[0m[35m8f[0m>
  c4:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  c5:	72 74                	[33mjb     [0m[35m13b[0m <[32mmain[0m[35m+0x[0m[35m9e[0m>
  c7:	20 75 6e             	[33mand    [0mBYTE PTR [[34mebp[0m+[35m0x6e[0m],[34mdh[0m
  ca:	73 69                	[33mjae    [0m[35m135[0m <[32mmain[0m[35m+0x[0m[35m98[0m>
  cc:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
  ce:	65 64 20 69 6e       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mecx[0m+[35m0x6e[0m],[34mch[0m
  printf("factorial(6): %d.\n", factorial(6));
  d3:	74 00                	[33mje     [0m[35md5[0m <[32m.debug_str[0m[35m+0x[0m[35md5[0m>
  d5:	70 72                	[33mjo     [0m[35m149[0m <[32mmain[0m[35m+0x[0m[35mac[0m>
  d7:	69 6e 74 66 00 73 68 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mesi[0m+[35m0x74[0m],[35m0x68730066[0m
  de:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  df:	72 74                	[33mjb     [0m[35m155[0m <[32mmain[0m[35m+0x[0m[35mb8[0m>
  e1:	20 69 6e             	[33mand    [0mBYTE PTR [[34mecx[0m+[35m0x6e[0m],[34mch[0m
  e4:	74 00                	[33mje     [0m[35me6[0m <[32m.debug_str[0m[35m+0x[0m[35me6[0m>
  e6:	69 70 6f 77 00 73 69 	[33mimul   [0m[34mesi[0m,DWORD PTR [[34meax[0m+[35m0x6f[0m],[35m0x69730077[0m
  ed:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  ef:	65 64 20 63 68       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mebx[0m+[35m0x68[0m],[34mah[0m
  f4:	61                   	[33mpopa[0m
  f5:	72 00                	[33mjb     [0m[35mf7[0m <[32mmain[0m[35m+0x[0m[35m5a[0m>

Дизассемблирование раздела .debug_line_str:

00000000 <.debug_line_str>:
{
   0:	2f                   	[33mdas[0m
   1:	68 6f 6d 65 2f       	[33mpush   [0m[35m0x2f656d6f[0m
   6:	64 2f                	[33mfs [0m[33mdas[0m
   8:	5f                   	[33mpop    [0m[34medi[0m
   9:	2f                   	[33mdas[0m
   a:	73 61                	[33mjae    [0m[35m6d[0m <[32m.debug_line_str[0m[35m+0x[0m[35m6d[0m>
   c:	66 65 5f             	[33mgs [0m[33mpop [0m[34mdi[0m
  return sizeof(int);
   f:	77 66                	[33mja     [0m[35m77[0m <[32m.debug_line_str[0m[35m+0x[0m[35m77[0m>
  11:	2f                   	[33mdas[0m
}
  12:	77 6f                	[33mja     [0m[35m83[0m <[32m.debug_line_str[0m[35m+0x[0m[35m83[0m>
{
  14:	72 6b                	[33mjb     [0m[35m81[0m <[32m.debug_line_str[0m[35m+0x[0m[35m81[0m>
  16:	2f                   	[33mdas[0m
  17:	53                   	[33mpush   [0m[34mebx[0m
  18:	50                   	[33mpush   [0m[34meax[0m
  19:	62 55 2f             	[33mbound  [0m[34medx[0m,QWORD PTR [[34mebp[0m+[35m0x2f[0m]
  1c:	63 6f 75             	[33marpl   [0mWORD PTR [[34medi[0m+[35m0x75[0m],[34mbp[0m
  1f:	72 73                	[33mjb     [0m[35m94[0m <[32m.debug_line_str[0m[35m+0x[0m[35m94[0m>
  21:	65 73 2f             	[33mgs [0m[33mjae [0m[35m53[0m <[32m.debug_line_str[0m[35m+0x[0m[35m53[0m>
  int r = 1;
  24:	43                   	[33minc    [0m[34mebx[0m
  25:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  26:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  27:	70 75                	[33mjo     [0m[35m9e[0m <[32m.debug_line_str[0m[35m+0x[0m[35m9e[0m>
  29:	74 65                	[33mje     [0m[35m90[0m <[32m.debug_line_str[0m[35m+0x[0m[35m90[0m>
  while(n > 1)
  2b:	72 5f                	[33mjb     [0m[35m8c[0m <[32m.debug_line_str[0m[35m+0x[0m[35m8c[0m>
    r *= n--;
  2d:	41                   	[33minc    [0m[34mecx[0m
  2e:	72 63                	[33mjb     [0m[35m93[0m <[32m.debug_line_str[0m[35m+0x[0m[35m93[0m>
  30:	68 69 74 65 63       	[33mpush   [0m[35m0x63657469[0m
  35:	74 75                	[33mje     [0m[35mac[0m <[32m.debug_line_str[0m[35m+0x[0m[35mac[0m>
  37:	72 65                	[33mjb     [0m[35m9e[0m <[32m.debug_line_str[0m[35m+0x[0m[35m9e[0m>
  39:	2d 53 50 62 55       	[33msub    [0m[34meax[0m,[35m0x55625053[0m
  3e:	2d 43 42 2e 35       	[33msub    [0m[34meax[0m,[35m0x352e4243[0m
  while(n > 1)
  43:	30 38                	[33mxor    [0mBYTE PTR [[34meax[0m],[34mbh[0m
  return r;
  45:	30 2f                	[33mxor    [0mBYTE PTR [[34medi[0m],[34mch[0m
  47:	65 78 61             	[33mgs [0m[33mjs  [0m[35mab[0m <[32m.debug_line_str[0m[35m+0x[0m[35mab[0m>
{
  4a:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  4b:	70 6c                	[33mjo     [0m[35mb9[0m <[32m.debug_line_str[0m[35m+0x[0m[35mb9[0m>
  4d:	65 73 2f             	[33mgs [0m[33mjae [0m[35m7f[0m <[32m.debug_line_str[0m[35m+0x[0m[35m7f[0m>
  50:	63 72 6f             	[33marpl   [0mWORD PTR [[34medx[0m+[35m0x6f[0m],[34msi[0m
  53:	73 73                	[33mjae    [0m[35mc8[0m <[32m.debug_line_str[0m[35m+0x[0m[35mc8[0m>
  55:	2d 63 6f 6d 70       	[33msub    [0m[34meax[0m,[35m0x706d6f63[0m
  5a:	69 6c 69 6e 67 00 63 63 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mecx[0m+[34mebp[0m*[35m2[0m+[35m0x6e[0m],[35m0x63630067[0m
  62:	65 2e 63 00          	[33mgs [0m[33marpl [0mWORD PTR [34mcs[0m:[[34meax[0m],[34max[0m
  66:	2f                   	[33mdas[0m
  double res = 1, tmp = base;
  67:	68 6f 6d 65 2f       	[33mpush   [0m[35m0x2f656d6f[0m
  6c:	64 2f                	[33mfs [0m[33mdas[0m
  6e:	5f                   	[33mpop    [0m[34medi[0m
  6f:	2f                   	[33mdas[0m
  70:	73 61                	[33mjae    [0m[35md3[0m <[32m.debug_line_str[0m[35m+0x[0m[35md3[0m>
  while(pow)
  72:	66 65 5f             	[33mgs [0m[33mpop [0m[34mdi[0m
    if(pow & 1)
  75:	77 66                	[33mja     [0m[35mdd[0m <[32m.debug_line_str[0m[35m+0x[0m[35mdd[0m>
  77:	2f                   	[33mdas[0m
  78:	77 6f                	[33mja     [0m[35me9[0m <[32mmain[0m[35m+0x[0m[35m4c[0m>
  7a:	72 6b                	[33mjb     [0m[35me7[0m <[32mmain[0m[35m+0x[0m[35m4a[0m>
  7c:	2f                   	[33mdas[0m
  7d:	53                   	[33mpush   [0m[34mebx[0m
      res *= tmp;
  7e:	50                   	[33mpush   [0m[34meax[0m
  7f:	62 55 2f             	[33mbound  [0m[34medx[0m,QWORD PTR [[34mebp[0m+[35m0x2f[0m]
  82:	63 6f 75             	[33marpl   [0mWORD PTR [[34medi[0m+[35m0x75[0m],[34mbp[0m
  85:	72 73                	[33mjb     [0m[35mfa[0m <[32mmain[0m[35m+0x[0m[35m5d[0m>
    tmp *= tmp;
  87:	65 73 2f             	[33mgs [0m[33mjae [0m[35mb9[0m <[32m.debug_line_str[0m[35m+0x[0m[35mb9[0m>
  8a:	43                   	[33minc    [0m[34mebx[0m
  8b:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  8c:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  8d:	70 75                	[33mjo     [0m[35m104[0m <[32mmain[0m[35m+0x[0m[35m67[0m>
    pow >>= 1;
  8f:	74 65                	[33mje     [0m[35mf6[0m <[32mmain[0m[35m+0x[0m[35m59[0m>
  91:	72 5f                	[33mjb     [0m[35mf2[0m <[32mmain[0m[35m+0x[0m[35m55[0m>
  while(pow)
  93:	41                   	[33minc    [0m[34mecx[0m
  94:	72 63                	[33mjb     [0m[35mf9[0m <[32mmain[0m[35m+0x[0m[35m5c[0m>
  96:	68 69 74 65 63       	[33mpush   [0m[35m0x63657469[0m
}
  9b:	74 75                	[33mje     [0m[35m112[0m <[32mmain[0m[35m+0x[0m[35m75[0m>
{
  9d:	72 65                	[33mjb     [0m[35m104[0m <[32mmain[0m[35m+0x[0m[35m67[0m>
  9f:	2d 53 50 62 55       	[33msub    [0m[34meax[0m,[35m0x55625053[0m
  a4:	2d 43 42 2e 35       	[33msub    [0m[34meax[0m,[35m0x352e4243[0m
  a9:	30 38                	[33mxor    [0mBYTE PTR [[34meax[0m],[34mbh[0m
  ab:	30 2f                	[33mxor    [0mBYTE PTR [[34medi[0m],[34mch[0m
  ad:	65 78 61             	[33mgs [0m[33mjs  [0m[35m111[0m <[32mmain[0m[35m+0x[0m[35m74[0m>
  b0:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  b1:	70 6c                	[33mjo     [0m[35m11f[0m <[32mmain[0m[35m+0x[0m[35m82[0m>
  b3:	65 73 2f             	[33mgs [0m[33mjae [0m[35me5[0m <[32m.debug_line_str[0m[35m+0x[0m[35me5[0m>
  b6:	63 72 6f             	[33marpl   [0mWORD PTR [[34medx[0m+[35m0x6f[0m],[34msi[0m
  printf("sizeof(int): %d\n", sizeofint());
  b9:	73 73                	[33mjae    [0m[35m12e[0m <[32mmain[0m[35m+0x[0m[35m91[0m>
  bb:	2d 63 6f 6d 70       	[33msub    [0m[34meax[0m,[35m0x706d6f63[0m
  c0:	69 6c 69 6e 67 00 2f 75 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mecx[0m+[34mebp[0m*[35m2[0m+[35m0x6e[0m],[35m0x752f0067[0m
  c8:	73 72                	[33mjae    [0m[35m13c[0m <[32mmain[0m[35m+0x[0m[35m9f[0m>
  ca:	2f                   	[33mdas[0m
  cb:	69 6e 63 6c 75 64 65 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mesi[0m+[35m0x63[0m],[35m0x6564756c[0m
  printf("factorial(6): %d.\n", factorial(6));
  d2:	00 63 63             	[33madd    [0mBYTE PTR [[34mebx[0m+[35m0x63[0m],[34mah[0m
  d5:	65 2e 63 00          	[33mgs [0m[33marpl [0mWORD PTR [34mcs[0m:[[34meax[0m],[34max[0m
  d9:	63 63 65             	[33marpl   [0mWORD PTR [[34mebx[0m+[35m0x65[0m],[34msp[0m
  dc:	2e 63 00             	[33marpl   [0mWORD PTR [34mcs[0m:[[34meax[0m],[34max[0m
  df:	73 74                	[33mjae    [0m[35m155[0m <[32mmain[0m[35m+0x[0m[35mb8[0m>
  e1:	64                   	[33mfs[0m
  e2:	69                   	[33m.byte [0m[35m0x69[0m
  e3:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  e4:	2e                   	[33mcs[0m
  e5:	68                   	[33m.byte [0m[35m0x68[0m
	...

Дизассемблирование раздела .comment:

00000000 <.comment>:
{
   0:	00 47 43             	[33madd    [0mBYTE PTR [[34medi[0m+[35m0x43[0m],[34mal[0m
   3:	43                   	[33minc    [0m[34mebx[0m
   4:	3a 20                	[33mcmp    [0m[34mah[0m,BYTE PTR [[34meax[0m]
   6:	28 47 4e             	[33msub    [0mBYTE PTR [[34medi[0m+[35m0x4e[0m],[34mal[0m
   9:	55                   	[33mpush   [0m[34mebp[0m
   a:	29 20                	[33msub    [0mDWORD PTR [[34meax[0m],[34mesp[0m
   c:	31 33                	[33mxor    [0mDWORD PTR [[34mebx[0m],[34mesi[0m
  return sizeof(int);
   e:	2e 31 2e             	[33mxor    [0mDWORD PTR [34mcs[0m:[[34mesi[0m],[34mebp[0m
  11:	31 20                	[33mxor    [0mDWORD PTR [[34meax[0m],[34mesp[0m
}
  13:	32 30                	[33mxor    [0m[34mdh[0m,BYTE PTR [[34meax[0m]
{
  15:	32 33                	[33mxor    [0m[34mdh[0m,BYTE PTR [[34mebx[0m]
  17:	30 34 32             	[33mxor    [0mBYTE PTR [[34medx[0m+[34mesi[0m*[35m1[0m],[34mdh[0m
  1a:	39 00                	[33mcmp    [0mDWORD PTR [[34meax[0m],[34meax[0m

Дизассемблирование раздела .note.gnu.property:

00000000 <.note.gnu.property>:
   0:	04 00                	[33madd    [0m[34mal[0m,[35m0x0[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	18 00                	[33msbb    [0mBYTE PTR [[34meax[0m],[34mal[0m
   6:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   8:	05 00 00 00 47       	[33madd    [0m[34meax[0m,[35m0x47000000[0m
   d:	4e                   	[33mdec    [0m[34mesi[0m
   e:	55                   	[33mpush   [0m[34mebp[0m
   f:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  11:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  13:	c0 04 00 00          	[33mrol    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m],[35m0x0[0m
  17:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  19:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  1b:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  1d:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  1f:	c0 04 00 00          	[33mrol    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m],[35m0x0[0m
  23:	00 03                	[33madd    [0mBYTE PTR [[34mebx[0m],[34mal[0m
  25:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
	...

Дизассемблирование раздела .eh_frame:

00000000 <.eh_frame>:
   0:	14 00                	[33madc    [0m[34mal[0m,[35m0x0[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   6:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   8:	01 7a 52             	[33madd    [0mDWORD PTR [[34medx[0m+[35m0x52[0m],[34medi[0m
   b:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
   d:	7c 08                	[33mjl     [0m[35m17[0m <[32m.eh_frame[0m[35m+0x[0m[35m17[0m>
   f:	01 1b                	[33madd    [0mDWORD PTR [[34mebx[0m],[34mebx[0m
  11:	0c 04                	[33mor     [0m[34mal[0m,[35m0x4[0m
  13:	04 88                	[33madd    [0m[34mal[0m,[35m0x88[0m
  15:	01 00                	[33madd    [0mDWORD PTR [[34meax[0m],[34meax[0m
  17:	00 1c 00             	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m],[34mbl[0m
  1a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  1c:	1c 00                	[33msbb    [0m[34mal[0m,[35m0x0[0m
  1e:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  20:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  22:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  24:	14 00                	[33madc    [0m[34mal[0m,[35m0x0[0m
  26:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  28:	00 41 0e             	[33madd    [0mBYTE PTR [[34mecx[0m+[35m0xe[0m],[34mal[0m
  2b:	08 85 02 42 0d 05    	[33mor     [0mBYTE PTR [[34mebp[0m+[35m0x50d4202[0m],[34mal[0m
  31:	50                   	[33mpush   [0m[34meax[0m
  32:	c5 0c 04             	[33mlds    [0m[34mecx[0m,FWORD PTR [[34mesp[0m+[34meax[0m*[35m1[0m]
  35:	04 00                	[33madd    [0m[34mal[0m,[35m0x0[0m
  37:	00 1c 00             	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m],[34mbl[0m
  3a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  3c:	3c 00                	[33mcmp    [0m[34mal[0m,[35m0x0[0m
  3e:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  40:	14 00                	[33madc    [0m[34mal[0m,[35m0x0[0m
  42:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  44:	36 00 00             	[33madd    [0mBYTE PTR [34mss[0m:[[34meax[0m],[34mal[0m
  47:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  49:	41                   	[33minc    [0m[34mecx[0m
  4a:	0e                   	[33mpush   [0m[34mcs[0m
  4b:	08 85 02 42 0d 05    	[33mor     [0mBYTE PTR [[34mebp[0m+[35m0x50d4202[0m],[34mal[0m
  51:	72 c5                	[33mjb     [0m[35m18[0m <[32m.eh_frame[0m[35m+0x[0m[35m18[0m>
  53:	0c 04                	[33mor     [0m[34mal[0m,[35m0x4[0m
  55:	04 00                	[33madd    [0m[34mal[0m,[35m0x0[0m
  57:	00 1c 00             	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m],[34mbl[0m
  5a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  5c:	5c                   	[33mpop    [0m[34mesp[0m
  5d:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  5f:	00 4a 00             	[33madd    [0mBYTE PTR [[34medx[0m+[35m0x0[0m],[34mcl[0m
  62:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  64:	53                   	[33mpush   [0m[34mebx[0m
  65:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  67:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  69:	41                   	[33minc    [0m[34mecx[0m
  6a:	0e                   	[33mpush   [0m[34mcs[0m
  6b:	08 85 02 42 0d 05    	[33mor     [0mBYTE PTR [[34mebp[0m+[35m0x50d4202[0m],[34mal[0m
  71:	02 4f c5             	[33madd    [0m[34mcl[0m,BYTE PTR [[34medi[0m[35m-[0m[35m0x3b[0m]
  74:	0c 04                	[33mor     [0m[34mal[0m,[35m0x4[0m
  76:	04 00                	[33madd    [0m[34mal[0m,[35m0x0[0m
  78:	30 00                	[33mxor    [0mBYTE PTR [[34meax[0m],[34mal[0m
  7a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  7c:	7c 00                	[33mjl     [0m[35m7e[0m <[32m.eh_frame[0m[35m+0x[0m[35m7e[0m>
  7e:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  80:	9d                   	[33mpopf[0m
  81:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  83:	00 94 00 00 00 00 44 	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m+[35m0x44000000[0m],[34mdl[0m
  8a:	0c 01                	[33mor     [0m[34mal[0m,[35m0x1[0m
  8c:	00 49 10             	[33madd    [0mBYTE PTR [[34mecx[0m+[35m0x10[0m],[34mcl[0m
  8f:	05 02 75 00 42       	[33madd    [0m[34meax[0m,[35m0x42007502[0m
  94:	0f 03 75 78          	[33mlsl    [0m[34mesi[0m,WORD PTR [[34mebp[0m+[35m0x78[0m]
  98:	06                   	[33mpush   [0m[34mes[0m
  99:	10 03                	[33madc    [0mBYTE PTR [[34mebx[0m],[34mal[0m
  9b:	02 75 7c             	[33madd    [0m[34mdh[0m,BYTE PTR [[34mebp[0m+[35m0x7c[0m]
  9e:	02 7f c1             	[33madd    [0m[34mbh[0m,BYTE PTR [[34medi[0m[35m-[0m[35m0x3f[0m]
  a1:	0c 01                	[33mor     [0m[34mal[0m,[35m0x1[0m
  a3:	00 41 c3             	[33madd    [0mBYTE PTR [[34mecx[0m[35m-[0m[35m0x3d[0m],[34mal[0m
  a6:	41                   	[33minc    [0m[34mecx[0m
  a7:	c5 43 0c             	[33mlds    [0m[34meax[0m,FWORD PTR [[34mebx[0m+[35m0xc[0m]
  aa:	04 04                	[33madd    [0m[34mal[0m,[35m0x4[0m
  ac:	10 00                	[33madc    [0mBYTE PTR [[34meax[0m],[34mal[0m
  ae:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  b0:	b0 00                	[33mmov    [0m[34mal[0m,[35m0x0[0m
  b2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  b4:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  b6:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  b8:	04 00                	[33madd    [0m[34mal[0m,[35m0x0[0m
  ba:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  bc:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  be:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  c0:	10 00                	[33madc    [0mBYTE PTR [[34meax[0m],[34mal[0m
  c2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  c4:	c4 00                	[33mles    [0m[34meax[0m,FWORD PTR [[34meax[0m]
  c6:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  c8:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  ca:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  cc:	04 00                	[33madd    [0m[34mal[0m,[35m0x0[0m
  ce:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  d0:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  d2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  d4:	10 00                	[33madc    [0mBYTE PTR [[34meax[0m],[34mal[0m
  d6:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  d8:	d8 00                	[33mfadd   [0mDWORD PTR [[34meax[0m]
  da:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  dc:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  de:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  e0:	04 00                	[33madd    [0m[34mal[0m,[35m0x0[0m
  e2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  e4:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
	...
