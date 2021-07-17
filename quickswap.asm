!quickswap ?= 1

org $30804B
if !quickswap
	db #$01 ; quickswap enabled
else
	db #$00 ; quickswap disabled
endif
