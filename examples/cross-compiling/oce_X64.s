
cce_X64.o:     формат файла elf64-x86-64


Дизассемблирование раздела .text:

0000000000000000 <sizeofint>:
#include <stdio.h>
#define DOUBLE_PI 3.14159265358979323846

int sizeofint()
{
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
  return sizeof(int);
   4:	b8 04 00 00 00       	mov    eax,0x4
}
   9:	5d                   	pop    rbp
   a:	c3                   	ret

000000000000000b <factorial>:

int factorial(int n)
{
   b:	55                   	push   rbp
   c:	48 89 e5             	mov    rbp,rsp
   f:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  int r = 1;
  12:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  while(n > 1)
  19:	eb 12                	jmp    2d <factorial+0x22>
    r *= n--;
  1b:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  1e:	8d 50 ff             	lea    edx,[rax-0x1]
  21:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  24:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  27:	0f af c2             	imul   eax,edx
  2a:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  while(n > 1)
  2d:	83 7d ec 01          	cmp    DWORD PTR [rbp-0x14],0x1
  31:	7f e8                	jg     1b <factorial+0x10>
  return r;
  33:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
}
  36:	5d                   	pop    rbp
  37:	c3                   	ret

0000000000000038 <ipow>:

double ipow(int pow, double base)
{
  38:	55                   	push   rbp
  39:	48 89 e5             	mov    rbp,rsp
  3c:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  3f:	f2 0f 11 45 e0       	movsd  QWORD PTR [rbp-0x20],xmm0
  double res = 1, tmp = base;
  44:	f2 0f 10 05 00 00 00 00 	movsd  xmm0,QWORD PTR [rip+0x0]        # 4c <ipow+0x14>
  4c:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
  51:	f2 0f 10 45 e0       	movsd  xmm0,QWORD PTR [rbp-0x20]
  56:	f2 0f 11 45 f8       	movsd  QWORD PTR [rbp-0x8],xmm0
  while(pow)
  5b:	eb 2a                	jmp    87 <ipow+0x4f>
  {
    if(pow & 1)
  5d:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  60:	83 e0 01             	and    eax,0x1
  63:	85 c0                	test   eax,eax
  65:	74 0f                	je     76 <ipow+0x3e>
      res *= tmp;
  67:	f2 0f 10 45 f0       	movsd  xmm0,QWORD PTR [rbp-0x10]
  6c:	f2 0f 59 45 f8       	mulsd  xmm0,QWORD PTR [rbp-0x8]
  71:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
    tmp *= tmp;
  76:	f2 0f 10 45 f8       	movsd  xmm0,QWORD PTR [rbp-0x8]
  7b:	f2 0f 59 c0          	mulsd  xmm0,xmm0
  7f:	f2 0f 11 45 f8       	movsd  QWORD PTR [rbp-0x8],xmm0
    pow >>= 1;
  84:	d1 7d ec             	sar    DWORD PTR [rbp-0x14],1
  while(pow)
  87:	83 7d ec 00          	cmp    DWORD PTR [rbp-0x14],0x0
  8b:	75 d0                	jne    5d <ipow+0x25>
  }
  return res;
  8d:	f2 0f 10 45 f0       	movsd  xmm0,QWORD PTR [rbp-0x10]
  92:	66 48 0f 7e c0       	movq   rax,xmm0
}
  97:	66 48 0f 6e c0       	movq   xmm0,rax
  9c:	5d                   	pop    rbp
  9d:	c3                   	ret

000000000000009e <main>:

int main()
{
  9e:	55                   	push   rbp
  9f:	48 89 e5             	mov    rbp,rsp
  printf("sizeof(int): %d\n", sizeofint());
  a2:	b8 00 00 00 00       	mov    eax,0x0
  a7:	e8 00 00 00 00       	call   ac <main+0xe>
  ac:	89 c6                	mov    esi,eax
  ae:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # b5 <main+0x17>
  b5:	48 89 c7             	mov    rdi,rax
  b8:	b8 00 00 00 00       	mov    eax,0x0
  bd:	e8 00 00 00 00       	call   c2 <main+0x24>
  printf("factorial(6): %d.\n", factorial(6));
  c2:	bf 06 00 00 00       	mov    edi,0x6
  c7:	e8 00 00 00 00       	call   cc <main+0x2e>
  cc:	89 c6                	mov    esi,eax
  ce:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # d5 <main+0x37>
  d5:	48 89 c7             	mov    rdi,rax
  d8:	b8 00 00 00 00       	mov    eax,0x0
  dd:	e8 00 00 00 00       	call   e2 <main+0x44>
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  e2:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # e9 <main+0x4b>
  e9:	66 48 0f 6e c0       	movq   xmm0,rax
  ee:	bf 05 00 00 00       	mov    edi,0x5
  f3:	e8 00 00 00 00       	call   f8 <main+0x5a>
  f8:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # ff <main+0x61>
  ff:	48 89 c7             	mov    rdi,rax
 102:	b8 01 00 00 00       	mov    eax,0x1
 107:	e8 00 00 00 00       	call   10c <main+0x6e>
  return 0;
 10c:	b8 00 00 00 00       	mov    eax,0x0
}
 111:	5d                   	pop    rbp
 112:	c3                   	ret

Дизассемблирование раздела .rodata:

