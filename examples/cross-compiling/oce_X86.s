
cce_X86.o:     формат файла elf32-i386


Дизассемблирование раздела .group:

00000000 <.group>:
#include <stdio.h>

int sizeofint()
{
   0:	01 00                	add    DWORD PTR [eax],eax
   2:	00 00                	add    BYTE PTR [eax],al
   4:	08 00                	or     BYTE PTR [eax],al
	...

Дизассемблирование раздела .group:

00000000 <.group>:
   0:	01 00                	add    DWORD PTR [eax],eax
   2:	00 00                	add    BYTE PTR [eax],al
   4:	09 00                	or     DWORD PTR [eax],eax
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

0000004a <main>:

int main()
{
  4a:	8d 4c 24 04          	lea    ecx,[esp+0x4]
  4e:	83 e4 f0             	and    esp,0xfffffff0
  51:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
  54:	55                   	push   ebp
  55:	89 e5                	mov    ebp,esp
  57:	53                   	push   ebx
  58:	51                   	push   ecx
  59:	e8 fc ff ff ff       	call   5a <main+0x10>
  5e:	81 c3 02 00 00 00    	add    ebx,0x2
  printf("%d\n", factorial(6));
  64:	6a 06                	push   0x6
  66:	e8 fc ff ff ff       	call   67 <main+0x1d>
  6b:	83 c4 04             	add    esp,0x4
  6e:	83 ec 08             	sub    esp,0x8
  71:	50                   	push   eax
  72:	8d 83 00 00 00 00    	lea    eax,[ebx+0x0]
  78:	50                   	push   eax
  79:	e8 fc ff ff ff       	call   7a <main+0x30>
  7e:	83 c4 10             	add    esp,0x10
  return 0;
  81:	b8 00 00 00 00       	mov    eax,0x0
}
  86:	8d 65 f8             	lea    esp,[ebp-0x8]
  89:	59                   	pop    ecx
  8a:	5b                   	pop    ebx
  8b:	5d                   	pop    ebp
  8c:	8d 61 fc             	lea    esp,[ecx-0x4]
  8f:	c3                   	ret

Дизассемблирование раздела .rodata:

00000000 <.rodata>:
   0:	25                   	.byte 0x25
   1:	64 0a 00             	or     al,BYTE PTR fs:[eax]

Дизассемблирование раздела .text.__x86.get_pc_thunk.ax:

00000000 <__x86.get_pc_thunk.ax>:
   0:	8b 04 24             	mov    eax,DWORD PTR [esp]
   3:	c3                   	ret

Дизассемблирование раздела .text.__x86.get_pc_thunk.bx:

00000000 <__x86.get_pc_thunk.bx>:
   0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   3:	c3                   	ret

Дизассемблирование раздела .debug_info:

00000000 <.debug_info>:
{
   0:	f4                   	hlt
   1:	00 00                	add    BYTE PTR [eax],al
   3:	00 05 00 01 04 00    	add    BYTE PTR ds:0x40100,al
   9:	00 00                	add    BYTE PTR [eax],al
   b:	00 02                	add    BYTE PTR [edx],al
  return sizeof(int);
   d:	1b 00                	sbb    eax,DWORD PTR [eax]
   f:	00 00                	add    BYTE PTR [eax],al
  11:	1d 60 00 00 00       	sbb    eax,0x60
	...
{
  1e:	90                   	nop
  1f:	00 00                	add    BYTE PTR [eax],al
  21:	00 00                	add    BYTE PTR [eax],al
  23:	00 00                	add    BYTE PTR [eax],al
  int r = 1;
  25:	00 01                	add    BYTE PTR [ecx],al
  27:	04 07                	add    al,0x7
  29:	0e                   	push   cs
  2a:	00 00                	add    BYTE PTR [eax],al
  while(n > 1)
  2c:	00 01                	add    BYTE PTR [ecx],al
    r *= n--;
  2e:	01 06                	add    DWORD PTR [esi],eax
  30:	8b 00                	mov    eax,DWORD PTR [eax]
  32:	00 00                	add    BYTE PTR [eax],al
  34:	03 2d 00 00 00 01    	add    ebp,DWORD PTR ds:0x1000000
  3a:	01 08                	add    DWORD PTR [eax],ecx
  3c:	90                   	nop
  3d:	00 00                	add    BYTE PTR [eax],al
  while(n > 1)
  3f:	00 01                	add    BYTE PTR [ecx],al
  41:	02 07                	add    al,BYTE PTR [edi]
  43:	b6 00                	mov    dh,0x0
  return r;
  45:	00 00                	add    BYTE PTR [eax],al
  47:	01 04 07             	add    DWORD PTR [edi+eax*1],eax
{
  4a:	62 00                	bound  eax,QWORD PTR [eax]
  4c:	00 00                	add    BYTE PTR [eax],al
  4e:	01 01                	add    DWORD PTR [ecx],eax
  50:	06                   	push   es
  51:	da 00                	fiadd  DWORD PTR [eax]
  53:	00 00                	add    BYTE PTR [eax],al
  55:	01 02                	add    DWORD PTR [edx],eax
  57:	05 d0 00 00 00       	add    eax,0xd0
  5c:	04 04                	add    al,0x4
  5e:	05 69 6e 74 00       	add    eax,0x746e69
  63:	01 08                	add    DWORD PTR [eax],ecx
  printf("%d\n", factorial(6));
  65:	05 00 00 00 00       	add    eax,0x0
  6a:	01 08                	add    DWORD PTR [eax],ecx
  6c:	07                   	pop    es
  6d:	74 00                	je     6f <.debug_info+0x6f>
  6f:	00 00                	add    BYTE PTR [eax],al
  71:	01 04 05 a3 00 00 00 	add    DWORD PTR [eax*1+0xa3],eax
  78:	05 c9 00 00 00       	add    eax,0xc9
  7d:	02 64 01 0c          	add    ah,BYTE PTR [ecx+eax*1+0xc]
  return 0;
  81:	5c                   	pop    esp
  82:	00 00                	add    BYTE PTR [eax],al
  84:	00 90 00 00 00 06    	add    BYTE PTR [eax+0x6000000],dl
}
  8a:	90                   	nop
  8b:	00 00                	add    BYTE PTR [eax],al
  8d:	00 07                	add    BYTE PTR [edi],al
  8f:	00 08                	add    BYTE PTR [eax],cl
  91:	04 34                	add    al,0x34
  93:	00 00                	add    BYTE PTR [eax],al
  95:	00 09                	add    BYTE PTR [ecx],cl
  97:	9e                   	sahf
  98:	00 00                	add    BYTE PTR [eax],al
  9a:	00 01                	add    BYTE PTR [ecx],al
  9c:	10 05 5c 00 00 00    	adc    BYTE PTR ds:0x5c,al
  a2:	4a                   	dec    edx
  a3:	00 00                	add    BYTE PTR [eax],al
  a5:	00 46 00             	add    BYTE PTR [esi+0x0],al
  a8:	00 00                	add    BYTE PTR [eax],al
  aa:	01 9c 0a ac 00 00 00 	add    DWORD PTR [edx+ecx*1+0xac],ebx
  b1:	01 08                	add    DWORD PTR [eax],ecx
  b3:	05 5c 00 00 00       	add    eax,0x5c
  b8:	14 00                	adc    al,0x0
  ba:	00 00                	add    BYTE PTR [eax],al
  bc:	36 00 00             	add    BYTE PTR ss:[eax],al
  bf:	00 01                	add    BYTE PTR [ecx],al
  c1:	9c                   	pushf
  c2:	e1 00                	loope  c4 <.debug_info+0xc4>
  c4:	00 00                	add    BYTE PTR [eax],al
  c6:	0b 6e 00             	or     ebp,DWORD PTR [esi+0x0]
  c9:	01 08                	add    DWORD PTR [eax],ecx
  cb:	13 5c 00 00          	adc    ebx,DWORD PTR [eax+eax*1+0x0]
  cf:	00 02                	add    BYTE PTR [edx],al
  d1:	91                   	xchg   ecx,eax
  d2:	00 0c 72             	add    BYTE PTR [edx+esi*2],cl
  d5:	00 01                	add    BYTE PTR [ecx],al
  d7:	0a 07                	or     al,BYTE PTR [edi]
  d9:	5c                   	pop    esp
  da:	00 00                	add    BYTE PTR [eax],al
  dc:	00 02                	add    BYTE PTR [edx],al
  de:	91                   	xchg   ecx,eax
  df:	74 00                	je     e1 <.debug_info+0xe1>
  e1:	0d 58 00 00 00       	or     eax,0x58
  e6:	01 03                	add    DWORD PTR [ebx],eax
  e8:	05 5c 00 00 00       	add    eax,0x5c
  ed:	00 00                	add    BYTE PTR [eax],al
  ef:	00 00                	add    BYTE PTR [eax],al
  f1:	14 00                	adc    al,0x0
  f3:	00 00                	add    BYTE PTR [eax],al
  f5:	01                   	.byte 0x1
  f6:	9c                   	pushf
	...

Дизассемблирование раздела .debug_abbrev:

00000000 <.debug_abbrev>:
{
   0:	01 24 00             	add    DWORD PTR [eax+eax*1],esp
   3:	0b 0b                	or     ecx,DWORD PTR [ebx]
   5:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
   8:	0e                   	push   cs
   9:	00 00                	add    BYTE PTR [eax],al
   b:	02 11                	add    dl,BYTE PTR [ecx]
  return sizeof(int);
   d:	01 25 0e 13 0b 03    	add    DWORD PTR ds:0x30b130e,esp
}
  13:	1f                   	pop    ds
{
  14:	1b 1f                	sbb    ebx,DWORD PTR [edi]
  16:	11 01                	adc    DWORD PTR [ecx],eax
  18:	12 06                	adc    al,BYTE PTR [esi]
  1a:	10 17                	adc    BYTE PTR [edi],dl
  1c:	00 00                	add    BYTE PTR [eax],al
  1e:	03 26                	add    esp,DWORD PTR [esi]
  20:	00 49 13             	add    BYTE PTR [ecx+0x13],cl
  23:	00 00                	add    BYTE PTR [eax],al
  int r = 1;
  25:	04 24                	add    al,0x24
  27:	00 0b                	add    BYTE PTR [ebx],cl
  29:	0b 3e                	or     edi,DWORD PTR [esi]
  while(n > 1)
  2b:	0b 03                	or     eax,DWORD PTR [ebx]
    r *= n--;
  2d:	08 00                	or     BYTE PTR [eax],al
  2f:	00 05 2e 01 3f 19    	add    BYTE PTR ds:0x193f012e,al
  35:	03 0e                	add    ecx,DWORD PTR [esi]
  37:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  39:	3b 05 39 0b 27 19    	cmp    eax,DWORD PTR ds:0x19270b39
  while(n > 1)
  3f:	49                   	dec    ecx
  40:	13 3c 19             	adc    edi,DWORD PTR [ecx+ebx*1]
  43:	01 13                	add    DWORD PTR [ebx],edx
  return r;
  45:	00 00                	add    BYTE PTR [eax],al
  47:	06                   	push   es
}
  48:	05 00 49 13 00       	add    eax,0x134900
{
  4d:	00 07                	add    BYTE PTR [edi],al
  4f:	18 00                	sbb    BYTE PTR [eax],al
  51:	00 00                	add    BYTE PTR [eax],al
  53:	08 0f                	or     BYTE PTR [edi],cl
  55:	00 0b                	add    BYTE PTR [ebx],cl
  57:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
  5a:	00 00                	add    BYTE PTR [eax],al
  5c:	09 2e                	or     DWORD PTR [esi],ebp
  5e:	00 3f                	add    BYTE PTR [edi],bh
  60:	19 03                	sbb    DWORD PTR [ebx],eax
  62:	0e                   	push   cs
  63:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  printf("%d\n", factorial(6));
  65:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
  67:	39 0b                	cmp    DWORD PTR [ebx],ecx
  69:	49                   	dec    ecx
  6a:	13 11                	adc    edx,DWORD PTR [ecx]
  6c:	01 12                	add    DWORD PTR [edx],edx
  6e:	06                   	push   es
  6f:	40                   	inc    eax
  70:	18 7c 19 00          	sbb    BYTE PTR [ecx+ebx*1+0x0],bh
  74:	00 0a                	add    BYTE PTR [edx],cl
  76:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
  79:	19 03                	sbb    DWORD PTR [ebx],eax
  7b:	0e                   	push   cs
  7c:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  7e:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
  80:	39 0b                	cmp    DWORD PTR [ebx],ecx
  return 0;
  82:	27                   	daa
  83:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
}
  86:	11 01                	adc    DWORD PTR [ecx],eax
  88:	12 06                	adc    al,BYTE PTR [esi]
  8a:	40                   	inc    eax
  8b:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
  8e:	01 13                	add    DWORD PTR [ebx],edx
  90:	00 00                	add    BYTE PTR [eax],al
  92:	0b 05 00 03 08 3a    	or     eax,DWORD PTR ds:0x3a080300
  98:	0b 3b                	or     edi,DWORD PTR [ebx]
  9a:	0b 39                	or     edi,DWORD PTR [ecx]
  9c:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
  9f:	02 18                	add    bl,BYTE PTR [eax]
  a1:	00 00                	add    BYTE PTR [eax],al
  a3:	0c 34                	or     al,0x34
  a5:	00 03                	add    BYTE PTR [ebx],al
  a7:	08 3a                	or     BYTE PTR [edx],bh
  a9:	0b 3b                	or     edi,DWORD PTR [ebx]
  ab:	0b 39                	or     edi,DWORD PTR [ecx]
  ad:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
  b0:	02 18                	add    bl,BYTE PTR [eax]
  b2:	00 00                	add    BYTE PTR [eax],al
  b4:	0d 2e 00 3f 19       	or     eax,0x193f002e
  b9:	03 0e                	add    ecx,DWORD PTR [esi]
  bb:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  bd:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
  bf:	39 0b                	cmp    DWORD PTR [ebx],ecx
  c1:	49                   	dec    ecx
  c2:	13 11                	adc    edx,DWORD PTR [ecx]
  c4:	01 12                	add    DWORD PTR [edx],edx
  c6:	06                   	push   es
  c7:	40                   	inc    eax
  c8:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
  cb:	00 00                	add    BYTE PTR [eax],al
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
  14:	90                   	nop
	...

Дизассемблирование раздела .debug_line:

00000000 <.debug_line>:
{
   0:	79 00                	jns    2 <.debug_line+0x2>
   2:	00 00                	add    BYTE PTR [eax],al
   4:	05 00 04 00 33       	add    eax,0x33000400
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
  48:	15 05 0a c9 05       	adc    eax,0x5c90a05
{
  4d:	01 59 31             	add    DWORD PTR [ecx+0x31],ebx
  50:	05 07 f3 05 08       	add    eax,0x805f307
  55:	75 05                	jne    5c <.debug_line+0x5c>
  57:	0b 2f                	or     ebp,DWORD PTR [edi]
  59:	05 07 90 05 0b       	add    eax,0xb059007
  5e:	8f 05 0a 68 05 01    	pop    DWORD PTR ds:0x105680a
  printf("%d\n", factorial(6));
  64:	3d 31 05 03 08       	cmp    eax,0x8030531
  69:	91                   	xchg   ecx,eax
  6a:	00 02                	add    BYTE PTR [edx],al
  6c:	04 01                	add    al,0x1
  6e:	06                   	push   es
  6f:	9e                   	sahf
  70:	05 0a 06 08 2f       	add    eax,0x2f08060a
  75:	05 01 59 02 0a       	add    eax,0xa025901
  7a:	00 01                	add    BYTE PTR [ecx],al
  7c:	01                   	.byte 0x1

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
  printf("%d\n", factorial(6));
  64:	6e                   	outs   dx,BYTE PTR ds:[esi]
  65:	67 20 75 6e          	and    BYTE PTR [di+0x6e],dh
  69:	73 69                	jae    d4 <.debug_str+0xd4>
  6b:	67 6e                	outs   dx,BYTE PTR ds:[si]
  6d:	65 64 20 69 6e       	gs and BYTE PTR fs:[ecx+0x6e],ch
  72:	74 00                	je     74 <.debug_str+0x74>
  74:	6c                   	ins    BYTE PTR es:[edi],dx
  75:	6f                   	outs   dx,DWORD PTR ds:[esi]
  76:	6e                   	outs   dx,BYTE PTR ds:[esi]
  77:	67 20 6c 6f          	and    BYTE PTR [si+0x6f],ch
  7b:	6e                   	outs   dx,BYTE PTR ds:[esi]
  7c:	67 20 75 6e          	and    BYTE PTR [di+0x6e],dh
  80:	73 69                	jae    eb <main+0xa1>
  return 0;
  82:	67 6e                	outs   dx,BYTE PTR ds:[si]
  84:	65 64 20 69 6e       	gs and BYTE PTR fs:[ecx+0x6e],ch
}
  89:	74 00                	je     8b <.debug_str+0x8b>
  8b:	63 68 61             	arpl   WORD PTR [eax+0x61],bp
  8e:	72 00                	jb     90 <.debug_str+0x90>
  90:	75 6e                	jne    100 <main+0xb6>
  92:	73 69                	jae    fd <main+0xb3>
  94:	67 6e                	outs   dx,BYTE PTR ds:[si]
  96:	65 64 20 63 68       	gs and BYTE PTR fs:[ebx+0x68],ah
  9b:	61                   	popa
  9c:	72 00                	jb     9e <.debug_str+0x9e>
  9e:	6d                   	ins    DWORD PTR es:[edi],dx
  9f:	61                   	popa
  a0:	69 6e 00 6c 6f 6e 67 	imul   ebp,DWORD PTR [esi+0x0],0x676e6f6c
  a7:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
  aa:	74 00                	je     ac <.debug_str+0xac>
  ac:	66 61                	popaw
  ae:	63 74 6f 72          	arpl   WORD PTR [edi+ebp*2+0x72],si
  b2:	69 61 6c 00 73 68 6f 	imul   esp,DWORD PTR [ecx+0x6c],0x6f687300
  b9:	72 74                	jb     12f <main+0xe5>
  bb:	20 75 6e             	and    BYTE PTR [ebp+0x6e],dh
  be:	73 69                	jae    129 <main+0xdf>
  c0:	67 6e                	outs   dx,BYTE PTR ds:[si]
  c2:	65 64 20 69 6e       	gs and BYTE PTR fs:[ecx+0x6e],ch
  c7:	74 00                	je     c9 <.debug_str+0xc9>
  c9:	70 72                	jo     13d <main+0xf3>
  cb:	69 6e 74 66 00 73 68 	imul   ebp,DWORD PTR [esi+0x74],0x68730066
  d2:	6f                   	outs   dx,DWORD PTR ds:[esi]
  d3:	72 74                	jb     149 <main+0xff>
  d5:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
  d8:	74 00                	je     da <.debug_str+0xda>
  da:	73 69                	jae    145 <main+0xfb>
  dc:	67 6e                	outs   dx,BYTE PTR ds:[si]
  de:	65 64 20 63 68       	gs and BYTE PTR fs:[ebx+0x68],ah
  e3:	61                   	popa
  e4:	72 00                	jb     e6 <main+0x9c>

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
  printf("%d\n", factorial(6));
  66:	2f                   	das
  67:	68 6f 6d 65 2f       	push   0x2f656d6f
  6c:	64 2f                	fs das
  6e:	5f                   	pop    edi
  6f:	2f                   	das
  70:	73 61                	jae    d3 <.debug_line_str+0xd3>
  72:	66 65 5f             	gs pop di
  75:	77 66                	ja     dd <.debug_line_str+0xdd>
  77:	2f                   	das
  78:	77 6f                	ja     e9 <main+0x9f>
  7a:	72 6b                	jb     e7 <main+0x9d>
  7c:	2f                   	das
  7d:	53                   	push   ebx
  7e:	50                   	push   eax
  7f:	62 55 2f             	bound  edx,QWORD PTR [ebp+0x2f]
  return 0;
  82:	63 6f 75             	arpl   WORD PTR [edi+0x75],bp
  85:	72 73                	jb     fa <main+0xb0>
}
  87:	65 73 2f             	gs jae b9 <.debug_line_str+0xb9>
  8a:	43                   	inc    ebx
  8b:	6f                   	outs   dx,DWORD PTR ds:[esi]
  8c:	6d                   	ins    DWORD PTR es:[edi],dx
  8d:	70 75                	jo     104 <main+0xba>
  8f:	74 65                	je     f6 <main+0xac>
  91:	72 5f                	jb     f2 <main+0xa8>
  93:	41                   	inc    ecx
  94:	72 63                	jb     f9 <main+0xaf>
  96:	68 69 74 65 63       	push   0x63657469
  9b:	74 75                	je     112 <main+0xc8>
  9d:	72 65                	jb     104 <main+0xba>
  9f:	2d 53 50 62 55       	sub    eax,0x55625053
  a4:	2d 43 42 2e 35       	sub    eax,0x352e4243
  a9:	30 38                	xor    BYTE PTR [eax],bh
  ab:	30 2f                	xor    BYTE PTR [edi],ch
  ad:	65 78 61             	gs js  111 <main+0xc7>
  b0:	6d                   	ins    DWORD PTR es:[edi],dx
  b1:	70 6c                	jo     11f <main+0xd5>
  b3:	65 73 2f             	gs jae e5 <.debug_line_str+0xe5>
  b6:	63 72 6f             	arpl   WORD PTR [edx+0x6f],si
  b9:	73 73                	jae    12e <main+0xe4>
  bb:	2d 63 6f 6d 70       	sub    eax,0x706d6f63
  c0:	69 6c 69 6e 67 00 2f 75 	imul   ebp,DWORD PTR [ecx+ebp*2+0x6e],0x752f0067
  c8:	73 72                	jae    13c <main+0xf2>
  ca:	2f                   	das
  cb:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [esi+0x63],0x6564756c
  d2:	00 63 63             	add    BYTE PTR [ebx+0x63],ah
  d5:	65 2e 63 00          	gs arpl WORD PTR cs:[eax],ax
  d9:	63 63 65             	arpl   WORD PTR [ebx+0x65],sp
  dc:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
  df:	73 74                	jae    155 <main+0x10b>
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
  17:	00 00                	add    BYTE PTR [eax],al
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 01                	add    BYTE PTR [ecx],al
  1d:	00 01                	add    BYTE PTR [ecx],al
  1f:	c0 04 00 00          	rol    BYTE PTR [eax+eax*1],0x0
  23:	00 01                	add    BYTE PTR [ecx],al
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
  57:	00 30                	add    BYTE PTR [eax],dh
  59:	00 00                	add    BYTE PTR [eax],al
  5b:	00 5c 00 00          	add    BYTE PTR [eax+eax*1+0x0],bl
  5f:	00 4a 00             	add    BYTE PTR [edx+0x0],cl
  62:	00 00                	add    BYTE PTR [eax],al
  64:	46                   	inc    esi
  65:	00 00                	add    BYTE PTR [eax],al
  67:	00 00                	add    BYTE PTR [eax],al
  69:	44                   	inc    esp
  6a:	0c 01                	or     al,0x1
  6c:	00 49 10             	add    BYTE PTR [ecx+0x10],cl
  6f:	05 02 75 00 42       	add    eax,0x42007502
  74:	0f 03 75 78          	lsl    esi,WORD PTR [ebp+0x78]
  78:	06                   	push   es
  79:	10 03                	adc    BYTE PTR [ebx],al
  7b:	02 75 7c             	add    dh,BYTE PTR [ebp+0x7c]
  7e:	71 c1                	jno    41 <.eh_frame+0x41>
  80:	0c 01                	or     al,0x1
  82:	00 41 c3             	add    BYTE PTR [ecx-0x3d],al
  85:	41                   	inc    ecx
  86:	c5 43 0c             	lds    eax,FWORD PTR [ebx+0xc]
  89:	04 04                	add    al,0x4
  8b:	00 10                	add    BYTE PTR [eax],dl
  8d:	00 00                	add    BYTE PTR [eax],al
  8f:	00 90 00 00 00 00    	add    BYTE PTR [eax+0x0],dl
  95:	00 00                	add    BYTE PTR [eax],al
  97:	00 04 00             	add    BYTE PTR [eax+eax*1],al
  9a:	00 00                	add    BYTE PTR [eax],al
  9c:	00 00                	add    BYTE PTR [eax],al
  9e:	00 00                	add    BYTE PTR [eax],al
  a0:	10 00                	adc    BYTE PTR [eax],al
  a2:	00 00                	add    BYTE PTR [eax],al
  a4:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
  a5:	00 00                	add    BYTE PTR [eax],al
  a7:	00 00                	add    BYTE PTR [eax],al
  a9:	00 00                	add    BYTE PTR [eax],al
  ab:	00 04 00             	add    BYTE PTR [eax+eax*1],al
  ae:	00 00                	add    BYTE PTR [eax],al
  b0:	00 00                	add    BYTE PTR [eax],al
	...
