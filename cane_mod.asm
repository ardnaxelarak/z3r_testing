!cane ?= "both"
;--------------------------------------------------------------------------------
org $308040 ; PC 0x180040
db $01 ; PreopenCurtains
;--------------------------------------------------------------------------------
org $308041 ; PC 0x180041
db $02 ; AllowSwordlessMedallionUse (always)
;--------------------------------------------------------------------------------
org $308043 ; PC 0x180043
db $00 ; StartingSword
;--------------------------------------------------------------------------------
org $308090 ; PC 0x180090 - 0x180097
db $00 ; ProgressiveSwordLimit
db $47 ; ProgressiveSwordReplacement ($47 = 20 Rupees)
;--------------------------------------------------------------------------------
org $30802F ; PC 0x18002F
if stringsequal("!cane", "blue")
  db $03 ; SpecialBlueCane
elseif stringsequal("!cane", "red")
  db $04 ; SpecialRedCane
elseif stringsequal("!cane", "both")
  db $05 ; SpecialBothCanes
endif
;--------------------------------------------------------------------------------
if stringsequal("!cane", "blue") || stringsequal("!cane", "both")
  org $08DC42 ; PC 0x45C42 - byrna magic usage (recurring)
  db $00, $00, $00 ; normal, 1/2, 1/4 magic
  org $08DCC7
  db $EA, $EA
  org $08DCCD
  db $81

  org $07B088 ; PC 0x3B09F - byrna magic usage (activate)
  db $00, $00, $00 ; normal, 1/2, 1/4 magic
  org $07B0A8
  db $EA, $EA
  org $07B0AE
  db $81

  org $30816B ; PC 0x18016B - byrna magic usage (hard-mode excluded zones)
  db $00, $00, $00 ; normal, 1/2, 1/4 magic
elseif stringsequal("!cane", "red") || stringsequal("!cane", "both")
  org $07B07C ; PC 0x3B09F - somaria magic usage
  db $00, $00, $00 ; normal, 1/2, 1/4 magic
  db $00, $00, $00 ; normal, 1/2, 1/4 magic
  org $07B0A8
  db $EA, $EA
  org $07B0AE
  db $81
endif
;--------------------------------------------------------------------------------
if stringsequal("!cane", "blue")
  org $0DFC51
  db $F5, $20, $F5, $20, $F5, $20, $F5, $20
  db $DC, $2C, $DD, $2C, $EC, $2C, $17, $2C
  db $DC, $2C, $DD, $2C, $EC, $2C, $18, $2C
  db $DC, $2C, $DD, $2C, $EC, $2C, $19, $2C
  db $DC, $2C, $DD, $2C, $EC, $2C, $1A, $2C
  db $DC, $2C, $DD, $2C, $EC, $2C, $1B, $2C
  org $0DFC81
  db $F5, $20, $F5, $20, $F5, $20, $F5, $20
  db $DC, $2C, $DD, $2C, $EC, $2C, $17, $2C
  db $DC, $2C, $DD, $2C, $EC, $2C, $18, $2C
  db $DC, $2C, $DD, $2C, $EC, $2C, $19, $2C
  db $DC, $2C, $DD, $2C, $EC, $2C, $1A, $2C
  db $DC, $2C, $DD, $2C, $EC, $2C, $1B, $2C
elseif stringsequal("!cane", "red")
  org $0DFC51
  db $F5, $20, $F5, $20, $F5, $20, $F5, $20
  db $DC, $24, $DD, $24, $EC, $24, $17, $24
  db $DC, $24, $DD, $24, $EC, $24, $18, $24
  db $DC, $24, $DD, $24, $EC, $24, $19, $24
  db $DC, $24, $DD, $24, $EC, $24, $1A, $24
  db $DC, $24, $DD, $24, $EC, $24, $1B, $24
  org $0DFC81
  db $F5, $20, $F5, $20, $F5, $20, $F5, $20
  db $DC, $24, $DD, $24, $EC, $24, $17, $24
  db $DC, $24, $DD, $24, $EC, $24, $18, $24
  db $DC, $24, $DD, $24, $EC, $24, $19, $24
  db $DC, $24, $DD, $24, $EC, $24, $1A, $24
  db $DC, $24, $DD, $24, $EC, $24, $1B, $24
