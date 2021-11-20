#!/bin/sh

SCRIPT_PATH="$(cd $(dirname ${0}) && pwd)"

FILE="${SCRIPT_PATH}/test.txt"
# This function wites the message to a file passed as the second argument
write_to_file () {
	local text="${1}"
	local DEST="${2}"
	echo "${text}" > ${DEST}
}

sleep_forever () {
	echo "Running forever ..."
	while :
        do
        	sleep 1
        done
}

main () {
	echo "Writing hello to ${FILE}"
	write_to_file "hello" "${FILE}"
	echo "cat'ing  ${FILE}"
	cat  ${FILE}

	sleep_forever

}


main 

