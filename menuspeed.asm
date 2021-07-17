!menuspeed ?= "normal"

org $308048
if stringsequal("!menuspeed", "instant")
	db #$E8
elseif stringsequal("!menuspeed", "fast")
	db #$10
elseif stringsequal("!menuspeed", "slow")
	db #$04
else
	db #$08 ; default
endif

