// Assembly code emitted by HLA compiler
// Version 1.78 build 9987 (prototype)
// HLA compiler written by Randall Hyde
// GAS compatible output

		.intel_syntax	noprefix

		.include "hlaadv.extpub.inc"




		.data
		.include	"hlaadv.data.inc"

		.bss
		.include	"hlaadv.bss.inc"

		.text
		.include	"hlaadv.consts.inc"

		.text
		.include	"hlaadv.ro.inc"



		.text

		.text
		.type	L1017_matchword__hla_,@function
L1017_matchword__hla_:
		push	ebp		;/*Dynamic link*/
		push	dword ptr [ebp-4]	;/*Display for lex level 0*/
		lea	ebp,[esp+4]	;/*Get frame ptr*/
		push	ebp		;/*Ptr to this proc's A.R.*/
		and	esp, 0xfffffffc
		push	esi
		push	edi
		push	ecx
		cld
		mov	edi, dword ptr [ebp+12]	;/* src */
		mov	esi, dword ptr [ebp+8]	;/* matchstr */
		mov	ecx, dword ptr [esi-4]	;/* (type strRec [esi]).length */
	repe	cmpsb
		jne	L1018_false__hla_
		mov	al, [edi+0]	;/* [edi] */
		cmp	al, 0x20	;/* ' ' */
		je	L1020__hla_
		test	al,al
		jne	L1019_false__hla_
L1020__hla_:
		mov	eax, 1
		jmp	L1019_endif__hla_
L1019_false__hla_:
		xor	eax, eax
L1019_endif__hla_:
		jmp	L1018_endif__hla_
L1018_false__hla_:
		xor	eax, eax
L1018_endif__hla_:
		pop	ecx
		pop	edi
		pop	esi
xL1017_matchword__hla___hla_:
		mov	esp, ebp
		pop	ebp
		ret	8
End_L1017_matchword__hla__1021:
		.size	L1017_matchword__hla_,End_L1017_matchword__hla__1021-L1017_matchword__hla_

		.text
		.type	InstallSignals__hla_,@function
InstallSignals__hla_:
		jmp		excepts_install_signals
End_InstallSignals__hla__1198:
		.size	InstallSignals__hla_,End_InstallSignals__hla__1198-InstallSignals__hla_

		.type	DfltExHndlr__hla_,@function
DfltExHndlr__hla_:
		jmp	DefaultExceptionHandler__hla_
End_DfltExHndlr__hla__1199:
		.size	DfltExHndlr__hla_,End_DfltExHndlr__hla__1199-DfltExHndlr__hla_



		.data
		.global	_envp__hla_
		.global	_argc__hla_
		.global	_argv__hla_
		.global	_envp__hla_
_argc__hla_:	.long	0
_argv__hla_:	.long	0
_envp__hla_:	.long	0
		.text


		.type	_HLAMain,@function
_HLAMain       :
		.global	_start
_start:
		mov	eax,esp
_findEnvp_: add	eax,4
		cmp dword ptr [eax], 0
		jne	_findEnvp_
		add	eax,4
		mov	_envp__hla_,eax
		mov	eax, [esp+4]
		mov	_argv__hla_, eax
		mov	eax, [esp+0]
		mov	_argc__hla_, eax


;/* Set up the Structured Exception Handler record */
;/* for this program. */

		call	BuildExcepts__hla_
		pushd	0		;/* No Dynamic Link. */
		mov	ebp, esp	;/* Pointer to Main's locals */
		push	ebp		;/* Main's display. */


		mov	ebx, 7
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 4	;/* lo */
		mov	ebx, 8
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 99	;/* lo */
		mov	ebx, 9
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 9	;/* lo */
		mov	ebx, 10
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 9	;/* lo */
		mov	ebx, 11
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 18	;/* lo */
		mov	ebx, 12
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 24	;/* lo */
		mov	ebx, 13
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 99	;/* lo */
		mov	ebx, 14
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1031	;/* lo */
		mov	ebx, 15
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1034	;/* lo */
		mov	ebx, 16
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1035	;/* lo */
		mov	ebx, 17
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1029	;/* lo */
		mov	ebx, 18
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 18	;/* lo */
		mov	ebx, 19
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 99	;/* lo */
		mov	ebx, 20
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1034	;/* lo */
		mov	ebx, 21
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1034	;/* lo */
		mov	ebx, 22
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1031	;/* lo */
		mov	ebx, 23
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1029	;/* lo */
		mov	ebx, 24
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1032	;/* lo */
		mov	ebx, 25
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1032	;/* lo */
		mov	ebx, 26
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 3	;/* lo */
		mov	ebx, 27
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 6	;/* lo */
		mov	ebx, 28
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 14	;/* lo */
		mov	ebx, 29
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 30	;/* lo */
		mov	ebx, 30
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 20	;/* lo */
		mov	ebx, 31
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 22	;/* lo */
		mov	ebx, 32
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 27	;/* lo */
		mov	ebx, 33
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 18	;/* lo */
		mov	ebx, 34
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 10	;/* lo */
		mov	ebx, 35
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 85	;/* lo */
		mov	ebx, 36
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 94	;/* lo */
		mov	ebx, 37
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 72	;/* lo */
		mov	ebx, 38
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 94	;/* lo */
		mov	ebx, 39
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 67	;/* lo */
		mov	ebx, 40
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 54	;/* lo */
		mov	ebx, 41
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 10	;/* lo */
		mov	ebx, 42
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 102	;/* lo */
		mov	ebx, 43
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 117	;/* lo */
		mov	ebx, 44
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 117	;/* lo */
		mov	ebx, 45
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 141	;/* lo */
		mov	ebx, 46
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 151	;/* lo */
		mov	ebx, 47
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 161	;/* lo */
		mov	ebx, 48
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 135	;/* lo */
		mov	ebx, 49
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 109	;/* lo */
		mov	ebx, 50
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -2	;/* lo */
		mov	ebx, 51
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 4	;/* lo */
		mov	ebx, 52
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 53	;/* lo */
		mov	ebx, 53
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 172	;/* lo */
		mov	ebx, 54
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 184	;/* lo */
		mov	ebx, 55
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 193	;/* lo */
		mov	ebx, 56
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 204	;/* lo */
		mov	ebx, 57
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 10	;/* lo */
		mov	ebx, 58
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 14	;/* lo */
		mov	ebx, 59
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 223	;/* lo */
		mov	ebx, 60
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1	;/* lo */
		mov	ebx, 61
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 209	;/* lo */
		mov	ebx, 62
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 212	;/* lo */
		mov	ebx, 63
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 210	;/* lo */
		mov	ebx, 64
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 200	;/* lo */
		mov	ebx, 65
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 223	;/* lo */
		mov	ebx, 66
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 232	;/* lo */
		mov	ebx, 67
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1070	;/* lo */
		mov	ebx, 68
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 1073	;/* lo */
		mov	ebx, 69
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 245	;/* lo */
		mov	ebx, 70
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 234	;/* lo */
		mov	ebx, 71
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 230	;/* lo */
		mov	ebx, 72
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 236	;/* lo */
		mov	ebx, 73
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 235	;/* lo */
		mov	ebx, 74
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 245	;/* lo */
		mov	ebx, 75
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 249	;/* lo */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		call	CONSOLE_HOME	/* cls */
		pushd	0x1
		pushd	0x1
		call	CONSOLE_GOTOXY	/* gotoxy */
		push	offset L1200_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1201_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1202_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1203_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1204_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1205_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1206_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1207_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1208_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1209_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1210_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1211_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1212_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1213_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	STDIN_GETC	/* getc */
		call	CONSOLE_HOME	/* cls */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1214_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1215_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1216_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1217_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1218_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1219_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1220_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1221_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1222_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1223_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		pushd	0x0
		pushd	0x15
		call	CONSOLE_GOTOXY	/* gotoxy */
		push	offset L1224_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1225_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	STDIN_READLN	/* readLn */
		call	CONSOLE_HOME	/* cls */
		pushd	0x0
		pushd	0x0
		call	CONSOLE_GOTOXY	/* gotoxy */
		call	CONSOLE_HOME	/* cls */
		pushd	0x0
		pushd	0x0
		call	CONSOLE_GOTOXY	/* gotoxy */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1226_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x50
		call	STR_ALLOC	/* stralloc */
		mov	dword ptr [L1040_w__hla_+0], eax	;/* w */
		call	STDIN_FLUSHINPUT	/* flushInput */
		push	dword ptr [L1040_w__hla_+0]	/* w */
		call	STDIN_GETS	/* gets */
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L1228_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L1230__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L1229_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L1227_false__hla_
L1230__hla_:
		jmp	L1231_vb2__hla_
L1227_false__hla_:

L1232_mainlp__hla_:
		call	CONSOLE_HOME	/* cls */
		pushd	0x0
		pushd	0x2
		call	CONSOLE_GOTOXY	/* gotoxy */

L1233_mainlp2__hla_:

L1234_Room__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		cmp	dword ptr [L1032_r__hla_+0], 0x1	;/* r,1 */
		jne	L1235_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1236_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1237_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1238_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1239_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1240_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1241_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1242_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1243_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1244_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1245_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1235_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x2	;/* r,2 */
		jne	L1246_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1247_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1248_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1249_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1250_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1251_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1252_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1246_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x3	;/* r,3 */
		jne	L1253_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1254_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1255_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1256_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1257_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1258_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1259_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1260_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1261_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1253_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x4	;/* r,4 */
		jne	L1262_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1263_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1264_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1265_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1266_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1267_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1262_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x5	;/* r,5 */
		jne	L1268_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1269_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1270_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1271_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1272_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1273_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1274_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1268_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x6	;/* r,6 */
		jne	L1275_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1276_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1277_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1278_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1279_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1280_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1281_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1282_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1283_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1275_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x7	;/* r,7 */
		jne	L1284_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1285_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1286_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1287_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1288_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1289_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1290_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1284_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x8	;/* r,8 */
		jne	L1291_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1292_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1293_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1294_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1295_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1296_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1297_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1298_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1291_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x9	;/* r,9 */
		jne	L1299_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1300_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1301_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1302_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1303_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1304_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1305_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1306_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1299_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa	;/* r,10 */
		jne	L1307_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1308_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1309_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1310_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1311_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1312_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1313_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1314_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1315_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1316_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1317_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1307_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb	;/* r,11 */
		jne	L1318_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1319_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1320_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1321_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1322_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1323_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1324_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1325_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1326_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1318_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc	;/* r,12 */
		jne	L1327_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1328_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1329_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1330_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1331_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1332_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1333_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1334_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1327_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd	;/* r,13 */
		jne	L1335_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1336_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1337_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1338_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1339_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1340_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1341_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1342_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1335_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe	;/* r,14 */
		jne	L1343_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1344_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1345_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1346_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1347_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1348_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1349_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1350_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1351_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1352_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1353_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1343_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf	;/* r,15 */
		jne	L1354_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1355_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1356_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1357_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1358_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1359_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1360_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1361_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1354_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x10	;/* r,16 */
		jne	L1362_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1363_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1364_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1365_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1366_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1367_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1368_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1369_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1362_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x11	;/* r,17 */
		jne	L1370_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1371_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1372_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1373_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1374_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1375_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1376_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1377_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1378_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1370_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x12	;/* r,18 */
		jne	L1379_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1380_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1381_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1382_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1383_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1384_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1385_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1386_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1379_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x13	;/* r,19 */
		jne	L1387_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1388_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1389_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1390_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1391_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1392_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1393_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1387_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x14	;/* r,20 */
		jne	L1394_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1395_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1396_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1397_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1398_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1399_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1400_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1401_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1402_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1394_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x15	;/* r,21 */
		jne	L1403_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1404_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1405_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1406_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1407_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1408_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1409_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1403_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x16	;/* r,22 */
		jne	L1410_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1411_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1412_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1413_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1414_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1415_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1416_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1410_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x17	;/* r,23 */
		jne	L1417_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1418_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1419_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1420_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1421_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1422_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1423_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1417_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x18	;/* r,24 */
		jne	L1424_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1425_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1426_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1427_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1428_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1429_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1430_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1431_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1424_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x19	;/* r,25 */
		jne	L1432_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1433_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1434_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1435_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1436_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1437_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1438_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1432_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x1a	;/* r,26 */
		jne	L1439_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1440_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1441_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1442_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1443_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1444_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1445_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1446_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1439_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x1b	;/* r,27 */
		jne	L1447_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1448_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1449_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1450_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1451_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1452_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1453_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1447_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x1c	;/* r,28 */
		jne	L1454_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1455_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1456_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1457_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1458_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1459_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1460_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1454_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x1d	;/* r,29 */
		jne	L1461_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1462_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1463_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1464_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1465_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1466_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1467_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1468_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1469_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1461_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x1e	;/* r,30 */
		jne	L1470_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1471_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1472_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1473_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1474_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1475_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1476_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1477_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1470_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x1f	;/* r,31 */
		jne	L1478_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1479_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1480_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1481_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1482_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1483_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1484_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1485_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1486_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1478_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x20	;/* r,32 */
		jne	L1487_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1488_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1489_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1490_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1491_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1492_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1493_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1494_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1487_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x21	;/* r,33 */
		jne	L1495_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1496_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1497_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1498_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1499_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1500_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1501_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1502_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1503_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1495_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x22	;/* r,34 */
		jne	L1504_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1505_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1506_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1507_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1508_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1509_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1510_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1511_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1504_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x23	;/* r,35 */
		jne	L1512_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1513_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1514_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1515_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1516_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1517_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1518_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1512_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x24	;/* r,36 */
		jne	L1519_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1520_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1521_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1522_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1523_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1524_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1525_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1519_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x25	;/* r,37 */
		jne	L1526_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1527_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1528_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1529_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1530_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1531_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1532_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1526_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x26	;/* r,38 */
		jne	L1533_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1534_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1535_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1536_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1537_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1538_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1539_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1540_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1533_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x27	;/* r,39 */
		jne	L1541_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1542_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1543_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1544_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1545_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1546_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1547_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1541_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x28	;/* r,40 */
		jne	L1548_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1549_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1550_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1551_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1552_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1553_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1554_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1555_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1548_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x29	;/* r,41 */
		jne	L1556_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1557_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1558_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1559_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1560_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1561_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1562_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1556_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x2a	;/* r,42 */
		jne	L1563_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1564_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1565_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1566_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1567_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1568_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1569_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1570_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1563_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x2b	;/* r,43 */
		jne	L1571_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1572_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1573_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1574_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1575_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1576_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1577_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1571_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x2c	;/* r,44 */
		jne	L1578_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1579_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1580_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1581_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1582_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1583_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1584_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1578_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x2d	;/* r,45 */
		jne	L1585_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1586_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1587_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1588_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1589_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1590_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1591_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1592_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1585_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x2e	;/* r,46 */
		jne	L1593_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1594_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1595_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1596_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1597_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1598_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1599_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1600_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1601_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1593_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x2f	;/* r,47 */
		jne	L1602_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1603_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1604_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1605_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1606_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1607_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1608_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1609_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1602_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x30	;/* r,48 */
		jne	L1610_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1611_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1612_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1613_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1614_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1615_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1616_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1610_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x31	;/* r,49 */
		jne	L1617_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1618_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1619_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1620_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1621_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1622_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1623_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1617_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x32	;/* r,50 */
		jne	L1624_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1625_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1626_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1627_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1628_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1629_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1630_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1631_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1624_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x33	;/* r,51 */
		jne	L1632_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1633_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1634_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1635_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1636_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1637_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1638_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1632_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x34	;/* r,52 */
		jne	L1639_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1640_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1641_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1642_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1643_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1644_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1645_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1639_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x35	;/* r,53 */
		jne	L1646_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1647_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1648_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1649_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1650_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1651_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1652_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1653_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1646_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x36	;/* r,54 */
		jne	L1654_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1655_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1656_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1657_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1658_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1659_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1660_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1661_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1662_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1654_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x37	;/* r,55 */
		jne	L1663_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1664_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1665_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1666_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1667_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1668_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1669_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1670_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1663_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x38	;/* r,56 */
		jne	L1671_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1672_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1673_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1674_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1675_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1676_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1677_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1678_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1671_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x39	;/* r,57 */
		jne	L1679_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1680_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1681_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1682_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1683_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1684_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1685_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1686_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1679_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x3a	;/* r,58 */
		jne	L1687_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1688_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1689_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1690_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1691_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1692_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1693_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1694_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1687_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x3b	;/* r,59 */
		jne	L1695_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1696_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1697_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1698_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1699_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1700_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1701_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1702_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1703_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1695_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x3c	;/* r,60 */
		jne	L1704_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1705_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1706_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1707_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1708_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1709_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1710_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1711_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1712_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1704_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x3d	;/* r,61 */
		jne	L1713_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1714_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1715_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1716_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1717_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1718_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1719_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1713_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x3e	;/* r,62 */
		jne	L1720_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1721_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1722_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1723_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1724_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1725_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1726_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1720_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x3f	;/* r,63 */
		jne	L1727_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1728_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1729_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1730_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1731_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1732_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1733_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1734_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1727_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x40	;/* r,64 */
		jne	L1735_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1736_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1737_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1738_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1739_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1740_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1741_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1742_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1743_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1735_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x41	;/* r,65 */
		jne	L1744_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1745_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1746_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1747_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1748_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1749_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1750_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1744_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x42	;/* r,66 */
		jne	L1751_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1752_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1753_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1754_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1755_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1756_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1757_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1758_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1759_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1760_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1751_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x43	;/* r,67 */
		jne	L1761_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1762_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1763_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1764_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1765_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1766_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1767_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1761_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x44	;/* r,68 */
		jne	L1768_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1769_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1770_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1771_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1772_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1773_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1774_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1775_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1768_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x45	;/* r,69 */
		jne	L1776_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1777_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1778_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1779_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1780_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1781_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1782_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1776_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x46	;/* r,70 */
		jne	L1783_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1784_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1785_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1786_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1787_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1788_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1789_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1790_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1783_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x47	;/* r,71 */
		jne	L1791_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1792_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1793_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1794_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1795_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1796_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1797_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1798_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1799_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1791_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x48	;/* r,72 */
		jne	L1800_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1801_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1802_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1803_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1804_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1805_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1806_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1807_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1808_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1800_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x49	;/* r,73 */
		jne	L1809_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1810_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1811_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1812_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1813_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1814_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1815_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1816_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1809_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x4a	;/* r,74 */
		jne	L1817_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1818_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1819_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1820_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1821_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1822_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1823_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1817_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x4b	;/* r,75 */
		jne	L1824_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1825_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1826_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1827_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1828_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1829_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1830_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1824_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x4c	;/* r,76 */
		jne	L1831_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1832_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1833_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1834_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1835_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1836_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1837_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1838_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1831_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x4d	;/* r,77 */
		jne	L1839_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1840_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1841_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1842_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1843_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1844_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1845_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1846_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1839_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x4e	;/* r,78 */
		jne	L1847_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1848_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1849_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1850_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1851_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1852_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1853_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1847_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x4f	;/* r,79 */
		jne	L1854_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1855_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1856_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1857_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1858_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1859_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1860_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1861_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1862_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1854_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x50	;/* r,80 */
		jne	L1863_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1864_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1865_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1866_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1867_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1868_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1869_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1870_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1871_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1863_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x51	;/* r,81 */
		jne	L1872_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1873_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1874_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1875_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1876_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1877_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1878_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1872_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x52	;/* r,82 */
		jne	L1879_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1880_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1881_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1882_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1883_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1884_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1885_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1879_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x53	;/* r,83 */
		jne	L1886_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1887_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1888_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1889_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1890_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1891_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1892_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1893_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1894_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1886_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x54	;/* r,84 */
		jne	L1895_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1896_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1897_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1898_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1899_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1900_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1901_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1902_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1903_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1904_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1895_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x55	;/* r,85 */
		jne	L1905_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1906_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1907_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1908_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1909_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1910_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1911_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1912_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1913_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1914_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1905_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x56	;/* r,86 */
		jne	L1915_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1916_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1917_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1918_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1919_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1920_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1921_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1922_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1915_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x57	;/* r,87 */
		jne	L1923_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1924_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1925_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1926_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1927_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1928_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1929_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1923_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x58	;/* r,88 */
		jne	L1930_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1931_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1932_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1933_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1934_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1935_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1936_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1930_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x59	;/* r,89 */
		jne	L1937_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1938_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1939_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1940_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1941_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1942_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1943_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1944_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1937_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x5a	;/* r,90 */
		jne	L1945_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1946_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1947_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1948_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1949_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1950_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1951_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1945_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x5b	;/* r,91 */
		jne	L1952_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1953_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1954_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1955_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1956_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1957_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1958_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1952_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x5c	;/* r,92 */
		jne	L1959_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1960_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1961_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1962_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1963_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1964_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1965_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1959_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x5d	;/* r,93 */
		jne	L1966_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1967_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1968_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1969_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1970_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1971_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1972_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1973_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1974_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1966_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x5e	;/* r,94 */
		jne	L1975_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1976_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1977_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1978_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1979_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1980_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1981_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1982_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1983_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1984_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1975_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x5f	;/* r,95 */
		jne	L1985_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1986_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1987_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1988_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1989_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1990_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1991_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1992_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1993_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1985_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x60	;/* r,96 */
		jne	L1994_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1995_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L1996_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1997_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1998_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L1999_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2000_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2001_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2002_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L1994_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x61	;/* r,97 */
		jne	L2003_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2004_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2005_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2006_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2007_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2008_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2009_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2010_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2011_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2012_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2003_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x62	;/* r,98 */
		jne	L2013_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2014_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2015_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2016_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2017_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2018_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2019_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2020_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2021_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2013_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x63	;/* r,99 */
		jne	L2022_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2023_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2024_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2025_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2026_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2027_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2028_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2029_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2030_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2022_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x64	;/* r,100 */
		jne	L2031_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2032_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2033_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2034_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2035_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2036_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2037_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2038_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2039_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2031_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x65	;/* r,101 */
		jne	L2040_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2041_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2042_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2043_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2044_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2045_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2046_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2047_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2048_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2040_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x66	;/* r,102 */
		jne	L2049_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2050_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2051_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2052_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2053_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2054_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2055_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2056_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2057_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2049_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x67	;/* r,103 */
		jne	L2058_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2059_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2060_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2061_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2062_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2063_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2064_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2065_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2066_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2058_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x68	;/* r,104 */
		jne	L2067_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2068_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2069_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2070_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2071_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2072_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2073_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2074_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2075_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2067_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x69	;/* r,105 */
		jne	L2076_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2077_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2078_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2079_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2080_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2081_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2082_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2083_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2084_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2076_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x6a	;/* r,106 */
		jne	L2085_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2086_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2087_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2088_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2089_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2090_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2091_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2092_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2093_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2085_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x6b	;/* r,107 */
		jne	L2094_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2095_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2096_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2097_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2098_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2099_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2100_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2101_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2102_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2094_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x6c	;/* r,108 */
		jne	L2103_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2104_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2105_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2106_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2107_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2108_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2109_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2110_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2111_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2103_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x6d	;/* r,109 */
		jne	L2112_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2113_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2114_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2115_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2116_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2117_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2118_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2119_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2120_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2112_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x6e	;/* r,110 */
		jne	L2121_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2122_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2123_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2124_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2125_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2126_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2127_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2128_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2129_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2121_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x6f	;/* r,111 */
		jne	L2130_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2131_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2132_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2133_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2134_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2135_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2136_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2137_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2138_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2130_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x70	;/* r,112 */
		jne	L2139_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2140_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2141_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2142_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2143_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2144_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2145_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2146_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2147_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2148_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2139_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x71	;/* r,113 */
		jne	L2149_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2150_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2151_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2152_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2153_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2154_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2155_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2156_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2157_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2149_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x72	;/* r,114 */
		jne	L2158_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2159_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2160_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2161_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2162_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2163_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2164_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2165_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2166_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2158_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x73	;/* r,115 */
		jne	L2167_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2168_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2169_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2170_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2171_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2172_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2173_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2174_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2175_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2167_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x74	;/* r,116 */
		jne	L2176_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2177_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2178_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2179_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2180_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2181_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2182_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2183_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2184_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2176_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x75	;/* r,117 */
		jne	L2185_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2186_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2187_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2188_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2189_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2190_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2191_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2192_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2193_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2185_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x76	;/* r,118 */
		jne	L2194_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2195_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2196_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2197_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2198_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2199_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2200_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2201_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2202_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2194_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x77	;/* r,119 */
		jne	L2203_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2204_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2205_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2206_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2207_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2208_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2209_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2210_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2211_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2203_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x78	;/* r,120 */
		jne	L2212_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2213_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2214_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2215_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2216_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2217_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2218_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2219_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2220_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2212_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x79	;/* r,121 */
		jne	L2221_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2222_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2223_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2224_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2225_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2226_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2227_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2228_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2229_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2221_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x7a	;/* r,122 */
		jne	L2230_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2231_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2232_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2233_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2234_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2235_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2236_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2237_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2238_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2230_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x7b	;/* r,123 */
		jne	L2239_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2240_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2241_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2242_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2243_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2244_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2245_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2246_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2247_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2239_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x7c	;/* r,124 */
		jne	L2248_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2249_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2250_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2251_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2252_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2253_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2254_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2255_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2256_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2248_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x7d	;/* r,125 */
		jne	L2257_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2258_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2259_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2260_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2261_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2262_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2263_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2264_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2265_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2257_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x7e	;/* r,126 */
		jne	L2266_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2267_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2268_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2269_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2270_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2271_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2272_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2273_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2274_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2266_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x7f	;/* r,127 */
		jne	L2275_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2276_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2277_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2278_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2279_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2280_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2281_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2282_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2283_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2275_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x80	;/* r,128 */
		jne	L2284_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2285_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2286_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2287_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2288_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2289_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2290_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2291_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2292_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2284_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x81	;/* r,129 */
		jne	L2293_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2294_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2295_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2296_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2297_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2298_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2299_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2300_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2301_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2293_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x82	;/* r,130 */
		jne	L2302_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2303_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2304_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2305_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2306_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2307_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2308_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2309_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2310_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2302_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x83	;/* r,131 */
		jne	L2311_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2312_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2313_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2314_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2315_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2316_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2317_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2318_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2319_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2311_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x84	;/* r,132 */
		jne	L2320_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2321_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2322_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2323_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2324_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2325_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2326_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2327_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2328_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2320_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x85	;/* r,133 */
		jne	L2329_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2330_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2331_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2332_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2333_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2334_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2335_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2336_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2337_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2329_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x86	;/* r,134 */
		jne	L2338_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2339_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2340_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2341_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2342_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2343_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2344_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2345_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2346_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2338_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x87	;/* r,135 */
		jne	L2347_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2348_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2349_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2350_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2351_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2352_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2353_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2354_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2355_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2347_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x88	;/* r,136 */
		jne	L2356_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2357_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2358_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2359_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2360_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2361_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2362_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2363_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2364_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2356_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x89	;/* r,137 */
		jne	L2365_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2366_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2367_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2368_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2369_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2370_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2371_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2372_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2373_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2365_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x8a	;/* r,138 */
		jne	L2374_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2375_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2376_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2377_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2378_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2379_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2380_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2381_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2382_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2374_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x8b	;/* r,139 */
		jne	L2383_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2384_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2385_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2386_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2387_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2388_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2389_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2390_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2391_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2383_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x8c	;/* r,140 */
		jne	L2392_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2393_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2394_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2395_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2396_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2397_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2398_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2399_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2400_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2392_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x8d	;/* r,141 */
		jne	L2401_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2402_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2403_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2404_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2405_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2406_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2407_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2408_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2409_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2401_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x8e	;/* r,142 */
		jne	L2410_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2411_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2412_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2413_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2414_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2415_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2416_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2417_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2418_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2410_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x8f	;/* r,143 */
		jne	L2419_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2420_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2421_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2422_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2423_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2424_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2425_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2426_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2427_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2419_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x90	;/* r,144 */
		jne	L2428_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2429_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2430_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2431_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2432_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2433_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2434_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2435_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2436_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2428_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x91	;/* r,145 */
		jne	L2437_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2438_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2439_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2440_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2441_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2442_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2443_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2444_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2445_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2446_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2437_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x92	;/* r,146 */
		jne	L2447_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2448_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2449_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2450_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2451_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2452_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2453_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2454_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2455_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2447_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x93	;/* r,147 */
		jne	L2456_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2457_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2458_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2459_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2460_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2461_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2462_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2463_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2464_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2456_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x94	;/* r,148 */
		jne	L2465_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2466_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2467_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2468_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2469_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2470_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2471_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2472_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2473_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2465_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x95	;/* r,149 */
		jne	L2474_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2475_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2476_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2477_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2478_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2479_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2480_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2481_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2482_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2474_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x96	;/* r,150 */
		jne	L2483_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2484_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2485_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2486_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2487_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2488_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2489_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2490_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2491_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2483_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x97	;/* r,151 */
		jne	L2492_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2493_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2494_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2495_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2496_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2497_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2498_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2499_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2500_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2492_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x98	;/* r,152 */
		jne	L2501_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2502_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2503_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2504_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2505_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2506_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2507_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2508_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2509_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2501_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x99	;/* r,153 */
		jne	L2510_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2511_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2512_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2513_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2514_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2515_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2516_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2517_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2518_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2510_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x9a	;/* r,154 */
		jne	L2519_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2520_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2521_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2522_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2523_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2524_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2525_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2526_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2527_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2519_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x9b	;/* r,155 */
		jne	L2528_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2529_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2530_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2531_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2532_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2533_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2534_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2535_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2536_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2528_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x9c	;/* r,156 */
		jne	L2537_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2538_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2539_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2540_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2541_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2542_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2543_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2544_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2545_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2537_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x9d	;/* r,157 */
		jne	L2546_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2547_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2548_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2549_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2550_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2551_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2552_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2553_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2554_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2546_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x9e	;/* r,158 */
		jne	L2555_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2556_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2557_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2558_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2559_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2560_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2561_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2562_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2563_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2555_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x9f	;/* r,159 */
		jne	L2564_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2565_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2566_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2567_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2568_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2569_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2570_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2571_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2572_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2564_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa0	;/* r,160 */
		jne	L2573_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2574_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2575_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2576_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2577_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2578_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2579_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2580_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2581_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2573_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa1	;/* r,161 */
		jne	L2582_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2583_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2584_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2585_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2586_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2587_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2588_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2589_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2590_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2582_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa2	;/* r,162 */
		jne	L2591_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2592_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2593_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2594_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2595_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2596_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2597_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2598_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2599_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2591_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa3	;/* r,163 */
		jne	L2600_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2601_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2602_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2603_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2604_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2605_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2606_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2607_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2608_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2600_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa4	;/* r,164 */
		jne	L2609_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2610_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2611_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2612_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2613_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2614_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2615_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2616_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2617_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2609_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa5	;/* r,165 */
		jne	L2618_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2619_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2620_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2621_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2622_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2623_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2624_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2625_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2626_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2618_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa6	;/* r,166 */
		jne	L2627_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2628_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2629_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2630_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2631_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2632_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2633_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2634_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2635_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2627_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa7	;/* r,167 */
		jne	L2636_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2637_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2638_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2639_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2640_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2641_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2642_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2643_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2644_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2636_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa8	;/* r,168 */
		jne	L2645_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2646_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2647_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2648_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2649_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2650_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2651_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2652_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2653_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2645_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xa9	;/* r,169 */
		jne	L2654_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2655_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2656_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2657_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2658_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2659_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2660_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2661_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2662_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2654_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xaa	;/* r,170 */
		jne	L2663_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2664_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2665_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2666_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2667_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2668_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2669_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2670_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2671_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2663_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xab	;/* r,171 */
		jne	L2672_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2673_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2674_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2675_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2676_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2677_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2678_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2679_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2680_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2681_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2672_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xac	;/* r,172 */
		jne	L2682_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2683_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2684_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2685_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2686_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2687_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2688_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2689_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2682_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xad	;/* r,173 */
		jne	L2690_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2691_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2692_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2693_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2694_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2695_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2696_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2690_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xae	;/* r,174 */
		jne	L2697_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2698_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2699_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2700_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2701_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2702_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2703_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2704_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2697_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xaf	;/* r,175 */
		jne	L2705_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2706_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2707_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2708_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2709_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2710_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2711_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2712_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2705_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb0	;/* r,176 */
		jne	L2713_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2714_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2715_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2716_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2717_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2718_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2719_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2720_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2713_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb1	;/* r,177 */
		jne	L2721_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2722_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2723_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2724_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2725_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2726_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2721_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb2	;/* r,178 */
		jne	L2727_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2728_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2729_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2730_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2731_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2732_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2733_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2734_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2727_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb3	;/* r,179 */
		jne	L2735_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2736_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2737_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2738_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2739_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2740_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2741_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2742_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2743_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2735_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb4	;/* r,180 */
		jne	L2744_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2745_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2746_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2747_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2748_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2749_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2750_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2751_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2744_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb5	;/* r,181 */
		jne	L2752_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2753_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2754_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2755_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2756_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2757_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2758_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2752_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb6	;/* r,182 */
		jne	L2759_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2760_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2761_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2762_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2763_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2764_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2765_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2766_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2759_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb7	;/* r,183 */
		jne	L2767_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2768_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2769_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2770_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2771_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2772_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2773_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2774_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2767_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb8	;/* r,184 */
		jne	L2775_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2776_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2777_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2778_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2779_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2780_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2781_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2782_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2783_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2784_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2775_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xb9	;/* r,185 */
		jne	L2785_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2786_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2787_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2788_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2789_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2790_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2785_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xba	;/* r,186 */
		jne	L2791_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2792_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2793_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2794_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2795_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2796_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2797_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2791_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xbb	;/* r,187 */
		jne	L2798_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2799_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2800_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2801_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2802_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2803_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2804_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2805_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2798_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xbc	;/* r,188 */
		jne	L2806_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2807_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2808_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2809_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2810_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2811_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2812_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2813_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2806_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xbd	;/* r,189 */
		jne	L2814_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2815_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2816_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2817_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2818_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2819_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2820_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2821_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2822_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2814_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xbe	;/* r,190 */
		jne	L2823_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2824_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2825_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2826_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2827_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2828_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2829_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2830_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2823_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xbf	;/* r,191 */
		jne	L2831_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2832_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2833_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2834_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2835_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2836_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2837_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2838_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2831_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc0	;/* r,192 */
		jne	L2839_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2840_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2841_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2842_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2843_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2844_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2845_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2846_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2847_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2839_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc1	;/* r,193 */
		jne	L2848_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2849_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2850_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2851_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2852_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2853_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2854_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2855_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2856_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2857_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2858_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2848_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc2	;/* r,194 */
		jne	L2859_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2860_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2861_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2862_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2863_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2864_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2865_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2866_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2859_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc3	;/* r,195 */
		jne	L2867_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2868_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2869_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2870_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2871_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2872_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2873_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2874_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2867_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc4	;/* r,196 */
		jne	L2875_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2876_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2877_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2878_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2879_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2880_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2881_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2882_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2875_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc5	;/* r,197 */
		jne	L2883_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2884_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2885_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2886_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2887_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2888_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2889_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2890_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2891_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2892_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2883_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc6	;/* r,198 */
		jne	L2893_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2894_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2895_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2896_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2897_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2898_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2899_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2900_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2901_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2893_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc7	;/* r,199 */
		jne	L2902_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2903_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2904_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2905_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2906_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2907_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2908_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2909_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2910_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2902_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc8	;/* r,200 */
		jne	L2911_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2912_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2913_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2914_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2915_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2916_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2917_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2918_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2919_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2911_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xc9	;/* r,201 */
		jne	L2920_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2921_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2922_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2923_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2924_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2925_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2926_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2927_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2928_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2920_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xca	;/* r,202 */
		jne	L2929_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2930_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2931_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2932_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2933_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2934_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2935_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2936_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2937_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2929_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xcb	;/* r,203 */
		jne	L2938_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2939_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2940_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2941_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2942_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2943_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2944_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2945_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2946_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2938_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xcc	;/* r,204 */
		jne	L2947_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2948_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2949_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2950_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2951_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2952_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2953_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2954_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2955_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2947_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xce	;/* r,206 */
		jne	L2956_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2957_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2958_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2959_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2960_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2961_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2962_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2963_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2964_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2956_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xcf	;/* r,207 */
		jne	L2965_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2966_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2967_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2968_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2969_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2970_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2971_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2972_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2973_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2965_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd0	;/* r,208 */
		jne	L2974_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2975_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2976_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2977_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2978_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2979_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2980_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2981_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2982_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2974_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd1	;/* r,209 */
		jne	L2983_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2984_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2985_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2986_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2987_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2988_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2989_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2990_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2991_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2983_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd2	;/* r,210 */
		jne	L2992_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2993_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2994_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2995_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2996_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2997_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L2998_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L2999_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3000_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L2992_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd3	;/* r,211 */
		jne	L3001_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3002_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3003_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3004_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3005_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3006_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3007_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3008_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3009_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3001_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd4	;/* r,212 */
		jne	L3010_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3011_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3012_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3013_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3014_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3015_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3016_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3017_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3018_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3019_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3010_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd5	;/* r,213 */
		jne	L3020_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3021_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3022_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3023_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3024_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3020_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd6	;/* r,214 */
		jne	L3025_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3026_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3027_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3028_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3029_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3025_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd7	;/* r,215 */
		jne	L3030_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3031_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3032_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3033_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3034_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3030_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd8	;/* r,216 */
		jne	L3035_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3036_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3037_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3038_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3039_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3035_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xd9	;/* r,217 */
		jne	L3040_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3041_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3042_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3043_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3044_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3045_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3040_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xda	;/* r,218 */
		jne	L3046_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3047_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3048_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3049_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3050_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3051_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3052_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3046_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xdb	;/* r,219 */
		jne	L3053_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3054_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3055_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3056_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3057_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3053_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xdc	;/* r,220 */
		jne	L3058_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3059_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3060_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3061_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3062_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3058_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xdd	;/* r,221 */
		jne	L3063_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3064_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3065_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3066_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3067_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3068_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3069_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3070_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3071_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3063_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xde	;/* r,222 */
		jne	L3072_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3073_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3074_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3075_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3076_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3077_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3078_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3079_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3080_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3072_false__hla_:

L3081_turkey__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xdf	;/* r,223 */
		jne	L3082_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3083_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3084_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3085_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3086_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3087_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3088_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3089_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3090_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3082_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe0	;/* r,224 */
		jne	L3091_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3092_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3093_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3094_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3095_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3096_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3097_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3098_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3091_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe1	;/* r,225 */
		jne	L3099_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3100_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3101_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3102_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3103_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3104_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3105_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3106_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3099_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe2	;/* r,226 */
		jne	L3107_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3108_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3109_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3110_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3111_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3112_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3113_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3107_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe3	;/* r,227 */
		jne	L3114_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3115_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3116_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3117_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3118_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3119_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3120_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3121_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3114_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe4	;/* r,228 */
		jne	L3122_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3123_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3124_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3125_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3126_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3127_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3128_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3122_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe5	;/* r,229 */
		jne	L3129_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3130_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3131_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3132_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3133_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3134_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3135_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3136_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3129_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe6	;/* r,230 */
		jne	L3137_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3138_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3139_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3140_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3141_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3142_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3143_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3144_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3145_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3137_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe7	;/* r,231 */
		jne	L3146_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3147_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3148_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3149_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3150_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3151_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3152_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3146_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe8	;/* r,232 */
		jne	L3153_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3154_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3155_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3156_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3157_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3158_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3159_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3160_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3153_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe9	;/* r,233 */
		jne	L3161_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3162_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3163_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3164_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3165_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3166_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3167_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3161_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xea	;/* r,234 */
		jne	L3168_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3169_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3170_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3171_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3172_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3173_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3174_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3175_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3168_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xeb	;/* r,235 */
		jne	L3176_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3177_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3178_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3179_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3180_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3181_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3182_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3183_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3184_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3185_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3176_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xec	;/* r,236 */
		jne	L3186_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3187_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3188_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3189_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3190_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3191_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3192_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3186_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xed	;/* r,237 */
		jne	L3193_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3194_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3195_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3196_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3197_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3198_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3199_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3200_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3193_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xee	;/* r,238 */
		jne	L3201_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3202_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3203_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3204_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3205_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3206_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3207_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3201_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xef	;/* r,239 */
		jne	L3208_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3209_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3210_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3211_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3212_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3213_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3214_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3208_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf0	;/* r,240 */
		jne	L3215_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3216_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3217_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3218_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3219_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3220_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3221_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3222_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3215_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf1	;/* r,241 */
		jne	L3223_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3224_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3225_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3226_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3227_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3228_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3229_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3230_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3223_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf2	;/* r,242 */
		jne	L3231_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3232_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3233_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3234_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3235_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3236_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3237_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3238_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3231_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf3	;/* r,243 */
		jne	L3239_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3240_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3241_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3242_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3243_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3244_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3245_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3246_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3239_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf4	;/* r,244 */
		jne	L3247_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3248_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3249_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3250_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3251_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3252_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3253_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3254_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3247_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf5	;/* r,245 */
		jne	L3255_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3256_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3257_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3258_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3259_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3260_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3261_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3262_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3263_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3255_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf6	;/* r,246 */
		jne	L3264_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3265_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3266_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3267_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3268_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3269_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3270_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3264_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf7	;/* r,247 */
		jne	L3271_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3272_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3273_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3274_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3275_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3276_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3277_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3271_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf8	;/* r,248 */
		jne	L3278_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3279_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3280_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3281_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3282_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3283_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3284_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3285_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3286_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3278_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xf9	;/* r,249 */
		jne	L3287_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3288_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3289_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3290_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3291_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3292_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3293_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3294_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3295_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L3287_false__hla_:

L3296_show__hla_:
		cmp	dword ptr [L1022_wf__hla_+0], 0x1	;/* wf,1 */
		jne	L3297_false__hla_
		cmp	dword ptr [L1038_j__hla_+0], 0xf	;/* j,15 */
		je	L3297_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		mov	ebx, 46
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		push	offset L3299_str__hla_
		call	STDOUT_PUTS	/* puts */
L3297_false__hla_:
		cmp	dword ptr [L1031_tsk__hla_+0], 0x1	;/* tsk,1 */
		jne	L3300_false__hla_
		cmp	dword ptr [L1038_j__hla_+0], 0xf	;/* j,15 */
		je	L3300_false__hla_
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		mov	ebx, 64
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		push	offset L3302_str__hla_
		call	STDOUT_PUTS	/* puts */
L3300_false__hla_:
		mov	ebx, 7
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3303_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3304_str__hla_
		call	STDOUT_PUTS	/* puts */
L3303_false__hla_:
		mov	ebx, 8
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3305_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3306_str__hla_
		call	STDOUT_PUTS	/* puts */
L3305_false__hla_:
		mov	ebx, 9
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3307_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3308_str__hla_
		call	STDOUT_PUTS	/* puts */
L3307_false__hla_:
		mov	ebx, 10
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3309_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3310_str__hla_
		call	STDOUT_PUTS	/* puts */
L3309_false__hla_:
		mov	ebx, 11
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3311_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3312_str__hla_
		call	STDOUT_PUTS	/* puts */
L3311_false__hla_:
		mov	ebx, 12
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3313_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3314_str__hla_
		call	STDOUT_PUTS	/* puts */
L3313_false__hla_:
		mov	ebx, 13
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3315_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3316_str__hla_
		call	STDOUT_PUTS	/* puts */
L3315_false__hla_:
		mov	ebx, 14
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3317_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3318_str__hla_
		call	STDOUT_PUTS	/* puts */
L3317_false__hla_:
		mov	ebx, 15
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3319_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3320_str__hla_
		call	STDOUT_PUTS	/* puts */
L3319_false__hla_:
		mov	ebx, 16
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3321_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3322_str__hla_
		call	STDOUT_PUTS	/* puts */
L3321_false__hla_:
		mov	ebx, 17
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3323_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3324_str__hla_
		call	STDOUT_PUTS	/* puts */
L3323_false__hla_:
		mov	ebx, 18
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3325_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3326_str__hla_
		call	STDOUT_PUTS	/* puts */
L3325_false__hla_:
		mov	ebx, 19
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3327_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3328_str__hla_
		call	STDOUT_PUTS	/* puts */
L3327_false__hla_:
		mov	ebx, 20
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3329_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3330_str__hla_
		call	STDOUT_PUTS	/* puts */
L3329_false__hla_:
		mov	ebx, 21
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3331_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3332_str__hla_
		call	STDOUT_PUTS	/* puts */
L3331_false__hla_:
		mov	ebx, 22
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3333_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3334_str__hla_
		call	STDOUT_PUTS	/* puts */
L3333_false__hla_:
		mov	ebx, 23
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3335_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3336_str__hla_
		call	STDOUT_PUTS	/* puts */
L3335_false__hla_:
		mov	ebx, 24
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3337_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3338_str__hla_
		call	STDOUT_PUTS	/* puts */
L3337_false__hla_:
		mov	ebx, 25
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3339_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3340_str__hla_
		call	STDOUT_PUTS	/* puts */
L3339_false__hla_:
		mov	ebx, 26
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3341_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3342_str__hla_
		call	STDOUT_PUTS	/* puts */
L3341_false__hla_:
		mov	ebx, 27
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3343_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3344_str__hla_
		call	STDOUT_PUTS	/* puts */
L3343_false__hla_:
		mov	ebx, 28
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3345_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3346_str__hla_
		call	STDOUT_PUTS	/* puts */
L3345_false__hla_:
		mov	ebx, 29
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3347_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3348_str__hla_
		call	STDOUT_PUTS	/* puts */
L3347_false__hla_:
		mov	ebx, 30
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3349_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3350_str__hla_
		call	STDOUT_PUTS	/* puts */
L3349_false__hla_:
		mov	ebx, 31
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3351_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3352_str__hla_
		call	STDOUT_PUTS	/* puts */
L3351_false__hla_:
		mov	ebx, 32
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3353_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3354_str__hla_
		call	STDOUT_PUTS	/* puts */
L3353_false__hla_:
		mov	ebx, 33
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3355_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3356_str__hla_
		call	STDOUT_PUTS	/* puts */
L3355_false__hla_:
		mov	ebx, 34
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3357_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3358_str__hla_
		call	STDOUT_PUTS	/* puts */
L3357_false__hla_:
		mov	ebx, 35
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3359_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3360_str__hla_
		call	STDOUT_PUTS	/* puts */
L3359_false__hla_:
		mov	ebx, 36
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3361_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3362_str__hla_
		call	STDOUT_PUTS	/* puts */
L3361_false__hla_:
		mov	ebx, 37
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3363_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3364_str__hla_
		call	STDOUT_PUTS	/* puts */
L3363_false__hla_:
		mov	ebx, 38
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3365_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3366_str__hla_
		call	STDOUT_PUTS	/* puts */
L3365_false__hla_:
		mov	ebx, 39
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3367_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3368_str__hla_
		call	STDOUT_PUTS	/* puts */
L3367_false__hla_:
		mov	ebx, 40
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3369_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3370_str__hla_
		call	STDOUT_PUTS	/* puts */
L3369_false__hla_:
		mov	ebx, 42
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3371_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3372_str__hla_
		call	STDOUT_PUTS	/* puts */
L3371_false__hla_:
		mov	ebx, 43
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3373_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3374_str__hla_
		call	STDOUT_PUTS	/* puts */
L3373_false__hla_:
		mov	ebx, 44
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3375_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3376_str__hla_
		call	STDOUT_PUTS	/* puts */
L3375_false__hla_:
		mov	ebx, 45
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3377_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3378_str__hla_
		call	STDOUT_PUTS	/* puts */
L3377_false__hla_:
		mov	ebx, 46
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3379_false__hla_
		cmp	dword ptr [L1022_wf__hla_+0], 0x0	;/* wf,0 */
		jne	L3379_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3381_str__hla_
		call	STDOUT_PUTS	/* puts */
L3379_false__hla_:
		mov	ebx, 46
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3382_false__hla_
		cmp	dword ptr [L1022_wf__hla_+0], 0x1	;/* wf,1 */
		jne	L3382_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3384_str__hla_
		call	STDOUT_PUTS	/* puts */
L3382_false__hla_:
		mov	ebx, 47
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3385_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3386_str__hla_
		call	STDOUT_PUTS	/* puts */
L3385_false__hla_:
		mov	ebx, 48
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3387_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3388_str__hla_
		call	STDOUT_PUTS	/* puts */
L3387_false__hla_:
		mov	ebx, 49
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3389_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3390_str__hla_
		call	STDOUT_PUTS	/* puts */
L3389_false__hla_:
		mov	ebx, 51
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3391_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3392_str__hla_
		call	STDOUT_PUTS	/* puts */
L3391_false__hla_:
		mov	ebx, 52
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3393_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3394_str__hla_
		call	STDOUT_PUTS	/* puts */
L3393_false__hla_:
		mov	ebx, 53
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3395_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3396_str__hla_
		call	STDOUT_PUTS	/* puts */
L3395_false__hla_:
		mov	ebx, 54
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3397_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3398_str__hla_
		call	STDOUT_PUTS	/* puts */
L3397_false__hla_:
		mov	ebx, 55
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3399_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3400_str__hla_
		call	STDOUT_PUTS	/* puts */
L3399_false__hla_:
		mov	ebx, 56
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3401_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3402_str__hla_
		call	STDOUT_PUTS	/* puts */
L3401_false__hla_:
		mov	ebx, 57
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3403_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3404_str__hla_
		call	STDOUT_PUTS	/* puts */
L3403_false__hla_:
		mov	ebx, 58
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3405_false__hla_
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3406_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1030_slp__hla_+0]	;/* slp */
		cmp	eax, 0x1	;/* 1 */
		jne	L3407_false__hla_
		push	offset L3408_str__hla_
		call	STDOUT_PUTS	/* puts */
L3407_false__hla_:
L3405_false__hla_:
		mov	ebx, 59
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3409_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3410_str__hla_
		call	STDOUT_PUTS	/* puts */
L3409_false__hla_:
		mov	ebx, 60
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3411_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3412_str__hla_
		call	STDOUT_PUTS	/* puts */
L3411_false__hla_:
		mov	ebx, 61
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3413_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3414_str__hla_
		call	STDOUT_PUTS	/* puts */
L3413_false__hla_:
		mov	ebx, 62
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3415_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3416_str__hla_
		call	STDOUT_PUTS	/* puts */
L3415_false__hla_:
		mov	ebx, 63
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3417_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3418_str__hla_
		call	STDOUT_PUTS	/* puts */
L3417_false__hla_:
		mov	ebx, 64
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3419_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3420_str__hla_
		call	STDOUT_PUTS	/* puts */
L3419_false__hla_:
		mov	ebx, 65
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3421_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3422_str__hla_
		call	STDOUT_PUTS	/* puts */
L3421_false__hla_:
		mov	ebx, 66
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3423_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3424_str__hla_
		call	STDOUT_PUTS	/* puts */
L3423_false__hla_:
		mov	ebx, 67
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3425_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3426_str__hla_
		call	STDOUT_PUTS	/* puts */
L3425_false__hla_:
		mov	ebx, 68
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3427_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3428_str__hla_
		call	STDOUT_PUTS	/* puts */
L3427_false__hla_:
		mov	ebx, 69
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3429_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3430_str__hla_
		call	STDOUT_PUTS	/* puts */
L3429_false__hla_:
		mov	ebx, 70
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3431_false__hla_
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3432_str__hla_
		call	STDOUT_PUTS	/* puts */
L3431_false__hla_:
		mov	ebx, 71
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3433_false__hla_
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3434_str__hla_
		call	STDOUT_PUTS	/* puts */
L3433_false__hla_:
		mov	ebx, 72
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3435_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3436_str__hla_
		call	STDOUT_PUTS	/* puts */
L3435_false__hla_:
		mov	ebx, 73
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3437_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3438_str__hla_
		call	STDOUT_PUTS	/* puts */
L3437_false__hla_:
		mov	ebx, 74
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3439_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3440_str__hla_
		call	STDOUT_PUTS	/* puts */
L3439_false__hla_:
		mov	ebx, 75
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3441_false__hla_
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3442_str__hla_
		call	STDOUT_PUTS	/* puts */
L3441_false__hla_:

L3443_parse__hla_:
		call	STDIN_FLUSHINPUT	/* flushInput */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3444_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3445_infobar__hla_

L3446_parse2__hla_:
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	dword ptr [L1040_w__hla_+0]	/* w */
		call	STDIN_GETS	/* gets */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		mov	dword ptr [L1039_s__hla_+0], 0	;/* s */
		mov	dword ptr [L1038_j__hla_+0], 0	;/* j */

L3447_verb25__hla_:
		mov	eax, dword ptr [L1025_fd__hla_+0]	;/* fd */
		sub	eax, 1
		mov	dword ptr [L1025_fd__hla_+0], eax	;/* fd */
		cmp	eax, 0x19	;/* 25 */
		jne	L3448_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3449_str__hla_
		call	STDOUT_PUTS	/* puts */
L3448_false__hla_:
		mov	ebx, dword ptr [L1032_r__hla_+0]	;/* r */
		cmp	ebx, 0xd0	;/* 208 */
		jne	L3450_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3451_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		mov	dword ptr [L1121_m__hla_+eax*4+0], 0	;/* m */
L3450_false__hla_:
		test	eax,eax
		jne	L3452_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3453_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3454_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		jmp	L3455_frog__hla_
L3452_false__hla_:
		cmp	dword ptr [L1028_qs__hla_+0], 0x6	;/* qs,6 */
		jng	L3456_false__hla_
		mov	ebx, 1
		mov	dword ptr [L1022_wf__hla_+0], ebx	;/* wf */
L3456_false__hla_:
		cmp	dword ptr [L1044_lo__hla_+28], 0xffffffff	;/* lo,-1 */
		jne	L3457_false__hla_
		cmp	dword ptr [L1028_qs__hla_+0], 0x1	;/* qs,1 */
		jne	L3457_false__hla_
		mov	ebx, 2
		mov	dword ptr [L1028_qs__hla_+0], ebx	;/* qs */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3459_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1023_g__hla_+0]	;/* g */
		add	ebx, 100
		mov	dword ptr [L1023_g__hla_+0], ebx	;/* g */
L3457_false__hla_:
		cmp	dword ptr [L1044_lo__hla_+124], 0x3e6	;/* lo,998 */
		jne	L3460_false__hla_
		cmp	dword ptr [L1028_qs__hla_+0], 0x2	;/* qs,2 */
		jne	L3460_false__hla_
		mov	ebx, 3
		mov	dword ptr [L1028_qs__hla_+0], ebx	;/* qs */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3462_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1023_g__hla_+0]	;/* g */
		add	ebx, 250
		mov	dword ptr [L1023_g__hla_+0], ebx	;/* g */
L3460_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x43	;/* r,67 */
		jne	L3463_false__hla_
		cmp	dword ptr [L1028_qs__hla_+0], 0x3	;/* qs,3 */
		jne	L3463_false__hla_
		mov	ebx, 4
		mov	dword ptr [L1028_qs__hla_+0], ebx	;/* qs */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3465_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1023_g__hla_+0]	;/* g */
		add	ebx, 300
		mov	dword ptr [L1023_g__hla_+0], ebx	;/* g */
L3463_false__hla_:
		cmp	dword ptr [L1044_lo__hla_+148], 0x3e6	;/* lo,998 */
		jne	L3466_false__hla_
		cmp	dword ptr [L1028_qs__hla_+0], 0x4	;/* qs,4 */
		jne	L3466_false__hla_
		mov	ebx, 5
		mov	dword ptr [L1028_qs__hla_+0], ebx	;/* qs */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3468_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1023_g__hla_+0]	;/* g */
		add	ebx, 325
		mov	dword ptr [L1023_g__hla_+0], ebx	;/* g */
L3466_false__hla_:
		cmp	dword ptr [L1044_lo__hla_+188], 0x3e6	;/* lo,998 */
		jne	L3469_false__hla_
		cmp	dword ptr [L1028_qs__hla_+0], 0x5	;/* qs,5 */
		jne	L3469_false__hla_
		mov	ebx, 6
		mov	dword ptr [L1028_qs__hla_+0], ebx	;/* qs */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3471_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1023_g__hla_+0]	;/* g */
		add	ebx, 450
		mov	dword ptr [L1023_g__hla_+0], ebx	;/* g */
L3469_false__hla_:
		mov	ebx, 51
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xffffffff	;/* lo,-1 */
		je	L3472_false__hla_
		jmp	L3473_frog44__hla_
L3472_false__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		cmp	dword ptr [L1044_lo__hla_+184], eax	;/* lo */
		jne	L3474_false__hla_
		cmp	dword ptr [L1044_lo__hla_+204], 0xffffffff	;/* lo,-1 */
		jne	L3474_false__hla_
		cmp	dword ptr [L1022_wf__hla_+0], 0x0	;/* wf,0 */
		jne	L3474_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3477_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, 1
		mov	dword ptr [L1022_wf__hla_+0], ebx	;/* wf */
L3474_false__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		cmp	dword ptr [L1044_lo__hla_+256], eax	;/* lo */
		jne	L3480__hla_
		cmp	dword ptr [L1044_lo__hla_+224], 0xffffffff	;/* lo,-1 */
		jne	L3480__hla_
		cmp	dword ptr [L1031_tsk__hla_+0], 0x0	;/* tsk,0 */
		je	L3479__hla_
L3480__hla_:
		cmp	dword ptr [L1044_lo__hla_+256], eax	;/* lo */
		jne	L3478_false__hla_
		cmp	dword ptr [L1044_lo__hla_+224], 0xcd	;/* lo,205 */
		jne	L3478_false__hla_
		cmp	dword ptr [L1031_tsk__hla_+0], 0x0	;/* tsk,0 */
		jne	L3478_false__hla_
