set -e

if [ -z "$1" ]; then
  echo "USAGE: patch.sh asm_file [asm_file, ...]"
  exit 1
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
		exit 1
	fi
done
OUTPUT="${OUTPUT:-output/quickswap.sfc}"

cp ../working.sfc $OUTPUT
for var in ${PATCHES[@]}; do
	../z3randomizer/asar $DEFINES $var $OUTPUT
done
