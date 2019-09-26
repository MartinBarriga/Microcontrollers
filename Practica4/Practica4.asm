.include "m8535def.inc"
.def valor = r20
.def aux = r21
.def cont = r22

ser aux
out ddra, aux

inic:
	ldi cont,0

otro: 

	cpi cont, 10
	brge inic

	rcall delay

	cpi cont, 9
	brge targetNueve

	cpi cont, 8
	brge targetOcho

	cpi cont, 7
	brge targetSiete

	cpi cont, 6
	brge targetSeis

	cpi cont, 5
	brge targetCinco

	cpi cont, 4
	brge targetCuatro

	cpi cont, 3
	brge targetTres

	cpi cont, 2
	brge targetDos

	cpi cont, 1
	brge targetUno

	cpi cont, 0
	brge targetCero

	rjmp otro

targetNueve:
	ldi valor,$6f 
	out porta, valor
	inc cont
	rjmp otro

targetOcho:
	ldi valor,$7f
	out porta, valor
	inc cont
	rjmp otro

targetSiete:
	ldi valor,$27
	out porta, valor
	inc cont
	rjmp otro

targetSeis:
	ldi valor,$7d
	out porta, valor
	inc cont
	rjmp otro

targetCinco:
	ldi valor,$6d
	out porta, valor
	inc cont
	rjmp otro

targetCuatro:
	ldi valor,$66
	out porta, valor
	inc cont
	rjmp otro

targetTres:
	ldi valor,$4f
	out porta, valor
	inc cont
	rjmp otro

targetDos:
	ldi valor,$5b
	out porta, valor
	inc cont
	rjmp otro

targetUno:
	ldi valor,$06
	out porta, valor
	inc cont
	rjmp otro

targetCero:
	ldi valor,$3f
	out porta, valor
	inc cont
	rjmp otro


delay:
	push r17
	push r18
	push r19
	ldi r17, $09

WGLOOP0: ldi r18, $bc
WGLOOP1: ldi r19, $c4
WGLOOP2: dec r19

	brne WGLOOP2
	dec r18
	brne WGLOOP1
	dec r17
	brne WGLOOP0
	nop
	pop r19
	pop r18
	pop r17
	ret		 