L3479__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3484_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3485_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, 1
		mov	dword ptr [L1031_tsk__hla_+0], ebx	;/* tsk */
L3478_false__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		cmp	dword ptr [L1044_lo__hla_+184], eax	;/* lo */
		jne	L3486_false__hla_
		cmp	dword ptr [L1028_qs__hla_+0], 0x6	;/* qs,6 */
		jne	L3486_false__hla_
		mov	ebx, 7
		mov	dword ptr [L1028_qs__hla_+0], ebx	;/* qs */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3488_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1023_g__hla_+0]	;/* g */
		add	ebx, 500
		mov	dword ptr [L1023_g__hla_+0], ebx	;/* g */
		mov	ebx, 1
		mov	dword ptr [L1022_wf__hla_+0], ebx	;/* wf */
L3486_false__hla_:

L3473_frog44__hla_:
		cmp	dword ptr [L1044_lo__hla_+144], 0x3e6	;/* lo,998 */
		jne	L3489_false__hla_
		cmp	dword ptr [L1028_qs__hla_+0], 0x7	;/* qs,7 */
		jne	L3489_false__hla_
		mov	ebx, 8
		mov	dword ptr [L1028_qs__hla_+0], ebx	;/* qs */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3491_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1023_g__hla_+0]	;/* g */
		add	ebx, 525
		mov	dword ptr [L1023_g__hla_+0], ebx	;/* g */
L3489_false__hla_:
		cmp	dword ptr [L1044_lo__hla_+252], 0x3e6	;/* lo,998 */
		jne	L3492_false__hla_
		cmp	dword ptr [L1028_qs__hla_+0], 0x8	;/* qs,8 */
		jne	L3492_false__hla_
		mov	ebx, 9
		mov	dword ptr [L1028_qs__hla_+0], ebx	;/* qs */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3494_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1023_g__hla_+0]	;/* g */
		add	ebx, 600
		mov	dword ptr [L1023_g__hla_+0], ebx	;/* g */
L3492_false__hla_:
		cmp	dword ptr [L1044_lo__hla_+152], 0x3e6	;/* lo,998 */
		jne	L3495_false__hla_
		cmp	dword ptr [L1028_qs__hla_+0], 0x9	;/* qs,9 */
		jne	L3495_false__hla_
		mov	ebx, 10
		mov	dword ptr [L1028_qs__hla_+0], ebx	;/* qs */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3497_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3498_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3499_frog2__hla_
L3495_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		call	STR_LENGTH	/* length */

		cmp	eax, 0x1	;/* 1 */
		jne	L3500_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 0	;/* s */
		mov	dword ptr [L1038_j__hla_+0], 0	;/* j */
		mov	eax, dword ptr [L1040_w__hla_+0]	;/* w */
		mov	al, [eax+0]	;/* [eax] */
		cmp	al, 0x6e	;/* 'n' */
		jne	L3501_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 1	;/* s */
		mov	dword ptr [L1038_j__hla_+0], 1	;/* j */
		jmp	L3501_endif__hla_
L3501_false__hla_:
		cmp	al, 0x73	;/* 's' */
		jne	L3502_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 2	;/* s */
		mov	dword ptr [L1038_j__hla_+0], 1	;/* j */
		jmp	L3501_endif__hla_
L3502_false__hla_:
		cmp	al, 0x65	;/* 'e' */
		jne	L3503_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 3	;/* s */
		mov	dword ptr [L1038_j__hla_+0], 1	;/* j */
		jmp	L3501_endif__hla_
L3503_false__hla_:
		cmp	al, 0x77	;/* 'w' */
		jne	L3504_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 4	;/* s */
		mov	dword ptr [L1038_j__hla_+0], 1	;/* j */
		jmp	L3501_endif__hla_
L3504_false__hla_:
		cmp	al, 0x75	;/* 'u' */
		jne	L3505_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 5	;/* s */
		mov	dword ptr [L1038_j__hla_+0], 1	;/* j */
		jmp	L3501_endif__hla_
L3505_false__hla_:
		cmp	al, 0x64	;/* 'd' */
		jne	L3506_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 6	;/* s */
		mov	dword ptr [L1038_j__hla_+0], 1	;/* j */
		jmp	L3501_endif__hla_
L3506_false__hla_:
		cmp	al, 0x3f	;/* '?' */
		jne	L3507_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 17	;/* j */
		jmp	L3501_endif__hla_
L3507_false__hla_:
		cmp	al, 0x6c	;/* 'l' */
		jne	L3508_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 15	;/* j */
		jmp	L3501_endif__hla_
L3508_false__hla_:
		cmp	al, 0x71	;/* 'q' */
		jne	L3509_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 14	;/* j */
		jmp	L3501_endif__hla_
L3509_false__hla_:
		cmp	al, 0x78	;/* 'x' */
		jne	L3510_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 10	;/* j */
L3510_false__hla_:
L3501_endif__hla_:
		jmp	L3511_process__hla_
L3500_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3513_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3512_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3514_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3515_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3516_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3517_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3518_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3519_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3520_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3521_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3522_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3523_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3524_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3525_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3526_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3527_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3528_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3529_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3530_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3531_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3532_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	STDIN_GETC	/* getc */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3533_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3534_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3535_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3536_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3537_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3538_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3539_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3540_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3541_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L3542_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3512_false__hla_:

L3543_verb21__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3545_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3547__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3546_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3544_false__hla_
L3547__hla_:
		mov	dword ptr [L1038_j__hla_+0], 2	;/* j */
		jmp	L3544_endif__hla_
L3544_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3549_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3548_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3550_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
		jmp	L3544_endif__hla_
L3548_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3552_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3554__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3553_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3551_false__hla_
L3554__hla_:
		mov	dword ptr [L1038_j__hla_+0], 3	;/* j */
		jmp	L3544_endif__hla_
L3551_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3556_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3555_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 4	;/* j */
		jmp	L3544_endif__hla_
L3555_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3558_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3557_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 5	;/* j */
		jmp	L3544_endif__hla_
L3557_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3560_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3562__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3561_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3559_false__hla_
L3562__hla_:
		mov	dword ptr [L1038_j__hla_+0], 6	;/* j */
		jmp	L3544_endif__hla_
L3559_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3564_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3566__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3565_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3563_false__hla_
L3566__hla_:
		mov	dword ptr [L1038_j__hla_+0], 7	;/* j */
		jmp	L3544_endif__hla_
L3563_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3568_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3567_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 8	;/* j */
		jmp	L3544_endif__hla_
L3567_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3570_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3569_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 9	;/* j */
		jmp	L3544_endif__hla_
L3569_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3572_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3575__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3573_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3575__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3574_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3571_false__hla_
L3575__hla_:
		mov	dword ptr [L1038_j__hla_+0], 10	;/* j */
		jmp	L3544_endif__hla_
L3571_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3578_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3577_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 11	;/* j */
		jmp	L3544_endif__hla_
L3577_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3580_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3583__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3581_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3583__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3582_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3579_false__hla_
L3583__hla_:
		mov	dword ptr [L1038_j__hla_+0], 12	;/* j */
		jmp	L3544_endif__hla_
L3579_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3586_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3588__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3587_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3585_false__hla_
L3588__hla_:
		mov	dword ptr [L1038_j__hla_+0], 13	;/* j */
		jmp	L3544_endif__hla_
L3585_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3590_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3589_false__hla_
		mov	dword ptr [L1032_r__hla_+0], 151	;/* r */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3591_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3592_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L1234_Room__hla_
		jmp	L3544_endif__hla_
L3589_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3594_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3593_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 14	;/* j */
		jmp	L3544_endif__hla_
L3593_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3596_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3595_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 15	;/* j */
		jmp	L3597_verb98__hla_
		jmp	L3544_endif__hla_
L3595_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3599_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3602__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3600_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3602__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3601_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3598_false__hla_
L3602__hla_:
		mov	dword ptr [L1038_j__hla_+0], 25	;/* j */
		jmp	L3544_endif__hla_
L3598_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3605_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3604_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 16	;/* j */
		jmp	L3544_endif__hla_
L3604_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3607_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3606_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 17	;/* j */
		jmp	L3544_endif__hla_
L3606_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3609_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3608_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 18	;/* j */
		jmp	L3544_endif__hla_
L3608_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3611_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3610_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 19	;/* j */
		jmp	L3544_endif__hla_
L3610_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3613_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3616__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3614_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3616__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3615_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3612_false__hla_
L3616__hla_:
		mov	dword ptr [L1038_j__hla_+0], 20	;/* j */
		jmp	L3544_endif__hla_
L3612_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3619_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3618_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 21	;/* j */
		jmp	L3544_endif__hla_
L3618_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3621_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		jne	L3623__hla_
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3622_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3620_false__hla_
L3623__hla_:
		mov	dword ptr [L1038_j__hla_+0], 11	;/* j */
		jmp	L3544_endif__hla_
L3620_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3625_str__hla_
		call	L1017_matchword__hla_	/* matchword */

		test	eax,eax
		je	L3624_false__hla_
		mov	dword ptr [L1038_j__hla_+0], 25	;/* j */
L3624_false__hla_:
L3544_endif__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3626_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3627_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 7	;/* s */
L3627_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3628_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3629_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 8	;/* s */
L3629_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3630_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3631_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 9	;/* s */
L3631_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3632_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3633_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 10	;/* s */
L3633_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3634_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3635_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 11	;/* s */
L3635_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3636_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3637_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 12	;/* s */
L3637_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3638_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3639_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 13	;/* s */
L3639_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3640_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3641_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 14	;/* s */
L3641_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3642_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3643_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 15	;/* s */
L3643_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3644_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3645_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 16	;/* s */
L3645_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3646_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3647_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 17	;/* s */
L3647_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3648_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3649_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 18	;/* s */
L3649_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3650_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3651_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 19	;/* s */
L3651_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3652_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3653_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 20	;/* s */
L3653_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3654_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3655_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 21	;/* s */
L3655_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3656_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3657_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 22	;/* s */
L3657_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3658_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3659_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 23	;/* s */
L3659_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3660_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3661_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 24	;/* s */
L3661_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3662_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3663_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 25	;/* s */
L3663_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3664_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3665_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 26	;/* s */
L3665_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3666_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3667_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 27	;/* s */
L3667_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3668_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3669_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 28	;/* s */
L3669_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3670_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3671_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 29	;/* s */
L3671_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3672_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3673_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 30	;/* s */
L3673_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3674_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3675_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 31	;/* s */
L3675_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3676_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3677_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 32	;/* s */
L3677_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3678_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3679_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 33	;/* s */
L3679_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3680_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3681_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 34	;/* s */
L3681_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3682_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3683_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 35	;/* s */
L3683_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3684_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3685_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 36	;/* s */
L3685_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3686_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3687_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 37	;/* s */
L3687_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3688_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3689_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 38	;/* s */
L3689_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3690_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3691_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 39	;/* s */
L3691_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3692_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3693_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 40	;/* s */
L3693_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3694_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3695_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 41	;/* s */
L3695_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3696_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3697_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 42	;/* s */
L3697_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3698_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3699_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 43	;/* s */
L3699_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3700_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3701_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 44	;/* s */
L3701_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3702_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3703_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 45	;/* s */
L3703_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3704_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3705_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 46	;/* s */
L3705_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3706_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3707_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 47	;/* s */
L3707_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3708_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3709_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 48	;/* s */
L3709_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3710_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3711_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 49	;/* s */
L3711_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3712_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3713_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 50	;/* s */
L3713_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3714_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3715_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 51	;/* s */
L3715_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3716_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3717_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 52	;/* s */
L3717_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3718_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3719_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 53	;/* s */
L3719_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3720_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3721_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 54	;/* s */
L3721_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3722_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3723_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 55	;/* s */
L3723_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3724_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3725_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 56	;/* s */
L3725_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3726_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3727_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 57	;/* s */
L3727_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3728_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3729_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 58	;/* s */
L3729_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3730_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3731_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 59	;/* s */
L3731_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3732_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3733_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 60	;/* s */
L3733_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3734_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3735_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 61	;/* s */
L3735_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3736_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3737_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 62	;/* s */
L3737_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3738_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3739_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 63	;/* s */
L3739_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3740_str__hla_
		call	STR_IINDEX	/* iindex */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3741_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 64	;/* s */
L3741_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3742_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3743_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 65	;/* s */
L3743_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3744_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3745_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 66	;/* s */
L3745_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3746_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3747_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 67	;/* s */
L3747_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3748_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3749_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 68	;/* s */
L3749_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3750_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3751_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 69	;/* s */
L3751_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3752_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3753_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 70	;/* s */
L3753_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3754_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3755_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 71	;/* s */
L3755_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3756_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3757_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 72	;/* s */
L3757_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3758_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3759_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 73	;/* s */
L3759_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3760_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3761_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 74	;/* s */
L3761_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3762_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3763_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 75	;/* s */
L3763_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3764_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3765_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 1	;/* s */
L3765_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3766_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3767_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 2	;/* s */
L3767_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3768_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3769_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 3	;/* s */
L3769_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3770_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3771_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 4	;/* s */
L3771_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3772_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3773_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 5	;/* s */
L3773_false__hla_:
		push	dword ptr [L1040_w__hla_+0]	/* w */
		push	offset L3774_str__hla_
		call	STR_INDEX	/* index */
		cmp	eax, 0x0	;/* 0 */
		jnge	L3775_false__hla_
		mov	dword ptr [L1039_s__hla_+0], 6	;/* s */
L3775_false__hla_:

L3511_process__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */

L3597_verb98__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x1	;/* j,1 */
		jne	L3776_false__hla_
		jmp	L3777_verb1__hla_
		jmp	L3776_endif__hla_
L3776_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x2	;/* j,2 */
		jne	L3778_false__hla_
		jmp	L3779_verb2__hla_
		jmp	L3776_endif__hla_
L3778_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x3	;/* j,3 */
		jne	L3780_false__hla_
		jmp	L3781_verb3__hla_
		jmp	L3776_endif__hla_
L3780_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x4	;/* j,4 */
		jne	L3782_false__hla_
		jmp	L3783_verb4__hla_
		jmp	L3776_endif__hla_
L3782_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x5	;/* j,5 */
		jne	L3784_false__hla_
		jmp	L3785_verb5__hla_
		jmp	L3776_endif__hla_
L3784_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x6	;/* j,6 */
		jne	L3786_false__hla_
		jmp	L3787_verb6__hla_
		jmp	L3776_endif__hla_
L3786_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x7	;/* j,7 */
		jne	L3788_false__hla_
		jmp	L3789_verb7__hla_
		jmp	L3776_endif__hla_
L3788_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x8	;/* j,8 */
		jne	L3790_false__hla_
		jmp	L3791_verb8__hla_
		jmp	L3776_endif__hla_
L3790_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x9	;/* j,9 */
		jne	L3792_false__hla_
		jmp	L3793_verb9__hla_
		jmp	L3776_endif__hla_
L3792_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0xa	;/* j,10 */
		jne	L3794_false__hla_
		jmp	L3795_verb10__hla_
		jmp	L3776_endif__hla_
L3794_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0xb	;/* j,11 */
		jne	L3796_false__hla_
		jmp	L3797_verb11__hla_
		jmp	L3776_endif__hla_
L3796_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0xc	;/* j,12 */
		jne	L3798_false__hla_
		jmp	L3799_verb12__hla_
		jmp	L3776_endif__hla_
L3798_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0xd	;/* j,13 */
		jne	L3800_false__hla_
		jmp	L3801_verb13__hla_
		jmp	L3776_endif__hla_
L3800_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0xe	;/* j,14 */
		jne	L3802_false__hla_
		jmp	L3803_verb14__hla_
		jmp	L3776_endif__hla_
L3802_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0xf	;/* j,15 */
		jne	L3804_false__hla_
		jmp	L1234_Room__hla_
		jmp	L3776_endif__hla_
L3804_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x10	;/* j,16 */
		jne	L3805_false__hla_
		jmp	L3806_verb16__hla_
		jmp	L3776_endif__hla_
L3805_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x11	;/* j,17 */
		jne	L3807_false__hla_
		jmp	L3808_verb17__hla_
		jmp	L3776_endif__hla_
L3807_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x12	;/* j,18 */
		jne	L3809_false__hla_
		jmp	L3810_verb18__hla_
		jmp	L3776_endif__hla_
L3809_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x13	;/* j,19 */
		jne	L3811_false__hla_
		jmp	L3812_verb19__hla_
		jmp	L3776_endif__hla_
L3811_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x14	;/* j,20 */
		jne	L3813_false__hla_
		jmp	L3814_verb20__hla_
		jmp	L3776_endif__hla_
L3813_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x15	;/* j,21 */
		jne	L3815_false__hla_
		jmp	L3816_verb50__hla_
		jmp	L3776_endif__hla_
L3815_false__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x19	;/* j,25 */
		jne	L3817_false__hla_
		jmp	L3818_verb30__hla_
L3817_false__hla_:
L3776_endif__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3819_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		jmp	L3443_parse__hla_

L3777_verb1__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x0	;/* s,0 */
		jne	L3820_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3821_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3820_false__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		mov	dword ptr [L1043_temproom__hla_+0], eax	;/* temproom */
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		imul	dword ptr [L1042_six__hla_+0]	;/* six */
		add	eax, dword ptr [L1039_s__hla_+0]	;/* s */
		dec	eax
		mov	dword ptr [L1032_r__hla_+0], eax	;/* r */
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0xc	;/* m,12 */
		jne	L3822_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x2	;/* s,2 */
		jne	L3822_false__hla_
		cmp	dword ptr [L1044_lo__hla_+28], 0xffffffff	;/* lo,-1 */
		je	L3822_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3825_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L3822_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0x49	;/* m,73 */
		jne	L3827_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x1	;/* s,1 */
		jne	L3827_false__hla_
		cmp	dword ptr [L1044_lo__hla_+28], 0xffffffff	;/* lo,-1 */
		je	L3827_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3830_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L3827_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0xa	;/* m,10 */
		jne	L3831_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x4	;/* s,4 */
		jne	L3831_false__hla_
		cmp	dword ptr [L1044_lo__hla_+40], 0xffffffff	;/* lo,-1 */
		je	L3831_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3834_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L3831_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0x1f	;/* m,31 */
		jne	L3835_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x4	;/* s,4 */
		jne	L3835_false__hla_
		cmp	dword ptr [L1044_lo__hla_+116], 0x1e	;/* lo,30 */
		jne	L3835_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3838_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3839_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L3835_false__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0xc1	;/* m,193 */
		jne	L3840_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x1	;/* s,1 */
		jne	L3840_false__hla_
		cmp	dword ptr [L1044_lo__hla_+212], 0xac	;/* lo,172 */
		jne	L3840_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3843_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3844_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L3840_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0x2f	;/* m,47 */
		jne	L3845_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x1	;/* s,1 */
		jne	L3845_false__hla_
		cmp	dword ptr [L1044_lo__hla_+208], 0x35	;/* lo,53 */
		jne	L3845_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3848_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3849_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3850_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3851_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3455_frog__hla_
