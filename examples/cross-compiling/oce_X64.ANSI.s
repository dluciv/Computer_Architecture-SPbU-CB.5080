
cce_X64.o:     формат файла elf64-x86-64


Дизассемблирование раздела .text:

0000000000000000 <sizeofint>:
#include <stdio.h>
#define DOUBLE_PI 3.14159265358979323846

int sizeofint()
{
   0:	55                   	[33mpush   [0m[34mrbp[0m
   1:	48 89 e5             	[33mmov    [0m[34mrbp[0m,[34mrsp[0m
  return sizeof(int);
   4:	b8 04 00 00 00       	[33mmov    [0m[34meax[0m,[35m0x4[0m
}
   9:	5d                   	[33mpop    [0m[34mrbp[0m
   a:	c3                   	[33mret[0m

000000000000000b <factorial>:

int factorial(int n)
{
   b:	55                   	[33mpush   [0m[34mrbp[0m
   c:	48 89 e5             	[33mmov    [0m[34mrbp[0m,[34mrsp[0m
   f:	89 7d ec             	[33mmov    [0mDWORD PTR [[34mrbp[0m[35m-[0m[35m0x14[0m],[34medi[0m
  int r = 1;
  12:	c7 45 fc 01 00 00 00 	[33mmov    [0mDWORD PTR [[34mrbp[0m[35m-[0m[35m0x4[0m],[35m0x1[0m
  while(n > 1)
  19:	eb 12                	[33mjmp    [0m[35m2d[0m <[32mfactorial[0m[35m+0x[0m[35m22[0m>
    r *= n--;
  1b:	8b 45 ec             	[33mmov    [0m[34meax[0m,DWORD PTR [[34mrbp[0m[35m-[0m[35m0x14[0m]
  1e:	8d 50 ff             	[33mlea    [0m[34medx[0m,[[34mrax[0m[35m-[0m[35m0x1[0m]
  21:	89 55 ec             	[33mmov    [0mDWORD PTR [[34mrbp[0m[35m-[0m[35m0x14[0m],[34medx[0m
  24:	8b 55 fc             	[33mmov    [0m[34medx[0m,DWORD PTR [[34mrbp[0m[35m-[0m[35m0x4[0m]
  27:	0f af c2             	[33mimul   [0m[34meax[0m,[34medx[0m
  2a:	89 45 fc             	[33mmov    [0mDWORD PTR [[34mrbp[0m[35m-[0m[35m0x4[0m],[34meax[0m
  while(n > 1)
  2d:	83 7d ec 01          	[33mcmp    [0mDWORD PTR [[34mrbp[0m[35m-[0m[35m0x14[0m],[35m0x1[0m
  31:	7f e8                	[33mjg     [0m[35m1b[0m <[32mfactorial[0m[35m+0x[0m[35m10[0m>
  return r;
  33:	8b 45 fc             	[33mmov    [0m[34meax[0m,DWORD PTR [[34mrbp[0m[35m-[0m[35m0x4[0m]
}
  36:	5d                   	[33mpop    [0m[34mrbp[0m
  37:	c3                   	[33mret[0m

0000000000000038 <ipow>:

double ipow(int pow, double base)
{
  38:	55                   	[33mpush   [0m[34mrbp[0m
  39:	48 89 e5             	[33mmov    [0m[34mrbp[0m,[34mrsp[0m
  3c:	89 7d ec             	[33mmov    [0mDWORD PTR [[34mrbp[0m[35m-[0m[35m0x14[0m],[34medi[0m
  3f:	f2 0f 11 45 e0       	[33mmovsd  [0mQWORD PTR [[34mrbp[0m[35m-[0m[35m0x20[0m],[34mxmm0[0m
  double res = 1, tmp = base;
  44:	f2 0f 10 05 00 00 00 00 	[33mmovsd  [0m[34mxmm0[0m,QWORD PTR [[34mrip[0m+[35m0x0[0m]        # 4c <ipow+0x14>
  4c:	f2 0f 11 45 f0       	[33mmovsd  [0mQWORD PTR [[34mrbp[0m[35m-[0m[35m0x10[0m],[34mxmm0[0m
  51:	f2 0f 10 45 e0       	[33mmovsd  [0m[34mxmm0[0m,QWORD PTR [[34mrbp[0m[35m-[0m[35m0x20[0m]
  56:	f2 0f 11 45 f8       	[33mmovsd  [0mQWORD PTR [[34mrbp[0m[35m-[0m[35m0x8[0m],[34mxmm0[0m
  while(pow)
  5b:	eb 2a                	[33mjmp    [0m[35m87[0m <[32mipow[0m[35m+0x[0m[35m4f[0m>
  {
    if(pow & 1)
  5d:	8b 45 ec             	[33mmov    [0m[34meax[0m,DWORD PTR [[34mrbp[0m[35m-[0m[35m0x14[0m]
  60:	83 e0 01             	[33mand    [0m[34meax[0m,[35m0x1[0m
  63:	85 c0                	[33mtest   [0m[34meax[0m,[34meax[0m
  65:	74 0f                	[33mje     [0m[35m76[0m <[32mipow[0m[35m+0x[0m[35m3e[0m>
      res *= tmp;
  67:	f2 0f 10 45 f0       	[33mmovsd  [0m[34mxmm0[0m,QWORD PTR [[34mrbp[0m[35m-[0m[35m0x10[0m]
  6c:	f2 0f 59 45 f8       	[33mmulsd  [0m[34mxmm0[0m,QWORD PTR [[34mrbp[0m[35m-[0m[35m0x8[0m]
  71:	f2 0f 11 45 f0       	[33mmovsd  [0mQWORD PTR [[34mrbp[0m[35m-[0m[35m0x10[0m],[34mxmm0[0m
    tmp *= tmp;
  76:	f2 0f 10 45 f8       	[33mmovsd  [0m[34mxmm0[0m,QWORD PTR [[34mrbp[0m[35m-[0m[35m0x8[0m]
  7b:	f2 0f 59 c0          	[33mmulsd  [0m[34mxmm0[0m,[34mxmm0[0m
  7f:	f2 0f 11 45 f8       	[33mmovsd  [0mQWORD PTR [[34mrbp[0m[35m-[0m[35m0x8[0m],[34mxmm0[0m
    pow >>= 1;
  84:	d1 7d ec             	[33msar    [0mDWORD PTR [[34mrbp[0m[35m-[0m[35m0x14[0m],1
  while(pow)
  87:	83 7d ec 00          	[33mcmp    [0mDWORD PTR [[34mrbp[0m[35m-[0m[35m0x14[0m],[35m0x0[0m
  8b:	75 d0                	[33mjne    [0m[35m5d[0m <[32mipow[0m[35m+0x[0m[35m25[0m>
  }
  return res;
  8d:	f2 0f 10 45 f0       	[33mmovsd  [0m[34mxmm0[0m,QWORD PTR [[34mrbp[0m[35m-[0m[35m0x10[0m]
  92:	66 48 0f 7e c0       	[33mmovq   [0m[34mrax[0m,[34mxmm0[0m
}
  97:	66 48 0f 6e c0       	[33mmovq   [0m[34mxmm0[0m,[34mrax[0m
  9c:	5d                   	[33mpop    [0m[34mrbp[0m
  9d:	c3                   	[33mret[0m

000000000000009e <main>:

int main()
{
  9e:	55                   	[33mpush   [0m[34mrbp[0m
  9f:	48 89 e5             	[33mmov    [0m[34mrbp[0m,[34mrsp[0m
  printf("sizeof(int): %d\n", sizeofint());
  a2:	b8 00 00 00 00       	[33mmov    [0m[34meax[0m,[35m0x0[0m
  a7:	e8 00 00 00 00       	[33mcall   [0m[35mac[0m <[32mmain[0m[35m+0x[0m[35me[0m>
  ac:	89 c6                	[33mmov    [0m[34mesi[0m,[34meax[0m
  ae:	48 8d 05 00 00 00 00 	[33mlea    [0m[34mrax[0m,[[34mrip[0m+[35m0x0[0m]        # b5 <main+0x17>
  b5:	48 89 c7             	[33mmov    [0m[34mrdi[0m,[34mrax[0m
  b8:	b8 00 00 00 00       	[33mmov    [0m[34meax[0m,[35m0x0[0m
  bd:	e8 00 00 00 00       	[33mcall   [0m[35mc2[0m <[32mmain[0m[35m+0x[0m[35m24[0m>
  printf("factorial(6): %d.\n", factorial(6));
  c2:	bf 06 00 00 00       	[33mmov    [0m[34medi[0m,[35m0x6[0m
  c7:	e8 00 00 00 00       	[33mcall   [0m[35mcc[0m <[32mmain[0m[35m+0x[0m[35m2e[0m>
  cc:	89 c6                	[33mmov    [0m[34mesi[0m,[34meax[0m
  ce:	48 8d 05 00 00 00 00 	[33mlea    [0m[34mrax[0m,[[34mrip[0m+[35m0x0[0m]        # d5 <main+0x37>
  d5:	48 89 c7             	[33mmov    [0m[34mrdi[0m,[34mrax[0m
  d8:	b8 00 00 00 00       	[33mmov    [0m[34meax[0m,[35m0x0[0m
  dd:	e8 00 00 00 00       	[33mcall   [0m[35me2[0m <[32mmain[0m[35m+0x[0m[35m44[0m>
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  e2:	48 8b 05 00 00 00 00 	[33mmov    [0m[34mrax[0m,QWORD PTR [[34mrip[0m+[35m0x0[0m]        # e9 <main+0x4b>
  e9:	66 48 0f 6e c0       	[33mmovq   [0m[34mxmm0[0m,[34mrax[0m
  ee:	bf 05 00 00 00       	[33mmov    [0m[34medi[0m,[35m0x5[0m
  f3:	e8 00 00 00 00       	[33mcall   [0m[35mf8[0m <[32mmain[0m[35m+0x[0m[35m5a[0m>
  f8:	48 8d 05 00 00 00 00 	[33mlea    [0m[34mrax[0m,[[34mrip[0m+[35m0x0[0m]        # ff <main+0x61>
  ff:	48 89 c7             	[33mmov    [0m[34mrdi[0m,[34mrax[0m
 102:	b8 01 00 00 00       	[33mmov    [0m[34meax[0m,[35m0x1[0m
 107:	e8 00 00 00 00       	[33mcall   [0m[35m10c[0m <[32mmain[0m[35m+0x[0m[35m6e[0m>
  return 0;
 10c:	b8 00 00 00 00       	[33mmov    [0m[34meax[0m,[35m0x0[0m
}
 111:	5d                   	[33mpop    [0m[34mrbp[0m
 112:	c3                   	[33mret[0m

Дизассемблирование раздела .rodata:

0000000000000000 <.rodata>:
   0:	73 69                	[33mjae    [0m[35m6b[0m <[32mipow[0m[35m+0x[0m[35m33[0m>
   2:	7a 65                	[33mjp     [0m[35m69[0m <[32mipow[0m[35m+0x[0m[35m31[0m>
   4:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mrsi[0m]
   5:	66 28 69 6e          	[33mdata16 [0m[33msub [0mBYTE PTR [[34mrcx[0m+[35m0x6e[0m],[34mch[0m
   9:	74 29                	[33mje     [0m[35m34[0m <[32m.rodata[0m[35m+0x[0m[35m34[0m>
   b:	3a 20                	[33mcmp    [0m[34mah[0m,BYTE PTR [[34mrax[0m]
   d:	25 64 0a 00 66       	[33mand    [0m[34meax[0m,[35m0x66000a64[0m
  12:	61                   	[33m(bad)[0m
  13:	63 74 6f 72          	[33mmovsxd [0m[34mesi[0m,DWORD PTR [[34mrdi[0m+[34mrbp[0m*[35m2[0m+[35m0x72[0m]
  17:	69 61 6c 28 36 29 3a 	[33mimul   [0m[34mesp[0m,DWORD PTR [[34mrcx[0m+[35m0x6c[0m],[35m0x3a293628[0m
  1e:	20 25 64 2e 0a 00    	[33mand    [0mBYTE PTR [[34mrip[0m+[35m0xa2e64[0m],[34mah[0m        # a2e88 <main+0xa2dea>
  24:	50                   	[33mpush   [0m[34mrax[0m
  25:	69 5e 35 3a 20 25 6c 	[33mimul   [0m[34mebx[0m,DWORD PTR [[34mrsi[0m+[35m0x35[0m],[35m0x6c25203a[0m
  2c:	66 0a 00             	[33mdata16 [0m[33mor [0m[34mal[0m,BYTE PTR [[34mrax[0m]
  2f:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  31:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  33:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  35:	00 f0                	[33madd    [0m[34mal[0m,[34mdh[0m
  37:	3f                   	[33m(bad)[0m
  38:	18 2d 44 54 fb 21    	[33msbb    [0mBYTE PTR [[34mrip[0m+[35m0x21fb5444[0m],[34mch[0m        # 21fb5482 <main+0x21fb53e4>
  3e:	09                   	[33m.byte [0m[35m0x9[0m
  3f:	40                   	[33mrex[0m

Дизассемблирование раздела .debug_info:

0000000000000000 <.debug_info>:
{
   0:	65 01 00             	[33madd    [0mDWORD PTR [34mgs[0m:[[34mrax[0m],[34meax[0m
   3:	00 05 00 01 08 00    	[33madd    [0mBYTE PTR [[34mrip[0m+[35m0x80100[0m],[34mal[0m        # 80109 <main+0x8006b>
}
   9:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
{
   b:	00 05 00 00 00 00    	[33madd    [0mBYTE PTR [[34mrip[0m+[35m0x0[0m],[34mal[0m        # 11 <.debug_info+0x11>
  11:	1d 00 00 00 00       	[33msbb    [0m[34meax[0m,[35m0x0[0m
	...
    r *= n--;
  22:	13 01                	[33madc    [0m[34meax[0m,DWORD PTR [[34mrcx[0m]
	...
  2c:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  while(n > 1)
  2e:	01 08                	[33madd    [0mDWORD PTR [[34mrax[0m],[34mecx[0m
  30:	07                   	[33m(bad)[0m
  31:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  return r;
  33:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  35:	01 04 07             	[33madd    [0mDWORD PTR [[34mrdi[0m+[34mrax[0m*[35m1[0m],[34meax[0m
{
  38:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  3a:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  3c:	01 01                	[33madd    [0mDWORD PTR [[34mrcx[0m],[34meax[0m
  3e:	08 00                	[33mor     [0mBYTE PTR [[34mrax[0m],[34mal[0m
  40:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  42:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
  double res = 1, tmp = base;
  44:	02 07                	[33madd    [0m[34mal[0m,BYTE PTR [[34mrdi[0m]
  46:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  48:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  4a:	01 01                	[33madd    [0mDWORD PTR [[34mrcx[0m],[34meax[0m
  4c:	06                   	[33m(bad)[0m
  4d:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  4f:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  51:	01 02                	[33madd    [0mDWORD PTR [[34mrdx[0m],[34meax[0m
  53:	05 00 00 00 00       	[33madd    [0m[34meax[0m,[35m0x0[0m
  58:	06                   	[33m(bad)[0m
  59:	04 05                	[33madd    [0m[34mal[0m,[35m0x5[0m
  while(pow)
  5b:	69 6e 74 00 01 08 05 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mrsi[0m+[35m0x74[0m],[35m0x5080100[0m
    if(pow & 1)
  62:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  64:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  66:	01 01                	[33madd    [0mDWORD PTR [[34mrcx[0m],[34meax[0m
      res *= tmp;
  68:	06                   	[33m(bad)[0m
  69:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  6b:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  6d:	07                   	[33m(bad)[0m
  6e:	66 00 00             	[33mdata16 [0m[33madd [0mBYTE PTR [[34mrax[0m],[34mal[0m
  71:	00 08                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mcl[0m
  73:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  75:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
    tmp *= tmp;
  77:	02 64 01 0c          	[33madd    [0m[34mah[0m,BYTE PTR [[34mrcx[0m+[34mrax[0m*[35m1[0m+[35m0xc[0m]
  7b:	58                   	[33mpop    [0m[34mrax[0m
  7c:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  7e:	00 8a 00 00 00 09    	[33madd    [0mBYTE PTR [[34mrdx[0m+[35m0x9000000[0m],[34mcl[0m
    pow >>= 1;
  84:	8a 00                	[33mmov    [0m[34mal[0m,BYTE PTR [[34mrax[0m]
  86:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  while(pow)
  88:	0a 00                	[33mor     [0m[34mal[0m,BYTE PTR [[34mrax[0m]
  8a:	0b 08                	[33mor     [0m[34mecx[0m,DWORD PTR [[34mrax[0m]
  8c:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34mrdi[0m],[34mdx[0m
  return res;
  8d:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  8f:	00 0c 00             	[33madd    [0mBYTE PTR [[34mrax[0m+[34mrax[0m*[35m1[0m],[34mcl[0m
  92:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  94:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
  96:	1e                   	[33m(bad)[0m
}
  97:	05 58 00 00 00       	[33madd    [0m[34meax[0m,[35m0x58[0m
	...
  printf("sizeof(int): %d\n", sizeofint());
  a4:	75 00                	[33mjne    [0m[35ma6[0m <[32m.debug_info[0m[35m+0x[0m[35ma6[0m>
  a6:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  a8:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  aa:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  ac:	01 9c 03 00 00 00 00 	[33madd    [0mDWORD PTR [[34mrbx[0m+[34mrax[0m*[35m1[0m+[35m0x0[0m],[34mebx[0m
  b3:	11 08                	[33madc    [0mDWORD PTR [[34mrax[0m],[34mecx[0m
  b5:	09 01                	[33mor     [0mDWORD PTR [[34mrcx[0m],[34meax[0m
	...
  bf:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  c1:	66 00 00             	[33mdata16 [0m[33madd [0mBYTE PTR [[34mrax[0m],[34mal[0m
  printf("factorial(6): %d.\n", factorial(6));
  c4:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  c6:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  c8:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
  ca:	9c                   	[33mpushf[0m
  cb:	09 01                	[33mor     [0mDWORD PTR [[34mrcx[0m],[34meax[0m
  cd:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  cf:	04 70                	[33madd    [0m[34mal[0m,[35m0x70[0m
  d1:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mrsi[0m]
  d2:	77 00                	[33mja     [0m[35md4[0m <[32m.debug_info[0m[35m+0x[0m[35md4[0m>
  d4:	11 11                	[33madc    [0mDWORD PTR [[34mrcx[0m],[34medx[0m
  d6:	58                   	[33mpop    [0m[34mrax[0m
  d7:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  d9:	00 02                	[33madd    [0mBYTE PTR [[34mrdx[0m],[34mal[0m
  db:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
  dc:	5c                   	[33mpop    [0m[34mrsp[0m
  dd:	0d 00 00 00 00       	[33mor     [0m[34meax[0m,[35m0x0[0m
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  e2:	01 11                	[33madd    [0mDWORD PTR [[34mrcx[0m],[34medx[0m
  e4:	1d 09 01 00 00       	[33msbb    [0m[34meax[0m,[35m0x109[0m
  e9:	02 91 50 02 72 65    	[33madd    [0m[34mdl[0m,BYTE PTR [[34mrcx[0m+[35m0x65720250[0m]
  ef:	73 00                	[33mjae    [0m[35mf1[0m <[32m.debug_info[0m[35m+0x[0m[35mf1[0m>
  f1:	13 0a                	[33madc    [0m[34mecx[0m,DWORD PTR [[34mrdx[0m]
  f3:	09 01                	[33mor     [0mDWORD PTR [[34mrcx[0m],[34meax[0m
  f5:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  f7:	02 91 60 02 74 6d    	[33madd    [0m[34mdl[0m,BYTE PTR [[34mrcx[0m+[35m0x6d740260[0m]
  fd:	70 00                	[33mjo     [0m[35mff[0m <[32m.debug_info[0m[35m+0x[0m[35mff[0m>
  ff:	13 13                	[33madc    [0m[34medx[0m,DWORD PTR [[34mrbx[0m]
 101:	09 01                	[33mor     [0mDWORD PTR [[34mrcx[0m],[34meax[0m
 103:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 105:	02 91 68 00 01 08    	[33madd    [0m[34mdl[0m,BYTE PTR [[34mrcx[0m+[35m0x8010068[0m]
 10b:	04 00                	[33madd    [0m[34mal[0m,[35m0x0[0m
  return 0;
 10d:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 10f:	00 03                	[33madd    [0mBYTE PTR [[34mrbx[0m],[34mal[0m
}
 111:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 113:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 115:	09 05 58 00 00 00    	[33mor     [0mDWORD PTR [[34mrip[0m+[35m0x58[0m],[34meax[0m        # 173 <main+0xd5>
	...
 123:	2d 00 00 00 00       	[33msub    [0m[34meax[0m,[35m0x0[0m
 128:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 12a:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
 12c:	9c                   	[33mpushf[0m
 12d:	4a 01 00             	[33mrex.WX [0m[33madd [0mQWORD PTR [[34mrax[0m],[34mrax[0m
 130:	00 04 6e             	[33madd    [0mBYTE PTR [[34mrsi[0m+[34mrbp[0m*[35m2[0m],[34mal[0m
 133:	00 09                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mcl[0m
 135:	13 58 00             	[33madc    [0m[34mebx[0m,DWORD PTR [[34mrax[0m+[35m0x0[0m]
 138:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 13a:	02 91 5c 02 72 00    	[33madd    [0m[34mdl[0m,BYTE PTR [[34mrcx[0m+[35m0x72025c[0m]
 140:	0b 07                	[33mor     [0m[34meax[0m,DWORD PTR [[34mrdi[0m]
 142:	58                   	[33mpop    [0m[34mrax[0m
 143:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 145:	00 02                	[33madd    [0mBYTE PTR [[34mrdx[0m],[34mal[0m
 147:	91                   	[33mxchg   [0m[34mecx[0m,[34meax[0m
 148:	6c                   	[33mins    [0mBYTE PTR [34mes[0m:[[34mrdi[0m],[34mdx[0m
 149:	00 0e                	[33madd    [0mBYTE PTR [[34mrsi[0m],[34mcl[0m
 14b:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 14d:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 14f:	01 04 05 58 00 00 00 	[33madd    [0mDWORD PTR [[34mrax[0m*[35m1[0m+[35m0x58[0m],[34meax[0m
	...
 15e:	0b 00                	[33mor     [0m[34meax[0m,DWORD PTR [[34mrax[0m]
 160:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 162:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 164:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
 166:	01                   	[33m.byte [0m[35m0x1[0m
 167:	9c                   	[33mpushf[0m
	...

Дизассемблирование раздела .debug_abbrev:

0000000000000000 <.debug_abbrev>:
{
   0:	01 24 00             	[33madd    [0mDWORD PTR [[34mrax[0m+[34mrax[0m*[35m1[0m],[34mesp[0m
   3:	0b 0b                	[33mor     [0m[34mecx[0m,DWORD PTR [[34mrbx[0m]
  return sizeof(int);
   5:	3e 0b 03             	[33mds [0m[33mor  [0m[34meax[0m,DWORD PTR [[34mrbx[0m]
   8:	0e                   	[33m(bad)[0m
}
   9:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
{
   b:	02 34 00             	[33madd    [0m[34mdh[0m,BYTE PTR [[34mrax[0m+[34mrax[0m*[35m1[0m]
   e:	03 08                	[33madd    [0m[34mecx[0m,DWORD PTR [[34mrax[0m]
  10:	3a 21                	[33mcmp    [0m[34mah[0m,BYTE PTR [[34mrcx[0m]
  int r = 1;
  12:	01 3b                	[33madd    [0mDWORD PTR [[34mrbx[0m],[34medi[0m
  14:	0b 39                	[33mor     [0m[34medi[0m,DWORD PTR [[34mrcx[0m]
  16:	0b 49 13             	[33mor     [0m[34mecx[0m,DWORD PTR [[34mrcx[0m+[35m0x13[0m]
  while(n > 1)
  19:	02 18                	[33madd    [0m[34mbl[0m,BYTE PTR [[34mrax[0m]
    r *= n--;
  1b:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  1d:	03 2e                	[33madd    [0m[34mebp[0m,DWORD PTR [[34mrsi[0m]
  1f:	01 3f                	[33madd    [0mDWORD PTR [[34mrdi[0m],[34medi[0m
  21:	19 03                	[33msbb    [0mDWORD PTR [[34mrbx[0m],[34meax[0m
  23:	0e                   	[33m(bad)[0m
  24:	3a 21                	[33mcmp    [0m[34mah[0m,BYTE PTR [[34mrcx[0m]
  26:	01 3b                	[33madd    [0mDWORD PTR [[34mrbx[0m],[34medi[0m
  28:	0b 39                	[33mor     [0m[34medi[0m,DWORD PTR [[34mrcx[0m]
  2a:	0b 27                	[33mor     [0m[34mesp[0m,DWORD PTR [[34mrdi[0m]
  2c:	19 49 13             	[33msbb    [0mDWORD PTR [[34mrcx[0m+[35m0x13[0m],[34mecx[0m
  while(n > 1)
  2f:	11 01                	[33madc    [0mDWORD PTR [[34mrcx[0m],[34meax[0m
  31:	12 07                	[33madc    [0m[34mal[0m,BYTE PTR [[34mrdi[0m]
  return r;
  33:	40 18 7a 19          	[33msbb    [0mBYTE PTR [[34mrdx[0m+[35m0x19[0m],[34mdil[0m
}
  37:	01 13                	[33madd    [0mDWORD PTR [[34mrbx[0m],[34medx[0m
{
  39:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  3b:	04 05                	[33madd    [0m[34mal[0m,[35m0x5[0m
  3d:	00 03                	[33madd    [0mBYTE PTR [[34mrbx[0m],[34mal[0m
  3f:	08 3a                	[33mor     [0mBYTE PTR [[34mrdx[0m],[34mbh[0m
  41:	21 01                	[33mand    [0mDWORD PTR [[34mrcx[0m],[34meax[0m
  43:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mrbx[0m]
  double res = 1, tmp = base;
  45:	39 0b                	[33mcmp    [0mDWORD PTR [[34mrbx[0m],[34mecx[0m
  47:	49 13 02             	[33madc    [0m[34mrax[0m,QWORD PTR [[34mr10[0m]
  4a:	18 00                	[33msbb    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  4c:	00 05 11 01 25 0e    	[33madd    [0mBYTE PTR [[34mrip[0m+[35m0xe250111[0m],[34mal[0m        # e250163 <main+0xe2500c5>
  52:	13 0b                	[33madc    [0m[34mecx[0m,DWORD PTR [[34mrbx[0m]
  54:	03 1f                	[33madd    [0m[34mebx[0m,DWORD PTR [[34mrdi[0m]
  56:	1b 1f                	[33msbb    [0m[34mebx[0m,DWORD PTR [[34mrdi[0m]
  58:	11 01                	[33madc    [0mDWORD PTR [[34mrcx[0m],[34meax[0m
  5a:	12 07                	[33madc    [0m[34mal[0m,BYTE PTR [[34mrdi[0m]
  while(pow)
  5c:	10 17                	[33madc    [0mBYTE PTR [[34mrdi[0m],[34mdl[0m
    if(pow & 1)
  5e:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  60:	06                   	[33m(bad)[0m
  61:	24 00                	[33mand    [0m[34mal[0m,[35m0x0[0m
  63:	0b 0b                	[33mor     [0m[34mecx[0m,DWORD PTR [[34mrbx[0m]
  65:	3e 0b 03             	[33mds [0m[33mor  [0m[34meax[0m,DWORD PTR [[34mrbx[0m]
      res *= tmp;
  68:	08 00                	[33mor     [0mBYTE PTR [[34mrax[0m],[34mal[0m
  6a:	00 07                	[33madd    [0mBYTE PTR [[34mrdi[0m],[34mal[0m
  6c:	26 00 49 13          	[33mes [0m[33madd [0mBYTE PTR [[34mrcx[0m+[35m0x13[0m],[34mcl[0m
  70:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  72:	08 2e                	[33mor     [0mBYTE PTR [[34mrsi[0m],[34mch[0m
  74:	01 3f                	[33madd    [0mDWORD PTR [[34mrdi[0m],[34medi[0m
    tmp *= tmp;
  76:	19 03                	[33msbb    [0mDWORD PTR [[34mrbx[0m],[34meax[0m
  78:	0e                   	[33m(bad)[0m
  79:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mrbx[0m]
  7b:	3b 05 39 0b 27 19    	[33mcmp    [0m[34meax[0m,DWORD PTR [[34mrip[0m+[35m0x19270b39[0m]        # 19270bba <main+0x19270b1c>
  81:	49 13 3c 19          	[33madc    [0m[34mrdi[0m,QWORD PTR [[34mr9[0m+[34mrbx[0m*[35m1[0m]
    pow >>= 1;
  85:	01 13                	[33madd    [0mDWORD PTR [[34mrbx[0m],[34medx[0m
  while(pow)
  87:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  89:	09 05 00 49 13 00    	[33mor     [0mDWORD PTR [[34mrip[0m+[35m0x134900[0m],[34meax[0m        # 13498f <main+0x1348f1>
  return res;
  8f:	00 0a                	[33madd    [0mBYTE PTR [[34mrdx[0m],[34mcl[0m
  91:	18 00                	[33msbb    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  93:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  95:	0b 0f                	[33mor     [0m[34mecx[0m,DWORD PTR [[34mrdi[0m]
}
  97:	00 0b                	[33madd    [0mBYTE PTR [[34mrbx[0m],[34mcl[0m
  99:	0b 49 13             	[33mor     [0m[34mecx[0m,DWORD PTR [[34mrcx[0m+[35m0x13[0m]
  9c:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
{
  9e:	0c 2e                	[33mor     [0m[34mal[0m,[35m0x2e[0m
  a0:	00 3f                	[33madd    [0mBYTE PTR [[34mrdi[0m],[34mbh[0m
  printf("sizeof(int): %d\n", sizeofint());
  a2:	19 03                	[33msbb    [0mDWORD PTR [[34mrbx[0m],[34meax[0m
  a4:	0e                   	[33m(bad)[0m
  a5:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mrbx[0m]
  a7:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mrbx[0m]
  a9:	39 0b                	[33mcmp    [0mDWORD PTR [[34mrbx[0m],[34mecx[0m
  ab:	49 13 11             	[33madc    [0m[34mrdx[0m,QWORD PTR [[34mr9[0m]
  ae:	01 12                	[33madd    [0mDWORD PTR [[34mrdx[0m],[34medx[0m
  b0:	07                   	[33m(bad)[0m
  b1:	40 18 7c 19 00       	[33msbb    [0mBYTE PTR [[34mrcx[0m+[34mrbx[0m*[35m1[0m+[35m0x0[0m],[34mdil[0m
  b6:	00 0d 05 00 03 0e    	[33madd    [0mBYTE PTR [[34mrip[0m+[35m0xe030005[0m],[34mcl[0m        # e0300c1 <main+0xe030023>
  bc:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mrbx[0m]
  be:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mrbx[0m]
  c0:	39 0b                	[33mcmp    [0mDWORD PTR [[34mrbx[0m],[34mecx[0m
  printf("factorial(6): %d.\n", factorial(6));
  c2:	49 13 02             	[33madc    [0m[34mrax[0m,QWORD PTR [[34mr10[0m]
  c5:	18 00                	[33msbb    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  c7:	00 0e                	[33madd    [0mBYTE PTR [[34mrsi[0m],[34mcl[0m
  c9:	2e 00 3f             	[33mcs [0m[33madd [0mBYTE PTR [[34mrdi[0m],[34mbh[0m
  cc:	19 03                	[33msbb    [0mDWORD PTR [[34mrbx[0m],[34meax[0m
  ce:	0e                   	[33m(bad)[0m
  cf:	3a 0b                	[33mcmp    [0m[34mcl[0m,BYTE PTR [[34mrbx[0m]
  d1:	3b 0b                	[33mcmp    [0m[34mecx[0m,DWORD PTR [[34mrbx[0m]
  d3:	39 0b                	[33mcmp    [0mDWORD PTR [[34mrbx[0m],[34mecx[0m
  d5:	49 13 11             	[33madc    [0m[34mrdx[0m,QWORD PTR [[34mr9[0m]
  d8:	01 12                	[33madd    [0mDWORD PTR [[34mrdx[0m],[34medx[0m
  da:	07                   	[33m(bad)[0m
  db:	40 18 7a 19          	[33msbb    [0mBYTE PTR [[34mrdx[0m+[35m0x19[0m],[34mdil[0m
  df:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
	...

Дизассемблирование раздела .debug_aranges:

0000000000000000 <.debug_aranges>:
{
   0:	2c 00                	[33msub    [0m[34mal[0m,[35m0x0[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  return sizeof(int);
   4:	02 00                	[33madd    [0m[34mal[0m,BYTE PTR [[34mrax[0m]
   6:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
   8:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
}
   a:	08 00                	[33mor     [0mBYTE PTR [[34mrax[0m],[34mal[0m
	...
  int r = 1;
  18:	13 01                	[33madc    [0m[34meax[0m,DWORD PTR [[34mrcx[0m]
	...

Дизассемблирование раздела .debug_line:

0000000000000000 <.debug_line>:
{
   0:	b4 00                	[33mmov    [0m[34mah[0m,[35m0x0[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  return sizeof(int);
   4:	05 00 08 00 33       	[33madd    [0m[34meax[0m,[35m0x33000800[0m
}
   9:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
{
   b:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
   d:	01 01                	[33madd    [0mDWORD PTR [[34mrcx[0m],[34meax[0m
   f:	fb                   	[33msti[0m
  10:	0e                   	[33m(bad)[0m
  11:	0d 00 01 01 01       	[33mor     [0m[34meax[0m,[35m0x1010100[0m
  int r = 1;
  16:	01 00                	[33madd    [0mDWORD PTR [[34mrax[0m],[34meax[0m
  18:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  while(n > 1)
  1a:	01 00                	[33madd    [0mDWORD PTR [[34mrax[0m],[34meax[0m
    r *= n--;
  1c:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
  1e:	01 01                	[33madd    [0mDWORD PTR [[34mrcx[0m],[34meax[0m
  20:	1f                   	[33m(bad)[0m
  21:	02 00                	[33madd    [0m[34mal[0m,BYTE PTR [[34mrax[0m]
  23:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  25:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  27:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  29:	00 02                	[33madd    [0mBYTE PTR [[34mrdx[0m],[34mal[0m
  2b:	01 1f                	[33madd    [0mDWORD PTR [[34mrdi[0m],[34mebx[0m
  while(n > 1)
  2d:	02 0f                	[33madd    [0m[34mcl[0m,BYTE PTR [[34mrdi[0m]
  2f:	03 00                	[33madd    [0m[34meax[0m,DWORD PTR [[34mrax[0m]
	...
{
  3d:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
  3f:	05 01 00 09 02       	[33madd    [0m[34meax[0m,[35m0x2090001[0m
	...
  double res = 1, tmp = base;
  4c:	16                   	[33m(bad)[0m
  4d:	05 0a 4b 05 01       	[33madd    [0m[34meax[0m,[35m0x1054b0a[0m
  52:	59                   	[33mpop    [0m[34mrcx[0m
  53:	31 05 07 75 05 08    	[33mxor    [0mDWORD PTR [[34mrip[0m+[35m0x8057507[0m],[34meax[0m        # 8057560 <main+0x80574c2>
  59:	75 05                	[33mjne    [0m[35m60[0m <[32m.debug_line[0m[35m+0x[0m[35m60[0m>
  while(pow)
  5b:	0b 2f                	[33mor     [0m[34mebp[0m,DWORD PTR [[34mrdi[0m]
    if(pow & 1)
  5d:	05 07 90 05 0b       	[33madd    [0m[34meax[0m,[35m0xb059007[0m
  62:	8f 05 0a 68 05 01    	[33mpop    [0mQWORD PTR [[34mrip[0m+[35m0x105680a[0m]        # 1056872 <main+0x10567d4>
      res *= tmp;
  68:	3d 31 05 0a bb       	[33mcmp    [0m[34meax[0m,[35m0xbb0a0531[0m
  6d:	05 13 c8 05 08       	[33madd    [0m[34meax[0m,[35m0x805c813[0m
  72:	9f                   	[33mlahf[0m
  73:	05 0c 30 05 07       	[33madd    [0m[34meax[0m,[35m0x705300c[0m
    tmp *= tmp;
  78:	66 05 0b 4b          	[33madd    [0m[34max[0m,[35m0x4b0b[0m
  7c:	05 09 e5 d7 37       	[33madd    [0m[34meax[0m,[35m0x37d7e509[0m
  81:	05 0a 6d 00 02       	[33madd    [0m[34meax[0m,[35m0x2006d0a[0m
    pow >>= 1;
  86:	04 01                	[33madd    [0m[34mal[0m,[35m0x1[0m
  while(pow)
  88:	06                   	[33m(bad)[0m
  89:	58                   	[33mpop    [0m[34mrax[0m
  8a:	05 01 06 59 77       	[33madd    [0m[34meax[0m,[35m0x77590601[0m
  return res;
  8f:	05 03 4b 00 02       	[33madd    [0m[34meax[0m,[35m0x2004b03[0m
  94:	04 01                	[33madd    [0m[34mal[0m,[35m0x1[0m
  96:	06                   	[33m(bad)[0m
}
  97:	9e                   	[33msahf[0m
  98:	06                   	[33m(bad)[0m
  99:	08 59 00             	[33mor     [0mBYTE PTR [[34mrcx[0m+[35m0x0[0m],[34mbl[0m
  9c:	02 04 01             	[33madd    [0m[34mal[0m,BYTE PTR [[34mrcx[0m+[34mrax[0m*[35m1[0m]
{
  9f:	06                   	[33m(bad)[0m
  a0:	9e                   	[33msahf[0m
  a1:	06                   	[33m(bad)[0m
  printf("sizeof(int): %d\n", sizeofint());
  a2:	08 59 00             	[33mor     [0mBYTE PTR [[34mrcx[0m+[35m0x0[0m],[34mbl[0m
  a5:	02 04 01             	[33madd    [0m[34mal[0m,BYTE PTR [[34mrcx[0m+[34mrax[0m*[35m1[0m]
  a8:	06                   	[33m(bad)[0m
  a9:	08 58 05             	[33mor     [0mBYTE PTR [[34mrax[0m+[35m0x5[0m],[34mbl[0m
  ac:	0a 06                	[33mor     [0m[34mal[0m,BYTE PTR [[34mrsi[0m]
  ae:	08 3d 05 01 59 02    	[33mor     [0mBYTE PTR [[34mrip[0m+[35m0x2590105[0m],[34mbh[0m        # 25901b9 <main+0x259011b>
  b4:	02 00                	[33madd    [0m[34mal[0m,BYTE PTR [[34mrax[0m]
  b6:	01 01                	[33madd    [0mDWORD PTR [[34mrcx[0m],[34meax[0m

Дизассемблирование раздела .debug_str:

0000000000000000 <.debug_str>:
{
   0:	75 6e                	[33mjne    [0m[35m70[0m <[32m.debug_str[0m[35m+0x[0m[35m70[0m>
   2:	73 69                	[33mjae    [0m[35m6d[0m <[32m.debug_str[0m[35m+0x[0m[35m6d[0m>
  return sizeof(int);
   4:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
   6:	65 64 20 69 6e       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mrcx[0m+[35m0x6e[0m],[34mch[0m
{
   b:	74 00                	[33mje     [0m[35md[0m <[32m.debug_str[0m[35m+0x[0m[35md[0m>
   d:	73 69                	[33mjae    [0m[35m78[0m <[32m.debug_str[0m[35m+0x[0m[35m78[0m>
   f:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  11:	65 64 20 63 68       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mrbx[0m+[35m0x68[0m],[34mah[0m
  int r = 1;
  16:	61                   	[33m(bad)[0m
  17:	72 00                	[33mjb     [0m[35m19[0m <[32m.debug_str[0m[35m+0x[0m[35m19[0m>
  while(n > 1)
  19:	73 69                	[33mjae    [0m[35m84[0m <[32m.debug_str[0m[35m+0x[0m[35m84[0m>
    r *= n--;
  1b:	7a 65                	[33mjp     [0m[35m82[0m <[32m.debug_str[0m[35m+0x[0m[35m82[0m>
  1d:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mrsi[0m]
  1e:	66 69 6e 74 00 6c    	[33mimul   [0m[34mbp[0m,WORD PTR [[34mrsi[0m+[35m0x74[0m],[35m0x6c00[0m
  24:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mrsi[0m]
  25:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mrsi[0m]
  26:	67 20 75 6e          	[33mand    [0mBYTE PTR [[34mebp[0m+[35m0x6e[0m],[34mdh[0m
  2a:	73 69                	[33mjae    [0m[35m95[0m <[32m.debug_str[0m[35m+0x[0m[35m95[0m>
  2c:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  while(n > 1)
  2e:	65 64 20 69 6e       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mrcx[0m+[35m0x6e[0m],[34mch[0m
  return r;
  33:	74 00                	[33mje     [0m[35m35[0m <[32m.debug_str[0m[35m+0x[0m[35m35[0m>
  35:	62 61                	[33m(bad)[0m
}
  37:	73 65                	[33mjae    [0m[35m9e[0m <[32m.debug_str[0m[35m+0x[0m[35m9e[0m>
{
  39:	00 63 68             	[33madd    [0mBYTE PTR [[34mrbx[0m+[35m0x68[0m],[34mah[0m
  3c:	61                   	[33m(bad)[0m
  3d:	72 00                	[33mjb     [0m[35m3f[0m <[32m.debug_str[0m[35m+0x[0m[35m3f[0m>
  3f:	75 6e                	[33mjne    [0m[35maf[0m <[32m.debug_str[0m[35m+0x[0m[35maf[0m>
  41:	73 69                	[33mjae    [0m[35mac[0m <[32m.debug_str[0m[35m+0x[0m[35mac[0m>
  43:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  double res = 1, tmp = base;
  45:	65 64 20 63 68       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mrbx[0m+[35m0x68[0m],[34mah[0m
  4a:	61                   	[33m(bad)[0m
  4b:	72 00                	[33mjb     [0m[35m4d[0m <[32m.debug_str[0m[35m+0x[0m[35m4d[0m>
  4d:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34mrdi[0m],[34mdx[0m
  4e:	61                   	[33m(bad)[0m
  4f:	69 6e 00 6c 6f 6e 67 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mrsi[0m+[35m0x0[0m],[35m0x676e6f6c[0m
  56:	20 69 6e             	[33mand    [0mBYTE PTR [[34mrcx[0m+[35m0x6e[0m],[34mch[0m
  59:	74 00                	[33mje     [0m[35m5b[0m <[32m.debug_str[0m[35m+0x[0m[35m5b[0m>
  while(pow)
  5b:	66 61                	[33mdata16 [0m[33m(bad)[0m
    if(pow & 1)
  5d:	63 74 6f 72          	[33mmovsxd [0m[34mesi[0m,DWORD PTR [[34mrdi[0m+[34mrbp[0m*[35m2[0m+[35m0x72[0m]
  61:	69 61 6c 00 64 6f 75 	[33mimul   [0m[34mesp[0m,DWORD PTR [[34mrcx[0m+[35m0x6c[0m],[35m0x756f6400[0m
      res *= tmp;
  68:	62                   	[33m(bad)[0m
  69:	6c                   	[33mins    [0mBYTE PTR [34mes[0m:[[34mrdi[0m],[34mdx[0m
  6a:	65 00 73 68          	[33madd    [0mBYTE PTR [34mgs[0m:[[34mrbx[0m+[35m0x68[0m],[34mdh[0m
  6e:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mrsi[0m]
  6f:	72 74                	[33mjb     [0m[35me5[0m <[32mmain[0m[35m+0x[0m[35m47[0m>
  71:	20 75 6e             	[33mand    [0mBYTE PTR [[34mrbp[0m+[35m0x6e[0m],[34mdh[0m
  74:	73 69                	[33mjae    [0m[35mdf[0m <[32mmain[0m[35m+0x[0m[35m41[0m>
    tmp *= tmp;
  76:	67 6e                	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mesi[0m]
  78:	65 64 20 69 6e       	[33mgs [0m[33mand [0mBYTE PTR [34mfs[0m:[[34mrcx[0m+[35m0x6e[0m],[34mch[0m
  7d:	74 00                	[33mje     [0m[35m7f[0m <[32m.debug_str[0m[35m+0x[0m[35m7f[0m>
  7f:	70 72                	[33mjo     [0m[35mf3[0m <[32mmain[0m[35m+0x[0m[35m55[0m>
  81:	69 6e 74 66 00 73 68 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mrsi[0m+[35m0x74[0m],[35m0x68730066[0m
  while(pow)
  88:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mrsi[0m]
  89:	72 74                	[33mjb     [0m[35mff[0m <[32mmain[0m[35m+0x[0m[35m61[0m>
  8b:	20 69 6e             	[33mand    [0mBYTE PTR [[34mrcx[0m+[35m0x6e[0m],[34mch[0m
  return res;
  8e:	74 00                	[33mje     [0m[35m90[0m <[32m.debug_str[0m[35m+0x[0m[35m90[0m>
  90:	69 70 6f 77 00 47 4e 	[33mimul   [0m[34mesi[0m,DWORD PTR [[34mrax[0m+[35m0x6f[0m],[35m0x4e470077[0m
}
  97:	55                   	[33mpush   [0m[34mrbp[0m
  98:	20 43 31             	[33mand    [0mBYTE PTR [[34mrbx[0m+[35m0x31[0m],[34mal[0m
  9b:	37                   	[33m(bad)[0m
  9c:	20 31                	[33mand    [0mBYTE PTR [[34mrcx[0m],[34mdh[0m
{
  9e:	33 2e                	[33mxor    [0m[34mebp[0m,DWORD PTR [[34mrsi[0m]
  a0:	31 2e                	[33mxor    [0mDWORD PTR [[34mrsi[0m],[34mebp[0m
  printf("sizeof(int): %d\n", sizeofint());
  a2:	31 20                	[33mxor    [0mDWORD PTR [[34mrax[0m],[34mesp[0m
  a4:	32 30                	[33mxor    [0m[34mdh[0m,BYTE PTR [[34mrax[0m]
  a6:	32 33                	[33mxor    [0m[34mdh[0m,BYTE PTR [[34mrbx[0m]
  a8:	30 34 32             	[33mxor    [0mBYTE PTR [[34mrdx[0m+[34mrsi[0m*[35m1[0m],[34mdh[0m
  ab:	39 20                	[33mcmp    [0mDWORD PTR [[34mrax[0m],[34mesp[0m
  ad:	2d 6d 36 34 20       	[33msub    [0m[34meax[0m,[35m0x2034366d[0m
  b2:	2d 6d 61 72 63       	[33msub    [0m[34meax[0m,[35m0x6372616d[0m
  b7:	68 3d 6e 6f 63       	[33mpush   [0m[35m0x636f6e3d[0m
  bc:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mrsi[0m]
  bd:	6e                   	[33mouts   [0m[34mdx[0m,BYTE PTR [34mds[0m:[[34mrsi[0m]
  be:	61                   	[33m(bad)[0m
  bf:	20                   	[33m.byte [0m[35m0x20[0m
  c0:	2d                   	[33m.byte [0m[35m0x2d[0m
  c1:	67                   	[33maddr32[0m
	...

Дизассемблирование раздела .debug_line_str:

0000000000000000 <.debug_line_str>:
{
   0:	2f                   	[33m(bad)[0m
   1:	68 6f 6d 65 2f       	[33mpush   [0m[35m0x2f656d6f[0m
  return sizeof(int);
   6:	64 2f                	[33mfs [0m[33m(bad)[0m
   8:	5f                   	[33mpop    [0m[34mrdi[0m
}
   9:	2f                   	[33m(bad)[0m
   a:	73 61                	[33mjae    [0m[35m6d[0m <[32m.debug_line_str[0m[35m+0x[0m[35m6d[0m>
{
   c:	66 65 5f             	[33mgs [0m[33mpop [0m[34mdi[0m
   f:	77 66                	[33mja     [0m[35m77[0m <[32m.debug_line_str[0m[35m+0x[0m[35m77[0m>
  11:	2f                   	[33m(bad)[0m
  int r = 1;
  12:	77 6f                	[33mja     [0m[35m83[0m <[32m.debug_line_str[0m[35m+0x[0m[35m83[0m>
  14:	72 6b                	[33mjb     [0m[35m81[0m <[32m.debug_line_str[0m[35m+0x[0m[35m81[0m>
  16:	2f                   	[33m(bad)[0m
  17:	53                   	[33mpush   [0m[34mrbx[0m
  18:	50                   	[33mpush   [0m[34mrax[0m
  while(n > 1)
  19:	62 55 2f 63 6f       	(bad)
    r *= n--;
  1e:	75 72                	[33mjne    [0m[35m92[0m <[32m.debug_line_str[0m[35m+0x[0m[35m92[0m>
  20:	73 65                	[33mjae    [0m[35m87[0m <[32m.debug_line_str[0m[35m+0x[0m[35m87[0m>
  22:	73 2f                	[33mjae    [0m[35m53[0m <[32m.debug_line_str[0m[35m+0x[0m[35m53[0m>
  24:	43 6f                	[33mrex.XB [0m[33mouts [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mrsi[0m]
  26:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34mrdi[0m],[34mdx[0m
  27:	70 75                	[33mjo     [0m[35m9e[0m <[32m.debug_line_str[0m[35m+0x[0m[35m9e[0m>
  29:	74 65                	[33mje     [0m[35m90[0m <[32m.debug_line_str[0m[35m+0x[0m[35m90[0m>
  2b:	72 5f                	[33mjb     [0m[35m8c[0m <[32m.debug_line_str[0m[35m+0x[0m[35m8c[0m>
  while(n > 1)
  2d:	41 72 63             	[33mrex.B [0m[33mjb [0m[35m93[0m <[32m.debug_line_str[0m[35m+0x[0m[35m93[0m>
  30:	68 69 74 65 63       	[33mpush   [0m[35m0x63657469[0m
  return r;
  35:	74 75                	[33mje     [0m[35mac[0m <[32m.debug_line_str[0m[35m+0x[0m[35mac[0m>
}
  37:	72 65                	[33mjb     [0m[35m9e[0m <[32m.debug_line_str[0m[35m+0x[0m[35m9e[0m>
{
  39:	2d 53 50 62 55       	[33msub    [0m[34meax[0m,[35m0x55625053[0m
  3e:	2d 43 42 2e 35       	[33msub    [0m[34meax[0m,[35m0x352e4243[0m
  43:	30 38                	[33mxor    [0mBYTE PTR [[34mrax[0m],[34mbh[0m
  double res = 1, tmp = base;
  45:	30 2f                	[33mxor    [0mBYTE PTR [[34mrdi[0m],[34mch[0m
  47:	65 78 61             	[33mgs [0m[33mjs  [0m[35mab[0m <[32m.debug_line_str[0m[35m+0x[0m[35mab[0m>
  4a:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34mrdi[0m],[34mdx[0m
  4b:	70 6c                	[33mjo     [0m[35mb9[0m <[32m.debug_line_str[0m[35m+0x[0m[35mb9[0m>
  4d:	65 73 2f             	[33mgs [0m[33mjae [0m[35m7f[0m <[32m.debug_line_str[0m[35m+0x[0m[35m7f[0m>
  50:	63 72 6f             	[33mmovsxd [0m[34mesi[0m,DWORD PTR [[34mrdx[0m+[35m0x6f[0m]
  53:	73 73                	[33mjae    [0m[35mc8[0m <[32m.debug_line_str[0m[35m+0x[0m[35mc8[0m>
  55:	2d 63 6f 6d 70       	[33msub    [0m[34meax[0m,[35m0x706d6f63[0m
  5a:	69 6c 69 6e 67 00 63 63 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mrcx[0m+[34mrbp[0m*[35m2[0m+[35m0x6e[0m],[35m0x63630067[0m
    if(pow & 1)
  62:	65 2e 63 00          	[33mgs [0m[33mmovsxd [0m[34meax[0m,DWORD PTR [34mgs[0m:[[34mrax[0m]
  66:	2f                   	[33m(bad)[0m
      res *= tmp;
  67:	68 6f 6d 65 2f       	[33mpush   [0m[35m0x2f656d6f[0m
  6c:	64 2f                	[33mfs [0m[33m(bad)[0m
  6e:	5f                   	[33mpop    [0m[34mrdi[0m
  6f:	2f                   	[33m(bad)[0m
  70:	73 61                	[33mjae    [0m[35md3[0m <[32m.debug_line_str[0m[35m+0x[0m[35md3[0m>
  72:	66 65 5f             	[33mgs [0m[33mpop [0m[34mdi[0m
  75:	77 66                	[33mja     [0m[35mdd[0m <[32m.debug_line_str[0m[35m+0x[0m[35mdd[0m>
    tmp *= tmp;
  77:	2f                   	[33m(bad)[0m
  78:	77 6f                	[33mja     [0m[35me9[0m <[32mmain[0m[35m+0x[0m[35m4b[0m>
  7a:	72 6b                	[33mjb     [0m[35me7[0m <[32mmain[0m[35m+0x[0m[35m49[0m>
  7c:	2f                   	[33m(bad)[0m
  7d:	53                   	[33mpush   [0m[34mrbx[0m
  7e:	50                   	[33mpush   [0m[34mrax[0m
  7f:	62 55 2f 63 6f       	(bad)
    pow >>= 1;
  84:	75 72                	[33mjne    [0m[35mf8[0m <[32mmain[0m[35m+0x[0m[35m5a[0m>
  86:	73 65                	[33mjae    [0m[35med[0m <[32mmain[0m[35m+0x[0m[35m4f[0m>
  while(pow)
  88:	73 2f                	[33mjae    [0m[35mb9[0m <[32m.debug_line_str[0m[35m+0x[0m[35mb9[0m>
  8a:	43 6f                	[33mrex.XB [0m[33mouts [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mrsi[0m]
  8c:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34mrdi[0m],[34mdx[0m
  return res;
  8d:	70 75                	[33mjo     [0m[35m104[0m <[32mmain[0m[35m+0x[0m[35m66[0m>
  8f:	74 65                	[33mje     [0m[35mf6[0m <[32mmain[0m[35m+0x[0m[35m58[0m>
  91:	72 5f                	[33mjb     [0m[35mf2[0m <[32mmain[0m[35m+0x[0m[35m54[0m>
  93:	41 72 63             	[33mrex.B [0m[33mjb [0m[35mf9[0m <[32mmain[0m[35m+0x[0m[35m5b[0m>
  96:	68 69 74 65 63       	[33mpush   [0m[35m0x63657469[0m
}
  9b:	74 75                	[33mje     [0m[35m112[0m <[32mmain[0m[35m+0x[0m[35m74[0m>
  9d:	72 65                	[33mjb     [0m[35m104[0m <[32mmain[0m[35m+0x[0m[35m66[0m>
{
  9f:	2d 53 50 62 55       	[33msub    [0m[34meax[0m,[35m0x55625053[0m
  printf("sizeof(int): %d\n", sizeofint());
  a4:	2d 43 42 2e 35       	[33msub    [0m[34meax[0m,[35m0x352e4243[0m
  a9:	30 38                	[33mxor    [0mBYTE PTR [[34mrax[0m],[34mbh[0m
  ab:	30 2f                	[33mxor    [0mBYTE PTR [[34mrdi[0m],[34mch[0m
  ad:	65 78 61             	[33mgs [0m[33mjs  [0m[35m111[0m <[32mmain[0m[35m+0x[0m[35m73[0m>
  b0:	6d                   	[33mins    [0mDWORD PTR [34mes[0m:[[34mrdi[0m],[34mdx[0m
  b1:	70 6c                	[33mjo     [0m[35m11f[0m <[32mmain[0m[35m+0x[0m[35m81[0m>
  b3:	65 73 2f             	[33mgs [0m[33mjae [0m[35me5[0m <[32m.debug_line_str[0m[35m+0x[0m[35me5[0m>
  b6:	63 72 6f             	[33mmovsxd [0m[34mesi[0m,DWORD PTR [[34mrdx[0m+[35m0x6f[0m]
  b9:	73 73                	[33mjae    [0m[35m12e[0m <[32mmain[0m[35m+0x[0m[35m90[0m>
  bb:	2d 63 6f 6d 70       	[33msub    [0m[34meax[0m,[35m0x706d6f63[0m
  c0:	69 6c 69 6e 67 00 2f 75 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mrcx[0m+[34mrbp[0m*[35m2[0m+[35m0x6e[0m],[35m0x752f0067[0m
  printf("factorial(6): %d.\n", factorial(6));
  c8:	73 72                	[33mjae    [0m[35m13c[0m <[32mmain[0m[35m+0x[0m[35m9e[0m>
  ca:	2f                   	[33m(bad)[0m
  cb:	69 6e 63 6c 75 64 65 	[33mimul   [0m[34mebp[0m,DWORD PTR [[34mrsi[0m+[35m0x63[0m],[35m0x6564756c[0m
  d2:	00 63 63             	[33madd    [0mBYTE PTR [[34mrbx[0m+[35m0x63[0m],[34mah[0m
  d5:	65 2e 63 00          	[33mgs [0m[33mmovsxd [0m[34meax[0m,DWORD PTR [34mgs[0m:[[34mrax[0m]
  d9:	63 63 65             	[33mmovsxd [0m[34mesp[0m,DWORD PTR [[34mrbx[0m+[35m0x65[0m]
  dc:	2e 63 00             	[33mcs [0m[33mmovsxd [0m[34meax[0m,DWORD PTR [[34mrax[0m]
  df:	73 74                	[33mjae    [0m[35m155[0m <[32mmain[0m[35m+0x[0m[35mb7[0m>
  e1:	64                   	[33mfs[0m
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  e2:	69                   	[33m.byte [0m[35m0x69[0m
  e3:	6f                   	[33mouts   [0m[34mdx[0m,DWORD PTR [34mds[0m:[[34mrsi[0m]
  e4:	2e                   	[33mcs[0m
  e5:	68                   	[33m.byte [0m[35m0x68[0m
	...

Дизассемблирование раздела .comment:

0000000000000000 <.comment>:
{
   0:	00 47 43             	[33madd    [0mBYTE PTR [[34mrdi[0m+[35m0x43[0m],[34mal[0m
   3:	43 3a 20             	[33mrex.XB [0m[33mcmp [0m[34mspl[0m,BYTE PTR [[34mr8[0m]
  return sizeof(int);
   6:	28 47 4e             	[33msub    [0mBYTE PTR [[34mrdi[0m+[35m0x4e[0m],[34mal[0m
}
   9:	55                   	[33mpush   [0m[34mrbp[0m
   a:	29 20                	[33msub    [0mDWORD PTR [[34mrax[0m],[34mesp[0m
{
   c:	31 33                	[33mxor    [0mDWORD PTR [[34mrbx[0m],[34mesi[0m
   e:	2e 31 2e             	[33mcs [0m[33mxor [0mDWORD PTR [[34mrsi[0m],[34mebp[0m
  11:	31 20                	[33mxor    [0mDWORD PTR [[34mrax[0m],[34mesp[0m
  int r = 1;
  13:	32 30                	[33mxor    [0m[34mdh[0m,BYTE PTR [[34mrax[0m]
  15:	32 33                	[33mxor    [0m[34mdh[0m,BYTE PTR [[34mrbx[0m]
  17:	30 34 32             	[33mxor    [0mBYTE PTR [[34mrdx[0m+[34mrsi[0m*[35m1[0m],[34mdh[0m
  while(n > 1)
  1a:	39 00                	[33mcmp    [0mDWORD PTR [[34mrax[0m],[34meax[0m

Дизассемблирование раздела .note.gnu.property:

0000000000000000 <.note.gnu.property>:
   0:	04 00                	[33madd    [0m[34mal[0m,[35m0x0[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
   4:	20 00                	[33mand    [0mBYTE PTR [[34mrax[0m],[34mal[0m
   6:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
   8:	05 00 00 00 47       	[33madd    [0m[34meax[0m,[35m0x47000000[0m
   d:	4e 55                	[33mrex.WRX [0m[33mpush [0m[34mrbp[0m
   f:	00 02                	[33madd    [0mBYTE PTR [[34mrdx[0m],[34mal[0m
  11:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
  13:	c0 04 00 00          	[33mrol    [0mBYTE PTR [[34mrax[0m+[34mrax[0m*[35m1[0m],[35m0x0[0m
  17:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
  19:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  1b:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  1d:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  1f:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
  21:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
  23:	c0 04 00 00          	[33mrol    [0mBYTE PTR [[34mrax[0m+[34mrax[0m*[35m1[0m],[35m0x0[0m
  27:	00 09                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mcl[0m
  29:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  2b:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  2d:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
	...

Дизассемблирование раздела .eh_frame:

0000000000000000 <.eh_frame>:
   0:	14 00                	[33madc    [0m[34mal[0m,[35m0x0[0m
   2:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
   4:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
   6:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
   8:	01 7a 52             	[33madd    [0mDWORD PTR [[34mrdx[0m+[35m0x52[0m],[34medi[0m
   b:	00 01                	[33madd    [0mBYTE PTR [[34mrcx[0m],[34mal[0m
   d:	78 10                	[33mjs     [0m[35m1f[0m <[32m.eh_frame[0m[35m+0x[0m[35m1f[0m>
   f:	01 1b                	[33madd    [0mDWORD PTR [[34mrbx[0m],[34mebx[0m
  11:	0c 07                	[33mor     [0m[34mal[0m,[35m0x7[0m
  13:	08 90 01 00 00 1c    	[33mor     [0mBYTE PTR [[34mrax[0m+[35m0x1c000001[0m],[34mdl[0m
  19:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  1b:	00 1c 00             	[33madd    [0mBYTE PTR [[34mrax[0m+[34mrax[0m*[35m1[0m],[34mbl[0m
  1e:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  20:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  22:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  24:	0b 00                	[33mor     [0m[34meax[0m,DWORD PTR [[34mrax[0m]
  26:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  28:	00 41 0e             	[33madd    [0mBYTE PTR [[34mrcx[0m+[35m0xe[0m],[34mal[0m
  2b:	10 86 02 43 0d 06    	[33madc    [0mBYTE PTR [[34mrsi[0m+[35m0x60d4302[0m],[34mal[0m
  31:	46 0c 07             	[33mrex.RX [0m[33mor [0m[34mal[0m,[35m0x7[0m
  34:	08 00                	[33mor     [0mBYTE PTR [[34mrax[0m],[34mal[0m
  36:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  38:	1c 00                	[33msbb    [0m[34mal[0m,[35m0x0[0m
  3a:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  3c:	3c 00                	[33mcmp    [0m[34mal[0m,[35m0x0[0m
  3e:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  40:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  42:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  44:	2d 00 00 00 00       	[33msub    [0m[34meax[0m,[35m0x0[0m
  49:	41 0e                	[33mrex.B [0m[33m(bad)[0m
  4b:	10 86 02 43 0d 06    	[33madc    [0mBYTE PTR [[34mrsi[0m+[35m0x60d4302[0m],[34mal[0m
  51:	68 0c 07 08 00       	[33mpush   [0m[35m0x8070c[0m
  56:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  58:	1c 00                	[33msbb    [0m[34mal[0m,[35m0x0[0m
  5a:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  5c:	5c                   	[33mpop    [0m[34mrsp[0m
  5d:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  5f:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  61:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  63:	00 66 00             	[33madd    [0mBYTE PTR [[34mrsi[0m+[35m0x0[0m],[34mah[0m
  66:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  68:	00 41 0e             	[33madd    [0mBYTE PTR [[34mrcx[0m+[35m0xe[0m],[34mal[0m
  6b:	10 86 02 43 0d 06    	[33madc    [0mBYTE PTR [[34mrsi[0m+[35m0x60d4302[0m],[34mal[0m
  71:	02 61 0c             	[33madd    [0m[34mah[0m,BYTE PTR [[34mrcx[0m+[35m0xc[0m]
  74:	07                   	[33m(bad)[0m
  75:	08 00                	[33mor     [0mBYTE PTR [[34mrax[0m],[34mal[0m
  77:	00 1c 00             	[33madd    [0mBYTE PTR [[34mrax[0m+[34mrax[0m*[35m1[0m],[34mbl[0m
  7a:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  7c:	7c 00                	[33mjl     [0m[35m7e[0m <[32m.eh_frame[0m[35m+0x[0m[35m7e[0m>
  7e:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  80:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  82:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  84:	75 00                	[33mjne    [0m[35m86[0m <[32m.eh_frame[0m[35m+0x[0m[35m86[0m>
  86:	00 00                	[33madd    [0mBYTE PTR [[34mrax[0m],[34mal[0m
  88:	00 41 0e             	[33madd    [0mBYTE PTR [[34mrcx[0m+[35m0xe[0m],[34mal[0m
  8b:	10 86 02 43 0d 06    	[33madc    [0mBYTE PTR [[34mrsi[0m+[35m0x60d4302[0m],[34mal[0m
  91:	02 70 0c             	[33madd    [0m[34mdh[0m,BYTE PTR [[34mrax[0m+[35m0xc[0m]
  94:	07                   	[33m(bad)[0m
  95:	08 00                	[33mor     [0mBYTE PTR [[34mrax[0m],[34mal[0m
	...
