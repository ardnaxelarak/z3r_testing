#!/usr/bin/ruby

$special = {
	' ' => [0xFF],
	'?' => [0xC6],
	'!' => [0xC7],
	',' => [0xC8],
	'-' => [0xC9],
	"…" => [0xCC],
	'.' => [0xCD],
	'~' => [0xCE],
	"'" => [0xD8],
	"’" => [0xD8],
	"@" => [0xFE, 0x6A], # link's name compressed
	">" => [0xD2, 0xD3], # link face
	"%" => [0xDD], # Hylian Bird
	"^" => [0xDE], # Hylian Ankh
	"=" => [0xDF], # Hylian Wavy lines
	"↑" => [0xE0],
	"↓" => [0xE1],
	"→" => [0xE2],
	"←" => [0xE3],
	"≥" => [0xE4], # cursor
	"¼" => [0xE5, 0xE7], # ¼ heart
	"½" => [0xE6, 0xE7], # ½ heart
	"¾" => [0xE8, 0xE9], # ¾ heart
	"♥" => [0xEA, 0xEB], # full heart
}

def convert_char(let)
	return [let.ord - 65 + 0xAA] if let.match(/[A-Z]/)
	return [let.to_i + 0xA0] if let.match(/[0-9]/)
	return $special[let] if $special[let]
end

def convert_string(string)
	return string.chars.map{|let| convert_char(let)}.flatten
end

input = ARGV.join(" ")
puts convert_string(input).map{|char| "%02X" % char}.join(" ")