L3845_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0x3d	;/* m,61 */
		jne	L3852_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x2	;/* s,2 */
		jne	L3852_false__hla_
		cmp	dword ptr [L1044_lo__hla_+160], 0x36	;/* lo,54 */
		jne	L3852_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3855_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3856_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L3852_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0x46	;/* m,70 */
		jne	L3857_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x2	;/* s,2 */
		jne	L3857_false__hla_
		cmp	dword ptr [L1044_lo__hla_+156], 0x43	;/* lo,67 */
		jne	L3857_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3860_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3861_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L3857_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0x99	;/* m,153 */
		jne	L3862_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x1	;/* s,1 */
		jne	L3862_false__hla_
		cmp	dword ptr [L1044_lo__hla_+184], 0x97	;/* lo,151 */
		jne	L3862_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3865_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3866_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L3862_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0xe7	;/* m,231 */
		jne	L3867_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3	;/* s,3 */
		jne	L3867_false__hla_
		cmp	dword ptr [L1044_lo__hla_+284], 0xe6	;/* lo,230 */
		jne	L3867_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3870_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3871_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		jmp	L3826_heh__hla_
L3867_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0xeb	;/* m,235 */
		jne	L3872_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x4	;/* s,4 */
		jne	L3872_false__hla_
		cmp	dword ptr [L1044_lo__hla_+280], 0xea	;/* lo,234 */
		jne	L3872_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3875_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3876_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		jmp	L3826_heh__hla_
L3872_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0xa5	;/* m,165 */
		jne	L3877_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x1	;/* s,1 */
		jne	L3877_false__hla_
		cmp	dword ptr [L1044_lo__hla_+188], 0xa1	;/* lo,161 */
		jne	L3877_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3880_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3881_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L3877_false__hla_:
		mov	ebx, dword ptr [L1030_slp__hla_+0]	;/* slp */
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0xc7	;/* m,199 */
		jne	L3882_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x6	;/* s,6 */
		jne	L3882_false__hla_
		cmp	dword ptr [L1044_lo__hla_+232], 0xe	;/* lo,14 */
		jne	L3882_false__hla_
		test	ebx,ebx
		jne	L3882_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3886_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3887_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3888_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3889_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3890_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3891_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3892_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3893_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3455_frog__hla_
L3882_false__hla_:
		cmp	dword ptr [L1121_m__hla_+eax*4+0], 0x0	;/* m,0 */
		jng	L3894_false__hla_
		push	dword ptr [L1121_m__hla_+eax*4+0]	;/* m */
		pop	dword ptr [L1032_r__hla_+0]	;/* r */
		jmp	L1234_Room__hla_
L3894_false__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */

L3826_heh__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3895_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3896_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3897_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1043_temproom__hla_+0]	;/* temproom */
		mov	dword ptr [L1032_r__hla_+0], eax	;/* r */
		jmp	L3443_parse__hla_

L3779_verb2__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	ebx, 0x7	;/* 7 */
		jnb	L3898_false__hla_
		push	offset L3899_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3898_false__hla_:
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L3900_false__hla_
		cmp	ebx, 0x1a	;/* 26 */
		jb	L3902__hla_
		cmp	ebx, 0x38	;/* 56 */
		jne	L3901_false__hla_
L3902__hla_:
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3903_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3901_false__hla_:
		cmp	ebx, 0x33	;/* 51 */
		jne	L3904_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3905_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3904_false__hla_:
		cmp	ebx, 0x37	;/* 55 */
		jne	L3906_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3907_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3906_false__hla_:
		cmp	ebx, 0x38	;/* 56 */
		jne	L3908_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3909_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3908_false__hla_:
		cmp	ebx, 0x39	;/* 57 */
		jne	L3910_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3911_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3910_false__hla_:
		cmp	ebx, 0x3b	;/* 59 */
		jne	L3912_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3913_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3912_false__hla_:
		cmp	ebx, 0x3c	;/* 60 */
		jne	L3914_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3915_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3914_false__hla_:
		cmp	ebx, 0x42	;/* 66 */
		jne	L3916_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3917_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3916_false__hla_:
		cmp	ebx, 0x43	;/* 67 */
		jne	L3918_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3919_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3918_false__hla_:
		cmp	ebx, 0x44	;/* 68 */
		jne	L3920_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3921_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3920_false__hla_:
		cmp	ebx, 0x45	;/* 69 */
		jne	L3922_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		push	offset L3923_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3922_false__hla_:
L3900_false__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3924_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3781_verb3__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		cmp	eax, 0xcc	;/* 204 */
		jne	L3925_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3926_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3927_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1024_h__hla_+0]	;/* h */
		add	ebx, 25
		mov	dword ptr [L1024_h__hla_+0], ebx	;/* h */
L3925_false__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xffffffff	;/* lo,-1 */
		jne	L3928_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3929_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3928_false__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3930_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3783_verb4__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xffffffff	;/* lo,-1 */
		jne	L3931_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0xb	;/* s,11 */
		jng	L3935__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x14	;/* s,20 */
		jnl	L3935__hla_
		cmp	dword ptr [L1034_dam__hla_+0], 0x1	;/* dam,1 */
		je	L3933__hla_
L3935__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x43	;/* s,67 */
		jne	L3937__hla_
		cmp	dword ptr [L1034_dam__hla_+0], 0x1	;/* dam,1 */
		je	L3933__hla_
L3937__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x45	;/* s,69 */
		jne	L3932_false__hla_
		cmp	dword ptr [L1034_dam__hla_+0], 0x1	;/* dam,1 */
		jne	L3932_false__hla_
L3933__hla_:
		mov	dword ptr [L1034_dam__hla_+0], ebx	;/* dam */
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 105	;/* lo */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3939_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3932_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xb	;/* s,11 */
		jng	L3940_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x14	;/* s,20 */
		jnl	L3940_false__hla_
		cmp	dword ptr [L1034_dam__hla_+0], 0x1	;/* dam,1 */
		je	L3940_false__hla_
		cmp	dword ptr [L1044_lo__hla_+228], 0xffffffff	;/* lo,-1 */
		jne	L3940_false__hla_
		push	offset L3957_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3940_false__hla_:
L3931_false__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3958_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3785_verb5__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L3959_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0xb	;/* s,11 */
		jng	L3963__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x14	;/* s,20 */
		jl	L3961__hla_
L3963__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x43	;/* s,67 */
		je	L3961__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x45	;/* s,69 */
		jne	L3960_false__hla_
L3961__hla_:
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3964_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	dword ptr [L1034_dam__hla_+0], 1	;/* dam */
		jmp	L3443_parse__hla_
L3960_false__hla_:
L3959_false__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3965_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3787_verb6__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xffffffff	;/* lo,-1 */
		jne	L3966_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x13	;/* s,19 */
		jng	L3969__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x1a	;/* s,26 */
		jl	L3968__hla_
L3969__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x44	;/* s,68 */
		jne	L3967_false__hla_
L3968__hla_:
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 205	;/* lo */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3970_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3967_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x37	;/* s,55 */
		jne	L3971_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 205	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3972_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3973_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3971_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x38	;/* s,56 */
		jne	L3974_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 205	;/* lo */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3975_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3974_false__hla_:
L3966_false__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3976_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3789_verb7__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xcd	;/* lo,205 */
		jne	L3977_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x13	;/* s,19 */
		jng	L3980__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x1a	;/* s,26 */
		jl	L3979__hla_
L3980__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x44	;/* s,68 */
		jne	L3978_false__hla_
L3979__hla_:
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3981_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3978_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x37	;/* s,55 */
		jne	L3982_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3983_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3984_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3982_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x38	;/* s,56 */
		jne	L3985_false__hla_
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3986_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3985_false__hla_:
L3977_false__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3987_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3791_verb8__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x3	;/* r,3 */
		je	L3988_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3989_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3988_false__hla_:
		mov	eax, dword ptr [L1044_lo__hla_+104]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		je	L3990_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L3991_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L3990_false__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1037_z__hla_+0]	;/* z */
		cmp	dword ptr [L1039_s__hla_+0], 0x7	;/* s,7 */
		jne	L3992_false__hla_
		mov	eax, 14
		jmp	L3992_endif__hla_
L3992_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x8	;/* s,8 */
		jne	L3993_false__hla_
		mov	eax, 6
		jmp	L3992_endif__hla_
L3993_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x9	;/* s,9 */
		jne	L3994_false__hla_
		mov	eax, 5
		jmp	L3992_endif__hla_
L3994_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xa	;/* s,10 */
		jne	L3995_false__hla_
		mov	eax, 10
		jmp	L3992_endif__hla_
L3995_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xb	;/* s,11 */
		jne	L3996_false__hla_
		mov	eax, 8
		jmp	L3992_endif__hla_
L3996_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xc	;/* s,12 */
		jne	L3997_false__hla_
		mov	eax, 48
		jmp	L3992_endif__hla_
L3997_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xd	;/* s,13 */
		jne	L3998_false__hla_
		mov	eax, 75
		jmp	L3992_endif__hla_
L3998_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xe	;/* s,14 */
		jne	L3999_false__hla_
		mov	eax, 127
		jmp	L3992_endif__hla_
L3999_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xf	;/* s,15 */
		jne	L4000_false__hla_
		mov	eax, 288
		jmp	L3992_endif__hla_
L4000_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x10	;/* s,16 */
		jne	L4001_false__hla_
		mov	eax, 142
		jmp	L3992_endif__hla_
L4001_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x11	;/* s,17 */
		jne	L4002_false__hla_
		mov	eax, 384
		jmp	L3992_endif__hla_
L4002_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x12	;/* s,18 */
		jne	L4003_false__hla_
		mov	eax, 420
		jmp	L3992_endif__hla_
L4003_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x13	;/* s,19 */
		jne	L4004_false__hla_
		mov	eax, 180
		jmp	L3992_endif__hla_
L4004_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x14	;/* s,20 */
		jne	L4005_false__hla_
		mov	eax, 86
		jmp	L3992_endif__hla_
L4005_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x15	;/* s,21 */
		jne	L4006_false__hla_
		mov	eax, 118
		jmp	L3992_endif__hla_
L4006_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x16	;/* s,22 */
		jne	L4007_false__hla_
		mov	eax, 150
		jmp	L3992_endif__hla_
L4007_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x17	;/* s,23 */
		jne	L4008_false__hla_
		mov	eax, 74
		jmp	L3992_endif__hla_
L4008_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x18	;/* s,24 */
		jne	L4009_false__hla_
		mov	eax, 212
		jmp	L3992_endif__hla_
L4009_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x19	;/* s,25 */
		jne	L4010_false__hla_
		mov	eax, 475
		jmp	L3992_endif__hla_
L4010_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x33	;/* s,51 */
		jne	L4011_false__hla_
		mov	eax, 64
		jmp	L3992_endif__hla_
L4011_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x38	;/* s,56 */
		jne	L4012_false__hla_
		mov	eax, 288
		jmp	L3992_endif__hla_
L4012_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x39	;/* s,57 */
		jne	L4013_false__hla_
		mov	eax, 80
		jmp	L3992_endif__hla_
L4013_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3b	;/* s,59 */
		jne	L4014_false__hla_
		mov	eax, 24
		jmp	L3992_endif__hla_
L4014_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3c	;/* s,60 */
		jne	L4015_false__hla_
		mov	eax, 36
		jmp	L3992_endif__hla_
L4015_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x42	;/* s,66 */
		jne	L4016_false__hla_
		mov	eax, 420
		jmp	L3992_endif__hla_
L4016_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x43	;/* s,67 */
		jne	L4017_false__hla_
		mov	eax, 812
		jmp	L3992_endif__hla_
L4017_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x44	;/* s,68 */
		jne	L4018_false__hla_
		mov	eax, 246
		jmp	L3992_endif__hla_
L4018_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x45	;/* s,69 */
		jne	L4019_false__hla_
		mov	eax, 88
L4019_false__hla_:
L3992_endif__hla_:
		test	eax,eax
		je	L4021__hla_
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		je	L4020_false__hla_
L4021__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4022_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4020_false__hla_:
		mov	ebx, dword ptr [L1023_g__hla_+0]	;/* g */
		cmp	eax, ebx	
		jna	L4023_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4024_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4025_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	ebx
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4043_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4023_false__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], -1	;/* lo */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4044_str__hla_
		call	STDOUT_PUTS	/* puts */
		sub	dword ptr [L1023_g__hla_+0], eax	;/* g */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4045_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4046_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3793_verb9__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x3	;/* r,3 */
		je	L4047_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4048_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4047_false__hla_:
		mov	eax, dword ptr [L1044_lo__hla_+104]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		je	L4049_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4050_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4049_false__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1037_z__hla_+0]	;/* z */
		cmp	dword ptr [L1039_s__hla_+0], 0x7	;/* s,7 */
		jne	L4051_false__hla_
		mov	eax, 7
		jmp	L4051_endif__hla_
L4051_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x8	;/* s,8 */
		jne	L4052_false__hla_
		mov	eax, 3
		jmp	L4051_endif__hla_
L4052_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x9	;/* s,9 */
		jne	L4053_false__hla_
		mov	eax, 2
		jmp	L4051_endif__hla_
L4053_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xa	;/* s,10 */
		jne	L4054_false__hla_
		mov	eax, 5
		jmp	L4051_endif__hla_
L4054_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xb	;/* s,11 */
		jne	L4055_false__hla_
		mov	eax, 4
		jmp	L4051_endif__hla_
L4055_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xc	;/* s,12 */
		jne	L4056_false__hla_
		mov	eax, 24
		jmp	L4051_endif__hla_
L4056_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xd	;/* s,13 */
		jne	L4057_false__hla_
		mov	eax, 27
		jmp	L4051_endif__hla_
L4057_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xe	;/* s,14 */
		jne	L4058_false__hla_
		mov	eax, 63
		jmp	L4051_endif__hla_
L4058_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xf	;/* s,15 */
		jne	L4059_false__hla_
		mov	eax, 144
		jmp	L4051_endif__hla_
L4059_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x10	;/* s,16 */
		jne	L4060_false__hla_
		mov	eax, 71
		jmp	L4051_endif__hla_
L4060_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x11	;/* s,17 */
		jne	L4061_false__hla_
		mov	eax, 192
		jmp	L4051_endif__hla_
L4061_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x12	;/* s,18 */
		jne	L4062_false__hla_
		mov	eax, 210
		jmp	L4051_endif__hla_
L4062_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x13	;/* s,19 */
		jne	L4063_false__hla_
		mov	eax, 90
		jmp	L4051_endif__hla_
L4063_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x14	;/* s,20 */
		jne	L4064_false__hla_
		mov	eax, 43
		jmp	L4051_endif__hla_
L4064_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x15	;/* s,21 */
		jne	L4065_false__hla_
		mov	eax, 59
		jmp	L4051_endif__hla_
L4065_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x16	;/* s,22 */
		jne	L4066_false__hla_
		mov	eax, 75
		jmp	L4051_endif__hla_
L4066_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x17	;/* s,23 */
		jne	L4067_false__hla_
		mov	eax, 37
		jmp	L4051_endif__hla_
L4067_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x18	;/* s,24 */
		jne	L4068_false__hla_
		mov	eax, 106
		jmp	L4051_endif__hla_
L4068_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x19	;/* s,25 */
		jne	L4069_false__hla_
		mov	eax, 287
		jmp	L4051_endif__hla_
L4069_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x33	;/* s,51 */
		jne	L4070_false__hla_
		mov	eax, 32
		jmp	L4051_endif__hla_
L4070_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x38	;/* s,56 */
		jne	L4071_false__hla_
		mov	eax, 144
		jmp	L4051_endif__hla_
L4071_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x39	;/* s,57 */
		jne	L4072_false__hla_
		mov	eax, 40
		jmp	L4051_endif__hla_
L4072_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3b	;/* s,59 */
		jne	L4073_false__hla_
		mov	eax, 12
		jmp	L4051_endif__hla_
L4073_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3c	;/* s,60 */
		jne	L4074_false__hla_
		mov	eax, 18
		jmp	L4051_endif__hla_
L4074_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x42	;/* s,66 */
		jne	L4075_false__hla_
		mov	eax, 210
		jmp	L4051_endif__hla_
L4075_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x43	;/* s,67 */
		jne	L4076_false__hla_
		mov	eax, 406
		jmp	L4051_endif__hla_
L4076_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x44	;/* s,68 */
		jne	L4077_false__hla_
		mov	eax, 123
		jmp	L4051_endif__hla_
L4077_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x45	;/* s,69 */
		jne	L4078_false__hla_
		mov	eax, 44
L4078_false__hla_:
L4051_endif__hla_:
		test	eax,eax
		je	L4080__hla_
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xffffffff	;/* lo,-1 */
		je	L4079_false__hla_
L4080__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4081_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4079_false__hla_:
		mov	ebx, dword ptr [L1023_g__hla_+0]	;/* g */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4082_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4083_str__hla_
		call	STDOUT_PUTS	/* puts */
		add	ebx, eax
		mov	dword ptr [L1023_g__hla_+0], ebx	;/* g */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4084_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4085_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	ebx
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4103_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 99	;/* lo */
		jmp	L3443_parse__hla_

L3795_verb10__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	dword ptr [L1039_s__hla_+0], 0x29	;/* s,41 */
		jne	L4104_false__hla_
		cmp	dword ptr [L1032_r__hla_+0], 0xa	;/* r,10 */
		jne	L4104_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4106_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4107_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1028_qs__hla_+0], 0x2	;/* qs,2 */
		jnl	L4108_false__hla_
		push	offset L4109_str__hla_
		call	STDOUT_PUTS	/* puts */
L4108_false__hla_:
		cmp	dword ptr [L1028_qs__hla_+0], 0x1	;/* qs,1 */
		jng	L4110_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4111_str__hla_
		call	STDOUT_PUTS	/* puts */
L4110_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4112_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1028_qs__hla_+0], 0x3	;/* qs,3 */
		jnl	L4113_false__hla_
		push	offset L4114_str__hla_
		call	STDOUT_PUTS	/* puts */
L4113_false__hla_:
		cmp	dword ptr [L1028_qs__hla_+0], 0x2	;/* qs,2 */
		jng	L4115_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4116_str__hla_
		call	STDOUT_PUTS	/* puts */
L4115_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4117_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1028_qs__hla_+0], 0x4	;/* qs,4 */
		jnl	L4118_false__hla_
		push	offset L4119_str__hla_
		call	STDOUT_PUTS	/* puts */
L4118_false__hla_:
		cmp	dword ptr [L1028_qs__hla_+0], 0x3	;/* qs,3 */
		jng	L4120_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4121_str__hla_
		call	STDOUT_PUTS	/* puts */
L4120_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4122_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1028_qs__hla_+0], 0x5	;/* qs,5 */
		jnl	L4123_false__hla_
		push	offset L4124_str__hla_
		call	STDOUT_PUTS	/* puts */
L4123_false__hla_:
		cmp	dword ptr [L1028_qs__hla_+0], 0x4	;/* qs,4 */
		jng	L4125_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4126_str__hla_
		call	STDOUT_PUTS	/* puts */
L4125_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4127_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1028_qs__hla_+0], 0x6	;/* qs,6 */
		jnl	L4128_false__hla_
		push	offset L4129_str__hla_
		call	STDOUT_PUTS	/* puts */
L4128_false__hla_:
		cmp	dword ptr [L1028_qs__hla_+0], 0x5	;/* qs,5 */
		jng	L4130_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4131_str__hla_
		call	STDOUT_PUTS	/* puts */
L4130_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4132_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1028_qs__hla_+0], 0x7	;/* qs,7 */
		jnl	L4133_false__hla_
		push	offset L4134_str__hla_
		call	STDOUT_PUTS	/* puts */
L4133_false__hla_:
		cmp	dword ptr [L1028_qs__hla_+0], 0x6	;/* qs,6 */
		jng	L4135_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4136_str__hla_
		call	STDOUT_PUTS	/* puts */
