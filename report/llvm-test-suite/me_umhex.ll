Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/me_umhex?download=true
inline.NumInlined: 78
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0
@Median_Pred_Thd_MB = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@Big_Hexagon_Thd_MB = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@Multi_Ref_Thd_MB = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@Threshold_DSR_MB = common dso_local local_unnamed_addr global [8 x i32] zeroinitializer, align 16
@flag_intra = common dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [26 x i8] c"UMHEX_get_mem: flag_intra\00", align 1
@McostState = common dso_local global ptr null, align 8
@fastme_ref_cost = common dso_local global ptr null, align 8
@fastme_l0_cost = common dso_local global ptr null, align 8
@fastme_l1_cost = common dso_local global ptr null, align 8
@SearchState = common dso_local global ptr null, align 8
@fastme_best_cost = common dso_local global ptr null, align 8
@fastme_l0_cost_bipred = common dso_local global ptr null, align 8
@fastme_l1_cost_bipred = common dso_local global ptr null, align 8
@active_pps = common dso_local local_unnamed_addr global ptr null, align 8
@dist_method = internal unnamed_addr global i32 0, align 4
@listX = external local_unnamed_addr global [6 x ptr], align 16
@ref_pic_ptr = internal unnamed_addr global ptr null, align 8
@ref_pic_sub = external local_unnamed_addr global %struct.SubImageContainer, align 8
@img_width = external local_unnamed_addr global i16, align 2
@img_height = external local_unnamed_addr global i16, align 2
@width_pad = common dso_local local_unnamed_addr global i32 0, align 4
@height_pad = common dso_local local_unnamed_addr global i32 0, align 4
@wp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@weight_luma = external local_unnamed_addr global i32, align 4
@wp_offset = common dso_local local_unnamed_addr global ptr null, align 8
@offset_luma = external local_unnamed_addr global i32, align 4
@ChromaMEEnable = external local_unnamed_addr global i32, align 4
@width_pad_cr = common dso_local local_unnamed_addr global i32 0, align 4
@height_pad_cr = common dso_local local_unnamed_addr global i32 0, align 4
@weight_cr = external local_unnamed_addr global [2 x i32], align 4
@offset_cr = external local_unnamed_addr global [2 x i32], align 4
@ref_access_method = external local_unnamed_addr global i32, align 4
@mvbits = external local_unnamed_addr global ptr, align 8
@computeUniPred = external local_unnamed_addr global [6 x ptr], align 16
@pred_SAD = common dso_local local_unnamed_addr global i32 0, align 4
@pred_MV_uplayer = common dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@pred_MV_ref_flag = internal unnamed_addr global i1 false, align 4
@pred_MV_ref = common dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@spiral_search_x = external local_unnamed_addr global ptr, align 8
@spiral_search_y = external local_unnamed_addr global ptr, align 8
@Big_Hexagon_x = internal unnamed_addr constant [16 x i32] [i32 0, i32 -2, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -2, i32 0, i32 2, i32 4, i32 4, i32 4, i32 4, i32 4, i32 2], align 16
@Big_Hexagon_y = internal unnamed_addr constant [16 x i32] [i32 4, i32 3, i32 2, i32 1, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3], align 16
@Hexagon_x = internal unnamed_addr constant [6 x i32] [i32 2, i32 1, i32 -1, i32 -2, i32 -1, i32 1], align 16
@Hexagon_y = internal unnamed_addr constant [6 x i32] [i32 0, i32 -2, i32 -2, i32 0, i32 2, i32 2], align 16
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@flag_intra_SAD = common dso_local local_unnamed_addr global i32 0, align 4
@__const.UMHEX_setup.indication_blocktype = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 4, i32 4, i32 5], align 16
@frame_ctr = common dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@ref_pic1_sub = external local_unnamed_addr global %struct.SubImageContainer, align 8
@ref_pic2_sub = external local_unnamed_addr global %struct.SubImageContainer, align 8
@wbp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@weight1 = external local_unnamed_addr global i16, align 2
@weight2 = external local_unnamed_addr global i16, align 2
@offsetBi = external local_unnamed_addr global i16, align 2
@computeBiPred = external local_unnamed_addr global ptr, align 8
@luma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@weight1_cr = external local_unnamed_addr global [2 x i16], align 2
@weight2_cr = external local_unnamed_addr global [2 x i16], align 2
@offsetBi_cr = external local_unnamed_addr global [2 x i16], align 2
@chroma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@bipred2_access_method = external local_unnamed_addr global i32, align 4
@bipred1_access_method = external local_unnamed_addr global i32, align 4
@SAD_a = common dso_local local_unnamed_addr global i32 0, align 4
@SAD_b = common dso_local local_unnamed_addr global i32 0, align 4
@SAD_c = common dso_local local_unnamed_addr global i32 0, align 4
@bipred_flag = common dso_local local_unnamed_addr global i32 0, align 4
@SAD_d = common dso_local local_unnamed_addr global i32 0, align 4
@UMHEX_blocktype = common dso_local local_unnamed_addr global i32 0, align 4
@dsr_new_search_range = common dso_local local_unnamed_addr global i32 0, align 4
@color_formats = common dso_local local_unnamed_addr global i32 0, align 4
@top_pic = common dso_local local_unnamed_addr global ptr null, align 8
@bottom_pic = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_1 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_2 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_3 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_si = common dso_local local_unnamed_addr global ptr null, align 8
@Bit_Buffer = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_sub_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@PicPos = common dso_local local_unnamed_addr global ptr null, align 8
@log2_max_frame_num_minus4 = common dso_local local_unnamed_addr global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local local_unnamed_addr global i32 0, align 4
@me_tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@me_time = common dso_local local_unnamed_addr global i64 0, align 8
@active_sps = common dso_local local_unnamed_addr global ptr null, align 8
@mb_adaptive = common dso_local local_unnamed_addr global i32 0, align 4
@MBPairIsField = common dso_local local_unnamed_addr global i32 0, align 4
@wp_luma_round = common dso_local local_unnamed_addr global i32 0, align 4
@wp_chroma_round = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_org_top = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org_bot = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_top = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_bot = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org_frm = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_frm = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_com = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_com = common dso_local local_unnamed_addr global ptr null, align 8
@direct_ref_idx = common dso_local local_unnamed_addr global ptr null, align 8
@direct_pdir = common dso_local local_unnamed_addr global ptr null, align 8
@pixel_map = common dso_local local_unnamed_addr global ptr null, align 8
@refresh_map = common dso_local local_unnamed_addr global ptr null, align 8
@intras = common dso_local local_unnamed_addr global i32 0, align 4
@frame_no = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_fld = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_frm = common dso_local local_unnamed_addr global i32 0, align 4
@tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@errortext = common dso_local local_unnamed_addr global [300 x i8] zeroinitializer, align 16
@b8_ipredmode8x8 = common dso_local local_unnamed_addr global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common dso_local local_unnamed_addr global [16 x i8] zeroinitializer, align 16
@gop_structure = common dso_local local_unnamed_addr global ptr null, align 8
@rdopt = common dso_local local_unnamed_addr global ptr null, align 8
@rddata_top_frame_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common dso_local local_unnamed_addr global ptr null, align 8
@p_log = common dso_local local_unnamed_addr global ptr null, align 8
@p_trace = common dso_local local_unnamed_addr global ptr null, align 8
@p_in = common dso_local local_unnamed_addr global i32 0, align 4
@p_dec = common dso_local local_unnamed_addr global i32 0, align 4
@mb16x16_cost_frame = common dso_local local_unnamed_addr global ptr null, align 8
@Bytes_After_Header = common dso_local local_unnamed_addr global i32 0, align 4
@encode_one_macroblock = common dso_local local_unnamed_addr global ptr null, align 8
@lrec = common dso_local local_unnamed_addr global ptr null, align 8
@lrec_uv = common dso_local local_unnamed_addr global ptr null, align 8
@si_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@sp2_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@number_sp2_frames = common dso_local local_unnamed_addr global i32 0, align 4
@giRDOpt_B8OnlyFlag = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_tmp = common dso_local local_unnamed_addr global [2 x ptr] zeroinitializer, align 16
@frameNuminGOP = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_coding = common dso_local local_unnamed_addr global i32 0, align 4
@key_frame = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_ref_idx = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_mask_mv_y = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_mask_mv_x = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_shift_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_shift_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_y = common dso_local local_unnamed_addr global i32 0, align 4
@img_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_cr_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4
@predict_point = common dso_local local_unnamed_addr global [5 x [2 x i32]] zeroinitializer, align 16
@getNeighbour = common dso_local local_unnamed_addr global ptr null, align 8
@get_mb_block_pos = common dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @UMHEX_DefineThreshold() local_unnamed_addr #0 {
bb.a:
  store <4 x float> <float f0x3C23D70A, float f0x3C23D70A, float f0x3C23D70A, float 2.000000e-02>, ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_1, i64 4), align 4, !tbaa !9
  store <2 x float> splat (float 3.000000e-02), ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_1, i64 20), align 4, !tbaa !9
  store float 4.000000e-02, ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_1, i64 28), align 4, !tbaa !9
  store <4 x float> <float 6.000000e-02, float 7.000000e-02, float 7.000000e-02, float 8.000000e-02>, ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_2, i64 4), align 4, !tbaa !9
  store <2 x float> <float 1.200000e-01, float 1.100000e-01>, ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_2, i64 20), align 4, !tbaa !9
  store float 1.500000e-01, ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_2, i64 28), align 4, !tbaa !9
  tail call void @UMHEX_DefineThresholdMB()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @UMHEX_DefineThresholdMB() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !89   ; 3 uses
  %i.d = sdiv i32 %i.c, 6
  %i.e = srem i32 %i.c, 6
  %i.f = add nsw i32 %i.d, 15
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5252
  %i.h = load i32, ptr %i.g, align 4, !tbaa !90
  %i.i = sitofp i32 %i.h to double                ; 2 uses
  %i.j = fneg double %i.i
  %i.k = fmul nnan double %i.i, 1.000000e-01
  %i.l = load ptr, ptr @img, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = sdiv i32 %i.n, 176
  %i.p = sitofp i32 %i.o to double
  %i.q = shl nuw i32 1, %i.f                      ; 2 uses
  %.neg = sdiv i32 %i.q, -6
  %i.r = add i32 %.neg, %i.q
  %i.s = sext i32 %i.e to i64
  %i.t = getelementptr inbounds [64 x i8], ptr @quant_coef, i64 %i.s
  %i.u = load i32, ptr %i.t, align 16, !tbaa !7
  %i.v = sdiv i32 %i.r, %i.u
  %i.w = insertelement <2 x i32> poison, i32 %i.c, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.v, i64 1
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fdiv <2 x float> %i.y, <float 5.100000e+01, float 2.244000e+01> ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = fpext float %i.aa to double
  %i.ac = extractelement <2 x float> %i.z, i64 1
  %i.ad = fmul nnan float %i.ac, 2.000000e+00
  %0 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.j, i64 0
  %1 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %0, <2 x double> <double 1.000000e-01, double 0.000000e+00>, <2 x double> splat (double 1.000000e+00))
  %i.ae = insertelement <2 x double> poison, double %i.k, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ab, i64 1
  %i.ag = insertelement <2 x double> <double poison, double -9.000000e-01>, double %i.p, i64 0
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ag, <2 x double> %1)
  %i.ai = fptrunc <2 x double> %i.ah to <2 x float> ; 6 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 1
  %i.ak = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.al = fmul float %i.ad, %i.ak
  %i.am = fmul float %i.al, 2.560000e+02          ; 2 uses
  store float %i.am, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 28), align 4, !tbaa !9
  %i.an = fmul float %i.am, 4.000000e+00          ; 3 uses
  store float %i.an, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 24), align 8, !tbaa !9
  store float %i.an, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 20), align 4, !tbaa !9
  %i.ao = fmul float %i.an, 4.000000e+00          ; 2 uses
  store float %i.ao, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 16), align 16, !tbaa !9
  %i.ap = fmul float %i.ao, 4.000000e+00          ; 3 uses
  store float %i.ap, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 12), align 4, !tbaa !9
  store float %i.ap, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 8), align 8, !tbaa !9
  %i.aq = fmul float %i.ap, 4.000000e+00
  store float %i.aq, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 4), align 4, !tbaa !9
  %i.ar = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.as = fmul <2 x float> %i.ar, <float 3.000000e+02, float 1.200000e+02>
  %i.at = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.au = fmul <2 x float> %i.as, %i.at
  %i.av = fptosi <2 x float> %i.au to <2 x i32>   ; 2 uses
  store <2 x i32> %i.av, ptr getelementptr inbounds nuw (i8, ptr @Multi_Ref_Thd_MB, i64 4), align 4, !tbaa !7
  %i.aw = extractelement <2 x i32> %i.av, i64 1   ; 2 uses
  store i32 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @Multi_Ref_Thd_MB, i64 12), align 4, !tbaa !7
  %i.ax = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ay = fmul <4 x float> %i.ax, <float 7.500000e+02, float 3.500000e+02, float 3.500000e+02, float 1.700000e+02>
  %i.az = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.ba = fmul <4 x float> %i.ay, %i.az
  %i.bb = fptosi <4 x float> %i.ba to <4 x i32>
  store <4 x i32> %i.bb, ptr getelementptr inbounds nuw (i8, ptr @Median_Pred_Thd_MB, i64 4), align 4, !tbaa !7
  %i.bc = fmul <4 x float> %i.ax, <float 3.000000e+03, float 1.500000e+03, float 1.500000e+03, float 8.000000e+02>
  %i.bd = fmul <4 x float> %i.bc, %i.az
  %i.be = fptosi <4 x float> %i.bd to <4 x i32>
  store <4 x i32> %i.be, ptr getelementptr inbounds nuw (i8, ptr @Big_Hexagon_Thd_MB, i64 4), align 4, !tbaa !7
  %i.bf = fmul <4 x float> %i.ax, <float 2.200000e+03, float 1.000000e+03, float 1.000000e+03, float 5.000000e+02>
  %i.bg = fmul <4 x float> %i.bf, %i.az
  %i.bh = fptosi <4 x float> %i.bg to <4 x i32>
  store <4 x i32> %i.bh, ptr getelementptr inbounds nuw (i8, ptr @Threshold_DSR_MB, i64 4), align 4, !tbaa !7
  %i.bi = fmul float %i.ak, 2.500000e+02
  %i.bj = fmul float %i.bi, %i.aj
  %i.bk = fptosi float %i.bj to i32               ; 2 uses
  store i32 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @Threshold_DSR_MB, i64 20), align 4, !tbaa !7
  store i32 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @Threshold_DSR_MB, i64 24), align 8, !tbaa !7
  %i.bl = fmul <2 x float> %i.ar, <float 8.000000e+01, float 4.000000e+01>
  %i.bm = fmul <2 x float> %i.bl, %i.at
  %i.bn = fptosi <2 x float> %i.bm to <2 x i32>   ; 2 uses
  %i.bo = extractelement <2 x i32> %i.bn, i64 0
  store i32 %i.bo, ptr getelementptr inbounds nuw (i8, ptr @Median_Pred_Thd_MB, i64 20), align 4, !tbaa !7
  store <2 x i32> %i.bn, ptr getelementptr inbounds nuw (i8, ptr @Median_Pred_Thd_MB, i64 24), align 8, !tbaa !7
  %i.bp = fmul <2 x float> %i.ar, <float 4.000000e+02, float 2.000000e+02>
  %i.bq = fmul <2 x float> %i.bp, %i.at
  %i.br = fptosi <2 x float> %i.bq to <2 x i32>   ; 2 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 0
  store i32 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @Big_Hexagon_Thd_MB, i64 20), align 4, !tbaa !7
  store <2 x i32> %i.br, ptr getelementptr inbounds nuw (i8, ptr @Big_Hexagon_Thd_MB, i64 24), align 8, !tbaa !7
  %i.bt = fmul <4 x float> %i.ax, <float 6.000000e+01, float 3.000000e+01, float 3.000000e+01, float 1.500000e+01>
  %i.bu = fmul <4 x float> %i.bt, %i.az
  %i.bv = fptosi <4 x float> %i.bu to <4 x i32>
  store <4 x i32> %i.bv, ptr getelementptr inbounds nuw (i8, ptr @Multi_Ref_Thd_MB, i64 16), align 16, !tbaa !7
  store i32 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @Threshold_DSR_MB, i64 28), align 4, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @UMHEX_get_mem() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31
  %i.d = ashr i32 %i.c, 4
  %i.e = add nsw i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #12 ; 2 uses
  store ptr %i.g, ptr @flag_intra, align 8, !tbaa !32
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr @input, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33
  %i.l = shl nsw i32 %i.k, 1
  %i.m = or disjoint i32 %i.l, 1                  ; 2 uses
  %i.n = tail call i32 @get_mem2D(ptr noundef nonnull @McostState, i32 noundef %i.m, i32 noundef %i.m) #13
  %i.o = load ptr, ptr @img, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !34
  %i.r = tail call i32 @get_mem4Dint(ptr noundef nonnull @fastme_ref_cost, i32 noundef %i.q, i32 noundef 9, i32 noundef 4, i32 noundef 4) #13
  %i.s = add nsw i32 %i.r, %i.n
  %i.t = load ptr, ptr @img, align 8, !tbaa !11   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !91
  %i.w = sdiv i32 %i.v, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = sdiv i32 %i.y, 4
  %i.aa = tail call i32 @get_mem3Dint(ptr noundef nonnull @fastme_l0_cost, i32 noundef 9, i32 noundef %i.w, i32 noundef %i.z) #13
  %i.ab = add nsw i32 %i.s, %i.aa
  %i.ac = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !91
  %i.af = sdiv i32 %i.ae, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !31
  %i.ai = sdiv i32 %i.ah, 4
  %i.aj = tail call i32 @get_mem3Dint(ptr noundef nonnull @fastme_l1_cost, i32 noundef 9, i32 noundef %i.af, i32 noundef %i.ai) #13
  %i.ak = add nsw i32 %i.ab, %i.aj
  %i.al = tail call i32 @get_mem2D(ptr noundef nonnull @SearchState, i32 noundef 7, i32 noundef 7) #13
  %i.am = add nsw i32 %i.ak, %i.al
  %i.an = load ptr, ptr @img, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 52
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !31
  %i.aq = sdiv i32 %i.ap, 4
  %i.ar = tail call i32 @get_mem2Dint(ptr noundef nonnull @fastme_best_cost, i32 noundef 7, i32 noundef %i.aq) #13
  %i.as = add nsw i32 %i.am, %i.ar                ; 2 uses
  %i.at = load ptr, ptr @input, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2120
  %i.av = load i32, ptr %i.au, align 8, !tbaa !35
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !91
  %i.ba = sdiv i32 %i.az, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31
  %i.bd = sdiv i32 %i.bc, 4
  %i.be = tail call i32 @get_mem3Dint(ptr noundef nonnull @fastme_l0_cost_bipred, i32 noundef 9, i32 noundef %i.ba, i32 noundef %i.bd) #13
  %i.bf = add nsw i32 %i.be, %i.as
  %i.bg = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !91
  %i.bj = sdiv i32 %i.bi, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !31
  %i.bm = sdiv i32 %i.bl, 4
  %i.bn = tail call i32 @get_mem3Dint(ptr noundef nonnull @fastme_l1_cost_bipred, i32 noundef 9, i32 noundef %i.bj, i32 noundef %i.bm) #13
  %i.bo = add nsw i32 %i.bf, %i.bn
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.bo, %bb.d ], [ %i.as, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #5

declare i32 @get_mem2D(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @get_mem4Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @UMHEX_free_mem() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @McostState, align 8, !tbaa !36
  tail call void @free_mem2D(ptr noundef %i.a) #13
  %i.b = load ptr, ptr @fastme_ref_cost, align 8, !tbaa !37
  %i.c = load ptr, ptr @img, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  tail call void @free_mem4Dint(ptr noundef %i.b, i32 noundef %i.e, i32 noundef 9) #13
  %i.f = load ptr, ptr @fastme_l0_cost, align 8, !tbaa !38
  tail call void @free_mem3Dint(ptr noundef %i.f, i32 noundef 9) #13
  %i.g = load ptr, ptr @fastme_l1_cost, align 8, !tbaa !38
  tail call void @free_mem3Dint(ptr noundef %i.g, i32 noundef 9) #13
  %i.h = load ptr, ptr @SearchState, align 8, !tbaa !36
  tail call void @free_mem2D(ptr noundef %i.h) #13
  %i.i = load ptr, ptr @fastme_best_cost, align 8, !tbaa !40
  tail call void @free_mem2Dint(ptr noundef %i.i) #13
  %i.j = load ptr, ptr @flag_intra, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.j) #13
  %i.k = load ptr, ptr @input, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr @fastme_l0_cost_bipred, align 8, !tbaa !38
  tail call void @free_mem3Dint(ptr noundef %i.o, i32 noundef 9) #13
  %i.p = load ptr, ptr @fastme_l1_cost_bipred, align 8, !tbaa !38
  tail call void @free_mem3Dint(ptr noundef %i.p, i32 noundef 9) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @free_mem2D(ptr noundef) local_unnamed_addr #5

declare void @free_mem4Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @free_mem3Dint(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @UMHEXIntegerPelBlockMotionSearch(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [16 x i32], align 16              ; 4 uses
  %i.c = load ptr, ptr @img, align 8, !tbaa !11   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 15268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !41
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 14224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [536 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 424
  %i.m = load i32, ptr %i.l, align 8, !tbaa !46
  %.not945 = icmp eq i32 %i.m, 0
  br i1 %.not945, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.i, 1
  %.not946 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not946, i32 2, i32 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.p = phi i32 [ %i.o, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.q = load ptr, ptr @input, align 8, !tbaa !11 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = sext i32 %5 to i64                       ; 11 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 30 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !7    ; 29 uses
  %i.x = shl i32 %3, 2                            ; 2 uses
  %i.y = sext i16 %6 to i32                       ; 2 uses
  %i.z = add nsw i32 %i.x, %i.y                   ; 25 uses
  %i.aa = shl i32 %4, 2                           ; 2 uses
  %i.ab = sext i16 %7 to i32                      ; 2 uses
  %i.ac = add nsw i32 %i.aa, %i.ab                ; 25 uses
  %i.ad = load i16, ptr %8, align 2, !tbaa !47    ; 2 uses
  %i.ae = sext i16 %i.ad to i32                   ; 5 uses
  %i.af = add nsw i32 %3, %i.ae                   ; 21 uses
  %i.ag = load i16, ptr %9, align 2, !tbaa !47    ; 2 uses
  %i.ah = sext i16 %i.ag to i32                   ; 5 uses
  %i.ai = add nsw i32 %4, %i.ah                   ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !48
  %i.al = sub nsw i32 %3, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.an = load i32, ptr %i.am, align 4, !tbaa !49
  %i.ao = sub nsw i32 %4, %i.an
  %i.ap = lshr i32 %3, 2
  %i.aq = trunc i32 %i.ap to i16                  ; 2 uses
  %sext = shl i32 %i.al, 16
  %i.ar = ashr i32 %sext, 18                      ; 2 uses
  %sext947 = shl i32 %i.ao, 16
  %i.as = ashr i32 %sext947, 18                   ; 5 uses
  %i.at = getelementptr inbounds [4 x i8], ptr @Median_Pred_Thd_MB, i64 %i.s
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7  ; 2 uses
  %i.av = load ptr, ptr @fastme_best_cost, align 8, !tbaa !40
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %i.s
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50 ; 3 uses
  %i.az = load ptr, ptr @active_pps, align 8, !tbaa !11 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 192
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !52
  %.not948 = icmp eq i32 %i.bb, 0
  br i1 %.not948, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !53
  switch i32 %i.bd, label %bb.f [
    i32 0, label %bb.h
    i32 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 196
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !54
  %.not949 = icmp eq i32 %i.bf, 0
  br i1 %.not949, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !53
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 2936
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !55
  %i.bl = icmp ne i32 %i.bk, 0                    ; 2 uses
  %spec.select1012 = select i1 %i.bl, i32 3, i32 0
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.f, %bb.g
  %i.bm = phi i1 [ false, %bb.f ], [ %i.bl, %bb.h ], [ false, %bb.g ] ; 2 uses
  %i.bn = phi i32 [ 0, %bb.f ], [ %spec.select1012, %bb.h ], [ 0, %bb.g ] ; 2 uses
  store i32 %i.bn, ptr @dist_method, align 4, !tbaa !7
  %i.bo = add nsw i32 %i.p, %2
  %i.bp = sext i32 %i.bo to i64                   ; 5 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !57
  %i.bs = sext i16 %1 to i64                      ; 6 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 9 uses
  store ptr %i.bu, ptr @ref_pic_ptr, align 8, !tbaa !59
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 6448
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !67
  store ptr %i.bw, ptr @ref_pic_sub, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 6392
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !70 ; 2 uses
  %i.bz = trunc i32 %i.by to i16
  store i16 %i.bz, ptr @img_width, align 2, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 6396
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !71 ; 2 uses
  %i.cc = trunc i32 %i.cb to i16
  store i16 %i.cc, ptr @img_height, align 2, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 6408
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !72
  store i32 %i.ce, ptr @width_pad, align 4, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 6412
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !73
  store i32 %i.cg, ptr @height_pad, align 4, !tbaa !7
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.ch = load ptr, ptr @wp_weight, align 8, !tbaa !38
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.bp
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !40
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.bs
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !50
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  store i32 %i.cm, ptr @weight_luma, align 4, !tbaa !7
  %i.cn = load ptr, ptr @wp_offset, align 8, !tbaa !38
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.bp
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !40
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.bs
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !50
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  store i32 %i.cs, ptr @offset_luma, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %i.ct = load i32, ptr @ChromaMEEnable, align 4, !tbaa !7
  %.not950 = icmp eq i32 %i.ct, 0
  br i1 %.not950, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 6464
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !74 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !75
  store ptr %i.cw, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !75
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !75
  store ptr %i.cy, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 16), align 8, !tbaa !75
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 6416
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !76
  store i32 %i.da, ptr @width_pad_cr, align 4, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %i.bu, i64 6420
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !77
  store i32 %i.dc, ptr @height_pad_cr, align 4, !tbaa !7
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dd = load ptr, ptr @wp_weight, align 8, !tbaa !38
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.bp
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !40
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.bs
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load <2 x i32>, ptr %i.di, align 4, !tbaa !7
  store <2 x i32> %i.dj, ptr @weight_cr, align 4, !tbaa !7
  %i.dk = load ptr, ptr @wp_offset, align 8, !tbaa !38
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.bp
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.bs
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load <2 x i32>, ptr %i.dp, align 4, !tbaa !7
  store <2 x i32> %i.dq, ptr @offset_cr, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.dr = icmp sgt i32 %i.af, %10
  br i1 %i.dr, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %sext1013 = shl i32 %i.by, 16
  %i.ds = ashr exact i32 %sext1013, 16
  %i.dt = xor i32 %10, -1                         ; 2 uses
  %i.du = sub i32 %i.dt, %i.w
  %i.dv = add i32 %i.du, %i.ds
  %i.dw = icmp slt i32 %i.af, %i.dv
end_hunk_0
begin_hunk_1_@UMHEXIntegerPelBlockMotionSearch:bb.a
  %unroll_iter1278 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod1276.not = icmp eq i64 %xtraiter1275, 0
  %lcmp.mod1277 = icmp ne i64 %xtraiter1275, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1107
  %indvars.iv1153 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next1154, %._crit_edge1107 ] ; 2 uses
  %i.bai = load ptr, ptr @img, align 8            ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 180 ; 4 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bai, i64 176 ; 4 uses
  %i.bal = add nsw i64 %indvars.iv1153, %i.bae    ; 8 uses
  %i.bam = load ptr, ptr @fastme_l0_cost, align 8
  %i.ban = getelementptr inbounds [8 x i8], ptr %i.bam, i64 %i.s
  br i1 %i.bab, label %.lr.ph1106.split.us, label %.lr.ph1106.split

.lr.ph1106.split.us:                              ; preds = %.preheader
  %i.bao = load ptr, ptr @fastme_ref_cost, align 8
  %i.bap = getelementptr inbounds [8 x i8], ptr %i.bao, i64 %i.bs
  %i.baq = load ptr, ptr %i.bap, align 8, !tbaa !38
  %i.bar = getelementptr inbounds [8 x i8], ptr %i.baq, i64 %i.s
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !40 ; 2 uses
  br i1 %i.bac, label %.lr.ph1106.split.us.split.us, label %.lr.ph1106.split.us.split.preheader

.lr.ph1106.split.us.split.preheader:              ; preds = %.lr.ph1106.split.us
  %invariant.gep = getelementptr [8 x i8], ptr %i.bas, i64 %i.bad ; 5 uses
  br i1 %i.bah, label %.lr.ph1106.split.us.split.epil.preheader, label %.lr.ph1106.split.us.split

.lr.ph1106.split.us.split.us:                     ; preds = %.lr.ph1106.split.us
  %i.bat = load ptr, ptr %i.ban, align 8, !tbaa !40
  %i.bau = trunc nsw i64 %i.bal to i32
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gb, %.lr.ph1106.split.us.split.us
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %bb.gb ], [ 0, %.lr.ph1106.split.us.split.us ] ; 2 uses
  %i.bav = add nsw i64 %indvars.iv1148, %i.bad    ; 2 uses
  %i.baw = getelementptr inbounds [8 x i8], ptr %i.bas, i64 %i.bav
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !50
  %i.bay = getelementptr inbounds [4 x i8], ptr %i.bax, i64 %i.bal
  store i32 %.30896, ptr %i.bay, align 4, !tbaa !7
  %i.baz = load i32, ptr %i.baj, align 4, !tbaa !82
  %i.bba = ashr i32 %i.baz, 2
  %i.bbb = trunc nsw i64 %i.bav to i32
  %i.bbc = add i32 %i.bba, %i.bbb
  %i.bbd = sext i32 %i.bbc to i64
  %i.bbe = getelementptr inbounds [8 x i8], ptr %i.bat, i64 %i.bbd
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !50
  %i.bbg = load i32, ptr %i.bak, align 8, !tbaa !83
  %i.bbh = ashr i32 %i.bbg, 2
  %i.bbi = add i32 %i.bbh, %i.bau
  %i.bbj = sext i32 %i.bbi to i64
  %i.bbk = getelementptr inbounds [4 x i8], ptr %i.bbf, i64 %i.bbj
  store i32 %.30896, ptr %i.bbk, align 4, !tbaa !7
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 1 ; 2 uses
  %exitcond1152.not = icmp eq i64 %indvars.iv.next1149, %wide.trip.count1151
  br i1 %exitcond1152.not, label %._crit_edge1107, label %bb.gb, !llvm.loop !100

.lr.ph1106.split.us.split:                        ; preds = %.lr.ph1106.split.us.split.preheader, %.lr.ph1106.split.us.split
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145.3, %.lr.ph1106.split.us.split ], [ 0, %.lr.ph1106.split.us.split.preheader ] ; 5 uses
  %niter1279 = phi i64 [ %niter1279.next.3, %.lr.ph1106.split.us.split ], [ 0, %.lr.ph1106.split.us.split.preheader ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1144
  %i.bbl = load ptr, ptr %gep, align 8, !tbaa !50
  %i.bbm = getelementptr inbounds [4 x i8], ptr %i.bbl, i64 %i.bal
  store i32 %.30896, ptr %i.bbm, align 4, !tbaa !7
  %i.bbn = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1144
  %gep.1 = getelementptr i8, ptr %i.bbn, i64 8
  %i.bbo = load ptr, ptr %gep.1, align 8, !tbaa !50
  %i.bbp = getelementptr inbounds [4 x i8], ptr %i.bbo, i64 %i.bal
  store i32 %.30896, ptr %i.bbp, align 4, !tbaa !7
  %i.bbq = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1144
  %gep.2 = getelementptr i8, ptr %i.bbq, i64 16
  %i.bbr = load ptr, ptr %gep.2, align 8, !tbaa !50
  %i.bbs = getelementptr inbounds [4 x i8], ptr %i.bbr, i64 %i.bal
  store i32 %.30896, ptr %i.bbs, align 4, !tbaa !7
  %i.bbt = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1144
  %gep.3 = getelementptr i8, ptr %i.bbt, i64 24
  %i.bbu = load ptr, ptr %gep.3, align 8, !tbaa !50
  %i.bbv = getelementptr inbounds [4 x i8], ptr %i.bbu, i64 %i.bal
  store i32 %.30896, ptr %i.bbv, align 4, !tbaa !7
  %indvars.iv.next1145.3 = add nuw nsw i64 %indvars.iv1144, 4 ; 2 uses
  %niter1279.next.3 = add i64 %niter1279, 4       ; 2 uses
  %niter1279.ncmp.3 = icmp eq i64 %niter1279.next.3, %unroll_iter1278
  br i1 %niter1279.ncmp.3, label %._crit_edge1107.loopexit1268.unr-lcssa, label %.lr.ph1106.split.us.split, !llvm.loop !100

.lr.ph1106.split:                                 ; preds = %.preheader
  %i.bbw = load ptr, ptr @fastme_l1_cost, align 8
  %i.bbx = getelementptr inbounds [8 x i8], ptr %i.bbw, i64 %i.s
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !40 ; 3 uses
  %i.bbz = trunc nsw i64 %i.bal to i32            ; 3 uses
  br i1 %i.baf, label %.epil.preheader, label %.lr.ph1106.split.new

.lr.ph1106.split.new:                             ; preds = %.lr.ph1106.split, %.lr.ph1106.split.new
  %.08201105 = phi i32 [ %i.bcz, %.lr.ph1106.split.new ], [ 0, %.lr.ph1106.split ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph1106.split.new ], [ 0, %.lr.ph1106.split ]
  %i.bca = load i32, ptr %i.baj, align 4, !tbaa !82
  %i.bcb = ashr i32 %i.bca, 2
  %i.bcc = add nsw i32 %.08201105, %i.as
  %i.bcd = add i32 %i.bcc, %i.bcb
  %i.bce = sext i32 %i.bcd to i64
  %i.bcf = getelementptr inbounds [8 x i8], ptr %i.bby, i64 %i.bce
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !50
  %i.bch = load i32, ptr %i.bak, align 8, !tbaa !83
  %i.bci = ashr i32 %i.bch, 2
  %i.bcj = add i32 %i.bci, %i.bbz
  %i.bck = sext i32 %i.bcj to i64
  %i.bcl = getelementptr inbounds [4 x i8], ptr %i.bcg, i64 %i.bck
  store i32 %.30896, ptr %i.bcl, align 4, !tbaa !7
  %i.bcm = or disjoint i32 %.08201105, 1
  %i.bcn = load i32, ptr %i.baj, align 4, !tbaa !82
  %i.bco = ashr i32 %i.bcn, 2
  %i.bcp = add nsw i32 %i.bcm, %i.as
  %i.bcq = add i32 %i.bcp, %i.bco
  %i.bcr = sext i32 %i.bcq to i64
  %i.bcs = getelementptr inbounds [8 x i8], ptr %i.bby, i64 %i.bcr
  %i.bct = load ptr, ptr %i.bcs, align 8, !tbaa !50
  %i.bcu = load i32, ptr %i.bak, align 8, !tbaa !83
  %i.bcv = ashr i32 %i.bcu, 2
  %i.bcw = add i32 %i.bcv, %i.bbz
  %i.bcx = sext i32 %i.bcw to i64
  %i.bcy = getelementptr inbounds [4 x i8], ptr %i.bct, i64 %i.bcx
  store i32 %.30896, ptr %i.bcy, align 4, !tbaa !7
  %i.bcz = add nuw nsw i32 %.08201105, 2          ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1107.loopexit1269.unr-lcssa, label %.lr.ph1106.split.new, !llvm.loop !100

._crit_edge1107.loopexit1268.unr-lcssa:           ; preds = %.lr.ph1106.split.us.split
  br i1 %lcmp.mod1276.not, label %._crit_edge1107, label %.lr.ph1106.split.us.split.epil.preheader

.lr.ph1106.split.us.split.epil.preheader:         ; preds = %._crit_edge1107.loopexit1268.unr-lcssa, %.lr.ph1106.split.us.split.preheader
  %indvars.iv1144.epil.init = phi i64 [ 0, %.lr.ph1106.split.us.split.preheader ], [ %indvars.iv.next1145.3, %._crit_edge1107.loopexit1268.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1277)
  br label %.lr.ph1106.split.us.split.epil

.lr.ph1106.split.us.split.epil:                   ; preds = %.lr.ph1106.split.us.split.epil, %.lr.ph1106.split.us.split.epil.preheader
  %indvars.iv1144.epil = phi i64 [ %indvars.iv1144.epil.init, %.lr.ph1106.split.us.split.epil.preheader ], [ %indvars.iv.next1145.epil, %.lr.ph1106.split.us.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1106.split.us.split.epil.preheader ], [ %epil.iter.next, %.lr.ph1106.split.us.split.epil ]
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1144.epil
  %i.bda = load ptr, ptr %gep.epil, align 8, !tbaa !50
  %i.bdb = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %i.bal
  store i32 %.30896, ptr %i.bdb, align 4, !tbaa !7
  %indvars.iv.next1145.epil = add nuw nsw i64 %indvars.iv1144.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1275
  br i1 %epil.iter.cmp.not, label %._crit_edge1107, label %.lr.ph1106.split.us.split.epil, !llvm.loop !101

._crit_edge1107.loopexit1269.unr-lcssa:           ; preds = %.lr.ph1106.split.new
  br i1 %lcmp.mod.not, label %._crit_edge1107, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1107.loopexit1269.unr-lcssa, %.lr.ph1106.split
  %.08201105.epil.init = phi i32 [ 0, %.lr.ph1106.split ], [ %i.bcz, %._crit_edge1107.loopexit1269.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1274)
  %i.bdc = load i32, ptr %i.baj, align 4, !tbaa !82
  %i.bdd = ashr i32 %i.bdc, 2
  %i.bde = add nsw i32 %.08201105.epil.init, %i.as
  %i.bdf = add i32 %i.bde, %i.bdd
  %i.bdg = sext i32 %i.bdf to i64
  %i.bdh = getelementptr inbounds [8 x i8], ptr %i.bby, i64 %i.bdg
  %i.bdi = load ptr, ptr %i.bdh, align 8, !tbaa !50
  %i.bdj = load i32, ptr %i.bak, align 8, !tbaa !83
  %i.bdk = ashr i32 %i.bdj, 2
  %i.bdl = add i32 %i.bdk, %i.bbz
  %i.bdm = sext i32 %i.bdl to i64
  %i.bdn = getelementptr inbounds [4 x i8], ptr %i.bdi, i64 %i.bdm
  store i32 %.30896, ptr %i.bdn, align 4, !tbaa !7
  br label %._crit_edge1107

._crit_edge1107:                                  ; preds = %.epil.preheader, %._crit_edge1107.loopexit1269.unr-lcssa, %._crit_edge1107.loopexit1268.unr-lcssa, %.lr.ph1106.split.us.split.epil, %bb.gb
  %indvars.iv.next1154 = add nuw nsw i64 %indvars.iv1153, 1 ; 2 uses
  %exitcond1157.not = icmp eq i64 %indvars.iv.next1154, %wide.trip.count1156
  br i1 %exitcond1157.not, label %._crit_edge1109.split, label %.preheader, !llvm.loop !102

._crit_edge1109.split:                            ; preds = %._crit_edge1107, %.preheader.lr.ph, %.loopexit
  %i.bdo = icmp eq i16 %1, 0
  %.pre1163 = sext i16 %i.aq to i64               ; 2 uses
  br i1 %i.bdo, label %._crit_edge1109.split._crit_edge, label %bb.gc

bb.gc:                                            ; preds = %._crit_edge1109.split
  %i.bdp = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %.pre1163
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !7
  %i.bdr = icmp sgt i32 %i.bdq, %.30896
  br i1 %i.bdr, label %._crit_edge1109.split._crit_edge, label %bb.gd

._crit_edge1109.split._crit_edge:                 ; preds = %._crit_edge1109.split, %bb.gc
  %i.bds = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %.pre1163
  store i32 %.30896, ptr %i.bds, align 4, !tbaa !7
  br label %bb.gd

bb.gd:                                            ; preds = %._crit_edge1109.split._crit_edge, %bb.gc
  %i.bdt = sub nsw i32 %.30865, %3
  %i.bdu = trunc i32 %i.bdt to i16
  store i16 %i.bdu, ptr %8, align 2, !tbaa !47
  %i.bdv = sub nsw i32 %.30, %4
  %i.bdw = trunc i32 %i.bdv to i16
  store i16 %i.bdw, ptr %9, align 2, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.30896
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @UMHEX_setup(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  %i.c = load i32, ptr %i.b, align 8, !tbaa !85   ; 4 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !7
  %i.e = add nsw i32 %i.c, 1
  %i.f = srem i32 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 4 uses
  %i.h = icmp sgt i32 %4, 1                       ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %4 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @__const.UMHEX_setup.indication_blocktype, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = sext i32 %2 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %5, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.o = sext i32 %3 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.u = sext i16 %0 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88
  %i.x = sext i32 %i.k to i64                     ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !81   ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !47
  %i.ab = sext i16 %i.aa to i32
  store i32 %i.ab, ptr @pred_MV_uplayer, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !47
  %i.ae = sext i16 %i.ad to i32
  store i32 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @pred_MV_uplayer, i64 4), align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.x, %bb.d ], [ 0, %bb.c ]
  store i1 false, ptr @pred_MV_ref_flag, align 4
  %i.af = icmp eq i32 %1, 0
  br i1 %i.af, label %bb.f, label %.thread121

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr @img, align 8, !tbaa !11  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 15312
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !105
  %.not112 = icmp eq i32 %i.ai, 0
  br i1 %.not112, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp sgt i16 %0, 1
  br i1 %i.aj, label %.thread128.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.am = icmp eq i32 %i.al, 1
  %or.cond = icmp ult i16 %0, 2
  %or.cond116 = and i1 %or.cond, %i.am
  br i1 %or.cond116, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.an = sext i32 %2 to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.aq = sext i32 %3 to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !87
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !88
  %i.aw = sext i32 %4 to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !81 ; 2 uses
  %i.az = sub nsw i32 0, %i.g                     ; 2 uses
  %i.ba = sub nsw i32 %i.c, %i.g
  %i.bb = sitofp i32 %i.ba to float
  %i.bc = fadd float %i.bb, 1.000000e+00
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.be = load i16, ptr %i.ay, align 2, !tbaa !47
  %i.bf = sext i16 %i.be to i32
  %i.bg = mul nsw i32 %i.bf, %i.az
  %i.bh = load i16, ptr %i.bd, align 2, !tbaa !47
  %i.bi = sext i16 %i.bh to i32
  %i.bj = mul nsw i32 %i.bi, %i.az
  %i.bk = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %i.bl = insertelement <2 x i32> %i.bk, i32 %i.bj, i64 1
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x float> %i.bm, %i.bo
  %i.bq = fptosi <2 x float> %i.bp to <2 x i32>
  store <2 x i32> %i.bq, ptr @pred_MV_ref, align 4, !tbaa !7
  store i1 true, ptr @pred_MV_ref_flag, align 4
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.br = icmp sgt i16 %0, 0
  br i1 %i.br, label %.thread128, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !53
  %i.bu = icmp eq i32 %i.bt, 1
  %i.bv = icmp eq i16 %0, 0
  %or.cond5 = and i1 %i.bv, %i.bu
  br i1 %or.cond5, label %bb.l, label %.thread121

bb.l:                                             ; preds = %bb.k
  %i.bw = sext i32 %2 to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !86
  %i.bz = sext i32 %3 to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !75
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !88
  %i.cf = sext i32 %4 to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !81 ; 2 uses
  %i.ci = sub nsw i32 0, %i.g                     ; 2 uses
  %i.cj = sub nsw i32 %i.c, %i.g
  %i.ck = sitofp i32 %i.cj to float
  %i.cl = fadd float %i.ck, 1.000000e+00
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cn = load i16, ptr %i.ch, align 2, !tbaa !47
  %i.co = sext i16 %i.cn to i32
  %i.cp = mul nsw i32 %i.co, %i.ci
  %i.cq = load i16, ptr %i.cm, align 2, !tbaa !47
  %i.cr = sext i16 %i.cq to i32
  %i.cs = mul nsw i32 %i.cr, %i.ci
  %i.ct = insertelement <2 x i32> poison, i32 %i.cp, i64 0
  %i.cu = insertelement <2 x i32> %i.ct, i32 %i.cs, i64 1
  %i.cv = sitofp <2 x i32> %i.cu to <2 x float>
  %i.cw = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv <2 x float> %i.cv, %i.cx
  %i.cz = fptosi <2 x float> %i.cy to <2 x i32>
  store <2 x i32> %i.cz, ptr @pred_MV_ref, align 4, !tbaa !7
  store i1 true, ptr @pred_MV_ref_flag, align 4
  br label %.thread121

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.da = icmp eq i16 %0, 1
  br i1 %i.da, label %.thread129, label %.thread121

.thread128:                                       ; preds = %bb.j
  %i.db = sext i32 %2 to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %5, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !86
  %i.de = sext i32 %3 to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !75
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !87
  %i.di = zext nneg i16 %0 to i64
  %i.dj = getelementptr [8 x i8], ptr %i.dh, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !88
  %i.dm = sext i32 %4 to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !81 ; 2 uses
  %narrow123 = add nuw i16 %0, 1
  %i.dp = zext i16 %narrow123 to i32              ; 2 uses
  %i.dq = uitofp nneg i16 %0 to float
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %i.ds = load i16, ptr %i.do, align 2, !tbaa !47
  %i.dt = sext i16 %i.ds to i32
  %i.du = mul nsw i32 %i.dt, %i.dp
  %i.dv = load i16, ptr %i.dr, align 2, !tbaa !47
  %i.dw = sext i16 %i.dv to i32
  %i.dx = mul nsw i32 %i.dw, %i.dp
  %i.dy = insertelement <2 x i32> poison, i32 %i.du, i64 0
  %i.dz = insertelement <2 x i32> %i.dy, i32 %i.dx, i64 1
  %i.ea = sitofp <2 x i32> %i.dz to <2 x float>
  %i.eb = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fdiv <2 x float> %i.ea, %i.ec
  %i.ee = fptosi <2 x float> %i.ed to <2 x i32>
  store <2 x i32> %i.ee, ptr @pred_MV_ref, align 4, !tbaa !7
  store i1 true, ptr @pred_MV_ref_flag, align 4
  %i.ef = load i32, ptr @flag_intra_SAD, align 4, !tbaa !7
  %.not114 = icmp eq i32 %i.ef, 0
  br i1 %.not114, label %bb.n, label %bb.p

.thread128.thread:                                ; preds = %bb.g
  %i.eg = sext i32 %2 to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %5, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !86
  %i.ej = sext i32 %3 to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !75
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !87
  %i.en = zext nneg i16 %0 to i64
  %i.eo = getelementptr [8 x i8], ptr %i.em, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !88
  %i.er = sext i32 %4 to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !81 ; 2 uses
  %i.eu = lshr i16 %0, 1                          ; 2 uses
  %narrow = add nuw nsw i16 %i.eu, 1
  %i.ev = zext nneg i16 %narrow to i32            ; 2 uses
  %i.ew = uitofp nneg i16 %i.eu to float
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.ey = load i16, ptr %i.et, align 2, !tbaa !47
  %i.ez = sext i16 %i.ey to i32
  %i.fa = mul nsw i32 %i.ez, %i.ev
  %i.fb = load i16, ptr %i.ex, align 2, !tbaa !47
  %i.fc = sext i16 %i.fb to i32
  %i.fd = mul nsw i32 %i.fc, %i.ev
  %i.fe = insertelement <2 x i32> poison, i32 %i.fa, i64 0
  %i.ff = insertelement <2 x i32> %i.fe, i32 %i.fd, i64 1
  %i.fg = sitofp <2 x i32> %i.ff to <2 x float>
  %i.fh = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fdiv <2 x float> %i.fg, %i.fi
  %i.fk = fptosi <2 x float> %i.fj to <2 x i32>
  store <2 x i32> %i.fk, ptr @pred_MV_ref, align 4, !tbaa !7
  store i1 true, ptr @pred_MV_ref_flag, align 4
  %i.fl = load i32, ptr @flag_intra_SAD, align 4, !tbaa !7
  %.not114134 = icmp eq i32 %i.fl, 0
  br i1 %.not114134, label %.thread136, label %bb.p

.thread129:                                       ; preds = %bb.m
  %i.fm = load i32, ptr @flag_intra_SAD, align 4, !tbaa !7
  %.not114130 = icmp eq i32 %i.fm, 0
  br i1 %.not114130, label %.thread132, label %bb.p

.thread136:                                       ; preds = %.thread128.thread
  %i.fn = load ptr, ptr @fastme_ref_cost, align 8, !tbaa !37
  %i.fo = zext nneg i16 %0 to i64
  %i.fp = getelementptr [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 -16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !38
  %i.fs = sext i32 %4 to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !40
  %i.fv = sext i32 %2 to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !50
  %i.fy = sext i32 %3 to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !7
  br label %bb.p

.thread132:                                       ; preds = %.thread129
  %i.gb = load ptr, ptr @fastme_ref_cost, align 8, !tbaa !37
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !38
  %i.gd = sext i32 %4 to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !40
  %i.gg = sext i32 %2 to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !50
  %i.gj = sext i32 %3 to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !7
  br label %bb.p

bb.n:                                             ; preds = %.thread128
  %i.gm = load ptr, ptr @fastme_ref_cost, align 8, !tbaa !37
  %i.gn = zext nneg i16 %0 to i64
  %i.go = getelementptr [8 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.go, i64 -8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !38
  %i.gr = sext i32 %4 to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !40
  %i.gu = sext i32 %2 to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !50
  %i.gx = sext i32 %3 to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !7
  br label %bb.p

.thread121:                                       ; preds = %bb.k, %bb.l, %bb.e, %bb.m
  %i.ha = load i32, ptr @flag_intra_SAD, align 4
  %.not113 = icmp eq i32 %i.ha, 0
  %or.cond140 = select i1 %i.h, i1 %.not113, i1 false
  br i1 %or.cond140, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread121
  %i.hb = icmp eq i32 %1, 1
  %i.hc = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 180
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !82
  %i.hf = ashr i32 %i.he, 2
  %i.hg = add nsw i32 %i.hf, %2
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 176
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !83
  %i.hk = ashr i32 %i.hj, 2
  %i.hl = add nsw i32 %i.hk, %3
  %i.hm = sext i32 %i.hl to i64
  %fastme_l1_cost.val = load ptr, ptr @fastme_l1_cost, align 8
  %fastme_l0_cost.val = load ptr, ptr @fastme_l0_cost, align 8
  %i.hn = select i1 %i.hb, ptr %fastme_l1_cost.val, ptr %fastme_l0_cost.val
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %.0
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !40
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hh
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !50
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.hm
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !7
  %i.hu = sdiv i32 %i.ht, 2
  br label %bb.p

bb.p:                                             ; preds = %.thread121, %.thread128, %.thread129, %.thread128.thread, %bb.o, %.thread136, %.thread132, %bb.n
  %.sink = phi i32 [ 0, %.thread121 ], [ %i.hu, %bb.o ], [ 0, %.thread128 ], [ %i.gz, %bb.n ], [ %i.ga, %.thread136 ], [ %i.gl, %.thread132 ], [ 0, %.thread128.thread ], [ 0, %.thread129 ]
  store i32 %.sink, ptr @pred_SAD, align 4, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @UMHEXSubPelBlockMotionSearch(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !11   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15268
  %i.c = load i32, ptr %i.b, align 4, !tbaa !41
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [536 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 424
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46
  %.not207 = icmp eq i32 %i.k, 0
  br i1 %.not207, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.g, 1
  %.not208 = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not208, i32 2, i32 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.n = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.o = add nsw i32 %i.n, %2
  %i.p = sext i32 %i.o to i64                     ; 5 uses
  %i.q = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = sext i16 %1 to i64                       ; 5 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59   ; 8 uses
  %i.v = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = sext i32 %5 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !7    ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7  ; 7 uses
  %i.ac = shl i32 %3, 2
  %i.ad = add i32 %i.ac, 80                       ; 7 uses
  %i.ae = shl i32 %4, 2
  %i.af = add i32 %i.ae, 80                       ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 6392
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  %i.ai = sub nsw i32 %i.ah, %i.z
  %.tr = trunc i32 %i.ai to i16
  %i.aj = shl i16 %.tr, 2
  %i.ak = add i16 %i.aj, 160
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 6396
  %i.am = load i32, ptr %i.al, align 4, !tbaa !71 ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.ab
  %.tr209 = trunc i32 %i.an to i16
  %i.ao = shl i16 %.tr209, 2
  %i.ap = add i16 %i.ao, 160
  %i.aq = load ptr, ptr @active_pps, align 8, !tbaa !11 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !52
  %.not210 = icmp eq i32 %i.as, 0
  br i1 %.not210, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !53
  switch i32 %i.au, label %bb.f [
    i32 0, label %bb.h
    i32 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 196
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !54
  %.not211 = icmp eq i32 %i.aw, 0
  br i1 %.not211, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !53
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 2936
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !55
  %.fr = freeze i32 %i.bb
  %i.bc = icmp ne i32 %.fr, 0                     ; 2 uses
  %spec.select = select i1 %i.bc, i32 5, i32 2
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.f, %bb.g
  %i.bd = phi i1 [ false, %bb.f ], [ %i.bc, %bb.h ], [ false, %bb.g ] ; 2 uses
  %i.be = phi i32 [ 2, %bb.f ], [ %spec.select, %bb.h ], [ 2, %bb.g ] ; 2 uses
  store i32 %i.be, ptr @dist_method, align 4, !tbaa !7
  %i.bf = load i16, ptr %8, align 2, !tbaa !47
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %i.ad, %i.bg                ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.thread
  %i.bj = sext i16 %i.ak to i32
  %i.bk = add nsw i32 %i.bj, -1
  %i.bl = icmp slt i32 %i.bh, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bm = load i16, ptr %9, align 2, !tbaa !47
  %i.bn = sext i16 %i.bm to i32
  %i.bo = add nsw i32 %i.af, %i.bn                ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = sext i16 %i.ap to i32
  %i.br = add nsw i32 %i.bq, -1
  %i.bs = icmp slt i32 %i.bo, %i.br
  br i1 %i.bs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %.thread
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %storemerge = phi i32 [ 1, %bb.l ], [ 0, %bb.k ]
  store i32 %storemerge, ptr @ref_access_method, align 4, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 6448
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !67
  store ptr %i.bu, ptr @ref_pic_sub, align 8, !tbaa !69
  %i.bv = trunc i32 %i.ah to i16
  store i16 %i.bv, ptr @img_width, align 2, !tbaa !47
  %i.bw = trunc i32 %i.am to i16
  store i16 %i.bw, ptr @img_height, align 2, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 6408
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !72
  store i32 %i.by, ptr @width_pad, align 4, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 6412
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !73
  store i32 %i.ca, ptr @height_pad, align 4, !tbaa !7
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr @wp_weight, align 8, !tbaa !38
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.p
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !40
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.s
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !50
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  store i32 %i.cg, ptr @weight_luma, align 4, !tbaa !7
  %i.ch = load ptr, ptr @wp_offset, align 8, !tbaa !38
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.p
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !40
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.s
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !50
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  store i32 %i.cm, ptr @offset_luma, align 4, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cn = load i32, ptr @ChromaMEEnable, align 4, !tbaa !7
  %.not212 = icmp eq i32 %i.cn, 0
  br i1 %.not212, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 6464
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !74 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !75
  store ptr %i.cq, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !75
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !75
  store ptr %i.cs, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 16), align 8, !tbaa !75
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 6416
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !76
  store i32 %i.cu, ptr @width_pad_cr, align 4, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 6420
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !77
  store i32 %i.cw, ptr @height_pad_cr, align 4, !tbaa !7
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cx = load ptr, ptr @wp_weight, align 8, !tbaa !38
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.p
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !40
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.s
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load <2 x i32>, ptr %i.dc, align 4, !tbaa !7
  store <2 x i32> %i.dd, ptr @weight_cr, align 4, !tbaa !7
  %i.de = load ptr, ptr @wp_offset, align 8, !tbaa !38
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.p
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.s
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load <2 x i32>, ptr %i.dj, align 4, !tbaa !7
  store <2 x i32> %i.dk, ptr @offset_cr, align 4, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.dl = sext i16 %6 to i32                      ; 7 uses
end_hunk_1
begin_hunk_2_@UMHEXSubPelBlockMotionSearch:bb.a
bb.ak:                                            ; preds = %bb.aj
  %i.me = load ptr, ptr @mvbits, align 8, !tbaa !50 ; 2 uses
  %i.mf = sub nsw i32 %i.lk, %i.dl
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !7
  %i.mj = sub nsw i32 %.2225, %i.dq
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !7
  %i.mn = add nsw i32 %i.mm, %i.mi
  %i.mo = mul nsw i32 %i.mn, %13
  %i.mp = ashr i32 %i.mo, 16                      ; 2 uses
  %i.mq = load i32, ptr @dist_method, align 4, !tbaa !7
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.mr
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !11
  %i.mu = sub nsw i32 %.4198.1, %i.mp
  %i.mv = add nsw i32 %i.lk, %i.ad
  %i.mw = add nsw i32 %.2225, %i.af
  %i.mx = tail call i32 %i.mt(ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.z, i32 noundef %i.mu, i32 noundef %i.mv, i32 noundef %i.mw) #13
  %i.my = add nsw i32 %i.mp, %i.mx                ; 2 uses
  %i.mz = load ptr, ptr @SearchState, align 8, !tbaa !36
  %i.na = load i16, ptr %9, align 2, !tbaa !47
  %i.nb = sext i16 %i.na to i32
  %i.nc = sub nsw i32 %.2225, %i.nb
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr [8 x i8], ptr %i.mz, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ne, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !32
  %i.nh = load i16, ptr %8, align 2, !tbaa !47
  %i.ni = sext i16 %i.nh to i32
  %i.nj = sub nsw i32 %i.lk, %i.ni
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr i8, ptr %i.ng, i64 %i.nk
  %i.nm = getelementptr i8, ptr %i.nl, i64 3
  store i8 1, ptr %i.nm, align 1, !tbaa !78
  %i.nn = icmp slt i32 %i.my, %.4198.1
  br i1 %i.nn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.4198.2 = phi i32 [ %.4198.1, %bb.aj ], [ %i.my, %bb.al ], [ %.4198.1, %bb.ak ], [ %.4198.1, %bb.ai ], [ %.4198.1, %bb.ah ] ; 4 uses
  %.4188.2 = phi i32 [ %.4188.1, %bb.aj ], [ %i.lk, %bb.al ], [ %.4188.1, %bb.ak ], [ %.4188.1, %bb.ai ], [ %.4188.1, %bb.ah ] ; 2 uses
  %.4.2 = phi i32 [ %.4.1, %bb.aj ], [ %.2225, %bb.al ], [ %.4.1, %bb.ak ], [ %.4.1, %bb.ai ], [ %.4.1, %bb.ah ] ; 2 uses
  %.1.2 = phi i32 [ %.1.1, %bb.aj ], [ 0, %bb.al ], [ %.1.1, %bb.ak ], [ %.1.1, %bb.ai ], [ %.1.1, %bb.ah ]
  %i.no = add nsw i32 %.2225, -1                  ; 5 uses
  %i.np = load i16, ptr %8, align 2, !tbaa !47
  %i.nq = sext i16 %i.np to i32
  %i.nr = sub nsw i32 %.2186224, %i.nq            ; 2 uses
  %i.ns = add i32 %i.nr, 3
  %i.nt = icmp ult i32 %i.ns, 7
  br i1 %i.nt, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.nu = load i16, ptr %9, align 2, !tbaa !47
  %i.nv = sext i16 %i.nu to i32
  %i.nw = sub nsw i32 %i.no, %i.nv                ; 2 uses
  %i.nx = add i32 %i.nw, 3
  %i.ny = icmp ult i32 %i.nx, 7
  br i1 %i.ny, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.nz = load ptr, ptr @SearchState, align 8, !tbaa !36
  %i.oa = sext i32 %i.nw to i64
  %i.ob = getelementptr [8 x i8], ptr %i.nz, i64 %i.oa
  %i.oc = getelementptr i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !32
  %i.oe = sext i32 %i.nr to i64
  %i.of = getelementptr i8, ptr %i.od, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.of, i64 3
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !78
  %.not215.3 = icmp eq i8 %i.oh, 0
  br i1 %.not215.3, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.oi = load ptr, ptr @mvbits, align 8, !tbaa !50 ; 2 uses
  %i.oj = sub nsw i32 %.2186224, %i.dl
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !7
  %i.on = sub nsw i32 %i.no, %i.dq
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !7
  %i.or = add nsw i32 %i.oq, %i.om
  %i.os = mul nsw i32 %i.or, %13
  %i.ot = ashr i32 %i.os, 16                      ; 2 uses
  %i.ou = load i32, ptr @dist_method, align 4, !tbaa !7
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.ov
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !11
  %i.oy = sub nsw i32 %.4198.2, %i.ot
  %i.oz = add nsw i32 %.2186224, %i.ad
  %i.pa = add nsw i32 %i.no, %i.af
  %i.pb = tail call i32 %i.ox(ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.z, i32 noundef %i.oy, i32 noundef %i.oz, i32 noundef %i.pa) #13
  %i.pc = add nsw i32 %i.ot, %i.pb                ; 2 uses
  %i.pd = load ptr, ptr @SearchState, align 8, !tbaa !36
  %i.pe = load i16, ptr %9, align 2, !tbaa !47
  %i.pf = sext i16 %i.pe to i32
  %i.pg = sub nsw i32 %i.no, %i.pf
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr [8 x i8], ptr %i.pd, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 24
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !32
  %i.pl = load i16, ptr %8, align 2, !tbaa !47
  %i.pm = sext i16 %i.pl to i32
  %i.pn = sub nsw i32 %.2186224, %i.pm
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr i8, ptr %i.pk, i64 %i.po
  %i.pq = getelementptr i8, ptr %i.pp, i64 3
  store i8 1, ptr %i.pq, align 1, !tbaa !78
  %i.pr = icmp slt i32 %i.pc, %.4198.2
  br i1 %i.pr, label %.thread236, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %.not214 = icmp eq i32 %.1.2, 0
  br i1 %.not214, label %.thread236, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread236
  %.4.3247 = phi i32 [ %.4.2, %bb.aq ], [ %.4.3246, %.thread236 ]
  %.4188.3245 = phi i32 [ %.4188.2, %bb.aq ], [ %.4188.3244, %.thread236 ]
  %.4198.3243 = phi i32 [ %.4198.2, %bb.aq ], [ %.4198.3242, %.thread236 ]
  %i.ps = trunc i32 %.4188.3245 to i16
  store i16 %i.ps, ptr %8, align 2, !tbaa !47
  %i.pt = trunc i32 %.4.3247 to i16
  store i16 %i.pt, ptr %9, align 2, !tbaa !47
  ret i32 %.4198.3243
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @UMHEX_decide_intrabk_SAD() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !11   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !53
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.e = load i32, ptr %i.d, align 8, !tbaa !83   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @flag_intra, align 8, !tbaa !32
  %i.k = load i8, ptr %i.j, align 1, !tbaa !78
  %i.l = zext i8 %i.k to i32
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr @flag_intra, align 8, !tbaa !32
  %i.n = ashr i32 %i.e, 4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 4 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !78
  %i.s = zext i8 %i.r to i32
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.p, align 1, !tbaa !78
  %.not1 = icmp eq i8 %i.t, 0
  br i1 %.not1, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %i.p, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !78
  %.not2 = icmp eq i8 %i.v, 0
  br i1 %.not2, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.p, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !78
  %i.y = icmp ne i8 %i.x, 0
  %i.z = zext i1 %i.y to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.i, %bb.c, %bb.d, %bb.f
  %.sink = phi i32 [ %i.l, %bb.d ], [ %i.s, %bb.f ], [ 0, %bb.c ], [ 1, %bb.h ], [ 1, %bb.g ], [ %i.z, %bb.i ]
  store i32 %.sink, ptr @flag_intra_SAD, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @UMHEX_skip_intrabk_SAD(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !11   ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = add i32 %0, -9                           ; 2 uses
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %i.d, 2
  %i.f = zext i1 %i.e to i8
  %i.g = load ptr, ptr @flag_intra, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83
  %i.j = ashr i32 %i.i, 4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  store i8 %i.f, ptr %i.l, align 1, !tbaa !78
  %.pre = load ptr, ptr @img, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !53
  %.not = icmp ne i32 %i.o, 2
  %or.cond = icmp ult i32 %i.d, 2
  %or.cond27 = and i1 %or.cond, %.not
  br i1 %or.cond27, label %.preheader29, label %.loopexit

.preheader29:                                     ; preds = %._crit_edge
  %i.p = load ptr, ptr @fastme_l0_cost, align 8, !tbaa !38 ; 19 uses
  %i.q = load ptr, ptr @fastme_l1_cost, align 8, !tbaa !38 ; 19 uses
  %i.r = icmp sgt i32 %1, 0
  br i1 %i.r, label %.preheader28.us.preheader, label %.preheader28.preheader

.preheader28.preheader:                           ; preds = %.preheader29
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.pre56 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !40
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !40
  %.phi.trans.insert59 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %.pre60 = load ptr, ptr %.phi.trans.insert59, align 8, !tbaa !40
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %.pre62 = load ptr, ptr %.phi.trans.insert61, align 8, !tbaa !40
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %.pre64 = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !40
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %.pre66 = load ptr, ptr %.phi.trans.insert65, align 8, !tbaa !40
  %.phi.trans.insert67 = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %.pre68 = load ptr, ptr %.phi.trans.insert67, align 8, !tbaa !40
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %.pre70 = load ptr, ptr %.phi.trans.insert69, align 8, !tbaa !40
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %.pre72 = load ptr, ptr %.phi.trans.insert71, align 8, !tbaa !40
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %.pre74 = load ptr, ptr %.phi.trans.insert73, align 8, !tbaa !40
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  %.pre76 = load ptr, ptr %.phi.trans.insert75, align 8, !tbaa !40
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  %.pre78 = load ptr, ptr %.phi.trans.insert77, align 8, !tbaa !40
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  %.pre80 = load ptr, ptr %.phi.trans.insert79, align 8, !tbaa !40
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  %.pre82 = load ptr, ptr %.phi.trans.insert81, align 8, !tbaa !40
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 8, !tbaa !40
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 3 uses
  %.pre86 = load ptr, ptr %.phi.trans.insert85, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !40   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !50
  %i.aa = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ad = load ptr, ptr %.phi.trans.insert59, align 8, !tbaa !40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ag = load ptr, ptr %.phi.trans.insert61, align 8, !tbaa !40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.aj = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.am = load ptr, ptr %.phi.trans.insert65, align 8, !tbaa !40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.ap = load ptr, ptr %.phi.trans.insert67, align 8, !tbaa !40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.as = load ptr, ptr %.phi.trans.insert69, align 8, !tbaa !40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br label %.preheader28

.preheader28.us.preheader:                        ; preds = %.preheader29
  %.pre87.pre = load ptr, ptr %i.p, align 8, !tbaa !40
  %.pre88.pre = load ptr, ptr %i.q, align 8, !tbaa !40
  %wide.trip.count = zext nneg i32 %1 to i64      ; 18 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ci = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod93 = icmp ne i64 %xtraiter, 0
  %xtraiter101 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.cj = icmp ult i32 %1, 4
  %unroll_iter105 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod103.not = icmp eq i64 %xtraiter101, 0
  %lcmp.mod104 = icmp ne i64 %xtraiter101, 0
  %xtraiter108 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ck = icmp ult i32 %1, 4
  %unroll_iter112 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod110.not = icmp eq i64 %xtraiter108, 0
  %lcmp.mod111 = icmp ne i64 %xtraiter108, 0
  %xtraiter115 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.cl = icmp ult i32 %1, 4
  %unroll_iter119 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod117.not = icmp eq i64 %xtraiter115, 0
  %lcmp.mod118 = icmp ne i64 %xtraiter115, 0
  %xtraiter122 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.cm = icmp ult i32 %1, 4
  %unroll_iter126 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod125 = icmp ne i64 %xtraiter122, 0
  %xtraiter129 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.cn = icmp ult i32 %1, 4
  %unroll_iter133 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod131.not = icmp eq i64 %xtraiter129, 0
  %lcmp.mod132 = icmp ne i64 %xtraiter129, 0
  %xtraiter136 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.co = icmp ult i32 %1, 4
  %unroll_iter140 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod138.not = icmp eq i64 %xtraiter136, 0
  %lcmp.mod139 = icmp ne i64 %xtraiter136, 0
  %xtraiter143 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.cp = icmp ult i32 %1, 4
  %unroll_iter147 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod145.not = icmp eq i64 %xtraiter143, 0
  %lcmp.mod146 = icmp ne i64 %xtraiter143, 0
  %xtraiter150 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.cq = icmp ult i32 %1, 4
  %unroll_iter154 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod152.not = icmp eq i64 %xtraiter150, 0
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  br label %.preheader28.us

.preheader28.us:                                  ; preds = %.preheader28.us.preheader, %.split34.us.us
  %indvars.iv52 = phi i64 [ 0, %.preheader28.us.preheader ], [ %indvars.iv.next53, %.split34.us.us ] ; 64 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us.us.8, %.preheader28.us
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %._crit_edge.us.us.us.8 ], [ 0, %.preheader28.us ] ; 64 uses
  %i.cr = load ptr, ptr @fastme_ref_cost, align 8 ; 45 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.pre87.pre, i64 %indvars.iv48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !50
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv52
  store i32 0, ptr %i.cu, align 4, !tbaa !7
end_hunk_2
begin_hunk_3_@UMHEX_skip_intrabk_SAD:bb.a
  store i32 0, ptr %i.ug, align 4, !tbaa !7
  %i.uh = load ptr, ptr %.phi.trans.insert73, align 8, !tbaa !40 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !50
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %indvars.iv
  store i32 0, ptr %i.uk, align 4, !tbaa !7
  %i.ul = load ptr, ptr %.phi.trans.insert75, align 8, !tbaa !40 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !50
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv
  store i32 0, ptr %i.uo, align 4, !tbaa !7
  %i.up = load ptr, ptr %.phi.trans.insert77, align 8, !tbaa !40 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !50
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv
  store i32 0, ptr %i.us, align 4, !tbaa !7
  %i.ut = load ptr, ptr %.phi.trans.insert79, align 8, !tbaa !40 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !50
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %indvars.iv
  store i32 0, ptr %i.uw, align 4, !tbaa !7
  %i.ux = load ptr, ptr %.phi.trans.insert81, align 8, !tbaa !40 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !50
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %indvars.iv
  store i32 0, ptr %i.va, align 4, !tbaa !7
  %i.vb = load ptr, ptr %.phi.trans.insert83, align 8, !tbaa !40 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !50
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv
  store i32 0, ptr %i.ve, align 4, !tbaa !7
  %i.vf = load ptr, ptr %.phi.trans.insert85, align 8, !tbaa !40 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !50
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %indvars.iv
  store i32 0, ptr %i.vi, align 4, !tbaa !7
  %i.vj = load ptr, ptr %i.p, align 8, !tbaa !40  ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !50
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv
  store i32 0, ptr %i.vm, align 4, !tbaa !7
  %i.vn = load ptr, ptr %i.q, align 8, !tbaa !40  ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !50
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv
  store i32 0, ptr %i.vq, align 4, !tbaa !7
  %i.vr = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !40 ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !50
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv
  store i32 0, ptr %i.vu, align 4, !tbaa !7
  %i.vv = load ptr, ptr %i.av, align 8, !tbaa !50
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %indvars.iv
  store i32 0, ptr %i.vw, align 4, !tbaa !7
  %i.vx = load ptr, ptr %i.aw, align 8, !tbaa !50
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %indvars.iv
  store i32 0, ptr %i.vy, align 4, !tbaa !7
  %i.vz = load ptr, ptr %i.ax, align 8, !tbaa !50
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv
  store i32 0, ptr %i.wa, align 4, !tbaa !7
  %i.wb = load ptr, ptr %i.ay, align 8, !tbaa !50
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %indvars.iv
  store i32 0, ptr %i.wc, align 4, !tbaa !7
  %i.wd = load ptr, ptr %i.az, align 8, !tbaa !50
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %indvars.iv
  store i32 0, ptr %i.we, align 4, !tbaa !7
  %i.wf = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %indvars.iv
  store i32 0, ptr %i.wg, align 4, !tbaa !7
  %i.wh = load ptr, ptr %i.bb, align 8, !tbaa !50
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv
  store i32 0, ptr %i.wi, align 4, !tbaa !7
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !50
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv
  store i32 0, ptr %i.wl, align 4, !tbaa !7
  %i.wm = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !50
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv
  store i32 0, ptr %i.wo, align 4, !tbaa !7
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !50
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %indvars.iv
  store i32 0, ptr %i.wr, align 4, !tbaa !7
  %i.ws = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !50
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %indvars.iv
  store i32 0, ptr %i.wu, align 4, !tbaa !7
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !50
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv
  store i32 0, ptr %i.wx, align 4, !tbaa !7
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !50
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %indvars.iv
  store i32 0, ptr %i.xa, align 4, !tbaa !7
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !50
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv
  store i32 0, ptr %i.xd, align 4, !tbaa !7
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !50
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %indvars.iv
  store i32 0, ptr %i.xg, align 4, !tbaa !7
  %i.xh = getelementptr inbounds nuw i8, ptr %i.vj, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !50
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %indvars.iv
  store i32 0, ptr %i.xj, align 4, !tbaa !7
  %i.xk = getelementptr inbounds nuw i8, ptr %i.vn, i64 24
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !50
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %indvars.iv
  store i32 0, ptr %i.xm, align 4, !tbaa !7
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !50
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %indvars.iv
  store i32 0, ptr %i.xp, align 4, !tbaa !7
  %i.xq = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !40 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 24
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !50
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv
  store i32 0, ptr %i.xt, align 4, !tbaa !7
  %i.xu = load ptr, ptr %.phi.trans.insert59, align 8, !tbaa !40 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !50
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv
  store i32 0, ptr %i.xx, align 4, !tbaa !7
  %i.xy = load ptr, ptr %.phi.trans.insert61, align 8, !tbaa !40 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !50
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv
  store i32 0, ptr %i.yb, align 4, !tbaa !7
  %i.yc = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !40 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 24
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !50
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv
  store i32 0, ptr %i.yf, align 4, !tbaa !7
  %i.yg = load ptr, ptr %.phi.trans.insert65, align 8, !tbaa !40 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 24
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !50
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %indvars.iv
  store i32 0, ptr %i.yj, align 4, !tbaa !7
  %i.yk = load ptr, ptr %.phi.trans.insert67, align 8, !tbaa !40 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 24
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !50
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %indvars.iv
  store i32 0, ptr %i.yn, align 4, !tbaa !7
  %i.yo = load ptr, ptr %.phi.trans.insert69, align 8, !tbaa !40 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !50
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv
  store i32 0, ptr %i.yr, align 4, !tbaa !7
  %i.ys = load ptr, ptr %.phi.trans.insert71, align 8, !tbaa !40 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !50
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv
  store i32 0, ptr %i.yv, align 4, !tbaa !7
  %i.yw = load ptr, ptr %.phi.trans.insert73, align 8, !tbaa !40 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !50
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %indvars.iv
  store i32 0, ptr %i.yz, align 4, !tbaa !7
  %i.za = load ptr, ptr %.phi.trans.insert75, align 8, !tbaa !40 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 24
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !50
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.zc, i64 %indvars.iv
  store i32 0, ptr %i.zd, align 4, !tbaa !7
  %i.ze = load ptr, ptr %.phi.trans.insert77, align 8, !tbaa !40 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !50
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv
  store i32 0, ptr %i.zh, align 4, !tbaa !7
  %i.zi = load ptr, ptr %.phi.trans.insert79, align 8, !tbaa !40 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 24
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !50
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv
  store i32 0, ptr %i.zl, align 4, !tbaa !7
  %i.zm = load ptr, ptr %.phi.trans.insert81, align 8, !tbaa !40 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 24
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !50
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %indvars.iv
  store i32 0, ptr %i.zp, align 4, !tbaa !7
  %i.zq = load ptr, ptr %.phi.trans.insert83, align 8, !tbaa !40 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !50
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %indvars.iv
  store i32 0, ptr %i.zt, align 4, !tbaa !7
  %i.zu = load ptr, ptr %.phi.trans.insert85, align 8, !tbaa !40 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 24
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !50
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv
  store i32 0, ptr %i.zx, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %.loopexit, label %.preheader28, !llvm.loop !118

.loopexit:                                        ; preds = %.preheader28, %.split34.us.us, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @UMHEXBipredIntegerPelBlockMotionSearch(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, i16 noundef signext %8, i16 noundef signext %9, ptr nofree noundef captures(none) %10, ptr nofree noundef captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef readonly captures(none) %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [16 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = load ptr, ptr @img, align 8, !tbaa !11   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 14224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [536 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 432
  %i.k = load i32, ptr %i.j, align 8, !tbaa !130  ; 8 uses
  %i.l = load ptr, ptr @input, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = sext i32 %5 to i64                       ; 9 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 31 uses
  %i.r = load i32, ptr %i.o, align 8, !tbaa !7    ; 28 uses
  %i.s = shl i32 %3, 2                            ; 3 uses
  %i.t = sext i16 %6 to i32
  %i.u = shl i32 %4, 2                            ; 3 uses
  %i.v = sext i16 %7 to i32
  %i.w = sext i16 %8 to i32                       ; 2 uses
  %i.x = add nsw i32 %i.s, %i.w                   ; 22 uses
  %i.y = sext i16 %9 to i32                       ; 2 uses
  %i.z = add nsw i32 %i.u, %i.y                   ; 22 uses
  %i.aa = load i16, ptr %10, align 2, !tbaa !47
  %i.ab = trunc i32 %3 to i16                     ; 2 uses
  %i.ac = add i16 %i.aa, %i.ab                    ; 2 uses
  %i.ad = load i16, ptr %11, align 2, !tbaa !47
  %i.ae = trunc i32 %4 to i16                     ; 2 uses
  %i.af = add i16 %i.ad, %i.ae                    ; 2 uses
  %i.ag = load i16, ptr %12, align 2, !tbaa !47
  %i.ah = add i16 %i.ag, %i.ab
  %i.ai = load i16, ptr %13, align 2, !tbaa !47
  %i.aj = add i16 %i.ai, %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !48
  %i.am = sub nsw i32 %3, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !49
  %i.ap = sub nsw i32 %4, %i.ao
  %sext = shl i32 %i.am, 16
  %i.aq = ashr i32 %sext, 18                      ; 2 uses
  %sext1123 = shl i32 %i.ap, 16
  %i.ar = ashr i32 %sext1123, 18                  ; 7 uses
  %i.as = sext i16 %i.ac to i32                   ; 27 uses
  %i.at = sext i16 %i.af to i32                   ; 29 uses
  %i.au = getelementptr inbounds [4 x i8], ptr @Median_Pred_Thd_MB, i64 %i.n
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = load ptr, ptr @active_pps, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 196
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !54
  %.not = icmp eq i32 %i.ay, 0                    ; 3 uses
  br i1 %.not, label %._crit_edge1364, label %bb.b

._crit_edge1364:                                  ; preds = %bb.a
  %.pre1365 = sext i16 %1 to i64
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.az = icmp eq i32 %2, 0
  %i.ba = load ptr, ptr @wp_offset, align 8, !tbaa !38
  %i.bb = sext i32 %i.k to i64
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %i.bb ; 4 uses
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.be = sext i16 %1 to i64                      ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = getelementptr i8, ptr %i.bc, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.be
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bn = getelementptr i8, ptr %i.bc, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.bq = sext i16 %1 to i64                      ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !50
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bq
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge1364, %bb.c, %bb.d
  %.pre-phi = phi i64 [ %.pre1365, %._crit_edge1364 ], [ %i.be, %bb.c ], [ %i.bq, %bb.d ] ; 11 uses
  %i.bx = phi i32 [ 0, %._crit_edge1364 ], [ %i.bh, %bb.c ], [ %i.bs, %bb.d ]
  %i.by = phi i32 [ 0, %._crit_edge1364 ], [ %i.bm, %bb.c ], [ %i.bw, %bb.d ]
  %i.bz = add nsw i32 %i.k, %2
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !57
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.pre-phi ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !59 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6448
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !67
  store ptr %i.cg, ptr @ref_pic1_sub, align 8, !tbaa !69
  %i.ch = icmp eq i32 %2, 0                       ; 6 uses
  %i.ci = add nsw i32 %i.k, 1                     ; 5 uses
  %i.cj = select i1 %i.ch, i32 %i.ci, i32 %i.k
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !57 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !59
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 6448
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !67
  store ptr %i.cp, ptr @ref_pic2_sub, align 8, !tbaa !69
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 6392
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !70 ; 2 uses
  %i.cs = trunc i32 %i.cr to i16
  store i16 %i.cs, ptr @img_width, align 2, !tbaa !47
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 6396
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !71 ; 3 uses
  %i.cv = trunc i32 %i.cu to i16
  store i16 %i.cv, ptr @img_height, align 2, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 6408
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !72
  store i32 %i.cx, ptr @width_pad, align 4, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 6412
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !73
  store i32 %i.cz, ptr @height_pad, align 4, !tbaa !7
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.da = load ptr, ptr @wbp_weight, align 8, !tbaa !37 ; 4 uses
  br i1 %i.ch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.db = sext i32 %i.k to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %.pre-phi
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !40
  %i.dg = sext i32 %i.ci to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !38
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.pre-phi
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !40
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.dl = sext i32 %i.ci to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !38
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !40
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.pre-phi
  %i.dq = sext i32 %i.k to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !38
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !40
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %.pre-phi
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.in.in.in = phi ptr [ %i.df, %bb.g ], [ %i.dp, %bb.h ]
  %.in1125.in = phi ptr [ %i.dk, %bb.g ], [ %i.du, %bb.h ]
  %.sink.in.in = load ptr, ptr %.sink.in.in.in, align 8, !tbaa !50
  %.sink.in = load i32, ptr %.sink.in.in, align 4, !tbaa !7
  %.sink = trunc i32 %.sink.in to i16
  store i16 %.sink, ptr @weight1, align 2, !tbaa !47
  %.in1125 = load ptr, ptr %.in1125.in, align 8, !tbaa !50
  %i.dv = load i32, ptr %.in1125, align 4, !tbaa !7
  %i.dw = trunc i32 %i.dv to i16
  store i16 %i.dw, ptr @weight2, align 2, !tbaa !47
  %sext1126 = shl i32 %i.bx, 16
  %i.dx = ashr exact i32 %sext1126, 16
  %sext1127 = shl i32 %i.by, 16
  %i.dy = ashr exact i32 %sext1127, 16
  %i.dz = add nsw i32 %i.dx, 1
  %i.ea = add nsw i32 %i.dz, %i.dy
  %i.eb = lshr i32 %i.ea, 1
  %i.ec = trunc i32 %i.eb to i16
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.ed = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !7
  %i.ee = shl nuw i32 1, %i.ed
  %i.ef = trunc i32 %i.ee to i16                  ; 2 uses
  store i16 %i.ef, ptr @weight1, align 2, !tbaa !47
  store i16 %i.ef, ptr @weight2, align 2, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge1124 = phi i16 [ 0, %bb.j ], [ %i.ec, %bb.i ]
  %storemerge = phi ptr [ @computeBiPredSAD1, %bb.j ], [ @computeBiPredSAD2, %bb.i ]
  store i16 %storemerge1124, ptr @offsetBi, align 2, !tbaa !47
  store ptr %storemerge, ptr @computeBiPred, align 8, !tbaa !11
  %i.eg = load i32, ptr @ChromaMEEnable, align 4, !tbaa !7
end_hunk_3
begin_hunk_4_@UMHEXBipredIntegerPelBlockMotionSearch:bb.a
  %i.bgc = icmp slt i32 %i.bgb, %.281076.2
  br i1 %i.bgc, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.bgd = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.bge = sub nsw i32 %.281076.2, %i.bgb
  %i.bgf = add nsw i32 %i.bfo, 80
  %i.bgg = add nsw i32 %i.bft, 80
  %i.bgh = tail call i32 %i.bgd(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.bge, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.bgf, i32 noundef %i.bgg) #13
  %i.bgi = add nsw i32 %i.bgh, %i.bgb             ; 2 uses
  %i.bgj = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.bgk = getelementptr inbounds [8 x i8], ptr %i.bgj, i64 %i.bez
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !32
  %i.bgm = getelementptr inbounds i8, ptr %i.bgl, i64 %i.bfd
  store i8 1, ptr %i.bgm, align 1, !tbaa !78
  %i.bgn = icmp slt i32 %i.bgi, %.281076.2
  br i1 %i.bgn, label %.thread1464, label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp
  %i.bgo = icmp eq i32 %.281030.2, %.2610281310
  %i.bgp = icmp eq i32 %.28.2, %.261311
  %or.cond1187 = select i1 %i.bgo, i1 %i.bgp, i1 false
  br i1 %or.cond1187, label %.loopexit, label %.thread1464

.loopexit:                                        ; preds = %bb.ep, %.thread1464, %bb.fu, %.loopexit1236, %.loopexit1234, %.loopexit1241
  %.291077 = phi i32 [ %.61054, %.loopexit1241 ], [ %.281076.31469, %.thread1464 ], [ %.251073, %.loopexit1234 ], [ %.211069, %.loopexit1236 ], [ %.281076.2, %bb.fu ], [ %.201068, %bb.ep ] ; 7 uses
  %.291031 = phi i32 [ %.61008, %.loopexit1241 ], [ %.281030.31471, %.thread1464 ], [ %.251027, %.loopexit1234 ], [ %.211023, %.loopexit1236 ], [ %.2610281310, %bb.fu ], [ %.201022, %bb.ep ]
  %.29 = phi i32 [ %.6, %.loopexit1241 ], [ %.28.31472, %.thread1464 ], [ %.25, %.loopexit1234 ], [ %.21, %.loopexit1236 ], [ %.261311, %bb.fu ], [ %.20, %bb.ep ]
  %i.bgq = ashr i32 %i.r, 2                       ; 2 uses
  %i.bgr = icmp sgt i32 %i.bgq, 0
  br i1 %i.bgr, label %.preheader.lr.ph, label %._crit_edge1323.split

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.bgs = ashr i32 %i.q, 2                       ; 6 uses
  %i.bgt = icmp sgt i32 %i.bgs, 0
  br i1 %i.bgt, label %.preheader.preheader, label %._crit_edge1323.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bgu = add nsw i32 %i.bgs, -1                 ; 2 uses
  %i.bgv = icmp eq i32 %i.bgu, 0
  %unroll_iter = and i32 %i.bgs, 2147483646
  %i.bgw = and i32 %i.q, 4
  %lcmp.mod.not = icmp eq i32 %i.bgw, 0
  %lcmp.mod1509 = trunc i32 %i.bgs to i1
  %i.bgx = icmp eq i32 %i.bgu, 0
  %unroll_iter1514 = and i32 %i.bgs, 2147483646
  %i.bgy = and i32 %i.q, 4
  %lcmp.mod1512.not = icmp eq i32 %i.bgy, 0
  %lcmp.mod1513 = trunc i32 %i.bgs to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1321
  %.510471322 = phi i32 [ %i.bkh, %._crit_edge1321 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bgz = load ptr, ptr @img, align 8            ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 180 ; 6 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgz, i64 176 ; 6 uses
  %i.bhc = add nsw i32 %.510471322, %i.aq         ; 6 uses
  br i1 %i.ch, label %.lr.ph1320.split.us, label %.lr.ph1320.split

.lr.ph1320.split.us:                              ; preds = %.preheader
  %i.bhd = load ptr, ptr @fastme_l0_cost_bipred, align 8
  %i.bhe = getelementptr inbounds [8 x i8], ptr %i.bhd, i64 %i.n
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !40 ; 3 uses
  br i1 %i.bgx, label %.epil.preheader1510, label %.lr.ph1320.split.us.new

.lr.ph1320.split.us.new:                          ; preds = %.lr.ph1320.split.us, %.lr.ph1320.split.us.new
  %.010351319.us = phi i32 [ %i.bif, %.lr.ph1320.split.us.new ], [ 0, %.lr.ph1320.split.us ] ; 3 uses
  %niter1515 = phi i32 [ %niter1515.next.1, %.lr.ph1320.split.us.new ], [ 0, %.lr.ph1320.split.us ]
  %i.bhg = load i32, ptr %i.bha, align 4, !tbaa !82
  %i.bhh = ashr i32 %i.bhg, 2
  %i.bhi = add nsw i32 %.010351319.us, %i.ar
  %i.bhj = add i32 %i.bhi, %i.bhh
  %i.bhk = sext i32 %i.bhj to i64
  %i.bhl = getelementptr inbounds [8 x i8], ptr %i.bhf, i64 %i.bhk
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !50
  %i.bhn = load i32, ptr %i.bhb, align 8, !tbaa !83
  %i.bho = ashr i32 %i.bhn, 2
  %i.bhp = add i32 %i.bhc, %i.bho
  %i.bhq = sext i32 %i.bhp to i64
  %i.bhr = getelementptr inbounds [4 x i8], ptr %i.bhm, i64 %i.bhq
  store i32 %.291077, ptr %i.bhr, align 4, !tbaa !7
  %i.bhs = or disjoint i32 %.010351319.us, 1
  %i.bht = load i32, ptr %i.bha, align 4, !tbaa !82
  %i.bhu = ashr i32 %i.bht, 2
  %i.bhv = add nsw i32 %i.bhs, %i.ar
  %i.bhw = add i32 %i.bhv, %i.bhu
  %i.bhx = sext i32 %i.bhw to i64
  %i.bhy = getelementptr inbounds [8 x i8], ptr %i.bhf, i64 %i.bhx
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !50
  %i.bia = load i32, ptr %i.bhb, align 8, !tbaa !83
  %i.bib = ashr i32 %i.bia, 2
  %i.bic = add i32 %i.bhc, %i.bib
  %i.bid = sext i32 %i.bic to i64
  %i.bie = getelementptr inbounds [4 x i8], ptr %i.bhz, i64 %i.bid
  store i32 %.291077, ptr %i.bie, align 4, !tbaa !7
  %i.bif = add nuw nsw i32 %.010351319.us, 2      ; 2 uses
  %niter1515.next.1 = add nuw nsw i32 %niter1515, 2 ; 2 uses
  %niter1515.ncmp.1 = icmp eq i32 %niter1515.next.1, %unroll_iter1514
  br i1 %niter1515.ncmp.1, label %._crit_edge1321.loopexit.unr-lcssa, label %.lr.ph1320.split.us.new, !llvm.loop !128

.lr.ph1320.split:                                 ; preds = %.preheader
  %i.big = load ptr, ptr @fastme_l1_cost_bipred, align 8
  %i.bih = getelementptr inbounds [8 x i8], ptr %i.big, i64 %i.n
  %i.bii = load ptr, ptr %i.bih, align 8, !tbaa !40 ; 3 uses
  br i1 %i.bgv, label %.epil.preheader, label %.lr.ph1320.split.new

.lr.ph1320.split.new:                             ; preds = %.lr.ph1320.split, %.lr.ph1320.split.new
  %.010351319 = phi i32 [ %i.bji, %.lr.ph1320.split.new ], [ 0, %.lr.ph1320.split ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph1320.split.new ], [ 0, %.lr.ph1320.split ]
  %i.bij = load i32, ptr %i.bha, align 4, !tbaa !82
  %i.bik = ashr i32 %i.bij, 2
  %i.bil = add nsw i32 %.010351319, %i.ar
  %i.bim = add i32 %i.bil, %i.bik
  %i.bin = sext i32 %i.bim to i64
  %i.bio = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.bin
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !50
  %i.biq = load i32, ptr %i.bhb, align 8, !tbaa !83
  %i.bir = ashr i32 %i.biq, 2
  %i.bis = add i32 %i.bhc, %i.bir
  %i.bit = sext i32 %i.bis to i64
  %i.biu = getelementptr inbounds [4 x i8], ptr %i.bip, i64 %i.bit
  store i32 %.291077, ptr %i.biu, align 4, !tbaa !7
  %i.biv = or disjoint i32 %.010351319, 1
  %i.biw = load i32, ptr %i.bha, align 4, !tbaa !82
  %i.bix = ashr i32 %i.biw, 2
  %i.biy = add nsw i32 %i.biv, %i.ar
  %i.biz = add i32 %i.biy, %i.bix
  %i.bja = sext i32 %i.biz to i64
  %i.bjb = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.bja
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !50
  %i.bjd = load i32, ptr %i.bhb, align 8, !tbaa !83
  %i.bje = ashr i32 %i.bjd, 2
  %i.bjf = add i32 %i.bhc, %i.bje
  %i.bjg = sext i32 %i.bjf to i64
  %i.bjh = getelementptr inbounds [4 x i8], ptr %i.bjc, i64 %i.bjg
  store i32 %.291077, ptr %i.bjh, align 4, !tbaa !7
  %i.bji = add nuw nsw i32 %.010351319, 2         ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1321.loopexit1504.unr-lcssa, label %.lr.ph1320.split.new, !llvm.loop !128

._crit_edge1321.loopexit.unr-lcssa:               ; preds = %.lr.ph1320.split.us.new
  br i1 %lcmp.mod1512.not, label %._crit_edge1321, label %.epil.preheader1510

.epil.preheader1510:                              ; preds = %._crit_edge1321.loopexit.unr-lcssa, %.lr.ph1320.split.us
  %.010351319.us.epil.init = phi i32 [ 0, %.lr.ph1320.split.us ], [ %i.bif, %._crit_edge1321.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1513)
  %i.bjj = load i32, ptr %i.bha, align 4, !tbaa !82
  %i.bjk = ashr i32 %i.bjj, 2
  %i.bjl = add nsw i32 %.010351319.us.epil.init, %i.ar
  %i.bjm = add i32 %i.bjl, %i.bjk
  %i.bjn = sext i32 %i.bjm to i64
  %i.bjo = getelementptr inbounds [8 x i8], ptr %i.bhf, i64 %i.bjn
  %i.bjp = load ptr, ptr %i.bjo, align 8, !tbaa !50
  %i.bjq = load i32, ptr %i.bhb, align 8, !tbaa !83
  %i.bjr = ashr i32 %i.bjq, 2
  %i.bjs = add i32 %i.bhc, %i.bjr
  %i.bjt = sext i32 %i.bjs to i64
  %i.bju = getelementptr inbounds [4 x i8], ptr %i.bjp, i64 %i.bjt
  store i32 %.291077, ptr %i.bju, align 4, !tbaa !7
  br label %._crit_edge1321

._crit_edge1321.loopexit1504.unr-lcssa:           ; preds = %.lr.ph1320.split.new
  br i1 %lcmp.mod.not, label %._crit_edge1321, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1321.loopexit1504.unr-lcssa, %.lr.ph1320.split
  %.010351319.epil.init = phi i32 [ 0, %.lr.ph1320.split ], [ %i.bji, %._crit_edge1321.loopexit1504.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1509)
  %i.bjv = load i32, ptr %i.bha, align 4, !tbaa !82
  %i.bjw = ashr i32 %i.bjv, 2
  %i.bjx = add nsw i32 %.010351319.epil.init, %i.ar
  %i.bjy = add i32 %i.bjx, %i.bjw
  %i.bjz = sext i32 %i.bjy to i64
  %i.bka = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.bjz
  %i.bkb = load ptr, ptr %i.bka, align 8, !tbaa !50
  %i.bkc = load i32, ptr %i.bhb, align 8, !tbaa !83
  %i.bkd = ashr i32 %i.bkc, 2
  %i.bke = add i32 %i.bhc, %i.bkd
  %i.bkf = sext i32 %i.bke to i64
  %i.bkg = getelementptr inbounds [4 x i8], ptr %i.bkb, i64 %i.bkf
  store i32 %.291077, ptr %i.bkg, align 4, !tbaa !7
  br label %._crit_edge1321

._crit_edge1321:                                  ; preds = %.epil.preheader, %._crit_edge1321.loopexit1504.unr-lcssa, %.epil.preheader1510, %._crit_edge1321.loopexit.unr-lcssa
  %i.bkh = add nuw nsw i32 %.510471322, 1         ; 2 uses
  %exitcond1357.not = icmp eq i32 %i.bkh, %i.bgq
  br i1 %exitcond1357.not, label %._crit_edge1323.split, label %.preheader, !llvm.loop !129

._crit_edge1323.split:                            ; preds = %._crit_edge1321, %.preheader.lr.ph, %.loopexit
  %i.bki = sub nsw i32 %.291031, %3
  %i.bkj = trunc i32 %i.bki to i16
  store i16 %i.bkj, ptr %10, align 2, !tbaa !47
  %i.bkk = sub nsw i32 %.29, %4
  %i.bkl = trunc i32 %i.bkk to i16
  store i16 %i.bkl, ptr %11, align 2, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.291077
}

declare i32 @computeBiPredSAD2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #5

declare i32 @computeBiPredSAD1(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: nounwind uwtable
define dso_local void @UMHEXSetMotionVectorPredictor(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i16 noundef signext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef writeonly captures(none) %9) local_unnamed_addr #3 {
bb.a:
  %10 = alloca %struct.pix_pos, align 4           ; 18 uses
  %11 = alloca %struct.pix_pos, align 4           ; 19 uses
  %12 = alloca %struct.pix_pos, align 4           ; 21 uses
  %13 = alloca %struct.pix_pos, align 4           ; 7 uses
  %i.a = shl nsw i32 %5, 2                        ; 3 uses
  %i.b = shl nsw i32 %6, 2                        ; 2 uses
  %i.c = load ptr, ptr @img, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.f = load i32, ptr @bipred_flag, align 4, !tbaa !7
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %i.g = load ptr, ptr @fastme_l0_cost_bipred, align 8
  %i.h = load ptr, ptr @fastme_l0_cost, align 8
  %i.i = select i1 %.not, ptr %i.h, ptr %i.g      ; 4 uses
  %i.j = load ptr, ptr @fastme_l1_cost_bipred, align 8
  %i.k = load ptr, ptr @fastme_l1_cost, align 8
  %i.l = select i1 %.not, ptr %i.k, ptr %i.j      ; 4 uses
  store i32 0, ptr @SAD_a, align 4, !tbaa !7
  store i32 0, ptr @SAD_b, align 4, !tbaa !7
  store i32 0, ptr @SAD_c, align 4, !tbaa !7
  store i32 0, ptr @SAD_d, align 4, !tbaa !7
  %i.m = add nsw i32 %i.a, -1                     ; 2 uses
  call void @getLuma4x4Neighbour(i32 noundef %i.e, i32 noundef %i.m, i32 noundef %i.b, ptr noundef nonnull %10) #13
  %i.n = add nsw i32 %i.b, -1                     ; 3 uses
  call void @getLuma4x4Neighbour(i32 noundef %i.e, i32 noundef %i.a, i32 noundef %i.n, ptr noundef nonnull %11) #13
  %i.o = add nsw i32 %7, %i.a                     ; 3 uses
  call void @getLuma4x4Neighbour(i32 noundef %i.e, i32 noundef %i.o, i32 noundef %i.n, ptr noundef nonnull %12) #13
  call void @getLuma4x4Neighbour(i32 noundef %i.e, i32 noundef %i.m, i32 noundef %i.n, ptr noundef nonnull %13) #13
  %i.p = icmp sgt i32 %6, 0
  br i1 %i.p, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.q = icmp slt i32 %5, 2
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %6, 2
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %7, 16
  br i1 %i.s, label %.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %i.o, 8
  br i1 %i.t, label %.thread, label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %i.o, 16
  br i1 %i.u, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.a
  %.pr = load i32, ptr %12, align 4, !tbaa !133
  %.not174 = icmp eq i32 %.pr, 0
  br i1 %.not174, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !134
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.v = load ptr, ptr @img, align 8, !tbaa !11   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 15268
  %i.x = load i32, ptr %i.w, align 4, !tbaa !41
  %.not175 = icmp eq i32 %i.x, 0                  ; 2 uses
  br i1 %.not175, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %10, align 4, !tbaa !133   ; 3 uses
  %.not176 = icmp eq i32 %i.y, 0
  br i1 %.not176, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !135
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !136
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !78
  %i.aj = sext i8 %i.ai to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ak = phi i32 [ %i.aj, %bb.j ], [ -1, %bb.i ] ; 2 uses
  %i.al = load i32, ptr %11, align 4, !tbaa !133  ; 3 uses
  %.not177 = icmp eq i32 %i.al, 0
  br i1 %.not177, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !135
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !136
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !78
  %i.aw = sext i8 %i.av to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ax = phi i32 [ %i.aw, %bb.l ], [ -1, %bb.k ] ; 2 uses
  %i.ay = load i32, ptr %12, align 4, !tbaa !133  ; 2 uses
  %.not178 = icmp eq i32 %i.ay, 0
  br i1 %.not178, label %bb.ah, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !135
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !136
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !78
  %i.bj = sext i8 %i.bi to i32
  br label %bb.ah

bb.o:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 14224
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !43
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [536 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 424
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !46
  %.not179 = icmp eq i32 %i.br, 0
  %i.bs = load i32, ptr %10, align 4, !tbaa !133  ; 6 uses
  %.not180 = icmp eq i32 %i.bs, 0                 ; 2 uses
  br i1 %.not179, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not180, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !137
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [536 x i8], ptr %i.bl, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 424
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !46
  %.not187 = icmp eq i32 %i.by, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !135
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !32
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !136
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !78
  %i.cj = sext i8 %i.ci to i32
  %i.ck = zext i1 %.not187 to i32
  %spec.select279 = shl nsw i32 %i.cj, %i.ck
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cl = phi i32 [ %spec.select279, %bb.q ], [ -1, %bb.p ] ; 2 uses
  %i.cm = load i32, ptr %11, align 4, !tbaa !133  ; 3 uses
  %.not188 = icmp eq i32 %i.cm, 0
  br i1 %.not188, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !137
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [536 x i8], ptr %i.bl, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 424
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !46
  %.not189 = icmp eq i32 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !135
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !32
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !136
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !78
  %i.dd = sext i8 %i.dc to i32
  %i.de = zext i1 %.not189 to i32
  %spec.select280 = shl nsw i32 %i.dd, %i.de
  br label %bb.t

end_hunk_4
begin_hunk_5_@UMHEXSetMotionVectorPredictor:bb.a
  %i.pr = sext i16 %i.pq to i32
  %i.ps = zext i1 %.not206.1 to i32
  %spec.select285 = shl nsw i32 %i.pr, %i.ps
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.pt = phi i32 [ 0, %bb.cn ], [ %spec.select285, %bb.co ] ; 2 uses
  br i1 %.not213.not, label %bb.cx, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pu = getelementptr inbounds [536 x i8], ptr %i.nj, i64 %i.kt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 424
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !46
  %.not208.1 = icmp ne i32 %i.pw, 0
  %i.px = load ptr, ptr %i.kx, align 8, !tbaa !88
  %i.py = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.la
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !81
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 2
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !47
  %i.qc = sext i16 %i.qb to i32
  %i.qd = zext i1 %.not208.1 to i32
  %spec.select286 = shl nsw i32 %i.qc, %i.qd
  br label %bb.cx

bb.cr:                                            ; preds = %bb.bx
  br i1 %.not209, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qe = load ptr, ptr %i.kd, align 8, !tbaa !88
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.qe, i64 %i.kg
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !81
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 2
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !47
  %i.qj = sext i16 %i.qi to i32
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.qk = phi i32 [ %i.qj, %bb.cs ], [ 0, %bb.cr ] ; 2 uses
  br i1 %.not211.not, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ql = load ptr, ptr %i.kn, align 8, !tbaa !88
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.kq
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !81
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 2
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !47
  %i.qq = sext i16 %i.qp to i32
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.qr = phi i32 [ %i.qq, %bb.cu ], [ 0, %bb.ct ] ; 2 uses
  br i1 %.not213.not, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qs = load ptr, ptr %i.kx, align 8, !tbaa !88
  %i.qt = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.la
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !81
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !47
  %i.qx = sext i16 %i.qw to i32
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cq, %bb.cw, %bb.cv, %bb.cp, %bb.ck, %bb.cj, %bb.ch
  %.0169.1 = phi i32 [ %i.oa, %bb.ck ], [ %i.qk, %bb.cw ], [ %i.qk, %bb.cv ], [ %i.oa, %bb.ch ], [ %i.oa, %bb.cj ], [ %i.pi, %bb.cp ], [ %i.pi, %bb.cq ] ; 6 uses
  %.0168.1 = phi i32 [ %i.om, %bb.ck ], [ %i.qr, %bb.cw ], [ %i.qr, %bb.cv ], [ %i.om, %bb.ch ], [ %i.om, %bb.cj ], [ %i.pt, %bb.cp ], [ %i.pt, %bb.cq ] ; 5 uses
  %.0167.1 = phi i32 [ %i.ox, %bb.ck ], [ %i.qx, %bb.cw ], [ 0, %bb.cv ], [ 0, %bb.ch ], [ %i.ov, %bb.cj ], [ 0, %bb.cp ], [ %spec.select286, %bb.cq ] ; 5 uses
  switch i32 %.1, label %default.unreachable259 [
    i32 0, label %bb.da
    i32 1, label %bb.dc
    i32 2, label %bb.cz
    i32 3, label %bb.cy
  ]

bb.cy:                                            ; preds = %bb.cx
  br label %bb.dc

bb.cz:                                            ; preds = %bb.cx
  br label %bb.dc

bb.da:                                            ; preds = %bb.cx
  br i1 %or.cond8.not, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qy = call noundef i32 @llvm.smin.i32(i32 %.0168.1, i32 %.0167.1)
  %i.qz = call noundef i32 @llvm.smin.i32(i32 %.0169.1, i32 %i.qy)
  %i.ra = call noundef i32 @llvm.smax.i32(i32 %.0168.1, i32 %.0167.1)
  %i.rb = call noundef i32 @llvm.smax.i32(i32 %.0169.1, i32 %i.ra)
  %.neg237.1 = add nsw i32 %.0168.1, %.0169.1
  %i.rc = add nsw i32 %.neg237.1, %.0167.1
  %i.rd = add nsw i32 %i.rb, %i.qz
  %i.re = sub nsw i32 %i.rc, %i.rd
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx
  %.1166.1 = phi i32 [ %.0167.1, %bb.cy ], [ %i.re, %bb.db ], [ %.0168.1, %bb.cz ], [ %.0169.1, %bb.da ], [ %.0169.1, %bb.cx ]
  %i.rf = trunc i32 %.1166.1 to i16
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.rf, ptr %i.rg, align 2, !tbaa !47
  br i1 %.not218, label %bb.do, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.le, label %bb.dk, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rh = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %.0169.1, i1 true) ; 2 uses
  %i.ri = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %.0168.1, i1 true) ; 2 uses
  %i.rj = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %.0167.1, i1 true) ; 2 uses
  %i.rk = call i32 @llvm.umax.i32(i32 %i.ri, i32 %i.rj)
  %i.rl = call i32 @llvm.umax.i32(i32 %i.rh, i32 %i.rk)
  %i.rm = add nuw nsw i32 %i.ri, %i.rh
  %i.rn = add nuw nsw i32 %i.rm, %i.rj            ; 2 uses
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rp = icmp samesign ugt i32 %i.rn, 3
  %i.rq = load i32, ptr %i.lf, align 4, !tbaa !33 ; 4 uses
  br i1 %i.rp, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.rr = mul nsw i32 %i.rq, 3
  %i.rs = add nsw i32 %i.rr, 8
  %i.rt = ashr i32 %i.rs, 4
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  %i.ru = add nsw i32 %i.rq, 2
  %i.rv = ashr i32 %i.ru, 2
  br label %bb.dj

bb.di:                                            ; preds = %bb.de
  %i.rw = load i32, ptr %i.lf, align 4, !tbaa !33 ; 2 uses
  %i.rx = add nsw i32 %i.rw, 4
  %i.ry = ashr i32 %i.rx, 3
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  %i.rz = phi i32 [ %i.rw, %bb.di ], [ %i.rq, %bb.dh ], [ %i.rq, %bb.dg ] ; 2 uses
  %.0.1 = phi i32 [ %i.ry, %bb.di ], [ %i.rv, %bb.dh ], [ %i.rt, %bb.dg ]
  %i.sa = shl nuw nsw i32 %i.rl, 1
  %i.sb = call noundef i32 @llvm.smax.i32(i32 %.0.1, i32 %i.sa)
  %i.sc = call noundef i32 @llvm.smin.i32(i32 %i.rz, i32 %i.sb)
  %i.sd = load i32, ptr %i.lk, align 4, !tbaa !7
  %i.se = icmp sgt i32 %i.lh, %i.sd
  %spec.store.select.1 = select i1 %i.se, i32 %i.rz, i32 %i.sc
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dd
  %i.sf = load i32, ptr %i.lf, align 4, !tbaa !33
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sroa.6.0.ph = phi i32 [ %spec.store.select.1, %bb.dj ], [ %i.sf, %bb.dk ]
  %i.sg = call noundef i32 @llvm.smax.i32(i32 %.sroa.0.0, i32 %.sroa.6.0.ph) ; 3 uses
  store i32 %i.sg, ptr @dsr_new_search_range, align 4, !tbaa !7
  %i.sh = getelementptr inbounds nuw i8, ptr %i.gt, i64 4140
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !139
  switch i32 %i.si, label %bb.dn [
    i32 2, label %.sink.split278
    i32 1, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.sj = call noundef i32 @llvm.smin.i32(i32 %i.gl, i32 1)
  %i.sk = add nsw i32 %i.sj, 1
  br label %.sink.split278.sink.split

bb.dn:                                            ; preds = %bb.dl
  %i.sl = call noundef i32 @llvm.smin.i32(i32 %i.gl, i32 1)
  %i.sm = add nsw i32 %i.sl, 1
  %i.sn = ashr i32 %8, 2
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr [16 x i8], ptr %i.gt, i64 %i.so
  %i.sq = ashr i32 %7, 2
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr [4 x i8], ptr %i.sp, i64 %i.sr
  %i.st = getelementptr i8, ptr %i.ss, i64 180
  %i.su = load i32, ptr %i.st, align 4, !tbaa !7
  %i.sv = call noundef i32 @llvm.smin.i32(i32 %i.su, i32 2)
  %i.sw = mul nsw i32 %i.sv, %i.sm
  br label %.sink.split278.sink.split

.sink.split278.sink.split:                        ; preds = %bb.dn, %bb.dm
  %.sink287 = phi i32 [ %i.sk, %bb.dm ], [ %i.sw, %bb.dn ]
  %i.sx = sdiv i32 %i.sg, %.sink287
  br label %.sink.split278

.sink.split278:                                   ; preds = %.sink.split278.sink.split, %bb.dl
  %.sink = phi i32 [ %i.sg, %bb.dl ], [ %i.sx, %.sink.split278.sink.split ]
  store i32 %.sink, ptr %9, align 4, !tbaa !7
  br label %bb.do

bb.do:                                            ; preds = %.sink.split278, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  ret void
}

declare void @getLuma4x4Neighbour(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !6, i64 1560, !6, i64 1564, !6, i64 1568, !6, i64 1572, !6, i64 1576, !6, i64 1580, !5, i64 1584, !6, i64 2084, !6, i64 2088, !6, i64 2092, !6, i64 2096, !6, i64 2100, !6, i64 2104, !6, i64 2108, !6, i64 2112, !6, i64 2116, !6, i64 2120, !6, i64 2124, !6, i64 2128, !6, i64 2132, !6, i64 2136, !6, i64 2140, !6, i64 2144, !6, i64 2148, !6, i64 2152, !6, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !6, i64 2928, !6, i64 2932, !6, i64 2936, !6, i64 2940, !6, i64 2944, !6, i64 2948, !6, i64 2952, !6, i64 2956, !6, i64 2960, !6, i64 2964, !6, i64 2968, !6, i64 2972, !5, i64 2976, !6, i64 4000, !6, i64 4004, !6, i64 4008, !6, i64 4012, !6, i64 4016, !6, i64 4020, !6, i64 4024, !6, i64 4028, !6, i64 4032, !6, i64 4036, !6, i64 4040, !6, i64 4044, !6, i64 4048, !6, i64 4052, !6, i64 4056, !6, i64 4060, !6, i64 4064, !6, i64 4068, !6, i64 4072, !6, i64 4076, !12, i64 4080, !6, i64 4088, !6, i64 4092, !6, i64 4096, !6, i64 4100, !6, i64 4104, !6, i64 4108, !6, i64 4112, !6, i64 4116, !6, i64 4120, !6, i64 4124, !6, i64 4128, !6, i64 4132, !6, i64 4136, !6, i64 4140, !6, i64 4144, !6, i64 4148, !6, i64 4152, !6, i64 4156, !6, i64 4160, !6, i64 4164, !6, i64 4168, !6, i64 4172, !6, i64 4176, !6, i64 4180, !6, i64 4184, !6, i64 4188, !5, i64 4192, !5, i64 4448, !6, i64 4704, !6, i64 4708, !6, i64 4712, !6, i64 4716, !6, i64 4720, !6, i64 4724, !6, i64 4728, !6, i64 4732, !6, i64 4736, !6, i64 4740, !6, i64 4744, !6, i64 4748, !6, i64 4752, !6, i64 4756, !6, i64 4760, !6, i64 4764, !6, i64 4768, !6, i64 4772, !5, i64 4776, !6, i64 5032, !6, i64 5036, !13, i64 5040, !13, i64 5048, !14, i64 5056, !13, i64 5064, !6, i64 5072, !6, i64 5076, !6, i64 5080, !6, i64 5084, !6, i64 5088, !6, i64 5092, !6, i64 5096, !6, i64 5100, !6, i64 5104, !6, i64 5108, !6, i64 5112, !6, i64 5116, !6, i64 5120, !6, i64 5124, !6, i64 5128, !6, i64 5132, !6, i64 5136, !12, i64 5144, !12, i64 5152, !12, i64 5160, !5, i64 5168, !6, i64 5208, !5, i64 5212, !6, i64 5244, !6, i64 5248, !6, i64 5252, !6, i64 5256, !6, i64 5260, !6, i64 5264, !6, i64 5268, !6, i64 5272, !6, i64 5276, !6, i64 5280, !6, i64 5284, !6, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !6, i64 5648, !6, i64 5652, !6, i64 5656, !6, i64 5660, !5, i64 5664, !5, i64 5704, !6, i64 5744, !6, i64 5748, !6, i64 5752, !6, i64 5756, !6, i64 5760, !6, i64 5764, !6, i64 5768, !6, i64 5772, !6, i64 5776, !5, i64 5780, !6, i64 5792}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p2 omnipotent char", !16, i64 0}
!18 = !{!"any p3 pointer", !16, i64 0}
!19 = !{!"p3 int", !18, i64 0}
!20 = !{!"any p4 pointer", !18, i64 0}
!21 = !{!"p4 int", !20, i64 0}
!22 = !{!"p1 _ZTS10macroblock", !10, i64 0}
!23 = !{!"any p5 pointer", !20, i64 0}
!24 = !{!"any p6 pointer", !23, i64 0}
!25 = !{!"p6 short", !24, i64 0}
!26 = !{!"p1 _ZTS18DecRefPicMarking_s", !10, i64 0}
!27 = !{!"p2 double", !16, i64 0}
!28 = !{!"p3 double", !18, i64 0}
!29 = !{!"short", !5, i64 0}
!30 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !8, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 128, !17, i64 136, !6, i64 144, !19, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !21, i64 14160, !19, i64 14168, !19, i64 14176, !19, i64 14184, !21, i64 14192, !21, i64 14200, !10, i64 14208, !10, i64 14216, !22, i64 14224, !13, i64 14232, !13, i64 14240, !6, i64 14248, !6, i64 14252, !6, i64 14256, !6, i64 14260, !5, i64 14264, !6, i64 14328, !6, i64 14332, !6, i64 14336, !6, i64 14340, !6, i64 14344, !12, i64 14352, !6, i64 14360, !6, i64 14364, !6, i64 14368, !6, i64 14372, !25, i64 14376, !25, i64 14384, !25, i64 14392, !25, i64 14400, !5, i64 14408, !6, i64 14440, !6, i64 14444, !6, i64 14448, !6, i64 14452, !6, i64 14456, !6, i64 14460, !6, i64 14464, !6, i64 14468, !5, i64 14472, !6, i64 15240, !6, i64 15244, !6, i64 15248, !6, i64 15252, !6, i64 15256, !6, i64 15260, !6, i64 15264, !6, i64 15268, !6, i64 15272, !6, i64 15276, !6, i64 15280, !6, i64 15284, !6, i64 15288, !5, i64 15292, !6, i64 15296, !6, i64 15300, !5, i64 15304, !6, i64 15312, !6, i64 15316, !6, i64 15320, !6, i64 15324, !6, i64 15328, !6, i64 15332, !6, i64 15336, !6, i64 15340, !6, i64 15344, !6, i64 15348, !6, i64 15352, !6, i64 15356, !6, i64 15360, !6, i64 15364, !6, i64 15368, !6, i64 15372, !26, i64 15376, !6, i64 15384, !6, i64 15388, !6, i64 15392, !6, i64 15396, !6, i64 15400, !6, i64 15404, !6, i64 15408, !6, i64 15412, !6, i64 15416, !6, i64 15420, !6, i64 15424, !6, i64 15428, !6, i64 15432, !6, i64 15436, !6, i64 15440, !6, i64 15444, !6, i64 15448, !6, i64 15452, !6, i64 15456, !6, i64 15460, !6, i64 15464, !6, i64 15468, !6, i64 15472, !27, i64 15480, !28, i64 15488, !19, i64 15496, !27, i64 15504, !6, i64 15512, !6, i64 15516, !6, i64 15520, !6, i64 15524, !6, i64 15528, !6, i64 15532, !6, i64 15536, !6, i64 15540, !6, i64 15544, !6, i64 15548, !5, i64 15552, !5, i64 15576, !6, i64 15584, !6, i64 15588, !29, i64 15592, !6, i64 15596, !6, i64 15600, !6, i64 15604, !6, i64 15608, !6, i64 15612}
!31 = !{!30, !6, i64 52}
!32 = !{!14, !14, i64 0}
!33 = !{!15, !6, i64 28}
!34 = !{!30, !6, i64 32}
!35 = !{!15, !6, i64 2120}
!36 = !{!17, !17, i64 0}
!37 = !{!21, !21, i64 0}
!38 = !{!19, !19, i64 0}
!39 = !{!"p2 int", !16, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!30, !6, i64 15268}
!42 = !{!30, !22, i64 14224}
!43 = !{!30, !6, i64 12}
!44 = !{!"long long", !5, i64 0}
!45 = !{!"macroblock", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !6, i64 20, !5, i64 24, !22, i64 56, !22, i64 64, !6, i64 72, !5, i64 76, !5, i64 332, !5, i64 348, !6, i64 364, !44, i64 368, !5, i64 376, !5, i64 392, !44, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !6, i64 428, !6, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !29, i64 480, !12, i64 488, !6, i64 496, !6, i64 500, !6, i64 504, !6, i64 508, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528}
!46 = !{!45, !6, i64 424}
!47 = !{!29, !29, i64 0}
!48 = !{!30, !6, i64 192}
!49 = !{!30, !6, i64 196}
!50 = !{!13, !13, i64 0}
!51 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !6, i64 56, !6, i64 60, !6, i64 64, !5, i64 68, !5, i64 100, !5, i64 132, !6, i64 164, !6, i64 168, !6, i64 172, !14, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232}
!52 = !{!51, !6, i64 192}
!53 = !{!30, !6, i64 20}
!54 = !{!51, !6, i64 196}
!55 = !{!15, !6, i64 2936}
!56 = !{!"p2 _ZTS16storable_picture", !16, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"p1 _ZTS16storable_picture", !10, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"p2 short", !16, i64 0}
!61 = !{!"p4 short", !20, i64 0}
!62 = !{!"p5 short", !23, i64 0}
!63 = !{!"p3 short", !18, i64 0}
!64 = !{!"p3 omnipotent char", !18, i64 0}
!65 = !{!"p3 long long", !18, i64 0}
!66 = !{!"storable_picture", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !5, i64 1608, !5, i64 3192, !5, i64 4776, !6, i64 6360, !6, i64 6364, !6, i64 6368, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !6, i64 6392, !6, i64 6396, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !6, i64 6420, !6, i64 6424, !6, i64 6428, !6, i64 6432, !60, i64 6440, !61, i64 6448, !61, i64 6456, !62, i64 6464, !63, i64 6472, !14, i64 6480, !64, i64 6488, !65, i64 6496, !65, i64 6504, !61, i64 6512, !17, i64 6520, !17, i64 6528, !58, i64 6536, !58, i64 6544, !58, i64 6552, !6, i64 6560, !6, i64 6564, !6, i64 6568, !6, i64 6572, !6, i64 6576, !6, i64 6580, !6, i64 6584}
!67 = !{!66, !61, i64 6448}
!68 = !{!"", !61, i64 0, !5, i64 8}
!69 = !{!68, !61, i64 0}
!70 = !{!66, !6, i64 6392}
!71 = !{!66, !6, i64 6396}
!72 = !{!66, !6, i64 6408}
!73 = !{!66, !6, i64 6412}
!74 = !{!66, !62, i64 6464}
!75 = !{!61, !61, i64 0}
!76 = !{!66, !6, i64 6416}
!77 = !{!66, !6, i64 6420}
!78 = !{!5, !5, i64 0}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"p1 short", !10, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!30, !6, i64 180}
!83 = !{!30, !6, i64 176}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !{!15, !6, i64 2096}
!86 = !{!62, !62, i64 0}
!87 = !{!63, !63, i64 0}
!88 = !{!60, !60, i64 0}
!89 = !{!15, !6, i64 16}
!90 = !{!15, !6, i64 5252}
!91 = !{!30, !6, i64 68}
!92 = distinct !{!92, !79}
!93 = distinct !{!93, !79}
!94 = distinct !{!94, !79}
!95 = distinct !{!95, !79}
!96 = distinct !{!96, !79}
!97 = distinct !{!97, !79}
!98 = distinct !{!98, !79}
!99 = distinct !{!99, !79}
!100 = distinct !{!100, !79}
!101 = distinct !{!101, !84}
!102 = distinct !{!102, !79}
!103 = !{!30, !6, i64 24}
!104 = !{!30, !25, i64 14384}
!105 = !{!30, !6, i64 15312}
!106 = distinct !{!106, !79}
!107 = distinct !{!107, !79}
!108 = distinct !{!108, !84}
!109 = distinct !{!109, !84}
!110 = distinct !{!110, !84}
!111 = distinct !{!111, !84}
!112 = distinct !{!112, !84}
!113 = distinct !{!113, !84}
!114 = distinct !{!114, !84}
!115 = distinct !{!115, !84}
!116 = distinct !{!116, !84}
!117 = distinct !{!117, !79}
!118 = distinct !{!118, !79}
!119 = !{!30, !6, i64 0}
!120 = distinct !{!120, !79}
!121 = distinct !{!121, !79}
!122 = distinct !{!122, !79}
!123 = distinct !{!123, !79}
!124 = distinct !{!124, !79}
!125 = distinct !{!125, !79}
!126 = distinct !{!126, !79}
!127 = distinct !{!127, !79}
!128 = distinct !{!128, !79}
!129 = distinct !{!129, !79}
!130 = !{!45, !6, i64 432}
!131 = !{!25, !25, i64 0}
!132 = !{!"pix_pos", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!133 = !{!132, !6, i64 0}
!134 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7}
!135 = !{!132, !6, i64 20}
!136 = !{!132, !6, i64 16}
!137 = !{!132, !6, i64 4}
!138 = !{!15, !6, i64 5248}
!139 = !{!15, !6, i64 4140}
end_hunk_5
