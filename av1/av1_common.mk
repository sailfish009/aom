##
## Copyright (c) 2016, Alliance for Open Media. All rights reserved
##
## This source code is subject to the terms of the BSD 2 Clause License and
## the Alliance for Open Media Patent License 1.0. If the BSD 2 Clause License
## was not distributed with this source code in the LICENSE file, you can
## obtain it at www.aomedia.org/license/software. If the Alliance for Open
## Media Patent License 1.0 was not distributed with this source code in the
## PATENTS file, you can obtain it at www.aomedia.org/license/patent.
##

AV1_COMMON_SRCS-yes += av1_common.mk
AV1_COMMON_SRCS-yes += av1_iface_common.h
AV1_COMMON_SRCS-yes += common/alloccommon.c
AV1_COMMON_SRCS-yes += common/av1_loopfilter.c
AV1_COMMON_SRCS-yes += common/av1_loopfilter.h
AV1_COMMON_SRCS-yes += common/blockd.c
AV1_COMMON_SRCS-yes += common/debugmodes.c
AV1_COMMON_SRCS-yes += common/entropy.c
AV1_COMMON_SRCS-yes += common/entropymode.c
AV1_COMMON_SRCS-yes += common/entropymv.c
AV1_COMMON_SRCS-yes += common/frame_buffers.c
AV1_COMMON_SRCS-yes += common/frame_buffers.h
AV1_COMMON_SRCS-yes += common/alloccommon.h
AV1_COMMON_SRCS-yes += common/blockd.h
AV1_COMMON_SRCS-yes += common/common.h
AV1_COMMON_SRCS-yes += common/daala_tx.c
AV1_COMMON_SRCS-yes += common/daala_tx.h
AV1_COMMON_SRCS-yes += common/daala_tx_kernels.h
AV1_COMMON_SRCS-yes += common/daala_inv_txfm.c
AV1_COMMON_SRCS-yes += common/daala_inv_txfm.h
AV1_COMMON_SRCS-$(HAVE_AVX2) += common/x86/daala_tx_kernels.h
AV1_COMMON_SRCS-$(HAVE_AVX2) += common/x86/daala_inv_txfm_avx2.c
AV1_COMMON_SRCS-yes += common/entropy.h
AV1_COMMON_SRCS-yes += common/entropymode.h
AV1_COMMON_SRCS-yes += common/entropymv.h
AV1_COMMON_SRCS-yes += common/enums.h
AV1_COMMON_SRCS-yes += common/filter.h
AV1_COMMON_SRCS-yes += common/filter.c
AV1_COMMON_SRCS-yes += common/idct.h
AV1_COMMON_SRCS-yes += common/idct.c
AV1_COMMON_SRCS-yes += common/thread_common.h
AV1_COMMON_SRCS-$(CONFIG_LV_MAP) += common/txb_common.h
AV1_COMMON_SRCS-$(CONFIG_LV_MAP) += common/txb_common.c
AV1_COMMON_SRCS-yes += common/mv.h
AV1_COMMON_SRCS-yes += common/onyxc_int.h
AV1_COMMON_SRCS-yes += common/pred_common.h
AV1_COMMON_SRCS-yes += common/pred_common.c
AV1_COMMON_SRCS-yes += common/quant_common.h
AV1_COMMON_SRCS-yes += common/reconinter.h
AV1_COMMON_SRCS-yes += common/reconintra.h
AV1_COMMON_SRCS-yes += common/av1_rtcd.c
AV1_COMMON_SRCS-yes += common/av1_rtcd_defs.pl
AV1_COMMON_SRCS-yes += common/scale.h
AV1_COMMON_SRCS-yes += common/scale.c
AV1_COMMON_SRCS-yes += common/seg_common.h
AV1_COMMON_SRCS-yes += common/seg_common.c
AV1_COMMON_SRCS-yes += common/tile_common.h
AV1_COMMON_SRCS-yes += common/tile_common.c
AV1_COMMON_SRCS-yes += common/thread_common.c
AV1_COMMON_SRCS-yes += common/mvref_common.c
AV1_COMMON_SRCS-yes += common/mvref_common.h
AV1_COMMON_SRCS-yes += common/quant_common.c
AV1_COMMON_SRCS-yes += common/reconinter.c
AV1_COMMON_SRCS-yes += common/reconintra.c
AV1_COMMON_SRCS-yes += common/resize.c
AV1_COMMON_SRCS-yes += common/resize.h
AV1_COMMON_SRCS-yes += common/common_data.h
AV1_COMMON_SRCS-yes += common/scan.c
AV1_COMMON_SRCS-yes += common/scan.h
AV1_COMMON_SRCS-yes += common/av1_txfm.h
AV1_COMMON_SRCS-yes += common/av1_txfm.c
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/av1_txfm_sse4.h
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/av1_txfm_sse4.c
AV1_COMMON_SRCS-yes += common/av1_inv_txfm1d.h
AV1_COMMON_SRCS-yes += common/av1_inv_txfm1d.c
AV1_COMMON_SRCS-yes += common/av1_inv_txfm2d.c
AV1_COMMON_SRCS-yes += common/av1_inv_txfm1d_cfg.h
AV1_COMMON_SRCS-$(HAVE_AVX2) += common/x86/convolve_avx2.c
AV1_COMMON_SRCS-$(HAVE_SSSE3) += common/x86/av1_convolve_ssse3.c
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/av1_convolve_scale_sse4.c
ifeq ($(CONFIG_HIGHBITDEPTH),yes)
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/av1_highbd_convolve_sse4.c
endif
AV1_COMMON_SRCS-yes += common/convolve.c
AV1_COMMON_SRCS-yes += common/convolve.h
ifeq ($(CONFIG_LOOP_RESTORATION),yes)
AV1_COMMON_SRCS-yes += common/restoration.h
AV1_COMMON_SRCS-yes += common/restoration.c
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/selfguided_sse4.c
endif
ifeq ($(CONFIG_INTRA_EDGE),yes)
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/intra_edge_sse4.c
endif
AV1_COMMON_SRCS-yes += common/warped_motion.h
AV1_COMMON_SRCS-yes += common/warped_motion.c
ifeq ($(CONFIG_CDEF_SINGLEPASS),yes)
AV1_COMMON_SRCS-$(HAVE_AVX2) += common/cdef_block_avx2.c
else
AV1_COMMON_SRCS-yes += common/clpf.c
AV1_COMMON_SRCS-yes += common/clpf_simd.h
AV1_COMMON_SRCS-$(HAVE_SSE2) += common/clpf_sse2.c
AV1_COMMON_SRCS-$(HAVE_SSSE3) += common/clpf_ssse3.c
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/clpf_sse4.c
AV1_COMMON_SRCS-$(HAVE_NEON) += common/clpf_neon.c
endif
AV1_COMMON_SRCS-$(HAVE_SSE2) += common/cdef_block_sse2.c
AV1_COMMON_SRCS-$(HAVE_SSSE3) += common/cdef_block_ssse3.c
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/cdef_block_sse4.c
AV1_COMMON_SRCS-$(HAVE_NEON) += common/cdef_block_neon.c
AV1_COMMON_SRCS-yes += common/cdef_block.c
AV1_COMMON_SRCS-yes += common/cdef_block.h
AV1_COMMON_SRCS-yes += common/cdef_block_simd.h
AV1_COMMON_SRCS-yes += common/cdef.c
AV1_COMMON_SRCS-yes += common/cdef.h
AV1_COMMON_SRCS-yes += common/odintrin.c
AV1_COMMON_SRCS-yes += common/odintrin.h