L4135_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4137_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1028_qs__hla_+0], 0x8	;/* qs,8 */
		jnl	L4138_false__hla_
		push	offset L4139_str__hla_
		call	STDOUT_PUTS	/* puts */
L4138_false__hla_:
		cmp	dword ptr [L1028_qs__hla_+0], 0x7	;/* qs,7 */
		jng	L4140_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4141_str__hla_
		call	STDOUT_PUTS	/* puts */
L4140_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4142_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1028_qs__hla_+0], 0x9	;/* qs,9 */
		jnl	L4143_false__hla_
		push	offset L4144_str__hla_
		call	STDOUT_PUTS	/* puts */
L4143_false__hla_:
		cmp	dword ptr [L1028_qs__hla_+0], 0x8	;/* qs,8 */
		jng	L4145_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4146_str__hla_
		call	STDOUT_PUTS	/* puts */
L4145_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4147_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1028_qs__hla_+0], 0xa	;/* qs,10 */
		jnl	L4148_false__hla_
		push	offset L4149_str__hla_
		call	STDOUT_PUTS	/* puts */
L4148_false__hla_:
		cmp	dword ptr [L1028_qs__hla_+0], 0x9	;/* qs,9 */
		jng	L4150_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4151_str__hla_
		call	STDOUT_PUTS	/* puts */
L4150_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		jmp	L3443_parse__hla_
L4104_false__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L4156__hla_
		cmp	ebx, 0x6	;/* 6 */
		ja	L4153__hla_
L4156__hla_:
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4157__hla_
		cmp	ebx, 0x6	;/* 6 */
		ja	L4153__hla_
L4157__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4158__hla_
		cmp	ebx, 0x6	;/* 6 */
		ja	L4153__hla_
L4158__hla_:
		cmp	eax, 0xcd	;/* 205 */
		jne	L4152_false__hla_
		cmp	ebx, 0x6	;/* 6 */
		jna	L4152_false__hla_
L4153__hla_:
		sub	ebx, 1
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	dword ptr [L1122_exa__hla_+ebx*4+0]	/* (type string exa) */
		call	STDOUT_PUTS	/* puts */
		push	offset L4179_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4152_false__hla_:
		cmp	eax, 0xfffffffe	;/* -2 */
		jne	L4183__hla_
		cmp	dword ptr [L1032_r__hla_+0], 0xe	;/* r,14 */
		je	L4181__hla_
L4183__hla_:
		cmp	eax, 0xfffffffe	;/* -2 */
		jne	L4184__hla_
		cmp	dword ptr [L1032_r__hla_+0], 0x70	;/* r,112 */
		je	L4181__hla_
L4184__hla_:
		cmp	eax, 0xfffffffe	;/* -2 */
		jne	L4180_false__hla_
		cmp	dword ptr [L1032_r__hla_+0], 0x91	;/* r,145 */
		jne	L4180_false__hla_
L4181__hla_:
		sub	ebx, 1
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	dword ptr [L1122_exa__hla_+ebx*4+0]	/* (type string exa) */
		call	STDOUT_PUTS	/* puts */
		push	offset L4205_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4180_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x0	;/* s,0 */
		je	L4206_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4207_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4206_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4208_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4209_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4210_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3797_verb11__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		cmp	eax, 0x10	;/* 16 */
		jne	L4211_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x9	;/* s,9 */
		jne	L4211_false__hla_
		cmp	dword ptr [L1044_lo__hla_+36], 0xffffffff	;/* lo,-1 */
		jne	L4211_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4214_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		mov	eax, 17
		mov	dword ptr [L1032_r__hla_+0], eax	;/* r */
		jmp	L1234_Room__hla_
L4211_false__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		cmp	eax, 0x11	;/* 17 */
		jne	L4215_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x9	;/* s,9 */
		jne	L4215_false__hla_
		cmp	dword ptr [L1044_lo__hla_+36], 0xffffffff	;/* lo,-1 */
		jne	L4215_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4218_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		mov	eax, 16
		mov	dword ptr [L1032_r__hla_+0], eax	;/* r */
		jmp	L1234_Room__hla_
L4215_false__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		cmp	eax, 0xe8	;/* 232 */
		jne	L4219_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x42	;/* s,66 */
		jne	L4219_false__hla_
		cmp	dword ptr [L1044_lo__hla_+264], 0xffffffff	;/* lo,-1 */
		jne	L4219_false__hla_
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4222_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4223_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4224_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		mov	eax, 233
		mov	dword ptr [L1032_r__hla_+0], eax	;/* r */
		jmp	L1234_Room__hla_
L4219_false__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		mov	ebx, dword ptr [L1030_slp__hla_+0]	;/* slp */
		cmp	eax, 0xe	;/* 14 */
		jne	L4225_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x39	;/* s,57 */
		jne	L4225_false__hla_
		cmp	dword ptr [L1044_lo__hla_+228], 0xffffffff	;/* lo,-1 */
		jne	L4225_false__hla_
		cmp	dword ptr [L1044_lo__hla_+232], 0xe	;/* lo,14 */
		jne	L4225_false__hla_
		test	ebx,ebx
		jne	L4225_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4230_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4231_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4232_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4233_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1030_slp__hla_+0]	;/* slp */
		add	eax, 1
		mov	dword ptr [L1030_slp__hla_+0], eax	;/* slp */
		jmp	L3443_parse__hla_
L4225_false__hla_:
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		mov	ebx, dword ptr [L1030_slp__hla_+0]	;/* slp */
		cmp	eax, 0xe	;/* 14 */
		jne	L4234_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x39	;/* s,57 */
		jne	L4234_false__hla_
		cmp	dword ptr [L1044_lo__hla_+228], 0xffffffff	;/* lo,-1 */
		jne	L4234_false__hla_
		cmp	dword ptr [L1044_lo__hla_+232], 0xe	;/* lo,14 */
		jne	L4234_false__hla_
		cmp	ebx, 0x1	;/* 1 */
		jne	L4234_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4239_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4240_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4241_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4242_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4234_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x39	;/* s,57 */
		jne	L4243_false__hla_
		cmp	dword ptr [L1044_lo__hla_+228], 0xffffffff	;/* lo,-1 */
		jne	L4243_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4245_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4246_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4247_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4248_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4243_false__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4249_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3799_verb12__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		cmp	dword ptr [L1039_s__hla_+0], 0x1a	;/* s,26 */
		jl	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x29	;/* s,41 */
		je	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x33	;/* s,51 */
		je	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x37	;/* s,55 */
		je	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x38	;/* s,56 */
		je	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x39	;/* s,57 */
		je	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3b	;/* s,59 */
		je	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3c	;/* s,60 */
		je	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x42	;/* s,66 */
		je	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x43	;/* s,67 */
		je	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x44	;/* s,68 */
		je	L4251__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x45	;/* s,69 */
		jne	L4250_false__hla_
L4251__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4262_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4250_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x2e	;/* s,46 */
		jne	L4263_false__hla_
		cmp	dword ptr [L1022_wf__hla_+0], 0x1	;/* wf,1 */
		jne	L4263_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4265_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4263_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x40	;/* s,64 */
		jne	L4266_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4267_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4266_false__hla_:
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		je	L4268_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4269_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4268_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x35	;/* s,53 */
		jne	L4270_false__hla_
		cmp	dword ptr [L1032_r__hla_+0], 0xac	;/* r,172 */
		jne	L4270_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4272_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4270_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x36	;/* s,54 */
		jne	L4273_false__hla_
		cmp	dword ptr [L1032_r__hla_+0], 0xb8	;/* r,184 */
		jne	L4273_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4275_str__hla_
		call	STDOUT_PUTS	/* puts */
L4273_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3a	;/* s,58 */
		jne	L4276_false__hla_
		cmp	dword ptr [L1032_r__hla_+0], 0xe	;/* r,14 */
		jne	L4276_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4278_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4279_str__hla_
		call	STDOUT_PUTS	/* puts */
L4276_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x46	;/* s,70 */
		jne	L4280_false__hla_
		cmp	dword ptr [L1032_r__hla_+0], 0xea	;/* r,234 */
		jne	L4280_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4282_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4283_str__hla_
		call	STDOUT_PUTS	/* puts */
L4280_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x49	;/* s,73 */
		jne	L4284_false__hla_
		cmp	dword ptr [L1032_r__hla_+0], 0xeb	;/* r,235 */
		jne	L4284_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4286_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4287_str__hla_
		call	STDOUT_PUTS	/* puts */
L4284_false__hla_:
		mov	ebx, dword ptr [L1044_lo__hla_+144]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L4288_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x26	;/* s,38 */
		jne	L4288_false__hla_
		cmp	ebx, dword ptr [L1032_r__hla_+0]	
		jne	L4288_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4291_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4292_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L4288_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x26	;/* s,38 */
		jne	L4293_false__hla_
		cmp	dword ptr [L1028_qs__hla_+0], 0x6	;/* qs,6 */
		jnl	L4293_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4295_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3826_heh__hla_
L4293_false__hla_:

L4296_battle__hla_:
		call	RAND_RANDOMIZE	/* randomize */
		pushd	0x64
		pushd	0x258
		call	RAND_URANGE	/* urange */
		cmp	dword ptr [L1039_s__hla_+0], 0x41	;/* s,65 */
		jne	L4297_false__hla_
		add	eax, 100
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
		add	ebx, 100
		mov	dword ptr [L1024_h__hla_+0], ebx	;/* h */
L4297_false__hla_:
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */

L4298_battle2__hla_:
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4312_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		sub	ebx, 1
		push	offset L4326_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	dword ptr [L1045_no__hla_+ebx*4+0]	/* (type string no) */
		call	STDOUT_PUTS	/* puts */
		push	offset L4337_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	dword ptr [L1033_mh__hla_+0]	/* (type int32 mh) */
		call	STDOUT_PUTI32	/* puti32 */
		push	offset L4348_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4362_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	dword ptr [L1024_h__hla_+0]	/* (type int32 h) */
		call	STDOUT_PUTI32	/* puti32 */
		push	offset L4373_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4378_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1024_h__hla_+0], 0x1	;/* h,1 */
		jng	L4379_false__hla_
		cmp	dword ptr [L1024_h__hla_+0], 0x24	;/* h,36 */
		jnl	L4379_false__hla_
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4381_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4382_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		add	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
L4379_false__hla_:
		pushd	0x1
		pushd	0x19
		call	RAND_URANGE	/* urange */
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4383_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1022_wf__hla_+0], 0x1	;/* wf,1 */
		jne	L4384_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4385_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x19
		call	RAND_URANGE	/* urange */
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		cmp	eax, 0x1	;/* 1 */
		jna	L4386_false__hla_
		cmp	eax, 0x6	;/* 6 */
		jnb	L4386_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4388_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4389_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1033_mh__hla_+0]	;/* mh */
		sub	eax, 100
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
L4386_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4390_str__hla_
		call	STDOUT_PUTS	/* puts */
L4384_false__hla_:
		cmp	dword ptr [L1031_tsk__hla_+0], 0x1	;/* tsk,1 */
		jne	L4391_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4392_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x19
		call	RAND_URANGE	/* urange */
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		cmp	eax, 0x1	;/* 1 */
		jna	L4393_false__hla_
		cmp	eax, 0x6	;/* 6 */
		jnb	L4393_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4395_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4396_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1033_mh__hla_+0]	;/* mh */
		sub	eax, 200
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
L4393_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4397_str__hla_
		call	STDOUT_PUTS	/* puts */
L4391_false__hla_:
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4398_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4399_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, 12
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L4400_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 2	;/* dam */
L4400_false__hla_:
		mov	ebx, 13
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L4401_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 4	;/* dam */
L4401_false__hla_:
		mov	ebx, 14
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L4402_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 6	;/* dam */
L4402_false__hla_:
		mov	ebx, 15
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L4403_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 8	;/* dam */
L4403_false__hla_:
		mov	ebx, 16
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L4404_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 7	;/* dam */
L4404_false__hla_:
		mov	ebx, 17
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L4405_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 12	;/* dam */
L4405_false__hla_:
		mov	ebx, 18
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L4406_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 18	;/* dam */
L4406_false__hla_:
		mov	ebx, 19
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L4407_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 10	;/* dam */
L4407_false__hla_:
		mov	ebx, 55
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xcd	;/* lo,205 */
		jne	L4408_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 22	;/* dam */
L4408_false__hla_:
		mov	ebx, 67
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L4409_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 24	;/* dam */
L4409_false__hla_:
		mov	ebx, 69
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x69	;/* lo,105 */
		jne	L4410_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 18	;/* dam */
L4410_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x41	;/* s,65 */
		jne	L4411_false__hla_
		mov	dword ptr [L1034_dam__hla_+0], 0	;/* dam */
L4411_false__hla_:
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		cmp	eax, 0x6	;/* 6 */
		jnb	L4412_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4413_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L4414_round2__hla_
L4412_false__hla_:
		cmp	eax, 0x5	;/* 5 */
		jna	L4415_false__hla_
		cmp	eax, 0xb	;/* 11 */
		jnb	L4415_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4417_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		mov	eax, dword ptr [L1033_mh__hla_+0]	;/* mh */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
		jmp	L4414_round2__hla_
L4415_false__hla_:
		cmp	eax, 0xa	;/* 10 */
		jna	L4418_false__hla_
		cmp	eax, 0xd	;/* 13 */
		jnb	L4418_false__hla_
		cmp	dword ptr [L1034_dam__hla_+0], 0x8	;/* dam,8 */
		jne	L4418_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4421_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4422_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1033_mh__hla_+0]	;/* mh */
		sub	eax, 50
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
		jmp	L4414_round2__hla_
L4418_false__hla_:
		cmp	eax, 0xa	;/* 10 */
		jna	L4423_false__hla_
		cmp	eax, 0xd	;/* 13 */
		jnb	L4423_false__hla_
		cmp	dword ptr [L1034_dam__hla_+0], 0x18	;/* dam,24 */
		jne	L4423_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4426_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4427_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1033_mh__hla_+0]	;/* mh */
		sub	eax, 200
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
		jmp	L4414_round2__hla_
L4423_false__hla_:
		cmp	eax, 0xa	;/* 10 */
		jna	L4428_false__hla_
		cmp	eax, 0xd	;/* 13 */
		jnb	L4428_false__hla_
		cmp	dword ptr [L1034_dam__hla_+0], 0x12	;/* dam,18 */
		jne	L4428_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4431_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4432_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1033_mh__hla_+0]	;/* mh */
		sub	eax, 125
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
		jmp	L4414_round2__hla_
L4428_false__hla_:
		cmp	eax, 0xb	;/* 11 */
		jna	L4433_false__hla_
		cmp	eax, 0xe	;/* 14 */
		jnb	L4433_false__hla_
		cmp	dword ptr [L1034_dam__hla_+0], 0x16	;/* dam,22 */
		jne	L4433_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4436_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4437_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4438_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1033_mh__hla_+0]	;/* mh */
		sub	eax, 75
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
		cmp	eax, 0xc	;/* 12 */
		jne	L4439_false__hla_
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		add	eax, 25
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4440_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4441_str__hla_
		call	STDOUT_PUTS	/* puts */
L4439_false__hla_:
L4433_false__hla_:
		cmp	eax, 0xa	;/* 10 */
		jna	L4442_false__hla_
		cmp	eax, 0xd	;/* 13 */
		jnb	L4442_false__hla_
		cmp	dword ptr [L1034_dam__hla_+0], 0xc	;/* dam,12 */
		jne	L4442_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4445_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4446_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1033_mh__hla_+0]	;/* mh */
		sub	eax, 150
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
		jmp	L4414_round2__hla_
L4442_false__hla_:
		cmp	eax, 0xa	;/* 10 */
		jna	L4447_false__hla_
		cmp	eax, 0xd	;/* 13 */
		jnb	L4447_false__hla_
		cmp	dword ptr [L1044_lo__hla_+228], 0xffffffff	;/* lo,-1 */
		jne	L4447_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4450_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4451_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4452_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		add	eax, 75
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
		mov	eax, dword ptr [L1033_mh__hla_+0]	;/* mh */
		sub	eax, 75
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
		jmp	L4414_round2__hla_
L4447_false__hla_:
		cmp	eax, 0xa	;/* 10 */
		jna	L4453_false__hla_
		cmp	eax, 0xd	;/* 13 */
		jnb	L4453_false__hla_
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4455_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		mov	eax, dword ptr [L1033_mh__hla_+0]	;/* mh */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		sub	eax, dword ptr [L1034_dam__hla_+0]	;/* dam */
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
		jmp	L4414_round2__hla_
L4453_false__hla_:
		cmp	eax, 0xc	;/* 12 */
		jna	L4456_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4457_str__hla_
		call	STDOUT_PUTS	/* puts */
L4456_false__hla_:

L4414_round2__hla_:
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4458_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4459_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	STDIN_GETC	/* getc */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		cmp	dword ptr [L1039_s__hla_+0], 0x41	;/* s,65 */
		jne	L4460_false__hla_
		add	eax, 100
		mov	dword ptr [L1033_mh__hla_+0], eax	;/* mh */
L4460_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x26	;/* s,38 */
		jne	L4461_false__hla_
		cmp	dword ptr [L1033_mh__hla_+0], 0x1	;/* mh,1 */
		jnl	L4461_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4463_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L4464_round4__hla_
L4461_false__hla_:
		cmp	dword ptr [L1033_mh__hla_+0], 0x1	;/* mh,1 */
		jnl	L4465_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4466_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4467_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ecx, dword ptr [L1024_h__hla_+0]	;/* h */
		add	ecx, 100
		mov	dword ptr [L1024_h__hla_+0], ecx	;/* h */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4468_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L4469_round3__hla_
L4465_false__hla_:
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4470_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4471_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4472_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4473_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4474_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		pushd	0x1
		pushd	0x19
		call	RAND_URANGE	/* urange */
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		cmp	eax, 0x6	;/* 6 */
		jnb	L4475_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4476_str__hla_
		call	STDOUT_PUTS	/* puts */
L4475_false__hla_:
		cmp	eax, 0x5	;/* 5 */
		jna	L4477_false__hla_
		cmp	eax, 0xb	;/* 11 */
		jnb	L4477_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4479_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		sub	eax, 26
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
L4477_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x24	;/* s,36 */
		je	L4480_false__hla_
		jmp	L4481_hola__hla_
L4480_false__hla_:
		cmp	eax, 0xa	;/* 10 */
		jna	L4482_false__hla_
		cmp	eax, 0xe	;/* 14 */
		jnb	L4482_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4484_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4485_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		sub	eax, 100
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
L4482_false__hla_:

L4481_hola__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x26	;/* s,38 */
		je	L4486_false__hla_
		jmp	L4487_hola2__hla_
L4486_false__hla_:
		cmp	eax, 0xa	;/* 10 */
		jna	L4488_false__hla_
		cmp	eax, 0xe	;/* 14 */
		jnb	L4488_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4490_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4491_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4492_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4493_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4494_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4495_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4496_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		sub	eax, 500
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
L4488_false__hla_:

L4487_hola2__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x36	;/* s,54 */
		je	L4497_false__hla_
		jmp	L4498_hola3__hla_
L4497_false__hla_:
		cmp	eax, 0xc	;/* 12 */
		jna	L4499_false__hla_
		cmp	eax, 0x10	;/* 16 */
		jnb	L4499_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4501_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4502_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4503_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4504_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		sub	eax, 250
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4499_false__hla_:

