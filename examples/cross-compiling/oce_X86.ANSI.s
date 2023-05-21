
cce_X86.o:     формат файла elf32-i386


Дизассемблирование раздела .group:

00000000 <.group>:
#include <stdio.h>

int sizeofint()
{
   0:	01 00                	[33madd    [0mDWORD PTR [[34meax[0m],[34meax[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	08 00                	[33mor     [0mBYTE PTR [[34meax[0m],[34mal[0m
	...

Дизассемблирование раздела .group:

00000000 <.group>:
   0:	01 00                	[33madd    [0mDWORD PTR [[34meax[0m],[34meax[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	09 00                	[33mor     [0mDWORD PTR [[34meax[0m],[34meax[0m
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

0000004a <main>:

int main()
{
  4a:	8d 4c 24 04          	[33mlea    [0m[34mecx[0m,[[34mesp[0m+[35m0x4[0m]
  4e:	83 e4 f0             	[33mand    [0m[34mesp[0m,[35m0xfffffff0[0m
  51:	ff 71 fc             	[33mpush   [0mDWORD PTR [[34mecx[0m[35m-[0m[35m0x4[0m]
  54:	55                   	[33mpush   [0m[34mebp[0m
  55:	89 e5                	[33mmov    [0m[34mebp[0m,[34mesp[0m
  57:	53                   	[33mpush   [0m[34mebx[0m
  58:	51                   	[33mpush   [0m[34mecx[0m
  59:	e8 fc ff ff ff       	[33mcall   [0m[35m5a[0m <[32mmain[0m[35m+0x[0m[35m10[0m>
  5e:	81 c3 02 00 00 00    	[33madd    [0m[34mebx[0m,[35m0x2[0m
  printf("%d\n", factorial(6));
  64:	6a 06                	[33mpush   [0m[35m0x6[0m
  66:	e8 fc ff ff ff       	[33mcall   [0m[35m67[0m <[32mmain[0m[35m+0x[0m[35m1d[0m>
  6b:	83 c4 04             	[33madd    [0m[34mesp[0m,[35m0x4[0m
  6e:	83 ec 08             	[33msub    [0m[34mesp[0m,[35m0x8[0m
  71:	50                   	[33mpush   [0m[34meax[0m
  72:	8d 83 00 00 00 00    	[33mlea    [0m[34meax[0m,[[34mebx[0m+[35m0x0[0m]
  78:	50                   	[33mpush   [0m[34meax[0m
  79:	e8 fc ff ff ff       	[33mcall   [0m[35m7a[0m <[32mmain[0m[35m+0x[0m[35m30[0m>
  7e:	83 c4 10             	[33madd    [0m[34mesp[0m,[35m0x10[0m
  return 0;
  81:	b8 00 00 00 00       	[33mmov    [0m[34meax[0m,[35m0x0[0m
}
  86:	8d 65 f8             	[33mlea    [0m[34mesp[0m,[[34mebp[0m[35m-[0m[35m0x8[0m]
  89:	59                   	[33mpop    [0m[34mecx[0m
  8a:	5b                   	[33mpop    [0m[34mebx[0m
  8b:	5d                   	[33mpop    [0m[34mebp[0m
  8c:	8d 61 fc             	[33mlea    [0m[34mesp[0m,[[34mecx[0m[35m-[0m[35m0x4[0m]
  8f:	c3                   	[33mret[0m

Дизассемблирование раздела .rodata:

00000000 <.rodata>:
   0:	25                   	[33m.byte [0m[35m0x25[0m
   1:	64 0a 00             	[33mor     [0m[34mal[0m,BYTE PTR [34mfs[0m:[[34meax[0m]

Дизассемблирование раздела .text.__x86.get_pc_thunk.ax:

00000000 <__x86.get_pc_thunk.ax>:
   0:	8b 04 24             	[33mmov    [0m[34meax[0m,DWORD PTR [[34mesp[0m]
   3:	c3                   	[33mret[0m

Дизассемблирование раздела .text.__x86.get_pc_thunk.bx:

00000000 <__x86.get_pc_thunk.bx>:
   0:	8b 1c 24             	[33mmov    [0m[34mebx[0m,DWORD PTR [[34mesp[0m]
   3:	c3                   	[33mret[0m

Дизассемблирование раздела .debug_info:

00000000 <.debug_info>:
{
   0:	f4                   	[33mhlt[0m
   1:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   3:	00 05 00 01 04 00    	[33madd    [0mBYTE PTR [34mds[0m:0x40100,[34mal[0m
   9:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   b:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  return sizeof(int);
   d:	1b 00                	[33msbb    [0m[34meax[0m,DWORD PTR [[34meax[0m]
   f:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  11:	1d 60 00 00 00       	[33msbb    [0m[34meax[0m,[35m0x60[0m
	...
{
  1e:	90                   	[33mnop[0m
  1f:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  21:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  23:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  int r = 1;
  25:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  27:	04 07                	[33madd    [0m[34mal[0m,[35m0x7[0m
  29:	0e                   	[33mpush   [0m[34mcs[0m
  2a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  while(n > 1)
  2c:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
    r *= n--;
  2e:	01 06                	[33madd    [0mDWORD PTR [[34mesi[0m],[34meax[0m
  30:	8b 00                	[33mmov    [0m[34meax[0m,DWORD PTR [[34meax[0m]
  32:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  34:	03 2d 00 00 00 01    	[33madd    [0m[34mebp[0m,DWORD PTR [34mds[0m:0x1000000
  3a:	01 08                	[33madd    [0mDWORD PTR [[34meax[0m],[34mecx[0m
  3c:	90                   	[33mnop[0m
  3d:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  while(n > 1)
  3f:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  41:	02 07                	[33madd    [0m[34mal[0m,BYTE PTR [[34medi[0m]
  43:	b6 00                	[33mmov    [0m[34mdh[0m,[35m0x0[0m
  return r;
  45:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  47:	01 04 07             	[33madd    [0mDWORD PTR [[34medi[0m+[34meax[0m*[35m1[0m],[34meax[0m
{
  4a:	62 00                	[33mbound  [0m[34meax[0m,QWORD PTR [[34meax[0m]
  4c:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  4e:	01 01                	[33madd    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  50:	06                   	[33mpush   [0m[34mes[0m
  51:	da 00                	[33mfiadd  [0mDWORD PTR [[34meax[0m]
  53:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  55:	01 02                	[33madd    [0mDWORD PTR [[34medx[0m],[34meax[0m
  57:	05 d0 00 00 00       	[33madd    [0m[34meax[0m,[35m0xd0[0m
  5c:	04 04                	[33madd    [0m[34mal[0m,[35m0x4[0m
  5e:	05 69 6e 74 00       	[33madd    [0m[34meax[0m,[35m0x746e69[0m
  63:	01 08                	[33madd    [0mDWORD PTR [[34meax[0m],[34mecx[0m
  printf("%d\n", factorial(6));
  65:	05 00 00 00 00       	[33madd    [0m[34meax[0m,[35m0x0[0m
  6a:	01 08                	[33madd    [0mDWORD PTR [[34meax[0m],[34mecx[0m
  6c:	07                   	[33mpop    [0m[34mes[0m
  6d:	74 00                	[33mje     [0m[35m6f[0m <[32m.debug_info[0m[35m+0x[0m[35m6f[0m>
  6f:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  71:	01 04 05 a3 00 00 00 	[33madd    [0mDWORD PTR [[34meax[0m*[35m1[0m+[35m0xa3[0m],[34meax[0m
  78:	05 c9 00 00 00       	[33madd    [0m[34meax[0m,[35m0xc9[0m
  7d:	02 64 01 0c          	[33madd    [0m[34mah[0m,BYTE PTR [[34mecx[0m+[34meax[0m*[35m1[0m+[35m0xc[0m]
  return 0;
  81:	5c                   	[33mpop    [0m[34mesp[0m
  82:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  84:	00 90 00 00 00 06    	[33madd    [0mBYTE PTR [[34meax[0m+[35m0x6000000[0m],[34mdl[0m
}
  8a:	90                   	[33mnop[0m
  8b:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  8d:	00 07                	[33madd    [0mBYTE PTR [[34medi[0m],[34mal[0m
  8f:	00 08                	[33madd    [0mBYTE PTR [[34meax[0m],[34mcl[0m
  91:	04 34                	[33madd    [0m[34mal[0m,[35m0x34[0m
  93:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  95:	00 09                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mcl[0m
  97:	9e                   	[33msahf[0m
  98:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  9a:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  9c:	10 05 5c 00 00 00    	[33madc    [0mBYTE PTR [34mds[0m:0x5c,[34mal[0m
  a2:	4a                   	[33mdec    [0m[34medx[0m
  a3:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  a5:	00 46 00             	[33madd    [0mBYTE PTR [[34mesi[0m+[35m0x0[0m],[34mal[0m
  a8:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  aa:	01 9c 0a ac 00 00 00 	[33madd    [0mDWORD PTR [[34medx[0m+[34mecx[0m*[35m1[0m+[35m0xac[0m],[34mebx[0m
  b1:	01 08                	[33madd    [0mDWORD PTR [[34meax[0m],[34mecx[0m
  b3:	05 5c 00 00 00       	[33madd    [0m[34meax[0m,[35m0x5c[0m
  b8:	14 00                	[33madc    [0m[34mal[0m,[35m0x0[0m
  ba:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  bc:	36 00 00             	[33madd    [0mBYTE PTR [34mss[0m:[[34meax[0m],[34mal[0m
  bf:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  c1:	9c                   	[33mpushf[0m
  c2:	e1 00                	[33mloope  [0m[35mc4[0m <[32m.debug_info[0m[35m+0x[0m[35mc4[0m>
  c4:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  c6:	0b 6e 00             	[33mor     [0m[34mebp[0m,DWORD PTR [[34mesi[0m+[35m0x0[0m]
  c9:	01 08                	[33madd    [0mDWORD PTR [[34meax[0m],[34mecx[0m
  cb:	13 5c 00 00          	[33madc    [0m[34mebx[0m,DWORD PTR [[34meax[0m+[34meax[0m*[35m1[0m+[35m0x0[0m]
  cf:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  d1:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
  d2:	00 0c 72             	[33madd    [0mBYTE PTR [[34medx[0m+[34mesi[0m*[35m2[0m],[34mcl[0m
  d5:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  d7:	0a 07                	[33mor     [0m[34mal[0m,BYTE PTR [[34medi[0m]
  d9:	5c                   	[33mpop    [0m[34mesp[0m
  da:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  dc:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  de:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
  df:	74 00                	[33mje     [0m[35me1[0m <[32m.debug_info[0m[35m+0x[0m[35me1[0m>
  e1:	0d 58 00 00 00       	[33mor     [0m[34meax[0m,[35m0x58[0m
  e6:	01 03                	[33madd    [0mDWORD PTR [[34mebx[0m],[34meax[0m
  e8:	05 5c 00 00 00       	[33madd    [0m[34meax[0m,[35m0x5c[0m
  ed:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  ef:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  f1:	14 00                	[33madc    [0m[34mal[0m,[35m0x0[0m
  f3:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  f5:	01                   	[33m.byte [0m[35m0x1[0m
  f6:	9c                   	[33mpushf[0m
	...

Дизассемблирование раздела .debug_abbrev:

00000000 <.debug_abbrev>:
{
   0:	01 24 00             	[33madd    [0mDWORD PTR [[34meax[0m+[34meax[0m*[35m1[0m],[34mesp[0m
   3:	0b 0b                	[33mor     [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
   5:	3e 0b 03             	[33mor     [0m[34meax[0m,DWORD PTR [34mds[0m:[[34mebx[0m]
   8:	0e                   	[33mpush   [0m[34mcs[0m
   9:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   b:	02 11                	[33madd    [0m[34mdl[0m,BYTE PTR [[34mecx[0m]
  return sizeof(int);
   d:	01 25 0e 13 0b 03    	[33madd    [0mDWORD PTR [34mds[0m:0x30b130e,[34mesp[0m
}
  13:	1f                   	[33mpop    [0m[34mds[0m
{
  14:	1b 1f                	[33msbb    [0m[34mebx[0m,DWORD PTR [[34medi[0m]
  16:	11 01                	[33madc    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  18:	12 06                	[33madc    [0m[34mal[0m,BYTE PTR [[34mesi[0m]
  1a:	10 17                	[33madc    [0mBYTE PTR [[34medi[0m],[34mdl[0m
  1c:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  1e:	03 26                	[33madd    [0m[34mesp[0m,DWORD PTR [[34mesi[0m]
  20:	00 49 13             	[33madd    [0mBYTE PTR [[34mecx[0m+[35m0x13[0m],[34mcl[0m
  23:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  int r = 1;
  25:	04 24                	[33madd    [0m[34mal[0m,[35m0x24[0m
  27:	00 0b                	[33madd    [0mBYTE PTR [[34mebx[0m],[34mcl[0m
  29:	0b 3e                	[33mor     [0m[34medi[0m,DWORD PTR [[34mesi[0m]
  while(n > 1)
  2b:	0b 03                	[33mor     [0m[34meax[0m,DWORD PTR [[34mebx[0m]
    r *= n--;
  2d:	08 00                	[33mor     [0mBYTE PTR [[34meax[0m],[34mal[0m
  2f:	00 05 2e 01 3f 19    	[33madd    [0mBYTE PTR [34mds[0m:0x193f012e,[34mal[0m
  35:	03 0e                	[33madd    [0m[34mecx[0m,DWORD PTR [[34mesi[0m]
  37:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mebx[0m]
  39:	3b 05 39 0b 27 19    	[33mcmp    [0m[34meax[0m,DWORD PTR [34mds[0m:0x19270b39
  while(n > 1)
  3f:	49                   	[33mdec    [0m[34mecx[0m
  40:	13 3c 19             	[33madc    [0m[34medi[0m,DWORD PTR [[34mecx[0m+[34mebx[0m*[35m1[0m]
  43:	01 13                	[33madd    [0mDWORD PTR [[34mebx[0m],[34medx[0m
  return r;
  45:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  47:	06                   	[33mpush   [0m[34mes[0m
}
  48:	05 00 49 13 00       	[33madd    [0m[34meax[0m,[35m0x134900[0m
{
  4d:	00 07                	[33madd    [0mBYTE PTR [[34medi[0m],[34mal[0m
  4f:	18 00                	[33msbb    [0mBYTE PTR [[34meax[0m],[34mal[0m
  51:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  53:	08 0f                	[33mor     [0mBYTE PTR [[34medi[0m],[34mcl[0m
  55:	00 0b                	[33madd    [0mBYTE PTR [[34mebx[0m],[34mcl[0m
  57:	0b 49 13             	[33mor     [0m[34mecx[0m,DWORD PTR [[34mecx[0m+[35m0x13[0m]
  5a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  5c:	09 2e                	[33mor     [0mDWORD PTR [[34mesi[0m],[34mebp[0m
  5e:	00 3f                	[33madd    [0mBYTE PTR [[34medi[0m],[34mbh[0m
  60:	19 03                	[33msbb    [0mDWORD PTR [[34mebx[0m],[34meax[0m
  62:	0e                   	[33mpush   [0m[34mcs[0m
  63:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mebx[0m]
  printf("%d\n", factorial(6));
  65:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  67:	39 0b                	[33mcmp    [0mDWORD PTR [[34mebx[0m],[34mecx[0m
  69:	49                   	[33mdec    [0m[34mecx[0m
  6a:	13 11                	[33madc    [0m[34medx[0m,DWORD PTR [[34mecx[0m]
  6c:	01 12                	[33madd    [0mDWORD PTR [[34medx[0m],[34medx[0m
  6e:	06                   	[33mpush   [0m[34mes[0m
  6f:	40                   	[33minc    [0m[34meax[0m
  70:	18 7c 19 00          	[33msbb    [0mBYTE PTR [[34mecx[0m+[34mebx[0m*[35m1[0m+[35m0x0[0m],[34mbh[0m
  74:	00 0a                	[33madd    [0mBYTE PTR [[34medx[0m],[34mcl[0m
  76:	2e 01 3f             	[33madd    [0mDWORD PTR [34mcs[0m:[[34medi[0m],[34medi[0m
  79:	19 03                	[33msbb    [0mDWORD PTR [[34mebx[0m],[34meax[0m
  7b:	0e                   	[33mpush   [0m[34mcs[0m
  7c:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mebx[0m]
  7e:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  80:	39 0b                	[33mcmp    [0mDWORD PTR [[34mebx[0m],[34mecx[0m
  return 0;
  82:	27                   	[33mdaa[0m
  83:	19 49 13             	[33msbb    [0mDWORD PTR [[34mecx[0m+[35m0x13[0m],[34mecx[0m
}
  86:	11 01                	[33madc    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  88:	12 06                	[33madc    [0m[34mal[0m,BYTE PTR [[34mesi[0m]
  8a:	40                   	[33minc    [0m[34meax[0m
  8b:	18 7a 19             	[33msbb    [0mBYTE PTR [[34medx[0m+[35m0x19[0m],[34mbh[0m
  8e:	01 13                	[33madd    [0mDWORD PTR [[34mebx[0m],[34medx[0m
  90:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  92:	0b 05 00 03 08 3a    	[33mor     [0m[34meax[0m,DWORD PTR [34mds[0m:0x3a080300
  98:	0b 3b                	[33mor     [0m[34medi[0m,DWORD PTR [[34mebx[0m]
  9a:	0b 39                	[33mor     [0m[34medi[0m,DWORD PTR [[34mecx[0m]
  9c:	0b 49 13             	[33mor     [0m[34mecx[0m,DWORD PTR [[34mecx[0m+[35m0x13[0m]
  9f:	02 18                	[33madd    [0m[34mbl[0m,BYTE PTR [[34meax[0m]
  a1:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  a3:	0c 34                	[33mor     [0m[34mal[0m,[35m0x34[0m
  a5:	00 03                	[33madd    [0mBYTE PTR [[34mebx[0m],[34mal[0m
  a7:	08 3a                	[33mor     [0mBYTE PTR [[34medx[0m],[34mbh[0m
  a9:	0b 3b                	[33mor     [0m[34medi[0m,DWORD PTR [[34mebx[0m]
  ab:	0b 39                	[33mor     [0m[34medi[0m,DWORD PTR [[34mecx[0m]
  ad:	0b 49 13             	[33mor     [0m[34mecx[0m,DWORD PTR [[34mecx[0m+[35m0x13[0m]
  b0:	02 18                	[33madd    [0m[34mbl[0m,BYTE PTR [[34meax[0m]
  b2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  b4:	0d 2e 00 3f 19       	[33mor     [0m[34meax[0m,[35m0x193f002e[0m
  b9:	03 0e                	[33madd    [0m[34mecx[0m,DWORD PTR [[34mesi[0m]
  bb:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mebx[0m]
  bd:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  bf:	39 0b                	[33mcmp    [0mDWORD PTR [[34mebx[0m],[34mecx[0m
  c1:	49                   	[33mdec    [0m[34mecx[0m
  c2:	13 11                	[33madc    [0m[34medx[0m,DWORD PTR [[34mecx[0m]
  c4:	01 12                	[33madd    [0mDWORD PTR [[34medx[0m],[34medx[0m
  c6:	06                   	[33mpush   [0m[34mes[0m
  c7:	40                   	[33minc    [0m[34meax[0m
  c8:	18 7a 19             	[33msbb    [0mBYTE PTR [[34medx[0m+[35m0x19[0m],[34mbh[0m
  cb:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
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
  14:	90                   	[33mnop[0m
	...

Дизассемблирование раздела .debug_line:

00000000 <.debug_line>:
{
   0:	79 00                	[33mjns    [0m[35m2[0m <[32m.debug_line[0m[35m+0x[0m[35m2[0m>
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	05 00 04 00 33       	[33madd    [0m[34meax[0m,[35m0x33000400[0m
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
  48:	15 05 0a c9 05       	[33madc    [0m[34meax[0m,[35m0x5c90a05[0m
{
  4d:	01 59 31             	[33madd    [0mDWORD PTR [[34mecx[0m+[35m0x31[0m],[34mebx[0m
  50:	05 07 f3 05 08       	[33madd    [0m[34meax[0m,[35m0x805f307[0m
  55:	75 05                	[33mjne    [0m[35m5c[0m <[32m.debug_line[0m[35m+0x[0m[35m5c[0m>
  57:	0b 2f                	[33mor     [0m[34mebp[0m,DWORD PTR [[34medi[0m]
  59:	05 07 90 05 0b       	[33madd    [0m[34meax[0m,[35m0xb059007[0m
  5e:	8f 05 0a 68 05 01    	[33mpop    [0mDWORD PTR [34mds[0m:0x105680a
  printf("%d\n", factorial(6));
  64:	3d 31 05 03 08       	[33mcmp    [0m[34meax[0m,[35m0x8030531[0m
  69:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
  6a:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  6c:	04 01                	[33madd    [0m[34mal[0m,[35m0x1[0m
  6e:	06                   	[33mpush   [0m[34mes[0m
  6f:	9e                   	[33msahf[0m
  70:	05 0a 06 08 2f       	[33madd    [0m[34meax[0m,[35m0x2f08060a[0m
  75:	05 01 59 02 0a       	[33madd    [0m[34meax[0m,[35m0xa025901[0m
  7a:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  7c:	01                   	[33m.byte [0m[35m0x1[0m

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
  printf("%d\n", factorial(6));
  64:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  65:	67 20 75 6e          	[33mand    [0mBYTE PTR [di+[35m0x6e[0m],[34mdh[0m
  69:	73 69                	[33mjae    [0m[35md4[0m <[32m.debug_str[0m[35m+0x[0m[35md4[0m>
  6b:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
  6d:	65 64 20 69 6e       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mecx[0m+[35m0x6e[0m],[34mch[0m
  72:	74 00                	[33mje     [0m[35m74[0m <[32m.debug_str[0m[35m+0x[0m[35m74[0m>
  74:	6c                   	[33mins    [0mBYTE PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  75:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  76:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  77:	67 20 6c 6f          	[33mand    [0mBYTE PTR [si+[35m0x6f[0m],[34mch[0m
  7b:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  7c:	67 20 75 6e          	[33mand    [0mBYTE PTR [di+[35m0x6e[0m],[34mdh[0m
  80:	73 69                	[33mjae    [0m[35meb[0m <[32mmain[0m[35m+0x[0m[35ma1[0m>
  return 0;
  82:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
  84:	65 64 20 69 6e       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mecx[0m+[35m0x6e[0m],[34mch[0m
}
  89:	74 00                	[33mje     [0m[35m8b[0m <[32m.debug_str[0m[35m+0x[0m[35m8b[0m>
  8b:	63 68 61             	[33marpl   [0mWORD PTR [[34meax[0m+[35m0x61[0m],[34mbp[0m
  8e:	72 00                	[33mjb     [0m[35m90[0m <[32m.debug_str[0m[35m+0x[0m[35m90[0m>
  90:	75 6e                	[33mjne    [0m[35m100[0m <[32mmain[0m[35m+0x[0m[35mb6[0m>
  92:	73 69                	[33mjae    [0m[35mfd[0m <[32mmain[0m[35m+0x[0m[35mb3[0m>
  94:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
  96:	65 64 20 63 68       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mebx[0m+[35m0x68[0m],[34mah[0m
  9b:	61                   	[33mpopa[0m
  9c:	72 00                	[33mjb     [0m[35m9e[0m <[32m.debug_str[0m[35m+0x[0m[35m9e[0m>
  9e:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  9f:	61                   	[33mpopa[0m
  a0:	69 6e 00 6c 6f 6e 67 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mesi[0m+[35m0x0[0m],[35m0x676e6f6c[0m
  a7:	20 69 6e             	[33mand    [0mBYTE PTR [[34mecx[0m+[35m0x6e[0m],[34mch[0m
  aa:	74 00                	[33mje     [0m[35mac[0m <[32m.debug_str[0m[35m+0x[0m[35mac[0m>
  ac:	66 61                	[33mpopaw[0m
  ae:	63 74 6f 72          	[33marpl   [0mWORD PTR [[34medi[0m+[34mebp[0m*[35m2[0m+[35m0x72[0m],[34msi[0m
  b2:	69 61 6c 00 73 68 6f 	[33mimul   [0m[34mesp[0m,DWORD PTR [[34mecx[0m+[35m0x6c[0m],[35m0x6f687300[0m
  b9:	72 74                	[33mjb     [0m[35m12f[0m <[32mmain[0m[35m+0x[0m[35me5[0m>
  bb:	20 75 6e             	[33mand    [0mBYTE PTR [[34mebp[0m+[35m0x6e[0m],[34mdh[0m
  be:	73 69                	[33mjae    [0m[35m129[0m <[32mmain[0m[35m+0x[0m[35mdf[0m>
  c0:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
  c2:	65 64 20 69 6e       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mecx[0m+[35m0x6e[0m],[34mch[0m
  c7:	74 00                	[33mje     [0m[35mc9[0m <[32m.debug_str[0m[35m+0x[0m[35mc9[0m>
  c9:	70 72                	[33mjo     [0m[35m13d[0m <[32mmain[0m[35m+0x[0m[35mf3[0m>
  cb:	69 6e 74 66 00 73 68 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mesi[0m+[35m0x74[0m],[35m0x68730066[0m
  d2:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  d3:	72 74                	[33mjb     [0m[35m149[0m <[32mmain[0m[35m+0x[0m[35mff[0m>
  d5:	20 69 6e             	[33mand    [0mBYTE PTR [[34mecx[0m+[35m0x6e[0m],[34mch[0m
  d8:	74 00                	[33mje     [0m[35mda[0m <[32m.debug_str[0m[35m+0x[0m[35mda[0m>
  da:	73 69                	[33mjae    [0m[35m145[0m <[32mmain[0m[35m+0x[0m[35mfb[0m>
  dc:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34msi[0m]
  de:	65 64 20 63 68       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mebx[0m+[35m0x68[0m],[34mah[0m
  e3:	61                   	[33mpopa[0m
  e4:	72 00                	[33mjb     [0m[35me6[0m <[32mmain[0m[35m+0x[0m[35m9c[0m>

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
  printf("%d\n", factorial(6));
  66:	2f                   	[33mdas[0m
  67:	68 6f 6d 65 2f       	[33mpush   [0m[35m0x2f656d6f[0m
  6c:	64 2f                	[33mfs [0m[33mdas[0m
  6e:	5f                   	[33mpop    [0m[34medi[0m
  6f:	2f                   	[33mdas[0m
  70:	73 61                	[33mjae    [0m[35md3[0m <[32m.debug_line_str[0m[35m+0x[0m[35md3[0m>
  72:	66 65 5f             	[33mgs [0m[33mpop [0m[34mdi[0m
  75:	77 66                	[33mja     [0m[35mdd[0m <[32m.debug_line_str[0m[35m+0x[0m[35mdd[0m>
  77:	2f                   	[33mdas[0m
  78:	77 6f                	[33mja     [0m[35me9[0m <[32mmain[0m[35m+0x[0m[35m9f[0m>
  7a:	72 6b                	[33mjb     [0m[35me7[0m <[32mmain[0m[35m+0x[0m[35m9d[0m>
  7c:	2f                   	[33mdas[0m
  7d:	53                   	[33mpush   [0m[34mebx[0m
  7e:	50                   	[33mpush   [0m[34meax[0m
  7f:	62 55 2f             	[33mbound  [0m[34medx[0m,QWORD PTR [[34mebp[0m+[35m0x2f[0m]
  return 0;
  82:	63 6f 75             	[33marpl   [0mWORD PTR [[34medi[0m+[35m0x75[0m],[34mbp[0m
  85:	72 73                	[33mjb     [0m[35mfa[0m <[32mmain[0m[35m+0x[0m[35mb0[0m>
}
  87:	65 73 2f             	[33mgs [0m[33mjae [0m[35mb9[0m <[32m.debug_line_str[0m[35m+0x[0m[35mb9[0m>
  8a:	43                   	[33minc    [0m[34mebx[0m
  8b:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  8c:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  8d:	70 75                	[33mjo     [0m[35m104[0m <[32mmain[0m[35m+0x[0m[35mba[0m>
  8f:	74 65                	[33mje     [0m[35mf6[0m <[32mmain[0m[35m+0x[0m[35mac[0m>
  91:	72 5f                	[33mjb     [0m[35mf2[0m <[32mmain[0m[35m+0x[0m[35ma8[0m>
  93:	41                   	[33minc    [0m[34mecx[0m
  94:	72 63                	[33mjb     [0m[35mf9[0m <[32mmain[0m[35m+0x[0m[35maf[0m>
  96:	68 69 74 65 63       	[33mpush   [0m[35m0x63657469[0m
  9b:	74 75                	[33mje     [0m[35m112[0m <[32mmain[0m[35m+0x[0m[35mc8[0m>
  9d:	72 65                	[33mjb     [0m[35m104[0m <[32mmain[0m[35m+0x[0m[35mba[0m>
  9f:	2d 53 50 62 55       	[33msub    [0m[34meax[0m,[35m0x55625053[0m
  a4:	2d 43 42 2e 35       	[33msub    [0m[34meax[0m,[35m0x352e4243[0m
  a9:	30 38                	[33mxor    [0mBYTE PTR [[34meax[0m],[34mbh[0m
  ab:	30 2f                	[33mxor    [0mBYTE PTR [[34medi[0m],[34mch[0m
  ad:	65 78 61             	[33mgs [0m[33mjs  [0m[35m111[0m <[32mmain[0m[35m+0x[0m[35mc7[0m>
  b0:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  b1:	70 6c                	[33mjo     [0m[35m11f[0m <[32mmain[0m[35m+0x[0m[35md5[0m>
  b3:	65 73 2f             	[33mgs [0m[33mjae [0m[35me5[0m <[32m.debug_line_str[0m[35m+0x[0m[35me5[0m>
  b6:	63 72 6f             	[33marpl   [0mWORD PTR [[34medx[0m+[35m0x6f[0m],[34msi[0m
  b9:	73 73                	[33mjae    [0m[35m12e[0m <[32mmain[0m[35m+0x[0m[35me4[0m>
  bb:	2d 63 6f 6d 70       	[33msub    [0m[34meax[0m,[35m0x706d6f63[0m
  c0:	69 6c 69 6e 67 00 2f 75 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mecx[0m+[34mebp[0m*[35m2[0m+[35m0x6e[0m],[35m0x752f0067[0m
  c8:	73 72                	[33mjae    [0m[35m13c[0m <[32mmain[0m[35m+0x[0m[35mf2[0m>
  ca:	2f                   	[33mdas[0m
  cb:	69 6e 63 6c 75 64 65 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mesi[0m+[35m0x63[0m],[35m0x6564756c[0m
  d2:	00 63 63             	[33madd    [0mBYTE PTR [[34mebx[0m+[35m0x63[0m],[34mah[0m
  d5:	65 2e 63 00          	[33mgs [0m[33marpl [0mWORD PTR [34mcs[0m:[[34meax[0m],[34max[0m
  d9:	63 63 65             	[33marpl   [0mWORD PTR [[34mebx[0m+[35m0x65[0m],[34msp[0m
  dc:	2e 63 00             	[33marpl   [0mWORD PTR [34mcs[0m:[[34meax[0m],[34max[0m
  df:	73 74                	[33mjae    [0m[35m155[0m <[32mmain[0m[35m+0x[0m[35m10b[0m>
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
  17:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  19:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  1b:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  1d:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  1f:	c0 04 00 00          	[33mrol    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m],[35m0x0[0m
  23:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
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
  57:	00 30                	[33madd    [0mBYTE PTR [[34meax[0m],[34mdh[0m
  59:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  5b:	00 5c 00 00          	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m+[35m0x0[0m],[34mbl[0m
  5f:	00 4a 00             	[33madd    [0mBYTE PTR [[34medx[0m+[35m0x0[0m],[34mcl[0m
  62:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  64:	46                   	[33minc    [0m[34mesi[0m
  65:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  67:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  69:	44                   	[33minc    [0m[34mesp[0m
  6a:	0c 01                	[33mor     [0m[34mal[0m,[35m0x1[0m
  6c:	00 49 10             	[33madd    [0mBYTE PTR [[34mecx[0m+[35m0x10[0m],[34mcl[0m
  6f:	05 02 75 00 42       	[33madd    [0m[34meax[0m,[35m0x42007502[0m
  74:	0f 03 75 78          	[33mlsl    [0m[34mesi[0m,WORD PTR [[34mebp[0m+[35m0x78[0m]
  78:	06                   	[33mpush   [0m[34mes[0m
  79:	10 03                	[33madc    [0mBYTE PTR [[34mebx[0m],[34mal[0m
  7b:	02 75 7c             	[33madd    [0m[34mdh[0m,BYTE PTR [[34mebp[0m+[35m0x7c[0m]
  7e:	71 c1                	[33mjno    [0m[35m41[0m <[32m.eh_frame[0m[35m+0x[0m[35m41[0m>
  80:	0c 01                	[33mor     [0m[34mal[0m,[35m0x1[0m
  82:	00 41 c3             	[33madd    [0mBYTE PTR [[34mecx[0m[35m-[0m[35m0x3d[0m],[34mal[0m
  85:	41                   	[33minc    [0m[34mecx[0m
  86:	c5 43 0c             	[33mlds    [0m[34meax[0m,FWORD PTR [[34mebx[0m+[35m0xc[0m]
  89:	04 04                	[33madd    [0m[34mal[0m,[35m0x4[0m
  8b:	00 10                	[33madd    [0mBYTE PTR [[34meax[0m],[34mdl[0m
  8d:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  8f:	00 90 00 00 00 00    	[33madd    [0mBYTE PTR [[34meax[0m+[35m0x0[0m],[34mdl[0m
  95:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  97:	00 04 00             	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m],[34mal[0m
  9a:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  9c:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  9e:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  a0:	10 00                	[33madc    [0mBYTE PTR [[34meax[0m],[34mal[0m
  a2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  a4:	a4                   	[33mmovs   [0mBYTE PTR [34mes[0m:[[34medi[0m],BYTE PTR [34mds[0m:[[34mesi[0m]
  a5:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  a7:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  a9:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  ab:	00 04 00             	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m],[34mal[0m
  ae:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  b0:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
	...
