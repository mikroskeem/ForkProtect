get_script_path () {
    # https://stackoverflow.com/a/246128
    local SOURCE="${BASH_SOURCE[0]}"
    local DIR=""
    while [ -h "$SOURCE" ]; do
        DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
        SOURCE="$(readlink "$SOURCE")"
        [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
    done
    echo -n "$( cd -P "$( dirname "$SOURCE" )" && pwd )"
}

verify_shasum () {
    true
}

download_file () {
    curl "${1}" -o "${2}"
}
