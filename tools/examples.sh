#!/usr/bin/sh

if [ ! -d "examples" ]; then
	>&2 echo "can't find examples directory"
	exit 1
fi

if [ ! -e "tack" ]; then
	>&2 echo "can't find tack compiler"
	exit 1
fi

for file in examples/*.tack; do
	echo "compiling $file"
	./tack $file
done
