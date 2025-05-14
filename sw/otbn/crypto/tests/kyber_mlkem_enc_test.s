/* Copyright "Towards ML-KEM & ML-DSA on OpenTitan" Authors */
/* Licensed under the Apache License, Version 2.0, see LICENSE for details. */
/* SPDX-License-Identifier: Apache-2.0 */

/*
 * Testwrapper for kyber_mlkem_enc
*/

.section .text.start

#define STACK_SIZE 20000
#define CRYPTO_BYTES 32

#if KYBER_K == 2
  #define CRYPTO_PUBLICKEYBYTES  800
  #define CRYPTO_SECRETKEYBYTES  1632
  #define CRYPTO_CIPHERTEXTBYTES 768
#elif KYBER_K == 3 
  #define CRYPTO_PUBLICKEYBYTES  1184
  #define CRYPTO_SECRETKEYBYTES  2400
  #define CRYPTO_CIPHERTEXTBYTES 1088
#elif KYBER_K == 4
  #define CRYPTO_PUBLICKEYBYTES  1568
  #define CRYPTO_SECRETKEYBYTES  3168
  #define CRYPTO_CIPHERTEXTBYTES 1568
#endif

/* Entry point. */
.globl main
main:
  /* Init all-zero register. */
  bn.xor  w31, w31, w31

  /* MOD <= dmem[modulus] = KYBER_Q */
  li      x5, 2
  la      x6, modulus
  bn.lid  x5, 0(x6)
  bn.wsrw 0x0, w2

  /* Load stack pointer */
  la   x2, stack_end
  la   x10, coins
  la   x11, ct
  la   x12, ss
  la   x13, ek
  jal  x1, crypto_kem_enc

  ecall

.data
.balign 32
.global stack
stack:
  .zero STACK_SIZE
stack_end:
.globl ct
ct:
  .zero CRYPTO_CIPHERTEXTBYTES
.globl ss
ss:
  .zero CRYPTO_BYTES

.balign 32
.globl coins
coins:
  .zero CRYPTO_BYTES
.globl ek
ek: 
  .zero CRYPTO_PUBLICKEYBYTES

/* Modulus: KYBER_Q = 3329 */
.globl modulus
modulus:
  .word 0x00000d01
  .word 0x00000000
  .word 0x00000000
  .word 0x00000000
  .word 0x00000000
  .word 0x00000000
  .word 0x00000000
  .word 0x00000000

.globl modulus_bn
modulus_bn:
  .word 0x0d010d01
  .word 0x0d010d01
  .word 0x0d010d01
  .word 0x0d010d01
  .word 0x0d010d01
  .word 0x0d010d01
  .word 0x0d010d01
  .word 0x0d010d01

.globl modulus_over_2
modulus_over_2:
  .word 0x06810681
  .word 0x06810681
  .word 0x06810681
  .word 0x06810681
  .word 0x06810681
  .word 0x06810681
  .word 0x06810681
  .word 0x06810681

.globl const_0x0fff
const_0x0fff:
  .word 0x0fff0fff
  .word 0x0fff0fff
  .word 0x0fff0fff
  .word 0x0fff0fff
  .word 0x0fff0fff
  .word 0x0fff0fff
  .word 0x0fff0fff
  .word 0x0fff0fff

.globl const_1290167
const_1290167:
  .word 0x0013afb7
  .word 0x00000000
  .word 0x00000000
  .word 0x00000000
  .word 0x00000000
  .word 0x00000000
  .word 0x00000000
  .word 0x00000000

.globl const_8
const_8:
  .word 0x00080008
  .word 0x00080008
  .word 0x00080008
  .word 0x00080008
  .word 0x00080008
  .word 0x00080008
  .word 0x00080008
  .word 0x00080008
  
