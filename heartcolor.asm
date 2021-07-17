!heartcolor ?= "red"

if stringsequal("!heartcolor", "blue")
	!colorbyte = $2C
elseif stringsequal("!heartcolor", "yellow")
	!colorbyte = $28
elseif stringsequal("!heartcolor", "green")
	!colorbyte = $3C
else
	!colorbyte = $24
endif

org $0DFA1E
db !colorbyte

org $0DFA20
db !colorbyte

org $0DFA22
db !colorbyte

org $0DFA24
db !colorbyte

org $0DFA26
db !colorbyte

org $0DFA28
db !colorbyte

org $0DFA2A
db !colorbyte

org $0DFA2C
db !colorbyte

org $0DFA2E
db !colorbyte

org $0DFA30
db !colorbyte
