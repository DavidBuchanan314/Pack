#!/bin/bash
cd sqlite
./configure --enable-static --disable-shared --disable-math --disable-json --disable-memsys5 --disable-memsys3 --disable-fts3 --disable-fts4 --disable-fts5 --disable-update-limit --disable-geopoly --disable-rtree --disable-session --disable-gcov --disable-load-extension --disable-readline --disable-editline --disable-tcl --enable-tempstore=no --enable-releasemode --disable-threadsafe --disable-largefile --disable-libtool-lock
./lemon parse.y \
-DSQLITE_OMIT_ANALYZE \
-DSQLITE_OMIT_ATTACH \
-DSQLITE_OMIT_AUTHORIZATION \
-DSQLITE_OMIT_AUTOINCREMENT \
-DSQLITE_OMIT_AUTORESET \
-DSQLITE_OMIT_AUTOVACUUM \
-DSQLITE_OMIT_BLOB_LITERAL \
-DSQLITE_OMIT_BUILTIN_TEST \
-DSQLITE_OMIT_COMPILEOPTION_DIAGS \
-DSQLITE_OMIT_COMPLETE \
-DSQLITE_OMIT_DATETIME_FUNCS \
-DSQLITE_OMIT_DEPRECATED \
-DSQLITE_OMIT_DESERIALIZE \
-DSQLITE_OMIT_EXPLAIN \
-DSQLITE_OMIT_FOREIGN_KEY \
-DSQLITE_OMIT_GENERATED_COLUMNS \
-DSQLITE_OMIT_GET_TABLE \
-DSQLITE_OMIT_HEX_INTEGER \
-DSQLITE_OMIT_INCRBLOB \
-DSQLITE_OMIT_INTROSPECTION_PRAGMAS \
-DSQLITE_OMIT_JSON \
-DSQLITE_OMIT_LOAD_EXTENSION \
-DSQLITE_OMIT_LOCALTIME \
-DSQLITE_OMIT_LOOKASIDE \
-DSQLITE_OMIT_PAGER_PRAGMAS \
-DSQLITE_OMIT_PROGRESS_CALLBACK \
-DSQLITE_OMIT_REINDEX \
-DSQLITE_OMIT_SCHEMA_PRAGMAS \
-DSQLITE_OMIT_SCHEMA_VERSION_PRAGMAS \
-DSQLITE_OMIT_SHARED_CACHE \
-DSQLITE_OMIT_TCL_VARIABLE \
-DSQLITE_OMIT_TRACE \
-DSQLITE_OMIT_TRIGGER \
-DSQLITE_OMIT_TRUNCATE_OPTIMIZATION \
-DSQLITE_OMIT_UTF16 \
-DSQLITE_OMIT_VIEW \
-DSQLITE_OMIT_WAL

make sqlite3.c

gcc -static -s -c -O3 \
-DSQLITE_OMIT_ANALYZE \
-DSQLITE_OMIT_AUTHORIZATION \
-DSQLITE_OMIT_AUTOINCREMENT \
-DSQLITE_OMIT_AUTORESET \
-DSQLITE_OMIT_AUTOVACUUM \
-DSQLITE_OMIT_BLOB_LITERAL \
-DSQLITE_OMIT_BUILTIN_TEST \
-DSQLITE_OMIT_COMPILEOPTION_DIAGS \
-DSQLITE_OMIT_COMPLETE \
-DSQLITE_OMIT_DATETIME_FUNCS \
-DSQLITE_OMIT_DEPRECATED \
-DSQLITE_OMIT_DESERIALIZE \
-DSQLITE_OMIT_EXPLAIN \
-DSQLITE_OMIT_FOREIGN_KEY \
-DSQLITE_OMIT_GENERATED_COLUMNS \
-DSQLITE_OMIT_GET_TABLE \
-DSQLITE_OMIT_HEX_INTEGER \
-DSQLITE_OMIT_INCRBLOB \
-DSQLITE_OMIT_INTROSPECTION_PRAGMAS \
-DSQLITE_OMIT_SCHEMA_PRAGMAS \
-DSQLITE_OMIT_SCHEMA_VERSION_PRAGMAS \
-DSQLITE_OMIT_SHARED_CACHE \
-DSQLITE_OMIT_TCL_VARIABLE \
-DSQLITE_OMIT_TRACE \
-DSQLITE_OMIT_TRIGGER \
-DSQLITE_OMIT_TRUNCATE_OPTIMIZATION \
-DSQLITE_OMIT_UTF16 \
-DSQLITE_OMIT_VIEW \
-DSQLITE_OMIT_WAL \
-DSQLITE_OMIT_PROGRESS_CALLBACK \
-DSQLITE_OMIT_REINDEX \
-DSQLITE_OMIT_JSON \
-DSQLITE_OMIT_LOAD_EXTENSION \
-DSQLITE_OMIT_LOCALTIME \
-m64 -fpic sqlite3.c -o ../libsqlite3pack.o