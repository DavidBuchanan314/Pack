#!/bin/bash

SQLITE_URL="https://www.sqlite.org/2024/sqlite-src-3450100.zip"


# fail loudly
set -euxo pipefail

# cd to script dir
cd "$(dirname "$0")"

curl $SQLITE_URL > sqlite.zip

# clear out old source
rm -rf ../Libraries/SQLite3/Build/sqlite/
mkdir -p ../Libraries/SQLite3/Build/sqlite/

# standard unzip doesn't support --strip-components
bsdtar xvf sqlite.zip --strip-components=1 -C ../Libraries/SQLite3/Build/sqlite/

# build
pushd ../Libraries/SQLite3/Build/
source Build.sh
popd
mkdir -p ../Libraries/SQLite3/x86_64-linux/
mv ../Libraries/SQLite3/Build/libsqlite3pack.o ../Libraries/SQLite3/x86_64-linux/
