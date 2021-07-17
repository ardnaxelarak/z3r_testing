!music ?= 1

org $30821A
if !music
	db #$00 ; music not disabled
else
	db #$01 ; music disabled
endif
