cmd_Release/obj.target/multihashing/yescrypt/yescrypt-opt.o := cc '-DNODE_GYP_MODULE_NAME=multihashing' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DBUILDING_NODE_EXTENSION' -I/tmp/.node-gyp/8.2.0/include/node -I/tmp/.node-gyp/8.2.0/src -I/tmp/.node-gyp/8.2.0/deps/uv/include -I/tmp/.node-gyp/8.2.0/deps/v8/include -I../crypto -I../../nan  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer  -MMD -MF ./Release/.deps/Release/obj.target/multihashing/yescrypt/yescrypt-opt.o.d.raw   -c -o Release/obj.target/multihashing/yescrypt/yescrypt-opt.o ../yescrypt/yescrypt-opt.c
Release/obj.target/multihashing/yescrypt/yescrypt-opt.o: \
 ../yescrypt/yescrypt-opt.c ../yescrypt/sha256_Y.h \
 ../yescrypt/sysendian.h ../yescrypt/yescrypt-platform.c \
 ../yescrypt/yescrypt.h
../yescrypt/yescrypt-opt.c:
../yescrypt/sha256_Y.h:
../yescrypt/sysendian.h:
../yescrypt/yescrypt-platform.c:
../yescrypt/yescrypt.h:
