
cce_X86.o:     формат файла elf32-i386


Дизассемблирование раздела .group:

00000000 <.group>:
// #include <stdio.h>

int sizeofint()
{
   0:	01 00                	[33madd    [0mDWORD PTR [[34meax[0m],[34meax[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	06                   	[33mpush   [0m[34mes[0m
   5:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
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

Дизассемблирование раздела .text.__x86.get_pc_thunk.ax:

00000000 <__x86.get_pc_thunk.ax>:
   0:	8b 04 24             	[33mmov    [0m[34meax[0m,DWORD PTR [[34mesp[0m]
   3:	c3                   	[33mret[0m

Дизассемблирование раздела .debug_info:

00000000 <.debug_info>:
{
   0:	75 00                	[33mjne    [0m[35m2[0m <[32m.debug_info[0m[35m+0x[0m[35m2[0m>
   2:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   4:	05 00 01 04 00       	[33madd    [0m[34meax[0m,[35m0x40100[0m
   9:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   b:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  return sizeof(int);
   d:	0a 00                	[33mor     [0m[34mal[0m,BYTE PTR [[34meax[0m]
   f:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  11:	1d 60 00 00 00       	[33msbb    [0m[34meax[0m,[35m0x60[0m
	...
{
  1e:	4a                   	[33mdec    [0m[34medx[0m
  1f:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  21:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  23:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  int r = 1;
  25:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  27:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  29:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  while(n > 1)
  2b:	01 08                	[33madd    [0mDWORD PTR [[34meax[0m],[34mecx[0m
    r *= n--;
  2d:	05 5b 00 00 00       	[33madd    [0m[34meax[0m,[35m0x5b[0m
  32:	14 00                	[33madc    [0m[34mal[0m,[35m0x0[0m
  34:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  36:	36 00 00             	[33madd    [0mBYTE PTR [34mss[0m:[[34meax[0m],[34mal[0m
  39:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  3b:	9c                   	[33mpushf[0m
  3c:	5b                   	[33mpop    [0m[34mebx[0m
  3d:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  while(n > 1)
  3f:	00 03                	[33madd    [0mBYTE PTR [[34mebx[0m],[34mal[0m
  41:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  42:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  44:	08 13                	[33mor     [0mBYTE PTR [[34mebx[0m],[34mdl[0m
  return r;
  46:	5b                   	[33mpop    [0m[34mebx[0m
  47:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
}
  49:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  4b:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
  4c:	00 04 72             	[33madd    [0mBYTE PTR [[34medx[0m+[34mesi[0m*[35m2[0m],[34mal[0m
  4f:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  51:	0a 07                	[33mor     [0m[34mal[0m,BYTE PTR [[34medi[0m]
  53:	5b                   	[33mpop    [0m[34mebx[0m
  54:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  56:	00 02                	[33madd    [0mBYTE PTR [[34medx[0m],[34mal[0m
  58:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
  59:	74 00                	[33mje     [0m[35m5b[0m <[32m.debug_info[0m[35m+0x[0m[35m5b[0m>
  5b:	05 04 05 69 6e       	[33madd    [0m[34meax[0m,[35m0x6e690504[0m
  60:	74 00                	[33mje     [0m[35m62[0m <[32m.debug_info[0m[35m+0x[0m[35m62[0m>
  62:	06                   	[33mpush   [0m[34mes[0m
  63:	47                   	[33minc    [0m[34medi[0m
  64:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  66:	00 01                	[33madd    [0mBYTE PTR [[34mecx[0m],[34mal[0m
  68:	03 05 5b 00 00 00    	[33madd    [0m[34meax[0m,DWORD PTR [34mds[0m:0x5b
  6e:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  70:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  72:	14 00                	[33madc    [0m[34mal[0m,[35m0x0[0m
  74:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  76:	01                   	[33m.byte [0m[35m0x1[0m
  77:	9c                   	[33mpushf[0m
	...

Дизассемблирование раздела .debug_abbrev:

00000000 <.debug_abbrev>:
{
   0:	01 11                	[33madd    [0mDWORD PTR [[34mecx[0m],[34medx[0m
   2:	01 25 0e 13 0b 03    	[33madd    [0mDWORD PTR [34mds[0m:0x30b130e,[34mesp[0m
   8:	1f                   	[33mpop    [0m[34mds[0m
   9:	1b 1f                	[33msbb    [0m[34mebx[0m,DWORD PTR [[34medi[0m]
   b:	11 01                	[33madc    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  return sizeof(int);
   d:	12 06                	[33madc    [0m[34mal[0m,BYTE PTR [[34mesi[0m]
   f:	10 17                	[33madc    [0mBYTE PTR [[34medi[0m],[34mdl[0m
  11:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
}
  13:	02 2e                	[33madd    [0m[34mch[0m,BYTE PTR [[34mesi[0m]
{
  15:	01 3f                	[33madd    [0mDWORD PTR [[34medi[0m],[34medi[0m
  17:	19 03                	[33msbb    [0mDWORD PTR [[34mebx[0m],[34meax[0m
  19:	0e                   	[33mpush   [0m[34mcs[0m
  1a:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mebx[0m]
  1c:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  1e:	39 0b                	[33mcmp    [0mDWORD PTR [[34mebx[0m],[34mecx[0m
  20:	27                   	[33mdaa[0m
  21:	19 49 13             	[33msbb    [0mDWORD PTR [[34mecx[0m+[35m0x13[0m],[34mecx[0m
  int r = 1;
  24:	11 01                	[33madc    [0mDWORD PTR [[34mecx[0m],[34meax[0m
  26:	12 06                	[33madc    [0m[34mal[0m,BYTE PTR [[34mesi[0m]
  28:	40                   	[33minc    [0m[34meax[0m
  29:	18 7a 19             	[33msbb    [0mBYTE PTR [[34medx[0m+[35m0x19[0m],[34mbh[0m
  while(n > 1)
  2c:	01 13                	[33madd    [0mDWORD PTR [[34mebx[0m],[34medx[0m
    r *= n--;
  2e:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  30:	03 05 00 03 08 3a    	[33madd    [0m[34meax[0m,DWORD PTR [34mds[0m:0x3a080300
  36:	0b 3b                	[33mor     [0m[34medi[0m,DWORD PTR [[34mebx[0m]
  38:	0b 39                	[33mor     [0m[34medi[0m,DWORD PTR [[34mecx[0m]
  3a:	0b 49 13             	[33mor     [0m[34mecx[0m,DWORD PTR [[34mecx[0m+[35m0x13[0m]
  3d:	02 18                	[33madd    [0m[34mbl[0m,BYTE PTR [[34meax[0m]
  while(n > 1)
  3f:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  41:	04 34                	[33madd    [0m[34mal[0m,[35m0x34[0m
  43:	00 03                	[33madd    [0mBYTE PTR [[34mebx[0m],[34mal[0m
  return r;
  45:	08 3a                	[33mor     [0mBYTE PTR [[34medx[0m],[34mbh[0m
  47:	0b 3b                	[33mor     [0m[34medi[0m,DWORD PTR [[34mebx[0m]
}
  49:	0b 39                	[33mor     [0m[34medi[0m,DWORD PTR [[34mecx[0m]
  4b:	0b 49 13             	[33mor     [0m[34mecx[0m,DWORD PTR [[34mecx[0m+[35m0x13[0m]
  4e:	02 18                	[33madd    [0m[34mbl[0m,BYTE PTR [[34meax[0m]
  50:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  52:	05 24 00 0b 0b       	[33madd    [0m[34meax[0m,[35m0xb0b0024[0m
  57:	3e 0b 03             	[33mor     [0m[34meax[0m,DWORD PTR [34mds[0m:[[34mebx[0m]
  5a:	08 00                	[33mor     [0mBYTE PTR [[34meax[0m],[34mal[0m
  5c:	00 06                	[33madd    [0mBYTE PTR [[34mesi[0m],[34mal[0m
  5e:	2e 00 3f             	[33madd    [0mBYTE PTR [34mcs[0m:[[34medi[0m],[34mbh[0m
  61:	19 03                	[33msbb    [0mDWORD PTR [[34mebx[0m],[34meax[0m
  63:	0e                   	[33mpush   [0m[34mcs[0m
  64:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mebx[0m]
  66:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mebx[0m]
  68:	39 0b                	[33mcmp    [0mDWORD PTR [[34mebx[0m],[34mecx[0m
  6a:	49                   	[33mdec    [0m[34mecx[0m
  6b:	13 11                	[33madc    [0m[34medx[0m,DWORD PTR [[34mecx[0m]
  6d:	01 12                	[33madd    [0mDWORD PTR [[34medx[0m],[34medx[0m
  6f:	06                   	[33mpush   [0m[34mes[0m
  70:	40                   	[33minc    [0m[34meax[0m
  71:	18 7a 19             	[33msbb    [0mBYTE PTR [[34medx[0m+[35m0x19[0m],[34mbh[0m
  74:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
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
  14:	4a                   	[33mdec    [0m[34medx[0m
	...

Дизассемблирование раздела .debug_line:

00000000 <.debug_line>:
{
   0:	5d                   	[33mpop    [0m[34mebp[0m
   1:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
   3:	00 05 00 04 00 2a    	[33madd    [0mBYTE PTR [34mds[0m:0x2a000400,[34mal[0m
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
  21:	01 66 00             	[33madd    [0mDWORD PTR [[34mesi[0m+[35m0x0[0m],[34mesp[0m
  int r = 1;
  24:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  26:	02 01                	[33madd    [0m[34mal[0m,BYTE PTR [[34mecx[0m]
  28:	1f                   	[33mpop    [0m[34mds[0m
  29:	02 0f                	[33madd    [0m[34mcl[0m,BYTE PTR [[34medi[0m]
  while(n > 1)
  2b:	02 c6                	[33madd    [0m[34mal[0m,[34mdh[0m
    r *= n--;
  2d:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  2f:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  31:	cc                   	[33mint3[0m
  32:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  34:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  36:	05 01 00 05 02       	[33madd    [0m[34meax[0m,[35m0x2050001[0m
  3b:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  3d:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  while(n > 1)
  3f:	15 05 0a c9 05       	[33madc    [0m[34meax[0m,[35m0x5c90a05[0m
  44:	01 59 31             	[33madd    [0mDWORD PTR [[34mecx[0m+[35m0x31[0m],[34mebx[0m
  return r;
  47:	05 07 f3 05 08       	[33madd    [0m[34meax[0m,[35m0x805f307[0m
  4c:	75 05                	[33mjne    [0m[35m53[0m <[32m.debug_line[0m[35m+0x[0m[35m53[0m>
  4e:	0b 2f                	[33mor     [0m[34mebp[0m,DWORD PTR [[34medi[0m]
  50:	05 07 90 05 0b       	[33madd    [0m[34meax[0m,[35m0xb059007[0m
  55:	8f 05 0a 68 05 01    	[33mpop    [0mDWORD PTR [34mds[0m:0x105680a
  5b:	3d 02 02 00 01       	[33mcmp    [0m[34meax[0m,[35m0x1000202[0m
  60:	01                   	[33m.byte [0m[35m0x1[0m

Дизассемблирование раздела .debug_str:

00000000 <.debug_str>:
{
   0:	66 61                	[33mpopaw[0m
   2:	63 74 6f 72          	[33marpl   [0mWORD PTR [[34medi[0m+[34mebp[0m*[35m2[0m+[35m0x72[0m],[34msi[0m
   6:	69 61 6c 00 47 4e 55 	[33mimul   [0m[34mesp[0m,DWORD PTR [[34mecx[0m+[35m0x6c[0m],[35m0x554e4700[0m
  return sizeof(int);
   d:	20 43 31             	[33mand    [0mBYTE PTR [[34mebx[0m+[35m0x31[0m],[34mal[0m
  10:	37                   	[33maaa[0m
  11:	20 31                	[33mand    [0mBYTE PTR [[34mecx[0m],[34mdh[0m
}
  13:	33 2e                	[33mxor    [0m[34mebp[0m,DWORD PTR [[34mesi[0m]
{
  15:	31 2e                	[33mxor    [0mDWORD PTR [[34mesi[0m],[34mebp[0m
  17:	31 20                	[33mxor    [0mDWORD PTR [[34meax[0m],[34mesp[0m
  19:	32 30                	[33mxor    [0m[34mdh[0m,BYTE PTR [[34meax[0m]
  1b:	32 33                	[33mxor    [0m[34mdh[0m,BYTE PTR [[34mebx[0m]
  1d:	30 34 32             	[33mxor    [0mBYTE PTR [[34medx[0m+[34mesi[0m*[35m1[0m],[34mdh[0m
  20:	39 20                	[33mcmp    [0mDWORD PTR [[34meax[0m],[34mesp[0m
  22:	2d 6d 33 32 20       	[33msub    [0m[34meax[0m,[35m0x2032336d[0m
  int r = 1;
  27:	2d 6d 74 75 6e       	[33msub    [0m[34meax[0m,[35m0x6e75746d[0m
  while(n > 1)
  2c:	65 3d 67 65 6e 65    	[33mgs [0m[33mcmp [0m[34meax[0m,[35m0x656e6567[0m
    r *= n--;
  32:	72 69                	[33mjb     [0m[35m9d[0m <[32mfactorial[0m[35m+0x[0m[35m89[0m>
  34:	63 20                	[33marpl   [0mWORD PTR [[34meax[0m],[34msp[0m
  36:	2d 6d 61 72 63       	[33msub    [0m[34meax[0m,[35m0x6372616d[0m
  3b:	68 3d 78 38 36       	[33mpush   [0m[35m0x3638783d[0m
  while(n > 1)
  40:	2d 36 34 20 2d       	[33msub    [0m[34meax[0m,[35m0x2d203436[0m
  return r;
  45:	67 00 73 69          	[33madd    [0mBYTE PTR [bp+di+[35m0x69[0m],[34mdh[0m
}
  49:	7a 65                	[33mjp     [0m[35mb0[0m <[32mfactorial[0m[35m+0x[0m[35m9c[0m>
  4b:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  4c:	66                   	[33mdata16[0m
  4d:	69                   	[33m.byte [0m[35m0x69[0m
  4e:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  4f:	74 00                	[33mje     [0m[35m51[0m <[32mfactorial[0m[35m+0x[0m[35m3d[0m>

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
  4a:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  4b:	70 6c                	[33mjo     [0m[35mb9[0m <[32m.debug_line_str[0m[35m+0x[0m[35mb9[0m>
  4d:	65 73 2f             	[33mgs [0m[33mjae [0m[35m7f[0m <[32m.debug_line_str[0m[35m+0x[0m[35m7f[0m>
  50:	63 72 6f             	[33marpl   [0mWORD PTR [[34medx[0m+[35m0x6f[0m],[34msi[0m
  53:	73 73                	[33mjae    [0m[35mc8[0m <[32m.debug_line_str[0m[35m+0x[0m[35mc8[0m>
  55:	2d 63 6f 6d 70       	[33msub    [0m[34meax[0m,[35m0x706d6f63[0m
  5a:	69 6c 69 6e 67 00 63 63 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mecx[0m+[34mebp[0m*[35m2[0m+[35m0x6e[0m],[35m0x63630067[0m
  62:	65 2e 63 00          	[33mgs [0m[33marpl [0mWORD PTR [34mcs[0m:[[34meax[0m],[34max[0m
  66:	2f                   	[33mdas[0m
  67:	68 6f 6d 65 2f       	[33mpush   [0m[35m0x2f656d6f[0m
  6c:	64 2f                	[33mfs [0m[33mdas[0m
  6e:	5f                   	[33mpop    [0m[34medi[0m
  6f:	2f                   	[33mdas[0m
  70:	73 61                	[33mjae    [0m[35md3[0m <[32mfactorial[0m[35m+0x[0m[35mbf[0m>
  72:	66 65 5f             	[33mgs [0m[33mpop [0m[34mdi[0m
  75:	77 66                	[33mja     [0m[35mdd[0m <[32mfactorial[0m[35m+0x[0m[35mc9[0m>
  77:	2f                   	[33mdas[0m
  78:	77 6f                	[33mja     [0m[35me9[0m <[32mfactorial[0m[35m+0x[0m[35md5[0m>
  7a:	72 6b                	[33mjb     [0m[35me7[0m <[32mfactorial[0m[35m+0x[0m[35md3[0m>
  7c:	2f                   	[33mdas[0m
  7d:	53                   	[33mpush   [0m[34mebx[0m
  7e:	50                   	[33mpush   [0m[34meax[0m
  7f:	62 55 2f             	[33mbound  [0m[34medx[0m,QWORD PTR [[34mebp[0m+[35m0x2f[0m]
  82:	63 6f 75             	[33marpl   [0mWORD PTR [[34medi[0m+[35m0x75[0m],[34mbp[0m
  85:	72 73                	[33mjb     [0m[35mfa[0m <[32mfactorial[0m[35m+0x[0m[35me6[0m>
  87:	65 73 2f             	[33mgs [0m[33mjae [0m[35mb9[0m <[32m.debug_line_str[0m[35m+0x[0m[35mb9[0m>
  8a:	43                   	[33minc    [0m[34mebx[0m
  8b:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mesi[0m]
  8c:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  8d:	70 75                	[33mjo     [0m[35m104[0m <[32mfactorial[0m[35m+0x[0m[35mf0[0m>
  8f:	74 65                	[33mje     [0m[35mf6[0m <[32mfactorial[0m[35m+0x[0m[35me2[0m>
  91:	72 5f                	[33mjb     [0m[35mf2[0m <[32mfactorial[0m[35m+0x[0m[35mde[0m>
  93:	41                   	[33minc    [0m[34mecx[0m
  94:	72 63                	[33mjb     [0m[35mf9[0m <[32mfactorial[0m[35m+0x[0m[35me5[0m>
  96:	68 69 74 65 63       	[33mpush   [0m[35m0x63657469[0m
  9b:	74 75                	[33mje     [0m[35m112[0m <[32mfactorial[0m[35m+0x[0m[35mfe[0m>
  9d:	72 65                	[33mjb     [0m[35m104[0m <[32mfactorial[0m[35m+0x[0m[35mf0[0m>
  9f:	2d 53 50 62 55       	[33msub    [0m[34meax[0m,[35m0x55625053[0m
  a4:	2d 43 42 2e 35       	[33msub    [0m[34meax[0m,[35m0x352e4243[0m
  a9:	30 38                	[33mxor    [0mBYTE PTR [[34meax[0m],[34mbh[0m
  ab:	30 2f                	[33mxor    [0mBYTE PTR [[34medi[0m],[34mch[0m
  ad:	65 78 61             	[33mgs [0m[33mjs  [0m[35m111[0m <[32mfactorial[0m[35m+0x[0m[35mfd[0m>
  b0:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34medi[0m],[34mdx[0m
  b1:	70 6c                	[33mjo     [0m[35m11f[0m <[32mfactorial[0m[35m+0x[0m[35m10b[0m>
  b3:	65 73 2f             	[33mgs [0m[33mjae [0m[35me5[0m <[32mfactorial[0m[35m+0x[0m[35md1[0m>
  b6:	63 72 6f             	[33marpl   [0mWORD PTR [[34medx[0m+[35m0x6f[0m],[34msi[0m
  b9:	73 73                	[33mjae    [0m[35m12e[0m <[32mfactorial[0m[35m+0x[0m[35m11a[0m>
  bb:	2d 63 6f 6d 70       	[33msub    [0m[34meax[0m,[35m0x706d6f63[0m
  c0:	69 6c 69 6e 67 00 63 63 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mecx[0m+[34mebp[0m*[35m2[0m+[35m0x6e[0m],[35m0x63630067[0m
  c8:	65 2e 63 00          	[33mgs [0m[33marpl [0mWORD PTR [34mcs[0m:[[34meax[0m],[34max[0m
  cc:	63 63 65             	[33marpl   [0mWORD PTR [[34mebx[0m+[35m0x65[0m],[34msp[0m
  cf:	2e 63 00             	[33marpl   [0mWORD PTR [34mcs[0m:[[34meax[0m],[34max[0m

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
  57:	00 10                	[33madd    [0mBYTE PTR [[34meax[0m],[34mdl[0m
  59:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  5b:	00 5c 00 00          	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m+[35m0x0[0m],[34mbl[0m
  5f:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  61:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  63:	00 04 00             	[33madd    [0mBYTE PTR [[34meax[0m+[34meax[0m*[35m1[0m],[34mal[0m
  66:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
  68:	00 00                	[33madd    [0mBYTE PTR [[34meax[0m],[34mal[0m
	...
