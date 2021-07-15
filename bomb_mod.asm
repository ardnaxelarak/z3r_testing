;--------------------------------------------------------------------------------
org $308040 ; PC 0x180040
db #$01 ; PreopenCurtains
;--------------------------------------------------------------------------------
org $308041 ; PC 0x180041
db #$02 ; AllowSwordlessMedallionUse (always)
;--------------------------------------------------------------------------------
org $308043 ; PC 0x180043
db #$00 ; StartingSword
;--------------------------------------------------------------------------------
org $308090 ; PC 0x180090 - 0x180097
db #$00 ; ProgressiveSwordLimit
db #$47 ; ProgressiveSwordReplacement ($47 = 20 Rupees)
;--------------------------------------------------------------------------------
org $30802F ; PC 0x18002F
db #$01 ; SpecialBombs
;--------------------------------------------------------------------------------
org $308034
db #00 ; starting max bombs = 0
;--------------------------------------------------------------------------------
org $05DF45 ; PC 0x2DF45
db #$B1 ; L1 Bombs at Uncle

org $01E971 ; PC 0xE971
db #$04 ; L1 shield at Secret Passage

org $0589B0 ; PC 0x289B0 ; sprite_master_sword.asm : 179
db #$B2 ; L2 Bombs on Pedestal

org $30802A ; PC 0x18002A
db #$B3 ; L3 Bombs at Smith

org $06B55C ; PC 0x3355C ; sprite_smithy_bros.asm : 634
db #$B3 ; L3 Bombs at Smith

org $308028 ; PC 0x180028
db #$B4 ; L4 Bombs at Fairy
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
org $068051
db #$DB ; fish merchant 10-bomb drop -> red rupee
;--------------------------------------------------------------------------------
org $0681F8
db #$D9 ; pot single bombs -> green rupees
org $0681FD
db #$D9
org $068224
db #$04 ; width offset for pot bombs
org $068229
db #$04
;--------------------------------------------------------------------------------
; enemy drops
org $06FA90
db $D9, $D9, $D9, $DA, $D9, $D9, $DB, $D9
org $06FAA5
db $D9
org $06FAAC
db $DB
;--------------------------------------------------------------------------------
; bonk rocks
org $09CC4A
db $D9
org $09D028
db $D9
org $09D397
db $D9
org $09D3AE
db $DB
org $09D56A
db $DA
;--------------------------------------------------------------------------------
; shovel spawn table
org $308118
db $D9, $D9, $D9, $D9, $D9 ; 1 Bomb -> Green Rupee
db $DA, $DA, $DA, $DA, $DA ; 4 Bombs -> Blue Rupee
db $DB, $DB, $DB, $DB, $DB ; 10 Bombs -> Red Rupee
;--------------------------------------------------------------------------------
org $01EDA7
db $35 ; DW chest game -> blue rupee
;--------------------------------------------------------------------------------
org $1DCB54
LDA #$00 : NOP #2 ; thief doesn't steal bombs
org $1E8D80
LDA #$00 : NOP #2 ; pikit doesn't steal bombs
;--------------------------------------------------------------------------------
org $30B04F
if defined("starting_bombs")
	db #!starting_bombs
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
