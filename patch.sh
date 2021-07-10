set -e

if [[ "$OSTYPE" == "msys" ]]; then
	COMMAND=asar.exe
else
	COMMAND=../z3randomizer/asar
fi

PATCHES=("no_flash.asm" "quickswap.asm")
DEFINES=()
for var in "$@"; do
	if [[ $var = --* ]]; then
		var=${var#"--"}
		DEFINES+=(-D$var)
	elif [[ -f "$var" ]]; then
		OUTPUT="${OUTPUT:-output/$(basename $var .asm).sfc}"
		PATCHES+=($var)
	else
		echo file \"$var\" not found
		echo "USAGE: patch.sh [asm_file, ...]"
		exit 1
	fi
done
OUTPUT="${OUTPUT:-output/quickswap.sfc}"

cp ../working.sfc $OUTPUT
for var in ${PATCHES[@]}; do
	$COMMAND $DEFINES $var $OUTPUT
done