ifeq ($(CONFIG_CFL),yes)
AV1_COMMON_SRCS-yes += common/cfl.h
AV1_COMMON_SRCS-yes += common/cfl.c
endif

AV1_COMMON_SRCS-yes += common/obmc.h

# common (msa)
AV1_COMMON_SRCS-$(HAVE_MSA) += common/mips/msa/av1_idct4x4_msa.c
AV1_COMMON_SRCS-$(HAVE_MSA) += common/mips/msa/av1_idct8x8_msa.c
AV1_COMMON_SRCS-$(HAVE_MSA) += common/mips/msa/av1_idct16x16_msa.c

AV1_COMMON_SRCS-$(HAVE_SSE2) += common/x86/idct_intrin_sse2.c
AV1_COMMON_SRCS-$(HAVE_AVX2) += common/x86/hybrid_inv_txfm_avx2.c

AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/highbd_txfm_utility_sse4.h
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/highbd_inv_txfm_sse4.c
AV1_COMMON_SRCS-$(HAVE_AVX2) += common/x86/highbd_inv_txfm_avx2.c

ifneq ($(CONFIG_HIGHBITDEPTH),yes)
AV1_COMMON_SRCS-$(HAVE_NEON) += common/arm/neon/iht4x4_add_neon.c
AV1_COMMON_SRCS-$(HAVE_NEON) += common/arm/neon/iht8x8_add_neon.c
endif

AV1_COMMON_SRCS-$(HAVE_SSE2) += common/x86/warp_plane_sse2.c
AV1_COMMON_SRCS-$(HAVE_SSSE3) += common/x86/warp_plane_ssse3.c
ifeq ($(CONFIG_JNT_COMP), yes)
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/warp_plane_sse4.c
endif
ifeq ($(CONFIG_HIGHBITDEPTH),yes)
AV1_COMMON_SRCS-$(HAVE_SSSE3) += common/x86/highbd_warp_plane_ssse3.c
ifeq ($(CONFIG_JNT_COMP), yes)
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/highbd_warp_plane_sse4.c
endif
endif

AV1_COMMON_SRCS-$(HAVE_SSE2) += common/x86/convolve_sse2.c
AV1_COMMON_SRCS-$(HAVE_SSE2) += common/x86/convolve_2d_sse2.c
ifeq ($(CONFIG_JNT_COMP), yes)
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/convolve_2d_sse4.c
endif
AV1_COMMON_SRCS-$(HAVE_AVX2) += common/x86/convolve_2d_avx2.c
ifeq ($(CONFIG_HIGHBITDEPTH),yes)
AV1_COMMON_SRCS-$(HAVE_SSSE3) += common/x86/highbd_convolve_2d_ssse3.c
AV1_COMMON_SRCS-$(HAVE_AVX2) += common/x86/highbd_convolve_2d_avx2.c
ifeq ($(CONFIG_JNT_COMP), yes)
AV1_COMMON_SRCS-$(HAVE_SSE4_1) += common/x86/highbd_convolve_2d_sse4.c
endif
endif

ifeq ($(CONFIG_LV_MAP),yes)
AV1_COMMON_SRCS-$(HAVE_SSE2) += common/x86/txb_sse2.c
endif

ifeq ($(CONFIG_Q_ADAPT_PROBS),yes)
AV1_COMMON_SRCS-yes += common/token_cdfs.h
endif

$(eval $(call rtcd_h_template,av1_rtcd,av1/common/av1_rtcd_defs.pl))
