
cce_X86.o:     формат файла elf32-i386


Дизассемблирование раздела .group:

00000000 <.group>:
#include <stdio.h>
#define DOUBLE_PI 3.14159265358979323846

int sizeofint()
{
   0:	01 00                	add    DWORD PTR [eax],eax
   2:	00 00                	add    BYTE PTR [eax],al
   4:	09 00                	or     DWORD PTR [eax],eax
	...

Дизассемблирование раздела .group:

00000000 <.group>:
   0:	01 00                	add    DWORD PTR [eax],eax
   2:	00 00                	add    BYTE PTR [eax],al
   4:	0a 00                	or     al,BYTE PTR [eax]
	...

Дизассемблирование раздела .group:

00000000 <.group>:
   0:	01 00                	add    DWORD PTR [eax],eax
   2:	00 00                	add    BYTE PTR [eax],al
   4:	0b 00                	or     eax,DWORD PTR [eax]
	...

Дизассемблирование раздела .text:

00000000 <sizeofint>:
   0:	55                   	push   ebp
   1:	89 e5                	mov    ebp,esp
   3:	e8 fc ff ff ff       	call   4 <sizeofint+0x4>
   8:	05 01 00 00 00       	add    eax,0x1
  return sizeof(int);
   d:	b8 04 00 00 00       	mov    eax,0x4
}
  12:	5d                   	pop    ebp
  13:	c3                   	ret

00000014 <factorial>:

int factorial(int n)
{
  14:	55                   	push   ebp
  15:	89 e5                	mov    ebp,esp
  17:	83 ec 10             	sub    esp,0x10
  1a:	e8 fc ff ff ff       	call   1b <factorial+0x7>
  1f:	05 01 00 00 00       	add    eax,0x1
  int r = 1;
  24:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  while(n > 1)
  2b:	eb 12                	jmp    3f <factorial+0x2b>
    r *= n--;
  2d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  30:	8d 50 ff             	lea    edx,[eax-0x1]
  33:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
  36:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  39:	0f af c2             	imul   eax,edx
  3c:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  while(n > 1)
  3f:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
  43:	7f e8                	jg     2d <factorial+0x19>
  return r;
  45:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
}
  48:	c9                   	leave
  49:	c3                   	ret

0000004a <ipow>:

double ipow(int pow, double base)
{
  4a:	55                   	push   ebp
  4b:	89 e5                	mov    ebp,esp
  4d:	83 ec 18             	sub    esp,0x18
  50:	e8 fc ff ff ff       	call   51 <ipow+0x7>
  55:	81 c1 02 00 00 00    	add    ecx,0x2
  5b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  5e:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  61:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  64:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
  double res = 1, tmp = base;
  67:	d9 e8                	fld1
  69:	dd 5d f0             	fstp   QWORD PTR [ebp-0x10]
  6c:	dd 45 e8             	fld    QWORD PTR [ebp-0x18]
  6f:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  while(pow)
  72:	eb 1e                	jmp    92 <ipow+0x48>
  {
    if(pow & 1)
  74:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  77:	83 e0 01             	and    eax,0x1
  7a:	85 c0                	test   eax,eax
  7c:	74 09                	je     87 <ipow+0x3d>
      res *= tmp;
  7e:	dd 45 f0             	fld    QWORD PTR [ebp-0x10]
  81:	dc 4d f8             	fmul   QWORD PTR [ebp-0x8]
  84:	dd 5d f0             	fstp   QWORD PTR [ebp-0x10]
    tmp *= tmp;
  87:	dd 45 f8             	fld    QWORD PTR [ebp-0x8]
  8a:	d8 c8                	fmul   st,st(0)
  8c:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
    pow >>= 1;
  8f:	d1 7d 08             	sar    DWORD PTR [ebp+0x8],1
  while(pow)
  92:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
  96:	75 dc                	jne    74 <ipow+0x2a>
  }
  return res;
  98:	dd 45 f0             	fld    QWORD PTR [ebp-0x10]
}
  9b:	c9                   	leave
  9c:	c3                   	ret

0000009d <main>:

int main()
{
  9d:	8d 4c 24 04          	lea    ecx,[esp+0x4]
  a1:	83 e4 f0             	and    esp,0xfffffff0
  a4:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
  a7:	55                   	push   ebp
  a8:	89 e5                	mov    ebp,esp
  aa:	53                   	push   ebx
  ab:	51                   	push   ecx
  ac:	e8 fc ff ff ff       	call   ad <main+0x10>
  b1:	81 c3 02 00 00 00    	add    ebx,0x2
  printf("sizeof(int): %d\n", sizeofint());
  b7:	e8 fc ff ff ff       	call   b8 <main+0x1b>
  bc:	83 ec 08             	sub    esp,0x8
  bf:	50                   	push   eax
  c0:	8d 83 00 00 00 00    	lea    eax,[ebx+0x0]
  c6:	50                   	push   eax
  c7:	e8 fc ff ff ff       	call   c8 <main+0x2b>
  cc:	83 c4 10             	add    esp,0x10
  printf("factorial(6): %d.\n", factorial(6));
  cf:	83 ec 0c             	sub    esp,0xc
  d2:	6a 06                	push   0x6
  d4:	e8 fc ff ff ff       	call   d5 <main+0x38>
  d9:	83 c4 10             	add    esp,0x10
  dc:	83 ec 08             	sub    esp,0x8
  df:	50                   	push   eax
  e0:	8d 83 11 00 00 00    	lea    eax,[ebx+0x11]
  e6:	50                   	push   eax
  e7:	e8 fc ff ff ff       	call   e8 <main+0x4b>
  ec:	83 c4 10             	add    esp,0x10
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  ef:	83 ec 04             	sub    esp,0x4
  f2:	dd 83 30 00 00 00    	fld    QWORD PTR [ebx+0x30]
  f8:	8d 64 24 f8          	lea    esp,[esp-0x8]
  fc:	dd 1c 24             	fstp   QWORD PTR [esp]
  ff:	6a 05                	push   0x5
 101:	e8 fc ff ff ff       	call   102 <main+0x65>
 106:	83 c4 10             	add    esp,0x10
 109:	83 ec 04             	sub    esp,0x4
 10c:	8d 64 24 f8          	lea    esp,[esp-0x8]
 110:	dd 1c 24             	fstp   QWORD PTR [esp]
 113:	8d 83 24 00 00 00    	lea    eax,[ebx+0x24]
 119:	50                   	push   eax
 11a:	e8 fc ff ff ff       	call   11b <main+0x7e>
 11f:	83 c4 10             	add    esp,0x10
  return 0;
 122:	b8 00 00 00 00       	mov    eax,0x0
}
 127:	8d 65 f8             	lea    esp,[ebp-0x8]
 12a:	59                   	pop    ecx
 12b:	5b                   	pop    ebx
 12c:	5d                   	pop    ebp
 12d:	8d 61 fc             	lea    esp,[ecx-0x4]
 130:	c3                   	ret