L4498_hola3__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x46	;/* s,70 */
		je	L4505_false__hla_
		jmp	L4506_hola4__hla_
L4505_false__hla_:
		cmp	eax, 0xc	;/* 12 */
		jna	L4507_false__hla_
		cmp	eax, 0x10	;/* 16 */
		jnb	L4507_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4509_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4510_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4511_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4512_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		sub	eax, 350
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4507_false__hla_:

L4506_hola4__hla_:
		cmp	dword ptr [L1024_h__hla_+0], 0x1	;/* h,1 */
		jnl	L4513_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4514_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L4469_round3__hla_
L4513_false__hla_:
		cmp	eax, 0xa	;/* 10 */
		jna	L4515_false__hla_
		cmp	eax, 0xd	;/* 13 */
		jnb	L4515_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4517_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4518_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		sub	eax, 75
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
		jmp	L4414_round2__hla_
L4515_false__hla_:
		mov	ebx, 21
		mov	ecx, dword ptr [L1029_i__hla_+0]	;/* i */
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xcd	;/* lo,205 */
		jne	L4519_false__hla_
		cmp	ecx, 0xc	;/* 12 */
		jna	L4520_false__hla_
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		add	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
L4520_false__hla_:
L4519_false__hla_:
		mov	eax, dword ptr [L1024_h__hla_+0]	;/* h */
		mov	ebx, 20
		mov	ecx, dword ptr [L1029_i__hla_+0]	;/* i */
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xcd	;/* lo,205 */
		jne	L4521_false__hla_
		cmp	ecx, 0xf	;/* 15 */
		jna	L4521_false__hla_
		add	eax, 50
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4523_str__hla_
		call	STDOUT_PUTS	/* puts */
L4521_false__hla_:
		mov	ebx, 24
		mov	ecx, dword ptr [L1029_i__hla_+0]	;/* i */
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xcd	;/* lo,205 */
		jne	L4524_false__hla_
		cmp	ecx, 0x14	;/* 20 */
		jna	L4524_false__hla_
		add	dword ptr [L1034_dam__hla_+0], 1	;/* dam */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4526_str__hla_
		call	STDOUT_PUTS	/* puts */
L4524_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		jmp	L4298_battle2__hla_

L4469_round3__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		cmp	dword ptr [L1024_h__hla_+0], 0x1	;/* h,1 */
		jnl	L4527_false__hla_

L3455_frog__hla_:
		push	offset L4528_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4529_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L4530_kend__hla_
L4527_false__hla_:
		cmp	dword ptr [L1033_mh__hla_+0], 0x1	;/* mh,1 */
		jnl	L4531_false__hla_
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 998	;/* lo */
		mov	eax, dword ptr [L1023_g__hla_+0]	;/* g */
		add	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		mov	dword ptr [L1023_g__hla_+0], eax	;/* g */
		mov	eax, dword ptr [L1026_e__hla_+0]	;/* e */
		add	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, dword ptr [L1039_s__hla_+0]	;/* s */
		add	eax, 100
		mov	dword ptr [L1026_e__hla_+0], eax	;/* e */
		mov	eax, 12
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4532_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4533_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4532_false__hla_:
		mov	eax, 13
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4534_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4535_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4534_false__hla_:
		mov	eax, 14
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4536_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4537_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4536_false__hla_:
		mov	eax, 15
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4538_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4539_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4538_false__hla_:
		mov	eax, 16
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4540_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4541_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4540_false__hla_:
		mov	eax, 17
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4542_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4543_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4542_false__hla_:
		mov	eax, 18
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4544_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4545_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4544_false__hla_:
		mov	eax, 19
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4546_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4547_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4546_false__hla_:
		mov	eax, 20
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4548_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4549_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4548_false__hla_:
		mov	eax, 21
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4550_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4551_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4550_false__hla_:
		mov	eax, 22
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4552_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4553_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4552_false__hla_:
		mov	eax, 23
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4554_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4555_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4554_false__hla_:
		mov	eax, 24
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4556_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4557_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4556_false__hla_:
		mov	eax, 25
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4558_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4559_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4558_false__hla_:
		mov	eax, 67
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4560_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4561_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4560_false__hla_:
		mov	eax, 68
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		add	ebx, 1000
		cmp	dword ptr [L1044_lo__hla_+eax*4+0], ebx	;/* lo */
		jne	L4562_false__hla_
		push	dword ptr [L1032_r__hla_+0]	;/* r */
		pop	dword ptr [L1044_lo__hla_+eax*4+0]	;/* lo */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4563_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
L4562_false__hla_:
		jmp	L3443_parse__hla_
L4531_false__hla_:
		jmp	L3443_parse__hla_

L4464_round4__hla_:
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4564_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4565_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4566_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4567_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4568_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4569_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4570_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4571_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4572_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4573_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4574_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4575_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L4576_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L4530_kend__hla_

L3801_verb13__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4577_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		mov	eax, 0
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
		mov	ebx, 7
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4578_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4579_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4578_false__hla_:
		mov	ebx, 8
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4580_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4581_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4580_false__hla_:
		mov	ebx, 9
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4582_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4583_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4582_false__hla_:
		mov	ebx, 10
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4584_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4585_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4584_false__hla_:
		mov	ebx, 11
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4586_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4587_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4586_false__hla_:
		mov	ebx, 12
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4588_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4589_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4588_false__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4590_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4591_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4592_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4590_false__hla_:
		mov	ebx, 13
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4593_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4594_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4593_false__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4595_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4596_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4597_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4595_false__hla_:
		mov	ebx, 14
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4598_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4599_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4598_false__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4600_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4601_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4602_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4600_false__hla_:
		mov	ebx, 15
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4603_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4604_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4603_false__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4605_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4606_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4607_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4605_false__hla_:
		mov	ebx, 16
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4608_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4609_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4608_false__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4610_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4611_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4612_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4610_false__hla_:
		mov	ebx, 17
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4613_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4614_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4613_false__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4615_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4616_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4617_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4615_false__hla_:
		mov	ebx, 18
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4618_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4619_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4618_false__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4620_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4621_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4622_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4620_false__hla_:
		mov	ebx, 19
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4623_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4624_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4623_false__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4625_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4626_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4627_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4625_false__hla_:
		mov	ebx, 20
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4628_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4629_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4628_false__hla_:
		cmp	eax, 0xcd	;/* 205 */
		jne	L4630_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4631_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4632_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4630_false__hla_:
		mov	ebx, 21
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4633_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4634_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4633_false__hla_:
		cmp	eax, 0xcd	;/* 205 */
		jne	L4635_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4636_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4637_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4635_false__hla_:
		mov	ebx, 22
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4638_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4639_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4638_false__hla_:
		cmp	eax, 0xcd	;/* 205 */
		jne	L4640_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4641_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4642_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4640_false__hla_:
		mov	ebx, 23
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4643_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4644_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4643_false__hla_:
		cmp	eax, 0xcd	;/* 205 */
		jne	L4645_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4646_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4647_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4645_false__hla_:
		mov	ebx, 24
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4648_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4649_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4648_false__hla_:
		cmp	eax, 0xcd	;/* 205 */
		jne	L4650_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4651_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4652_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4650_false__hla_:
		mov	ebx, 25
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4653_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4654_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4653_false__hla_:
		cmp	eax, 0xcd	;/* 205 */
		jne	L4655_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4656_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4657_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4655_false__hla_:
		mov	ebx, 51
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4658_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4659_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4658_false__hla_:
		mov	ebx, 55
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4660_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4661_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4660_false__hla_:
		cmp	eax, 0xcd	;/* 205 */
		jne	L4662_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4663_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4664_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4662_false__hla_:
		mov	ebx, 56
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4665_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4666_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4665_false__hla_:
		cmp	eax, 0xcd	;/* 205 */
		jne	L4667_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4668_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4669_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4667_false__hla_:
		mov	ebx, 57
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4670_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4671_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4670_false__hla_:
		mov	ebx, 59
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4672_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4673_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4672_false__hla_:
		mov	ebx, 60
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4674_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4675_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4674_false__hla_:
		mov	ebx, 66
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4676_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4677_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4676_false__hla_:
		mov	ebx, 67
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4678_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4679_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4678_false__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4680_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4681_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4682_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4680_false__hla_:
		mov	ebx, 68
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4683_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4684_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4683_false__hla_:
		cmp	eax, 0xcd	;/* 205 */
		jne	L4685_false__hla_
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4686_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4687_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4685_false__hla_:
		mov	ebx, 69
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		jne	L4688_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4689_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4688_false__hla_:
		cmp	eax, 0x69	;/* 105 */
		jne	L4690_false__hla_
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4691_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4692_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		add	eax, 1
		mov	dword ptr [L1029_i__hla_+0], eax	;/* i */
L4690_false__hla_:
		mov	eax, dword ptr [L1029_i__hla_+0]	;/* i */
		test	eax,eax
		jne	L4693_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4694_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4693_false__hla_:
		jmp	L3443_parse__hla_

L3803_verb14__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4695_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L4530_kend__hla_

L3806_verb16__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x3	;/* r,3 */
		je	L4696_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4697_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4696_false__hla_:
		mov	eax, dword ptr [L1044_lo__hla_+104]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		je	L4698_false__hla_
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4699_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L4698_false__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1037_z__hla_+0]	;/* z */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L4700_str__hla_
		call	STDOUT_PUTS	/* puts */
		cmp	dword ptr [L1039_s__hla_+0], 0x7	;/* s,7 */
		jne	L4701_false__hla_
		mov	eax, 14
		jmp	L4701_endif__hla_
L4701_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x8	;/* s,8 */
		jne	L4702_false__hla_
		mov	eax, 6
		jmp	L4701_endif__hla_
L4702_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x9	;/* s,9 */
		jne	L4703_false__hla_
		mov	eax, 5
		jmp	L4701_endif__hla_
L4703_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xa	;/* s,10 */
		jne	L4704_false__hla_
		mov	eax, 10
		jmp	L4701_endif__hla_
L4704_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xb	;/* s,11 */
		jne	L4705_false__hla_
		mov	eax, 8
		jmp	L4701_endif__hla_
L4705_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xc	;/* s,12 */
		jne	L4706_false__hla_
		mov	eax, 48
		jmp	L4701_endif__hla_
L4706_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xd	;/* s,13 */
		jne	L4707_false__hla_
		mov	eax, 75
		jmp	L4701_endif__hla_
L4707_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xe	;/* s,14 */
		jne	L4708_false__hla_
		mov	eax, 127
		jmp	L4701_endif__hla_
L4708_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0xf	;/* s,15 */
		jne	L4709_false__hla_
		mov	eax, 288
		jmp	L4701_endif__hla_
L4709_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x10	;/* s,16 */
		jne	L4710_false__hla_
		mov	eax, 142
		jmp	L4701_endif__hla_
L4710_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x11	;/* s,17 */
		jne	L4711_false__hla_
		mov	eax, 384
		jmp	L4701_endif__hla_
L4711_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x12	;/* s,18 */
		jne	L4712_false__hla_
		mov	eax, 420
		jmp	L4701_endif__hla_
L4712_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x13	;/* s,19 */
		jne	L4713_false__hla_
		mov	eax, 180
		jmp	L4701_endif__hla_
L4713_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x14	;/* s,20 */
		jne	L4714_false__hla_
		mov	eax, 86
		jmp	L4701_endif__hla_
L4714_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x15	;/* s,21 */
		jne	L4715_false__hla_
		mov	eax, 118
		jmp	L4701_endif__hla_
L4715_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x16	;/* s,22 */
		jne	L4716_false__hla_
		mov	eax, 150
		jmp	L4701_endif__hla_
L4716_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x17	;/* s,23 */
		jne	L4717_false__hla_
		mov	eax, 74
		jmp	L4701_endif__hla_
L4717_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x18	;/* s,24 */
		jne	L4718_false__hla_
		mov	eax, 212
		jmp	L4701_endif__hla_
L4718_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x19	;/* s,25 */
		jne	L4719_false__hla_
		mov	eax, 475
		jmp	L4701_endif__hla_
L4719_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x33	;/* s,51 */
		jne	L4720_false__hla_
		mov	eax, 64
		jmp	L4701_endif__hla_
L4720_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x38	;/* s,56 */
		jne	L4721_false__hla_
		mov	eax, 288
		jmp	L4701_endif__hla_
L4721_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x39	;/* s,57 */
		jne	L4722_false__hla_
		mov	eax, 80
		jmp	L4701_endif__hla_
L4722_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3b	;/* s,59 */
		jne	L4723_false__hla_
		mov	eax, 24
		jmp	L4701_endif__hla_
L4723_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3c	;/* s,60 */
		jne	L4724_false__hla_
		mov	eax, 36
		jmp	L4701_endif__hla_
L4724_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x42	;/* s,66 */
		jne	L4725_false__hla_
		mov	eax, 420
		jmp	L4701_endif__hla_
L4725_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x43	;/* s,67 */
		jne	L4726_false__hla_
		mov	eax, 812
		jmp	L4701_endif__hla_
L4726_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x44	;/* s,68 */
		jne	L4727_false__hla_
		mov	eax, 246
		jmp	L4701_endif__hla_
L4727_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x45	;/* s,69 */
		jne	L4728_false__hla_
		mov	eax, 88
L4728_false__hla_:
L4701_endif__hla_:
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		mov	dword ptr [L1039_s__hla_+0], 7	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 14
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4729_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x7	;/* s,7 */
		jne	L4729_false__hla_
		push	offset L4744_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4753_str__hla_
		call	STDOUT_PUTS	/* puts */
L4729_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 8	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 6
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4754_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x8	;/* s,8 */
		jne	L4754_false__hla_
		push	offset L4769_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4778_str__hla_
		call	STDOUT_PUTS	/* puts */
L4754_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 9	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 5
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4779_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x9	;/* s,9 */
		jne	L4779_false__hla_
		push	offset L4794_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4803_str__hla_
		call	STDOUT_PUTS	/* puts */
L4779_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 10	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 10
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4804_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0xa	;/* s,10 */
		jne	L4804_false__hla_
		push	offset L4819_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4828_str__hla_
		call	STDOUT_PUTS	/* puts */
L4804_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 11	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 8
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4829_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0xb	;/* s,11 */
		jne	L4829_false__hla_
		push	offset L4844_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4853_str__hla_
		call	STDOUT_PUTS	/* puts */
L4829_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 12	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 48
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4854_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0xc	;/* s,12 */
		jne	L4854_false__hla_
		push	offset L4869_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4878_str__hla_
		call	STDOUT_PUTS	/* puts */
L4854_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 13	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 75
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4879_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0xd	;/* s,13 */
		jne	L4879_false__hla_
		push	offset L4894_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4903_str__hla_
		call	STDOUT_PUTS	/* puts */
L4879_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 14	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 127
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4904_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0xe	;/* s,14 */
		jne	L4904_false__hla_
		push	offset L4919_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4928_str__hla_
		call	STDOUT_PUTS	/* puts */
L4904_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 15	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 288
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4929_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0xf	;/* s,15 */
		jne	L4929_false__hla_
		push	offset L4944_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4953_str__hla_
		call	STDOUT_PUTS	/* puts */
L4929_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 16	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 142
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4954_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x10	;/* s,16 */
		jne	L4954_false__hla_
		push	offset L4969_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L4978_str__hla_
		call	STDOUT_PUTS	/* puts */
L4954_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 17	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 384
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L4979_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x11	;/* s,17 */
		jne	L4979_false__hla_
		push	offset L4994_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5003_str__hla_
		call	STDOUT_PUTS	/* puts */
L4979_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 18	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 420
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5004_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x12	;/* s,18 */
		jne	L5004_false__hla_
		push	offset L5019_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5028_str__hla_
		call	STDOUT_PUTS	/* puts */
L5004_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 19	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 180
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5029_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x13	;/* s,19 */
		jne	L5029_false__hla_
		push	offset L5044_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5053_str__hla_
		call	STDOUT_PUTS	/* puts */
L5029_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 20	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 86
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5054_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x14	;/* s,20 */
		jne	L5054_false__hla_
		push	offset L5069_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5078_str__hla_
		call	STDOUT_PUTS	/* puts */
L5054_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 21	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 118
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5079_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x15	;/* s,21 */
		jne	L5079_false__hla_
		push	offset L5094_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5103_str__hla_
		call	STDOUT_PUTS	/* puts */
L5079_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 22	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 150
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5104_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x16	;/* s,22 */
		jne	L5104_false__hla_
		push	offset L5119_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5128_str__hla_
		call	STDOUT_PUTS	/* puts */
L5104_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 23	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 74
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5129_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x17	;/* s,23 */
		jne	L5129_false__hla_
		push	offset L5144_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5153_str__hla_
		call	STDOUT_PUTS	/* puts */
L5129_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 24	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 212
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5154_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x18	;/* s,24 */
		jne	L5154_false__hla_
		push	offset L5169_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5178_str__hla_
		call	STDOUT_PUTS	/* puts */
L5154_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 25	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 475
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5179_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x19	;/* s,25 */
		jne	L5179_false__hla_
		push	offset L5194_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5203_str__hla_
		call	STDOUT_PUTS	/* puts */
L5179_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 51	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 64
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5204_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x33	;/* s,51 */
		jne	L5204_false__hla_
		push	offset L5219_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5228_str__hla_
		call	STDOUT_PUTS	/* puts */
L5204_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 56	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 288
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5229_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x38	;/* s,56 */
		jne	L5229_false__hla_
		push	offset L5244_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5253_str__hla_
		call	STDOUT_PUTS	/* puts */
L5229_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 57	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 80
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5254_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x39	;/* s,57 */
		jne	L5254_false__hla_
		push	offset L5269_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5278_str__hla_
		call	STDOUT_PUTS	/* puts */
L5254_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 59	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 24
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5279_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3b	;/* s,59 */
		jne	L5279_false__hla_
		push	offset L5294_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5303_str__hla_
		call	STDOUT_PUTS	/* puts */
L5279_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 60	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 36
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5304_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3c	;/* s,60 */
		jne	L5304_false__hla_
		push	offset L5319_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5328_str__hla_
		call	STDOUT_PUTS	/* puts */
L5304_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 66	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 420
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5329_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x42	;/* s,66 */
		jne	L5329_false__hla_
		push	offset L5344_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5353_str__hla_
		call	STDOUT_PUTS	/* puts */
L5329_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 67	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 812
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5354_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x43	;/* s,67 */
		jne	L5354_false__hla_
		push	offset L5369_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5378_str__hla_
		call	STDOUT_PUTS	/* puts */
L5354_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 68	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 246
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5379_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x44	;/* s,68 */
		jne	L5379_false__hla_
		push	offset L5394_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5403_str__hla_
		call	STDOUT_PUTS	/* puts */
L5379_false__hla_:
		mov	dword ptr [L1039_s__hla_+0], 69	;/* s */
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, 88
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0x63	;/* lo,99 */
		jne	L5404_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x45	;/* s,69 */
		jne	L5404_false__hla_
		push	offset L5419_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5428_str__hla_
		call	STDOUT_PUTS	/* puts */
