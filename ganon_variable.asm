incsrc fast_ganon.asm
org $30802E
if defined("ganon_item")
	db #$!ganon_item
else
	db #$0C ; ganon vulnerable to hammer
endif
