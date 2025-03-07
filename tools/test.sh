#!/usr/bin/sh

if [ ! -d "tests" ]; then
	>&2 echo "can't find tests directory"
	exit 1
fi

if [ ! -e "tack" ]; then
	>&2 echo "can't find tack compiler"
	exit 1
fi

for file in tests/*.tack; do
	./tack $file
	if [ $? -ne 0 ]; then
		>&2 echo "$file compilation failed"
		exit $?
	else
		echo "compiling $file succeeded"
	fi
	basefile=${file%.*}
	if [ $? -eq 0 ]; then
		echo "test $basefile succeeded"
		rm $basefile
	else
		>&2 echo "test $basefile failed"
		rm $basefile
		exit $?
	fi
done