L5404_false__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5429_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		mov	eax, dword ptr [L1023_g__hla_+0]	;/* g */
		push	offset L5430_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	eax
		call	STDOUT_PUTU32	/* putu32 */
		push	offset L5448_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3808_verb17__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5449_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5463_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	dword ptr [L1024_h__hla_+0]	/* (type int32 h) */
		call	STDOUT_PUTI32	/* puti32 */
		push	offset L5474_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	dword ptr [L1026_e__hla_+0]	/* (type int32 e) */
		call	STDOUT_PUTI32	/* puti32 */
		push	offset L5485_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5499_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	dword ptr [L1023_g__hla_+0]	/* (type int32 g) */
		call	STDOUT_PUTI32	/* puti32 */
		push	offset L5510_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	dword ptr [L1025_fd__hla_+0]	/* (type int32 fd) */
		call	STDOUT_PUTI32	/* puti32 */
		push	offset L5521_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3810_verb18__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5522_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5523_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5524_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5525_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5526_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5527_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5528_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5529_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5530_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5531_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5532_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5533_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5534_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	STDIN_GETC	/* getc */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5535_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5536_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5537_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5538_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5539_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5540_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5541_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5542_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5543_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5544_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5545_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5546_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5547_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L5548_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5549_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3812_verb19__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0xe	;/* r,14 */
		jne	L5550_false__hla_
		cmp	dword ptr [L1038_j__hla_+0], 0x13	;/* j,19 */
		jne	L5550_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5552_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5553_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5554_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5555_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	STDIN_GETC	/* getc */
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		mov	eax, 112
		mov	dword ptr [L1032_r__hla_+0], eax	;/* r */
		jmp	L1234_Room__hla_
L5550_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x70	;/* r,112 */
		jne	L5556_false__hla_
		cmp	dword ptr [L1038_j__hla_+0], 0x13	;/* j,19 */
		jne	L5556_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5558_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x5
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5559_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5560_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5561_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	STDIN_GETC	/* getc */
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		mov	eax, 145
		mov	dword ptr [L1032_r__hla_+0], eax	;/* r */
		jmp	L1234_Room__hla_
L5556_false__hla_:
		cmp	dword ptr [L1032_r__hla_+0], 0x91	;/* r,145 */
		jne	L5562_false__hla_
		cmp	dword ptr [L1038_j__hla_+0], 0x13	;/* j,19 */
		jne	L5562_false__hla_
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5564_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5565_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x2
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5566_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5567_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	STDIN_GETC	/* getc */
		mov	eax, dword ptr [L1032_r__hla_+0]	;/* r */
		mov	eax, 14
		mov	dword ptr [L1032_r__hla_+0], eax	;/* r */
		jmp	L1234_Room__hla_
L5562_false__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5568_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3814_verb20__hla_:
		cmp	dword ptr [L1038_j__hla_+0], 0x14	;/* j,20 */
		jne	L5569_false__hla_
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L5570_str__hla_
		call	STDIO_FOPENNEW	/* openNew */
		mov	dword ptr [L1035_outFileVar__hla_+0], eax	;/* outFileVar */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1023_g__hla_+0]	/* (type int32 g) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5591_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1024_h__hla_+0]	/* (type int32 h) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5602_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1026_e__hla_+0]	/* (type int32 e) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5613_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1027_k__hla_+0]	/* (type int32 k) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5624_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1028_qs__hla_+0]	/* (type int32 qs) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5635_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1032_r__hla_+0]	/* (type int32 r) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5646_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1034_dam__hla_+0]	/* (type int32 dam) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5657_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+4]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5678_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+8]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5689_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+12]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5700_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+16]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5711_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+20]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5722_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+24]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5743_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+28]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5754_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+32]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5765_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+36]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5776_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+40]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5787_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+44]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5808_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+48]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5819_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+52]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5830_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+56]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5841_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+60]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5852_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+64]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5873_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+68]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5884_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+72]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5895_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+76]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5906_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+80]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5917_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+84]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5938_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+88]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5949_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+92]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5960_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+96]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5971_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+100]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L5982_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+104]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6003_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+108]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6014_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+112]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6025_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+116]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6036_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+120]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6047_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+124]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6068_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+128]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6079_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+132]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6090_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+136]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6101_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+140]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6112_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+144]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6133_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+148]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6144_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+152]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6155_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+156]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6166_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+160]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6177_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+164]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6198_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+168]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6209_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+172]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6220_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+176]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6231_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+180]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6242_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+184]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6263_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+188]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6274_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+192]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6285_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+196]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6296_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+200]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6307_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+204]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6328_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+208]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6339_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+212]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6350_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+216]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6361_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+220]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6372_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+224]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6393_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+228]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6404_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+232]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6415_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+236]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6426_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+240]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6437_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+244]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6458_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+248]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6469_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+252]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6480_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+256]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6491_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+260]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6502_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+264]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6523_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+268]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6534_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+272]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6545_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+276]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6556_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+280]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6567_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+284]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6588_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+288]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6599_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+292]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6610_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+296]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6621_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1044_lo__hla_+300]	/* (type int32 lo) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6632_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1022_wf__hla_+0]	/* (type int32 wf) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	offset L6653_str__hla_
		call	STDIO_FPUTS	/* puts */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		push	dword ptr [L1031_tsk__hla_+0]	/* (type int32 tsk) */
		call	STDIO_FPUTI32	/* puti32 */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FCLOSE	/* close */
		push	offset L6670_str__hla_
		call	STDOUT_PUTS	/* puts */
L5569_false__hla_:
		jmp	L3443_parse__hla_

L3816_verb50__hla_:
		pushd	0x1
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		cmp	dword ptr [L1039_s__hla_+0], 0x33	;/* s,51 */
		je	L6671_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3b	;/* s,59 */
		je	L6671_false__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3c	;/* s,60 */
		je	L6671_false__hla_
		push	offset L6674_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6671_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x33	;/* s,51 */
		je	L6675_false__hla_
		jmp	L6676_verb59__hla_
L6675_false__hla_:
		mov	ebx, 51
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		jne	L6677_false__hla_
		push	offset L6678_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6677_false__hla_:
		cmp	dword ptr [L1044_lo__hla_+ebx*4+0], 0xffffffff	;/* lo,-1 */
		je	L6679_false__hla_
		push	offset L6680_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6679_false__hla_:
		cmp	eax, 0xffffffff	;/* -1 */
		je	L6682__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x33	;/* s,51 */
		jne	L6681_false__hla_
L6682__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L6683_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L6684_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, 51
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 4	;/* lo */
		mov	ebx, dword ptr [L1024_h__hla_+0]	;/* h */
		add	ebx, 100
		mov	dword ptr [L1024_h__hla_+0], ebx	;/* h */
		mov	ebx, 250
		mov	dword ptr [L1025_fd__hla_+0], ebx	;/* fd */
		jmp	L3443_parse__hla_
L6681_false__hla_:

L6676_verb59__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3c	;/* s,60 */
		je	L6685_false__hla_
		jmp	L6686_verb60__hla_
L6685_false__hla_:
		mov	ebx, 60
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		je	L6688__hla_
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		je	L6688__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3c	;/* s,60 */
		jne	L6687_false__hla_
L6688__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L6690_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L6691_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	ebx, 60
		mov	dword ptr [L1044_lo__hla_+ebx*4+0], 99	;/* lo */
		mov	ebx, dword ptr [L1024_h__hla_+0]	;/* h */
		add	ebx, 200
		mov	dword ptr [L1024_h__hla_+0], ebx	;/* h */
		mov	ebx, 300
		mov	dword ptr [L1025_fd__hla_+0], ebx	;/* fd */
		jmp	L3443_parse__hla_
L6687_false__hla_:

L6686_verb60__hla_:
		mov	ebx, 59
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	eax, 0xffffffff	;/* -1 */
		je	L6693__hla_
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		je	L6693__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3b	;/* s,59 */
		jne	L6692_false__hla_
L6693__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L6695_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L6696_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6697_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3455_frog__hla_
L6692_false__hla_:
		push	offset L6698_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_

L3818_verb30__hla_:
		mov	ebx, dword ptr [L1039_s__hla_+0]	;/* s */
		mov	eax, dword ptr [L1044_lo__hla_+ebx*4+0]	;/* lo */
		cmp	dword ptr [L1039_s__hla_+0], 0x1a	;/* s,26 */
		jl	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x29	;/* s,41 */
		je	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x33	;/* s,51 */
		je	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x37	;/* s,55 */
		je	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x38	;/* s,56 */
		je	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x39	;/* s,57 */
		je	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3b	;/* s,59 */
		je	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x3c	;/* s,60 */
		je	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x42	;/* s,66 */
		je	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x43	;/* s,67 */
		je	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x44	;/* s,68 */
		je	L6700__hla_
		cmp	dword ptr [L1039_s__hla_+0], 0x45	;/* s,69 */
		je	L6700__hla_
		cmp	eax, dword ptr [L1032_r__hla_+0]	
		je	L6699_false__hla_
L6700__hla_:
		pushd	0x6
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L6712_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6699_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x1a	;/* s,26 */
		jne	L6713_false__hla_
		push	offset L6714_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6713_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x1b	;/* s,27 */
		jne	L6715_false__hla_
		push	offset L6716_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6715_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x1c	;/* s,28 */
		jne	L6717_false__hla_
		push	offset L6718_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6719_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6720_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6717_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x1d	;/* s,29 */
		jne	L6721_false__hla_
		push	offset L6722_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6723_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6724_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6725_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6721_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x1e	;/* s,30 */
		jne	L6726_false__hla_
		push	offset L6727_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6728_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6729_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6730_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6731_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6726_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x1f	;/* s,31 */
		jne	L6732_false__hla_
		push	offset L6733_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6732_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x20	;/* s,32 */
		jne	L6734_false__hla_
		push	offset L6735_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6736_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6737_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6738_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6739_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6740_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6734_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x21	;/* s,33 */
		jne	L6741_false__hla_
		push	offset L6742_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6743_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6744_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6745_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6746_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6741_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x22	;/* s,34 */
		jne	L6747_false__hla_
		push	offset L6748_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6749_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6750_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6751_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6752_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6753_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6754_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6747_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x23	;/* s,35 */
		jne	L6755_false__hla_
		push	offset L6756_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6757_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6758_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6759_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	dword ptr [L1034_dam__hla_+0], 2	;/* dam */
		jmp	L3443_parse__hla_
L6755_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x24	;/* s,36 */
		jne	L6760_false__hla_
		push	offset L6761_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6762_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6763_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6760_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x25	;/* s,37 */
		jne	L6764_false__hla_
		push	offset L6765_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6764_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x26	;/* s,38 */
		jne	L6766_false__hla_
		push	offset L6767_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6768_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6769_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6770_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6771_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6772_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6773_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6774_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6766_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x27	;/* s,39 */
		jne	L6775_false__hla_
		push	offset L6776_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6777_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6778_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6775_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x28	;/* s,40 */
		jne	L6779_false__hla_
		push	offset L6780_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6781_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6782_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6783_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6784_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6785_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6786_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6787_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6779_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x2a	;/* s,42 */
		jne	L6788_false__hla_
		push	offset L6789_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6788_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x2b	;/* s,43 */
		jne	L6790_false__hla_
		push	offset L6791_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6790_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x2c	;/* s,44 */
		jne	L6792_false__hla_
		push	offset L6793_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6792_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x2d	;/* s,45 */
		jne	L6794_false__hla_
		push	offset L6795_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6796_str__hla_
		call	STDOUT_PUTS	/* puts */
		mov	eax, dword ptr [L1023_g__hla_+0]	;/* g */
		sub	eax, 25
		jmp	L3443_parse__hla_
L6794_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x2e	;/* s,46 */
		jne	L6797_false__hla_
		push	offset L6798_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6797_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x2f	;/* s,47 */
		jne	L6799_false__hla_
		push	offset L6800_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6801_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6799_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x30	;/* s,48 */
		jne	L6802_false__hla_
		push	offset L6803_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6804_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6805_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6802_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x31	;/* s,49 */
		jne	L6806_false__hla_
		push	offset L6807_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6808_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6806_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x34	;/* s,52 */
		jne	L6809_false__hla_
		push	offset L6810_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6811_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6812_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6813_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6814_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6809_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x35	;/* s,53 */
		jne	L6815_false__hla_
		push	offset L6816_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6817_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6818_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6819_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6820_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6821_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6815_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x36	;/* s,54 */
		jne	L6822_false__hla_
		push	offset L6823_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6822_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3a	;/* s,58 */
		jne	L6824_false__hla_
		push	offset L6825_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6826_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6827_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6828_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6829_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6824_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3d	;/* s,61 */
		jne	L6830_false__hla_
		push	offset L6831_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6832_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6830_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3e	;/* s,62 */
		jne	L6833_false__hla_
		push	offset L6834_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6835_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6836_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6837_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6838_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6833_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x3f	;/* s,63 */
		jne	L6839_false__hla_
		push	offset L6840_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6841_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6842_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6843_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6844_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6839_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x40	;/* s,64 */
		jne	L6845_false__hla_
		push	offset L6846_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6847_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6848_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6849_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6850_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6845_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x41	;/* s,65 */
		jne	L6851_false__hla_
		push	offset L6852_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6851_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x46	;/* s,70 */
		jne	L6853_false__hla_
		push	offset L6854_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6853_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x47	;/* s,71 */
		jne	L6855_false__hla_
		push	offset L6856_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6855_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x48	;/* s,72 */
		jne	L6857_false__hla_
		push	offset L6858_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6859_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6857_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x49	;/* s,73 */
		jne	L6860_false__hla_
		push	offset L6861_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6862_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6863_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6864_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6865_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6860_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x4a	;/* s,74 */
		jne	L6866_false__hla_
		push	offset L6867_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6866_false__hla_:
		cmp	dword ptr [L1039_s__hla_+0], 0x4b	;/* s,75 */
		jne	L6868_false__hla_
		push	offset L6869_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6870_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6871_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6872_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L6873_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L3443_parse__hla_
L6868_false__hla_:

L1231_vb2__hla_:
		push	offset L6874_str__hla_
		pushd	0x0
		call	STDIO_FOPEN	/* open */
		mov	dword ptr [L1035_outFileVar__hla_+0], eax	;/* outFileVar */
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1023_g__hla_+0], eax	;/* g */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1024_h__hla_+0], eax	;/* h */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1026_e__hla_+0], eax	;/* e */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1027_k__hla_+0], eax	;/* k */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1028_qs__hla_+0], eax	;/* qs */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1032_r__hla_+0], eax	;/* r */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1034_dam__hla_+0], eax	;/* dam */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+4], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+8], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+12], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+16], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+20], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+24], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+28], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+32], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+36], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+40], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+44], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+48], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+52], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+56], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+60], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+64], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+68], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+72], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+76], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+80], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+84], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+88], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+92], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+96], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+100], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+104], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+108], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+112], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+116], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+120], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+124], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+128], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+132], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+136], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+140], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+144], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+148], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+152], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+156], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+160], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+164], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+168], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+172], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+176], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+180], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+184], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+188], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+192], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+196], eax	;/* lo */
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+200], eax	;/* lo */
		pop	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FEOF	/* eof */
		cmp	dword ptr [L1032_r__hla_+0], 0x64	;/* r,100 */
		jnl	L7091_false__hla_
		jmp	L7092_frog78__hla_
L7091_false__hla_:
		cmp	al, 0
		je	L7093_frog77__hla_

L7093_frog77__hla_:
		push	offset L7095_exception__hla_
		push	ebp
		mov	ebp, [ExceptionPtr__hla_]
		push	dword ptr [ebp+8]
		mov	ebp, [esp+4]
		push	0xe8ce972	;/* Magic Exception Signature */
		push	dword ptr [ExceptionPtr__hla_]
		mov	dword ptr [ExceptionPtr__hla_], esp
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+204], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+208], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+212], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+216], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+220], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+224], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+228], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+232], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+236], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+240], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+244], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+248], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+252], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+256], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+260], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+264], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+268], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+272], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+276], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+280], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+284], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+288], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+292], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+296], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1044_lo__hla_+300], eax	;/* lo */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1022_wf__hla_+0], eax	;/* wf */
		pop	eax
		push	eax
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FGETI32	/* geti32 */
		mov	dword ptr [L1031_tsk__hla_+0], eax	;/* tsk */
		pop	eax
		mov	esp, dword ptr [ExceptionPtr__hla_]	;/* Unwind stack. */
		pop	dword ptr [ExceptionPtr__hla_]	;/* Restore previous Excpt Hndlr*/
		add	esp, 8	;/* Remove ptr to HW handler and coroutine. */
		pop	ebp	;/* Restore context */
		add	esp, 4	;/* Remove ptr to RAISE handler */
		jmp	L7094_endtry__hla_
L7095_exception__hla_:
L7094_endtry__hla_:

L7092_frog78__hla_:
		push	dword ptr [L1035_outFileVar__hla_+0]	/* outFileVar */
		call	STDIO_FCLOSE	/* close */
		jmp	L1232_mainlp__hla_

L3499_frog2__hla_:
		pushd	0x7
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L7312_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L7313_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L7314_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L7315_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L7316_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L7317_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L7318_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L7319_str__hla_
		call	STDOUT_PUTS	/* puts */
		pushd	0x3
		pushd	0x4
		call	CONSOLE_SETATTRS	/* setAttrs */
		push	offset L7320_str__hla_
		call	STDOUT_PUTS	/* puts */
		jmp	L4530_kend__hla_

L3445_infobar__hla_:
		pushd	0x7
		pushd	0x1
		call	CONSOLE_SETATTRS	/* setAttrs */
		call	CONSOLE_SAVECURSOR	/* saveCursor */
		pushd	0x0
		pushd	0x0
		call	CONSOLE_GOTOXY	/* gotoxy */
		push	offset L7335_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L7349_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	CONSOLE_RESTORECURSOR	/* restoreCursor */
		call	CONSOLE_SAVECURSOR	/* saveCursor */
		pushd	0x0
		pushd	0x0
		call	CONSOLE_GOTOXY	/* gotoxy */
		push	offset L7364_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	dword ptr [L1024_h__hla_+0]	/* (type int32 h) */
		call	STDOUT_PUTI32	/* puti32 */
		push	offset L7393_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	dword ptr [L1023_g__hla_+0]	/* (type int32 g) */
		call	STDOUT_PUTI32	/* puti32 */
		push	offset L7422_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	dword ptr [L1026_e__hla_+0]	/* (type int32 e) */
		call	STDOUT_PUTI32	/* puti32 */
		push	offset L7451_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	CONSOLE_RESTORECURSOR	/* restoreCursor */
		pushd	0x7
		pushd	0x5
		call	CONSOLE_SETATTRS	/* setAttrs */
		call	CONSOLE_SAVECURSOR	/* saveCursor */
		pushd	0x0
		pushd	0x1
		call	CONSOLE_GOTOXY	/* gotoxy */
		push	offset L7466_str__hla_
		call	STDOUT_PUTS	/* puts */
		push	offset L7480_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	CONSOLE_RESTORECURSOR	/* restoreCursor */
		call	CONSOLE_SAVECURSOR	/* saveCursor */
		pushd	0x0
		pushd	0x1
		call	CONSOLE_GOTOXY	/* gotoxy */
		push	offset L7495_str__hla_
		call	STDOUT_PUTS	/* puts */
		call	CONSOLE_RESTORECURSOR	/* restoreCursor */
		jmp	L3446_parse2__hla_

L4530_kend__hla_:
		call	STDIN_GETC	/* getc */
QuitMain__hla_:
		mov	eax, 1	;/* Exit Opcode*/
		xor	ebx, ebx	;/* Return Code */
		int	0x80	;/* Linux system call */
End__HLAMain_7496:
		.size	_HLAMain,End__HLAMain_7496-_HLAMain


