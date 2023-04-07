
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 3e 00 00    	push   0x3eca(%rip)        # 4ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 cb 3e 00 00 	bnd jmp *0x3ecb(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop

Disassembly of section .plt.got:

00000000000011e0 <__cxa_finalize@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 0d 3e 00 00 	bnd jmp *0x3e0d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011f0 <getenv@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 05 3d 00 00 	bnd jmp *0x3d05(%rip)        # 4f00 <getenv@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <__errno_location@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 fd 3c 00 00 	bnd jmp *0x3cfd(%rip)        # 4f08 <__errno_location@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <strcpy@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 f5 3c 00 00 	bnd jmp *0x3cf5(%rip)        # 4f10 <strcpy@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <puts@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 ed 3c 00 00 	bnd jmp *0x3ced(%rip)        # 4f18 <puts@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <write@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 e5 3c 00 00 	bnd jmp *0x3ce5(%rip)        # 4f20 <write@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <strlen@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 dd 3c 00 00 	bnd jmp *0x3cdd(%rip)        # 4f28 <strlen@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <__stack_chk_fail@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4f30 <__stack_chk_fail@GLIBC_2.4>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <alarm@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <close@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <read@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <fgets@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <strcmp@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <signal@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <gethostbyname@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <__memmove_chk@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <strtol@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <fflush@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__isoc99_sscanf@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <__printf_chk@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <fopen@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <exit@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <connect@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fprintf_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <sleep@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 4d 3c 00 00 	bnd jmp *0x3c4d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <__ctype_b_loc@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 45 3c 00 00 	bnd jmp *0x3c45(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <__sprintf_chk@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 3d 3c 00 00 	bnd jmp *0x3c3d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <socket@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 35 3c 00 00 	bnd jmp *0x3c35(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013a0 <_start>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	31 ed                	xor    %ebp,%ebp
    13a6:	49 89 d1             	mov    %rdx,%r9
    13a9:	5e                   	pop    %rsi
    13aa:	48 89 e2             	mov    %rsp,%rdx
    13ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13b1:	50                   	push   %rax
    13b2:	54                   	push   %rsp
    13b3:	45 31 c0             	xor    %r8d,%r8d
    13b6:	31 c9                	xor    %ecx,%ecx
    13b8:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1489 <main>
    13bf:	ff 15 13 3c 00 00    	call   *0x3c13(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13c5:	f4                   	hlt    
    13c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13cd:	00 00 00 

00000000000013d0 <deregister_tm_clones>:
    13d0:	48 8d 3d 89 42 00 00 	lea    0x4289(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    13d7:	48 8d 05 82 42 00 00 	lea    0x4282(%rip),%rax        # 5660 <stdout@GLIBC_2.2.5>
    13de:	48 39 f8             	cmp    %rdi,%rax
    13e1:	74 15                	je     13f8 <deregister_tm_clones+0x28>
    13e3:	48 8b 05 f6 3b 00 00 	mov    0x3bf6(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ea:	48 85 c0             	test   %rax,%rax
    13ed:	74 09                	je     13f8 <deregister_tm_clones+0x28>
    13ef:	ff e0                	jmp    *%rax
    13f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13f8:	c3                   	ret    
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <register_tm_clones>:
    1400:	48 8d 3d 59 42 00 00 	lea    0x4259(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1407:	48 8d 35 52 42 00 00 	lea    0x4252(%rip),%rsi        # 5660 <stdout@GLIBC_2.2.5>
    140e:	48 29 fe             	sub    %rdi,%rsi
    1411:	48 89 f0             	mov    %rsi,%rax
    1414:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1418:	48 c1 f8 03          	sar    $0x3,%rax
    141c:	48 01 c6             	add    %rax,%rsi
    141f:	48 d1 fe             	sar    %rsi
    1422:	74 14                	je     1438 <register_tm_clones+0x38>
    1424:	48 8b 05 c5 3b 00 00 	mov    0x3bc5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    142b:	48 85 c0             	test   %rax,%rax
    142e:	74 08                	je     1438 <register_tm_clones+0x38>
    1430:	ff e0                	jmp    *%rax
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1438:	c3                   	ret    
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <__do_global_dtors_aux>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	80 3d 3d 42 00 00 00 	cmpb   $0x0,0x423d(%rip)        # 5688 <completed.0>
    144b:	75 2b                	jne    1478 <__do_global_dtors_aux+0x38>
    144d:	55                   	push   %rbp
    144e:	48 83 3d a2 3b 00 00 	cmpq   $0x0,0x3ba2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1455:	00 
    1456:	48 89 e5             	mov    %rsp,%rbp
    1459:	74 0c                	je     1467 <__do_global_dtors_aux+0x27>
    145b:	48 8b 3d a6 3b 00 00 	mov    0x3ba6(%rip),%rdi        # 5008 <__dso_handle>
    1462:	e8 79 fd ff ff       	call   11e0 <__cxa_finalize@plt>
    1467:	e8 64 ff ff ff       	call   13d0 <deregister_tm_clones>
    146c:	c6 05 15 42 00 00 01 	movb   $0x1,0x4215(%rip)        # 5688 <completed.0>
    1473:	5d                   	pop    %rbp
    1474:	c3                   	ret    
    1475:	0f 1f 00             	nopl   (%rax)
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <frame_dummy>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	e9 77 ff ff ff       	jmp    1400 <register_tm_clones>

0000000000001489 <main>:
    1489:	f3 0f 1e fa          	endbr64 
    148d:	53                   	push   %rbx
    148e:	83 ff 01             	cmp    $0x1,%edi
    1491:	0f 84 bc 00 00 00    	je     1553 <main+0xca>
    1497:	48 89 f3             	mov    %rsi,%rbx
    149a:	83 ff 02             	cmp    $0x2,%edi
    149d:	0f 85 e5 00 00 00    	jne    1588 <main+0xff>
    14a3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14a7:	48 8d 35 56 1b 00 00 	lea    0x1b56(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ae:	e8 6d fe ff ff       	call   1320 <fopen@plt>
    14b3:	48 89 05 d6 41 00 00 	mov    %rax,0x41d6(%rip)        # 5690 <infile>
    14ba:	48 85 c0             	test   %rax,%rax
    14bd:	0f 84 a3 00 00 00    	je     1566 <main+0xdd>
    14c3:	e8 05 06 00 00       	call   1acd <initialize_bomb>
    14c8:	48 8d 3d 71 1b 00 00 	lea    0x1b71(%rip),%rdi        # 3040 <_IO_stdin_used+0x40>
    14cf:	e8 4c fd ff ff       	call   1220 <puts@plt>
    14d4:	48 8d 3d a5 1b 00 00 	lea    0x1ba5(%rip),%rdi        # 3080 <_IO_stdin_used+0x80>
    14db:	e8 40 fd ff ff       	call   1220 <puts@plt>
    14e0:	e8 39 07 00 00       	call   1c1e <read_line>
    14e5:	48 89 c7             	mov    %rax,%rdi
    14e8:	e8 be 00 00 00       	call   15ab <phase_1>
    14ed:	e8 80 08 00 00       	call   1d72 <phase_defused>
    14f2:	e8 27 07 00 00       	call   1c1e <read_line>
    14f7:	48 89 c7             	mov    %rax,%rdi
    14fa:	e8 d0 00 00 00       	call   15cf <phase_2>
    14ff:	e8 6e 08 00 00       	call   1d72 <phase_defused>
    1504:	e8 15 07 00 00       	call   1c1e <read_line>
    1509:	48 89 c7             	mov    %rax,%rdi
    150c:	e8 32 01 00 00       	call   1643 <phase_3>
    1511:	e8 5c 08 00 00       	call   1d72 <phase_defused>
    1516:	e8 03 07 00 00       	call   1c1e <read_line>
    151b:	48 89 c7             	mov    %rax,%rdi
    151e:	e8 11 02 00 00       	call   1734 <phase_4>
    1523:	e8 4a 08 00 00       	call   1d72 <phase_defused>
    1528:	e8 f1 06 00 00       	call   1c1e <read_line>
    152d:	48 89 c7             	mov    %rax,%rdi
    1530:	e8 78 02 00 00       	call   17ad <phase_5>
    1535:	e8 38 08 00 00       	call   1d72 <phase_defused>
    153a:	e8 df 06 00 00       	call   1c1e <read_line>
    153f:	48 89 c7             	mov    %rax,%rdi
    1542:	e8 b2 02 00 00       	call   17f9 <phase_6>
    1547:	e8 26 08 00 00       	call   1d72 <phase_defused>
    154c:	b8 00 00 00 00       	mov    $0x0,%eax
    1551:	5b                   	pop    %rbx
    1552:	c3                   	ret    
    1553:	48 8b 05 16 41 00 00 	mov    0x4116(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    155a:	48 89 05 2f 41 00 00 	mov    %rax,0x412f(%rip)        # 5690 <infile>
    1561:	e9 5d ff ff ff       	jmp    14c3 <main+0x3a>
    1566:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    156a:	48 8b 13             	mov    (%rbx),%rdx
    156d:	48 8d 35 92 1a 00 00 	lea    0x1a92(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1574:	bf 01 00 00 00       	mov    $0x1,%edi
    1579:	e8 92 fd ff ff       	call   1310 <__printf_chk@plt>
    157e:	bf 08 00 00 00       	mov    $0x8,%edi
    1583:	e8 a8 fd ff ff       	call   1330 <exit@plt>
    1588:	48 8b 16             	mov    (%rsi),%rdx
    158b:	48 8d 35 91 1a 00 00 	lea    0x1a91(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    1592:	bf 01 00 00 00       	mov    $0x1,%edi
    1597:	b8 00 00 00 00       	mov    $0x0,%eax
    159c:	e8 6f fd ff ff       	call   1310 <__printf_chk@plt>
    15a1:	bf 08 00 00 00       	mov    $0x8,%edi
    15a6:	e8 85 fd ff ff       	call   1330 <exit@plt>

00000000000015ab <phase_1>:
    15ab:	f3 0f 1e fa          	endbr64 
    15af:	48 83 ec 08          	sub    $0x8,%rsp
    15b3:	48 8d 35 f6 1a 00 00 	lea    0x1af6(%rip),%rsi        # 30b0 <_IO_stdin_used+0xb0>
    15ba:	e8 ae 04 00 00       	call   1a6d <strings_not_equal>
    15bf:	85 c0                	test   %eax,%eax
    15c1:	75 05                	jne    15c8 <phase_1+0x1d>
    15c3:	48 83 c4 08          	add    $0x8,%rsp
    15c7:	c3                   	ret    
    15c8:	e8 b4 05 00 00       	call   1b81 <explode_bomb>
    15cd:	eb f4                	jmp    15c3 <phase_1+0x18>

00000000000015cf <phase_2>:
    15cf:	f3 0f 1e fa          	endbr64 
    15d3:	55                   	push   %rbp
    15d4:	53                   	push   %rbx
    15d5:	48 83 ec 28          	sub    $0x28,%rsp
    15d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15e0:	00 00 
    15e2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    15e7:	31 c0                	xor    %eax,%eax
    15e9:	48 89 e6             	mov    %rsp,%rsi
    15ec:	e8 e8 05 00 00       	call   1bd9 <read_six_numbers>
    15f1:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    15f5:	75 07                	jne    15fe <phase_2+0x2f>
    15f7:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    15fc:	74 05                	je     1603 <phase_2+0x34>
    15fe:	e8 7e 05 00 00       	call   1b81 <explode_bomb>
    1603:	48 89 e3             	mov    %rsp,%rbx
    1606:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    160b:	eb 09                	jmp    1616 <phase_2+0x47>
    160d:	48 83 c3 04          	add    $0x4,%rbx
    1611:	48 39 eb             	cmp    %rbp,%rbx
    1614:	74 11                	je     1627 <phase_2+0x58>
    1616:	8b 43 04             	mov    0x4(%rbx),%eax
    1619:	03 03                	add    (%rbx),%eax
    161b:	39 43 08             	cmp    %eax,0x8(%rbx)
    161e:	74 ed                	je     160d <phase_2+0x3e>
    1620:	e8 5c 05 00 00       	call   1b81 <explode_bomb>
    1625:	eb e6                	jmp    160d <phase_2+0x3e>
    1627:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    162c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1633:	00 00 
    1635:	75 07                	jne    163e <phase_2+0x6f>
    1637:	48 83 c4 28          	add    $0x28,%rsp
    163b:	5b                   	pop    %rbx
    163c:	5d                   	pop    %rbp
    163d:	c3                   	ret    
    163e:	e8 0d fc ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001643 <phase_3>:
    1643:	f3 0f 1e fa          	endbr64 
    1647:	48 83 ec 18          	sub    $0x18,%rsp
    164b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1652:	00 00 
    1654:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1659:	31 c0                	xor    %eax,%eax
    165b:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1660:	48 89 e2             	mov    %rsp,%rdx
    1663:	48 8d 35 c6 1c 00 00 	lea    0x1cc6(%rip),%rsi        # 3330 <array.0+0x210>
    166a:	e8 91 fc ff ff       	call   1300 <__isoc99_sscanf@plt>
    166f:	83 f8 01             	cmp    $0x1,%eax
    1672:	7e 1a                	jle    168e <phase_3+0x4b>
    1674:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    1678:	77 65                	ja     16df <phase_3+0x9c>
    167a:	8b 04 24             	mov    (%rsp),%eax
    167d:	48 8d 15 7c 1a 00 00 	lea    0x1a7c(%rip),%rdx        # 3100 <_IO_stdin_used+0x100>
    1684:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1688:	48 01 d0             	add    %rdx,%rax
    168b:	3e ff e0             	notrack jmp *%rax
    168e:	e8 ee 04 00 00       	call   1b81 <explode_bomb>
    1693:	eb df                	jmp    1674 <phase_3+0x31>
    1695:	b8 8e 01 00 00       	mov    $0x18e,%eax
    169a:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    169e:	75 52                	jne    16f2 <phase_3+0xaf>
    16a0:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    16a5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    16ac:	00 00 
    16ae:	75 49                	jne    16f9 <phase_3+0xb6>
    16b0:	48 83 c4 18          	add    $0x18,%rsp
    16b4:	c3                   	ret    
    16b5:	b8 42 00 00 00       	mov    $0x42,%eax
    16ba:	eb de                	jmp    169a <phase_3+0x57>
    16bc:	b8 5c 00 00 00       	mov    $0x5c,%eax
    16c1:	eb d7                	jmp    169a <phase_3+0x57>
    16c3:	b8 31 02 00 00       	mov    $0x231,%eax
    16c8:	eb d0                	jmp    169a <phase_3+0x57>
    16ca:	b8 3a 03 00 00       	mov    $0x33a,%eax
    16cf:	eb c9                	jmp    169a <phase_3+0x57>
    16d1:	b8 77 03 00 00       	mov    $0x377,%eax
    16d6:	eb c2                	jmp    169a <phase_3+0x57>
    16d8:	b8 48 01 00 00       	mov    $0x148,%eax
    16dd:	eb bb                	jmp    169a <phase_3+0x57>
    16df:	e8 9d 04 00 00       	call   1b81 <explode_bomb>
    16e4:	b8 00 00 00 00       	mov    $0x0,%eax
    16e9:	eb af                	jmp    169a <phase_3+0x57>
    16eb:	b8 40 03 00 00       	mov    $0x340,%eax
    16f0:	eb a8                	jmp    169a <phase_3+0x57>
    16f2:	e8 8a 04 00 00       	call   1b81 <explode_bomb>
    16f7:	eb a7                	jmp    16a0 <phase_3+0x5d>
    16f9:	e8 52 fb ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000016fe <func4>:
    16fe:	f3 0f 1e fa          	endbr64 
    1702:	53                   	push   %rbx
    1703:	89 d0                	mov    %edx,%eax
    1705:	29 f0                	sub    %esi,%eax
    1707:	89 c3                	mov    %eax,%ebx
    1709:	c1 eb 1f             	shr    $0x1f,%ebx
    170c:	01 c3                	add    %eax,%ebx
    170e:	d1 fb                	sar    %ebx
    1710:	01 f3                	add    %esi,%ebx
    1712:	39 fb                	cmp    %edi,%ebx
    1714:	7f 06                	jg     171c <func4+0x1e>
    1716:	7c 10                	jl     1728 <func4+0x2a>
    1718:	89 d8                	mov    %ebx,%eax
    171a:	5b                   	pop    %rbx
    171b:	c3                   	ret    
    171c:	8d 53 ff             	lea    -0x1(%rbx),%edx
    171f:	e8 da ff ff ff       	call   16fe <func4>
    1724:	01 c3                	add    %eax,%ebx
    1726:	eb f0                	jmp    1718 <func4+0x1a>
    1728:	8d 73 01             	lea    0x1(%rbx),%esi
    172b:	e8 ce ff ff ff       	call   16fe <func4>
    1730:	01 c3                	add    %eax,%ebx
    1732:	eb e4                	jmp    1718 <func4+0x1a>

0000000000001734 <phase_4>:
    1734:	f3 0f 1e fa          	endbr64 
    1738:	48 83 ec 18          	sub    $0x18,%rsp
    173c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1743:	00 00 
    1745:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    174a:	31 c0                	xor    %eax,%eax
    174c:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1751:	48 89 e2             	mov    %rsp,%rdx
    1754:	48 8d 35 d5 1b 00 00 	lea    0x1bd5(%rip),%rsi        # 3330 <array.0+0x210>
    175b:	e8 a0 fb ff ff       	call   1300 <__isoc99_sscanf@plt>
    1760:	83 f8 02             	cmp    $0x2,%eax
    1763:	75 06                	jne    176b <phase_4+0x37>
    1765:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    1769:	76 05                	jbe    1770 <phase_4+0x3c>
    176b:	e8 11 04 00 00       	call   1b81 <explode_bomb>
    1770:	ba 0e 00 00 00       	mov    $0xe,%edx
    1775:	be 00 00 00 00       	mov    $0x0,%esi
    177a:	8b 3c 24             	mov    (%rsp),%edi
    177d:	e8 7c ff ff ff       	call   16fe <func4>
    1782:	83 f8 23             	cmp    $0x23,%eax
    1785:	75 07                	jne    178e <phase_4+0x5a>
    1787:	83 7c 24 04 23       	cmpl   $0x23,0x4(%rsp)
    178c:	74 05                	je     1793 <phase_4+0x5f>
    178e:	e8 ee 03 00 00       	call   1b81 <explode_bomb>
    1793:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1798:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    179f:	00 00 
    17a1:	75 05                	jne    17a8 <phase_4+0x74>
    17a3:	48 83 c4 18          	add    $0x18,%rsp
    17a7:	c3                   	ret    
    17a8:	e8 a3 fa ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000017ad <phase_5>:
    17ad:	f3 0f 1e fa          	endbr64 
    17b1:	53                   	push   %rbx
    17b2:	48 89 fb             	mov    %rdi,%rbx
    17b5:	e8 92 02 00 00       	call   1a4c <string_length>
    17ba:	83 f8 06             	cmp    $0x6,%eax
    17bd:	75 2c                	jne    17eb <phase_5+0x3e>
    17bf:	48 89 d8             	mov    %rbx,%rax
    17c2:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    17c6:	b9 00 00 00 00       	mov    $0x0,%ecx
    17cb:	48 8d 35 4e 19 00 00 	lea    0x194e(%rip),%rsi        # 3120 <array.0>
    17d2:	0f b6 10             	movzbl (%rax),%edx
    17d5:	83 e2 0f             	and    $0xf,%edx
    17d8:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    17db:	48 83 c0 01          	add    $0x1,%rax
    17df:	48 39 f8             	cmp    %rdi,%rax
    17e2:	75 ee                	jne    17d2 <phase_5+0x25>
    17e4:	83 f9 23             	cmp    $0x23,%ecx
    17e7:	75 09                	jne    17f2 <phase_5+0x45>
    17e9:	5b                   	pop    %rbx
    17ea:	c3                   	ret    
    17eb:	e8 91 03 00 00       	call   1b81 <explode_bomb>
    17f0:	eb cd                	jmp    17bf <phase_5+0x12>
    17f2:	e8 8a 03 00 00       	call   1b81 <explode_bomb>
    17f7:	eb f0                	jmp    17e9 <phase_5+0x3c>

00000000000017f9 <phase_6>:
    17f9:	f3 0f 1e fa          	endbr64 
    17fd:	41 56                	push   %r14
    17ff:	41 55                	push   %r13
    1801:	41 54                	push   %r12
    1803:	55                   	push   %rbp
    1804:	53                   	push   %rbx
    1805:	48 83 ec 60          	sub    $0x60,%rsp
    1809:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1810:	00 00 
    1812:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1817:	31 c0                	xor    %eax,%eax
    1819:	49 89 e5             	mov    %rsp,%r13
    181c:	4c 89 ee             	mov    %r13,%rsi
    181f:	e8 b5 03 00 00       	call   1bd9 <read_six_numbers>
    1824:	41 be 01 00 00 00    	mov    $0x1,%r14d
    182a:	49 89 e4             	mov    %rsp,%r12
    182d:	eb 28                	jmp    1857 <phase_6+0x5e>
    182f:	e8 4d 03 00 00       	call   1b81 <explode_bomb>
    1834:	eb 30                	jmp    1866 <phase_6+0x6d>
    1836:	48 83 c3 01          	add    $0x1,%rbx
    183a:	83 fb 05             	cmp    $0x5,%ebx
    183d:	7f 10                	jg     184f <phase_6+0x56>
    183f:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    1843:	39 45 00             	cmp    %eax,0x0(%rbp)
    1846:	75 ee                	jne    1836 <phase_6+0x3d>
    1848:	e8 34 03 00 00       	call   1b81 <explode_bomb>
    184d:	eb e7                	jmp    1836 <phase_6+0x3d>
    184f:	49 83 c6 01          	add    $0x1,%r14
    1853:	49 83 c5 04          	add    $0x4,%r13
    1857:	4c 89 ed             	mov    %r13,%rbp
    185a:	41 8b 45 00          	mov    0x0(%r13),%eax
    185e:	83 e8 01             	sub    $0x1,%eax
    1861:	83 f8 05             	cmp    $0x5,%eax
    1864:	77 c9                	ja     182f <phase_6+0x36>
    1866:	41 83 fe 05          	cmp    $0x5,%r14d
    186a:	7f 05                	jg     1871 <phase_6+0x78>
    186c:	4c 89 f3             	mov    %r14,%rbx
    186f:	eb ce                	jmp    183f <phase_6+0x46>
    1871:	be 00 00 00 00       	mov    $0x0,%esi
    1876:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    1879:	b8 01 00 00 00       	mov    $0x1,%eax
    187e:	48 8d 15 8b 39 00 00 	lea    0x398b(%rip),%rdx        # 5210 <node1>
    1885:	83 f9 01             	cmp    $0x1,%ecx
    1888:	7e 0b                	jle    1895 <phase_6+0x9c>
    188a:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    188e:	83 c0 01             	add    $0x1,%eax
    1891:	39 c8                	cmp    %ecx,%eax
    1893:	75 f5                	jne    188a <phase_6+0x91>
    1895:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    189a:	48 83 c6 01          	add    $0x1,%rsi
    189e:	48 83 fe 06          	cmp    $0x6,%rsi
    18a2:	75 d2                	jne    1876 <phase_6+0x7d>
    18a4:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    18a9:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    18ae:	48 89 43 08          	mov    %rax,0x8(%rbx)
    18b2:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    18b7:	48 89 50 08          	mov    %rdx,0x8(%rax)
    18bb:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    18c0:	48 89 42 08          	mov    %rax,0x8(%rdx)
    18c4:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    18c9:	48 89 50 08          	mov    %rdx,0x8(%rax)
    18cd:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    18d2:	48 89 42 08          	mov    %rax,0x8(%rdx)
    18d6:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    18dd:	00 
    18de:	bd 05 00 00 00       	mov    $0x5,%ebp
    18e3:	eb 09                	jmp    18ee <phase_6+0xf5>
    18e5:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    18e9:	83 ed 01             	sub    $0x1,%ebp
    18ec:	74 11                	je     18ff <phase_6+0x106>
    18ee:	48 8b 43 08          	mov    0x8(%rbx),%rax
    18f2:	8b 00                	mov    (%rax),%eax
    18f4:	39 03                	cmp    %eax,(%rbx)
    18f6:	7e ed                	jle    18e5 <phase_6+0xec>
    18f8:	e8 84 02 00 00       	call   1b81 <explode_bomb>
    18fd:	eb e6                	jmp    18e5 <phase_6+0xec>
    18ff:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1904:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    190b:	00 00 
    190d:	75 0d                	jne    191c <phase_6+0x123>
    190f:	48 83 c4 60          	add    $0x60,%rsp
    1913:	5b                   	pop    %rbx
    1914:	5d                   	pop    %rbp
    1915:	41 5c                	pop    %r12
    1917:	41 5d                	pop    %r13
    1919:	41 5e                	pop    %r14
    191b:	c3                   	ret    
    191c:	e8 2f f9 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001921 <fun7>:
    1921:	f3 0f 1e fa          	endbr64 
    1925:	48 85 ff             	test   %rdi,%rdi
    1928:	74 32                	je     195c <fun7+0x3b>
    192a:	48 83 ec 08          	sub    $0x8,%rsp
    192e:	8b 17                	mov    (%rdi),%edx
    1930:	39 f2                	cmp    %esi,%edx
    1932:	7f 0c                	jg     1940 <fun7+0x1f>
    1934:	b8 00 00 00 00       	mov    $0x0,%eax
    1939:	75 12                	jne    194d <fun7+0x2c>
    193b:	48 83 c4 08          	add    $0x8,%rsp
    193f:	c3                   	ret    
    1940:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1944:	e8 d8 ff ff ff       	call   1921 <fun7>
    1949:	01 c0                	add    %eax,%eax
    194b:	eb ee                	jmp    193b <fun7+0x1a>
    194d:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1951:	e8 cb ff ff ff       	call   1921 <fun7>
    1956:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    195a:	eb df                	jmp    193b <fun7+0x1a>
    195c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1961:	c3                   	ret    

0000000000001962 <secret_phase>:
    1962:	f3 0f 1e fa          	endbr64 
    1966:	53                   	push   %rbx
    1967:	e8 b2 02 00 00       	call   1c1e <read_line>
    196c:	48 89 c7             	mov    %rax,%rdi
    196f:	ba 0a 00 00 00       	mov    $0xa,%edx
    1974:	be 00 00 00 00       	mov    $0x0,%esi
    1979:	e8 62 f9 ff ff       	call   12e0 <strtol@plt>
    197e:	89 c3                	mov    %eax,%ebx
    1980:	83 e8 01             	sub    $0x1,%eax
    1983:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1988:	77 25                	ja     19af <secret_phase+0x4d>
    198a:	89 de                	mov    %ebx,%esi
    198c:	48 8d 3d 9d 37 00 00 	lea    0x379d(%rip),%rdi        # 5130 <n1>
    1993:	e8 89 ff ff ff       	call   1921 <fun7>
    1998:	85 c0                	test   %eax,%eax
    199a:	75 1a                	jne    19b6 <secret_phase+0x54>
    199c:	48 8d 3d 35 17 00 00 	lea    0x1735(%rip),%rdi        # 30d8 <_IO_stdin_used+0xd8>
    19a3:	e8 78 f8 ff ff       	call   1220 <puts@plt>
    19a8:	e8 c5 03 00 00       	call   1d72 <phase_defused>
    19ad:	5b                   	pop    %rbx
    19ae:	c3                   	ret    
    19af:	e8 cd 01 00 00       	call   1b81 <explode_bomb>
    19b4:	eb d4                	jmp    198a <secret_phase+0x28>
    19b6:	e8 c6 01 00 00       	call   1b81 <explode_bomb>
    19bb:	eb df                	jmp    199c <secret_phase+0x3a>

00000000000019bd <sig_handler>:
    19bd:	f3 0f 1e fa          	endbr64 
    19c1:	50                   	push   %rax
    19c2:	58                   	pop    %rax
    19c3:	48 83 ec 08          	sub    $0x8,%rsp
    19c7:	48 8d 3d 92 17 00 00 	lea    0x1792(%rip),%rdi        # 3160 <array.0+0x40>
    19ce:	e8 4d f8 ff ff       	call   1220 <puts@plt>
    19d3:	bf 03 00 00 00       	mov    $0x3,%edi
    19d8:	e8 83 f9 ff ff       	call   1360 <sleep@plt>
    19dd:	48 8d 35 16 19 00 00 	lea    0x1916(%rip),%rsi        # 32fa <array.0+0x1da>
    19e4:	bf 01 00 00 00       	mov    $0x1,%edi
    19e9:	b8 00 00 00 00       	mov    $0x0,%eax
    19ee:	e8 1d f9 ff ff       	call   1310 <__printf_chk@plt>
    19f3:	48 8b 3d 66 3c 00 00 	mov    0x3c66(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    19fa:	e8 f1 f8 ff ff       	call   12f0 <fflush@plt>
    19ff:	bf 01 00 00 00       	mov    $0x1,%edi
    1a04:	e8 57 f9 ff ff       	call   1360 <sleep@plt>
    1a09:	48 8d 3d f2 18 00 00 	lea    0x18f2(%rip),%rdi        # 3302 <array.0+0x1e2>
    1a10:	e8 0b f8 ff ff       	call   1220 <puts@plt>
    1a15:	bf 10 00 00 00       	mov    $0x10,%edi
    1a1a:	e8 11 f9 ff ff       	call   1330 <exit@plt>

0000000000001a1f <invalid_phase>:
    1a1f:	f3 0f 1e fa          	endbr64 
    1a23:	50                   	push   %rax
    1a24:	58                   	pop    %rax
    1a25:	48 83 ec 08          	sub    $0x8,%rsp
    1a29:	48 89 fa             	mov    %rdi,%rdx
    1a2c:	48 8d 35 d7 18 00 00 	lea    0x18d7(%rip),%rsi        # 330a <array.0+0x1ea>
    1a33:	bf 01 00 00 00       	mov    $0x1,%edi
    1a38:	b8 00 00 00 00       	mov    $0x0,%eax
    1a3d:	e8 ce f8 ff ff       	call   1310 <__printf_chk@plt>
    1a42:	bf 08 00 00 00       	mov    $0x8,%edi
    1a47:	e8 e4 f8 ff ff       	call   1330 <exit@plt>

0000000000001a4c <string_length>:
    1a4c:	f3 0f 1e fa          	endbr64 
    1a50:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a53:	74 12                	je     1a67 <string_length+0x1b>
    1a55:	b8 00 00 00 00       	mov    $0x0,%eax
    1a5a:	48 83 c7 01          	add    $0x1,%rdi
    1a5e:	83 c0 01             	add    $0x1,%eax
    1a61:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a64:	75 f4                	jne    1a5a <string_length+0xe>
    1a66:	c3                   	ret    
    1a67:	b8 00 00 00 00       	mov    $0x0,%eax
    1a6c:	c3                   	ret    

0000000000001a6d <strings_not_equal>:
    1a6d:	f3 0f 1e fa          	endbr64 
    1a71:	41 54                	push   %r12
    1a73:	55                   	push   %rbp
    1a74:	53                   	push   %rbx
    1a75:	48 89 fb             	mov    %rdi,%rbx
    1a78:	48 89 f5             	mov    %rsi,%rbp
    1a7b:	e8 cc ff ff ff       	call   1a4c <string_length>
    1a80:	41 89 c4             	mov    %eax,%r12d
    1a83:	48 89 ef             	mov    %rbp,%rdi
    1a86:	e8 c1 ff ff ff       	call   1a4c <string_length>
    1a8b:	89 c2                	mov    %eax,%edx
    1a8d:	b8 01 00 00 00       	mov    $0x1,%eax
    1a92:	41 39 d4             	cmp    %edx,%r12d
    1a95:	75 31                	jne    1ac8 <strings_not_equal+0x5b>
    1a97:	0f b6 13             	movzbl (%rbx),%edx
    1a9a:	84 d2                	test   %dl,%dl
    1a9c:	74 1e                	je     1abc <strings_not_equal+0x4f>
    1a9e:	b8 00 00 00 00       	mov    $0x0,%eax
    1aa3:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1aa7:	75 1a                	jne    1ac3 <strings_not_equal+0x56>
    1aa9:	48 83 c0 01          	add    $0x1,%rax
    1aad:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1ab1:	84 d2                	test   %dl,%dl
    1ab3:	75 ee                	jne    1aa3 <strings_not_equal+0x36>
    1ab5:	b8 00 00 00 00       	mov    $0x0,%eax
    1aba:	eb 0c                	jmp    1ac8 <strings_not_equal+0x5b>
    1abc:	b8 00 00 00 00       	mov    $0x0,%eax
    1ac1:	eb 05                	jmp    1ac8 <strings_not_equal+0x5b>
    1ac3:	b8 01 00 00 00       	mov    $0x1,%eax
    1ac8:	5b                   	pop    %rbx
    1ac9:	5d                   	pop    %rbp
    1aca:	41 5c                	pop    %r12
    1acc:	c3                   	ret    

0000000000001acd <initialize_bomb>:
    1acd:	f3 0f 1e fa          	endbr64 
    1ad1:	48 83 ec 08          	sub    $0x8,%rsp
    1ad5:	48 8d 35 e1 fe ff ff 	lea    -0x11f(%rip),%rsi        # 19bd <sig_handler>
    1adc:	bf 02 00 00 00       	mov    $0x2,%edi
    1ae1:	e8 ca f7 ff ff       	call   12b0 <signal@plt>
    1ae6:	48 83 c4 08          	add    $0x8,%rsp
    1aea:	c3                   	ret    

0000000000001aeb <initialize_bomb_solve>:
    1aeb:	f3 0f 1e fa          	endbr64 
    1aef:	c3                   	ret    

0000000000001af0 <blank_line>:
    1af0:	f3 0f 1e fa          	endbr64 
    1af4:	55                   	push   %rbp
    1af5:	53                   	push   %rbx
    1af6:	48 83 ec 08          	sub    $0x8,%rsp
    1afa:	48 89 fd             	mov    %rdi,%rbp
    1afd:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1b01:	84 db                	test   %bl,%bl
    1b03:	74 1e                	je     1b23 <blank_line+0x33>
    1b05:	e8 66 f8 ff ff       	call   1370 <__ctype_b_loc@plt>
    1b0a:	48 83 c5 01          	add    $0x1,%rbp
    1b0e:	48 0f be db          	movsbq %bl,%rbx
    1b12:	48 8b 00             	mov    (%rax),%rax
    1b15:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1b1a:	75 e1                	jne    1afd <blank_line+0xd>
    1b1c:	b8 00 00 00 00       	mov    $0x0,%eax
    1b21:	eb 05                	jmp    1b28 <blank_line+0x38>
    1b23:	b8 01 00 00 00       	mov    $0x1,%eax
    1b28:	48 83 c4 08          	add    $0x8,%rsp
    1b2c:	5b                   	pop    %rbx
    1b2d:	5d                   	pop    %rbp
    1b2e:	c3                   	ret    

0000000000001b2f <skip>:
    1b2f:	f3 0f 1e fa          	endbr64 
    1b33:	55                   	push   %rbp
    1b34:	53                   	push   %rbx
    1b35:	48 83 ec 08          	sub    $0x8,%rsp
    1b39:	48 8d 2d c0 3b 00 00 	lea    0x3bc0(%rip),%rbp        # 5700 <input_strings>
    1b40:	48 63 05 ad 3b 00 00 	movslq 0x3bad(%rip),%rax        # 56f4 <num_input_strings>
    1b47:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1b4b:	48 c1 e7 04          	shl    $0x4,%rdi
    1b4f:	48 01 ef             	add    %rbp,%rdi
    1b52:	48 8b 15 37 3b 00 00 	mov    0x3b37(%rip),%rdx        # 5690 <infile>
    1b59:	be 50 00 00 00       	mov    $0x50,%esi
    1b5e:	e8 2d f7 ff ff       	call   1290 <fgets@plt>
    1b63:	48 89 c3             	mov    %rax,%rbx
    1b66:	48 85 c0             	test   %rax,%rax
    1b69:	74 0c                	je     1b77 <skip+0x48>
    1b6b:	48 89 c7             	mov    %rax,%rdi
    1b6e:	e8 7d ff ff ff       	call   1af0 <blank_line>
    1b73:	85 c0                	test   %eax,%eax
    1b75:	75 c9                	jne    1b40 <skip+0x11>
    1b77:	48 89 d8             	mov    %rbx,%rax
    1b7a:	48 83 c4 08          	add    $0x8,%rsp
    1b7e:	5b                   	pop    %rbx
    1b7f:	5d                   	pop    %rbp
    1b80:	c3                   	ret    

0000000000001b81 <explode_bomb>:
    1b81:	f3 0f 1e fa          	endbr64 
    1b85:	50                   	push   %rax
    1b86:	58                   	pop    %rax
    1b87:	48 83 ec 08          	sub    $0x8,%rsp
    1b8b:	48 8d 3d 89 17 00 00 	lea    0x1789(%rip),%rdi        # 331b <array.0+0x1fb>
    1b92:	e8 89 f6 ff ff       	call   1220 <puts@plt>
    1b97:	8b 15 57 3b 00 00    	mov    0x3b57(%rip),%edx        # 56f4 <num_input_strings>
    1b9d:	48 8d 35 f4 15 00 00 	lea    0x15f4(%rip),%rsi        # 3198 <array.0+0x78>
    1ba4:	bf 01 00 00 00       	mov    $0x1,%edi
    1ba9:	b8 00 00 00 00       	mov    $0x0,%eax
    1bae:	e8 5d f7 ff ff       	call   1310 <__printf_chk@plt>
    1bb3:	8b 15 37 3b 00 00    	mov    0x3b37(%rip),%edx        # 56f0 <score>
    1bb9:	48 8d 35 00 16 00 00 	lea    0x1600(%rip),%rsi        # 31c0 <array.0+0xa0>
    1bc0:	bf 01 00 00 00       	mov    $0x1,%edi
    1bc5:	b8 00 00 00 00       	mov    $0x0,%eax
    1bca:	e8 41 f7 ff ff       	call   1310 <__printf_chk@plt>
    1bcf:	bf 08 00 00 00       	mov    $0x8,%edi
    1bd4:	e8 57 f7 ff ff       	call   1330 <exit@plt>

0000000000001bd9 <read_six_numbers>:
    1bd9:	f3 0f 1e fa          	endbr64 
    1bdd:	48 83 ec 08          	sub    $0x8,%rsp
    1be1:	48 89 f2             	mov    %rsi,%rdx
    1be4:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1be8:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1bec:	50                   	push   %rax
    1bed:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1bf1:	50                   	push   %rax
    1bf2:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1bf6:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1bfa:	48 8d 35 23 17 00 00 	lea    0x1723(%rip),%rsi        # 3324 <array.0+0x204>
    1c01:	b8 00 00 00 00       	mov    $0x0,%eax
    1c06:	e8 f5 f6 ff ff       	call   1300 <__isoc99_sscanf@plt>
    1c0b:	48 83 c4 10          	add    $0x10,%rsp
    1c0f:	83 f8 05             	cmp    $0x5,%eax
    1c12:	7e 05                	jle    1c19 <read_six_numbers+0x40>
    1c14:	48 83 c4 08          	add    $0x8,%rsp
    1c18:	c3                   	ret    
    1c19:	e8 63 ff ff ff       	call   1b81 <explode_bomb>

0000000000001c1e <read_line>:
    1c1e:	f3 0f 1e fa          	endbr64 
    1c22:	55                   	push   %rbp
    1c23:	53                   	push   %rbx
    1c24:	48 83 ec 08          	sub    $0x8,%rsp
    1c28:	b8 00 00 00 00       	mov    $0x0,%eax
    1c2d:	e8 fd fe ff ff       	call   1b2f <skip>
    1c32:	48 85 c0             	test   %rax,%rax
    1c35:	74 5d                	je     1c94 <read_line+0x76>
    1c37:	8b 2d b7 3a 00 00    	mov    0x3ab7(%rip),%ebp        # 56f4 <num_input_strings>
    1c3d:	48 63 c5             	movslq %ebp,%rax
    1c40:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    1c44:	48 c1 e3 04          	shl    $0x4,%rbx
    1c48:	48 8d 05 b1 3a 00 00 	lea    0x3ab1(%rip),%rax        # 5700 <input_strings>
    1c4f:	48 01 c3             	add    %rax,%rbx
    1c52:	48 89 df             	mov    %rbx,%rdi
    1c55:	e8 e6 f5 ff ff       	call   1240 <strlen@plt>
    1c5a:	83 f8 4e             	cmp    $0x4e,%eax
    1c5d:	0f 8f c5 00 00 00    	jg     1d28 <read_line+0x10a>
    1c63:	83 e8 01             	sub    $0x1,%eax
    1c66:	48 98                	cltq   
    1c68:	48 63 d5             	movslq %ebp,%rdx
    1c6b:	48 8d 0c 92          	lea    (%rdx,%rdx,4),%rcx
    1c6f:	48 c1 e1 04          	shl    $0x4,%rcx
    1c73:	48 8d 15 86 3a 00 00 	lea    0x3a86(%rip),%rdx        # 5700 <input_strings>
    1c7a:	48 01 ca             	add    %rcx,%rdx
    1c7d:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1c81:	83 c5 01             	add    $0x1,%ebp
    1c84:	89 2d 6a 3a 00 00    	mov    %ebp,0x3a6a(%rip)        # 56f4 <num_input_strings>
    1c8a:	48 89 d8             	mov    %rbx,%rax
    1c8d:	48 83 c4 08          	add    $0x8,%rsp
    1c91:	5b                   	pop    %rbx
    1c92:	5d                   	pop    %rbp
    1c93:	c3                   	ret    
    1c94:	48 8b 05 d5 39 00 00 	mov    0x39d5(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1c9b:	48 39 05 ee 39 00 00 	cmp    %rax,0x39ee(%rip)        # 5690 <infile>
    1ca2:	74 1b                	je     1cbf <read_line+0xa1>
    1ca4:	48 8d 3d a9 16 00 00 	lea    0x16a9(%rip),%rdi        # 3354 <array.0+0x234>
    1cab:	e8 40 f5 ff ff       	call   11f0 <getenv@plt>
    1cb0:	48 85 c0             	test   %rax,%rax
    1cb3:	74 3c                	je     1cf1 <read_line+0xd3>
    1cb5:	bf 00 00 00 00       	mov    $0x0,%edi
    1cba:	e8 71 f6 ff ff       	call   1330 <exit@plt>
    1cbf:	48 8d 3d 70 16 00 00 	lea    0x1670(%rip),%rdi        # 3336 <array.0+0x216>
    1cc6:	e8 55 f5 ff ff       	call   1220 <puts@plt>
    1ccb:	8b 15 1f 3a 00 00    	mov    0x3a1f(%rip),%edx        # 56f0 <score>
    1cd1:	48 8d 35 18 15 00 00 	lea    0x1518(%rip),%rsi        # 31f0 <array.0+0xd0>
    1cd8:	bf 01 00 00 00       	mov    $0x1,%edi
    1cdd:	b8 00 00 00 00       	mov    $0x0,%eax
    1ce2:	e8 29 f6 ff ff       	call   1310 <__printf_chk@plt>
    1ce7:	bf 08 00 00 00       	mov    $0x8,%edi
    1cec:	e8 3f f6 ff ff       	call   1330 <exit@plt>
    1cf1:	48 8b 05 78 39 00 00 	mov    0x3978(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1cf8:	48 89 05 91 39 00 00 	mov    %rax,0x3991(%rip)        # 5690 <infile>
    1cff:	b8 00 00 00 00       	mov    $0x0,%eax
    1d04:	e8 26 fe ff ff       	call   1b2f <skip>
    1d09:	48 85 c0             	test   %rax,%rax
    1d0c:	0f 85 25 ff ff ff    	jne    1c37 <read_line+0x19>
    1d12:	48 8d 3d 1d 16 00 00 	lea    0x161d(%rip),%rdi        # 3336 <array.0+0x216>
    1d19:	e8 02 f5 ff ff       	call   1220 <puts@plt>
    1d1e:	bf 00 00 00 00       	mov    $0x0,%edi
    1d23:	e8 08 f6 ff ff       	call   1330 <exit@plt>
    1d28:	48 8d 3d 30 16 00 00 	lea    0x1630(%rip),%rdi        # 335f <array.0+0x23f>
    1d2f:	e8 ec f4 ff ff       	call   1220 <puts@plt>
    1d34:	8b 05 ba 39 00 00    	mov    0x39ba(%rip),%eax        # 56f4 <num_input_strings>
    1d3a:	8d 50 01             	lea    0x1(%rax),%edx
    1d3d:	89 15 b1 39 00 00    	mov    %edx,0x39b1(%rip)        # 56f4 <num_input_strings>
    1d43:	48 98                	cltq   
    1d45:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1d49:	48 8d 15 b0 39 00 00 	lea    0x39b0(%rip),%rdx        # 5700 <input_strings>
    1d50:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1d57:	75 6e 63 
    1d5a:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1d61:	2a 2a 00 
    1d64:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1d68:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1d6d:	e8 0f fe ff ff       	call   1b81 <explode_bomb>

0000000000001d72 <phase_defused>:
    1d72:	f3 0f 1e fa          	endbr64 
    1d76:	48 83 ec 78          	sub    $0x78,%rsp
    1d7a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d81:	00 00 
    1d83:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1d88:	31 c0                	xor    %eax,%eax
    1d8a:	8b 15 64 39 00 00    	mov    0x3964(%rip),%edx        # 56f4 <num_input_strings>
    1d90:	83 fa 03             	cmp    $0x3,%edx
    1d93:	7f 5b                	jg     1df0 <phase_defused+0x7e>
    1d95:	83 05 54 39 00 00 1e 	addl   $0x1e,0x3954(%rip)        # 56f0 <score>
    1d9c:	48 8d 35 d7 15 00 00 	lea    0x15d7(%rip),%rsi        # 337a <array.0+0x25a>
    1da3:	bf 01 00 00 00       	mov    $0x1,%edi
    1da8:	b8 00 00 00 00       	mov    $0x0,%eax
    1dad:	e8 5e f5 ff ff       	call   1310 <__printf_chk@plt>
    1db2:	8b 15 38 39 00 00    	mov    0x3938(%rip),%edx        # 56f0 <score>
    1db8:	48 8d 35 31 14 00 00 	lea    0x1431(%rip),%rsi        # 31f0 <array.0+0xd0>
    1dbf:	bf 01 00 00 00       	mov    $0x1,%edi
    1dc4:	b8 00 00 00 00       	mov    $0x0,%eax
    1dc9:	e8 42 f5 ff ff       	call   1310 <__printf_chk@plt>
    1dce:	83 3d 1f 39 00 00 06 	cmpl   $0x6,0x391f(%rip)        # 56f4 <num_input_strings>
    1dd5:	74 27                	je     1dfe <phase_defused+0x8c>
    1dd7:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1ddc:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1de3:	00 00 
    1de5:	0f 85 9e 00 00 00    	jne    1e89 <phase_defused+0x117>
    1deb:	48 83 c4 78          	add    $0x78,%rsp
    1def:	c3                   	ret    
    1df0:	83 fa 04             	cmp    $0x4,%edx
    1df3:	75 a7                	jne    1d9c <phase_defused+0x2a>
    1df5:	83 05 f4 38 00 00 0a 	addl   $0xa,0x38f4(%rip)        # 56f0 <score>
    1dfc:	eb 9e                	jmp    1d9c <phase_defused+0x2a>
    1dfe:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1e03:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1e08:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1e0d:	48 8d 35 84 15 00 00 	lea    0x1584(%rip),%rsi        # 3398 <array.0+0x278>
    1e14:	48 8d 3d d5 39 00 00 	lea    0x39d5(%rip),%rdi        # 57f0 <input_strings+0xf0>
    1e1b:	b8 00 00 00 00       	mov    $0x0,%eax
    1e20:	e8 db f4 ff ff       	call   1300 <__isoc99_sscanf@plt>
    1e25:	83 f8 03             	cmp    $0x3,%eax
    1e28:	74 1a                	je     1e44 <phase_defused+0xd2>
    1e2a:	48 8d 3d 9f 14 00 00 	lea    0x149f(%rip),%rdi        # 32d0 <array.0+0x1b0>
    1e31:	e8 ea f3 ff ff       	call   1220 <puts@plt>
    1e36:	48 8d 3d 6b 15 00 00 	lea    0x156b(%rip),%rdi        # 33a8 <array.0+0x288>
    1e3d:	e8 de f3 ff ff       	call   1220 <puts@plt>
    1e42:	eb 93                	jmp    1dd7 <phase_defused+0x65>
    1e44:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e49:	48 8d 35 51 15 00 00 	lea    0x1551(%rip),%rsi        # 33a1 <array.0+0x281>
    1e50:	e8 18 fc ff ff       	call   1a6d <strings_not_equal>
    1e55:	85 c0                	test   %eax,%eax
    1e57:	75 d1                	jne    1e2a <phase_defused+0xb8>
    1e59:	48 8d 3d b8 13 00 00 	lea    0x13b8(%rip),%rdi        # 3218 <array.0+0xf8>
    1e60:	e8 bb f3 ff ff       	call   1220 <puts@plt>
    1e65:	48 8d 3d d4 13 00 00 	lea    0x13d4(%rip),%rdi        # 3240 <array.0+0x120>
    1e6c:	e8 af f3 ff ff       	call   1220 <puts@plt>
    1e71:	b8 00 00 00 00       	mov    $0x0,%eax
    1e76:	e8 e7 fa ff ff       	call   1962 <secret_phase>
    1e7b:	48 8d 3d f6 13 00 00 	lea    0x13f6(%rip),%rdi        # 3278 <array.0+0x158>
    1e82:	e8 99 f3 ff ff       	call   1220 <puts@plt>
    1e87:	eb a1                	jmp    1e2a <phase_defused+0xb8>
    1e89:	e8 c2 f3 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001e8e <sigalrm_handler>:
    1e8e:	f3 0f 1e fa          	endbr64 
    1e92:	50                   	push   %rax
    1e93:	58                   	pop    %rax
    1e94:	48 83 ec 08          	sub    $0x8,%rsp
    1e98:	b9 00 00 00 00       	mov    $0x0,%ecx
    1e9d:	48 8d 15 7c 15 00 00 	lea    0x157c(%rip),%rdx        # 3420 <array.0+0x300>
    1ea4:	be 01 00 00 00       	mov    $0x1,%esi
    1ea9:	48 8b 3d d0 37 00 00 	mov    0x37d0(%rip),%rdi        # 5680 <stderr@GLIBC_2.2.5>
    1eb0:	b8 00 00 00 00       	mov    $0x0,%eax
    1eb5:	e8 96 f4 ff ff       	call   1350 <__fprintf_chk@plt>
    1eba:	bf 01 00 00 00       	mov    $0x1,%edi
    1ebf:	e8 6c f4 ff ff       	call   1330 <exit@plt>

0000000000001ec4 <rio_readlineb>:
    1ec4:	41 56                	push   %r14
    1ec6:	41 55                	push   %r13
    1ec8:	41 54                	push   %r12
    1eca:	55                   	push   %rbp
    1ecb:	53                   	push   %rbx
    1ecc:	49 89 f4             	mov    %rsi,%r12
    1ecf:	48 83 fa 01          	cmp    $0x1,%rdx
    1ed3:	0f 86 92 00 00 00    	jbe    1f6b <rio_readlineb+0xa7>
    1ed9:	48 89 fb             	mov    %rdi,%rbx
    1edc:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1ee1:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1ee7:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1eeb:	eb 56                	jmp    1f43 <rio_readlineb+0x7f>
    1eed:	e8 0e f3 ff ff       	call   1200 <__errno_location@plt>
    1ef2:	83 38 04             	cmpl   $0x4,(%rax)
    1ef5:	75 55                	jne    1f4c <rio_readlineb+0x88>
    1ef7:	ba 00 20 00 00       	mov    $0x2000,%edx
    1efc:	48 89 ee             	mov    %rbp,%rsi
    1eff:	8b 3b                	mov    (%rbx),%edi
    1f01:	e8 7a f3 ff ff       	call   1280 <read@plt>
    1f06:	89 c2                	mov    %eax,%edx
    1f08:	89 43 04             	mov    %eax,0x4(%rbx)
    1f0b:	85 c0                	test   %eax,%eax
    1f0d:	78 de                	js     1eed <rio_readlineb+0x29>
    1f0f:	85 c0                	test   %eax,%eax
    1f11:	74 42                	je     1f55 <rio_readlineb+0x91>
    1f13:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1f17:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1f1b:	0f b6 08             	movzbl (%rax),%ecx
    1f1e:	48 83 c0 01          	add    $0x1,%rax
    1f22:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1f26:	83 ea 01             	sub    $0x1,%edx
    1f29:	89 53 04             	mov    %edx,0x4(%rbx)
    1f2c:	49 83 c4 01          	add    $0x1,%r12
    1f30:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1f35:	80 f9 0a             	cmp    $0xa,%cl
    1f38:	74 3c                	je     1f76 <rio_readlineb+0xb2>
    1f3a:	41 83 c5 01          	add    $0x1,%r13d
    1f3e:	4d 39 f4             	cmp    %r14,%r12
    1f41:	74 30                	je     1f73 <rio_readlineb+0xaf>
    1f43:	8b 53 04             	mov    0x4(%rbx),%edx
    1f46:	85 d2                	test   %edx,%edx
    1f48:	7e ad                	jle    1ef7 <rio_readlineb+0x33>
    1f4a:	eb cb                	jmp    1f17 <rio_readlineb+0x53>
    1f4c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f53:	eb 05                	jmp    1f5a <rio_readlineb+0x96>
    1f55:	b8 00 00 00 00       	mov    $0x0,%eax
    1f5a:	85 c0                	test   %eax,%eax
    1f5c:	75 29                	jne    1f87 <rio_readlineb+0xc3>
    1f5e:	b8 00 00 00 00       	mov    $0x0,%eax
    1f63:	41 83 fd 01          	cmp    $0x1,%r13d
    1f67:	75 0d                	jne    1f76 <rio_readlineb+0xb2>
    1f69:	eb 13                	jmp    1f7e <rio_readlineb+0xba>
    1f6b:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f71:	eb 03                	jmp    1f76 <rio_readlineb+0xb2>
    1f73:	4d 89 f4             	mov    %r14,%r12
    1f76:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1f7b:	49 63 c5             	movslq %r13d,%rax
    1f7e:	5b                   	pop    %rbx
    1f7f:	5d                   	pop    %rbp
    1f80:	41 5c                	pop    %r12
    1f82:	41 5d                	pop    %r13
    1f84:	41 5e                	pop    %r14
    1f86:	c3                   	ret    
    1f87:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f8e:	eb ee                	jmp    1f7e <rio_readlineb+0xba>

0000000000001f90 <submitr>:
    1f90:	f3 0f 1e fa          	endbr64 
    1f94:	41 57                	push   %r15
    1f96:	41 56                	push   %r14
    1f98:	41 55                	push   %r13
    1f9a:	41 54                	push   %r12
    1f9c:	55                   	push   %rbp
    1f9d:	53                   	push   %rbx
    1f9e:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    1fa5:	ff 
    1fa6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1fad:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1fb2:	4c 39 dc             	cmp    %r11,%rsp
    1fb5:	75 ef                	jne    1fa6 <submitr+0x16>
    1fb7:	48 83 ec 78          	sub    $0x78,%rsp
    1fbb:	49 89 fd             	mov    %rdi,%r13
    1fbe:	89 f5                	mov    %esi,%ebp
    1fc0:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1fc5:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1fca:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    1fcf:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    1fd4:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    1fdb:	00 
    1fdc:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    1fe3:	00 
    1fe4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1feb:	00 00 
    1fed:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    1ff4:	00 
    1ff5:	31 c0                	xor    %eax,%eax
    1ff7:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    1ffe:	00 
    1fff:	ba 00 00 00 00       	mov    $0x0,%edx
    2004:	be 01 00 00 00       	mov    $0x1,%esi
    2009:	bf 02 00 00 00       	mov    $0x2,%edi
    200e:	e8 7d f3 ff ff       	call   1390 <socket@plt>
    2013:	85 c0                	test   %eax,%eax
    2015:	0f 88 12 01 00 00    	js     212d <submitr+0x19d>
    201b:	41 89 c4             	mov    %eax,%r12d
    201e:	4c 89 ef             	mov    %r13,%rdi
    2021:	e8 9a f2 ff ff       	call   12c0 <gethostbyname@plt>
    2026:	48 85 c0             	test   %rax,%rax
    2029:	0f 84 4e 01 00 00    	je     217d <submitr+0x1ed>
    202f:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    2034:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    203b:	00 00 
    203d:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    2044:	00 00 
    2046:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    204d:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2051:	48 8b 40 18          	mov    0x18(%rax),%rax
    2055:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    205a:	b9 0c 00 00 00       	mov    $0xc,%ecx
    205f:	48 8b 30             	mov    (%rax),%rsi
    2062:	e8 69 f2 ff ff       	call   12d0 <__memmove_chk@plt>
    2067:	66 c1 c5 08          	rol    $0x8,%bp
    206b:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    2070:	ba 10 00 00 00       	mov    $0x10,%edx
    2075:	4c 89 ee             	mov    %r13,%rsi
    2078:	44 89 e7             	mov    %r12d,%edi
    207b:	e8 c0 f2 ff ff       	call   1340 <connect@plt>
    2080:	85 c0                	test   %eax,%eax
    2082:	0f 88 60 01 00 00    	js     21e8 <submitr+0x258>
    2088:	48 89 df             	mov    %rbx,%rdi
    208b:	e8 b0 f1 ff ff       	call   1240 <strlen@plt>
    2090:	48 89 c5             	mov    %rax,%rbp
    2093:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2098:	e8 a3 f1 ff ff       	call   1240 <strlen@plt>
    209d:	49 89 c6             	mov    %rax,%r14
    20a0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    20a5:	e8 96 f1 ff ff       	call   1240 <strlen@plt>
    20aa:	49 89 c5             	mov    %rax,%r13
    20ad:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    20b2:	e8 89 f1 ff ff       	call   1240 <strlen@plt>
    20b7:	48 89 c2             	mov    %rax,%rdx
    20ba:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    20c1:	00 
    20c2:	48 01 d0             	add    %rdx,%rax
    20c5:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    20ca:	48 01 d0             	add    %rdx,%rax
    20cd:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    20d3:	0f 87 6c 01 00 00    	ja     2245 <submitr+0x2b5>
    20d9:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    20e0:	00 
    20e1:	b9 00 04 00 00       	mov    $0x400,%ecx
    20e6:	b8 00 00 00 00       	mov    $0x0,%eax
    20eb:	48 89 d7             	mov    %rdx,%rdi
    20ee:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    20f1:	48 89 df             	mov    %rbx,%rdi
    20f4:	e8 47 f1 ff ff       	call   1240 <strlen@plt>
    20f9:	85 c0                	test   %eax,%eax
    20fb:	0f 84 07 05 00 00    	je     2608 <submitr+0x678>
    2101:	8d 40 ff             	lea    -0x1(%rax),%eax
    2104:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    2109:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2110:	00 
    2111:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    2118:	00 
    2119:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    211e:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    2125:	00 20 00 
    2128:	e9 a6 01 00 00       	jmp    22d3 <submitr+0x343>
    212d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2134:	3a 20 43 
    2137:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    213e:	20 75 6e 
    2141:	49 89 07             	mov    %rax,(%r15)
    2144:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2148:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    214f:	74 6f 20 
    2152:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2159:	65 20 73 
    215c:	49 89 47 10          	mov    %rax,0x10(%r15)
    2160:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2164:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    216b:	65 
    216c:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    2173:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2178:	e9 03 03 00 00       	jmp    2480 <submitr+0x4f0>
    217d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2184:	3a 20 44 
    2187:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    218e:	20 75 6e 
    2191:	49 89 07             	mov    %rax,(%r15)
    2194:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2198:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    219f:	74 6f 20 
    21a2:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    21a9:	76 65 20 
    21ac:	49 89 47 10          	mov    %rax,0x10(%r15)
    21b0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21b4:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    21bb:	72 20 61 
    21be:	49 89 47 20          	mov    %rax,0x20(%r15)
    21c2:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    21c9:	65 
    21ca:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    21d1:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    21d6:	44 89 e7             	mov    %r12d,%edi
    21d9:	e8 92 f0 ff ff       	call   1270 <close@plt>
    21de:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21e3:	e9 98 02 00 00       	jmp    2480 <submitr+0x4f0>
    21e8:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    21ef:	3a 20 55 
    21f2:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    21f9:	20 74 6f 
    21fc:	49 89 07             	mov    %rax,(%r15)
    21ff:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2203:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    220a:	65 63 74 
    220d:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2214:	68 65 20 
    2217:	49 89 47 10          	mov    %rax,0x10(%r15)
    221b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    221f:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    2226:	76 
    2227:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    222e:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    2233:	44 89 e7             	mov    %r12d,%edi
    2236:	e8 35 f0 ff ff       	call   1270 <close@plt>
    223b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2240:	e9 3b 02 00 00       	jmp    2480 <submitr+0x4f0>
    2245:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    224c:	3a 20 52 
    224f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2256:	20 73 74 
    2259:	49 89 07             	mov    %rax,(%r15)
    225c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2260:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2267:	74 6f 6f 
    226a:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2271:	65 2e 20 
    2274:	49 89 47 10          	mov    %rax,0x10(%r15)
    2278:	49 89 57 18          	mov    %rdx,0x18(%r15)
    227c:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2283:	61 73 65 
    2286:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    228d:	49 54 52 
    2290:	49 89 47 20          	mov    %rax,0x20(%r15)
    2294:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2298:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    229f:	55 46 00 
    22a2:	49 89 47 30          	mov    %rax,0x30(%r15)
    22a6:	44 89 e7             	mov    %r12d,%edi
    22a9:	e8 c2 ef ff ff       	call   1270 <close@plt>
    22ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22b3:	e9 c8 01 00 00       	jmp    2480 <submitr+0x4f0>
    22b8:	49 0f a3 c6          	bt     %rax,%r14
    22bc:	73 21                	jae    22df <submitr+0x34f>
    22be:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    22c2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    22c6:	48 83 c3 01          	add    $0x1,%rbx
    22ca:	4c 39 eb             	cmp    %r13,%rbx
    22cd:	0f 84 35 03 00 00    	je     2608 <submitr+0x678>
    22d3:	44 0f b6 03          	movzbl (%rbx),%r8d
    22d7:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    22db:	3c 35                	cmp    $0x35,%al
    22dd:	76 d9                	jbe    22b8 <submitr+0x328>
    22df:	44 89 c0             	mov    %r8d,%eax
    22e2:	83 e0 df             	and    $0xffffffdf,%eax
    22e5:	83 e8 41             	sub    $0x41,%eax
    22e8:	3c 19                	cmp    $0x19,%al
    22ea:	76 d2                	jbe    22be <submitr+0x32e>
    22ec:	41 80 f8 20          	cmp    $0x20,%r8b
    22f0:	74 60                	je     2352 <submitr+0x3c2>
    22f2:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    22f6:	3c 5f                	cmp    $0x5f,%al
    22f8:	76 0a                	jbe    2304 <submitr+0x374>
    22fa:	41 80 f8 09          	cmp    $0x9,%r8b
    22fe:	0f 85 77 02 00 00    	jne    257b <submitr+0x5eb>
    2304:	45 0f b6 c0          	movzbl %r8b,%r8d
    2308:	48 8d 0d e7 11 00 00 	lea    0x11e7(%rip),%rcx        # 34f6 <array.0+0x3d6>
    230f:	ba 08 00 00 00       	mov    $0x8,%edx
    2314:	be 01 00 00 00       	mov    $0x1,%esi
    2319:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    231e:	b8 00 00 00 00       	mov    $0x0,%eax
    2323:	e8 58 f0 ff ff       	call   1380 <__sprintf_chk@plt>
    2328:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    232f:	00 
    2330:	88 45 00             	mov    %al,0x0(%rbp)
    2333:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    233a:	00 
    233b:	88 45 01             	mov    %al,0x1(%rbp)
    233e:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2345:	00 
    2346:	88 45 02             	mov    %al,0x2(%rbp)
    2349:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    234d:	e9 74 ff ff ff       	jmp    22c6 <submitr+0x336>
    2352:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2356:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    235a:	e9 67 ff ff ff       	jmp    22c6 <submitr+0x336>
    235f:	48 01 c5             	add    %rax,%rbp
    2362:	48 29 c3             	sub    %rax,%rbx
    2365:	0f 84 08 03 00 00    	je     2673 <submitr+0x6e3>
    236b:	48 89 da             	mov    %rbx,%rdx
    236e:	48 89 ee             	mov    %rbp,%rsi
    2371:	44 89 e7             	mov    %r12d,%edi
    2374:	e8 b7 ee ff ff       	call   1230 <write@plt>
    2379:	48 85 c0             	test   %rax,%rax
    237c:	7f e1                	jg     235f <submitr+0x3cf>
    237e:	e8 7d ee ff ff       	call   1200 <__errno_location@plt>
    2383:	83 38 04             	cmpl   $0x4,(%rax)
    2386:	0f 85 90 01 00 00    	jne    251c <submitr+0x58c>
    238c:	4c 89 e8             	mov    %r13,%rax
    238f:	eb ce                	jmp    235f <submitr+0x3cf>
    2391:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2398:	3a 20 43 
    239b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    23a2:	20 75 6e 
    23a5:	49 89 07             	mov    %rax,(%r15)
    23a8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23ac:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    23b3:	74 6f 20 
    23b6:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    23bd:	66 69 72 
    23c0:	49 89 47 10          	mov    %rax,0x10(%r15)
    23c4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23c8:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    23cf:	61 64 65 
    23d2:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    23d9:	6d 20 73 
    23dc:	49 89 47 20          	mov    %rax,0x20(%r15)
    23e0:	49 89 57 28          	mov    %rdx,0x28(%r15)
    23e4:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    23eb:	65 
    23ec:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    23f3:	44 89 e7             	mov    %r12d,%edi
    23f6:	e8 75 ee ff ff       	call   1270 <close@plt>
    23fb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2400:	eb 7e                	jmp    2480 <submitr+0x4f0>
    2402:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    2409:	00 
    240a:	48 8d 0d 37 10 00 00 	lea    0x1037(%rip),%rcx        # 3448 <array.0+0x328>
    2411:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2418:	be 01 00 00 00       	mov    $0x1,%esi
    241d:	4c 89 ff             	mov    %r15,%rdi
    2420:	b8 00 00 00 00       	mov    $0x0,%eax
    2425:	e8 56 ef ff ff       	call   1380 <__sprintf_chk@plt>
    242a:	44 89 e7             	mov    %r12d,%edi
    242d:	e8 3e ee ff ff       	call   1270 <close@plt>
    2432:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2437:	eb 47                	jmp    2480 <submitr+0x4f0>
    2439:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2440:	00 
    2441:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2446:	ba 00 20 00 00       	mov    $0x2000,%edx
    244b:	e8 74 fa ff ff       	call   1ec4 <rio_readlineb>
    2450:	48 85 c0             	test   %rax,%rax
    2453:	7e 54                	jle    24a9 <submitr+0x519>
    2455:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    245c:	00 
    245d:	4c 89 ff             	mov    %r15,%rdi
    2460:	e8 ab ed ff ff       	call   1210 <strcpy@plt>
    2465:	44 89 e7             	mov    %r12d,%edi
    2468:	e8 03 ee ff ff       	call   1270 <close@plt>
    246d:	48 8d 35 9d 10 00 00 	lea    0x109d(%rip),%rsi        # 3511 <array.0+0x3f1>
    2474:	4c 89 ff             	mov    %r15,%rdi
    2477:	e8 24 ee ff ff       	call   12a0 <strcmp@plt>
    247c:	f7 d8                	neg    %eax
    247e:	19 c0                	sbb    %eax,%eax
    2480:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    2487:	00 
    2488:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    248f:	00 00 
    2491:	0f 85 f8 02 00 00    	jne    278f <submitr+0x7ff>
    2497:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    249e:	5b                   	pop    %rbx
    249f:	5d                   	pop    %rbp
    24a0:	41 5c                	pop    %r12
    24a2:	41 5d                	pop    %r13
    24a4:	41 5e                	pop    %r14
    24a6:	41 5f                	pop    %r15
    24a8:	c3                   	ret    
    24a9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24b0:	3a 20 43 
    24b3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24ba:	20 75 6e 
    24bd:	49 89 07             	mov    %rax,(%r15)
    24c0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24c4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24cb:	74 6f 20 
    24ce:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    24d5:	73 74 61 
    24d8:	49 89 47 10          	mov    %rax,0x10(%r15)
    24dc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24e0:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    24e7:	65 73 73 
    24ea:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    24f1:	72 6f 6d 
    24f4:	49 89 47 20          	mov    %rax,0x20(%r15)
    24f8:	49 89 57 28          	mov    %rdx,0x28(%r15)
    24fc:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2503:	65 72 00 
    2506:	49 89 47 30          	mov    %rax,0x30(%r15)
    250a:	44 89 e7             	mov    %r12d,%edi
    250d:	e8 5e ed ff ff       	call   1270 <close@plt>
    2512:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2517:	e9 64 ff ff ff       	jmp    2480 <submitr+0x4f0>
    251c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2523:	3a 20 43 
    2526:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    252d:	20 75 6e 
    2530:	49 89 07             	mov    %rax,(%r15)
    2533:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2537:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    253e:	74 6f 20 
    2541:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2548:	20 74 6f 
    254b:	49 89 47 10          	mov    %rax,0x10(%r15)
    254f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2553:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    255a:	73 65 72 
    255d:	49 89 47 20          	mov    %rax,0x20(%r15)
    2561:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2568:	00 
    2569:	44 89 e7             	mov    %r12d,%edi
    256c:	e8 ff ec ff ff       	call   1270 <close@plt>
    2571:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2576:	e9 05 ff ff ff       	jmp    2480 <submitr+0x4f0>
    257b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2582:	3a 20 52 
    2585:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    258c:	20 73 74 
    258f:	49 89 07             	mov    %rax,(%r15)
    2592:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2596:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    259d:	63 6f 6e 
    25a0:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    25a7:	20 61 6e 
    25aa:	49 89 47 10          	mov    %rax,0x10(%r15)
    25ae:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25b2:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    25b9:	67 61 6c 
    25bc:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    25c3:	6e 70 72 
    25c6:	49 89 47 20          	mov    %rax,0x20(%r15)
    25ca:	49 89 57 28          	mov    %rdx,0x28(%r15)
    25ce:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    25d5:	6c 65 20 
    25d8:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    25df:	63 74 65 
    25e2:	49 89 47 30          	mov    %rax,0x30(%r15)
    25e6:	49 89 57 38          	mov    %rdx,0x38(%r15)
    25ea:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    25f1:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    25f6:	44 89 e7             	mov    %r12d,%edi
    25f9:	e8 72 ec ff ff       	call   1270 <close@plt>
    25fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2603:	e9 78 fe ff ff       	jmp    2480 <submitr+0x4f0>
    2608:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    260f:	00 
    2610:	48 83 ec 08          	sub    $0x8,%rsp
    2614:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    261b:	00 
    261c:	50                   	push   %rax
    261d:	ff 74 24 28          	push   0x28(%rsp)
    2621:	ff 74 24 38          	push   0x38(%rsp)
    2625:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    262a:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    262f:	48 8d 0d 42 0e 00 00 	lea    0xe42(%rip),%rcx        # 3478 <array.0+0x358>
    2636:	ba 00 20 00 00       	mov    $0x2000,%edx
    263b:	be 01 00 00 00       	mov    $0x1,%esi
    2640:	48 89 df             	mov    %rbx,%rdi
    2643:	b8 00 00 00 00       	mov    $0x0,%eax
    2648:	e8 33 ed ff ff       	call   1380 <__sprintf_chk@plt>
    264d:	48 83 c4 20          	add    $0x20,%rsp
    2651:	48 89 df             	mov    %rbx,%rdi
    2654:	e8 e7 eb ff ff       	call   1240 <strlen@plt>
    2659:	48 89 c3             	mov    %rax,%rbx
    265c:	48 8d ac 24 60 20 00 	lea    0x2060(%rsp),%rbp
    2663:	00 
    2664:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    266a:	48 85 c0             	test   %rax,%rax
    266d:	0f 85 f8 fc ff ff    	jne    236b <submitr+0x3db>
    2673:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    2678:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    267f:	00 
    2680:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2685:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    268a:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    268f:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2696:	00 
    2697:	ba 00 20 00 00       	mov    $0x2000,%edx
    269c:	e8 23 f8 ff ff       	call   1ec4 <rio_readlineb>
    26a1:	48 85 c0             	test   %rax,%rax
    26a4:	0f 8e e7 fc ff ff    	jle    2391 <submitr+0x401>
    26aa:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    26af:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    26b6:	00 
    26b7:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    26be:	00 
    26bf:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    26c6:	00 
    26c7:	48 8d 35 2f 0e 00 00 	lea    0xe2f(%rip),%rsi        # 34fd <array.0+0x3dd>
    26ce:	b8 00 00 00 00       	mov    $0x0,%eax
    26d3:	e8 28 ec ff ff       	call   1300 <__isoc99_sscanf@plt>
    26d8:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    26dd:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    26e4:	0f 85 18 fd ff ff    	jne    2402 <submitr+0x472>
    26ea:	48 8d 1d 1d 0e 00 00 	lea    0xe1d(%rip),%rbx        # 350e <array.0+0x3ee>
    26f1:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    26f8:	00 
    26f9:	48 89 de             	mov    %rbx,%rsi
    26fc:	e8 9f eb ff ff       	call   12a0 <strcmp@plt>
    2701:	85 c0                	test   %eax,%eax
    2703:	0f 84 30 fd ff ff    	je     2439 <submitr+0x4a9>
    2709:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2710:	00 
    2711:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2716:	ba 00 20 00 00       	mov    $0x2000,%edx
    271b:	e8 a4 f7 ff ff       	call   1ec4 <rio_readlineb>
    2720:	48 85 c0             	test   %rax,%rax
    2723:	7f cc                	jg     26f1 <submitr+0x761>
    2725:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    272c:	3a 20 43 
    272f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2736:	20 75 6e 
    2739:	49 89 07             	mov    %rax,(%r15)
    273c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2740:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2747:	74 6f 20 
    274a:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2751:	68 65 61 
    2754:	49 89 47 10          	mov    %rax,0x10(%r15)
    2758:	49 89 57 18          	mov    %rdx,0x18(%r15)
    275c:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2763:	66 72 6f 
    2766:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    276d:	76 65 72 
    2770:	49 89 47 20          	mov    %rax,0x20(%r15)
    2774:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2778:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    277d:	44 89 e7             	mov    %r12d,%edi
    2780:	e8 eb ea ff ff       	call   1270 <close@plt>
    2785:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    278a:	e9 f1 fc ff ff       	jmp    2480 <submitr+0x4f0>
    278f:	e8 bc ea ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000002794 <init_timeout>:
    2794:	f3 0f 1e fa          	endbr64 
    2798:	85 ff                	test   %edi,%edi
    279a:	75 01                	jne    279d <init_timeout+0x9>
    279c:	c3                   	ret    
    279d:	53                   	push   %rbx
    279e:	89 fb                	mov    %edi,%ebx
    27a0:	48 8d 35 e7 f6 ff ff 	lea    -0x919(%rip),%rsi        # 1e8e <sigalrm_handler>
    27a7:	bf 0e 00 00 00       	mov    $0xe,%edi
    27ac:	e8 ff ea ff ff       	call   12b0 <signal@plt>
    27b1:	85 db                	test   %ebx,%ebx
    27b3:	b8 00 00 00 00       	mov    $0x0,%eax
    27b8:	0f 49 c3             	cmovns %ebx,%eax
    27bb:	89 c7                	mov    %eax,%edi
    27bd:	e8 9e ea ff ff       	call   1260 <alarm@plt>
    27c2:	5b                   	pop    %rbx
    27c3:	c3                   	ret    

00000000000027c4 <init_driver>:
    27c4:	f3 0f 1e fa          	endbr64 
    27c8:	41 54                	push   %r12
    27ca:	55                   	push   %rbp
    27cb:	53                   	push   %rbx
    27cc:	48 83 ec 20          	sub    $0x20,%rsp
    27d0:	48 89 fd             	mov    %rdi,%rbp
    27d3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    27da:	00 00 
    27dc:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    27e1:	31 c0                	xor    %eax,%eax
    27e3:	be 01 00 00 00       	mov    $0x1,%esi
    27e8:	bf 0d 00 00 00       	mov    $0xd,%edi
    27ed:	e8 be ea ff ff       	call   12b0 <signal@plt>
    27f2:	be 01 00 00 00       	mov    $0x1,%esi
    27f7:	bf 1d 00 00 00       	mov    $0x1d,%edi
    27fc:	e8 af ea ff ff       	call   12b0 <signal@plt>
    2801:	be 01 00 00 00       	mov    $0x1,%esi
    2806:	bf 1d 00 00 00       	mov    $0x1d,%edi
    280b:	e8 a0 ea ff ff       	call   12b0 <signal@plt>
    2810:	ba 00 00 00 00       	mov    $0x0,%edx
    2815:	be 01 00 00 00       	mov    $0x1,%esi
    281a:	bf 02 00 00 00       	mov    $0x2,%edi
    281f:	e8 6c eb ff ff       	call   1390 <socket@plt>
    2824:	85 c0                	test   %eax,%eax
    2826:	0f 88 9c 00 00 00    	js     28c8 <init_driver+0x104>
    282c:	89 c3                	mov    %eax,%ebx
    282e:	48 8d 3d df 0c 00 00 	lea    0xcdf(%rip),%rdi        # 3514 <array.0+0x3f4>
    2835:	e8 86 ea ff ff       	call   12c0 <gethostbyname@plt>
    283a:	48 85 c0             	test   %rax,%rax
    283d:	0f 84 d1 00 00 00    	je     2914 <init_driver+0x150>
    2843:	49 89 e4             	mov    %rsp,%r12
    2846:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    284d:	00 
    284e:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2855:	00 00 
    2857:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    285d:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2861:	48 8b 40 18          	mov    0x18(%rax),%rax
    2865:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    286a:	b9 0c 00 00 00       	mov    $0xc,%ecx
    286f:	48 8b 30             	mov    (%rax),%rsi
    2872:	e8 59 ea ff ff       	call   12d0 <__memmove_chk@plt>
    2877:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    287e:	ba 10 00 00 00       	mov    $0x10,%edx
    2883:	4c 89 e6             	mov    %r12,%rsi
    2886:	89 df                	mov    %ebx,%edi
    2888:	e8 b3 ea ff ff       	call   1340 <connect@plt>
    288d:	85 c0                	test   %eax,%eax
    288f:	0f 88 e7 00 00 00    	js     297c <init_driver+0x1b8>
    2895:	89 df                	mov    %ebx,%edi
    2897:	e8 d4 e9 ff ff       	call   1270 <close@plt>
    289c:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    28a2:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    28a6:	b8 00 00 00 00       	mov    $0x0,%eax
    28ab:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    28b0:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    28b7:	00 00 
    28b9:	0f 85 f5 00 00 00    	jne    29b4 <init_driver+0x1f0>
    28bf:	48 83 c4 20          	add    $0x20,%rsp
    28c3:	5b                   	pop    %rbx
    28c4:	5d                   	pop    %rbp
    28c5:	41 5c                	pop    %r12
    28c7:	c3                   	ret    
    28c8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28cf:	3a 20 43 
    28d2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28d9:	20 75 6e 
    28dc:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28e0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28e4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28eb:	74 6f 20 
    28ee:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    28f5:	65 20 73 
    28f8:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28fc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2900:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2907:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    290d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2912:	eb 97                	jmp    28ab <init_driver+0xe7>
    2914:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    291b:	3a 20 44 
    291e:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2925:	20 75 6e 
    2928:	48 89 45 00          	mov    %rax,0x0(%rbp)
    292c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2930:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2937:	74 6f 20 
    293a:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2941:	76 65 20 
    2944:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2948:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    294c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2953:	72 20 61 
    2956:	48 89 45 20          	mov    %rax,0x20(%rbp)
    295a:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2961:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2967:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    296b:	89 df                	mov    %ebx,%edi
    296d:	e8 fe e8 ff ff       	call   1270 <close@plt>
    2972:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2977:	e9 2f ff ff ff       	jmp    28ab <init_driver+0xe7>
    297c:	4c 8d 05 91 0b 00 00 	lea    0xb91(%rip),%r8        # 3514 <array.0+0x3f4>
    2983:	48 8d 0d 46 0b 00 00 	lea    0xb46(%rip),%rcx        # 34d0 <array.0+0x3b0>
    298a:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2991:	be 01 00 00 00       	mov    $0x1,%esi
    2996:	48 89 ef             	mov    %rbp,%rdi
    2999:	b8 00 00 00 00       	mov    $0x0,%eax
    299e:	e8 dd e9 ff ff       	call   1380 <__sprintf_chk@plt>
    29a3:	89 df                	mov    %ebx,%edi
    29a5:	e8 c6 e8 ff ff       	call   1270 <close@plt>
    29aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29af:	e9 f7 fe ff ff       	jmp    28ab <init_driver+0xe7>
    29b4:	e8 97 e8 ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000029b9 <driver_post>:
    29b9:	f3 0f 1e fa          	endbr64 
    29bd:	53                   	push   %rbx
    29be:	4c 89 c3             	mov    %r8,%rbx
    29c1:	85 c9                	test   %ecx,%ecx
    29c3:	75 17                	jne    29dc <driver_post+0x23>
    29c5:	48 85 ff             	test   %rdi,%rdi
    29c8:	74 05                	je     29cf <driver_post+0x16>
    29ca:	80 3f 00             	cmpb   $0x0,(%rdi)
    29cd:	75 33                	jne    2a02 <driver_post+0x49>
    29cf:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    29d4:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    29d8:	89 c8                	mov    %ecx,%eax
    29da:	5b                   	pop    %rbx
    29db:	c3                   	ret    
    29dc:	48 8d 35 49 0b 00 00 	lea    0xb49(%rip),%rsi        # 352c <array.0+0x40c>
    29e3:	bf 01 00 00 00       	mov    $0x1,%edi
    29e8:	b8 00 00 00 00       	mov    $0x0,%eax
    29ed:	e8 1e e9 ff ff       	call   1310 <__printf_chk@plt>
    29f2:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    29f7:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    29fb:	b8 00 00 00 00       	mov    $0x0,%eax
    2a00:	eb d8                	jmp    29da <driver_post+0x21>
    2a02:	41 50                	push   %r8
    2a04:	52                   	push   %rdx
    2a05:	4c 8d 0d 37 0b 00 00 	lea    0xb37(%rip),%r9        # 3543 <array.0+0x423>
    2a0c:	49 89 f0             	mov    %rsi,%r8
    2a0f:	48 89 f9             	mov    %rdi,%rcx
    2a12:	48 8d 15 32 0b 00 00 	lea    0xb32(%rip),%rdx        # 354b <array.0+0x42b>
    2a19:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2a1e:	48 8d 3d ef 0a 00 00 	lea    0xaef(%rip),%rdi        # 3514 <array.0+0x3f4>
    2a25:	e8 66 f5 ff ff       	call   1f90 <submitr>
    2a2a:	48 83 c4 10          	add    $0x10,%rsp
    2a2e:	eb aa                	jmp    29da <driver_post+0x21>

Disassembly of section .fini:

0000000000002a30 <_fini>:
    2a30:	f3 0f 1e fa          	endbr64 
    2a34:	48 83 ec 08          	sub    $0x8,%rsp
    2a38:	48 83 c4 08          	add    $0x8,%rsp
    2a3c:	c3                   	ret    
