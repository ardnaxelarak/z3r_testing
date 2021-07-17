!heartbeep ?= "half"

org $308033
if stringsequal("!heartbeep", "off")
	db #$00
elseif stringsequal("!heartbeep", "half")
	db #$40
elseif stringsequal("!heartbeep", "quarter")
	db #$80
elseif stringsequal("!heartbeep", "double")
	db #$10
else
	db #$20 ; normal
endif


