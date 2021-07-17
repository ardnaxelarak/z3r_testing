!flashing ?= 0

org $30817F
if !flashing
	db #$00 ; flashing not disabled
else
	db #$01 ; flashing disabled
endif
