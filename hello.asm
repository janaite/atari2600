	processor 6502
	seg code
	org $F000
Start:
	sei
	cld
	ldx #$FF
	txs

	lda #0
	ldx #$FF
MemLoop:
	sta $0,X
	dex
	bne MemLoop

	org $FFFC
	.word Start
	.word Start
