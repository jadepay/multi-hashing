cmd_Release/obj.target/multihashing/boolberry.o := g++ '-DNODE_GYP_MODULE_NAME=multihashing' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DBUILDING_NODE_EXTENSION' -I/tmp/.node-gyp/8.2.0/include/node -I/tmp/.node-gyp/8.2.0/src -I/tmp/.node-gyp/8.2.0/deps/uv/include -I/tmp/.node-gyp/8.2.0/deps/v8/include -I../crypto -I../../nan  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -fno-rtti -fno-exceptions -std=gnu++0x -std=c++11 -MMD -MF ./Release/.deps/Release/obj.target/multihashing/boolberry.o.d.raw   -c -o Release/obj.target/multihashing/boolberry.o ../boolberry.cc
Release/obj.target/multihashing/boolberry.o: ../boolberry.cc \
 ../boolberry.h ../crypto/cryptonote_core/cryptonote_format_utils.h \
 ../crypto/cryptonote_core/../hash.h \
 ../crypto/cryptonote_core/../hash-ops.h \
 ../crypto/cryptonote_core/../wild_keccak.h
../boolberry.cc:
../boolberry.h:
../crypto/cryptonote_core/cryptonote_format_utils.h:
../crypto/cryptonote_core/../hash.h:
../crypto/cryptonote_core/../hash-ops.h:
../crypto/cryptonote_core/../wild_keccak.h:
