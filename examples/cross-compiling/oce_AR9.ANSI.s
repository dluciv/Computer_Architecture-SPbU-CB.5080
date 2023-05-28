
cce_AR9.o:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <sizeofint>:
#include <stdio.h>
#define DOUBLE_PI 3.14159265358979323846

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

000000000000004c <ipow>:

double ipow(int pow, double base)
{
  4c:	d10083ff 	[33msub[0m	[34msp[0m, [34msp[0m, [35m#0x20[0m
  50:	b9000fe0 	[33mstr[0m	[34mw0[0m, [[34msp[0m, [35m#12[0m]
  54:	fd0003e0 	[33mstr[0m	[34md0[0m, [[34msp[0m]
  double res = 1, tmp = base;
  58:	1e6e1000 	[33mfmov[0m	[34md0[0m, [35m#1.000000000000000000e+00[0m
  5c:	fd000fe0 	[33mstr[0m	[34md0[0m, [[34msp[0m, [35m#24[0m]
  60:	fd4003e0 	[33mldr[0m	[34md0[0m, [[34msp[0m]
  64:	fd000be0 	[33mstr[0m	[34md0[0m, [[34msp[0m, [35m#16[0m]
  while(pow)
  68:	1400000f 	[33mb[0m	[35ma4[0m <[32mipow[0m[35m+0x[0m[35m58[0m>
  {
    if(pow & 1)
  6c:	b9400fe0 	[33mldr[0m	[34mw0[0m, [[34msp[0m, [35m#12[0m]
  70:	12000000 	[33mand[0m	[34mw0[0m, [34mw0[0m, [35m#0x1[0m
  74:	7100001f 	[33mcmp[0m	[34mw0[0m, [35m#0x0[0m
  78:	540000a0 	[33mb.eq[0m	[35m8c[0m <[32mipow[0m[35m+0x[0m[35m40[0m>  // b.none
      res *= tmp;
  7c:	fd400fe1 	[33mldr[0m	[34md1[0m, [[34msp[0m, [35m#24[0m]
  80:	fd400be0 	[33mldr[0m	[34md0[0m, [[34msp[0m, [35m#16[0m]
  84:	1e600820 	[33mfmul[0m	[34md0[0m, [34md1[0m, [34md0[0m
  88:	fd000fe0 	[33mstr[0m	[34md0[0m, [[34msp[0m, [35m#24[0m]
    tmp *= tmp;
  8c:	fd400be0 	[33mldr[0m	[34md0[0m, [[34msp[0m, [35m#16[0m]
  90:	1e600800 	[33mfmul[0m	[34md0[0m, [34md0[0m, [34md0[0m
  94:	fd000be0 	[33mstr[0m	[34md0[0m, [[34msp[0m, [35m#16[0m]
    pow >>= 1;
  98:	b9400fe0 	[33mldr[0m	[34mw0[0m, [[34msp[0m, [35m#12[0m]
  9c:	13017c00 	[33masr[0m	[34mw0[0m, [34mw0[0m, [35m#1[0m
  a0:	b9000fe0 	[33mstr[0m	[34mw0[0m, [[34msp[0m, [35m#12[0m]
  while(pow)
  a4:	b9400fe0 	[33mldr[0m	[34mw0[0m, [[34msp[0m, [35m#12[0m]
  a8:	7100001f 	[33mcmp[0m	[34mw0[0m, [35m#0x0[0m
  ac:	54fffe01 	[33mb.ne[0m	[35m6c[0m <[32mipow[0m[35m+0x[0m[35m20[0m>  // b.any
  }
  return res;
  b0:	fd400fe0 	[33mldr[0m	[34md0[0m, [[34msp[0m, [35m#24[0m]
}
  b4:	910083ff 	[33madd[0m	[34msp[0m, [34msp[0m, [35m#0x20[0m
  b8:	d65f03c0 	[33mret[0m

00000000000000bc <main>:

int main()
{
  bc:	a9bf7bfd 	[33mstp[0m	[34mx29[0m, [34mx30[0m, [[34msp[0m, [35m#-16[0m]!
  c0:	910003fd 	[33mmov[0m	[34mx29[0m, [34msp[0m
  printf("sizeof(int): %d\n", sizeofint());
  c4:	94000000 	[33mbl[0m	[35m0[0m <[32msizeofint[0m>
  c8:	2a0003e1 	[33mmov[0m	[34mw1[0m, [34mw0[0m
  cc:	90000000 	[33madrp[0m	[34mx0[0m, [35m0[0m <[32msizeofint[0m>
  d0:	91000000 	[33madd[0m	[34mx0[0m, [34mx0[0m, [35m#0x0[0m
  d4:	94000000 	[33mbl[0m	[35m0[0m <[32mprintf[0m>
  printf("factorial(6): %d.\n", factorial(6));
  d8:	528000c0 	[33mmov[0m	[34mw0[0m, [35m#0x6                   [0m	// #6
  dc:	94000000 	[33mbl[0m	[35m8[0m <[32mfactorial[0m>
  e0:	2a0003e1 	[33mmov[0m	[34mw1[0m, [34mw0[0m
  e4:	90000000 	[33madrp[0m	[34mx0[0m, [35m0[0m <[32msizeofint[0m>
  e8:	91000000 	[33madd[0m	[34mx0[0m, [34mx0[0m, [35m#0x0[0m
  ec:	94000000 	[33mbl[0m	[35m0[0m <[32mprintf[0m>
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  f0:	90000000 	[33madrp[0m	[34mx0[0m, [35m0[0m <[32msizeofint[0m>
  f4:	fd400000 	[33mldr[0m	[34md0[0m, [[34mx0[0m]
  f8:	528000a0 	[33mmov[0m	[34mw0[0m, [35m#0x5                   [0m	// #5
  fc:	94000000 	[33mbl[0m	[35m4c[0m <[32mipow[0m>
 100:	90000000 	[33madrp[0m	[34mx0[0m, [35m0[0m <[32msizeofint[0m>
 104:	91000000 	[33madd[0m	[34mx0[0m, [34mx0[0m, [35m#0x0[0m
 108:	94000000 	[33mbl[0m	[35m0[0m <[32mprintf[0m>
  return 0;
 10c:	52800000 	[33mmov[0m	[34mw0[0m, [35m#0x0                   [0m	// #0
}
 110:	a8c17bfd 	[33mldp[0m	[34mx29[0m, [34mx30[0m, [[34msp[0m], [35m#16[0m
 114:	d65f03c0 	[33mret[0m

Disassembly of section .rodata:

0000000000000000 <.rodata>:
   0:	657a6973 	[33mfnmls[0m	[34mz19.h[0m, [34mp2/m[0m, [34mz11.h[0m, [34mz26.h[0m
   4:	6928666f 	[33mstgp[0m	[34mx15[0m, [34mx25[0m, [[34mx19[0m, [35m#-768[0m]
   8:	3a29746e 	[33m.inst	[0m[35m0x3a29746e[0m ; undefined
   c:	0a642520 	[33mbic[0m	[34mw0[0m, [34mw9[0m, [34mw4[0m, [33mlsr[0m [35m#9[0m
	...
  18:	74636166 	[33m.inst	[0m[35m0x74636166[0m ; undefined
  1c:	6169726f 	[33m.inst	[0m[35m0x6169726f[0m ; undefined
  20:	2936286c 	[33mstp[0m	[34mw12[0m, [34mw10[0m, [[34mx3[0m, [35m#-80[0m]
  24:	6425203a 	[33mfmul[0m	[34mz26.h[0m, [34mz1.h[0m, [34mz5.h[0m[[35m0[0m]
  28:	00000a2e 	[33mudf[0m	[35m#2606[0m
  2c:	00000000 	[33mudf[0m	[35m#0[0m
  30:	355e6950 	[33mcbnz[0m	[34mw16[0m, [35mbcd58[0m <[32mmain[0m[35m+0x[0m[35mbcc9c[0m>
  34:	6c25203a 	[33mstnp[0m	[34md26[0m, [34md8[0m, [[34mx1[0m, [35m#-432[0m]
  38:	00000a66 	[33mudf[0m	[35m#2662[0m
  3c:	00000000 	[33mudf[0m	[35m#0[0m
  40:	54442d18 	[33mbc.hi[0m	[35m885e0[0m <[32mmain[0m[35m+0x[0m[35m88524[0m>  // bc.pmore
  44:	400921fb 	[33m.inst	[0m[35m0x400921fb[0m ; undefined

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
  return sizeof(int);
   0:	00000165 	[33mudf[0m	[35m#357[0m
}
   4:	08010005 	[33mstxrb[0m	[34mw1[0m, [34mw5[0m, [[34mx0[0m]
{
   8:	00000000 	[33mudf[0m	[35m#0[0m
   c:	00000005 	[33mudf[0m	[35m#5[0m
  int r = 1;
  10:	00001d00 	[33mudf[0m	[35m#7424[0m
	...
    r *= n--;
  20:	01180000 	[33m.inst	[0m[35m0x01180000[0m ; undefined
	...
  2c:	08010000 	[33mstxrb[0m	[34mw1[0m, [34mw0[0m, [[34mx0[0m]
  30:	00000007 	[33mudf[0m	[35m#7[0m
  while(n > 1)
  34:	05040600 	[33m.inst	[0m[35m0x05040600[0m ; undefined
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
  54:	00000000 	[33mudf[0m	[35m#0[0m
  double res = 1, tmp = base;
  58:	00050201 	[33m.inst	[0m[35m0x00050201[0m ; undefined
  5c:	01000000 	[33m.inst	[0m[35m0x01000000[0m ; undefined
  60:	00000508 	[33mudf[0m	[35m#1288[0m
  64:	01010000 	[33m.inst	[0m[35m0x01010000[0m ; undefined
  while(pow)
  68:	00000008 	[33mudf[0m	[35m#8[0m
    if(pow & 1)
  6c:	00660700 	[33m.inst	[0m[35m0x00660700[0m ; undefined
  70:	00080000 	[33m.inst	[0m[35m0x00080000[0m ; undefined
  74:	02000000 	[33m.inst	[0m[35m0x02000000[0m ; undefined
  78:	350c0164 	[33mcbnz[0m	[34mw4[0m, [35m180a4[0m <[32mmain[0m[35m+0x[0m[35m17fe8[0m>
      res *= tmp;
  7c:	8a000000 	[33mand[0m	[34mx0[0m, [34mx0[0m, [34mx0[0m
  80:	09000000 	[33m.inst	[0m[35m0x09000000[0m ; undefined
  84:	0000008a 	[33mudf[0m	[35m#138[0m
  88:	080b000a 	[33mstxrb[0m	[34mw11[0m, [34mw10[0m, [[34mx0[0m]
    tmp *= tmp;
  8c:	0000006d 	[33mudf[0m	[35m#109[0m
  90:	0000000c 	[33mudf[0m	[35m#12[0m
  94:	051e0100 	[33mmov[0m	[34mz0.b[0m, [34mp14/z[0m, [35m#8[0m
    pow >>= 1;
  98:	00000035 	[33mudf[0m	[35m#53[0m
	...
  while(pow)
  a4:	0000005c 	[33mudf[0m	[35m#92[0m
  a8:	00000000 	[33mudf[0m	[35m#0[0m
  ac:	00039c01 	[33m.inst	[0m[35m0x00039c01[0m ; undefined
  return res;
  b0:	11000000 	[33madd[0m	[34mw0[0m, [34mw0[0m, [35m#0x0[0m
}
  b4:	00010908 	[33m.inst	[0m[35m0x00010908[0m ; undefined
	...
{
  c0:	00007000 	[33mudf[0m	[35m#28672[0m
  printf("sizeof(int): %d\n", sizeofint());
  c4:	00000000 	[33mudf[0m	[35m#0[0m
  c8:	099c0100 	[33m.inst	[0m[35m0x099c0100[0m ; undefined
  cc:	04000001 	[33madd[0m	[34mz1.b[0m, [34mp0/m[0m, [34mz1.b[0m, [34mz0.b[0m
  d0:	00776f70 	[33m.inst	[0m[35m0x00776f70[0m ; undefined
  d4:	00351111 	[33m.inst	[0m[35m0x00351111[0m ; NYI
  printf("factorial(6): %d.\n", factorial(6));
  d8:	91020000 	[33madd[0m	[34mx0[0m, [34mx0[0m, [35m#0x80[0m
  dc:	00000d6c 	[33mudf[0m	[35m#3436[0m
  e0:	11010000 	[33madd[0m	[34mw0[0m, [34mw0[0m, [35m#0x40[0m
  e4:	0001091d 	[33m.inst	[0m[35m0x0001091d[0m ; undefined
  e8:	60910200 	[33m.inst	[0m[35m0x60910200[0m ; undefined
  ec:	73657202 	[33m.inst	[0m[35m0x73657202[0m ; undefined
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  f0:	090a1300 	[33m.inst	[0m[35m0x090a1300[0m ; undefined
  f4:	02000001 	[33m.inst	[0m[35m0x02000001[0m ; undefined
  f8:	74027891 	[33m.inst	[0m[35m0x74027891[0m ; undefined
  fc:	1300706d 	[33msbfx[0m	[34mw13[0m, [34mw3[0m, [35m#0[0m, [35m#29[0m
 100:	00010913 	[33m.inst	[0m[35m0x00010913[0m ; undefined
 104:	70910200 	[33madr[0m	[34mx0[0m, [35mfffffffffff22147[0m <[32mmain[0m[35m+0x[0m[35mfffffffffff2208b[0m>
 108:	04080100 	[33msmax[0m	[34mz0.b[0m, [34mp0/m[0m, [34mz0.b[0m, [34mz8.b[0m
  return 0;
 10c:	00000000 	[33mudf[0m	[35m#0[0m
}
 110:	00000003 	[33mudf[0m	[35m#3[0m
 114:	35050900 	[33mcbnz[0m	[34mw0[0m, [35ma234[0m <[32mmain[0m[35m+0x[0m[35ma178[0m>
	...
 120:	44000000 	[33m.inst	[0m[35m0x44000000[0m ; undefined
 124:	00000000 	[33mudf[0m	[35m#0[0m
 128:	01000000 	[33m.inst	[0m[35m0x01000000[0m ; undefined
 12c:	00014a9c 	[33m.inst	[0m[35m0x00014a9c[0m ; undefined
 130:	006e0400 	[33m.inst	[0m[35m0x006e0400[0m ; undefined
 134:	00351309 	[33m.inst	[0m[35m0x00351309[0m ; NYI
 138:	91020000 	[33madd[0m	[34mx0[0m, [34mx0[0m, [35m#0x80[0m
 13c:	0072026c 	[33m.inst	[0m[35m0x0072026c[0m ; undefined
 140:	0035070b 	[33m.inst	[0m[35m0x0035070b[0m ; NYI
 144:	91020000 	[33madd[0m	[34mx0[0m, [34mx0[0m, [35m#0x80[0m
 148:	000e007c 	[33m.inst	[0m[35m0x000e007c[0m ; undefined
 14c:	01000000 	[33m.inst	[0m[35m0x01000000[0m ; undefined
 150:	00350504 	[33m.inst	[0m[35m0x00350504[0m ; NYI
	...
 15c:	00080000 	[33m.inst	[0m[35m0x00080000[0m ; undefined
 160:	00000000 	[33mudf[0m	[35m#0[0m
 164:	9c010000 	[33mldr[0m	[34mq0[0m, [35m2164[0m <[32mmain[0m[35m+0x[0m[35m20a8[0m>
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
  return sizeof(int);
   0:	0b002401 	[33madd[0m	[34mw1[0m, [34mw0[0m, [34mw0[0m, [33mlsl[0m [35m#9[0m
}
   4:	030b3e0b 	[33m.inst	[0m[35m0x030b3e0b[0m ; undefined
{
   8:	0200000e 	[33m.inst	[0m[35m0x0200000e[0m ; undefined
   c:	08030034 	[33mstxrb[0m	[34mw3[0m, [34mw20[0m, [[34mx1[0m]
  int r = 1;
  10:	3b01213a 	[33m.inst	[0m[35m0x3b01213a[0m ; undefined
  14:	490b390b 	[33m.inst	[0m[35m0x490b390b[0m ; undefined
  while(n > 1)
  18:	00180213 	[33m.inst	[0m[35m0x00180213[0m ; undefined
    r *= n--;
  1c:	012e0300 	[33m.inst	[0m[35m0x012e0300[0m ; undefined
  20:	0e03193f 	[33muzp1[0m	[34mv31.8b[0m, [34mv9.8b[0m, [34mv3.8b[0m
  24:	3b01213a 	[33m.inst	[0m[35m0x3b01213a[0m ; undefined
  28:	270b390b 	[33m.inst	[0m[35m0x270b390b[0m ; undefined
  2c:	11134919 	[33madd[0m	[34mw25[0m, [34mw8[0m, [35m#0x4d2[0m
  30:	40071201 	[33m.inst	[0m[35m0x40071201[0m ; undefined
  while(n > 1)
  34:	01197a18 	[33m.inst	[0m[35m0x01197a18[0m ; undefined
  38:	04000013 	[33madd[0m	[34mz19.b[0m, [34mp0/m[0m, [34mz19.b[0m, [34mz0.b[0m
  3c:	08030005 	[33mstxrb[0m	[34mw3[0m, [34mw5[0m, [[34mx0[0m]
  return r;
  40:	3b01213a 	[33m.inst	[0m[35m0x3b01213a[0m ; undefined
}
  44:	490b390b 	[33m.inst	[0m[35m0x490b390b[0m ; undefined
  48:	00180213 	[33m.inst	[0m[35m0x00180213[0m ; undefined
{
  4c:	01110500 	[33m.inst	[0m[35m0x01110500[0m ; undefined
  50:	0b130e25 	[33madd[0m	[34mw5[0m, [34mw17[0m, [34mw19[0m, [33mlsl[0m [35m#3[0m
  54:	1f1b1f03 	[33mfmadd[0m	[34ms3[0m, [34ms24[0m, [34ms27[0m, [34ms7[0m
  double res = 1, tmp = base;
  58:	07120111 	[33m.inst	[0m[35m0x07120111[0m ; undefined
  5c:	00001710 	[33mudf[0m	[35m#5904[0m
  60:	0b002406 	[33madd[0m	[34mw6[0m, [34mw0[0m, [34mw0[0m, [33mlsl[0m [35m#9[0m
  64:	030b3e0b 	[33m.inst	[0m[35m0x030b3e0b[0m ; undefined
  while(pow)
  68:	07000008 	[33m.inst	[0m[35m0x07000008[0m ; undefined
    if(pow & 1)
  6c:	13490026 	[33m.inst	[0m[35m0x13490026[0m ; undefined
  70:	2e080000 	[33mext[0m	[34mv0.8b[0m, [34mv0.8b[0m, [34mv8.8b[0m, [35m#0[0m
  74:	03193f01 	[33m.inst	[0m[35m0x03193f01[0m ; undefined
  78:	3b0b3a0e 	[33m.inst	[0m[35m0x3b0b3a0e[0m ; undefined
      res *= tmp;
  7c:	270b3905 	[33m.inst	[0m[35m0x270b3905[0m ; undefined
  80:	3c134919 	[33m.inst	[0m[35m0x3c134919[0m ; undefined
  84:	00130119 	[33m.inst	[0m[35m0x00130119[0m ; undefined
  88:	00050900 	[33m.inst	[0m[35m0x00050900[0m ; undefined
    tmp *= tmp;
  8c:	00001349 	[33mudf[0m	[35m#4937[0m
  90:	0000180a 	[33mudf[0m	[35m#6154[0m
  94:	000f0b00 	[33m.inst	[0m[35m0x000f0b00[0m ; undefined
    pow >>= 1;
  98:	13490b0b 	[33m.inst	[0m[35m0x13490b0b[0m ; undefined
  9c:	2e0c0000 	[33mext[0m	[34mv0.8b[0m, [34mv0.8b[0m, [34mv12.8b[0m, [35m#0[0m
  a0:	03193f00 	[33m.inst	[0m[35m0x03193f00[0m ; undefined
  while(pow)
  a4:	3b0b3a0e 	[33m.inst	[0m[35m0x3b0b3a0e[0m ; undefined
  a8:	490b390b 	[33m.inst	[0m[35m0x490b390b[0m ; undefined
  ac:	12011113 	[33mand[0m	[34mw19[0m, [34mw8[0m, [35m#0x8000000f[0m
  return res;
  b0:	7c184007 	[33mstur[0m	[34mh7[0m, [[34mx0[0m, [35m#-124[0m]
}
  b4:	0d000019 	[33mst1[0m	{[34mv25.b[0m}[[35m0[0m], [[34mx0[0m]
  b8:	0e030005 	[33mtbl[0m	[34mv5.8b[0m, {[34mv0.16b[0m}, [34mv3.8b[0m
{
  bc:	0b3b0b3a 	[33madd[0m	[34mw26[0m, [34mw25[0m, [34mw27[0m, [33muxtb[0m [35m#2[0m
  c0:	13490b39 	[33m.inst	[0m[35m0x13490b39[0m ; undefined
  printf("sizeof(int): %d\n", sizeofint());
  c4:	00001802 	[33mudf[0m	[35m#6146[0m
  c8:	3f002e0e 	[33m.inst	[0m[35m0x3f002e0e[0m ; undefined
  cc:	3a0e0319 	[33madcs[0m	[34mw25[0m, [34mw24[0m, [34mw14[0m
  d0:	390b3b0b 	[33mstrb[0m	[34mw11[0m, [[34mx24[0m, [35m#718[0m]
  d4:	1113490b 	[33madd[0m	[34mw11[0m, [34mw8[0m, [35m#0x4d2[0m
  printf("factorial(6): %d.\n", factorial(6));
  d8:	40071201 	[33m.inst	[0m[35m0x40071201[0m ; undefined
  dc:	00197a18 	[33m.inst	[0m[35m0x00197a18[0m ; undefined
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
  18:	00000118 	[33mudf[0m	[35m#280[0m
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
  return sizeof(int);
   0:	000000a9 	[33mudf[0m	[35m#169[0m
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
  4c:	130a0516 	[33msbfiz[0m	[34mw22[0m, [34mw8[0m, [35m#22[0m, [35m#2[0m
  50:	23210105 	[33m.inst	[0m[35m0x23210105[0m ; undefined
  54:	052f0705 	[33mext[0m	[34mz5.b[0m, [34mz5.b[0m, [34mz24.b[0m, [35m#121[0m
  double res = 1, tmp = base;
  58:	0b052f08 	[33madd[0m	[34mw8[0m, [34mw24[0m, [34mw5[0m, [33mlsl[0m [35m#11[0m
  5c:	3c070521 	[33mstr[0m	[34mb1[0m, [[34mx9[0m], [35m#112[0m
  60:	053b0b05 	[33mext[0m	[34mz5.b[0m, [34mz5.b[0m, [34mz24.b[0m, [35m#218[0m
  64:	01053e0a 	[33m.inst	[0m[35m0x01053e0a[0m ; undefined
  while(pow)
  68:	0a053121 	[33mand[0m	[34mw1[0m, [34mw9[0m, [34mw5[0m, [33mlsl[0m [35m#12[0m
    if(pow & 1)
  6c:	2e13053d 	[33m.inst	[0m[35m0x2e13053d[0m ; undefined
  70:	052f0805 	[33mext[0m	[34mz5.b[0m, [34mz5.b[0m, [34mz0.b[0m, [35m#122[0m
  74:	0705220c 	[33m.inst	[0m[35m0x0705220c[0m ; undefined
  78:	2f0b052e 	[33mushr[0m	[34mv14.8b[0m, [34mv9.8b[0m, [35m#5[0m
      res *= tmp;
  7c:	3d4b0905 	[33mldr[0m	[34mb5[0m, [[34mx8[0m, [35m#706[0m]
  80:	430a0537 	[33m.inst	[0m[35m0x430a0537[0m ; undefined
  84:	31210105 	[33madds[0m	[34mw5[0m, [34mw8[0m, [35m#0x840[0m
  88:	002f0305 	[33m.inst	[0m[35m0x002f0305[0m ; NYI
    tmp *= tmp;
  8c:	06010402 	[33m.inst	[0m[35m0x06010402[0m ; undefined
  90:	004b0620 	[33m.inst	[0m[35m0x004b0620[0m ; undefined
  94:	06010402 	[33m.inst	[0m[35m0x06010402[0m ; undefined
    pow >>= 1;
  98:	004b062e 	[33m.inst	[0m[35m0x004b062e[0m ; undefined
  9c:	06010402 	[33m.inst	[0m[35m0x06010402[0m ; undefined
  a0:	060a054a 	[33m.inst	[0m[35m0x060a054a[0m ; undefined
  while(pow)
  a4:	2101053d 	[33m.inst	[0m[35m0x2101053d[0m ; undefined
  a8:	01000202 	[33m.inst	[0m[35m0x01000202[0m ; undefined
  ac:	Address 0xac is out of bounds.


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
  34:	6200746e 	[33m.inst	[0m[35m0x6200746e[0m ; undefined
  38:	00657361 	[33m.inst	[0m[35m0x00657361[0m ; undefined
  3c:	72616863 	[33m.inst	[0m[35m0x72616863[0m ; undefined
  return r;
  40:	554e4700 	[33m.inst	[0m[35m0x554e4700[0m ; undefined
}
  44:	37314320 	[33mtbnz[0m	[34mw0[0m, [35m#6[0m, [35m28a8[0m <[32mmain[0m[35m+0x[0m[35m27ec[0m>
  48:	2e333120 	[33musubw[0m	[34mv0.8h[0m, [34mv9.8h[0m, [34mv19.8b[0m
{
  4c:	20302e31 	[33m.inst	[0m[35m0x20302e31[0m ; undefined
  50:	72616d2d 	[33m.inst	[0m[35m0x72616d2d[0m ; undefined
  54:	613d6863 	[33m.inst	[0m[35m0x613d6863[0m ; undefined
  double res = 1, tmp = base;
  58:	39766d72 	[33mldrb[0m	[34mw18[0m, [[34mx11[0m, [35m#3483[0m]
  5c:	2d20612d 	[33mstp[0m	[34ms13[0m, [34ms24[0m, [[34mx9[0m, [35m#-256[0m]
  60:	74696c6d 	[33m.inst	[0m[35m0x74696c6d[0m ; undefined
  64:	2d656c74 	[33mldp[0m	[34ms20[0m, [34ms27[0m, [[34mx3[0m, [35m#-216[0m]
  while(pow)
  68:	69646e65 	[33mldpsw[0m	[34mx5[0m, [34mx27[0m, [[34mx19[0m, [35m#-224[0m]
    if(pow & 1)
  6c:	2d206e61 	[33mstp[0m	[34ms1[0m, [34ms27[0m, [[34mx19[0m, [35m#-256[0m]
  70:	6962616d 	[33mldpsw[0m	[34mx13[0m, [34mx24[0m, [[34mx11[0m, [35m#-240[0m]
  74:	36706c3d 	[33mtbz[0m	[34mw29[0m, [35m#14[0m, [35mdf8[0m <[32mmain[0m[35m+0x[0m[35md3c[0m>
  78:	672d2034 	[33m.inst	[0m[35m0x672d2034[0m ; undefined
      res *= tmp;
  7c:	69616d00 	[33mldpsw[0m	[34mx0[0m, [34mx27[0m, [[34mx8[0m, [35m#-248[0m]
  80:	6f6c006e 	[33mmla[0m	[34mv14.8h[0m, [34mv3.8h[0m, [34mv12.h[0m[[35m2[0m]
  84:	6920676e 	[33mstgp[0m	[34mx14[0m, [34mx25[0m, [[34mx27[0m, [35m#-1024[0m]
  88:	6600746e 	[33m.inst	[0m[35m0x6600746e[0m ; undefined
    tmp *= tmp;
  8c:	6f746361 	[33mumlsl2[0m	[34mv1.4s[0m, [34mv27.8h[0m, [34mv4.h[0m[[35m3[0m]
  90:	6c616972 	[33mldnp[0m	[34md18[0m, [34md26[0m, [[34mx11[0m, [35m#-496[0m]
  94:	756f6400 	[33m.inst	[0m[35m0x756f6400[0m ; undefined
    pow >>= 1;
  98:	00656c62 	[33m.inst	[0m[35m0x00656c62[0m ; undefined
  9c:	726f6873 	[33m.inst	[0m[35m0x726f6873[0m ; undefined
  a0:	6e752074 	[33musubl2[0m	[34mv20.4s[0m, [34mv3.8h[0m, [34mv21.8h[0m
  while(pow)
  a4:	6e676973 	[33m.inst	[0m[35m0x6e676973[0m ; undefined
  a8:	69206465 	[33mstgp[0m	[34mx5[0m, [34mx25[0m, [[34mx3[0m, [35m#-1024[0m]
  ac:	7000746e 	[33madr[0m	[34mx14[0m, [35mf3b[0m <[32mmain[0m[35m+0x[0m[35me7f[0m>
  return res;
  b0:	746e6972 	[33m.inst	[0m[35m0x746e6972[0m ; undefined
}
  b4:	68730066 	[33m.inst	[0m[35m0x68730066[0m ; undefined
  b8:	2074726f 	[33m.inst	[0m[35m0x2074726f[0m ; undefined
{
  bc:	00746e69 	[33m.inst	[0m[35m0x00746e69[0m ; undefined
  c0:	776f7069 	[33m.inst	[0m[35m0x776f7069[0m ; undefined
  printf("sizeof(int): %d\n", sizeofint());
  c4:	67697300 	[33m.inst	[0m[35m0x67697300[0m ; undefined
  c8:	2064656e 	[33m.inst	[0m[35m0x2064656e[0m ; undefined
  cc:	72616863 	[33m.inst	[0m[35m0x72616863[0m ; undefined
	...

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
  24:	706d6f43 	[33madr[0m	[34mx3[0m, [35mdae0f[0m <[32mmain[0m[35m+0x[0m[35mdad53[0m>
  28:	72657475 	[33m.inst	[0m[35m0x72657475[0m ; undefined
  2c:	6372415f 	[33m.inst	[0m[35m0x6372415f[0m ; undefined
  30:	65746968 	[33mfnmls[0m	[34mz8.h[0m, [34mp2/m[0m, [34mz11.h[0m, [34mz20.h[0m
  while(n > 1)
  34:	72757463 	[33m.inst	[0m[35m0x72757463[0m ; undefined
  38:	50532d65 	[33madr[0m	[34mx5[0m, [35ma65e6[0m <[32mmain[0m[35m+0x[0m[35ma652a[0m>
  3c:	432d5562 	[33m.inst	[0m[35m0x432d5562[0m ; undefined
  return r;
  40:	30352e42 	[33madr[0m	[34mx2[0m, [35m6a609[0m <[32mmain[0m[35m+0x[0m[35m6a54d[0m>
}
  44:	652f3038 	[33m.inst	[0m[35m0x652f3038[0m ; undefined
  48:	706d6178 	[33madr[0m	[34mx24[0m, [35mdac77[0m <[32mmain[0m[35m+0x[0m[35mdabbb[0m>
{
  4c:	2f73656c 	[33m.inst	[0m[35m0x2f73656c[0m ; undefined
  50:	736f7263 	[33m.inst	[0m[35m0x736f7263[0m ; undefined
  54:	6f632d73 	[33m.inst	[0m[35m0x6f632d73[0m ; undefined
  double res = 1, tmp = base;
  58:	6c69706d 	[33mldnp[0m	[34md13[0m, [34md28[0m, [[34mx3[0m, [35m#-368[0m]
  5c:	00676e69 	[33m.inst	[0m[35m0x00676e69[0m ; undefined
  60:	2e656363 	[33mrsubhn[0m	[34mv3.4h[0m, [34mv27.4s[0m, [34mv5.4s[0m
  64:	682f0063 	[33m.inst	[0m[35m0x682f0063[0m ; undefined
  while(pow)
  68:	2f656d6f 	[33m.inst	[0m[35m0x2f656d6f[0m ; undefined
    if(pow & 1)
  6c:	2f5f2f64 	[33m.inst	[0m[35m0x2f5f2f64[0m ; undefined
  70:	65666173 	[33mfnmls[0m	[34mz19.h[0m, [34mp0/m[0m, [34mz11.h[0m, [34mz6.h[0m
  74:	2f66775f 	[33m.inst	[0m[35m0x2f66775f[0m ; undefined
  78:	6b726f77 	[33m.inst	[0m[35m0x6b726f77[0m ; undefined
      res *= tmp;
  7c:	6250532f 	[33m.inst	[0m[35m0x6250532f[0m ; undefined
  80:	6f632f55 	[33m.inst	[0m[35m0x6f632f55[0m ; undefined
  84:	65737275 	[33mfnmls[0m	[34mz21.h[0m, [34mp4/m[0m, [34mz19.h[0m, [34mz19.h[0m
  88:	6f432f73 	[33m.inst	[0m[35m0x6f432f73[0m ; undefined
    tmp *= tmp;
  8c:	7475706d 	[33m.inst	[0m[35m0x7475706d[0m ; undefined
  90:	415f7265 	[33m.inst	[0m[35m0x415f7265[0m ; undefined
  94:	69686372 	[33mldpsw[0m	[34mx18[0m, [34mx24[0m, [[34mx27[0m, [35m#-192[0m]
    pow >>= 1;
  98:	74636574 	[33m.inst	[0m[35m0x74636574[0m ; undefined
  9c:	2d657275 	[33mldp[0m	[34ms21[0m, [34ms28[0m, [[34mx19[0m, [35m#-216[0m]
  a0:	55625053 	[33m.inst	[0m[35m0x55625053[0m ; undefined
  while(pow)
  a4:	2e42432d 	[33m.inst	[0m[35m0x2e42432d[0m ; undefined
  a8:	30383035 	[33madr[0m	[34mx21[0m, [35m706ad[0m <[32mmain[0m[35m+0x[0m[35m705f1[0m>
  ac:	6178652f 	[33m.inst	[0m[35m0x6178652f[0m ; undefined
  return res;
  b0:	656c706d 	[33mfnmls[0m	[34mz13.h[0m, [34mp4/m[0m, [34mz3.h[0m, [34mz12.h[0m
}
  b4:	72632f73 	[33m.inst	[0m[35m0x72632f73[0m ; undefined
  b8:	2d73736f 	[33mldp[0m	[34ms15[0m, [34ms28[0m, [[34mx27[0m, [35m#-104[0m]
{
  bc:	706d6f63 	[33madr[0m	[34mx3[0m, [35mdaeab[0m <[32mmain[0m[35m+0x[0m[35mdadef[0m>
  c0:	6e696c69 	[33mumin[0m	[34mv9.8h[0m, [34mv3.8h[0m, [34mv9.8h[0m
  printf("sizeof(int): %d\n", sizeofint());
  c4:	752f0067 	[33m.inst	[0m[35m0x752f0067[0m ; undefined
  c8:	612f7273 	[33m.inst	[0m[35m0x612f7273[0m ; undefined
  cc:	68637261 	[33m.inst	[0m[35m0x68637261[0m ; undefined
  d0:	6c2d3436 	[33mstnp[0m	[34md22[0m, [34md13[0m, [[34mx1[0m, [35m#-304[0m]
  d4:	78756e69 	[33m.inst	[0m[35m0x78756e69[0m ; undefined
  printf("factorial(6): %d.\n", factorial(6));
  d8:	756e672d 	[33m.inst	[0m[35m0x756e672d[0m ; undefined
  dc:	636e692f 	[33m.inst	[0m[35m0x636e692f[0m ; undefined
  e0:	6564756c 	[33mfnmls[0m	[34mz12.h[0m, [34mp5/m[0m, [34mz11.h[0m, [34mz4.h[0m
  e4:	65636300 	[33mfnmls[0m	[34mz0.h[0m, [34mp0/m[0m, [34mz24.h[0m, [34mz3.h[0m
  e8:	6300632e 	[33m.inst	[0m[35m0x6300632e[0m ; undefined
  ec:	632e6563 	[33m.inst	[0m[35m0x632e6563[0m ; undefined
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
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
  40:	00000014 	[33mudf[0m	[35m#20[0m
  44:	00000044 	[33mudf[0m	[35m#68[0m
  48:	00000000 	[33mudf[0m	[35m#0[0m
  4c:	00000070 	[33mudf[0m	[35m#112[0m
  50:	200e4100 	[33m.inst	[0m[35m0x200e4100[0m ; undefined
  54:	00000e5a 	[33mudf[0m	[35m#3674[0m
  58:	0000001c 	[33mudf[0m	[35m#28[0m
  5c:	0000005c 	[33mudf[0m	[35m#92[0m
  60:	00000000 	[33mudf[0m	[35m#0[0m
  64:	0000005c 	[33mudf[0m	[35m#92[0m
  68:	100e4100 	[33madr[0m	[34mx0[0m, [35m1c888[0m <[32mmain[0m[35m+0x[0m[35m1c7cc[0m>
  6c:	019e029d 	[33m.inst	[0m[35m0x019e029d[0m ; undefined
  70:	0eddde55 	[33m.inst	[0m[35m0x0eddde55[0m ; undefined
  74:	00000000 	[33mudf[0m	[35m#0[0m
