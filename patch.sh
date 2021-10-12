set -e

if [[ "$OSTYPE" == "msys" ]]; then
	COMMAND=asar.exe
else
	COMMAND=../z3randomizer/asar
fi

PATCHES=("sprite.asm" "quickswap.asm" "flashing.asm" "music.asm" "aga_fix.asm" "menuspeed" "heartbeep" "heartcolor")
DEFINES=()
for var in "$@"; do
	if [[ $var = --help ]]; then
		echo "USAGE: patch.sh <options> [asm_file, ...]"
		echo "Options:"
		echo "\t--sprite=SPRITE_FILE\toverride sprite file"
		echo "\t--quickswap=VALUE   \tturn on/off quickswap (1 = on, 0 = off)"
		echo "\t--flashing=VALUE    \tturn on/off flashing (0 = flashing disabled, 1 = flashing not disabled)"
		echo "\t--music=VALUE       \tturn on/off background music (1 = background music, 0 = no background music)"
		echo "\t--menuspeed=VALUE   \tchange menu speed (instant, fast, normal, slow)"
		echo "\t--heartbeep=VALUE   \tchange speed of low health beep (off, quarter, half, noraml, double)"
		echo "\t--heartcolor=VALUE  \tchange color of in-game hearts (red, green, yellow, blue)"
		exit 1
	elif [[ $var = --* ]]; then
		var=${var#"--"}
		DEFINES+=(-D$var)
	elif [[ -f "$var" ]]; then
		OUTPUT="${OUTPUT:-output/$(basename $var .asm).sfc}"
		PATCHES+=($var)
	else
		echo file \"$var\" not found
		echo "USAGE: patch.sh <options> [asm_file, ...]"
		exit 1
	fi
done
OUTPUT="${OUTPUT:-output/quickswap.sfc}"

cp ../working.sfc $OUTPUT
for var in ${PATCHES[@]}; do
	$COMMAND ${DEFINES[@]} $var $OUTPUT
done
