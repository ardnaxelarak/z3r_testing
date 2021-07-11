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
org $308028 ; PC 0x180028
db #$B5 ; FairySword

org $0589B0 ; PC 0x289B0 ; sprite_master_sword.asm : 179
db #$B5 ; PedestalSword

org $05DF45 ; PC 0x2DF45
db #$B5 ; Uncle

org $30802A ; PC 0x180029 - 0x18002A
db #$B5 ; SmithItem

org $06B55C ; PC 0x3355C ; sprite_smithy_bros.asm : 634
db #$B5 ; SmithSword
;--------------------------------------------------------------------------------
org $30804D
db #$22 ; always infinite bombs
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
org $09CC4A
db #$D9 ; bonk rocks in dark graveyard bomb -> green rupee
;--------------------------------------------------------------------------------
org $01EDA7
db #$35 ; DW chest game -> blue rupee
;--------------------------------------------------------------------------------
org $1DCB54
LDA #$00 : NOP #2 ; thief doesn't steal bombs
org $1E8D80
LDA #$00 : NOP #2 ; pikit doesn't steal bombs
;--------------------------------------------------------------------------------
