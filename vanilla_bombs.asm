incsrc bomb_mod.asm
incsrc bombless_shops.asm
incsrc standard.asm
incsrc unseeded_rng.asm

;--------------------------------------------------------------------------------
; 300 rupees in brewery
org $01E9EC
db $46
;--------------------------------------------------------------------------------
; opening intro text change
table "dialogcharmap.txt"
org $1CA212
db "WITH BOMBS"

org $1CA2CE
db "GANON HAS  "
db $F6
db "REPLACED ALL"
db $F6
db "YOUR SWORDS"
db $F6
db "WITH BOMBS."
db $FE, $78, $07, $F6

db "YOU WILL HAVE"
db $F6
db "TO DEFEAT"
db $F6
db "EVERYTHING,"
db $F6
db "EVEN GANON,"
db $F6
db "WITH BOMBS."
db $FE, $78, $07, $F6

;--------------------------------------------------------------------------------
; uncle text change
table "dialogcharmap.txt"
org $1C80B2
db "DON'T WORRY."
db $F8
db "I GOT THIS   "
db $F9
db "COVERED.     "
;--------------------------------------------------------------------------------
; text fixes to refer to master bombs instead of master sword
table "dialogcharmap.txt"
org $1C8317
db " "
org $1C8320
db "BOMBS"
org $1CA168
db "BOMBS"
org $1CA1B2
db "BOMBS"
;--------------------------------------------------------------------------------
; Blind dialog
table "dialogcharmap.txt"
org $1CA53D
db "A SELFISH"
db $F8
db "BOMB?"
db $F9
db "   MINE."
;--------------------------------------------------------------------------------
; ganon dialog
table "dialogcharmap.txt"
org $1CB7E3
db "NO EXPLOSIVES?"
db $F8
db "DINGUS!  "

org $1CB84E
db "EXPLOSIVES!   "
;--------------------------------------------------------------------------------
; triforce room
table "dialogcharmap.txt"
org $1CB146
db "BOOM"
;--------------------------------------------------------------------------------
; and the master bombs sleep again
org $30986C
db $1B, $28, $26, $1B, $2C
org $309875
db $9F, $4A, $43, $3C, $3C, $47
;--------------------------------------------------------------------------------
; change stats in credits
table "creditscharmapbighi.txt"
org $23803E
db "FIRST BOMBS                 "

table "creditscharmapbiglo.txt"
org $23805C
db "FIRST BOMBS                 "

table "creditscharmapbighi.txt"
org $23807A
db "BOMBLESS                 /13"

table "creditscharmapbiglo.txt"
org $238098
db "BOMBLESS                 /13"

table "creditscharmapbighi.txt"
org $2380B6
db "FIGHTER'S BOMBS          /13"

table "creditscharmapbiglo.txt"
org $2380D4
db "FIGHTER'S BOMBS          /13"

table "creditscharmapbighi.txt"
org $2380F2
db "MASTER BOMBS             /13"

table "creditscharmapbiglo.txt"
org $238110
db "MASTER BOMBS             /13"

table "creditscharmapbighi.txt"
org $23812E
db "TEMPERED BOMBS           /13"

table "creditscharmapbiglo.txt"
org $23814C
db "TEMPERED BOMBS           /13"

table "creditscharmapbighi.txt"
org $23816A
db "GOLD BOMBS               /13"

table "creditscharmapbiglo.txt"
org $238188
db "GOLD BOMBS               /13"
;--------------------------------------------------------------------------------
org $308215 ; PC 0x180215
db $03, $03, $03, $03, $03 ; SeedHash -- BOMBS
;--------------------------------------------------------------------------------
