;
; DOUBLE PRECISION MATH LIBRARY
; FOR FLASHFORTH
; IgorM (c) 6.6.2015
; GNU GPL v3

;;; 4 primitives

	.pword  paddr(9b)+PFLASH
; Dadd
9:
	.byte   NFA|2
	.ascii  "D+"
	.align  2
DADD_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	mov     [W14--], W7
	mov     [W14--], W6
	mov     [W14--], W5
	mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dadd
	call  _Dadd
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return
	
	.pword  paddr(9b)+PFLASH
; Dsub
9:
	.byte   NFA|2
	.ascii  "D-"
	.align  2
DSUB_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	mov     [W14--], W7
	mov     [W14--], W6
	mov     [W14--], W5
	mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dsub
	call  _Dsub
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return
	
	.pword  paddr(9b)+PFLASH
; Dmul
9:
	.byte   NFA|2
	.ascii  "D*"
	.align  2
DMUL_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	mov     [W14--], W7
	mov     [W14--], W6
	mov     [W14--], W5
	mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dmul
	call  _Dmul
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return
	
	.pword  paddr(9b)+PFLASH
; Ddiv
9:
	.byte   NFA|2
	.ascii  "D/"
	.align  2
DDIV_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	mov     [W14--], W7
	mov     [W14--], W6
	mov     [W14--], W5
	mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Ddiv
	call  _Ddiv
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

;;; Functions

	.pword  paddr(9b)+PFLASH
; Dacos
9:
	.byte   NFA|5
	.ascii  "Dacos"
	.align  2
DACOS_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	;mov     [W14--], W7
	;mov     [W14--], W6
	;mov     [W14--], W5
	;mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dacos
	call  _Dacos
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return


	.pword  paddr(9b)+PFLASH
; Dasin
9:
	.byte   NFA|5
	.ascii  "Dasin"
	.align  2
DASIN_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	;mov     [W14--], W7
	;mov     [W14--], W6
	;mov     [W14--], W5
	;mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dasin
	call  _Dasin
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

	.pword  paddr(9b)+PFLASH
; Datan
9:
	.byte   NFA|5
	.ascii  "Datan"
	.align  2
DATAN_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	;mov     [W14--], W7
	;mov     [W14--], W6
	;mov     [W14--], W5
	;mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Datan
	call  _Datan
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

	.pword  paddr(9b)+PFLASH
; Datan2
9:
	.byte   NFA|6
	.ascii  "Datan2"
	.align  2
DATAN2_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	mov     [W14--], W7
	mov     [W14--], W6
	mov     [W14--], W5
	mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Datan2
	call  _Datan2
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

	.pword  paddr(9b)+PFLASH
; Dcos
9:
	.byte   NFA|4
	.ascii  "Dcos"
	.align  2
DCOS_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	;mov     [W14--], W7
	;mov     [W14--], W6
	;mov     [W14--], W5
	;mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dcos
	call  _Dcos
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

	.pword  paddr(9b)+PFLASH
; Dexp
9:
	.byte   NFA|4
	.ascii  "Dexp"
	.align  2
DEXP_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	;mov     [W14--], W7
	;mov     [W14--], W6
	;mov     [W14--], W5
	;mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dexp
	call  _Dexp
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

	.pword  paddr(9b)+PFLASH
; Dlog
9:
	.byte   NFA|4
	.ascii  "Dlog"
	.align  2
DLOG_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	;mov     [W14--], W7
	;mov     [W14--], W6
	;mov     [W14--], W5
	;mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dlog
	call  _Dlog
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

	.pword  paddr(9b)+PFLASH
; Dlog10
9:
	.byte   NFA|6
	.ascii  "Dlog10"
	.align  2
DLOG10_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	;mov     [W14--], W7
	;mov     [W14--], W6
	;mov     [W14--], W5
	;mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dlog10
	call  _Dlog10
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

	.pword  paddr(9b)+PFLASH
; Dpow
9:
	.byte   NFA|4
	.ascii  "Dpow"
	.align  2
DPOW_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	mov     [W14--], W7
	mov     [W14--], W6
	mov     [W14--], W5
	mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dpow
	call  _Dpow
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

	.pword  paddr(9b)+PFLASH
; Dsin
9:
	.byte   NFA|4
	.ascii  "Dsin"
	.align  2
DSIN_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	;mov     [W14--], W7
	;mov     [W14--], W6
	;mov     [W14--], W5
	;mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dsin
	call  _Dsin
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

	.pword  paddr(9b)+PFLASH
; Dsqrt
9:
	.byte   NFA|5
	.ascii  "Dsqrt"
	.align  2
DSQRT_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	;mov     [W14--], W7
	;mov     [W14--], W6
	;mov     [W14--], W5
	;mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dsqrt
	call  _Dsqrt
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return

	.pword  paddr(9b)+PFLASH
; Dtan
9:
	.byte   NFA|4
	.ascii  "Dtan"
	.align  2
DTAN_:
	push	W0
	push	W1
	push	W2
	push 	W3
	push	W4
	push	W5
	push	W6
	push 	W7
	;mov     [W14--], W7
	;mov     [W14--], W6
	;mov     [W14--], W5
	;mov     [W14--], W4
	mov     [W14--], W3
	mov     [W14--], W2
	mov     [W14--], W1
	mov     [W14], W0	
	.extern _Dtan
	call  _Dtan
	mov     W0, [W14++]
	mov     W1, [W14++]
	mov     W2, [W14++]
	mov     W3, [W14]   ; returns 64bit double 
	pop     W7
	pop     W6
	pop     W5
	pop     W4
	pop     W3
	pop     W2
	pop     W1
	pop     W0
	return
