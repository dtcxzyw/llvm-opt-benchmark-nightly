Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/md_highfast?download=true
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
@cnt_nonz8_8x8ts = external local_unnamed_addr global i32, align 4
@cofAC8x8 = external local_unnamed_addr global ptr, align 8
@mb_mode_table = external local_unnamed_addr constant [9 x i32], align 16
@active_pps = common dso_local local_unnamed_addr global ptr null, align 8
@active_sps = common dso_local local_unnamed_addr global ptr null, align 8
@wbp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@cbp = external local_unnamed_addr global i32, align 4
@rdopt = common dso_local local_unnamed_addr global ptr null, align 8
@listXsize = external local_unnamed_addr global [6 x i32], align 16
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
@dsr_new_search_range = common dso_local local_unnamed_addr global i32 0, align 4
@mb_adaptive = common dso_local local_unnamed_addr global i32 0, align 4
@MBPairIsField = common dso_local local_unnamed_addr global i32 0, align 4
@wp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@wp_offset = common dso_local local_unnamed_addr global ptr null, align 8
@luma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
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
@frame_ctr = common dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@frame_no = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_fld = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_frm = common dso_local local_unnamed_addr global i32 0, align 4
@tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@errortext = common dso_local local_unnamed_addr global [300 x i8] zeroinitializer, align 16
@b8_ipredmode8x8 = common dso_local local_unnamed_addr global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common dso_local local_unnamed_addr global [16 x i8] zeroinitializer, align 16
@gop_structure = common dso_local local_unnamed_addr global ptr null, align 8
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
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4
@getNeighbour = common dso_local local_unnamed_addr global ptr null, align 8
@get_mb_block_pos = common dso_local local_unnamed_addr global ptr null, align 8
@diffy = common dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 16
@qp_mbaff = common dso_local local_unnamed_addr global [2 x [2 x i32]] zeroinitializer, align 16
@delta_qp_mbaff = common dso_local local_unnamed_addr global [2 x [2 x i32]] zeroinitializer, align 16
@generic_RC = common dso_local local_unnamed_addr global ptr null, align 8
@generic_RC_init = common dso_local local_unnamed_addr global ptr null, align 8
@generic_RC_best = common dso_local local_unnamed_addr global ptr null, align 8
@McostState = common dso_local local_unnamed_addr global ptr null, align 8
@SearchState = common dso_local local_unnamed_addr global ptr null, align 8
@fastme_ref_cost = common dso_local local_unnamed_addr global ptr null, align 8
@fastme_l0_cost = common dso_local local_unnamed_addr global ptr null, align 8
@fastme_l1_cost = common dso_local local_unnamed_addr global ptr null, align 8
@fastme_l0_cost_bipred = common dso_local local_unnamed_addr global ptr null, align 8
@fastme_l1_cost_bipred = common dso_local local_unnamed_addr global ptr null, align 8
@bipred_flag = common dso_local local_unnamed_addr global i32 0, align 4
@fastme_best_cost = common dso_local local_unnamed_addr global ptr null, align 8
@pred_SAD = common dso_local local_unnamed_addr global i32 0, align 4
@pred_MV_ref = common dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@pred_MV_uplayer = common dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@UMHEX_blocktype = common dso_local local_unnamed_addr global i32 0, align 4
@predict_point = common dso_local local_unnamed_addr global [5 x [2 x i32]] zeroinitializer, align 16
@SAD_a = common dso_local local_unnamed_addr global i32 0, align 4
@SAD_b = common dso_local local_unnamed_addr global i32 0, align 4
@SAD_c = common dso_local local_unnamed_addr global i32 0, align 4
@SAD_d = common dso_local local_unnamed_addr global i32 0, align 4
@Threshold_DSR_MB = common dso_local local_unnamed_addr global [8 x i32] zeroinitializer, align 16
@Bsize = common dso_local local_unnamed_addr global [8 x float] zeroinitializer, align 16
@AlphaFourth_1 = common dso_local local_unnamed_addr global [8 x float] zeroinitializer, align 16
@AlphaFourth_2 = common dso_local local_unnamed_addr global [8 x float] zeroinitializer, align 16
@flag_intra = common dso_local local_unnamed_addr global ptr null, align 8
@flag_intra_SAD = common dso_local local_unnamed_addr global i32 0, align 4
@SymmetricalCrossSearchThreshold1 = common dso_local local_unnamed_addr global i16 0, align 2
@SymmetricalCrossSearchThreshold2 = common dso_local local_unnamed_addr global i16 0, align 2
@ConvergeThreshold = common dso_local local_unnamed_addr global i16 0, align 2
@SubPelThreshold1 = common dso_local local_unnamed_addr global i16 0, align 2
@SubPelThreshold3 = common dso_local local_unnamed_addr global i16 0, align 2
@smpUMHEX_SearchState = common dso_local local_unnamed_addr global ptr null, align 8
@smpUMHEX_l0_cost = common dso_local local_unnamed_addr global ptr null, align 8
@smpUMHEX_l1_cost = common dso_local local_unnamed_addr global ptr null, align 8
@smpUMHEX_flag_intra = common dso_local local_unnamed_addr global ptr null, align 8
@smpUMHEX_flag_intra_SAD = common dso_local local_unnamed_addr global i32 0, align 4
@smpUMHEX_pred_SAD_uplayer = common dso_local local_unnamed_addr global i32 0, align 4
@smpUMHEX_pred_MV_uplayer_X = common dso_local local_unnamed_addr global i16 0, align 2
@smpUMHEX_pred_MV_uplayer_Y = common dso_local local_unnamed_addr global i16 0, align 2

