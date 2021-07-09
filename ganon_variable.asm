incsrc fast_ganon.asm
org $30802E
if not(defined("ganon_item"))
	db #$0C ; ganon vulnerable to hammer
else
	db #$!ganon_item
endif