.globl twiddles_ntt
twiddles_ntt:
    /* Layer 1--4 */ 
    .half 0x06c1
    .half 0x0a14
    .half 0x0cd9
    .half 0x0a52
    .half 0x0276
    .half 0x0769
    .half 0x0350
    .half 0x0426
    .half 0x077f
    .half 0x00c1
    .half 0x031d
    .half 0x0ae2
    .half 0x0cbc
    .half 0x0239
    .half 0x06d2
    /* Padding */
    .half 0x0000
    /* Layer 5 */
    .word 0x01280128
    .word 0x098f098f
    .word 0x053b053b
    .word 0x05c405c4
    .word 0x0be60be6
    .word 0x00380038
    .word 0x08c008c0
    .word 0x05350535
    .word 0x05920592
    .word 0x082e082e
    .word 0x02170217
    .word 0x0b420b42
    .word 0x09590959
    .word 0x0b3f0b3f
    .word 0x07b607b6
    .word 0x03350335
    /* Layer 6 */
    .word 0x01210121
    .word 0x0cb50cb5
    .word 0x04ad04ad
    .word 0x08e508e5
    .word 0x028a028a
    .word 0x09d109d1
    .word 0x0b310b31
    .word 0x05280528
    .word 0x014b014b
    .word 0x06dc06dc
    .word 0x09000900
    .word 0x08070807
    .word 0x07b907b9
    .word 0x02780278
    .word 0x00210021
    .word 0x077b077b
    .word 0x090f090f
    .word 0x03270327
    .word 0x059e059e
    .word 0x05fe05fe
    .word 0x0a570a57
    .word 0x05c905c9
    .word 0x09aa09aa
    .word 0x04cb04cb
    .word 0x059b059b
    .word 0x01c401c4
    .word 0x0b340b34
    .word 0x09620962
    .word 0x0a390a39
    .word 0x02880288
    .word 0x0c260c26
    .word 0x038e038e
    /* Layer 7 */
    .word 0x00110011
    .word 0x06650665
    .word 0x05810581
    .word 0x02f402f4
    .word 0x06a706a7
    .word 0x07370737
    .word 0x03ab03ab
    .word 0x02dd02dd
    .word 0x0ac90ac9
    .word 0x02d302d3
    .word 0x0a660a66
    .word 0x086c086c
    .word 0x06730673
    .word 0x03b803b8
    .word 0x09040904
    .word 0x09210921
    .word 0x02470247
    .word 0x08f008f0
    .word 0x0cd10cd1
    .word 0x0bc70bc7
    .word 0x0ae50ae5
    .word 0x05b505b5
    .word 0x09850985
    .word 0x010c010c
    .word 0x0a590a59
    .word 0x044c044c
    .word 0x00e900e9
    .word 0x0bea0bea
    .word 0x06fd06fd
    .word 0x0a7f0a7f
    .word 0x09540954
    .word 0x02810281
    .word 0x06300630
    .word 0x01770177
    .word 0x04270427
    .word 0x08330833
    .word 0x0af40af4
    .word 0x04770477
    .word 0x06ba06ba
    .word 0x083e083e
    .word 0x08fa08fa
    .word 0x09f509f5
    .word 0x013f013f
    .word 0x02310231
    .word 0x04440444
    .word 0x08660866
    .word 0x04bc04bc
    .word 0x0b770b77
    .word 0x07f507f5
    .word 0x082a082a
    .word 0x0ad50ad5
    .word 0x09a209a2
    .word 0x01930193
    .word 0x0ad70ad7
    .word 0x07520752
    .word 0x03750375
    .word 0x0c940c94
    .word 0x066d066d
    .word 0x02f502f5
    .word 0x0a220a22
    .word 0x04020402
    .word 0x03760376
    .word 0x04050405
    .word 0x086a086a