0000000000000000 <.rodata>:
   0:	73 69                	jae    6b <ipow+0x33>
   2:	7a 65                	jp     69 <ipow+0x31>
   4:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   5:	66 28 69 6e          	data16 sub BYTE PTR [rcx+0x6e],ch
   9:	74 29                	je     34 <.rodata+0x34>
   b:	3a 20                	cmp    ah,BYTE PTR [rax]
   d:	25 64 0a 00 66       	and    eax,0x66000a64
  12:	61                   	(bad)
  13:	63 74 6f 72          	movsxd esi,DWORD PTR [rdi+rbp*2+0x72]
  17:	69 61 6c 28 36 29 3a 	imul   esp,DWORD PTR [rcx+0x6c],0x3a293628
  1e:	20 25 64 2e 0a 00    	and    BYTE PTR [rip+0xa2e64],ah        # a2e88 <main+0xa2dea>
  24:	50                   	push   rax
  25:	69 5e 35 3a 20 25 6c 	imul   ebx,DWORD PTR [rsi+0x35],0x6c25203a
  2c:	66 0a 00             	data16 or al,BYTE PTR [rax]
  2f:	00 00                	add    BYTE PTR [rax],al
  31:	00 00                	add    BYTE PTR [rax],al
  33:	00 00                	add    BYTE PTR [rax],al
  35:	00 f0                	add    al,dh
  37:	3f                   	(bad)
  38:	18 2d 44 54 fb 21    	sbb    BYTE PTR [rip+0x21fb5444],ch        # 21fb5482 <main+0x21fb53e4>
  3e:	09                   	.byte 0x9
  3f:	40                   	rex

Дизассемблирование раздела .debug_info:

