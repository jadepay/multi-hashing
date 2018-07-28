#include "jad8.h"
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

#include "sha3/sph_bmw.h"
#include "sha3/sph_jh.h"
#include "sha3/sph_keccak.h"
#include "sha3/sph_skein.h"
#include "sha3/sph_luffa.h"
#include "sha3/sph_shavite.h"
#include "sha3/sph_simd.h"
#include "sha3/sph_echo.h"


void jad8_hash(const char* input, char* output, uint32_t len)
{
   
    sph_bmw512_context       ctx_bmw;
    sph_skein512_context     ctx_skein;
    sph_jh512_context        ctx_jh;
    sph_keccak512_context    ctx_keccak;

    sph_luffa512_context		ctx_luffa1;
    sph_shavite512_context		ctx_shavite1;
    sph_simd512_context		ctx_simd1;
    sph_echo512_context		ctx_echo1;

    //these uint512 in the c++ source of the client are backed by an array of uint32
    uint32_t hashA[16], hashB[16];	

    sph_skein512_init(&ctx_skein);
    sph_skein512 (&ctx_skein, input, len);
    sph_skein512_close (&ctx_skein, hashA);

    sph_jh512_init(&ctx_jh);
    sph_jh512 (&ctx_jh, hashA, 64);
    sph_jh512_close(&ctx_jh, hashB);

    sph_keccak512_init(&ctx_keccak);
    sph_keccak512 (&ctx_keccak, hashB, 64);
    sph_keccak512_close(&ctx_keccak, hashA);

    sph_bmw512_init(&ctx_bmw);
    sph_bmw512 (&ctx_bmw, hashA, 64);
    sph_bmw512_close(&ctx_bmw, hashB);
	
    sph_luffa512_init (&ctx_luffa1);
    sph_luffa512 (&ctx_luffa1, hashB, 64);
    sph_luffa512_close (&ctx_luffa1, hashA);	
	
    sph_echo512_init (&ctx_echo1); 
    sph_echo512 (&ctx_echo1, hashA, 64);   
    sph_echo512_close(&ctx_echo1, hashB); 
  
    sph_simd512_init (&ctx_simd1); 
    sph_simd512 (&ctx_simd1, hashB, 64);   
    sph_simd512_close(&ctx_simd1, hashA);
	
    sph_shavite512_init (&ctx_shavite1);
    sph_shavite512 (&ctx_shavite1, hashA, 64);   
    sph_shavite512_close(&ctx_shavite1, hashB);  
		

    memcpy(output, hashB, 32);
	
}

