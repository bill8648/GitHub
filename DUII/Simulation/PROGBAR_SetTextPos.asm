﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\PROGBAR_SetTextPos.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_PROGBAR_SetTextPos
EXTRN	_WM_InvalidateWindow:PROC
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_PROGBAR_LockH:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\progbar_settextpos.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _PROGBAR_SetTextPos
_TEXT	SEGMENT
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
_XOff$ = 12						; size = 4
_YOff$ = 16						; size = 4
_PROGBAR_SetTextPos PROC				; COMDAT
; Line 37
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 39
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN2@PROGBAR_Se
; Line 41
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_PROGBAR_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 42
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	cx, WORD PTR _XOff$[ebp]
	mov	WORD PTR [eax+64], cx
; Line 43
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	cx, WORD PTR _YOff$[ebp]
	mov	WORD PTR [eax+66], cx
; Line 44
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 45
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
$LN2@PROGBAR_Se:
; Line 48
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_PROGBAR_SetTextPos ENDP
_TEXT	ENDS
END