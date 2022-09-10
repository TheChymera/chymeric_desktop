#!/usr/bin/env bash

function make_symlink {
	MY_PATH="${HOME}/${1}"
	if [[ -L "${MY_PATH}" ]]; then
		echo "${MY_PATH} is already a symlink, not doing anything to it."
	else
		mkdir -p $(dirname "${MY_PATH}")
		mv "${MY_PATH}" "${MY_PATH}_pre_chymeric_desktop_backup"
		ln -s "$(pwd)/${1}" "${MY_PATH}"
	fi
}
export -f make_symlink

pushd dummy_homedir
	find . -type f -name "*" -exec bash -c 'make_symlink "$0"' {} \;
popd
