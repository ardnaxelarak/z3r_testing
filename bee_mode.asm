;--------------------------------------------------------------------------------
org $30802F ; PC 0x18002F
db #$06 ; BeeMode
;--------------------------------------------------------------------------------
org $308040 ; PC 0x180040
db #$01 ; PreopenCurtains
;--------------------------------------------------------------------------------
org $308041 ; PC 0x180041
db #$02 ; AllowSwordlessMedallionUse (always)
;--------------------------------------------------------------------------------
org $1EB99E
db #$00 ; arrghus poofs should not become invulnerable
org $0DB3E6
db #$0D ; arrghus poofs should not start invulnerable
org $0DB123
db #$00 ; Kholdstare shell targetable by bees
;--------------------------------------------------------------------------------
org $308090 ; PC 0x180090 - 0x180097
db #$00 ; ProgressiveSwordLimit
db #$47 ; ProgressiveSwordReplacement ($47 = 20 Rupees)
;--------------------------------------------------------------------------------
org $06ED7F
db $FF ; hammer
org $08BBD4
db $FF ; powder
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