0000000000000000 <.debug_info>:
{
   0:	65 01 00             	add    DWORD PTR gs:[rax],eax
   3:	00 05 00 01 08 00    	add    BYTE PTR [rip+0x80100],al        # 80109 <main+0x8006b>
}
   9:	00 00                	add    BYTE PTR [rax],al
{
   b:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 11 <.debug_info+0x11>
  11:	1d 00 00 00 00       	sbb    eax,0x0
	...
    r *= n--;
  22:	13 01                	adc    eax,DWORD PTR [rcx]
	...
  2c:	00 00                	add    BYTE PTR [rax],al
  while(n > 1)
  2e:	01 08                	add    DWORD PTR [rax],ecx
  30:	07                   	(bad)
  31:	00 00                	add    BYTE PTR [rax],al
  return r;
  33:	00 00                	add    BYTE PTR [rax],al
  35:	01 04 07             	add    DWORD PTR [rdi+rax*1],eax
{
  38:	00 00                	add    BYTE PTR [rax],al
  3a:	00 00                	add    BYTE PTR [rax],al
  3c:	01 01                	add    DWORD PTR [rcx],eax
  3e:	08 00                	or     BYTE PTR [rax],al
  40:	00 00                	add    BYTE PTR [rax],al
  42:	00 01                	add    BYTE PTR [rcx],al
  double res = 1, tmp = base;
  44:	02 07                	add    al,BYTE PTR [rdi]
  46:	00 00                	add    BYTE PTR [rax],al
  48:	00 00                	add    BYTE PTR [rax],al
  4a:	01 01                	add    DWORD PTR [rcx],eax
  4c:	06                   	(bad)
  4d:	00 00                	add    BYTE PTR [rax],al
  4f:	00 00                	add    BYTE PTR [rax],al
  51:	01 02                	add    DWORD PTR [rdx],eax
  53:	05 00 00 00 00       	add    eax,0x0
  58:	06                   	(bad)
  59:	04 05                	add    al,0x5
  while(pow)
  5b:	69 6e 74 00 01 08 05 	imul   ebp,DWORD PTR [rsi+0x74],0x5080100
    if(pow & 1)
  62:	00 00                	add    BYTE PTR [rax],al
  64:	00 00                	add    BYTE PTR [rax],al
  66:	01 01                	add    DWORD PTR [rcx],eax
      res *= tmp;
  68:	06                   	(bad)
  69:	00 00                	add    BYTE PTR [rax],al
  6b:	00 00                	add    BYTE PTR [rax],al
  6d:	07                   	(bad)
  6e:	66 00 00             	data16 add BYTE PTR [rax],al
  71:	00 08                	add    BYTE PTR [rax],cl
  73:	00 00                	add    BYTE PTR [rax],al
  75:	00 00                	add    BYTE PTR [rax],al
    tmp *= tmp;
  77:	02 64 01 0c          	add    ah,BYTE PTR [rcx+rax*1+0xc]
  7b:	58                   	pop    rax
  7c:	00 00                	add    BYTE PTR [rax],al
  7e:	00 8a 00 00 00 09    	add    BYTE PTR [rdx+0x9000000],cl
    pow >>= 1;
  84:	8a 00                	mov    al,BYTE PTR [rax]
  86:	00 00                	add    BYTE PTR [rax],al
  while(pow)
  88:	0a 00                	or     al,BYTE PTR [rax]
  8a:	0b 08                	or     ecx,DWORD PTR [rax]
  8c:	6d                   	ins    DWORD PTR es:[rdi],dx
  return res;
  8d:	00 00                	add    BYTE PTR [rax],al
  8f:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
  92:	00 00                	add    BYTE PTR [rax],al
  94:	00 01                	add    BYTE PTR [rcx],al
  96:	1e                   	(bad)
}
  97:	05 58 00 00 00       	add    eax,0x58
	...
  printf("sizeof(int): %d\n", sizeofint());
  a4:	75 00                	jne    a6 <.debug_info+0xa6>
  a6:	00 00                	add    BYTE PTR [rax],al
  a8:	00 00                	add    BYTE PTR [rax],al
  aa:	00 00                	add    BYTE PTR [rax],al
  ac:	01 9c 03 00 00 00 00 	add    DWORD PTR [rbx+rax*1+0x0],ebx
  b3:	11 08                	adc    DWORD PTR [rax],ecx
  b5:	09 01                	or     DWORD PTR [rcx],eax
	...
  bf:	00 00                	add    BYTE PTR [rax],al
  c1:	66 00 00             	data16 add BYTE PTR [rax],al
  printf("factorial(6): %d.\n", factorial(6));
  c4:	00 00                	add    BYTE PTR [rax],al
  c6:	00 00                	add    BYTE PTR [rax],al
  c8:	00 01                	add    BYTE PTR [rcx],al
  ca:	9c                   	pushf
  cb:	09 01                	or     DWORD PTR [rcx],eax
  cd:	00 00                	add    BYTE PTR [rax],al
  cf:	04 70                	add    al,0x70
  d1:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  d2:	77 00                	ja     d4 <.debug_info+0xd4>
  d4:	11 11                	adc    DWORD PTR [rcx],edx
  d6:	58                   	pop    rax
  d7:	00 00                	add    BYTE PTR [rax],al
  d9:	00 02                	add    BYTE PTR [rdx],al
  db:	91                   	xchg   ecx,eax
  dc:	5c                   	pop    rsp
  dd:	0d 00 00 00 00       	or     eax,0x0
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  e2:	01 11                	add    DWORD PTR [rcx],edx
  e4:	1d 09 01 00 00       	sbb    eax,0x109
  e9:	02 91 50 02 72 65    	add    dl,BYTE PTR [rcx+0x65720250]
  ef:	73 00                	jae    f1 <.debug_info+0xf1>
  f1:	13 0a                	adc    ecx,DWORD PTR [rdx]
  f3:	09 01                	or     DWORD PTR [rcx],eax
  f5:	00 00                	add    BYTE PTR [rax],al
  f7:	02 91 60 02 74 6d    	add    dl,BYTE PTR [rcx+0x6d740260]
  fd:	70 00                	jo     ff <.debug_info+0xff>
  ff:	13 13                	adc    edx,DWORD PTR [rbx]
 101:	09 01                	or     DWORD PTR [rcx],eax
 103:	00 00                	add    BYTE PTR [rax],al
 105:	02 91 68 00 01 08    	add    dl,BYTE PTR [rcx+0x8010068]
 10b:	04 00                	add    al,0x0
  return 0;
 10d:	00 00                	add    BYTE PTR [rax],al
 10f:	00 03                	add    BYTE PTR [rbx],al
}
 111:	00 00                	add    BYTE PTR [rax],al
 113:	00 00                	add    BYTE PTR [rax],al
 115:	09 05 58 00 00 00    	or     DWORD PTR [rip+0x58],eax        # 173 <main+0xd5>
	...
 123:	2d 00 00 00 00       	sub    eax,0x0
 128:	00 00                	add    BYTE PTR [rax],al
 12a:	00 01                	add    BYTE PTR [rcx],al
 12c:	9c                   	pushf
 12d:	4a 01 00             	rex.WX add QWORD PTR [rax],rax
 130:	00 04 6e             	add    BYTE PTR [rsi+rbp*2],al
 133:	00 09                	add    BYTE PTR [rcx],cl
 135:	13 58 00             	adc    ebx,DWORD PTR [rax+0x0]
 138:	00 00                	add    BYTE PTR [rax],al
 13a:	02 91 5c 02 72 00    	add    dl,BYTE PTR [rcx+0x72025c]
 140:	0b 07                	or     eax,DWORD PTR [rdi]
 142:	58                   	pop    rax
 143:	00 00                	add    BYTE PTR [rax],al
 145:	00 02                	add    BYTE PTR [rdx],al
 147:	91                   	xchg   ecx,eax
 148:	6c                   	ins    BYTE PTR es:[rdi],dx
 149:	00 0e                	add    BYTE PTR [rsi],cl
 14b:	00 00                	add    BYTE PTR [rax],al
 14d:	00 00                	add    BYTE PTR [rax],al
 14f:	01 04 05 58 00 00 00 	add    DWORD PTR [rax*1+0x58],eax
	...
 15e:	0b 00                	or     eax,DWORD PTR [rax]
 160:	00 00                	add    BYTE PTR [rax],al
 162:	00 00                	add    BYTE PTR [rax],al
 164:	00 00                	add    BYTE PTR [rax],al
 166:	01                   	.byte 0x1
 167:	9c                   	pushf
	...

Дизассемблирование раздела .debug_abbrev:

0000000000000000 <.debug_abbrev>:
{
   0:	01 24 00             	add    DWORD PTR [rax+rax*1],esp
   3:	0b 0b                	or     ecx,DWORD PTR [rbx]
  return sizeof(int);
   5:	3e 0b 03             	ds or  eax,DWORD PTR [rbx]
   8:	0e                   	(bad)
}
   9:	00 00                	add    BYTE PTR [rax],al
{
   b:	02 34 00             	add    dh,BYTE PTR [rax+rax*1]
   e:	03 08                	add    ecx,DWORD PTR [rax]
  10:	3a 21                	cmp    ah,BYTE PTR [rcx]
  int r = 1;
  12:	01 3b                	add    DWORD PTR [rbx],edi
  14:	0b 39                	or     edi,DWORD PTR [rcx]
  16:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
  while(n > 1)
  19:	02 18                	add    bl,BYTE PTR [rax]
    r *= n--;
  1b:	00 00                	add    BYTE PTR [rax],al
  1d:	03 2e                	add    ebp,DWORD PTR [rsi]
  1f:	01 3f                	add    DWORD PTR [rdi],edi
  21:	19 03                	sbb    DWORD PTR [rbx],eax
  23:	0e                   	(bad)
  24:	3a 21                	cmp    ah,BYTE PTR [rcx]
  26:	01 3b                	add    DWORD PTR [rbx],edi
  28:	0b 39                	or     edi,DWORD PTR [rcx]
  2a:	0b 27                	or     esp,DWORD PTR [rdi]
  2c:	19 49 13             	sbb    DWORD PTR [rcx+0x13],ecx
  while(n > 1)
  2f:	11 01                	adc    DWORD PTR [rcx],eax
  31:	12 07                	adc    al,BYTE PTR [rdi]
  return r;
  33:	40 18 7a 19          	sbb    BYTE PTR [rdx+0x19],dil
}
  37:	01 13                	add    DWORD PTR [rbx],edx
{
  39:	00 00                	add    BYTE PTR [rax],al
  3b:	04 05                	add    al,0x5
  3d:	00 03                	add    BYTE PTR [rbx],al
  3f:	08 3a                	or     BYTE PTR [rdx],bh
  41:	21 01                	and    DWORD PTR [rcx],eax
  43:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  double res = 1, tmp = base;
  45:	39 0b                	cmp    DWORD PTR [rbx],ecx
  47:	49 13 02             	adc    rax,QWORD PTR [r10]
  4a:	18 00                	sbb    BYTE PTR [rax],al
  4c:	00 05 11 01 25 0e    	add    BYTE PTR [rip+0xe250111],al        # e250163 <main+0xe2500c5>
  52:	13 0b                	adc    ecx,DWORD PTR [rbx]
  54:	03 1f                	add    ebx,DWORD PTR [rdi]
  56:	1b 1f                	sbb    ebx,DWORD PTR [rdi]
  58:	11 01                	adc    DWORD PTR [rcx],eax
  5a:	12 07                	adc    al,BYTE PTR [rdi]
  while(pow)
  5c:	10 17                	adc    BYTE PTR [rdi],dl
    if(pow & 1)
  5e:	00 00                	add    BYTE PTR [rax],al
  60:	06                   	(bad)
  61:	24 00                	and    al,0x0
  63:	0b 0b                	or     ecx,DWORD PTR [rbx]
  65:	3e 0b 03             	ds or  eax,DWORD PTR [rbx]
      res *= tmp;
  68:	08 00                	or     BYTE PTR [rax],al
  6a:	00 07                	add    BYTE PTR [rdi],al
  6c:	26 00 49 13          	es add BYTE PTR [rcx+0x13],cl
  70:	00 00                	add    BYTE PTR [rax],al
  72:	08 2e                	or     BYTE PTR [rsi],ch
  74:	01 3f                	add    DWORD PTR [rdi],edi
    tmp *= tmp;
  76:	19 03                	sbb    DWORD PTR [rbx],eax
  78:	0e                   	(bad)
  79:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  7b:	3b 05 39 0b 27 19    	cmp    eax,DWORD PTR [rip+0x19270b39]        # 19270bba <main+0x19270b1c>
  81:	49 13 3c 19          	adc    rdi,QWORD PTR [r9+rbx*1]
    pow >>= 1;
  85:	01 13                	add    DWORD PTR [rbx],edx
  while(pow)
  87:	00 00                	add    BYTE PTR [rax],al
  89:	09 05 00 49 13 00    	or     DWORD PTR [rip+0x134900],eax        # 13498f <main+0x1348f1>
  return res;
  8f:	00 0a                	add    BYTE PTR [rdx],cl
  91:	18 00                	sbb    BYTE PTR [rax],al
  93:	00 00                	add    BYTE PTR [rax],al
  95:	0b 0f                	or     ecx,DWORD PTR [rdi]
}
  97:	00 0b                	add    BYTE PTR [rbx],cl
  99:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
  9c:	00 00                	add    BYTE PTR [rax],al
{
  9e:	0c 2e                	or     al,0x2e
  a0:	00 3f                	add    BYTE PTR [rdi],bh
  printf("sizeof(int): %d\n", sizeofint());
  a2:	19 03                	sbb    DWORD PTR [rbx],eax
  a4:	0e                   	(bad)
  a5:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  a7:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  a9:	39 0b                	cmp    DWORD PTR [rbx],ecx
  ab:	49 13 11             	adc    rdx,QWORD PTR [r9]
  ae:	01 12                	add    DWORD PTR [rdx],edx
  b0:	07                   	(bad)
  b1:	40 18 7c 19 00       	sbb    BYTE PTR [rcx+rbx*1+0x0],dil
  b6:	00 0d 05 00 03 0e    	add    BYTE PTR [rip+0xe030005],cl        # e0300c1 <main+0xe030023>
  bc:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  be:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  c0:	39 0b                	cmp    DWORD PTR [rbx],ecx
  printf("factorial(6): %d.\n", factorial(6));
  c2:	49 13 02             	adc    rax,QWORD PTR [r10]
  c5:	18 00                	sbb    BYTE PTR [rax],al
  c7:	00 0e                	add    BYTE PTR [rsi],cl
  c9:	2e 00 3f             	cs add BYTE PTR [rdi],bh
  cc:	19 03                	sbb    DWORD PTR [rbx],eax
  ce:	0e                   	(bad)
  cf:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  d1:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  d3:	39 0b                	cmp    DWORD PTR [rbx],ecx
  d5:	49 13 11             	adc    rdx,QWORD PTR [r9]
  d8:	01 12                	add    DWORD PTR [rdx],edx
  da:	07                   	(bad)
  db:	40 18 7a 19          	sbb    BYTE PTR [rdx+0x19],dil
  df:	00 00                	add    BYTE PTR [rax],al
	...

Дизассемблирование раздела .debug_aranges:

0000000000000000 <.debug_aranges>:
{
   0:	2c 00                	sub    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
  return sizeof(int);
   4:	02 00                	add    al,BYTE PTR [rax]
   6:	00 00                	add    BYTE PTR [rax],al
   8:	00 00                	add    BYTE PTR [rax],al
}
   a:	08 00                	or     BYTE PTR [rax],al
	...
  int r = 1;
  18:	13 01                	adc    eax,DWORD PTR [rcx]
	...

Дизассемблирование раздела .debug_line:

0000000000000000 <.debug_line>:
{
   0:	b4 00                	mov    ah,0x0
   2:	00 00                	add    BYTE PTR [rax],al
  return sizeof(int);
   4:	05 00 08 00 33       	add    eax,0x33000800
}
   9:	00 00                	add    BYTE PTR [rax],al
{
   b:	00 01                	add    BYTE PTR [rcx],al
   d:	01 01                	add    DWORD PTR [rcx],eax
   f:	fb                   	sti
  10:	0e                   	(bad)
  11:	0d 00 01 01 01       	or     eax,0x1010100
  int r = 1;
  16:	01 00                	add    DWORD PTR [rax],eax
  18:	00 00                	add    BYTE PTR [rax],al
  while(n > 1)
  1a:	01 00                	add    DWORD PTR [rax],eax
    r *= n--;
  1c:	00 01                	add    BYTE PTR [rcx],al
  1e:	01 01                	add    DWORD PTR [rcx],eax
  20:	1f                   	(bad)
  21:	02 00                	add    al,BYTE PTR [rax]
  23:	00 00                	add    BYTE PTR [rax],al
  25:	00 00                	add    BYTE PTR [rax],al
  27:	00 00                	add    BYTE PTR [rax],al
  29:	00 02                	add    BYTE PTR [rdx],al
  2b:	01 1f                	add    DWORD PTR [rdi],ebx
  while(n > 1)
  2d:	02 0f                	add    cl,BYTE PTR [rdi]
  2f:	03 00                	add    eax,DWORD PTR [rax]
	...
{
  3d:	00 01                	add    BYTE PTR [rcx],al
  3f:	05 01 00 09 02       	add    eax,0x2090001
	...
  double res = 1, tmp = base;
  4c:	16                   	(bad)
  4d:	05 0a 4b 05 01       	add    eax,0x1054b0a
  52:	59                   	pop    rcx
  53:	31 05 07 75 05 08    	xor    DWORD PTR [rip+0x8057507],eax        # 8057560 <main+0x80574c2>
  59:	75 05                	jne    60 <.debug_line+0x60>
  while(pow)
  5b:	0b 2f                	or     ebp,DWORD PTR [rdi]
    if(pow & 1)
  5d:	05 07 90 05 0b       	add    eax,0xb059007
  62:	8f 05 0a 68 05 01    	pop    QWORD PTR [rip+0x105680a]        # 1056872 <main+0x10567d4>
      res *= tmp;
  68:	3d 31 05 0a bb       	cmp    eax,0xbb0a0531
  6d:	05 13 c8 05 08       	add    eax,0x805c813
  72:	9f                   	lahf
  73:	05 0c 30 05 07       	add    eax,0x705300c
    tmp *= tmp;
  78:	66 05 0b 4b          	add    ax,0x4b0b
  7c:	05 09 e5 d7 37       	add    eax,0x37d7e509
  81:	05 0a 6d 00 02       	add    eax,0x2006d0a
    pow >>= 1;
  86:	04 01                	add    al,0x1
  while(pow)
  88:	06                   	(bad)
  89:	58                   	pop    rax
  8a:	05 01 06 59 77       	add    eax,0x77590601
  return res;
  8f:	05 03 4b 00 02       	add    eax,0x2004b03
  94:	04 01                	add    al,0x1
  96:	06                   	(bad)
}
  97:	9e                   	sahf
  98:	06                   	(bad)
  99:	08 59 00             	or     BYTE PTR [rcx+0x0],bl
  9c:	02 04 01             	add    al,BYTE PTR [rcx+rax*1]
{
  9f:	06                   	(bad)
  a0:	9e                   	sahf
  a1:	06                   	(bad)
  printf("sizeof(int): %d\n", sizeofint());
  a2:	08 59 00             	or     BYTE PTR [rcx+0x0],bl
  a5:	02 04 01             	add    al,BYTE PTR [rcx+rax*1]
  a8:	06                   	(bad)
  a9:	08 58 05             	or     BYTE PTR [rax+0x5],bl
  ac:	0a 06                	or     al,BYTE PTR [rsi]
  ae:	08 3d 05 01 59 02    	or     BYTE PTR [rip+0x2590105],bh        # 25901b9 <main+0x259011b>
  b4:	02 00                	add    al,BYTE PTR [rax]
  b6:	01 01                	add    DWORD PTR [rcx],eax

Дизассемблирование раздела .debug_str:

0000000000000000 <.debug_str>:
{
   0:	75 6e                	jne    70 <.debug_str+0x70>
   2:	73 69                	jae    6d <.debug_str+0x6d>
  return sizeof(int);
   4:	67 6e                	outs   dx,BYTE PTR ds:[esi]
   6:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
{
   b:	74 00                	je     d <.debug_str+0xd>
   d:	73 69                	jae    78 <.debug_str+0x78>
   f:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  11:	65 64 20 63 68       	gs and BYTE PTR fs:[rbx+0x68],ah
  int r = 1;
  16:	61                   	(bad)
  17:	72 00                	jb     19 <.debug_str+0x19>
  while(n > 1)
  19:	73 69                	jae    84 <.debug_str+0x84>
    r *= n--;
  1b:	7a 65                	jp     82 <.debug_str+0x82>
  1d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  1e:	66 69 6e 74 00 6c    	imul   bp,WORD PTR [rsi+0x74],0x6c00
  24:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  25:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  26:	67 20 75 6e          	and    BYTE PTR [ebp+0x6e],dh
  2a:	73 69                	jae    95 <.debug_str+0x95>
  2c:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  while(n > 1)
  2e:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
  return r;
  33:	74 00                	je     35 <.debug_str+0x35>
  35:	62 61                	(bad)
}
  37:	73 65                	jae    9e <.debug_str+0x9e>
{
  39:	00 63 68             	add    BYTE PTR [rbx+0x68],ah
  3c:	61                   	(bad)
  3d:	72 00                	jb     3f <.debug_str+0x3f>
  3f:	75 6e                	jne    af <.debug_str+0xaf>
  41:	73 69                	jae    ac <.debug_str+0xac>
  43:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  double res = 1, tmp = base;
  45:	65 64 20 63 68       	gs and BYTE PTR fs:[rbx+0x68],ah
  4a:	61                   	(bad)
  4b:	72 00                	jb     4d <.debug_str+0x4d>
  4d:	6d                   	ins    DWORD PTR es:[rdi],dx
  4e:	61                   	(bad)
  4f:	69 6e 00 6c 6f 6e 67 	imul   ebp,DWORD PTR [rsi+0x0],0x676e6f6c
  56:	20 69 6e             	and    BYTE PTR [rcx+0x6e],ch
  59:	74 00                	je     5b <.debug_str+0x5b>
  while(pow)
  5b:	66 61                	data16 (bad)
    if(pow & 1)
  5d:	63 74 6f 72          	movsxd esi,DWORD PTR [rdi+rbp*2+0x72]
  61:	69 61 6c 00 64 6f 75 	imul   esp,DWORD PTR [rcx+0x6c],0x756f6400
      res *= tmp;
  68:	62                   	(bad)
  69:	6c                   	ins    BYTE PTR es:[rdi],dx
  6a:	65 00 73 68          	add    BYTE PTR gs:[rbx+0x68],dh
  6e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  6f:	72 74                	jb     e5 <main+0x47>
  71:	20 75 6e             	and    BYTE PTR [rbp+0x6e],dh
  74:	73 69                	jae    df <main+0x41>
    tmp *= tmp;
  76:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  78:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
  7d:	74 00                	je     7f <.debug_str+0x7f>
  7f:	70 72                	jo     f3 <main+0x55>
  81:	69 6e 74 66 00 73 68 	imul   ebp,DWORD PTR [rsi+0x74],0x68730066
  while(pow)
  88:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  89:	72 74                	jb     ff <main+0x61>
  8b:	20 69 6e             	and    BYTE PTR [rcx+0x6e],ch
  return res;
  8e:	74 00                	je     90 <.debug_str+0x90>
  90:	69 70 6f 77 00 47 4e 	imul   esi,DWORD PTR [rax+0x6f],0x4e470077
}
  97:	55                   	push   rbp
  98:	20 43 31             	and    BYTE PTR [rbx+0x31],al
  9b:	37                   	(bad)
  9c:	20 31                	and    BYTE PTR [rcx],dh
{
  9e:	33 2e                	xor    ebp,DWORD PTR [rsi]
  a0:	31 2e                	xor    DWORD PTR [rsi],ebp
  printf("sizeof(int): %d\n", sizeofint());
  a2:	31 20                	xor    DWORD PTR [rax],esp
  a4:	32 30                	xor    dh,BYTE PTR [rax]
  a6:	32 33                	xor    dh,BYTE PTR [rbx]
  a8:	30 34 32             	xor    BYTE PTR [rdx+rsi*1],dh
  ab:	39 20                	cmp    DWORD PTR [rax],esp
  ad:	2d 6d 36 34 20       	sub    eax,0x2034366d
  b2:	2d 6d 61 72 63       	sub    eax,0x6372616d
  b7:	68 3d 6e 6f 63       	push   0x636f6e3d
  bc:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  bd:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  be:	61                   	(bad)
  bf:	20                   	.byte 0x20
  c0:	2d                   	.byte 0x2d
  c1:	67                   	addr32
	...

Дизассемблирование раздела .debug_line_str:

0000000000000000 <.debug_line_str>:
{
   0:	2f                   	(bad)
   1:	68 6f 6d 65 2f       	push   0x2f656d6f
  return sizeof(int);
   6:	64 2f                	fs (bad)
   8:	5f                   	pop    rdi
}
   9:	2f                   	(bad)
   a:	73 61                	jae    6d <.debug_line_str+0x6d>
{
   c:	66 65 5f             	gs pop di
   f:	77 66                	ja     77 <.debug_line_str+0x77>
  11:	2f                   	(bad)
  int r = 1;
  12:	77 6f                	ja     83 <.debug_line_str+0x83>
  14:	72 6b                	jb     81 <.debug_line_str+0x81>
  16:	2f                   	(bad)
  17:	53                   	push   rbx
  18:	50                   	push   rax
  while(n > 1)
  19:	62 55 2f 63 6f       	(bad)
    r *= n--;
  1e:	75 72                	jne    92 <.debug_line_str+0x92>
  20:	73 65                	jae    87 <.debug_line_str+0x87>
  22:	73 2f                	jae    53 <.debug_line_str+0x53>
  24:	43 6f                	rex.XB outs dx,DWORD PTR ds:[rsi]
  26:	6d                   	ins    DWORD PTR es:[rdi],dx
  27:	70 75                	jo     9e <.debug_line_str+0x9e>
  29:	74 65                	je     90 <.debug_line_str+0x90>
  2b:	72 5f                	jb     8c <.debug_line_str+0x8c>
  while(n > 1)
  2d:	41 72 63             	rex.B jb 93 <.debug_line_str+0x93>
  30:	68 69 74 65 63       	push   0x63657469
  return r;
  35:	74 75                	je     ac <.debug_line_str+0xac>
}
  37:	72 65                	jb     9e <.debug_line_str+0x9e>
{
  39:	2d 53 50 62 55       	sub    eax,0x55625053
  3e:	2d 43 42 2e 35       	sub    eax,0x352e4243
  43:	30 38                	xor    BYTE PTR [rax],bh
  double res = 1, tmp = base;
  45:	30 2f                	xor    BYTE PTR [rdi],ch
  47:	65 78 61             	gs js  ab <.debug_line_str+0xab>
  4a:	6d                   	ins    DWORD PTR es:[rdi],dx
  4b:	70 6c                	jo     b9 <.debug_line_str+0xb9>
  4d:	65 73 2f             	gs jae 7f <.debug_line_str+0x7f>
  50:	63 72 6f             	movsxd esi,DWORD PTR [rdx+0x6f]
  53:	73 73                	jae    c8 <.debug_line_str+0xc8>
  55:	2d 63 6f 6d 70       	sub    eax,0x706d6f63
  5a:	69 6c 69 6e 67 00 63 63 	imul   ebp,DWORD PTR [rcx+rbp*2+0x6e],0x63630067
    if(pow & 1)
  62:	65 2e 63 00          	gs movsxd eax,DWORD PTR gs:[rax]
  66:	2f                   	(bad)
      res *= tmp;
  67:	68 6f 6d 65 2f       	push   0x2f656d6f
  6c:	64 2f                	fs (bad)
  6e:	5f                   	pop    rdi
  6f:	2f                   	(bad)
  70:	73 61                	jae    d3 <.debug_line_str+0xd3>
  72:	66 65 5f             	gs pop di
  75:	77 66                	ja     dd <.debug_line_str+0xdd>
    tmp *= tmp;
  77:	2f                   	(bad)
  78:	77 6f                	ja     e9 <main+0x4b>
  7a:	72 6b                	jb     e7 <main+0x49>
  7c:	2f                   	(bad)
  7d:	53                   	push   rbx
  7e:	50                   	push   rax
  7f:	62 55 2f 63 6f       	(bad)
    pow >>= 1;
  84:	75 72                	jne    f8 <main+0x5a>
  86:	73 65                	jae    ed <main+0x4f>
  while(pow)
  88:	73 2f                	jae    b9 <.debug_line_str+0xb9>
  8a:	43 6f                	rex.XB outs dx,DWORD PTR ds:[rsi]
  8c:	6d                   	ins    DWORD PTR es:[rdi],dx
  return res;
  8d:	70 75                	jo     104 <main+0x66>
  8f:	74 65                	je     f6 <main+0x58>
  91:	72 5f                	jb     f2 <main+0x54>
  93:	41 72 63             	rex.B jb f9 <main+0x5b>
  96:	68 69 74 65 63       	push   0x63657469
}
  9b:	74 75                	je     112 <main+0x74>
  9d:	72 65                	jb     104 <main+0x66>
{
  9f:	2d 53 50 62 55       	sub    eax,0x55625053
  printf("sizeof(int): %d\n", sizeofint());
  a4:	2d 43 42 2e 35       	sub    eax,0x352e4243
  a9:	30 38                	xor    BYTE PTR [rax],bh
  ab:	30 2f                	xor    BYTE PTR [rdi],ch
  ad:	65 78 61             	gs js  111 <main+0x73>
  b0:	6d                   	ins    DWORD PTR es:[rdi],dx
  b1:	70 6c                	jo     11f <main+0x81>
  b3:	65 73 2f             	gs jae e5 <.debug_line_str+0xe5>
  b6:	63 72 6f             	movsxd esi,DWORD PTR [rdx+0x6f]
  b9:	73 73                	jae    12e <main+0x90>
  bb:	2d 63 6f 6d 70       	sub    eax,0x706d6f63
  c0:	69 6c 69 6e 67 00 2f 75 	imul   ebp,DWORD PTR [rcx+rbp*2+0x6e],0x752f0067
  printf("factorial(6): %d.\n", factorial(6));
  c8:	73 72                	jae    13c <main+0x9e>
  ca:	2f                   	(bad)
  cb:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  d2:	00 63 63             	add    BYTE PTR [rbx+0x63],ah
  d5:	65 2e 63 00          	gs movsxd eax,DWORD PTR gs:[rax]
  d9:	63 63 65             	movsxd esp,DWORD PTR [rbx+0x65]
  dc:	2e 63 00             	cs movsxd eax,DWORD PTR [rax]
  df:	73 74                	jae    155 <main+0xb7>
  e1:	64                   	fs
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  e2:	69                   	.byte 0x69
  e3:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  e4:	2e                   	cs
  e5:	68                   	.byte 0x68
	...

Дизассемблирование раздела .comment:

0000000000000000 <.comment>:
{
   0:	00 47 43             	add    BYTE PTR [rdi+0x43],al
   3:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
  return sizeof(int);
   6:	28 47 4e             	sub    BYTE PTR [rdi+0x4e],al
}
   9:	55                   	push   rbp
   a:	29 20                	sub    DWORD PTR [rax],esp
{
   c:	31 33                	xor    DWORD PTR [rbx],esi
   e:	2e 31 2e             	cs xor DWORD PTR [rsi],ebp
  11:	31 20                	xor    DWORD PTR [rax],esp
  int r = 1;
  13:	32 30                	xor    dh,BYTE PTR [rax]
  15:	32 33                	xor    dh,BYTE PTR [rbx]
  17:	30 34 32             	xor    BYTE PTR [rdx+rsi*1],dh
  while(n > 1)
  1a:	39 00                	cmp    DWORD PTR [rax],eax

Дизассемблирование раздела .note.gnu.property:

0000000000000000 <.note.gnu.property>:
   0:	04 00                	add    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
   4:	20 00                	and    BYTE PTR [rax],al
   6:	00 00                	add    BYTE PTR [rax],al
   8:	05 00 00 00 47       	add    eax,0x47000000
   d:	4e 55                	rex.WRX push rbp
   f:	00 02                	add    BYTE PTR [rdx],al
  11:	00 01                	add    BYTE PTR [rcx],al
  13:	c0 04 00 00          	rol    BYTE PTR [rax+rax*1],0x0
  17:	00 01                	add    BYTE PTR [rcx],al
  19:	00 00                	add    BYTE PTR [rax],al
  1b:	00 00                	add    BYTE PTR [rax],al
  1d:	00 00                	add    BYTE PTR [rax],al
  1f:	00 01                	add    BYTE PTR [rcx],al
  21:	00 01                	add    BYTE PTR [rcx],al
  23:	c0 04 00 00          	rol    BYTE PTR [rax+rax*1],0x0
  27:	00 09                	add    BYTE PTR [rcx],cl
  29:	00 00                	add    BYTE PTR [rax],al
  2b:	00 00                	add    BYTE PTR [rax],al
  2d:	00 00                	add    BYTE PTR [rax],al
	...

Дизассемблирование раздела .eh_frame:

0000000000000000 <.eh_frame>:
   0:	14 00                	adc    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
   4:	00 00                	add    BYTE PTR [rax],al
   6:	00 00                	add    BYTE PTR [rax],al
   8:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
   b:	00 01                	add    BYTE PTR [rcx],al
   d:	78 10                	js     1f <.eh_frame+0x1f>
   f:	01 1b                	add    DWORD PTR [rbx],ebx
  11:	0c 07                	or     al,0x7
  13:	08 90 01 00 00 1c    	or     BYTE PTR [rax+0x1c000001],dl
  19:	00 00                	add    BYTE PTR [rax],al
  1b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  1e:	00 00                	add    BYTE PTR [rax],al
  20:	00 00                	add    BYTE PTR [rax],al
  22:	00 00                	add    BYTE PTR [rax],al
  24:	0b 00                	or     eax,DWORD PTR [rax]
  26:	00 00                	add    BYTE PTR [rax],al
  28:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  2b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  31:	46 0c 07             	rex.RX or al,0x7
  34:	08 00                	or     BYTE PTR [rax],al
  36:	00 00                	add    BYTE PTR [rax],al
  38:	1c 00                	sbb    al,0x0
  3a:	00 00                	add    BYTE PTR [rax],al
  3c:	3c 00                	cmp    al,0x0
  3e:	00 00                	add    BYTE PTR [rax],al
  40:	00 00                	add    BYTE PTR [rax],al
  42:	00 00                	add    BYTE PTR [rax],al
  44:	2d 00 00 00 00       	sub    eax,0x0
  49:	41 0e                	rex.B (bad)
  4b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  51:	68 0c 07 08 00       	push   0x8070c
  56:	00 00                	add    BYTE PTR [rax],al
  58:	1c 00                	sbb    al,0x0
  5a:	00 00                	add    BYTE PTR [rax],al
  5c:	5c                   	pop    rsp
  5d:	00 00                	add    BYTE PTR [rax],al
  5f:	00 00                	add    BYTE PTR [rax],al
  61:	00 00                	add    BYTE PTR [rax],al
  63:	00 66 00             	add    BYTE PTR [rsi+0x0],ah
  66:	00 00                	add    BYTE PTR [rax],al
  68:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  6b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  71:	02 61 0c             	add    ah,BYTE PTR [rcx+0xc]
  74:	07                   	(bad)
  75:	08 00                	or     BYTE PTR [rax],al
  77:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  7a:	00 00                	add    BYTE PTR [rax],al
  7c:	7c 00                	jl     7e <.eh_frame+0x7e>
  7e:	00 00                	add    BYTE PTR [rax],al
  80:	00 00                	add    BYTE PTR [rax],al
  82:	00 00                	add    BYTE PTR [rax],al
  84:	75 00                	jne    86 <.eh_frame+0x86>
  86:	00 00                	add    BYTE PTR [rax],al
  88:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  8b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  91:	02 70 0c             	add    dh,BYTE PTR [rax+0xc]
  94:	07                   	(bad)
  95:	08 00                	or     BYTE PTR [rax],al
	...
