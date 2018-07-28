#ifndef JAD8_H
#define JAD8_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

void jad8_hash(const char* input, char* output, uint32_t len);

#ifdef __cplusplus
}
#endif

#endif
