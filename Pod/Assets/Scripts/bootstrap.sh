#!/bin/sh

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${DIR}" ]]; then DIR="${PWD}"; fi
. "${DIR}/todo.sh"
. "${DIR}/user.sh"
. "${DIR}/iconVersioning.sh"
