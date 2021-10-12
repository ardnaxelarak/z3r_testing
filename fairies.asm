; fix items in pyramid fairy
org $01E980
db $03 ; gold sword

org $01E983
db $3B ; silver arrows

; reshape waterfall fairy room
org $03F714
incbin waterfall_fairy.bin

; set chests
org $01E9AE
db $14, $01

org $01E9CF
db $14, $01

; set items in chests
org $01E9B0
db $05 ; red shield

org $01E9D1
db $2A ; red boomerang