; Function Attrs: nounwind uwtable
define dso_local void @encode_one_macroblock_highfast() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %0 = alloca %struct.RD_PARAMS, align 8          ; 35 uses
  %i.b = alloca double, align 8                   ; 15 uses
  %i.c = alloca [2 x i8], align 2                 ; 10 uses
  %i.d = alloca [5 x i32], align 16               ; 14 uses
  %i.e = alloca i32, align 4                      ; 16 uses
  %i.f = alloca i32, align 4                      ; 13 uses
  %i.g = alloca i32, align 4                      ; 11 uses
  %i.h = alloca [3 x i32], align 4                ; 8 uses
  %i.i = alloca i32, align 4                      ; 11 uses
  %i.j = alloca i16, align 2                      ; 16 uses
  %i.k = alloca i16, align 2                      ; 5 uses
  %i.l = alloca double, align 8                   ; 12 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i16 -256, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.d, ptr noundef nonnull align 16 dereferenceable(20) @__const.encode_one_macroblock_highfast.bmcost, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 0, ptr %i.e, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i32 0, ptr %i.f, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store i32 0, ptr %i.g, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  store i32 0, ptr %i.i, align 4, !tbaa !7
  %i.p = load ptr, ptr @img, align 8, !tbaa !14   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33   ; 5 uses
  %i.s = icmp eq i32 %i.r, 2                      ; 6 uses
  %i.t = icmp eq i32 %i.r, 1                      ; 10 uses
  %i.u = zext i1 %i.t to i16                      ; 15 uses
  switch i32 %i.r, label %bb.d [
    i32 3, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 164
  %i.w = load i32, ptr %i.v, align 4, !tbaa !34   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !35
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !36
  %i.ac = icmp ne i32 %i.w, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.shrunk = phi i1 [ %i.s, %bb.a ], [ false, %bb.b ], [ %i.ac, %bb.c ]
  %1 = zext i1 %.shrunk to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 14224
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [536 x i8], ptr %i.ae, i64 %i.ah ; 29 uses
  %i.aj = tail call i32 @FmoGetPreviousMBNr(i32 noundef %i.ag) #5 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  %.pre = load ptr, ptr @img, align 8, !tbaa !14  ; 2 uses
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 14224
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.an = zext nneg i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [536 x i8], ptr %i.am, i64 %i.an
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ap = phi ptr [ %i.ao, %bb.e ], [ null, %bb.d ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre, i64 14384
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !43
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !49 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  store i16 0, ptr %i.j, align 2, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  store i16 0, ptr %i.k, align 2, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !51
  %i.ax = load ptr, ptr @input, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 5244
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !54
  switch i32 %i.az, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @UMHEX_decide_intrabk_SAD() #5
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @smpUMHEX_decide_intrabk_SAD() #5
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %i.ba = load ptr, ptr @img, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !38
  %i.bd = tail call i32 @RandomIntra(i32 noundef %i.bc) #5
  %2 = trunc i32 %i.bd to i16
  %3 = or i16 %2, %1                              ; 2 uses
  %4 = sext i16 %3 to i32                         ; 2 uses
  %i.be = zext i1 %i.t to i32                     ; 2 uses
  call void @init_enc_mb_params(ptr noundef %i.ai, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.be) #5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 416 ; 12 uses
  %i.bg = icmp ne i16 %3, 0                       ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 364 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 468
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 472
  %not. = xor i1 %i.t, true                       ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 3 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !57
  %i.bu = load ptr, ptr @cs_cm, align 8, !tbaa !14
  call void @store_coding_state(ptr noundef %i.bu) #5
  br i1 %i.bg, label %bb.be, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 1, ptr @best_mode, align 2, !tbaa !50
  br i1 %i.t, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @Get_Direct_Motion_Vectors() #5
  %i.bv = load i16, ptr %i.bh, align 4, !tbaa !50
  %.not442 = icmp eq i16 %i.bv, 0
  br i1 %.not442, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 0, ptr @best_mode, align 2, !tbaa !50
  store i32 0, ptr %i.bf, align 8, !tbaa !57
  store double 1.000000e+30, ptr %i.b, align 8, !tbaa !51
  call void @compute_mode_RD_cost(i32 noundef 0, ptr noundef nonnull %i.ai, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, i32 noundef 0, i16 noundef signext 1, ptr noundef nonnull %i.j) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.bw = load ptr, ptr @input, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4172
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !58
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @get_initial_mb16x16_cost() #5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.ax
  %indvars.iv541 = phi i64 [ 1, %bb.o ], [ %indvars.iv.next542, %bb.ax ] ; 7 uses
  %.1366516 = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.o ], [ %.3368, %bb.ax ] ; 2 uses
  %.1370515 = phi i16 [ 0, %bb.o ], [ %.3372, %bb.ax ] ; 2 uses
  %.0385514 = phi i32 [ 2147483647, %bb.o ], [ %.1386, %bb.ax ] ; 3 uses
  store i16 0, ptr @bi_pred_me, align 2, !tbaa !50
  %i.ch = load ptr, ptr @img, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 14408
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv541
  store i16 0, ptr %i.cj, align 2, !tbaa !50
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv541
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !50
  %i.cm = icmp eq i16 %i.cl, 0
  %i.cn = load i16, ptr %i.j, align 2
  %i.co = icmp ne i16 %i.cn, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond, label %bb.ax, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.e, align 4, !tbaa !7
  %i.cp = icmp eq i64 %indvars.iv541, 1           ; 3 uses
  %i.cq = icmp samesign ugt i64 %indvars.iv541, 1
  %i.cr = trunc nuw nsw i64 %indvars.iv541 to i32 ; 8 uses
  br label %.preheader503

.preheader503:                                    ; preds = %bb.q, %bb.ah
  %or.cond5 = phi i1 [ %i.cq, %bb.q ], [ false, %bb.ah ]
  %.not537 = phi i1 [ %i.cp, %bb.q ], [ true, %bb.ah ]
  %indvars.iv = phi i64 [ 0, %bb.q ], [ 1, %bb.ah ] ; 6 uses
  %i.cs = load ptr, ptr @input, align 8, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4172 ; 3 uses
  %i.cu = load double, ptr @lambda_mf_factor, align 8 ; 3 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !58
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = load i32, ptr %i.bi, align 8, !tbaa !7  ; 2 uses
  br i1 %i.cw, label %.thread, label %bb.r

.thread:                                          ; preds = %.preheader503
  store i32 %i.cx, ptr %i.h, align 4, !tbaa !7
  br label %.thread618.a

bb.r:                                             ; preds = %.preheader503
  %i.cy = sitofp i32 %i.cx to double
  %i.cz = call double @sqrt(double noundef %i.cu) #5, !tbaa !7
  %i.da = fmul double %i.cz, %i.cy
  %i.db = fptosi double %i.da to i32
  %.pre566.a = load i32, ptr %i.ct, align 4, !tbaa !58
  %i.dc = icmp eq i32 %.pre566.a, 0
  store i32 %i.db, ptr %i.h, align 4, !tbaa !7
  br i1 %i.dc, label %.thread618.a, label %bb.s

.thread618.a:                                     ; preds = %bb.r, %.thread
  %i.dd = load i32, ptr %i.cd, align 4, !tbaa !7
  store i32 %i.dd, ptr %i.ce, align 4, !tbaa !7
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.de = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.df = sitofp i32 %i.de to double
  %i.dg = call double @sqrt(double noundef %i.cu) #5, !tbaa !7
  %i.dh = fmul double %i.dg, %i.df
  %i.di = fptosi double %i.dh to i32
  %.pre567.a = load i32, ptr %i.ct, align 4, !tbaa !58
  %i.dj = icmp eq i32 %.pre567.a, 0
  store i32 %i.di, ptr %i.cb, align 4, !tbaa !7
  br i1 %i.dj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dk = load i32, ptr %i.cc, align 8, !tbaa !7
  %i.dl = sitofp i32 %i.dk to double
  %i.dm = call double @sqrt(double noundef %i.cu) #5, !tbaa !7
  %i.dn = fmul double %i.dm, %i.dl
  %i.do = fptosi double %i.dn to i32
  br label %bb.v

bb.u:                                             ; preds = %.thread618.a, %bb.s
  %i.dp = load i32, ptr %i.cf, align 8, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dq = phi i32 [ %i.dp, %bb.u ], [ %i.do, %bb.t ]
  store i32 %i.dq, ptr %i.cg, align 4, !tbaa !7
  %i.dr = trunc nuw nsw i64 %indvars.iv to i32    ; 7 uses
  call void @PartitionMotionSearch(i32 noundef %i.cr, i32 noundef %i.dr, ptr noundef nonnull %i.h) #5
  store i32 2147483647, ptr %i.d, align 16, !tbaa !7
  call void @list_prediction_cost(i32 noundef 0, i32 noundef %i.dr, i32 noundef %i.cr, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #5
  br i1 %i.t, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  store i32 2147483647, ptr %i.bj, align 4, !tbaa !7
  call void @list_prediction_cost(i32 noundef 1, i32 noundef %i.dr, i32 noundef %i.cr, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #5
  call void @list_prediction_cost(i32 noundef 2, i32 noundef %i.dr, i32 noundef %i.cr, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #5
  %i.ds = load ptr, ptr @input, align 8, !tbaa !14
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2120
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !59
  %i.dv = icmp ne i32 %i.du, 0
  %or.cond3 = and i1 %i.cp, %i.dv
  br i1 %or.cond3, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @list_prediction_cost(i32 noundef 3, i32 noundef %i.dr, i32 noundef 1, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.d, ptr noundef null) #5
  call void @list_prediction_cost(i32 noundef 4, i32 noundef %i.dr, i32 noundef 1, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.d, ptr noundef null) #5
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store i32 2147483647, ptr %i.bk, align 4, !tbaa !7
  store i32 2147483647, ptr %i.bl, align 16, !tbaa !7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @determine_prediction_list(i32 noundef %i.cr, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull @bi_pred_me) #5
  %.pre568 = load i8, ptr %i.a, align 1, !tbaa !60
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  store i8 0, ptr %i.a, align 1, !tbaa !60
  %i.dw = load i32, ptr %i.d, align 16, !tbaa !7
  %i.dx = load i32, ptr %i.e, align 4, !tbaa !7
  %i.dy = add nsw i32 %i.dx, %i.dw
  store i32 %i.dy, ptr %i.e, align 4, !tbaa !7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dz = phi i8 [ 0, %bb.aa ], [ %.pre568, %bb.z ]
  %i.ea = load i16, ptr %i.bm, align 2, !tbaa !50
  %i.eb = sext i16 %i.ea to i32
  %i.ec = load i8, ptr %i.c, align 2, !tbaa !60
  %i.ed = sext i8 %i.ec to i32
  %i.ee = load i8, ptr %i.bn, align 1, !tbaa !60
  %i.ef = sext i8 %i.ee to i32
  call void @assign_enc_picture_params(i32 noundef %i.cr, i8 noundef signext %i.dz, i32 noundef %i.dr, i32 noundef %i.eb, i32 noundef %i.ed, i32 noundef %i.ef, i32 noundef %i.be) #5
  %i.eg = load i8, ptr %i.c, align 2, !tbaa !60   ; 6 uses
  switch i32 %i.cr, label %bb.ae [
    i32 3, label %bb.ac
    i32 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.eh = or disjoint i64 %indvars.iv, 2          ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @best8x8fwref, i64 12), i64 %i.eh
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !60
  %i.ej = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @best8x8fwref, i64 12), i64 %indvars.iv
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !60
end_hunk_0
begin_hunk_1_@encode_one_macroblock_highfast:bb.a
  %.pre593.a = load i16, ptr @best_mode, align 2
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dw, %bb.dy, %bb.dx, %bb.dv
  %.pre581605 = phi ptr [ %.pre590, %bb.dy ], [ %.pre581606, %bb.dx ], [ %.pre581606, %bb.dw ], [ %.pre581606, %bb.dv ] ; 3 uses
  %i.xc = phi i16 [ %.pre593.a, %bb.dy ], [ %i.ws, %bb.dx ], [ %i.ws, %bb.dw ], [ %i.ws, %bb.dv ]
  %i.xd = phi i32 [ %.pre592.a, %bb.dy ], [ %i.wt, %bb.dx ], [ %i.wt, %bb.dw ], [ %i.wt, %bb.dv ]
  %i.xe = icmp eq i32 %i.xd, 0
  %or.cond80.3 = or i1 %i.bg, %i.xe
  %or.cond80.not.3 = xor i1 %or.cond80.3, true
  %or.cond82.3 = select i1 %or.cond80.not.3, i1 %i.ve, i1 false
  %i.xf = icmp slt i16 %i.xc, 4
  %or.cond85.3 = select i1 %or.cond82.3, i1 %i.xf, i1 false
  br i1 %or.cond85.3, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.xg = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.xh = icmp eq i32 %i.xg, 0
  br i1 %i.xh, label %.loopexit.loopexit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.xi = load ptr, ptr @img, align 8, !tbaa !14
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 15536
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !87
  %.not469.3 = icmp eq i32 %i.xk, 0
  %brmerge628 = select i1 %.not469.3, i1 true, i1 %or.cond487.3
  br i1 %brmerge628, label %bb.ec, label %.loopexit.loopexit

bb.ec:                                            ; preds = %bb.eb
  %i.xl = load i16, ptr %i.vi, align 2, !tbaa !50
  %.not471.3 = icmp eq i16 %i.xl, 0
  br i1 %.not471.3, label %.loopexit.loopexit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @compute_mode_RD_cost(i32 noundef %i.vd, ptr noundef nonnull %i.ai, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, i32 noundef 0, i16 noundef signext %i.u, ptr noundef nonnull %i.j) #5
  %.pre581.pre = load ptr, ptr @input, align 8, !tbaa !14
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.eb, %bb.ed, %bb.ec, %bb.ea
  %.pre581604 = phi ptr [ %.pre581.pre, %bb.ed ], [ %.pre581605, %bb.ec ], [ %.pre581605, %bb.eb ], [ %.pre581605, %bb.ea ]
  %.pre594.a = load i32, ptr %i.bf, align 8, !tbaa !57
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.dg, %bb.dk, %bb.dh, %bb.di
  %.pre581603 = phi ptr [ %.pre581604, %.loopexit.loopexit ], [ %.pre581.a, %bb.dg ], [ %.pre581.a, %bb.dk ], [ %.pre581.a, %bb.dh ], [ %.pre581.a, %bb.di ]
  %i.xm = phi i32 [ %.pre594.a, %.loopexit.loopexit ], [ %storemerge463528, %bb.dg ], [ 3, %bb.dk ], [ 2, %bb.dh ], [ 1, %bb.di ] ; 2 uses
  %i.xn = add nsw i32 %i.xm, 1                    ; 2 uses
  store i32 %i.xn, ptr %i.bf, align 8, !tbaa !57
  %.not465.not = icmp slt i32 %i.xm, %.1375
  br i1 %.not465.not, label %.lr.ph531, label %.loopexit505, !llvm.loop !12

.loopexit505:                                     ; preds = %.loopexit, %bb.cz, %bb.cy, %bb.cx, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  br label %bb.ee

bb.ee:                                            ; preds = %bb.be, %.loopexit505
  %i.xo = load i32, ptr %i.bt, align 8, !tbaa !102 ; 2 uses
  switch i32 %i.xo, label %bb.ef [
    i32 9, label %bb.eg
    i32 10, label %bb.eg
    i32 13, label %bb.eg
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.xp = icmp eq i32 %i.xo, 14
  %i.xq = zext i1 %i.xp to i32
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ee, %bb.ee, %bb.ee, %bb.ef
  %.0378.lcssa = phi i32 [ 1, %bb.ee ], [ 1, %bb.ee ], [ 1, %bb.ee ], [ %i.xq, %bb.ef ]
  %i.xr = load i32, ptr @cbp, align 4, !tbaa !7   ; 2 uses
  %i.xs = icmp ne i32 %i.xr, 0
  %i.xt = load i16, ptr @best_mode, align 2       ; 4 uses
  %i.xu = icmp eq i16 %i.xt, 10
  %or.cond92 = select i1 %i.xs, i1 true, i1 %i.xu
  %i.xv = icmp ne i16 %i.xt, 14
  %or.cond95 = select i1 %or.cond92, i1 %i.xv, i1 false
  br i1 %or.cond95, label %.sink.split, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.xw = icmp eq i32 %i.xr, 0
  br i1 %i.xw, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.xx = load ptr, ptr @input, align 8, !tbaa !14
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 5116
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !83
  %i.ya = icmp eq i32 %i.xz, 0
  %i.yb = icmp eq i16 %i.xt, 14
  %or.cond98 = select i1 %i.ya, i1 true, i1 %i.yb
  br i1 %or.cond98, label %bb.ek, label %bb.el

bb.ej:                                            ; preds = %bb.eh
  %.old97 = icmp eq i16 %i.xt, 14
  br i1 %.old97, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.yc, align 4, !tbaa !103
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ai, i64 496
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !104
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store i32 %i.ye, ptr %i.yf, align 8, !tbaa !105
  call void @set_chroma_qp(ptr noundef nonnull %i.ai) #5
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !105
  %i.yh = load ptr, ptr @img, align 8, !tbaa !14
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 36
  store i32 %i.yg, ptr %i.yi, align 4, !tbaa !106
  br label %.sink.split

.sink.split:                                      ; preds = %bb.eg, %bb.ek
  %.sink = phi i32 [ 0, %bb.ek ], [ 1, %bb.eg ]
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ai, i64 504
  store i32 %.sink, ptr %i.yj, align 8, !tbaa !107
  br label %bb.el

bb.el:                                            ; preds = %.sink.split, %bb.ej, %bb.ei
  call void @set_stored_macroblock_parameters() #5
  %i.yk = load ptr, ptr @input, align 8, !tbaa !14
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 5116
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !83
  %.not433 = icmp eq i32 %i.ym, 0
  br i1 %.not433, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.yn = load i16, ptr @best_mode, align 2, !tbaa !50
  call void @update_rc(ptr noundef nonnull %i.ai, i16 noundef signext %i.yn) #5
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.yo = load double, ptr %i.b, align 8, !tbaa !51
  %i.yp = load ptr, ptr @rdopt, align 8, !tbaa !14
  store double %i.yo, ptr %i.yp, align 8, !tbaa !109
  %i.yq = load ptr, ptr @img, align 8, !tbaa !14  ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 15268
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !110
  %.not434 = icmp eq i32 %i.ys, 0
  br i1 %.not434, label %bb.ev, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 12
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !38
  %i.yv = and i32 %i.yu, 1
  %.not435 = icmp eq i32 %i.yv, 0
  br i1 %.not435, label %bb.ev, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.yw = load i32, ptr %i.bt, align 8, !tbaa !102
  %.not436 = icmp eq i32 %i.yw, 0
  br i1 %.not436, label %bb.eq, label %bb.ev

bb.eq:                                            ; preds = %bb.ep
  br i1 %i.t, label %bb.er, label %.thread498

bb.er:                                            ; preds = %bb.eq
  %i.yx = load i32, ptr %i.bo, align 4, !tbaa !63
  %.not437 = icmp eq i32 %i.yx, 0
  br i1 %.not437, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %bb.er
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !102
  %.not438 = icmp eq i32 %i.yz, 0
  br i1 %.not438, label %bb.et, label %bb.ev

.thread498:                                       ; preds = %bb.eq
  %i.za = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !102
  %.not438499 = icmp eq i32 %i.zb, 0
  br i1 %.not438499, label %.thread500, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ap, i64 364
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !63
  %.not439 = icmp eq i32 %i.zd, 0
  br i1 %.not439, label %.thread500, label %bb.ev

.thread500:                                       ; preds = %.thread498, %bb.et
  %i.ze = call i32 @field_flag_inference() #5
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !112
  %i.zh = sext i16 %i.zg to i32
  %i.zi = icmp eq i32 %i.ze, %i.zh
  br i1 %i.zi, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.thread500
  %i.zj = load ptr, ptr @rdopt, align 8, !tbaa !14
  store double 1.000000e+30, ptr %i.zj, align 8, !tbaa !109
  br label %bb.ev

bb.ev:                                            ; preds = %.thread498, %bb.es, %bb.ep, %bb.eu, %.thread500, %bb.et, %bb.er, %bb.eo, %bb.en
  %i.zk = load ptr, ptr @input, align 8, !tbaa !14 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 4732
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !113
  %.not440 = icmp eq i32 %i.zm, 0
  br i1 %.not440, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @update_refresh_map(i32 noundef %4, i32 noundef %.0378.lcssa, ptr noundef nonnull %i.ai) #5
  %.pre595 = load ptr, ptr @input, align 8, !tbaa !14
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.zn = phi ptr [ %.pre595, %bb.ew ], [ %i.zk, %bb.ev ]
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 5244
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !54
  switch i32 %i.zp, label %bb.fa [
    i32 1, label %bb.ey
    i32 2, label %bb.ez
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.zq = load i16, ptr @best_mode, align 2, !tbaa !50
  %i.zr = sext i16 %i.zq to i32
  %i.zs = load i16, ptr %i.bm, align 2, !tbaa !50
  %i.zt = sext i16 %i.zs to i64
  %i.zu = getelementptr inbounds [4 x i8], ptr @listXsize, i64 %i.zt
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !7
  call void @UMHEX_skip_intrabk_SAD(i32 noundef %i.zr, i32 noundef %i.zv) #5
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.zw = load i16, ptr @best_mode, align 2, !tbaa !50
  %i.zx = sext i16 %i.zw to i32
  %i.zy = load i16, ptr %i.bm, align 2, !tbaa !50
  %i.zz = sext i16 %i.zy to i64
  %i.aaa = getelementptr inbounds [4 x i8], ptr @listXsize, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !7
  call void @smpUMHEX_skip_intrabk_SAD(i32 noundef %i.zx, i32 noundef %i.aab) #5
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ex, %bb.ez, %bb.ey
  %i.aac = load ptr, ptr @input, align 8, !tbaa !14
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 272
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !114
  %.not441 = icmp eq i32 %i.aae, 0
  br i1 %.not441, label %bb.ff, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aaf = load ptr, ptr @img, align 8, !tbaa !14 ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 20
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !33
  %switch = icmp ult i32 %i.aah, 2
  br i1 %switch, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %i.aai = load i32, ptr %i.bt, align 8, !tbaa !102 ; 2 uses
  switch i32 %i.aai, label %bb.fd [
    i32 9, label %bb.fe
    i32 10, label %bb.fe
    i32 13, label %bb.fe
  ]

bb.fd:                                            ; preds = %bb.fc
  %i.aaj = icmp eq i32 %i.aai, 14
  %i.aak = zext i1 %i.aaj to i32
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fc, %bb.fc, %bb.fc, %bb.fd
  %i.aal = phi i32 [ 1, %bb.fc ], [ 1, %bb.fc ], [ 1, %bb.fc ], [ %i.aak, %bb.fd ]
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaf, i64 14240
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !115
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !38
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.aan, i64 %i.aaq
  store i32 %i.aal, ptr %i.aar, align 4, !tbaa !7
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fb, %bb.fe, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @FmoGetPreviousMBNr(i32 noundef) local_unnamed_addr #2

declare void @UMHEX_decide_intrabk_SAD() local_unnamed_addr #2

declare void @smpUMHEX_decide_intrabk_SAD() local_unnamed_addr #2

declare i32 @RandomIntra(i32 noundef) local_unnamed_addr #2

declare void @init_enc_mb_params(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @store_coding_state(ptr noundef) local_unnamed_addr #2

declare void @Get_Direct_Motion_Vectors() local_unnamed_addr #2

declare void @compute_mode_RD_cost(i32 noundef, ptr noundef, ptr noundef byval(%struct.RD_PARAMS) align 8, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @get_initial_mb16x16_cost() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare void @PartitionMotionSearch(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @list_prediction_cost(i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.RD_PARAMS) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @determine_prediction_list(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @assign_enc_picture_params(i32 noundef, i8 noundef signext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @SetRefAndMotionVectors(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @FindSkipModeMotionVector() local_unnamed_addr #2

declare void @adjust_mb16x16_cost(i32 noundef) local_unnamed_addr #2

declare void @submacroblock_mode_decision(ptr noundef byval(%struct.RD_PARAMS) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @reset_coding_state(ptr noundef) local_unnamed_addr #2

declare void @rc_store_diff(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @IntraChromaPrediction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IntraChromaRDDecision(ptr noundef byval(%struct.RD_PARAMS) align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @fast_mode_intra_decision(ptr noundef, double noundef) local_unnamed_addr #2

declare void @set_chroma_qp(ptr noundef) local_unnamed_addr #2

declare void @set_stored_macroblock_parameters() local_unnamed_addr #2

declare void @update_rc(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @field_flag_inference() local_unnamed_addr #2

declare void @update_refresh_map(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @UMHEX_skip_intrabk_SAD(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @smpUMHEX_skip_intrabk_SAD(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!8 = distinct !{!8, !61}
!9 = distinct !{!9, !61}
!10 = distinct !{!10, !61}
!11 = distinct !{!11, !61}
!12 = distinct !{!12, !61}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!"any p2 pointer", !13, i64 0}
!17 = !{!"p2 omnipotent char", !16, i64 0}
!18 = !{!"any p3 pointer", !16, i64 0}
!19 = !{!"p3 int", !18, i64 0}
!20 = !{!"any p4 pointer", !18, i64 0}
!21 = !{!"p4 int", !20, i64 0}
!22 = !{!"p1 _ZTS10macroblock", !13, i64 0}
!23 = !{!"p1 int", !13, i64 0}
!24 = !{!"double", !5, i64 0}
!25 = !{!"any p5 pointer", !20, i64 0}
!26 = !{!"any p6 pointer", !25, i64 0}
!27 = !{!"p6 short", !26, i64 0}
!28 = !{!"p1 _ZTS18DecRefPicMarking_s", !13, i64 0}
end_hunk_1
