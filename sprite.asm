!sprite_file ?= "birdfruit.2.zspr"

function get_char_code(char, hi) = select(and(greater(char, 64), lessequal(char, 64+26)), select(hi, char+$1C, char+$42), select(and(greater(char, 96), lessequal(char, 96+26)), select(hi, char-$20+$1C, char+$22), select(and(greaterequal(char, 48), less(char, 58)), select(hi, char-48+$53, char-48+$79), select(equal(char, 39), select(hi, $77, $9D), select(equal(char, 46), select(hi, $A0, $C0), select(equal(char, 47), select(hi, $A2, $C2), select(equal(char, 58), select(hi, $A3, $C3), select(equal(char, 95), select(hi, $A6, $C6), $9F))))))))

if getfilestatus("!sprite_file") != 0
	error "!sprite_file does not exist or cannot be read."
elseif getfilestatus("!sprite_file") == 0 && readfile4("!sprite_file", 0) != $5250535A
	error "!sprite_file is not ZSPR format."
else
	!gfx_offset #= readfile4("!sprite_file", 9)
	!palette_offset #= readfile4("!sprite_file", 15)

	!junk = 2
	!metadata_index = $1D
	while !metadata_index < !gfx_offset && !junk > 0
		!value #= readfile2("!sprite_file", !metadata_index, 0)
		if !value == 0
			!junk #= !junk-1
		endif
		!metadata_index #= !metadata_index+2
	endif

	!author_start #= !metadata_index

	!length = 0
	while !metadata_index < !gfx_offset && readfile1("!sprite_file", !metadata_index, 0) != 0 && !length < 28
		!length #= !length+1
		!metadata_index #= !metadata_index+1
	endif

	!padding #= (28-!length)/2

	org $238002+!padding
	!i = 0
	while !i < !length
		!value #= readfile1("!sprite_file", !author_start+!i)
		!processed #= get_char_code(!value, 1)
		db !processed
		!i #= !i+1
	endif

	org $238020+!padding
	!i = 0
	while !i < !length
		!value #= readfile1("!sprite_file", !author_start+!i)
		!processed #= get_char_code(!value, 0)
		db !processed
		!i #= !i+1
	endif

	org $108000
	incbin "!sprite_file":(!gfx_offset)-(!gfx_offset+$7000)

	org $1BD308
	incbin "!sprite_file":(!palette_offset)-(!palette_offset+120)

	org $1BEDF5
	incbin "!sprite_file":(!palette_offset+120)-(!palette_offset+120+4)
endif
