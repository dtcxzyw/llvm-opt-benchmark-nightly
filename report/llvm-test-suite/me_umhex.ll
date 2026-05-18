inline.NumInlined: 78
inline.NumDeleted: 3
begin_hunk_0
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
  store <4 x float> <float f0x3C23D70A, float f0x3C23D70A, float f0x3C23D70A, float 2.000000e-02>, ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_1, i64 4), align 4, !tbaa !8
  store <2 x float> splat (float 3.000000e-02), ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_1, i64 20), align 4, !tbaa !8
  store float 4.000000e-02, ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_1, i64 28), align 4, !tbaa !8
  store <4 x float> <float 6.000000e-02, float 7.000000e-02, float 7.000000e-02, float 8.000000e-02>, ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_2, i64 4), align 4, !tbaa !8
  store <2 x float> <float 1.200000e-01, float 1.100000e-01>, ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_2, i64 20), align 4, !tbaa !8
  store float 1.500000e-01, ptr getelementptr inbounds nuw (i8, ptr @AlphaFourth_2, i64 28), align 4, !tbaa !8
  tail call void @UMHEX_DefineThresholdMB()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @UMHEX_DefineThresholdMB() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = sdiv i32 %i.c, 6
  %i.e = srem i32 %i.c, 6
  %i.f = add nsw i32 %i.d, 15
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5252
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = sitofp i32 %i.h to double                ; 2 uses
  %i.j = fneg double %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double 1.000000e-01, double 1.000000e+00)
  %i.l = fmul nnan double %i.i, 1.000000e-01
  %i.m = load ptr, ptr @img, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18
  %i.p = sdiv i32 %i.o, 176
  %i.q = sitofp i32 %i.p to double
  %i.r = tail call double @llvm.fmuladd.f64(double %i.l, double %i.q, double %i.k)
  %i.s = fptrunc double %i.r to float             ; 9 uses
  %i.t = sitofp i32 %i.c to float
  %i.u = fdiv float %i.t, 5.100000e+01
  %i.v = fpext float %i.u to double
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double -9.000000e-01, double 1.000000e+00)
  %i.x = fptrunc double %i.w to float             ; 8 uses
  %i.y = shl nuw i32 1, %i.f                      ; 2 uses
  %.neg = sdiv i32 %i.y, -6
  %i.z = add i32 %.neg, %i.y
  %i.aa = sext i32 %i.e to i64
  %i.ab = getelementptr inbounds [64 x i8], ptr @quant_coef, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 16, !tbaa !4
  %i.ad = sdiv i32 %i.z, %i.ac
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fdiv nnan float %i.ae, 2.244000e+01
  %i.ag = fmul nnan float %i.af, 2.000000e+00
  %i.ah = fmul float %i.ag, %i.s
  %i.ai = fmul float %i.ah, 2.560000e+02          ; 2 uses
  store float %i.ai, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 28), align 4, !tbaa !8
  %i.aj = fmul float %i.ai, 4.000000e+00          ; 3 uses
  store float %i.aj, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 24), align 8, !tbaa !8
  store float %i.aj, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 20), align 4, !tbaa !8
  %i.ak = fmul float %i.aj, 4.000000e+00          ; 2 uses
  store float %i.ak, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 16), align 16, !tbaa !8
  %i.al = fmul float %i.ak, 4.000000e+00          ; 3 uses
  store float %i.al, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 12), align 4, !tbaa !8
  store float %i.al, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 8), align 8, !tbaa !8
  %i.am = fmul float %i.al, 4.000000e+00
  store float %i.am, ptr getelementptr inbounds nuw (i8, ptr @Bsize, i64 4), align 4, !tbaa !8
  %0 = insertelement <4 x float> poison, float %i.s, i64 0
  %1 = shufflevector <4 x float> %0, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %2 = fmul <4 x float> %1, <float 7.500000e+02, float 3.500000e+02, float 3.500000e+02, float 1.700000e+02>
  %3 = insertelement <4 x float> poison, float %i.x, i64 0
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %5 = fmul <4 x float> %2, %4
  %6 = fptosi <4 x float> %5 to <4 x i32>
  store <4 x i32> %6, ptr getelementptr inbounds nuw (i8, ptr @Median_Pred_Thd_MB, i64 4), align 4, !tbaa !4
  %7 = fmul <4 x float> %1, <float 3.000000e+03, float 1.500000e+03, float 1.500000e+03, float 8.000000e+02>
  %8 = fmul <4 x float> %7, %4
  %9 = fptosi <4 x float> %8 to <4 x i32>
  store <4 x i32> %9, ptr getelementptr inbounds nuw (i8, ptr @Big_Hexagon_Thd_MB, i64 4), align 4, !tbaa !4
  %10 = fmul <4 x float> %1, <float 3.000000e+02, float 1.200000e+02, float 1.200000e+02, float 6.000000e+01>
  %i.an = fmul <4 x float> %10, %4
  %i.ao = fptosi <4 x float> %i.an to <4 x i32>   ; 2 uses
  store <4 x i32> %i.ao, ptr getelementptr inbounds nuw (i8, ptr @Multi_Ref_Thd_MB, i64 4), align 4, !tbaa !4
  %i.ap = fmul <4 x float> %1, <float 2.200000e+03, float 1.000000e+03, float 1.000000e+03, float 5.000000e+02>
  %i.aq = fmul <4 x float> %i.ap, %4
  %i.ar = fptosi <4 x float> %i.aq to <4 x i32>
  store <4 x i32> %i.ar, ptr getelementptr inbounds nuw (i8, ptr @Threshold_DSR_MB, i64 4), align 4, !tbaa !4
  %11 = fmul float %i.s, 8.000000e+01
  %12 = fmul float %11, %i.x
  %13 = fptosi float %12 to i32                   ; 2 uses
  store i32 %13, ptr getelementptr inbounds nuw (i8, ptr @Median_Pred_Thd_MB, i64 20), align 4, !tbaa !4
  %i.as = fmul float %i.s, 4.000000e+02
  %i.at = fmul float %i.as, %i.x
  %i.au = fptosi float %i.at to i32               ; 2 uses
  store i32 %i.au, ptr getelementptr inbounds nuw (i8, ptr @Big_Hexagon_Thd_MB, i64 20), align 4, !tbaa !4
  %i.av = fmul float %i.s, 3.000000e+01
  %i.aw = fmul float %i.av, %i.x
  %i.ax = fptosi float %i.aw to i32               ; 2 uses
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @Multi_Ref_Thd_MB, i64 20), align 4, !tbaa !4
  %i.ay = fmul float %i.s, 2.500000e+02
  %i.az = fmul float %i.ay, %i.x
  %i.ba = fptosi float %i.az to i32               ; 2 uses
  store i32 %i.ba, ptr getelementptr inbounds nuw (i8, ptr @Threshold_DSR_MB, i64 20), align 4, !tbaa !4
  store i32 %13, ptr getelementptr inbounds nuw (i8, ptr @Median_Pred_Thd_MB, i64 24), align 8, !tbaa !4
  store i32 %i.au, ptr getelementptr inbounds nuw (i8, ptr @Big_Hexagon_Thd_MB, i64 24), align 8, !tbaa !4
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @Multi_Ref_Thd_MB, i64 24), align 8, !tbaa !4
  store i32 %i.ba, ptr getelementptr inbounds nuw (i8, ptr @Threshold_DSR_MB, i64 24), align 8, !tbaa !4
  %i.bb = fmul float %i.s, 4.000000e+01
  %i.bc = fmul float %i.bb, %i.x
  %i.bd = fptosi float %i.bc to i32
  store i32 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @Median_Pred_Thd_MB, i64 28), align 4, !tbaa !4
  %i.be = fmul float %i.s, 2.000000e+02
  %i.bf = fmul float %i.be, %i.x
  %i.bg = fptosi float %i.bf to i32
  store i32 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @Big_Hexagon_Thd_MB, i64 28), align 4, !tbaa !4
  %14 = fmul float %i.s, 1.500000e+01
  %15 = fmul float %14, %i.x
  %16 = fptosi float %15 to i32
  store i32 %16, ptr getelementptr inbounds nuw (i8, ptr @Multi_Ref_Thd_MB, i64 28), align 4, !tbaa !4
  %17 = extractelement <4 x i32> %i.ao, i64 1
  store i32 %17, ptr getelementptr inbounds nuw (i8, ptr @Threshold_DSR_MB, i64 28), align 4, !tbaa !4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @UMHEX_get_mem() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %i.d = ashr i32 %i.c, 4
  %i.e = add nsw i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #12 ; 2 uses
  store ptr %i.g, ptr @flag_intra, align 8, !tbaa !34
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr @input, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35
  %i.l = shl nsw i32 %i.k, 1
  %i.m = or disjoint i32 %i.l, 1                  ; 2 uses
  %i.n = tail call i32 @get_mem2D(ptr noundef nonnull @McostState, i32 noundef %i.m, i32 noundef %i.m) #13
  %i.o = load ptr, ptr @img, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !36
  %i.r = tail call i32 @get_mem4Dint(ptr noundef nonnull @fastme_ref_cost, i32 noundef %i.q, i32 noundef 9, i32 noundef 4, i32 noundef 4) #13
  %i.s = add nsw i32 %i.r, %i.n
  %i.t = load ptr, ptr @img, align 8, !tbaa !10   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  %i.w = sdiv i32 %i.v, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18
  %i.z = sdiv i32 %i.y, 4
  %i.aa = tail call i32 @get_mem3Dint(ptr noundef nonnull @fastme_l0_cost, i32 noundef 9, i32 noundef %i.w, i32 noundef %i.z) #13
  %i.ab = add nsw i32 %i.s, %i.aa
  %i.ac = load ptr, ptr @img, align 8, !tbaa !10  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.af = sdiv i32 %i.ae, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  %i.ai = sdiv i32 %i.ah, 4
  %i.aj = tail call i32 @get_mem3Dint(ptr noundef nonnull @fastme_l1_cost, i32 noundef 9, i32 noundef %i.af, i32 noundef %i.ai) #13
  %i.ak = add nsw i32 %i.ab, %i.aj
  %i.al = tail call i32 @get_mem2D(ptr noundef nonnull @SearchState, i32 noundef 7, i32 noundef 7) #13
  %i.am = add nsw i32 %i.ak, %i.al
  %i.an = load ptr, ptr @img, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 52
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !18
  %i.aq = sdiv i32 %i.ap, 4
  %i.ar = tail call i32 @get_mem2Dint(ptr noundef nonnull @fastme_best_cost, i32 noundef 7, i32 noundef %i.aq) #13
  %i.as = add nsw i32 %i.am, %i.ar                ; 2 uses
  %i.at = load ptr, ptr @input, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2120
  %i.av = load i32, ptr %i.au, align 8, !tbaa !38
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr @img, align 8, !tbaa !10  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.ba = sdiv i32 %i.az, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !18
  %i.bd = sdiv i32 %i.bc, 4
  %i.be = tail call i32 @get_mem3Dint(ptr noundef nonnull @fastme_l0_cost_bipred, i32 noundef 9, i32 noundef %i.ba, i32 noundef %i.bd) #13
  %i.bf = add nsw i32 %i.be, %i.as
  %i.bg = load ptr, ptr @img, align 8, !tbaa !10  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !37
  %i.bj = sdiv i32 %i.bi, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !18
  %i.bm = sdiv i32 %i.bl, 4
  %i.bn = tail call i32 @get_mem3Dint(ptr noundef nonnull @fastme_l1_cost_bipred, i32 noundef 9, i32 noundef %i.bj, i32 noundef %i.bm) #13
  %i.bo = add nsw i32 %i.bf, %i.bn
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.bo, %bb.d ], [ %i.as, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #6

declare i32 @get_mem2D(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem4Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @UMHEX_free_mem() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @McostState, align 8, !tbaa !39
  tail call void @free_mem2D(ptr noundef %i.a) #13
  %i.b = load ptr, ptr @fastme_ref_cost, align 8, !tbaa !40
  %i.c = load ptr, ptr @img, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  tail call void @free_mem4Dint(ptr noundef %i.b, i32 noundef %i.e, i32 noundef 9) #13
  %i.f = load ptr, ptr @fastme_l0_cost, align 8, !tbaa !41
  tail call void @free_mem3Dint(ptr noundef %i.f, i32 noundef 9) #13
  %i.g = load ptr, ptr @fastme_l1_cost, align 8, !tbaa !41
  tail call void @free_mem3Dint(ptr noundef %i.g, i32 noundef 9) #13
  %i.h = load ptr, ptr @SearchState, align 8, !tbaa !39
  tail call void @free_mem2D(ptr noundef %i.h) #13
  %i.i = load ptr, ptr @fastme_best_cost, align 8, !tbaa !42
  tail call void @free_mem2Dint(ptr noundef %i.i) #13
  %i.j = load ptr, ptr @flag_intra, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.j) #13
  %i.k = load ptr, ptr @input, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !38
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr @fastme_l0_cost_bipred, align 8, !tbaa !41
  tail call void @free_mem3Dint(ptr noundef %i.o, i32 noundef 9) #13
  %i.p = load ptr, ptr @fastme_l1_cost_bipred, align 8, !tbaa !41
  tail call void @free_mem3Dint(ptr noundef %i.p, i32 noundef 9) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @free_mem2D(ptr noundef) local_unnamed_addr #6

declare void @free_mem4Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @free_mem3Dint(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @UMHEXIntegerPelBlockMotionSearch(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef captures(none) %8, ptr noundef captures(none) %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [16 x i32], align 16              ; 4 uses
  %i.c = load ptr, ptr @img, align 8, !tbaa !10   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 15268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 14224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [536 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 424
  %i.m = load i32, ptr %i.l, align 8, !tbaa !47
  %.not945 = icmp eq i32 %i.m, 0
  br i1 %.not945, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.i, 1
  %.not946 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not946, i32 2, i32 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.p = phi i32 [ %i.o, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.q = load ptr, ptr @input, align 8, !tbaa !10 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = sext i32 %5 to i64                       ; 11 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 30 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !4    ; 29 uses
  %i.x = shl i32 %3, 2                            ; 2 uses
end_hunk_0
