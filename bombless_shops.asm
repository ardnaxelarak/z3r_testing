org $30C800 ; PC 0x184800 - 0x1848FF - max 32 shops
ShopTable:
;db [id][roomID-low][roomID-high][doorID][zero][shop_config][shopkeeper_config][sram_index]
db $01, $15, $01, $5D, $00, $11, $04, $00 ; capacity fairy
db $02, $0F, $01, $74, $00, $02, $C1, $01 ; dark lake hylia shop
db $03, $10, $01, $75, $00, $03, $C1, $03 ; red shield shop
db $04, $0F, $01, $57, $00, $02, $C1, $06 ; dark lumberjack shop
db $05, $0F, $01, $60, $00, $02, $C1, $08 ; voo shop
db $06, $0F, $01, $6F, $00, $02, $C1, $0A ; dark potion shop
db $07, $12, $01, $6E, $00, $02, $C1, $0C ; dark death mountain shop
db $08, $1F, $01, $46, $00, $02, $A0, $0E ; kakariko shop
db $09, $12, $01, $58, $00, $02, $A0, $10 ; lake hylia shop
db $0A, $FF, $00, $00, $00, $42, $A0, $12 ; paradox cave shop
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

org $30C900 ; PC 0x184900 - 0x184FFF - max 224 entries
ShopContentsTable:
;db [id][item][price-low][price-high][max][repl_id][repl_price-low][repl_price-high]
db $01, $53, $64, $00, $07, $FF, $00, $00 ; +5 arrows
db $02, $2E, $96, $00, $00, $FF, $00, $00 ; red potion refill
db $02, $04, $32, $00, $00, $FF, $00, $00 ; blue shield
db $03, $05, $F4, $01, $00, $FF, $00, $00 ; red shield
db $03, $0E, $0A, $00, $00, $FF, $00, $00 ; bee
db $03, $44, $1E, $00, $00, $FF, $00, $00 ; 10 arrows
db $04, $2E, $96, $00, $00, $FF, $00, $00 ; red potion refill
db $04, $04, $32, $00, $00, $FF, $00, $00 ; blue shield
db $05, $2E, $96, $00, $00, $FF, $00, $00 ; red potion refill
db $05, $04, $32, $00, $00, $FF, $00, $00 ; blue shield
db $06, $2E, $96, $00, $00, $FF, $00, $00 ; red potion refill
db $06, $04, $32, $00, $00, $FF, $00, $00 ; blue shield
db $07, $2E, $96, $00, $00, $FF, $00, $00 ; red potion refill
db $07, $42, $0A, $00, $00, $FF, $00, $00 ; small heart
db $08, $2E, $96, $00, $00, $FF, $00, $00 ; red potion refill
db $08, $42, $0A, $00, $00, $FF, $00, $00 ; small heart
db $09, $2E, $96, $00, $00, $FF, $00, $00 ; red potion refill
db $09, $42, $0A, $00, $00, $FF, $00, $00 ; small heart
db $0A, $2E, $96, $00, $00, $FF, $00, $00 ; red potion refill
db $0A, $42, $0A, $00, $00, $FF, $00, $00 ; small heart
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

org $0689DE ; no regular bombs in bomb shop
LDA #$FF : NOP #2

org $068A27 ; center big bomb horizontally
SBC #$2C
org $068A36 ; center big bomb vertically
SBC #$1A

org $1CA420
db $B0, $B8, $FF, $B4, $B2, $B5, $B5                                         ; GO KILL
db $F8, $B4, $B1, $B8, $B5, $AD, $BC, $BD, $AA, $BB, $AE, $FF, $AA, $B7, $AD ; KHOLDSTARE AND
db $F9, $BF, $B2, $BD, $BB, $AE, $B8, $BE, $BC, $C7                          ; VITREOUS
db $FB
padbyte $FF
pad $1CA44E

org $1CA44E
db $A1, $A0, $A0, $FF, $BB, $BE, $B9, $AE, $AE, $BC, $FF, $A1                ; 100 RUPEES 1
db $F8, $AB, $B2, $B0, $FF, $AB, $B8, $B6, $AB, $CD, $FF, $B0, $B8, $B8, $AD ; BIG BOMB. GOOD
db $F9, $AD, $AE, $AA, $B5, $BC, $FF, $AA, $B5, $B5, $FF, $AD, $AA, $C2, $C7 ; DEALS ALL DAY!
db $FB
padbyte $FF
pad $1CA493
