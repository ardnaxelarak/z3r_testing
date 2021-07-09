set -e

if [ -z "$1" ]; then
  echo "USAGE: patch.sh asm_file [asm_file, ...]"
  exit 1
fi

output="output/$(basename $1 .asm).sfc"
cp ../working.sfc $output
patches=("no_flash.asm" "quickswap.asm")
defines=()
for var in "$@"; do
	if [[ $var = --* ]]; then
		var=${var#"--"}
		defines+=(-D$var)
	elif [[ -f "$var" ]]; then
		patches+=($var)
	else
		echo file \"$var\" not found
		exit 1
	fi
done
for var in ${patches[@]}; do
	../z3randomizer/asar $defines $var $output
done