elseif stringsequal("!cane", "both")
  org $0DFC51
  db $F5, $20, $F5, $20, $F5, $20, $F5, $20
  db $DC, $28, $DD, $28, $EC, $28, $17, $28
  db $DC, $28, $DD, $28, $EC, $28, $18, $28
  db $DC, $28, $DD, $28, $EC, $28, $19, $28
  db $DC, $28, $DD, $28, $EC, $28, $1A, $28
  db $DC, $28, $DD, $28, $EC, $28, $1B, $28
  org $0DFC81
  db $F5, $20, $F5, $20, $F5, $20, $F5, $20
  db $DC, $28, $DD, $28, $EC, $28, $17, $28
  db $DC, $28, $DD, $28, $EC, $28, $18, $28
  db $DC, $28, $DD, $28, $EC, $28, $19, $28
  db $DC, $28, $DD, $28, $EC, $28, $1A, $28
  db $DC, $28, $DD, $28, $EC, $28, $1B, $28
endif
;--------------------------------------------------------------------------------
org $05DF45 ; PC 0x2DF45
; db $B7 ; Progressive Cane at Uncle
db $BC

org $01E971 ; PC 0xE971
db $04 ; L1 shield at Secret Passage

org $0589B0 ; PC 0x289B0 ; sprite_master_sword.asm : 179
; db $B7 ; Progressive Cane on Pedestal
db $BC

org $30802A ; PC 0x18002A
; db $B7 ; Progressive Cane at Smith
db $BC

org $06B55C ; PC 0x3355C ; sprite_smithy_bros.asm : 634
; db $B7 ; Progressive Cane at Smith
db $BC

org $308028 ; PC 0x180028
; db $B7 ; Progressive Cane at Fairy
db $BC

org $01E980 ; PC 0x00E980
; db $B7 ; Progressive Cane at Fairy chest
db $BC
;--------------------------------------------------------------------------------
; remove uncle shield
org $0DD253
db $00, $00, $F6, $FF, $00, $0E
org $0DD25B
db $00, $00, $F6, $FF, $00, $0E
org $0DD283
db $00, $00, $F6, $FF, $00, $0E
org $0DD28B
db $00, $00, $F7, $FF, $00, $0E
org $0DD2CB
db $00, $00, $F6, $FF, $02, $0E
org $0DD2FB
db $00, $00, $F7, $FF, $02, $0E
org $0DD313
db $00, $00, $E4, $FF, $08, $0E
;--------------------------------------------------------------------------------
; remove uncle sword
org $0DD263
db $00, $00, $F6, $FF, $00, $0E
org $0DD26B
db $00, $00, $F6, $FF, $00, $0E
org $0DD293
db $00, $00, $F6, $FF, $00, $0E
org $0DD29B
db $00, $00, $F7, $FF, $00, $0E
org $0DD2B3
db $00, $00, $F6, $FF, $02, $0E
org $0DD2BB
db $00, $00, $F6, $FF, $02, $0E
org $0DD2E3
db $00, $00, $F7, $FF, $02, $0E
org $0DD2EB
db $00, $00, $F7, $FF, $02, $0E
org $0DD31B
db $00, $00, $E4, $FF, $08, $0E
org $0DD323
db $00, $00, $E4, $FF, $08, $0E
;--------------------------------------------------------------------------------
org $30B04F
if defined("starting_cane")
	db !starting_cane
elseif stringsequal("!cane", "both")
	db $01
else
	db $00
endif
;--------------------------------------------------------------------------------
; text fixes to refer to master bombs instead of master sword
org $1C8317
db $FF
org $1C8320
db $AB, $B8, $B6, $AB, $BC
org $1CA168
db $AB, $B8, $B6, $AB, $BC
org $1CA1B2
db $AB, $B8, $B6, $AB, $BC
;--------------------------------------------------------------------------------
; ganon dialog
org $1CB7E3
db $B7, $B8, $FF, $AE, $C1, $B9, $B5, $B8, $BC, $B2, $BF, $AE, $BC, $C6
db $F8, $AD, $B2, $B7, $B0, $BE, $BC, $C7, $FB, $FF

org $1CB84E
db $AE, $C1, $B9, $B5, $B8, $BC, $B2, $BF, $AE, $BC, $C7, $FF, $FF, $FF
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