Дизассемблирование раздела .rodata:

00000000 <.rodata>:
   0:	73 69                	jae    6b <ipow+0x21>
   2:	7a 65                	jp     69 <ipow+0x1f>
   4:	6f                   	outs   dx,DWORD PTR ds:[esi]
   5:	66 28 69 6e          	data16 sub BYTE PTR [ecx+0x6e],ch
   9:	74 29                	je     34 <.rodata+0x34>
   b:	3a 20                	cmp    ah,BYTE PTR [eax]
   d:	25 64 0a 00 66       	and    eax,0x66000a64
  12:	61                   	popa
  13:	63 74 6f 72          	arpl   WORD PTR [edi+ebp*2+0x72],si
  17:	69 61 6c 28 36 29 3a 	imul   esp,DWORD PTR [ecx+0x6c],0x3a293628
  1e:	20 25 64 2e 0a 00    	and    BYTE PTR ds:0xa2e64,ah
  24:	50                   	push   eax
  25:	69 5e 35 3a 20 25 6c 	imul   ebx,DWORD PTR [esi+0x35],0x6c25203a
  2c:	66 0a 00             	data16 or al,BYTE PTR [eax]
  2f:	00 18                	add    BYTE PTR [eax],bl
  31:	2d 44 54 fb 21       	sub    eax,0x21fb5444
  36:	09                   	.byte 0x9
  37:	40                   	inc    eax

Дизассемблирование раздела .text.__x86.get_pc_thunk.ax:

00000000 <__x86.get_pc_thunk.ax>:
   0:	8b 04 24             	mov    eax,DWORD PTR [esp]
   3:	c3                   	ret

Дизассемблирование раздела .text.__x86.get_pc_thunk.cx:

00000000 <__x86.get_pc_thunk.cx>:
   0:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   3:	c3                   	ret

Дизассемблирование раздела .text.__x86.get_pc_thunk.bx:

00000000 <__x86.get_pc_thunk.bx>:
   0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   3:	c3                   	ret

Дизассемблирование раздела .debug_info:

00000000 <.debug_info>:
{
   0:	4b                   	dec    ebx
   1:	01 00                	add    DWORD PTR [eax],eax
   3:	00 05 00 01 04 00    	add    BYTE PTR ds:0x40100,al
   9:	00 00                	add    BYTE PTR [eax],al
   b:	00 05 1b 00 00 00    	add    BYTE PTR ds:0x1b,al
  return sizeof(int);
  11:	1d 60 00 00 00       	sbb    eax,0x60
	...
{
  1e:	31 01                	xor    DWORD PTR [ecx],eax
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  int r = 1;
  24:	00 00                	add    BYTE PTR [eax],al
  26:	01 04 07             	add    DWORD PTR [edi+eax*1],eax
  29:	0e                   	push   cs
  2a:	00 00                	add    BYTE PTR [eax],al
  while(n > 1)
  2c:	00 01                	add    BYTE PTR [ecx],al
    r *= n--;
  2e:	01 06                	add    DWORD PTR [esi],eax
  30:	90                   	nop
  31:	00 00                	add    BYTE PTR [eax],al
  33:	00 06                	add    BYTE PTR [esi],al
  35:	2d 00 00 00 01       	sub    eax,0x1000000
  3a:	01 08                	add    DWORD PTR [eax],ecx
  3c:	95                   	xchg   ebp,eax
  3d:	00 00                	add    BYTE PTR [eax],al
  while(n > 1)
  3f:	00 01                	add    BYTE PTR [ecx],al
  41:	02 07                	add    al,BYTE PTR [edi]
  43:	c2 00 00             	ret    0x0
  return r;
  46:	00 01                	add    BYTE PTR [ecx],al
}
  48:	04 07                	add    al,0x7
{
  4a:	62 00                	bound  eax,QWORD PTR [eax]
  4c:	00 00                	add    BYTE PTR [eax],al
  4e:	01 01                	add    DWORD PTR [ecx],eax
  50:	06                   	push   es
  51:	eb 00                	jmp    53 <.debug_info+0x53>
  53:	00 00                	add    BYTE PTR [eax],al
  55:	01 02                	add    DWORD PTR [edx],eax
  57:	05 dc 00 00 00       	add    eax,0xdc
  5c:	07                   	pop    es
  5d:	04 05                	add    al,0x5
  5f:	69 6e 74 00 01 08 05 	imul   ebp,DWORD PTR [esi+0x74],0x5080100
  66:	00 00                	add    BYTE PTR [eax],al
  double res = 1, tmp = base;
  68:	00 00                	add    BYTE PTR [eax],al
  6a:	01 08                	add    DWORD PTR [eax],ecx
  6c:	07                   	pop    es
  6d:	74 00                	je     6f <.debug_info+0x6f>
  6f:	00 00                	add    BYTE PTR [eax],al
  71:	01 04 05 a8 00 00 00 	add    DWORD PTR [eax*1+0xa8],eax
    if(pow & 1)
  78:	08 d5                	or     ch,dl
  7a:	00 00                	add    BYTE PTR [eax],al
  7c:	00 02                	add    BYTE PTR [edx],al
      res *= tmp;
  7e:	64 01 0c 5c          	add    DWORD PTR fs:[esp+ebx*2],ecx
  82:	00 00                	add    BYTE PTR [eax],al
  84:	00 90 00 00 00 09    	add    BYTE PTR [eax+0x9000000],dl
    tmp *= tmp;
  8a:	90                   	nop
  8b:	00 00                	add    BYTE PTR [eax],al
  8d:	00 0a                	add    BYTE PTR [edx],cl
    pow >>= 1;
  8f:	00 0b                	add    BYTE PTR [ebx],cl
  91:	04 34                	add    al,0x34
  while(pow)
  93:	00 00                	add    BYTE PTR [eax],al
  95:	00 0c a3             	add    BYTE PTR [ebx+eiz*4],cl
  return res;
  98:	00 00                	add    BYTE PTR [eax],al
  9a:	00 01                	add    BYTE PTR [ecx],al
}
  9c:	1e                   	push   ds
{
  9d:	05 5c 00 00 00       	add    eax,0x5c
  a2:	9d                   	popf
  a3:	00 00                	add    BYTE PTR [eax],al
  a5:	00 94 00 00 00 01 9c 	add    BYTE PTR [eax+eax*1-0x63ff0000],dl
  ac:	03 e6                	add    esp,esi
  ae:	00 00                	add    BYTE PTR [eax],al
  b0:	00 11                	add    BYTE PTR [ecx],dl
  b2:	08 ff                	or     bh,bh
  b4:	00 00                	add    BYTE PTR [eax],al
  b6:	00 4a 00             	add    BYTE PTR [edx+0x0],cl
  printf("sizeof(int): %d\n", sizeofint());
  b9:	00 00                	add    BYTE PTR [eax],al
  bb:	53                   	push   ebx
  bc:	00 00                	add    BYTE PTR [eax],al
  be:	00 01                	add    BYTE PTR [ecx],al
  c0:	9c                   	pushf
  c1:	ff 00                	inc    DWORD PTR [eax]
  c3:	00 00                	add    BYTE PTR [eax],al
  c5:	04 70                	add    al,0x70
  c7:	6f                   	outs   dx,DWORD PTR ds:[esi]
  c8:	77 00                	ja     ca <.debug_info+0xca>
  ca:	11 11                	adc    DWORD PTR [ecx],edx
  cc:	5c                   	pop    esp
  cd:	00 00                	add    BYTE PTR [eax],al
  printf("factorial(6): %d.\n", factorial(6));
  cf:	00 02                	add    BYTE PTR [edx],al
  d1:	91                   	xchg   ecx,eax
  d2:	00 0d 8b 00 00 00    	add    BYTE PTR ds:0x8b,cl
  d8:	01 11                	add    DWORD PTR [ecx],edx
  da:	1d ff 00 00 00       	sbb    eax,0xff
  df:	02 91 60 02 72 65    	add    dl,BYTE PTR [ecx+0x65720260]
  e5:	73 00                	jae    e7 <.debug_info+0xe7>
  e7:	13 0a                	adc    ecx,DWORD PTR [edx]
  e9:	ff 00                	inc    DWORD PTR [eax]
  eb:	00 00                	add    BYTE PTR [eax],al
  ed:	02 91 68 02 74 6d    	add    dl,BYTE PTR [ecx+0x6d740268]
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  f3:	70 00                	jo     f5 <.debug_info+0xf5>
  f5:	13 13                	adc    edx,DWORD PTR [ebx]
  f7:	ff 00                	inc    DWORD PTR [eax]
  f9:	00 00                	add    BYTE PTR [eax],al
  fb:	02 91 70 00 01 08    	add    dl,BYTE PTR [ecx+0x8010070]
 101:	04 bb                	add    al,0xbb
 103:	00 00                	add    BYTE PTR [eax],al
 105:	00 03                	add    BYTE PTR [ebx],al
 107:	b1 00                	mov    cl,0x0
 109:	00 00                	add    BYTE PTR [eax],al
 10b:	09 05 5c 00 00 00    	or     DWORD PTR ds:0x5c,eax
 111:	14 00                	adc    al,0x0
 113:	00 00                	add    BYTE PTR [eax],al
 115:	36 00 00             	add    BYTE PTR ss:[eax],al
 118:	00 01                	add    BYTE PTR [ecx],al
 11a:	9c                   	pushf
 11b:	38 01                	cmp    BYTE PTR [ecx],al
 11d:	00 00                	add    BYTE PTR [eax],al
 11f:	04 6e                	add    al,0x6e
 121:	00 09                	add    BYTE PTR [ecx],cl
  return 0;
 123:	13 5c 00 00          	adc    ebx,DWORD PTR [eax+eax*1+0x0]
}
 127:	00 02                	add    BYTE PTR [edx],al
 129:	91                   	xchg   ecx,eax
 12a:	00 02                	add    BYTE PTR [edx],al
 12c:	72 00                	jb     12e <.debug_info+0x12e>
 12e:	0b 07                	or     eax,DWORD PTR [edi]
 130:	5c                   	pop    esp
 131:	00 00                	add    BYTE PTR [eax],al
 133:	00 02                	add    BYTE PTR [edx],al
 135:	91                   	xchg   ecx,eax
 136:	74 00                	je     138 <.debug_info+0x138>
 138:	0e                   	push   cs
 139:	58                   	pop    eax
 13a:	00 00                	add    BYTE PTR [eax],al
 13c:	00 01                	add    BYTE PTR [ecx],al
 13e:	04 05                	add    al,0x5
 140:	5c                   	pop    esp
 141:	00 00                	add    BYTE PTR [eax],al
 143:	00 00                	add    BYTE PTR [eax],al
 145:	00 00                	add    BYTE PTR [eax],al
 147:	00 14 00             	add    BYTE PTR [eax+eax*1],dl
 14a:	00 00                	add    BYTE PTR [eax],al
 14c:	01                   	.byte 0x1
 14d:	9c                   	pushf
	...

Дизассемблирование раздела .debug_abbrev:

00000000 <.debug_abbrev>:
{
   0:	01 24 00             	add    DWORD PTR [eax+eax*1],esp
   3:	0b 0b                	or     ecx,DWORD PTR [ebx]
   5:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
   8:	0e                   	push   cs
   9:	00 00                	add    BYTE PTR [eax],al
   b:	02 34 00             	add    dh,BYTE PTR [eax+eax*1]
  return sizeof(int);
   e:	03 08                	add    ecx,DWORD PTR [eax]
  10:	3a 21                	cmp    ah,BYTE PTR [ecx]
}
  12:	01 3b                	add    DWORD PTR [ebx],edi
{
  14:	0b 39                	or     edi,DWORD PTR [ecx]
  16:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
  19:	02 18                	add    bl,BYTE PTR [eax]
  1b:	00 00                	add    BYTE PTR [eax],al
  1d:	03 2e                	add    ebp,DWORD PTR [esi]
  1f:	01 3f                	add    DWORD PTR [edi],edi
  21:	19 03                	sbb    DWORD PTR [ebx],eax
  23:	0e                   	push   cs
  int r = 1;
  24:	3a 21                	cmp    ah,BYTE PTR [ecx]
  26:	01 3b                	add    DWORD PTR [ebx],edi
  28:	0b 39                	or     edi,DWORD PTR [ecx]
  2a:	0b 27                	or     esp,DWORD PTR [edi]
  while(n > 1)
  2c:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
    r *= n--;
  2f:	11 01                	adc    DWORD PTR [ecx],eax
  31:	12 06                	adc    al,BYTE PTR [esi]
  33:	40                   	inc    eax
  34:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
  37:	01 13                	add    DWORD PTR [ebx],edx
  39:	00 00                	add    BYTE PTR [eax],al
  3b:	04 05                	add    al,0x5
  3d:	00 03                	add    BYTE PTR [ebx],al
  while(n > 1)
  3f:	08 3a                	or     BYTE PTR [edx],bh
  41:	21 01                	and    DWORD PTR [ecx],eax
  43:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
  return r;
  45:	39 0b                	cmp    DWORD PTR [ebx],ecx
  47:	49                   	dec    ecx
}
  48:	13 02                	adc    eax,DWORD PTR [edx]
{
  4a:	18 00                	sbb    BYTE PTR [eax],al
  4c:	00 05 11 01 25 0e    	add    BYTE PTR ds:0xe250111,al
  52:	13 0b                	adc    ecx,DWORD PTR [ebx]
  54:	03 1f                	add    ebx,DWORD PTR [edi]
  56:	1b 1f                	sbb    ebx,DWORD PTR [edi]
  58:	11 01                	adc    DWORD PTR [ecx],eax
  5a:	12 06                	adc    al,BYTE PTR [esi]
  5c:	10 17                	adc    BYTE PTR [edi],dl
  5e:	00 00                	add    BYTE PTR [eax],al
  60:	06                   	push   es
  61:	26 00 49 13          	add    BYTE PTR es:[ecx+0x13],cl
  65:	00 00                	add    BYTE PTR [eax],al
  double res = 1, tmp = base;
  67:	07                   	pop    es
  68:	24 00                	and    al,0x0
  6a:	0b 0b                	or     ecx,DWORD PTR [ebx]
  6c:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
  6f:	08 00                	or     BYTE PTR [eax],al
  71:	00 08                	add    BYTE PTR [eax],cl
  while(pow)
  73:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
    if(pow & 1)
  76:	19 03                	sbb    DWORD PTR [ebx],eax
  78:	0e                   	push   cs
  79:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  7b:	3b 05 39 0b 27 19    	cmp    eax,DWORD PTR ds:0x19270b39
      res *= tmp;
  81:	49                   	dec    ecx
  82:	13 3c 19             	adc    edi,DWORD PTR [ecx+ebx*1]
  85:	01 13                	add    DWORD PTR [ebx],edx
    tmp *= tmp;
  87:	00 00                	add    BYTE PTR [eax],al
  89:	09 05 00 49 13 00    	or     DWORD PTR ds:0x134900,eax
    pow >>= 1;
  8f:	00 0a                	add    BYTE PTR [edx],cl
  91:	18 00                	sbb    BYTE PTR [eax],al
  while(pow)
  93:	00 00                	add    BYTE PTR [eax],al
  95:	0b 0f                	or     ecx,DWORD PTR [edi]
  97:	00 0b                	add    BYTE PTR [ebx],cl
  return res;
  99:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
}
  9c:	00 00                	add    BYTE PTR [eax],al
{
  9e:	0c 2e                	or     al,0x2e
  a0:	00 3f                	add    BYTE PTR [edi],bh
  a2:	19 03                	sbb    DWORD PTR [ebx],eax
  a4:	0e                   	push   cs
  a5:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  a7:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
  a9:	39 0b                	cmp    DWORD PTR [ebx],ecx
  ab:	49                   	dec    ecx
  ac:	13 11                	adc    edx,DWORD PTR [ecx]
  ae:	01 12                	add    DWORD PTR [edx],edx
  b0:	06                   	push   es
  b1:	40                   	inc    eax
  b2:	18 7c 19 00          	sbb    BYTE PTR [ecx+ebx*1+0x0],bh
  b6:	00 0d 05 00 03 0e    	add    BYTE PTR ds:0xe030005,cl
  printf("sizeof(int): %d\n", sizeofint());
  bc:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  be:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
  c0:	39 0b                	cmp    DWORD PTR [ebx],ecx
  c2:	49                   	dec    ecx
  c3:	13 02                	adc    eax,DWORD PTR [edx]
  c5:	18 00                	sbb    BYTE PTR [eax],al
  c7:	00 0e                	add    BYTE PTR [esi],cl
  c9:	2e 00 3f             	add    BYTE PTR cs:[edi],bh
  cc:	19 03                	sbb    DWORD PTR [ebx],eax
  ce:	0e                   	push   cs
  printf("factorial(6): %d.\n", factorial(6));
  cf:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  d1:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
  d3:	39 0b                	cmp    DWORD PTR [ebx],ecx
  d5:	49                   	dec    ecx
  d6:	13 11                	adc    edx,DWORD PTR [ecx]
  d8:	01 12                	add    DWORD PTR [edx],edx
  da:	06                   	push   es
  db:	40                   	inc    eax
  dc:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
  df:	00 00                	add    BYTE PTR [eax],al
	...

Дизассемблирование раздела .debug_aranges:

00000000 <.debug_aranges>:
{
   0:	1c 00                	sbb    al,0x0
   2:	00 00                	add    BYTE PTR [eax],al
   4:	02 00                	add    al,BYTE PTR [eax]
   6:	00 00                	add    BYTE PTR [eax],al
   8:	00 00                	add    BYTE PTR [eax],al
   a:	04 00                	add    al,0x0
	...
{
  14:	31 01                	xor    DWORD PTR [ecx],eax
	...

Дизассемблирование раздела .debug_line:

00000000 <.debug_line>:
{
   0:	ab                   	stos   DWORD PTR es:[edi],eax
   1:	00 00                	add    BYTE PTR [eax],al
   3:	00 05 00 04 00 33    	add    BYTE PTR ds:0x33000400,al
   9:	00 00                	add    BYTE PTR [eax],al
   b:	00 01                	add    BYTE PTR [ecx],al
  return sizeof(int);
   d:	01 01                	add    DWORD PTR [ecx],eax
   f:	fb                   	sti
  10:	0e                   	push   cs
  11:	0d 00 01 01 01       	or     eax,0x1010100
{
  16:	01 00                	add    DWORD PTR [eax],eax
  18:	00 00                	add    BYTE PTR [eax],al
  1a:	01 00                	add    DWORD PTR [eax],eax
  1c:	00 01                	add    BYTE PTR [ecx],al
  1e:	01 01                	add    DWORD PTR [ecx],eax
  20:	1f                   	pop    ds
  21:	02 66 00             	add    ah,BYTE PTR [esi+0x0]
  int r = 1;
  24:	00 00                	add    BYTE PTR [eax],al
  26:	c6 00 00             	mov    BYTE PTR [eax],0x0
  29:	00 02                	add    BYTE PTR [edx],al
  while(n > 1)
  2b:	01 1f                	add    DWORD PTR [edi],ebx
    r *= n--;
  2d:	02 0f                	add    cl,BYTE PTR [edi]
  2f:	03 d3                	add    edx,ebx
  31:	00 00                	add    BYTE PTR [eax],al
  33:	00 00                	add    BYTE PTR [eax],al
  35:	d9 00                	fld    DWORD PTR [eax]
  37:	00 00                	add    BYTE PTR [eax],al
  39:	00 df                	add    bh,bl
  3b:	00 00                	add    BYTE PTR [eax],al
  3d:	00 01                	add    BYTE PTR [ecx],al
  while(n > 1)
  3f:	05 01 00 05 02       	add    eax,0x2050001
  44:	00 00                	add    BYTE PTR [eax],al
  return r;
  46:	00 00                	add    BYTE PTR [eax],al
}
  48:	16                   	push   ss
  49:	05 0a c9 05 01       	add    eax,0x105c90a
{
  4e:	59                   	pop    ecx
  4f:	31 05 07 f3 05 08    	xor    DWORD PTR ds:0x805f307,eax
  55:	75 05                	jne    5c <.debug_line+0x5c>
  57:	0b 2f                	or     ebp,DWORD PTR [edi]
  59:	05 07 90 05 0b       	add    eax,0xb059007
  5e:	8f 05 0a 68 05 01    	pop    DWORD PTR ds:0x105680a
  64:	3d 31 05 0a 08       	cmp    eax,0x80a0531
  double res = 1, tmp = base;
  69:	bb 05 13 58 05       	mov    ebx,0x5581305
  6e:	08 67 05             	or     BYTE PTR [edi+0x5],ah
  71:	0c 30                	or     al,0x30
  while(pow)
  73:	05 07 66 05 0b       	add    eax,0xb056607
    if(pow & 1)
  78:	4b                   	dec    ebx
  79:	05 09 91 83 37       	add    eax,0x37839109
      res *= tmp;
  7e:	05 0a 6d 05 01       	add    eax,0x1056d0a
  83:	3d 31 05 03 08       	cmp    eax,0x8030531
    tmp *= tmp;
  88:	91                   	xchg   ecx,eax
  89:	00 02                	add    BYTE PTR [edx],al
  8b:	04 01                	add    al,0x1
  8d:	06                   	push   es
  8e:	58                   	pop    eax
    pow >>= 1;
  8f:	06                   	push   es
  90:	08 2f                	or     BYTE PTR [edi],ch
  while(pow)
  92:	00 02                	add    BYTE PTR [edx],al
  94:	04 01                	add    al,0x1
  96:	06                   	push   es
  97:	c8 06 08 2f          	enter  0x806,0x2f
}
  9b:	00 02                	add    BYTE PTR [edx],al
{
  9d:	04 01                	add    al,0x1
  9f:	06                   	push   es
  a0:	08 90 05 0a 06 08    	or     BYTE PTR [eax+0x8060a05],dl
  a6:	83 05 01 59 02 0a 00 	add    DWORD PTR ds:0xa025901,0x0
  ad:	01 01                	add    DWORD PTR [ecx],eax

Дизассемблирование раздела .debug_str:

00000000 <.debug_str>:
{
   0:	6c                   	ins    BYTE PTR es:[edi],dx
   1:	6f                   	outs   dx,DWORD PTR ds:[esi]
   2:	6e                   	outs   dx,BYTE PTR ds:[esi]
   3:	67 20 6c 6f          	and    BYTE PTR [si+0x6f],ch
   7:	6e                   	outs   dx,BYTE PTR ds:[esi]
   8:	67 20 69 6e          	and    BYTE PTR [bx+di+0x6e],ch
   c:	74 00                	je     e <.debug_str+0xe>
  return sizeof(int);
   e:	75 6e                	jne    7e <.debug_str+0x7e>
  10:	73 69                	jae    7b <.debug_str+0x7b>
}
  12:	67 6e                	outs   dx,BYTE PTR ds:[si]
{
  14:	65 64 20 69 6e       	gs and BYTE PTR fs:[ecx+0x6e],ch
  19:	74 00                	je     1b <.debug_str+0x1b>
  1b:	47                   	inc    edi
  1c:	4e                   	dec    esi
  1d:	55                   	push   ebp
  1e:	20 43 31             	and    BYTE PTR [ebx+0x31],al
  21:	37                   	aaa
  22:	20 31                	and    BYTE PTR [ecx],dh
  int r = 1;
  24:	33 2e                	xor    ebp,DWORD PTR [esi]
  26:	31 2e                	xor    DWORD PTR [esi],ebp
  28:	31 20                	xor    DWORD PTR [eax],esp
  2a:	32 30                	xor    dh,BYTE PTR [eax]
  while(n > 1)
  2c:	32 33                	xor    dh,BYTE PTR [ebx]
    r *= n--;
  2e:	30 34 32             	xor    BYTE PTR [edx+esi*1],dh
  31:	39 20                	cmp    DWORD PTR [eax],esp
  33:	2d 6d 33 32 20       	sub    eax,0x2032336d
  38:	2d 6d 74 75 6e       	sub    eax,0x6e75746d
  3d:	65 3d 67 65 6e 65    	gs cmp eax,0x656e6567
  while(n > 1)
  43:	72 69                	jb     ae <.debug_str+0xae>
  return r;
  45:	63 20                	arpl   WORD PTR [eax],sp
  47:	2d 6d 61 72 63       	sub    eax,0x6372616d
{
  4c:	68 3d 78 38 36       	push   0x3638783d
  51:	2d 36 34 20 2d       	sub    eax,0x2d203436
  56:	67 00 73 69          	add    BYTE PTR [bp+di+0x69],dh
  5a:	7a 65                	jp     c1 <.debug_str+0xc1>
  5c:	6f                   	outs   dx,DWORD PTR ds:[esi]
  5d:	66 69 6e 74 00 6c    	imul   bp,WORD PTR [esi+0x74],0x6c00
  63:	6f                   	outs   dx,DWORD PTR ds:[esi]
  64:	6e                   	outs   dx,BYTE PTR ds:[esi]
  65:	67 20 75 6e          	and    BYTE PTR [di+0x6e],dh
  double res = 1, tmp = base;
  69:	73 69                	jae    d4 <.debug_str+0xd4>
  6b:	67 6e                	outs   dx,BYTE PTR ds:[si]
  6d:	65 64 20 69 6e       	gs and BYTE PTR fs:[ecx+0x6e],ch
  while(pow)
  72:	74 00                	je     74 <.debug_str+0x74>
    if(pow & 1)
  74:	6c                   	ins    BYTE PTR es:[edi],dx
  75:	6f                   	outs   dx,DWORD PTR ds:[esi]
  76:	6e                   	outs   dx,BYTE PTR ds:[esi]
  77:	67 20 6c 6f          	and    BYTE PTR [si+0x6f],ch
  7b:	6e                   	outs   dx,BYTE PTR ds:[esi]
  7c:	67 20 75 6e          	and    BYTE PTR [di+0x6e],dh
      res *= tmp;
  80:	73 69                	jae    eb <.debug_str+0xeb>
  82:	67 6e                	outs   dx,BYTE PTR ds:[si]
  84:	65 64 20 69 6e       	gs and BYTE PTR fs:[ecx+0x6e],ch
    tmp *= tmp;
  89:	74 00                	je     8b <.debug_str+0x8b>
  8b:	62 61 73             	bound  esp,QWORD PTR [ecx+0x73]
  8e:	65 00 63 68          	add    BYTE PTR gs:[ebx+0x68],ah
  while(pow)
  92:	61                   	popa
  93:	72 00                	jb     95 <.debug_str+0x95>
  95:	75 6e                	jne    105 <main+0x68>
  97:	73 69                	jae    102 <main+0x65>
  return res;
  99:	67 6e                	outs   dx,BYTE PTR ds:[si]
}
  9b:	65 64 20 63 68       	gs and BYTE PTR fs:[ebx+0x68],ah
{
  a0:	61                   	popa
  a1:	72 00                	jb     a3 <.debug_str+0xa3>
  a3:	6d                   	ins    DWORD PTR es:[edi],dx
  a4:	61                   	popa
  a5:	69 6e 00 6c 6f 6e 67 	imul   ebp,DWORD PTR [esi+0x0],0x676e6f6c
  ac:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
  af:	74 00                	je     b1 <.debug_str+0xb1>
  b1:	66 61                	popaw
  b3:	63 74 6f 72          	arpl   WORD PTR [edi+ebp*2+0x72],si
  printf("sizeof(int): %d\n", sizeofint());
  b7:	69 61 6c 00 64 6f 75 	imul   esp,DWORD PTR [ecx+0x6c],0x756f6400
  be:	62 6c 65 00          	bound  ebp,QWORD PTR [ebp+eiz*2+0x0]
  c2:	73 68                	jae    12c <main+0x8f>
  c4:	6f                   	outs   dx,DWORD PTR ds:[esi]
  c5:	72 74                	jb     13b <main+0x9e>
  c7:	20 75 6e             	and    BYTE PTR [ebp+0x6e],dh
  ca:	73 69                	jae    135 <main+0x98>
  cc:	67 6e                	outs   dx,BYTE PTR ds:[si]
  ce:	65 64 20 69 6e       	gs and BYTE PTR fs:[ecx+0x6e],ch
  printf("factorial(6): %d.\n", factorial(6));
  d3:	74 00                	je     d5 <.debug_str+0xd5>
  d5:	70 72                	jo     149 <main+0xac>
  d7:	69 6e 74 66 00 73 68 	imul   ebp,DWORD PTR [esi+0x74],0x68730066
  de:	6f                   	outs   dx,DWORD PTR ds:[esi]
  df:	72 74                	jb     155 <main+0xb8>
  e1:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
  e4:	74 00                	je     e6 <.debug_str+0xe6>
  e6:	69 70 6f 77 00 73 69 	imul   esi,DWORD PTR [eax+0x6f],0x69730077
  ed:	67 6e                	outs   dx,BYTE PTR ds:[si]
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  ef:	65 64 20 63 68       	gs and BYTE PTR fs:[ebx+0x68],ah
  f4:	61                   	popa
  f5:	72 00                	jb     f7 <main+0x5a>

Дизассемблирование раздела .debug_line_str:

00000000 <.debug_line_str>:
{
   0:	2f                   	das
   1:	68 6f 6d 65 2f       	push   0x2f656d6f
   6:	64 2f                	fs das
   8:	5f                   	pop    edi
   9:	2f                   	das
   a:	73 61                	jae    6d <.debug_line_str+0x6d>
   c:	66 65 5f             	gs pop di
  return sizeof(int);
   f:	77 66                	ja     77 <.debug_line_str+0x77>
  11:	2f                   	das
}
  12:	77 6f                	ja     83 <.debug_line_str+0x83>
{
  14:	72 6b                	jb     81 <.debug_line_str+0x81>
  16:	2f                   	das
  17:	53                   	push   ebx
  18:	50                   	push   eax
  19:	62 55 2f             	bound  edx,QWORD PTR [ebp+0x2f]
  1c:	63 6f 75             	arpl   WORD PTR [edi+0x75],bp
  1f:	72 73                	jb     94 <.debug_line_str+0x94>
  21:	65 73 2f             	gs jae 53 <.debug_line_str+0x53>
  int r = 1;
  24:	43                   	inc    ebx
  25:	6f                   	outs   dx,DWORD PTR ds:[esi]
  26:	6d                   	ins    DWORD PTR es:[edi],dx
  27:	70 75                	jo     9e <.debug_line_str+0x9e>
  29:	74 65                	je     90 <.debug_line_str+0x90>
  while(n > 1)
  2b:	72 5f                	jb     8c <.debug_line_str+0x8c>
    r *= n--;
  2d:	41                   	inc    ecx
  2e:	72 63                	jb     93 <.debug_line_str+0x93>
  30:	68 69 74 65 63       	push   0x63657469
  35:	74 75                	je     ac <.debug_line_str+0xac>
  37:	72 65                	jb     9e <.debug_line_str+0x9e>
  39:	2d 53 50 62 55       	sub    eax,0x55625053
  3e:	2d 43 42 2e 35       	sub    eax,0x352e4243
  while(n > 1)
  43:	30 38                	xor    BYTE PTR [eax],bh
  return r;
  45:	30 2f                	xor    BYTE PTR [edi],ch
  47:	65 78 61             	gs js  ab <.debug_line_str+0xab>
{
  4a:	6d                   	ins    DWORD PTR es:[edi],dx
  4b:	70 6c                	jo     b9 <.debug_line_str+0xb9>
  4d:	65 73 2f             	gs jae 7f <.debug_line_str+0x7f>
  50:	63 72 6f             	arpl   WORD PTR [edx+0x6f],si
  53:	73 73                	jae    c8 <.debug_line_str+0xc8>
  55:	2d 63 6f 6d 70       	sub    eax,0x706d6f63
  5a:	69 6c 69 6e 67 00 63 63 	imul   ebp,DWORD PTR [ecx+ebp*2+0x6e],0x63630067
  62:	65 2e 63 00          	gs arpl WORD PTR cs:[eax],ax
  66:	2f                   	das
  double res = 1, tmp = base;
  67:	68 6f 6d 65 2f       	push   0x2f656d6f
  6c:	64 2f                	fs das
  6e:	5f                   	pop    edi
  6f:	2f                   	das
  70:	73 61                	jae    d3 <.debug_line_str+0xd3>
  while(pow)
  72:	66 65 5f             	gs pop di
    if(pow & 1)
  75:	77 66                	ja     dd <.debug_line_str+0xdd>
  77:	2f                   	das
  78:	77 6f                	ja     e9 <main+0x4c>
  7a:	72 6b                	jb     e7 <main+0x4a>
  7c:	2f                   	das
  7d:	53                   	push   ebx
      res *= tmp;
  7e:	50                   	push   eax
  7f:	62 55 2f             	bound  edx,QWORD PTR [ebp+0x2f]
  82:	63 6f 75             	arpl   WORD PTR [edi+0x75],bp
  85:	72 73                	jb     fa <main+0x5d>
    tmp *= tmp;
  87:	65 73 2f             	gs jae b9 <.debug_line_str+0xb9>
  8a:	43                   	inc    ebx
  8b:	6f                   	outs   dx,DWORD PTR ds:[esi]
  8c:	6d                   	ins    DWORD PTR es:[edi],dx
  8d:	70 75                	jo     104 <main+0x67>
    pow >>= 1;
  8f:	74 65                	je     f6 <main+0x59>
  91:	72 5f                	jb     f2 <main+0x55>
  while(pow)
  93:	41                   	inc    ecx
  94:	72 63                	jb     f9 <main+0x5c>
  96:	68 69 74 65 63       	push   0x63657469
}
  9b:	74 75                	je     112 <main+0x75>
{
  9d:	72 65                	jb     104 <main+0x67>
  9f:	2d 53 50 62 55       	sub    eax,0x55625053
  a4:	2d 43 42 2e 35       	sub    eax,0x352e4243
  a9:	30 38                	xor    BYTE PTR [eax],bh
  ab:	30 2f                	xor    BYTE PTR [edi],ch
  ad:	65 78 61             	gs js  111 <main+0x74>
  b0:	6d                   	ins    DWORD PTR es:[edi],dx
  b1:	70 6c                	jo     11f <main+0x82>
  b3:	65 73 2f             	gs jae e5 <.debug_line_str+0xe5>
  b6:	63 72 6f             	arpl   WORD PTR [edx+0x6f],si
  printf("sizeof(int): %d\n", sizeofint());
  b9:	73 73                	jae    12e <main+0x91>
  bb:	2d 63 6f 6d 70       	sub    eax,0x706d6f63
  c0:	69 6c 69 6e 67 00 2f 75 	imul   ebp,DWORD PTR [ecx+ebp*2+0x6e],0x752f0067
  c8:	73 72                	jae    13c <main+0x9f>
  ca:	2f                   	das
  cb:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [esi+0x63],0x6564756c
  printf("factorial(6): %d.\n", factorial(6));
  d2:	00 63 63             	add    BYTE PTR [ebx+0x63],ah
  d5:	65 2e 63 00          	gs arpl WORD PTR cs:[eax],ax
  d9:	63 63 65             	arpl   WORD PTR [ebx+0x65],sp
  dc:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
  df:	73 74                	jae    155 <main+0xb8>
  e1:	64                   	fs
  e2:	69                   	.byte 0x69
  e3:	6f                   	outs   dx,DWORD PTR ds:[esi]
  e4:	2e                   	cs
  e5:	68                   	.byte 0x68
	...

Дизассемблирование раздела .comment:

00000000 <.comment>:
{
   0:	00 47 43             	add    BYTE PTR [edi+0x43],al
   3:	43                   	inc    ebx
   4:	3a 20                	cmp    ah,BYTE PTR [eax]
   6:	28 47 4e             	sub    BYTE PTR [edi+0x4e],al
   9:	55                   	push   ebp
   a:	29 20                	sub    DWORD PTR [eax],esp
   c:	31 33                	xor    DWORD PTR [ebx],esi
  return sizeof(int);
   e:	2e 31 2e             	xor    DWORD PTR cs:[esi],ebp
  11:	31 20                	xor    DWORD PTR [eax],esp
}
  13:	32 30                	xor    dh,BYTE PTR [eax]
{
  15:	32 33                	xor    dh,BYTE PTR [ebx]
  17:	30 34 32             	xor    BYTE PTR [edx+esi*1],dh
  1a:	39 00                	cmp    DWORD PTR [eax],eax

Дизассемблирование раздела .note.gnu.property:

00000000 <.note.gnu.property>:
   0:	04 00                	add    al,0x0
   2:	00 00                	add    BYTE PTR [eax],al
   4:	18 00                	sbb    BYTE PTR [eax],al
   6:	00 00                	add    BYTE PTR [eax],al
   8:	05 00 00 00 47       	add    eax,0x47000000
   d:	4e                   	dec    esi
   e:	55                   	push   ebp
   f:	00 02                	add    BYTE PTR [edx],al
  11:	00 01                	add    BYTE PTR [ecx],al
  13:	c0 04 00 00          	rol    BYTE PTR [eax+eax*1],0x0
  17:	00 01                	add    BYTE PTR [ecx],al
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 01                	add    BYTE PTR [ecx],al
  1d:	00 01                	add    BYTE PTR [ecx],al
  1f:	c0 04 00 00          	rol    BYTE PTR [eax+eax*1],0x0
  23:	00 03                	add    BYTE PTR [ebx],al
  25:	00 00                	add    BYTE PTR [eax],al
	...

Дизассемблирование раздела .eh_frame:

00000000 <.eh_frame>:
   0:	14 00                	adc    al,0x0
   2:	00 00                	add    BYTE PTR [eax],al
   4:	00 00                	add    BYTE PTR [eax],al
   6:	00 00                	add    BYTE PTR [eax],al
   8:	01 7a 52             	add    DWORD PTR [edx+0x52],edi
   b:	00 01                	add    BYTE PTR [ecx],al
   d:	7c 08                	jl     17 <.eh_frame+0x17>
   f:	01 1b                	add    DWORD PTR [ebx],ebx
  11:	0c 04                	or     al,0x4
  13:	04 88                	add    al,0x88
  15:	01 00                	add    DWORD PTR [eax],eax
  17:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1a:	00 00                	add    BYTE PTR [eax],al
  1c:	1c 00                	sbb    al,0x0
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	14 00                	adc    al,0x0
  26:	00 00                	add    BYTE PTR [eax],al
  28:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  2b:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
  31:	50                   	push   eax
  32:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
  35:	04 00                	add    al,0x0
  37:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  3a:	00 00                	add    BYTE PTR [eax],al
  3c:	3c 00                	cmp    al,0x0
  3e:	00 00                	add    BYTE PTR [eax],al
  40:	14 00                	adc    al,0x0
  42:	00 00                	add    BYTE PTR [eax],al
  44:	36 00 00             	add    BYTE PTR ss:[eax],al
  47:	00 00                	add    BYTE PTR [eax],al
  49:	41                   	inc    ecx
  4a:	0e                   	push   cs
  4b:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
  51:	72 c5                	jb     18 <.eh_frame+0x18>
  53:	0c 04                	or     al,0x4
  55:	04 00                	add    al,0x0
  57:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  5a:	00 00                	add    BYTE PTR [eax],al
  5c:	5c                   	pop    esp
  5d:	00 00                	add    BYTE PTR [eax],al
  5f:	00 4a 00             	add    BYTE PTR [edx+0x0],cl
  62:	00 00                	add    BYTE PTR [eax],al
  64:	53                   	push   ebx
  65:	00 00                	add    BYTE PTR [eax],al
  67:	00 00                	add    BYTE PTR [eax],al
  69:	41                   	inc    ecx
  6a:	0e                   	push   cs
  6b:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
  71:	02 4f c5             	add    cl,BYTE PTR [edi-0x3b]
  74:	0c 04                	or     al,0x4
  76:	04 00                	add    al,0x0
  78:	30 00                	xor    BYTE PTR [eax],al
  7a:	00 00                	add    BYTE PTR [eax],al
  7c:	7c 00                	jl     7e <.eh_frame+0x7e>
  7e:	00 00                	add    BYTE PTR [eax],al
  80:	9d                   	popf
  81:	00 00                	add    BYTE PTR [eax],al
  83:	00 94 00 00 00 00 44 	add    BYTE PTR [eax+eax*1+0x44000000],dl
  8a:	0c 01                	or     al,0x1
  8c:	00 49 10             	add    BYTE PTR [ecx+0x10],cl
  8f:	05 02 75 00 42       	add    eax,0x42007502
  94:	0f 03 75 78          	lsl    esi,WORD PTR [ebp+0x78]
  98:	06                   	push   es
  99:	10 03                	adc    BYTE PTR [ebx],al
  9b:	02 75 7c             	add    dh,BYTE PTR [ebp+0x7c]
  9e:	02 7f c1             	add    bh,BYTE PTR [edi-0x3f]
  a1:	0c 01                	or     al,0x1
  a3:	00 41 c3             	add    BYTE PTR [ecx-0x3d],al
  a6:	41                   	inc    ecx
  a7:	c5 43 0c             	lds    eax,FWORD PTR [ebx+0xc]
  aa:	04 04                	add    al,0x4
  ac:	10 00                	adc    BYTE PTR [eax],al
  ae:	00 00                	add    BYTE PTR [eax],al
  b0:	b0 00                	mov    al,0x0
  b2:	00 00                	add    BYTE PTR [eax],al
  b4:	00 00                	add    BYTE PTR [eax],al
  b6:	00 00                	add    BYTE PTR [eax],al
  b8:	04 00                	add    al,0x0
  ba:	00 00                	add    BYTE PTR [eax],al
  bc:	00 00                	add    BYTE PTR [eax],al
  be:	00 00                	add    BYTE PTR [eax],al
  c0:	10 00                	adc    BYTE PTR [eax],al
  c2:	00 00                	add    BYTE PTR [eax],al
  c4:	c4 00                	les    eax,FWORD PTR [eax]
  c6:	00 00                	add    BYTE PTR [eax],al
  c8:	00 00                	add    BYTE PTR [eax],al
  ca:	00 00                	add    BYTE PTR [eax],al
  cc:	04 00                	add    al,0x0
  ce:	00 00                	add    BYTE PTR [eax],al
  d0:	00 00                	add    BYTE PTR [eax],al
  d2:	00 00                	add    BYTE PTR [eax],al
  d4:	10 00                	adc    BYTE PTR [eax],al
  d6:	00 00                	add    BYTE PTR [eax],al
  d8:	d8 00                	fadd   DWORD PTR [eax]
  da:	00 00                	add    BYTE PTR [eax],al
  dc:	00 00                	add    BYTE PTR [eax],al
  de:	00 00                	add    BYTE PTR [eax],al
  e0:	04 00                	add    al,0x0
  e2:	00 00                	add    BYTE PTR [eax],al
  e4:	00 00                	add    BYTE PTR [eax],al
	...
