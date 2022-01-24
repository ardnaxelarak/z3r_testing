!byrna ?= 1

org $30804F ; PC 0x18004F
if !byrna
	db #$01 ; byrna grants invulnerability
else
	db #$00 ; byrna does not grant invulnerability
endif