.globl twiddles_intt
twiddles_intt:
    /* Layer 7 */
    .word 0xf796f796
    .word 0xfbfbfbfb
    .word 0xfc8afc8a
    .word 0xfbfefbfe
    .word 0xf5def5de
    .word 0xfd0bfd0b
    .word 0xf993f993
    .word 0xf36cf36c
    .word 0xfc8bfc8b
    .word 0xf8aef8ae
    .word 0xf529f529
    .word 0xfe6dfe6d
    .word 0xf65ef65e
    .word 0xf52bf52b
    .word 0xf7d6f7d6
    .word 0xf80bf80b
    .word 0xf489f489
    .word 0xfb44fb44
    .word 0xf79af79a
    .word 0xfbbcfbbc
    .word 0xfdcffdcf
    .word 0xfec1fec1
    .word 0xf60bf60b
    .word 0xf706f706
    .word 0xf7c2f7c2
    .word 0xf946f946
    .word 0xfb89fb89
    .word 0xf50cf50c
    .word 0xf7cdf7cd
    .word 0xfbd9fbd9
    .word 0xfe89fe89
    .word 0xf9d0f9d0
    .word 0xfd7ffd7f
    .word 0xf6acf6ac
    .word 0xf581f581
    .word 0xf903f903
    .word 0xf416f416
    .word 0xff17ff17
    .word 0xfbb4fbb4
    .word 0xf5a7f5a7
    .word 0xfef4fef4
    .word 0xf67bf67b
    .word 0xfa4bfa4b
    .word 0xf51bf51b
    .word 0xf439f439
    .word 0xf32ff32f
    .word 0xf710f710
    .word 0xfdb9fdb9
    .word 0xf6dff6df
    .word 0xf6fcf6fc
    .word 0xfc48fc48
    .word 0xf98df98d
    .word 0xf794f794
    .word 0xf59af59a
    .word 0xfd2dfd2d
    .word 0xf537f537
    .word 0xfd23fd23
    .word 0xfc55fc55
    .word 0xf8c9f8c9
    .word 0xf959f959
    .word 0xfd0cfd0c
    .word 0xfa7ffa7f
    .word 0xf99bf99b
    .word 0xffefffef
    /* Layer 6 */
    .word 0xfc72fc72
    .word 0xf3daf3da
    .word 0xfd78fd78
    .word 0xf5c7f5c7
    .word 0xf69ef69e
    .word 0xf4ccf4cc
    .word 0xfe3cfe3c
    .word 0xfa65fa65
    .word 0xfb35fb35
    .word 0xf656f656
    .word 0xfa37fa37
    .word 0xf5a9f5a9
    .word 0xfa02fa02
    .word 0xfa62fa62
    .word 0xfcd9fcd9
    .word 0xf6f1f6f1
    .word 0xf885f885
    .word 0xffdfffdf
    .word 0xfd88fd88
    .word 0xf847f847
    .word 0xf7f9f7f9
    .word 0xf700f700
    .word 0xf924f924
    .word 0xfeb5feb5
    .word 0xfad8fad8
    .word 0xf4cff4cf
    .word 0xf62ff62f
    .word 0xfd76fd76
    .word 0xf71bf71b
    .word 0xfb53fb53
    .word 0xf34bf34b
    .word 0xfedffedf
    /* Layer 5 */
    .word 0xfccbfccb
    .word 0xf84af84a
    .word 0xf4c1f4c1
    .word 0xf6a7f6a7
    .word 0xf4bef4be
    .word 0xfde9fde9
    .word 0xf7d2f7d2
    .word 0xfa6efa6e
    .word 0xfacbfacb
    .word 0xf740f740
    .word 0xffc8ffc8
    .word 0xf41af41a
    .word 0xfa3cfa3c
    .word 0xfac5fac5
    .word 0xf671f671
    .word 0xfed8fed8
    /* Layer 4--2 */ 
    .half 0xf92e
    .half 0xfdc7
    .half 0xf344
    .half 0xf51e
    .half 0xfce3
    .half 0xff3f
    .half 0xf881
    .half 0xfbda
    .half 0xfcb0
    .half 0xf897
    .half 0xfd8a
    .half 0xf5ae
    .half 0xf327
    .half 0xf5ec
    /* Layer 1 */
    .half 0x068d
    /* 1/128 mod KYBER_Q */
    .half 0x0ce7

.globl twiddles_basemul
twiddles_basemul:
    .word 0x06650011
    .word 0xf99bffef
    .word 0x02d30ac9
    .word 0xfd2df537
    .word 0x08f00247
    .word 0xf710fdb9
    .word 0x044c0a59
    .word 0xfbb4f5a7

    .word 0x02f40581
    .word 0xfd0cfa7f
    .word 0x086c0a66
    .word 0xf794f59a
    .word 0x0bc70cd1
    .word 0xf439f32f
    .word 0x0bea00e9
    .word 0xf416ff17

    .word 0x073706a7
    .word 0xf8c9f959
    .word 0x03b80673
    .word 0xfc48f98d
    .word 0x05b50ae5
    .word 0xfa4bf51b
    .word 0x0a7f06fd
    .word 0xf581f903

    .word 0x02dd03ab
    .word 0xfd23fc55
    .word 0x09210904
    .word 0xf6dff6fc
    .word 0x010c0985
    .word 0xfef4f67b
    .word 0x02810954
    .word 0xfd7ff6ac

    .word 0x01770630
    .word 0xfe89f9d0
    .word 0x09f508fa
    .word 0xf60bf706
    .word 0x082a07f5
    .word 0xf7d6f80b
    .word 0x066d0c94
    .word 0xf993f36c

    .word 0x08330427
    .word 0xf7cdfbd9
    .word 0x0231013f
    .word 0xfdcffec1
    .word 0x09a20ad5
    .word 0xf65ef52b
    .word 0x0a2202f5
    .word 0xf5defd0b

    .word 0x04770af4
    .word 0xfb89f50c
    .word 0x08660444
    .word 0xf79afbbc
    .word 0x0ad70193
    .word 0xf529fe6d
    .word 0x03760402
    .word 0xfc8afbfe

    .word 0x083e06ba
    .word 0xf7c2f946
    .word 0x0b7704bc
    .word 0xf489fb44
    .word 0x03750752
    .word 0xfc8bf8ae
    .word 0x086a0405
    .word 0xf796fbfb
