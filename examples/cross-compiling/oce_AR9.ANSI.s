
cce_AR9.o:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <sizeofint>:
#include <stdio.h>

int sizeofint()
{
  return sizeof(int);
   0:	52800080 	[33mmov[0m	[34mw0[0m, [35m#0x4                   [0m	// #4
}
   4:	d65f03c0 	[33mret[0m

0000000000000008 <factorial>:

int factorial(int n)
{
   8:	d10083ff 	[33msub[0m	[34msp[0m, [34msp[0m, [35m#0x20[0m
   c:	b9000fe0 	[33mstr[0m	[34mw0[0m, [[34msp[0m, [35m#12[0m]
  int r = 1;
  10:	52800020 	[33mmov[0m	[34mw0[0m, [35m#0x1                   [0m	// #1
  14:	b9001fe0 	[33mstr[0m	[34mw0[0m, [[34msp[0m, [35m#28[0m]
  while(n > 1)
  18:	14000007 	[33mb[0m	[35m34[0m <[32mfactorial[0m[35m+0x[0m[35m2c[0m>
    r *= n--;
  1c:	b9400fe0 	[33mldr[0m	[34mw0[0m, [[34msp[0m, [35m#12[0m]
  20:	51000401 	[33msub[0m	[34mw1[0m, [34mw0[0m, [35m#0x1[0m
  24:	b9000fe1 	[33mstr[0m	[34mw1[0m, [[34msp[0m, [35m#12[0m]
  28:	b9401fe1 	[33mldr[0m	[34mw1[0m, [[34msp[0m, [35m#28[0m]
  2c:	1b007c20 	[33mmul[0m	[34mw0[0m, [34mw1[0m, [34mw0[0m
  30:	b9001fe0 	[33mstr[0m	[34mw0[0m, [[34msp[0m, [35m#28[0m]
  while(n > 1)
  34:	b9400fe0 	[33mldr[0m	[34mw0[0m, [[34msp[0m, [35m#12[0m]
  38:	7100041f 	[33mcmp[0m	[34mw0[0m, [35m#0x1[0m
  3c:	54ffff0c 	[33mb.gt[0m	[35m1c[0m <[32mfactorial[0m[35m+0x[0m[35m14[0m>
  return r;
  40:	b9401fe0 	[33mldr[0m	[34mw0[0m, [[34msp[0m, [35m#28[0m]
}
  44:	910083ff 	[33madd[0m	[34msp[0m, [34msp[0m, [35m#0x20[0m
  48:	d65f03c0 	[33mret[0m

000000000000004c <main>:

int main()
{
  4c:	a9bf7bfd 	[33mstp[0m	[34mx29[0m, [34mx30[0m, [[34msp[0m, [35m#-16[0m]!
  50:	910003fd 	[33mmov[0m	[34mx29[0m, [34msp[0m
  printf("%d\n", factorial(6));
  54:	528000c0 	[33mmov[0m	[34mw0[0m, [35m#0x6                   [0m	// #6
  58:	94000000 	[33mbl[0m	[35m8[0m <[32mfactorial[0m>
  5c:	2a0003e1 	[33mmov[0m	[34mw1[0m, [34mw0[0m
  60:	90000000 	[33madrp[0m	[34mx0[0m, [35m0[0m <[32msizeofint[0m>
  64:	91000000 	[33madd[0m	[34mx0[0m, [34mx0[0m, [35m#0x0[0m
  68:	94000000 	[33mbl[0m	[35m0[0m <[32mprintf[0m>
  return 0;
  6c:	52800000 	[33mmov[0m	[34mw0[0m, [35m#0x0                   [0m	// #0
}
  70:	a8c17bfd 	[33mldp[0m	[34mx29[0m, [34mx30[0m, [[34msp[0m], [35m#16[0m
  74:	d65f03c0 	[33mret[0m

Disassembly of section .rodata:

0000000000000000 <.rodata>:
   0:	000a6425 	[33m.inst	[0m[35m0x000a6425[0m ; undefined

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
  return sizeof(int);
   0:	00000106 	[33mudf[0m	[35m#262[0m
}
   4:	08010005 	[33mstxrb[0m	[34mw1[0m, [34mw5[0m, [[34mx0[0m]
{
   8:	00000000 	[33mudf[0m	[35m#0[0m
   c:	00000002 	[33mudf[0m	[35m#2[0m
  int r = 1;
  10:	00001d00 	[33mudf[0m	[35m#7424[0m
	...
    r *= n--;
  20:	00780000 	[33m.inst	[0m[35m0x00780000[0m ; undefined
	...
  2c:	08010000 	[33mstxrb[0m	[34mw1[0m, [34mw0[0m, [[34mx0[0m]
  30:	00000007 	[33mudf[0m	[35m#7[0m
  while(n > 1)
  34:	05040300 	[33m.inst	[0m[35m0x05040300[0m ; undefined
  38:	00746e69 	[33m.inst	[0m[35m0x00746e69[0m ; undefined
  3c:	00080101 	[33m.inst	[0m[35m0x00080101[0m ; undefined
  return r;
  40:	01000000 	[33m.inst	[0m[35m0x01000000[0m ; undefined
}
  44:	00000702 	[33mudf[0m	[35m#1794[0m
  48:	04010000 	[33msub[0m	[34mz0.b[0m, [34mp0/m[0m, [34mz0.b[0m, [34mz0.b[0m
{
  4c:	00000007 	[33mudf[0m	[35m#7[0m
  50:	06010100 	[33m.inst	[0m[35m0x06010100[0m ; undefined
  printf("%d\n", factorial(6));
  54:	00000000 	[33mudf[0m	[35m#0[0m
  58:	00050201 	[33m.inst	[0m[35m0x00050201[0m ; undefined
  5c:	01000000 	[33m.inst	[0m[35m0x01000000[0m ; undefined
  60:	00000508 	[33mudf[0m	[35m#1288[0m
  64:	01010000 	[33m.inst	[0m[35m0x01010000[0m ; undefined
  68:	00000008 	[33mudf[0m	[35m#8[0m
  return 0;
  6c:	00660400 	[33m.inst	[0m[35m0x00660400[0m ; undefined
}
  70:	00050000 	[33m.inst	[0m[35m0x00050000[0m ; undefined
  74:	02000000 	[33m.inst	[0m[35m0x02000000[0m ; undefined
  78:	350c0164 	[33mcbnz[0m	[34mw4[0m, [35m180a4[0m <[32mmain[0m[35m+0x[0m[35m18058[0m>
  7c:	8a000000 	[33mand[0m	[34mx0[0m, [34mx0[0m, [34mx0[0m
  80:	06000000 	[33m.inst	[0m[35m0x06000000[0m ; undefined
  84:	0000008a 	[33mudf[0m	[35m#138[0m
  88:	08080007 	[33mstxrb[0m	[34mw8[0m, [34mw7[0m, [[34mx0[0m]
  8c:	0000006d 	[33mudf[0m	[35m#109[0m
  90:	00000009 	[33mudf[0m	[35m#9[0m
  94:	05100100 	[33mmov[0m	[34mz0.b[0m, [34mp0/z[0m, [35m#8[0m
  98:	00000035 	[33mudf[0m	[35m#53[0m
	...
  a4:	0000002c 	[33mudf[0m	[35m#44[0m
  a8:	00000000 	[33mudf[0m	[35m#0[0m
  ac:	000a9c01 	[33m.inst	[0m[35m0x000a9c01[0m ; undefined
  b0:	01000000 	[33m.inst	[0m[35m0x01000000[0m ; undefined
  b4:	00350508 	[33m.inst	[0m[35m0x00350508[0m ; NYI
	...
  c0:	00440000 	[33m.inst	[0m[35m0x00440000[0m ; undefined
  c4:	00000000 	[33mudf[0m	[35m#0[0m
  c8:	9c010000 	[33mldr[0m	[34mq0[0m, [35m20c8[0m <[32mmain[0m[35m+0x[0m[35m207c[0m>
  cc:	000000eb 	[33mudf[0m	[35m#235[0m
  d0:	01006e0b 	[33m.inst	[0m[35m0x01006e0b[0m ; undefined
  d4:	00351308 	[33m.inst	[0m[35m0x00351308[0m ; NYI
  d8:	91020000 	[33madd[0m	[34mx0[0m, [34mx0[0m, [35m#0x80[0m
  dc:	00720c6c 	[33m.inst	[0m[35m0x00720c6c[0m ; undefined
  e0:	35070a01 	[33mcbnz[0m	[34mw1[0m, [35me220[0m <[32mmain[0m[35m+0x[0m[35me1d4[0m>
  e4:	02000000 	[33m.inst	[0m[35m0x02000000[0m ; undefined
  e8:	0d007c91 	[33m.inst	[0m[35m0x0d007c91[0m ; undefined
  ec:	00000000 	[33mudf[0m	[35m#0[0m
  f0:	35050301 	[33mcbnz[0m	[34mw1[0m, [35ma150[0m <[32mmain[0m[35m+0x[0m[35ma104[0m>
	...
  fc:	08000000 	[33mstxrb[0m	[34mw0[0m, [34mw0[0m, [[34mx0[0m]
 100:	00000000 	[33mudf[0m	[35m#0[0m
 104:	01000000 	[33m.inst	[0m[35m0x01000000[0m ; undefined
 108:	Address 0x108 is out of bounds.


Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
  return sizeof(int);
   0:	0b002401 	[33madd[0m	[34mw1[0m, [34mw0[0m, [34mw0[0m, [33mlsl[0m [35m#9[0m
}
   4:	030b3e0b 	[33m.inst	[0m[35m0x030b3e0b[0m ; undefined
{
   8:	0200000e 	[33m.inst	[0m[35m0x0200000e[0m ; undefined
   c:	0e250111 	[33msaddl[0m	[34mv17.8h[0m, [34mv8.8b[0m, [34mv5.8b[0m
  int r = 1;
  10:	1f030b13 	[33mfmadd[0m	[34ms19[0m, [34ms24[0m, [34ms3[0m, [34ms2[0m
  14:	01111f1b 	[33m.inst	[0m[35m0x01111f1b[0m ; undefined
  while(n > 1)
  18:	17100712 	[33mb[0m	[35mfffffffffc401c60[0m <[32mmain[0m[35m+0x[0m[35mfffffffffc401c14[0m>
    r *= n--;
  1c:	24030000 	[33mcmphs[0m	[34mp0.b[0m, [34mp0/z[0m, [34mz0.b[0m, [34mz3.b[0m
  20:	3e0b0b00 	[33m.inst	[0m[35m0x3e0b0b00[0m ; undefined
  24:	0008030b 	[33m.inst	[0m[35m0x0008030b[0m ; undefined
  28:	00260400 	[33m.inst	[0m[35m0x00260400[0m ; NYI
  2c:	00001349 	[33mudf[0m	[35m#4937[0m
  30:	3f012e05 	[33m.inst	[0m[35m0x3f012e05[0m ; undefined
  while(n > 1)
  34:	3a0e0319 	[33madcs[0m	[34mw25[0m, [34mw24[0m, [34mw14[0m
  38:	39053b0b 	[33mstrb[0m	[34mw11[0m, [[34mx24[0m, [35m#334[0m]
  3c:	4919270b 	[33m.inst	[0m[35m0x4919270b[0m ; undefined
  return r;
  40:	01193c13 	[33m.inst	[0m[35m0x01193c13[0m ; undefined
}
  44:	06000013 	[33m.inst	[0m[35m0x06000013[0m ; undefined
  48:	13490005 	[33m.inst	[0m[35m0x13490005[0m ; undefined
{
  4c:	18070000 	[33mldr[0m	[34mw0[0m, [35me04c[0m <[32mmain[0m[35m+0x[0m[35me000[0m>
  50:	08000000 	[33mstxrb[0m	[34mw0[0m, [34mw0[0m, [[34mx0[0m]
  printf("%d\n", factorial(6));
  54:	0b0b000f 	[33madd[0m	[34mw15[0m, [34mw0[0m, [34mw11[0m
  58:	00001349 	[33mudf[0m	[35m#4937[0m
  5c:	3f002e09 	[33m.inst	[0m[35m0x3f002e09[0m ; undefined
  60:	3a0e0319 	[33madcs[0m	[34mw25[0m, [34mw24[0m, [34mw14[0m
  64:	390b3b0b 	[33mstrb[0m	[34mw11[0m, [[34mx24[0m, [35m#718[0m]
  68:	1113490b 	[33madd[0m	[34mw11[0m, [34mw8[0m, [35m#0x4d2[0m
  return 0;
  6c:	40071201 	[33m.inst	[0m[35m0x40071201[0m ; undefined
}
  70:	00197c18 	[33m.inst	[0m[35m0x00197c18[0m ; undefined
  74:	012e0a00 	[33m.inst	[0m[35m0x012e0a00[0m ; undefined
  78:	0e03193f 	[33muzp1[0m	[34mv31.8b[0m, [34mv9.8b[0m, [34mv3.8b[0m
  7c:	0b3b0b3a 	[33madd[0m	[34mw26[0m, [34mw25[0m, [34mw27[0m, [33muxtb[0m [35m#2[0m
  80:	19270b39 	[33m.inst	[0m[35m0x19270b39[0m ; undefined
  84:	01111349 	[33m.inst	[0m[35m0x01111349[0m ; undefined
  88:	18400712 	[33mldr[0m	[34mw18[0m, [35m80168[0m <[32mmain[0m[35m+0x[0m[35m8011c[0m>
  8c:	1301197a 	[33msbfx[0m	[34mw26[0m, [34mw11[0m, [35m#1[0m, [35m#6[0m
  90:	050b0000 	[33m.inst	[0m[35m0x050b0000[0m ; undefined
  94:	3a080300 	[33madcs[0m	[34mw0[0m, [34mw24[0m, [34mw8[0m
  98:	390b3b0b 	[33mstrb[0m	[34mw11[0m, [[34mx24[0m, [35m#718[0m]
  9c:	0213490b 	[33m.inst	[0m[35m0x0213490b[0m ; undefined
  a0:	0c000018 	[33mst4[0m	{[34mv24.8b[0m-[34mv27.8b[0m}, [[34mx0[0m]
  a4:	08030034 	[33mstxrb[0m	[34mw3[0m, [34mw20[0m, [[34mx1[0m]
  a8:	0b3b0b3a 	[33madd[0m	[34mw26[0m, [34mw25[0m, [34mw27[0m, [33muxtb[0m [35m#2[0m
  ac:	13490b39 	[33m.inst	[0m[35m0x13490b39[0m ; undefined
  b0:	00001802 	[33mudf[0m	[35m#6146[0m
  b4:	3f002e0d 	[33m.inst	[0m[35m0x3f002e0d[0m ; undefined
  b8:	3a0e0319 	[33madcs[0m	[34mw25[0m, [34mw24[0m, [34mw14[0m
  bc:	390b3b0b 	[33mstrb[0m	[34mw11[0m, [[34mx24[0m, [35m#718[0m]
  c0:	1113490b 	[33madd[0m	[34mw11[0m, [34mw8[0m, [35m#0x4d2[0m
  c4:	40071201 	[33m.inst	[0m[35m0x40071201[0m ; undefined
  c8:	00197a18 	[33m.inst	[0m[35m0x00197a18[0m ; undefined
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
  return sizeof(int);
   0:	0000002c 	[33mudf[0m	[35m#44[0m
}
   4:	00000002 	[33mudf[0m	[35m#2[0m
{
   8:	00080000 	[33m.inst	[0m[35m0x00080000[0m ; undefined
	...
  while(n > 1)
  18:	00000078 	[33mudf[0m	[35m#120[0m
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
  return sizeof(int);
   0:	0000007b 	[33mudf[0m	[35m#123[0m
}
   4:	00080005 	[33m.inst	[0m[35m0x00080005[0m ; undefined
{
   8:	00000033 	[33mudf[0m	[35m#51[0m
   c:	fb010104 	[33m.inst	[0m[35m0xfb010104[0m ; undefined
  int r = 1;
  10:	01000d0e 	[33m.inst	[0m[35m0x01000d0e[0m ; undefined
  14:	00010101 	[33m.inst	[0m[35m0x00010101[0m ; undefined
  while(n > 1)
  18:	00010000 	[33m.inst	[0m[35m0x00010000[0m ; undefined
    r *= n--;
  1c:	01010100 	[33m.inst	[0m[35m0x01010100[0m ; undefined
  20:	0000021f 	[33mudf[0m	[35m#543[0m
  24:	00000000 	[33mudf[0m	[35m#0[0m
  28:	01020000 	[33m.inst	[0m[35m0x01020000[0m ; undefined
  2c:	030f021f 	[33m.inst	[0m[35m0x030f021f[0m ; undefined
	...
  while(n > 1)
  3c:	05010000 	[33morr[0m	[34mz0.s[0m, [34mz0.s[0m, [35m#0x1[0m
  return r;
  40:	02090001 	[33m.inst	[0m[35m0x02090001[0m ; undefined
	...
{
  4c:	130a0515 	[33msbfiz[0m	[34mw21[0m, [34mw8[0m, [35m#22[0m, [35m#2[0m
  50:	23210105 	[33m.inst	[0m[35m0x23210105[0m ; undefined
  printf("%d\n", factorial(6));
  54:	052f0705 	[33mext[0m	[34mz5.b[0m, [34mz5.b[0m, [34mz24.b[0m, [35m#121[0m
  58:	0b052f08 	[33madd[0m	[34mw8[0m, [34mw24[0m, [34mw5[0m, [33mlsl[0m [35m#11[0m
  5c:	3c070521 	[33mstr[0m	[34mb1[0m, [[34mx9[0m], [35m#112[0m
  60:	053b0b05 	[33mext[0m	[34mz5.b[0m, [34mz5.b[0m, [34mz24.b[0m, [35m#218[0m
  64:	01053e0a 	[33m.inst	[0m[35m0x01053e0a[0m ; undefined
  68:	03053121 	[33m.inst	[0m[35m0x03053121[0m ; undefined
  return 0;
  6c:	0402002f 	[33m.inst	[0m[35m0x0402002f[0m ; undefined
}
  70:	052e0601 	[33mext[0m	[34mz1.b[0m, [34mz1.b[0m, [34mz16.b[0m, [35m#113[0m
  74:	054b060a 	[33m.inst	[0m[35m0x054b060a[0m ; undefined
  78:	02022101 	[33m.inst	[0m[35m0x02022101[0m ; undefined
  7c:	Address 0x7c is out of bounds.


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
  return sizeof(int);
   0:	69736e75 	[33mldpsw[0m	[34mx21[0m, [34mx27[0m, [[34mx19[0m, [35m#-104[0m]
}
   4:	64656e67 	[33m.inst	[0m[35m0x64656e67[0m ; undefined
{
   8:	746e6920 	[33m.inst	[0m[35m0x746e6920[0m ; undefined
   c:	736e7500 	[33m.inst	[0m[35m0x736e7500[0m ; undefined
  int r = 1;
  10:	656e6769 	[33mfnmls[0m	[34mz9.h[0m, [34mp1/m[0m, [34mz27.h[0m, [34mz14.h[0m
  14:	68632064 	[33m.inst	[0m[35m0x68632064[0m ; undefined
  while(n > 1)
  18:	73007261 	[33m.inst	[0m[35m0x73007261[0m ; undefined
    r *= n--;
  1c:	6f657a69 	[33mfcmla[0m	[34mv9.8h[0m, [34mv19.8h[0m, [34mv5.h[0m[[35m3[0m], [35m#270[0m
  20:	746e6966 	[33m.inst	[0m[35m0x746e6966[0m ; undefined
  24:	6e6f6c00 	[33mumin[0m	[34mv0.8h[0m, [34mv0.8h[0m, [34mv15.8h[0m
  28:	6e752067 	[33musubl2[0m	[34mv7.4s[0m, [34mv3.8h[0m, [34mv21.8h[0m
  2c:	6e676973 	[33m.inst	[0m[35m0x6e676973[0m ; undefined
  30:	69206465 	[33mstgp[0m	[34mx5[0m, [34mx25[0m, [[34mx3[0m, [35m#-1024[0m]
  while(n > 1)
  34:	6300746e 	[33m.inst	[0m[35m0x6300746e[0m ; undefined
  38:	00726168 	[33m.inst	[0m[35m0x00726168[0m ; undefined
  3c:	20554e47 	[33m.inst	[0m[35m0x20554e47[0m ; undefined
  return r;
  40:	20373143 	[33m.inst	[0m[35m0x20373143[0m ; undefined
}
  44:	312e3331 	[33madds[0m	[34mw17[0m, [34mw25[0m, [35m#0xb8c[0m
  48:	2d20302e 	[33mstp[0m	[34ms14[0m, [34ms12[0m, [[34mx1[0m, [35m#-256[0m]
{
  4c:	6372616d 	[33m.inst	[0m[35m0x6372616d[0m ; undefined
  50:	72613d68 	[33m.inst	[0m[35m0x72613d68[0m ; undefined
  printf("%d\n", factorial(6));
  54:	2d39766d 	[33mstp[0m	[34ms13[0m, [34ms29[0m, [[34mx19[0m, [35m#-56[0m]
  58:	6d2d2061 	[33mstp[0m	[34md1[0m, [34md8[0m, [[34mx3[0m, [35m#-304[0m]
  5c:	7474696c 	[33m.inst	[0m[35m0x7474696c[0m ; undefined
  60:	652d656c 	[33m.inst	[0m[35m0x652d656c[0m ; undefined
  64:	6169646e 	[33m.inst	[0m[35m0x6169646e[0m ; undefined
  68:	6d2d206e 	[33mstp[0m	[34md14[0m, [34md8[0m, [[34mx3[0m, [35m#-304[0m]
  return 0;
  6c:	3d696261 	[33mldr[0m	[34mb1[0m, [[34mx19[0m, [35m#2648[0m]
}
  70:	3436706c 	[33mcbz[0m	[34mw12[0m, [35m6ce7c[0m <[32mmain[0m[35m+0x[0m[35m6ce30[0m>
  74:	00672d20 	[33m.inst	[0m[35m0x00672d20[0m ; undefined
  78:	6e69616d 	[33mrsubhn2[0m	[34mv13.8h[0m, [34mv11.4s[0m, [34mv9.4s[0m
  7c:	6e6f6c00 	[33mumin[0m	[34mv0.8h[0m, [34mv0.8h[0m, [34mv15.8h[0m
  80:	6e692067 	[33musubl2[0m	[34mv7.4s[0m, [34mv3.8h[0m, [34mv9.8h[0m
  84:	61660074 	[33m.inst	[0m[35m0x61660074[0m ; undefined
  88:	726f7463 	[33m.inst	[0m[35m0x726f7463[0m ; undefined
  8c:	006c6169 	[33m.inst	[0m[35m0x006c6169[0m ; undefined
  90:	726f6873 	[33m.inst	[0m[35m0x726f6873[0m ; undefined
  94:	6e752074 	[33musubl2[0m	[34mv20.4s[0m, [34mv3.8h[0m, [34mv21.8h[0m
  98:	6e676973 	[33m.inst	[0m[35m0x6e676973[0m ; undefined
  9c:	69206465 	[33mstgp[0m	[34mx5[0m, [34mx25[0m, [[34mx3[0m, [35m#-1024[0m]
  a0:	7000746e 	[33madr[0m	[34mx14[0m, [35mf2f[0m <[32mmain[0m[35m+0x[0m[35mee3[0m>
  a4:	746e6972 	[33m.inst	[0m[35m0x746e6972[0m ; undefined
  a8:	68730066 	[33m.inst	[0m[35m0x68730066[0m ; undefined
  ac:	2074726f 	[33m.inst	[0m[35m0x2074726f[0m ; undefined
  b0:	00746e69 	[33m.inst	[0m[35m0x00746e69[0m ; undefined
  b4:	6e676973 	[33m.inst	[0m[35m0x6e676973[0m ; undefined
  b8:	63206465 	[33m.inst	[0m[35m0x63206465[0m ; undefined
  bc:	00726168 	[33m.inst	[0m[35m0x00726168[0m ; undefined

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
  return sizeof(int);
   0:	6d6f682f 	[33mldp[0m	[34md15[0m, [34md26[0m, [[34mx1[0m, [35m#-272[0m]
}
   4:	2f642f65 	[33m.inst	[0m[35m0x2f642f65[0m ; undefined
{
   8:	61732f5f 	[33m.inst	[0m[35m0x61732f5f[0m ; undefined
   c:	775f6566 	[33m.inst	[0m[35m0x775f6566[0m ; undefined
  int r = 1;
  10:	6f772f66 	[33m.inst	[0m[35m0x6f772f66[0m ; undefined
  14:	532f6b72 	[33m.inst	[0m[35m0x532f6b72[0m ; undefined
  while(n > 1)
  18:	2f556250 	[33mumlsl[0m	[34mv16.4s[0m, [34mv18.4h[0m, [34mv5.h[0m[[35m1[0m]
    r *= n--;
  1c:	72756f63 	[33m.inst	[0m[35m0x72756f63[0m ; undefined
  20:	2f736573 	[33m.inst	[0m[35m0x2f736573[0m ; undefined
  24:	706d6f43 	[33madr[0m	[34mx3[0m, [35mdae0f[0m <[32mmain[0m[35m+0x[0m[35mdadc3[0m>
  28:	72657475 	[33m.inst	[0m[35m0x72657475[0m ; undefined
  2c:	6372415f 	[33m.inst	[0m[35m0x6372415f[0m ; undefined
  30:	65746968 	[33mfnmls[0m	[34mz8.h[0m, [34mp2/m[0m, [34mz11.h[0m, [34mz20.h[0m
  while(n > 1)
  34:	72757463 	[33m.inst	[0m[35m0x72757463[0m ; undefined
  38:	50532d65 	[33madr[0m	[34mx5[0m, [35ma65e6[0m <[32mmain[0m[35m+0x[0m[35ma659a[0m>
  3c:	432d5562 	[33m.inst	[0m[35m0x432d5562[0m ; undefined
  return r;
  40:	30352e42 	[33madr[0m	[34mx2[0m, [35m6a609[0m <[32mmain[0m[35m+0x[0m[35m6a5bd[0m>
}
  44:	652f3038 	[33m.inst	[0m[35m0x652f3038[0m ; undefined
  48:	706d6178 	[33madr[0m	[34mx24[0m, [35mdac77[0m <[32mmain[0m[35m+0x[0m[35mdac2b[0m>
{
  4c:	2f73656c 	[33m.inst	[0m[35m0x2f73656c[0m ; undefined
  50:	736f7263 	[33m.inst	[0m[35m0x736f7263[0m ; undefined
  printf("%d\n", factorial(6));
  54:	6f632d73 	[33m.inst	[0m[35m0x6f632d73[0m ; undefined
  58:	6c69706d 	[33mldnp[0m	[34md13[0m, [34md28[0m, [[34mx3[0m, [35m#-368[0m]
  5c:	00676e69 	[33m.inst	[0m[35m0x00676e69[0m ; undefined
  60:	2e656363 	[33mrsubhn[0m	[34mv3.4h[0m, [34mv27.4s[0m, [34mv5.4s[0m
  64:	682f0063 	[33m.inst	[0m[35m0x682f0063[0m ; undefined
  68:	2f656d6f 	[33m.inst	[0m[35m0x2f656d6f[0m ; undefined
  return 0;
  6c:	2f5f2f64 	[33m.inst	[0m[35m0x2f5f2f64[0m ; undefined
}
  70:	65666173 	[33mfnmls[0m	[34mz19.h[0m, [34mp0/m[0m, [34mz11.h[0m, [34mz6.h[0m
  74:	2f66775f 	[33m.inst	[0m[35m0x2f66775f[0m ; undefined
  78:	6b726f77 	[33m.inst	[0m[35m0x6b726f77[0m ; undefined
  7c:	6250532f 	[33m.inst	[0m[35m0x6250532f[0m ; undefined
  80:	6f632f55 	[33m.inst	[0m[35m0x6f632f55[0m ; undefined
  84:	65737275 	[33mfnmls[0m	[34mz21.h[0m, [34mp4/m[0m, [34mz19.h[0m, [34mz19.h[0m
  88:	6f432f73 	[33m.inst	[0m[35m0x6f432f73[0m ; undefined
  8c:	7475706d 	[33m.inst	[0m[35m0x7475706d[0m ; undefined
  90:	415f7265 	[33m.inst	[0m[35m0x415f7265[0m ; undefined
  94:	69686372 	[33mldpsw[0m	[34mx18[0m, [34mx24[0m, [[34mx27[0m, [35m#-192[0m]
  98:	74636574 	[33m.inst	[0m[35m0x74636574[0m ; undefined
  9c:	2d657275 	[33mldp[0m	[34ms21[0m, [34ms28[0m, [[34mx19[0m, [35m#-216[0m]
  a0:	55625053 	[33m.inst	[0m[35m0x55625053[0m ; undefined
  a4:	2e42432d 	[33m.inst	[0m[35m0x2e42432d[0m ; undefined
  a8:	30383035 	[33madr[0m	[34mx21[0m, [35m706ad[0m <[32mmain[0m[35m+0x[0m[35m70661[0m>
  ac:	6178652f 	[33m.inst	[0m[35m0x6178652f[0m ; undefined
  b0:	656c706d 	[33mfnmls[0m	[34mz13.h[0m, [34mp4/m[0m, [34mz3.h[0m, [34mz12.h[0m
  b4:	72632f73 	[33m.inst	[0m[35m0x72632f73[0m ; undefined
  b8:	2d73736f 	[33mldp[0m	[34ms15[0m, [34ms28[0m, [[34mx27[0m, [35m#-104[0m]
  bc:	706d6f63 	[33madr[0m	[34mx3[0m, [35mdaeab[0m <[32mmain[0m[35m+0x[0m[35mdae5f[0m>
  c0:	6e696c69 	[33mumin[0m	[34mv9.8h[0m, [34mv3.8h[0m, [34mv9.8h[0m
  c4:	752f0067 	[33m.inst	[0m[35m0x752f0067[0m ; undefined
  c8:	612f7273 	[33m.inst	[0m[35m0x612f7273[0m ; undefined
  cc:	68637261 	[33m.inst	[0m[35m0x68637261[0m ; undefined
  d0:	6c2d3436 	[33mstnp[0m	[34md22[0m, [34md13[0m, [[34mx1[0m, [35m#-304[0m]
  d4:	78756e69 	[33m.inst	[0m[35m0x78756e69[0m ; undefined
  d8:	756e672d 	[33m.inst	[0m[35m0x756e672d[0m ; undefined
  dc:	636e692f 	[33m.inst	[0m[35m0x636e692f[0m ; undefined
  e0:	6564756c 	[33mfnmls[0m	[34mz12.h[0m, [34mp5/m[0m, [34mz11.h[0m, [34mz4.h[0m
  e4:	65636300 	[33mfnmls[0m	[34mz0.h[0m, [34mp0/m[0m, [34mz24.h[0m, [34mz3.h[0m
  e8:	6300632e 	[33m.inst	[0m[35m0x6300632e[0m ; undefined
  ec:	632e6563 	[33m.inst	[0m[35m0x632e6563[0m ; undefined
  f0:	64747300 	[33m.inst	[0m[35m0x64747300[0m ; undefined
  f4:	682e6f69 	[33m.inst	[0m[35m0x682e6f69[0m ; undefined
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
  return sizeof(int);
   0:	43434700 	[33m.inst	[0m[35m0x43434700[0m ; undefined
}
   4:	4728203a 	[33m.inst	[0m[35m0x4728203a[0m ; undefined
{
   8:	2029554e 	[33m.inst	[0m[35m0x2029554e[0m ; undefined
   c:	312e3331 	[33madds[0m	[34mw17[0m, [34mw25[0m, [35m#0xb8c[0m
  int r = 1;
  10:	Address 0x10 is out of bounds.


Disassembly of section .eh_frame:

0000000000000000 <.eh_frame>:
   0:	00000010 	[33mudf[0m	[35m#16[0m
   4:	00000000 	[33mudf[0m	[35m#0[0m
   8:	00527a01 	[33m.inst	[0m[35m0x00527a01[0m ; undefined
   c:	011e7804 	[33m.inst	[0m[35m0x011e7804[0m ; undefined
  10:	001f0c1b 	[33m.inst	[0m[35m0x001f0c1b[0m ; undefined
  14:	00000010 	[33mudf[0m	[35m#16[0m
  18:	00000018 	[33mudf[0m	[35m#24[0m
  1c:	00000000 	[33mudf[0m	[35m#0[0m
  20:	00000008 	[33mudf[0m	[35m#8[0m
  24:	00000000 	[33mudf[0m	[35m#0[0m
  28:	00000014 	[33mudf[0m	[35m#20[0m
  2c:	0000002c 	[33mudf[0m	[35m#44[0m
  30:	00000000 	[33mudf[0m	[35m#0[0m
  34:	00000044 	[33mudf[0m	[35m#68[0m
  38:	200e4100 	[33m.inst	[0m[35m0x200e4100[0m ; undefined
  3c:	00000e4f 	[33mudf[0m	[35m#3663[0m
  40:	0000001c 	[33mudf[0m	[35m#28[0m
  44:	00000044 	[33mudf[0m	[35m#68[0m
  48:	00000000 	[33mudf[0m	[35m#0[0m
  4c:	0000002c 	[33mudf[0m	[35m#44[0m
  50:	100e4100 	[33madr[0m	[34mx0[0m, [35m1c870[0m <[32mmain[0m[35m+0x[0m[35m1c824[0m>
  54:	019e029d 	[33m.inst	[0m[35m0x019e029d[0m ; undefined
  58:	0eddde49 	[33m.inst	[0m[35m0x0eddde49[0m ; undefined
  5c:	00000000 	[33mudf[0m	[35m#0[0m
