#/usr/bin/env bash
changed_files="$(git --git-dir ../../.git diff-tree -r --name-only --no-commit-id ORIG_HEAD HEAD)"

check_run() {
  echo "$changed_files" | grep --quiet "$1" && eval "$2"
}
# package.json
check_run package.json "yarn install"