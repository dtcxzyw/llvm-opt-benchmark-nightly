Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/translate-sve?download=true
inline.NumInlined: 12920
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@helper_info_sve2_addhnt_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_addhnt_d = external global %struct.TCGHelperInfo, align 8
@raddhnb_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_raddhnb_h, ptr @gen_helper_sve2_raddhnb_s, ptr @gen_helper_sve2_raddhnb_d], align 16
@helper_info_sve2_raddhnb_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_raddhnb_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_raddhnb_d = external global %struct.TCGHelperInfo, align 8
@raddhnt_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_raddhnt_h, ptr @gen_helper_sve2_raddhnt_s, ptr @gen_helper_sve2_raddhnt_d], align 16
@helper_info_sve2_raddhnt_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_raddhnt_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_raddhnt_d = external global %struct.TCGHelperInfo, align 8
@subhnb_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_subhnb_h, ptr @gen_helper_sve2_subhnb_s, ptr @gen_helper_sve2_subhnb_d], align 16
@helper_info_sve2_subhnb_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_subhnb_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_subhnb_d = external global %struct.TCGHelperInfo, align 8
@subhnt_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_subhnt_h, ptr @gen_helper_sve2_subhnt_s, ptr @gen_helper_sve2_subhnt_d], align 16
@helper_info_sve2_subhnt_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_subhnt_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_subhnt_d = external global %struct.TCGHelperInfo, align 8
@rsubhnb_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_rsubhnb_h, ptr @gen_helper_sve2_rsubhnb_s, ptr @gen_helper_sve2_rsubhnb_d], align 16
@helper_info_sve2_rsubhnb_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_rsubhnb_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_rsubhnb_d = external global %struct.TCGHelperInfo, align 8
@rsubhnt_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_rsubhnt_h, ptr @gen_helper_sve2_rsubhnt_s, ptr @gen_helper_sve2_rsubhnt_d], align 16
@helper_info_sve2_rsubhnt_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_rsubhnt_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_rsubhnt_d = external global %struct.TCGHelperInfo, align 8
@match_fns = internal unnamed_addr constant [4 x ptr] [ptr @gen_helper_sve2_match_ppzz_b, ptr @gen_helper_sve2_match_ppzz_h, ptr null, ptr null], align 16
@helper_info_sve2_match_ppzz_b = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_match_ppzz_h = external global %struct.TCGHelperInfo, align 8
@nmatch_fns = internal unnamed_addr constant [4 x ptr] [ptr @gen_helper_sve2_nmatch_ppzz_b, ptr @gen_helper_sve2_nmatch_ppzz_h, ptr null, ptr null], align 16
@helper_info_sve2_nmatch_ppzz_b = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_nmatch_ppzz_h = external global %struct.TCGHelperInfo, align 8
@histcnt_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr null, ptr @gen_helper_sve2_histcnt_s, ptr @gen_helper_sve2_histcnt_d], align 16
@helper_info_sve2_histcnt_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_histcnt_d = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_histseg = external global %struct.TCGHelperInfo, align 8
@sve2_faddp_zpzz_zpzz_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_faddp_zpzz_h, ptr @gen_helper_sve2_faddp_zpzz_s, ptr @gen_helper_sve2_faddp_zpzz_d], align 16
@helper_info_sve2_faddp_zpzz_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_faddp_zpzz_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_faddp_zpzz_d = external global %struct.TCGHelperInfo, align 8
@sve2_fmaxnmp_zpzz_zpzz_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_fmaxnmp_zpzz_h, ptr @gen_helper_sve2_fmaxnmp_zpzz_s, ptr @gen_helper_sve2_fmaxnmp_zpzz_d], align 16
@helper_info_sve2_fmaxnmp_zpzz_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fmaxnmp_zpzz_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fmaxnmp_zpzz_d = external global %struct.TCGHelperInfo, align 8
@sve2_fminnmp_zpzz_zpzz_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_fminnmp_zpzz_h, ptr @gen_helper_sve2_fminnmp_zpzz_s, ptr @gen_helper_sve2_fminnmp_zpzz_d], align 16
@helper_info_sve2_fminnmp_zpzz_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fminnmp_zpzz_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fminnmp_zpzz_d = external global %struct.TCGHelperInfo, align 8
@sve2_fmaxp_zpzz_ah_zpzz_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_ah_fmaxp_zpzz_h, ptr @gen_helper_sve2_ah_fmaxp_zpzz_s, ptr @gen_helper_sve2_ah_fmaxp_zpzz_d], align 16
@sve2_fmaxp_zpzz_zpzz_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_fmaxp_zpzz_h, ptr @gen_helper_sve2_fmaxp_zpzz_s, ptr @gen_helper_sve2_fmaxp_zpzz_d], align 16
@helper_info_sve2_ah_fmaxp_zpzz_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_ah_fmaxp_zpzz_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_ah_fmaxp_zpzz_d = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fmaxp_zpzz_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fmaxp_zpzz_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fmaxp_zpzz_d = external global %struct.TCGHelperInfo, align 8
@sve2_fminp_zpzz_ah_zpzz_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_ah_fminp_zpzz_h, ptr @gen_helper_sve2_ah_fminp_zpzz_s, ptr @gen_helper_sve2_ah_fminp_zpzz_d], align 16
@sve2_fminp_zpzz_zpzz_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_fminp_zpzz_h, ptr @gen_helper_sve2_fminp_zpzz_s, ptr @gen_helper_sve2_fminp_zpzz_d], align 16
@helper_info_sve2_ah_fminp_zpzz_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_ah_fminp_zpzz_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_ah_fminp_zpzz_d = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fminp_zpzz_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fminp_zpzz_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fminp_zpzz_d = external global %struct.TCGHelperInfo, align 8
@helper_info_fmmla_s = external global %struct.TCGHelperInfo, align 8
@helper_info_fmmla_d = external global %struct.TCGHelperInfo, align 8
@sqdmlal_zzzw_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_sqdmlal_zzzw_h, ptr @gen_helper_sve2_sqdmlal_zzzw_s, ptr @gen_helper_sve2_sqdmlal_zzzw_d], align 16
@helper_info_sve2_sqdmlal_zzzw_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqdmlal_zzzw_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqdmlal_zzzw_d = external global %struct.TCGHelperInfo, align 8
@sqdmlsl_zzzw_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_sqdmlsl_zzzw_h, ptr @gen_helper_sve2_sqdmlsl_zzzw_s, ptr @gen_helper_sve2_sqdmlsl_zzzw_d], align 16
@helper_info_sve2_sqdmlsl_zzzw_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqdmlsl_zzzw_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqdmlsl_zzzw_d = external global %struct.TCGHelperInfo, align 8
@sqrdmlah_fns = internal unnamed_addr constant [4 x ptr] [ptr @gen_helper_sve2_sqrdmlah_b, ptr @gen_helper_sve2_sqrdmlah_h, ptr @gen_helper_sve2_sqrdmlah_s, ptr @gen_helper_sve2_sqrdmlah_d], align 16
@helper_info_sve2_sqrdmlah_b = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqrdmlah_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqrdmlah_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqrdmlah_d = external global %struct.TCGHelperInfo, align 8
@sqrdmlsh_fns = internal unnamed_addr constant [4 x ptr] [ptr @gen_helper_sve2_sqrdmlsh_b, ptr @gen_helper_sve2_sqrdmlsh_h, ptr @gen_helper_sve2_sqrdmlsh_s, ptr @gen_helper_sve2_sqrdmlsh_d], align 16
@helper_info_sve2_sqrdmlsh_b = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqrdmlsh_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqrdmlsh_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqrdmlsh_d = external global %struct.TCGHelperInfo, align 8
@smlal_zzzw_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_smlal_zzzw_h, ptr @gen_helper_sve2_smlal_zzzw_s, ptr @gen_helper_sve2_smlal_zzzw_d], align 16
@helper_info_sve2_smlal_zzzw_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_smlal_zzzw_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_smlal_zzzw_d = external global %struct.TCGHelperInfo, align 8
@umlal_zzzw_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_umlal_zzzw_h, ptr @gen_helper_sve2_umlal_zzzw_s, ptr @gen_helper_sve2_umlal_zzzw_d], align 16
@helper_info_sve2_umlal_zzzw_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_umlal_zzzw_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_umlal_zzzw_d = external global %struct.TCGHelperInfo, align 8
@smlsl_zzzw_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_smlsl_zzzw_h, ptr @gen_helper_sve2_smlsl_zzzw_s, ptr @gen_helper_sve2_smlsl_zzzw_d], align 16
@helper_info_sve2_smlsl_zzzw_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_smlsl_zzzw_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_smlsl_zzzw_d = external global %struct.TCGHelperInfo, align 8
@umlsl_zzzw_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_sve2_umlsl_zzzw_h, ptr @gen_helper_sve2_umlsl_zzzw_s, ptr @gen_helper_sve2_umlsl_zzzw_d], align 16
@helper_info_sve2_umlsl_zzzw_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_umlsl_zzzw_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_umlsl_zzzw_d = external global %struct.TCGHelperInfo, align 8
@cmla_fns = internal unnamed_addr constant [4 x ptr] [ptr @gen_helper_sve2_cmla_zzzz_b, ptr @gen_helper_sve2_cmla_zzzz_h, ptr @gen_helper_sve2_cmla_zzzz_s, ptr @gen_helper_sve2_cmla_zzzz_d], align 16
@helper_info_sve2_cmla_zzzz_b = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_cmla_zzzz_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_cmla_zzzz_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_cmla_zzzz_d = external global %struct.TCGHelperInfo, align 8
@cdot_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr null, ptr @gen_helper_sve2_cdot_zzzz_s, ptr @gen_helper_sve2_cdot_zzzz_d], align 16
@helper_info_sve2_cdot_zzzz_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_cdot_zzzz_d = external global %struct.TCGHelperInfo, align 8
@sqrdcmlah_fns = internal unnamed_addr constant [4 x ptr] [ptr @gen_helper_sve2_sqrdcmlah_zzzz_b, ptr @gen_helper_sve2_sqrdcmlah_zzzz_h, ptr @gen_helper_sve2_sqrdcmlah_zzzz_s, ptr @gen_helper_sve2_sqrdcmlah_zzzz_d], align 16
@helper_info_sve2_sqrdcmlah_zzzz_b = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqrdcmlah_zzzz_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqrdcmlah_zzzz_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_sqrdcmlah_zzzz_d = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_usdot_4b = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_sdot_2h = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_udot_2h = external global %struct.TCGHelperInfo, align 8
@helper_info_crypto_aesmc = external global %struct.TCGHelperInfo, align 8
@helper_info_crypto_aesimc = external global %struct.TCGHelperInfo, align 8
@helper_info_crypto_aese = external global %struct.TCGHelperInfo, align 8
@helper_info_crypto_aesd = external global %struct.TCGHelperInfo, align 8
@helper_info_crypto_sm4e = external global %struct.TCGHelperInfo, align 8
@helper_info_crypto_sm4ekey = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fcvtnt_sh = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fcvtnt_ds = external global %struct.TCGHelperInfo, align 8
@helper_info_sve_bfcvtnt = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fcvtlt_hs = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fcvtlt_sd = external global %struct.TCGHelperInfo, align 8
@flogb_fns = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @gen_helper_flogb_h, ptr @gen_helper_flogb_s, ptr @gen_helper_flogb_d], align 16
@helper_info_flogb_h = external global %struct.TCGHelperInfo, align 8
@helper_info_flogb_s = external global %struct.TCGHelperInfo, align 8
@helper_info_flogb_d = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fmlal_zzzw_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2_fmlal_zzxw_s = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_smmla_b = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_usmmla_b = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_ummla_b = external global %struct.TCGHelperInfo, align 8
@helper_info_sme2_fdot_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sme2_fdot_idx_h = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_bfdot = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_bfdot_idx = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_bfmmla = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_bfmlal = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_bfmlal_idx = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_ah_bfmlsl = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_bfmlsl = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_ah_bfmlsl_idx = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_bfmlsl_idx = external global %struct.TCGHelperInfo, align 8
@gen_sclamp.vecop = internal constant [3 x i32] [i32 95, i32 97, i32 0], align 4
@gen_sclamp.ops = internal constant [4 x { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }] [{ ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 } { ptr null, ptr null, ptr @gen_sclamp_vec, ptr @gen_helper_gvec_sclamp_b, ptr @gen_sclamp.vecop, i32 0, i8 0, i8 0, i8 0, i8 0 }, { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 } { ptr null, ptr null, ptr @gen_sclamp_vec, ptr @gen_helper_gvec_sclamp_h, ptr @gen_sclamp.vecop, i32 0, i8 1, i8 0, i8 0, i8 0 }, { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 } { ptr null, ptr @gen_sclamp_i32, ptr @gen_sclamp_vec, ptr @gen_helper_gvec_sclamp_s, ptr @gen_sclamp.vecop, i32 0, i8 2, i8 0, i8 0, i8 0 }, { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 } { ptr @gen_sclamp_i64, ptr null, ptr @gen_sclamp_vec, ptr @gen_helper_gvec_sclamp_d, ptr @gen_sclamp.vecop, i32 0, i8 3, i8 1, i8 0, i8 0 }], align 16
@helper_info_gvec_sclamp_b = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_sclamp_h = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_sclamp_s = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_sclamp_d = external global %struct.TCGHelperInfo, align 8
@gen_uclamp.vecop = internal constant [3 x i32] [i32 96, i32 98, i32 0], align 4
@gen_uclamp.ops = internal constant [4 x { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }] [{ ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 } { ptr null, ptr null, ptr @gen_uclamp_vec, ptr @gen_helper_gvec_uclamp_b, ptr @gen_uclamp.vecop, i32 0, i8 0, i8 0, i8 0, i8 0 }, { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 } { ptr null, ptr null, ptr @gen_uclamp_vec, ptr @gen_helper_gvec_uclamp_h, ptr @gen_uclamp.vecop, i32 0, i8 1, i8 0, i8 0, i8 0 }, { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 } { ptr null, ptr @gen_uclamp_i32, ptr @gen_uclamp_vec, ptr @gen_helper_gvec_uclamp_s, ptr @gen_uclamp.vecop, i32 0, i8 2, i8 0, i8 0, i8 0 }, { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 } { ptr @gen_uclamp_i64, ptr null, ptr @gen_uclamp_vec, ptr @gen_helper_gvec_uclamp_d, ptr @gen_uclamp.vecop, i32 0, i8 3, i8 1, i8 0, i8 0 }], align 16
@helper_info_gvec_uclamp_b = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_uclamp_h = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_uclamp_s = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_uclamp_d = external global %struct.TCGHelperInfo, align 8
@trans_FCLAMP.fn = internal unnamed_addr constant [4 x ptr] [ptr @gen_helper_sme2_bfclamp, ptr @gen_helper_sme2_fclamp_h, ptr @gen_helper_sme2_fclamp_s, ptr @gen_helper_sme2_fclamp_d], align 16
@.str.37 = private unnamed_addr constant [15 x i8] c"a->rd == a->ra\00", align 1
@__PRETTY_FUNCTION__.trans_FCLAMP = private unnamed_addr constant [49 x i8] c"_Bool trans_FCLAMP(DisasContext *, arg_FCLAMP *)\00", align 1
@helper_info_sme2_bfclamp = external global %struct.TCGHelperInfo, align 8
@helper_info_sme2_fclamp_h = external global %struct.TCGHelperInfo, align 8
@helper_info_sme2_fclamp_s = external global %struct.TCGHelperInfo, align 8
@helper_info_sme2_fclamp_d = external global %struct.TCGHelperInfo, align 8
@helper_info_sme2_sqcvtn_sh = external global %struct.TCGHelperInfo, align 8
@helper_info_sme2_uqcvtn_sh = external global %struct.TCGHelperInfo, align 8
@helper_info_sme2_sqcvtun_sh = external global %struct.TCGHelperInfo, align 8
@gen_ldst_c.f_ldst = internal unnamed_addr constant [2 x [2 x [4 x ptr]]] [[2 x [4 x ptr]] [[4 x ptr] [ptr @gen_helper_sve2p1_ld1bb_c, ptr @gen_helper_sve2p1_ld1hh_le_c, ptr @gen_helper_sve2p1_ld1ss_le_c, ptr @gen_helper_sve2p1_ld1dd_le_c], [4 x ptr] [ptr @gen_helper_sve2p1_ld1bb_c, ptr @gen_helper_sve2p1_ld1hh_be_c, ptr @gen_helper_sve2p1_ld1ss_be_c, ptr @gen_helper_sve2p1_ld1dd_be_c]], [2 x [4 x ptr]] [[4 x ptr] [ptr @gen_helper_sve2p1_st1bb_c, ptr @gen_helper_sve2p1_st1hh_le_c, ptr @gen_helper_sve2p1_st1ss_le_c, ptr @gen_helper_sve2p1_st1dd_le_c], [4 x ptr] [ptr @gen_helper_sve2p1_st1bb_c, ptr @gen_helper_sve2p1_st1hh_be_c, ptr @gen_helper_sve2p1_st1ss_be_c, ptr @gen_helper_sve2p1_st1dd_be_c]]], align 16
@.str.38 = private unnamed_addr constant [17 x i8] c"n == 2 || n == 4\00", align 1
@__PRETTY_FUNCTION__.gen_ldst_c = private unnamed_addr constant [79 x i8] c"_Bool gen_ldst_c(DisasContext *, TCGv_i64, int, int, MemOp, _Bool, int, _Bool)\00", align 1
@helper_info_sve2p1_ld1bb_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_ld1hh_le_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_ld1ss_le_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_ld1dd_le_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_ld1hh_be_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_ld1ss_be_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_ld1dd_be_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_st1bb_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_st1hh_le_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_st1ss_le_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_st1dd_le_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_st1hh_be_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_st1ss_be_c = external global %struct.TCGHelperInfo, align 8
@helper_info_sve2p1_st1dd_be_c = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_luti2_b = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_luti2_h = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_luti4_b = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_luti4_h = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_fmla_hb = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_fmla_idx_hb = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_fmla_sb = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_fmla_idx_sb = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_fdot_sb = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_fdot_idx_sb = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_fdot_hb = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_fdot_idx_hb = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_fmmla_sb = external global %struct.TCGHelperInfo, align 8
@helper_info_gvec_fmmla_hb = external global %struct.TCGHelperInfo, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @disas_sve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.arg_rprr_s, align 4         ; 8 uses
  %3 = alloca %union.anon.0, align 4              ; 3755 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !14
  %i.a = lshr i32 %1, 25
  %i.b = add nsw i32 %i.a, -2                     ; 2 uses
  %i.c = tail call i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 31)
  switch i32 %i.c, label %trans_FMMLA_s.exit [
    i32 0, label %bb.b
    i32 8, label %bb.kp
    i32 16, label %bb.qr
    i32 24, label %bb.acz
    i32 32, label %bb.aqd
    i32 39, label %bb.arh
    i32 40, label %bb.asi
    i32 48, label %bb.atk
    i32 56, label %bb.aun
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %1, 21
  %i.e = and i32 %i.d, 9
  switch i32 %i.e, label %.unreachabledefault [
    i32 0, label %bb.c
    i32 1, label %bb.cu
    i32 8, label %bb.ft
    i32 9, label %bb.gi
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %1, 13
  %i.g = and i32 %i.f, 7
  switch i32 %i.g, label %default.unreachable2952 [
    i32 0, label %bb.d
    i32 1, label %bb.y
    i32 2, label %bb.as
    i32 3, label %bb.at
    i32 4, label %bb.au
    i32 5, label %bb.bn
    i32 6, label %bb.cs
    i32 7, label %bb.ct
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i32 %1, 16
  %i.i = and i32 %i.h, 31
  switch i32 %i.i, label %trans_FMMLA_s.exit [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 3, label %bb.g
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 12, label %bb.l
    i32 13, label %bb.m
    i32 16, label %bb.n
    i32 18, label %bb.o
    i32 19, label %bb.p
    i32 20, label %bb.q
    i32 21, label %bb.r
    i32 22, label %bb.s
    i32 23, label %bb.t
    i32 24, label %bb.u
    i32 25, label %bb.v
    i32 26, label %bb.w
    i32 27, label %bb.x
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = lshr i32 %1, 22
  %i.k = and i32 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.k, ptr %i.l, align 4
  %i.m = and i32 %1, 31                           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.m, ptr %i.n, align 4
  %i.o = lshr i32 %1, 5
  %i.p = and i32 %i.o, 31
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.p, ptr %i.q, align 4
  %i.r = lshr i32 %1, 10
  %i.s = and i32 %i.r, 7
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.s, ptr %i.t, align 4
  store i32 %i.m, ptr %3, align 4
  %i.u = call fastcc zeroext i1 @trans_ADD_zpzz(ptr noundef %0, ptr noundef %3)
  br i1 %i.u, label %trans_LD1R_zpri.exit.thread, label %trans_FMMLA_s.exit

bb.f:                                             ; preds = %bb.d
  %i.v = lshr i32 %1, 22
  %i.w = and i32 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.w, ptr %i.x, align 4
  %i.y = and i32 %1, 31                           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = lshr i32 %1, 5
  %i.ab = and i32 %i.aa, 31
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = lshr i32 %1, 10
  %i.ae = and i32 %i.ad, 7
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ae, ptr %i.af, align 4
  store i32 %i.y, ptr %3, align 4
  %i.ag = call fastcc zeroext i1 @trans_SUB_zpzz(ptr noundef %0, ptr noundef %3)
  br i1 %i.ag, label %trans_LD1R_zpri.exit.thread, label %trans_FMMLA_s.exit

bb.g:                                             ; preds = %bb.d
  %i.ah = lshr i32 %1, 22
  %i.ai = and i32 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = lshr i32 %1, 5
  %i.al = and i32 %i.ak, 31
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.al, ptr %i.am, align 4
  %i.an = and i32 %1, 31                          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = lshr i32 %1, 10
  %i.aq = and i32 %i.ap, 7
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.aq, ptr %i.ar, align 4
  store i32 %i.an, ptr %3, align 4
  %i.as = call fastcc zeroext i1 @trans_SUB_zpzz(ptr noundef %0, ptr noundef %3)
  br i1 %i.as, label %trans_LD1R_zpri.exit.thread, label %trans_FMMLA_s.exit

bb.h:                                             ; preds = %bb.d
  %i.at = lshr i32 %1, 22
  %i.au = and i32 %i.at, 3
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = and i32 %1, 31                          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i32 %1, 5
  %i.az = and i32 %i.ay, 31
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = lshr i32 %1, 10
  %i.bc = and i32 %i.bb, 7
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bc, ptr %i.bd, align 4
  store i32 %i.aw, ptr %3, align 4
  %i.be = call fastcc zeroext i1 @trans_SMAX_zpzz(ptr noundef %0, ptr noundef %3)
  br i1 %i.be, label %trans_LD1R_zpri.exit.thread, label %trans_FMMLA_s.exit

bb.i:                                             ; preds = %bb.d
  %i.bf = lshr i32 %1, 22
  %i.bg = and i32 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = and i32 %1, 31                          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bi, ptr %i.bj, align 4
  %i.bk = lshr i32 %1, 5
  %i.bl = and i32 %i.bk, 31
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = lshr i32 %1, 10
  %i.bo = and i32 %i.bn, 7
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bo, ptr %i.bp, align 4
  store i32 %i.bi, ptr %3, align 4
  %i.bq = call fastcc zeroext i1 @trans_UMAX_zpzz(ptr noundef %0, ptr noundef %3)
  br i1 %i.bq, label %trans_LD1R_zpri.exit.thread, label %trans_FMMLA_s.exit

bb.j:                                             ; preds = %bb.d
  %i.br = lshr i32 %1, 22
  %i.bs = and i32 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = and i32 %1, 31                          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = lshr i32 %1, 5
  %i.bx = and i32 %i.bw, 31
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.bx, ptr %i.by, align 4
  %i.bz = lshr i32 %1, 10
  %i.ca = and i32 %i.bz, 7
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ca, ptr %i.cb, align 4
  store i32 %i.bu, ptr %3, align 4
  %i.cc = call fastcc zeroext i1 @trans_SMIN_zpzz(ptr noundef %0, ptr noundef %3)
  br i1 %i.cc, label %trans_LD1R_zpri.exit.thread, label %trans_FMMLA_s.exit

bb.k:                                             ; preds = %bb.d
  %i.cd = lshr i32 %1, 22
  %i.ce = and i32 %i.cd, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ce, ptr %i.cf, align 4
  %i.cg = and i32 %1, 31                          ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
begin_hunk_1_@gen_helper_sve_cpy_m_s:bb.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @gen_helper_sve_cpy_m_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_cpy_m_d, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_cpy_m_d, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_cpy_z_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_cpy_z_b, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_cpy_z_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_cpy_z_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_cpy_z_h, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_cpy_z_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_cpy_z_s(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_cpy_z_s, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_cpy_z_s, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_cpy_z_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_cpy_z_d, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_cpy_z_d, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

declare void @tcg_gen_gvec_2i_ool(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_EXT(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @sve_access_check(ptr noundef %0) #9
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 220
  %.val = load i32, ptr %i.b, align 4             ; 4 uses
  %.not = icmp ult i32 %4, %.val
  %i.c = select i1 %.not, i32 %4, i32 0           ; 10 uses
  %i.d = sub i32 %.val, %i.c                      ; 7 uses
  %i.e = shl i32 %1, 8                            ; 3 uses
  %i.f = add i32 %i.e, 3888                       ; 3 uses
  %i.g = shl i32 %2, 8                            ; 2 uses
  %i.h = add i32 %i.g, 3888                       ; 2 uses
  %i.i = shl i32 %3, 8                            ; 2 uses
  %i.j = add i32 %i.i, 3888                       ; 2 uses
  %.not43 = icmp eq i32 %i.i, %i.e
  br i1 %.not43, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.c, 9
  br i1 %i.k, label %size_for_gvec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i32 %i.c, 15
  %i.m = sdiv i32 %i.l, 16
  %i.n = shl nsw i32 %i.m, 4
  br label %size_for_gvec.exit

size_for_gvec.exit:                               ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.n, %bb.d ], [ 8, %bb.c ]
  %i.o = icmp eq i32 %i.c, %.0.i
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %size_for_gvec.exit
  %i.p = icmp slt i32 %i.d, 9
  br i1 %i.p, label %size_for_gvec.exit48, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nuw i32 %i.d, 15
  %i.r = sdiv i32 %i.q, 16
  %i.s = shl nsw i32 %i.r, 4
  br label %size_for_gvec.exit48

size_for_gvec.exit48:                             ; preds = %bb.e, %bb.f
  %.0.i47 = phi i32 [ %i.s, %bb.f ], [ 8, %bb.e ]
  %i.t = icmp eq i32 %i.d, %.0.i47
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %size_for_gvec.exit48
  %.not44 = icmp eq i32 %i.e, %i.g
  %.not45 = icmp ugt i32 %i.d, %i.c
  %or.cond = select i1 %.not44, i1 %.not45, i1 false
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i32 %i.c, %i.h
  tail call void @tcg_gen_gvec_mov(i32 noundef 0, i32 noundef %i.f, i32 noundef %i.u, i32 noundef %i.d, i32 noundef %i.d) #9
  %.not46 = icmp eq i32 %i.c, 0
  br i1 %.not46, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i32 %i.d, %i.f
  tail call void @tcg_gen_gvec_mov(i32 noundef 0, i32 noundef %i.v, i32 noundef %i.j, i32 noundef %i.c, i32 noundef %i.c) #9
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %size_for_gvec.exit48, %size_for_gvec.exit, %bb.b
  tail call void @tcg_gen_gvec_3_ool(i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %.val, i32 noundef %.val, i32 noundef %i.c, ptr noundef nonnull @gen_helper_sve_ext) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_ext, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_ext, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

declare void @tcg_gen_extract2_i64(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @tcg_gen_gvec_dup_i64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @tcg_gen_gvec_dup_mem(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_insr_i64(i32 %.220.val, ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @simd_desc(i32 noundef %.220.val, i32 noundef %.220.val, i32 noundef 0) #9
  %i.b = tail call ptr @tcg_constant_i32(i32 noundef %i.a) #9 ; 4 uses
  %i.c = tail call ptr @tcg_temp_new_ptr() #9     ; 5 uses
  %i.d = tail call ptr @tcg_temp_new_ptr() #9     ; 5 uses
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = load i32, ptr %0, align 4
  %i.g = shl i32 %i.f, 8
  %i.h = add i32 %i.g, 3888
  %i.i = sext i32 %i.h to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.c, ptr noundef %i.e, i64 noundef range(i64 -2147483648, 2147483648) %i.i) #9
  %i.j = load ptr, ptr @tcg_env, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = shl i32 %i.l, 8
  %i.n = add i32 %i.m, 3888
  %i.o = sext i32 %i.n to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.d, ptr noundef %i.j, i64 noundef range(i64 -2147483648, 2147483648) %i.o) #9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4
  switch i32 %i.q, label %default.switch.case.unreachable [
    i32 0, label %call.0
    i32 1, label %call.1
    i32 2, label %call.2
    i32 3, label %call.3
  ], !prof !20

default.switch.case.unreachable:                  ; preds = %bb.a
  unreachable

call.0:                                           ; preds = %bb.a
  tail call fastcc void @gen_helper_sve_insr_b(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %1, ptr noundef %i.b) #9
  br label %.tail

call.1:                                           ; preds = %bb.a
  tail call fastcc void @gen_helper_sve_insr_h(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %1, ptr noundef %i.b) #9
  br label %.tail

call.2:                                           ; preds = %bb.a
  tail call fastcc void @gen_helper_sve_insr_s(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %1, ptr noundef %i.b) #9
  br label %.tail

call.3:                                           ; preds = %bb.a
  tail call fastcc void @gen_helper_sve_insr_d(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %1, ptr noundef %i.b) #9
  br label %.tail

.tail:                                            ; preds = %call.3, %call.2, %call.1, %call.0
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @gen_helper_sve_insr_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #7 {
  %5 = load ptr, ptr @helper_info_sve_insr_b, align 8
  %6 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %7 = load ptr, ptr %6, align 8                  ; 4 uses
  %8 = ptrtoint ptr %0 to i64
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 %8
  %10 = ptrtoint ptr %1 to i64
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 %10
  %12 = ptrtoint ptr %2 to i64
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 %12
  %14 = ptrtoint ptr %3 to i64
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 %14
  tail call void @tcg_gen_call4(ptr noundef %5, ptr noundef nonnull @helper_info_sve_insr_b, ptr noundef null, ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %15) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @gen_helper_sve_insr_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #7 {
  %5 = load ptr, ptr @helper_info_sve_insr_h, align 8
  %6 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %7 = load ptr, ptr %6, align 8                  ; 4 uses
  %8 = ptrtoint ptr %0 to i64
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 %8
  %10 = ptrtoint ptr %1 to i64
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 %10
  %12 = ptrtoint ptr %2 to i64
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 %12
  %14 = ptrtoint ptr %3 to i64
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 %14
  tail call void @tcg_gen_call4(ptr noundef %5, ptr noundef nonnull @helper_info_sve_insr_h, ptr noundef null, ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %15) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @gen_helper_sve_insr_s(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #7 {
  %5 = load ptr, ptr @helper_info_sve_insr_s, align 8
  %6 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %7 = load ptr, ptr %6, align 8                  ; 4 uses
  %8 = ptrtoint ptr %0 to i64
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 %8
  %10 = ptrtoint ptr %1 to i64
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 %10
  %12 = ptrtoint ptr %2 to i64
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 %12
  %14 = ptrtoint ptr %3 to i64
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 %14
  tail call void @tcg_gen_call4(ptr noundef %5, ptr noundef nonnull @helper_info_sve_insr_s, ptr noundef null, ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %15) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @gen_helper_sve_insr_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #7 {
  %5 = load ptr, ptr @helper_info_sve_insr_d, align 8
  %6 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %7 = load ptr, ptr %6, align 8                  ; 4 uses
  %8 = ptrtoint ptr %0 to i64
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 %8
  %10 = ptrtoint ptr %1 to i64
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 %10
  %12 = ptrtoint ptr %2 to i64
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 %12
  %14 = ptrtoint ptr %3 to i64
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 %14
  tail call void @tcg_gen_call4(ptr noundef %5, ptr noundef nonnull @helper_info_sve_insr_d, ptr noundef null, ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %15) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_rev_b(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_rev_b, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_rev_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_rev_h(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_rev_h, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_rev_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_rev_s(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_rev_s, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_rev_s, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_rev_d(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_rev_d, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_rev_d, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_tbl_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_tbl_b, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_tbl_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_tbl_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_tbl_h, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_tbl_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_tbl_s(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_tbl_s, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_tbl_s, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve_tbl_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve_tbl_d, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve_tbl_d, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve2_tbl_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve2_tbl_b, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve2_tbl_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve2_tbl_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve2_tbl_h, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve2_tbl_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sve2_tbl_s(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sve2_tbl_s, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_sve2_tbl_s, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
end_hunk_1
