Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/weighted_prediction?download=true
inline.NumInlined: 13
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SubImageContainer = type { ptr, [2 x ptr] }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@img = external local_unnamed_addr global ptr, align 8
@luma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@wp_luma_round = common dso_local local_unnamed_addr global i32 0, align 4
@wp_chroma_round = common dso_local local_unnamed_addr global i32 0, align 4
@listXsize = external local_unnamed_addr global [6 x i32], align 16
@wp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@wp_offset = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org = common dso_local local_unnamed_addr global ptr null, align 8
@listX = external local_unnamed_addr global [6 x ptr], align 16
@ref_pic_sub = internal unnamed_addr global %struct.SubImageContainer zeroinitializer, align 8
@active_pps = common dso_local local_unnamed_addr global ptr null, align 8
@enc_picture = external local_unnamed_addr global ptr, align 8
@wbp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@ref_qpic_sub = internal unnamed_addr global %struct.SubImageContainer zeroinitializer, align 8
@input = external local_unnamed_addr global ptr, align 8
@active_sps = common dso_local local_unnamed_addr global ptr null, align 8
@color_formats = common dso_local local_unnamed_addr global i32 0, align 4
@top_pic = common dso_local local_unnamed_addr global ptr null, align 8
@bottom_pic = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_1 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_2 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_3 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_si = common dso_local local_unnamed_addr global ptr null, align 8
@Bit_Buffer = common dso_local local_unnamed_addr global ptr null, align 8
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
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @estimate_weighting_factor_P_slice(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [32 x [3 x i32]]], align 16  ; 7 uses
  %i.b = alloca [2 x [32 x [3 x i32]]], align 16  ; 5 uses
  %i.c = load ptr, ptr @img, align 8, !tbaa !9    ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 15268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 14224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [536 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 424
  %i.m = load i32, ptr %i.l, align 8, !tbaa !33
  %.not112 = icmp eq i32 %i.m, 0
  br i1 %.not112, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.i, 1
  %.not113 = icmp eq i32 %i.n, 0
  %1 = select i1 %.not113, i64 4, i64 6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %wide.trip.count = phi i64 [ %1, %bb.c ], [ 2, %bb.b ], [ 2, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 5, ptr @luma_log_weight_denom, align 4, !tbaa !7
  store i32 5, ptr @chroma_log_weight_denom, align 4, !tbaa !7
  store i32 16, ptr @wp_luma_round, align 4, !tbaa !7
  store i32 16, ptr @wp_chroma_round, align 4, !tbaa !7
  %i.o = load ptr, ptr @wp_weight, align 8
  %i.p = load ptr, ptr @wp_offset, align 8
  br label %.preheader122

.preheader122:                                    ; preds = %bb.d, %._crit_edge
  %indvars.iv165 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next166, %._crit_edge ] ; 6 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv165 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.preheader121.lr.ph, label %._crit_edge

.preheader121.lr.ph:                              ; preds = %.preheader122
  %i.t = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv165
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv165
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv165
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv165
  br label %.preheader121

.preheader120:                                    ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36
  %.fr152 = freeze i32 %i.aa                      ; 5 uses
  %i.ab = icmp sgt i32 %.fr152, 0                 ; 2 uses
  br i1 %i.ab, label %.preheader119.lr.ph, label %.preheader118.thread

.preheader119.lr.ph:                              ; preds = %.preheader120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !37 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = load ptr, ptr @imgY_org, align 8
  br i1 %i.ae, label %.preheader119.us.preheader, label %.preheader118.thread258

.preheader119.us.preheader:                       ; preds = %.preheader119.lr.ph
  %wide.trip.count176 = zext nneg i32 %.fr152 to i64
  %wide.trip.count171 = zext nneg i32 %i.ad to i64 ; 2 uses
  %xtraiter291 = and i64 %wide.trip.count171, 3   ; 3 uses
  %i.ag = icmp ult i32 %i.ad, 4
  %unroll_iter295 = and i64 %wide.trip.count171, 2147483644
  %lcmp.mod292.not = icmp eq i64 %xtraiter291, 0
  %lcmp.mod294 = icmp ne i64 %xtraiter291, 0
  br label %.preheader119.us

.preheader119.us:                                 ; preds = %.preheader119.us.preheader, %._crit_edge128.us
  %indvars.iv173 = phi i64 [ 0, %.preheader119.us.preheader ], [ %indvars.iv.next174, %._crit_edge128.us ] ; 2 uses
  %.099130.us = phi double [ 0.000000e+00, %.preheader119.us.preheader ], [ %.lcssa285, %._crit_edge128.us ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv173
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 5 uses
  br i1 %i.ag, label %.epil.preheader290, label %.preheader119.us.new

.preheader119.us.new:                             ; preds = %.preheader119.us, %.preheader119.us.new
  %indvars.iv168 = phi i64 [ %indvars.iv.next169.3, %.preheader119.us.new ], [ 0, %.preheader119.us ] ; 5 uses
  %.1100127.us = phi double [ %i.bb, %.preheader119.us.new ], [ %.099130.us, %.preheader119.us ]
  %niter296 = phi i64 [ %niter296.next.3, %.preheader119.us.new ], [ 0, %.preheader119.us ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv168
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !40
  %i.al = uitofp i16 %i.ak to double
  %i.am = fadd double %.1100127.us, %i.al
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv168
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !40
  %i.aq = uitofp i16 %i.ap to double
  %i.ar = fadd double %i.am, %i.aq
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv168
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i16, ptr %i.at, align 2, !tbaa !40
  %i.av = uitofp i16 %i.au to double
  %i.aw = fadd double %i.ar, %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv168
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !40
  %i.ba = uitofp i16 %i.az to double
  %i.bb = fadd double %i.aw, %i.ba                ; 3 uses
  %indvars.iv.next169.3 = add nuw nsw i64 %indvars.iv168, 4 ; 2 uses
  %niter296.next.3 = add i64 %niter296, 4         ; 2 uses
  %niter296.ncmp.3 = icmp eq i64 %niter296.next.3, %unroll_iter295
  br i1 %niter296.ncmp.3, label %._crit_edge128.us.unr-lcssa, label %.preheader119.us.new, !llvm.loop !65

._crit_edge128.us.unr-lcssa:                      ; preds = %.preheader119.us.new
  br i1 %lcmp.mod292.not, label %._crit_edge128.us, label %.epil.preheader290

.epil.preheader290:                               ; preds = %._crit_edge128.us.unr-lcssa, %.preheader119.us
  %indvars.iv168.epil.init = phi i64 [ 0, %.preheader119.us ], [ %indvars.iv.next169.3, %._crit_edge128.us.unr-lcssa ]
  %.1100127.us.epil.init = phi double [ %.099130.us, %.preheader119.us ], [ %i.bb, %._crit_edge128.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod294)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader290
  %indvars.iv168.epil = phi i64 [ %indvars.iv168.epil.init, %.epil.preheader290 ], [ %indvars.iv.next169.epil, %bb.e ] ; 2 uses
  %.1100127.us.epil = phi double [ %.1100127.us.epil.init, %.epil.preheader290 ], [ %i.bf, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader290 ], [ %epil.iter.next, %bb.e ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv168.epil
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !40
  %i.be = uitofp i16 %i.bd to double
  %i.bf = fadd double %.1100127.us.epil, %i.be    ; 2 uses
  %indvars.iv.next169.epil = add nuw nsw i64 %indvars.iv168.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter291
  br i1 %epil.iter.cmp.not, label %._crit_edge128.us, label %bb.e, !llvm.loop !66

._crit_edge128.us:                                ; preds = %bb.e, %._crit_edge128.us.unr-lcssa
  %.lcssa285 = phi double [ %i.bb, %._crit_edge128.us.unr-lcssa ], [ %i.bf, %bb.e ] ; 3 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %.preheader118, label %.preheader119.us, !llvm.loop !67

.preheader121:                                    ; preds = %.preheader121.lr.ph, %.preheader121
  %indvars.iv = phi i64 [ 0, %.preheader121.lr.ph ], [ %indvars.iv.next, %.preheader121 ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43 ; 3 uses
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bl, i8 0, i64 12, i1 false), !tbaa !7
  store i32 32, ptr %i.bg, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !7
  store i32 32, ptr %i.bi, align 4, !tbaa !7
  store i32 0, ptr %i.bk, align 4, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 32, ptr %i.bm, align 4, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 0, ptr %i.bn, align 4, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 32, ptr %i.bo, align 4, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 0, ptr %i.bp, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load i32, ptr %i.q, align 4, !tbaa !7
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %.preheader121, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.preheader121, %.preheader122
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count
  br i1 %exitcond.not, label %.preheader120, label %.preheader122, !llvm.loop !69

.preheader118:                                    ; preds = %._crit_edge128.us
  %i.bt = add nuw i32 %.fr152, 20                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.bv = icmp eq i32 %0, 0
  br i1 %i.bv, label %.preheader118.split.us, label %.preheader117.preheader

.preheader118.thread258:                          ; preds = %.preheader119.lr.ph
  %i.bw = add nuw i32 %.fr152, 20                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.by = icmp eq i32 %0, 0
  br i1 %i.by, label %.preheader117.us.us.preheader, label %.preheader117.preheader

.preheader118.thread:                             ; preds = %.preheader120
  %i.bz = add nsw i32 %.fr152, 20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.cb = icmp eq i32 %0, 0
  br i1 %i.cb, label %.preheader117.us, label %.preheader117.preheader

.preheader117.preheader:                          ; preds = %.preheader118.thread258, %.preheader118.thread, %.preheader118
  %i.cc = phi ptr [ %i.ca, %.preheader118.thread ], [ %i.bu, %.preheader118 ], [ %i.bx, %.preheader118.thread258 ]
  %i.cd = phi i32 [ %i.bz, %.preheader118.thread ], [ %i.bt, %.preheader118 ], [ %i.bw, %.preheader118.thread258 ]
  %.099.lcssa257 = phi double [ 0.000000e+00, %.preheader118.thread ], [ %.lcssa285, %.preheader118 ], [ 0.000000e+00, %.preheader118.thread258 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %smax186 = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 21)
  %wide.trip.count187 = zext nneg i32 %smax186 to i64
  br label %.preheader117

.preheader118.split.us:                           ; preds = %.preheader118
  %i.cf = fmul double %.lcssa285, 3.200000e+01
  br label %.preheader117.us.us.preheader

.preheader117.us.us.preheader:                    ; preds = %.preheader118.split.us, %.preheader118.thread258
  %i.cg = phi i32 [ %i.bt, %.preheader118.split.us ], [ %i.bw, %.preheader118.thread258 ]
  %i.ch = phi ptr [ %i.bu, %.preheader118.split.us ], [ %i.bx, %.preheader118.thread258 ]
  %i.ci = phi double [ %i.cf, %.preheader118.split.us ], [ 0.000000e+00, %.preheader118.thread258 ]
  %smax223 = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 21)
  %wide.trip.count224 = zext nneg i32 %smax223 to i64
  br label %.preheader117.us.us

.preheader117.us.us:                              ; preds = %.preheader117.us.us.preheader, %bb.h
  %indvars.iv231 = phi i64 [ 0, %.preheader117.us.us.preheader ], [ %indvars.iv.next232, %bb.h ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv231
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !7  ; 5 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.us.us, label %bb.h

.lr.ph.us.us:                                     ; preds = %.preheader117.us.us
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @listX, i64 %indvars.iv231
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !45 ; 3 uses
  %i.co = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv231 ; 4 uses
  %i.cp = load i32, ptr %i.ch, align 4, !tbaa !37 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
end_hunk_0
begin_hunk_1_@estimate_weighting_factor_P_slice:bb.a
.preheader116.lr.ph:                              ; preds = %bb.k
  %i.gu = load i32, ptr %i.cc, align 4, !tbaa !37 ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.preheader116.lr.ph.split, label %._crit_edge138.split

.preheader116.lr.ph.split:                        ; preds = %.preheader116.lr.ph
  %i.gw = add nuw i32 %i.gu, 19                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gw, i32 20)
  %i.gx = zext nneg i32 %smax to i64
  %i.gy = add nsw i64 %i.gx, -19                  ; 2 uses
  %xtraiter298 = and i64 %i.gy, 3                 ; 3 uses
  %i.gz = icmp slt i32 %i.gw, 23
  %unroll_iter303 = and i64 %i.gy, -4
  %lcmp.mod300.not = icmp eq i64 %xtraiter298, 0
  %lcmp.mod302 = icmp ne i64 %xtraiter298, 0
  br label %.preheader116

.preheader116:                                    ; preds = %.preheader116.lr.ph.split, %._crit_edge135
  %indvars.iv183 = phi i64 [ 20, %.preheader116.lr.ph.split ], [ %indvars.iv.next184, %._crit_edge135 ] ; 2 uses
  %.lcssa136140 = phi double [ 0.000000e+00, %.preheader116.lr.ph.split ], [ %.lcssa283, %._crit_edge135 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv183
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !39 ; 5 uses
  br i1 %i.gz, label %.epil.preheader297, label %.preheader116.new

.preheader116.new:                                ; preds = %.preheader116, %.preheader116.new
  %indvars.iv178 = phi i64 [ %indvars.iv.next179.3, %.preheader116.new ], [ 20, %.preheader116 ] ; 5 uses
  %i.hc = phi double [ %i.hv, %.preheader116.new ], [ %.lcssa136140, %.preheader116 ]
  %niter304 = phi i64 [ %niter304.next.3, %.preheader116.new ], [ 0, %.preheader116 ]
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %indvars.iv178
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !40
  %i.hf = uitofp i16 %i.he to double
  %i.hg = fadd double %i.hc, %i.hf
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %indvars.iv178
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !40
  %i.hk = uitofp i16 %i.hj to double
  %i.hl = fadd double %i.hg, %i.hk
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %indvars.iv178
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !40
  %i.hp = uitofp i16 %i.ho to double
  %i.hq = fadd double %i.hl, %i.hp
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %indvars.iv178
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 6
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !40
  %i.hu = uitofp i16 %i.ht to double
  %i.hv = fadd double %i.hq, %i.hu                ; 3 uses
  %indvars.iv.next179.3 = add nuw nsw i64 %indvars.iv178, 4 ; 2 uses
  %niter304.next.3 = add i64 %niter304, 4         ; 2 uses
  %niter304.ncmp.3 = icmp eq i64 %niter304.next.3, %unroll_iter303
  br i1 %niter304.ncmp.3, label %._crit_edge135.unr-lcssa, label %.preheader116.new, !llvm.loop !70

._crit_edge135.unr-lcssa:                         ; preds = %.preheader116.new
  br i1 %lcmp.mod300.not, label %._crit_edge135, label %.epil.preheader297

.epil.preheader297:                               ; preds = %._crit_edge135.unr-lcssa, %.preheader116
  %indvars.iv178.epil.init = phi i64 [ 20, %.preheader116 ], [ %indvars.iv.next179.3, %._crit_edge135.unr-lcssa ]
  %.epil.init = phi double [ %.lcssa136140, %.preheader116 ], [ %i.hv, %._crit_edge135.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod302)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader297
  %indvars.iv178.epil = phi i64 [ %indvars.iv178.epil.init, %.epil.preheader297 ], [ %indvars.iv.next179.epil, %bb.l ] ; 2 uses
  %i.hw = phi double [ %.epil.init, %.epil.preheader297 ], [ %i.ia, %bb.l ]
  %epil.iter299 = phi i64 [ 0, %.epil.preheader297 ], [ %epil.iter299.next, %bb.l ]
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %indvars.iv178.epil
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !40
  %i.hz = uitofp i16 %i.hy to double
  %i.ia = fadd double %i.hw, %i.hz                ; 2 uses
  %indvars.iv.next179.epil = add nuw nsw i64 %indvars.iv178.epil, 1
  %epil.iter299.next = add i64 %epil.iter299, 1   ; 2 uses
  %epil.iter299.cmp.not = icmp eq i64 %epil.iter299.next, %xtraiter298
  br i1 %epil.iter299.cmp.not, label %._crit_edge135, label %bb.l, !llvm.loop !75

._crit_edge135:                                   ; preds = %bb.l, %._crit_edge135.unr-lcssa
  %.lcssa283 = phi double [ %i.hv, %._crit_edge135.unr-lcssa ], [ %i.ia, %bb.l ] ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count187
  br i1 %exitcond188.not, label %._crit_edge138.split, label %.preheader116, !llvm.loop !72

._crit_edge138.split:                             ; preds = %._crit_edge135, %.preheader116.lr.ph, %bb.k
  %i.ib = phi double [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %.preheader116.lr.ph ], [ %.lcssa283, %._crit_edge135 ]
  %i.ic = fsub double %.099.lcssa257, %i.ib
  %i.id = fdiv double %i.ic, %i.gl
  %i.ie = fadd double %i.id, 5.000000e-01
  %i.if = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %indvars.iv189
  %i.ig = tail call i8 @llvm.fptosi.sat.i8.f64(double %i.ie)
  %i.ih = sext i8 %i.ig to i32
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !7
  %i.ii = getelementptr inbounds nuw [12 x i8], ptr %i.gj, i64 %indvars.iv189 ; 3 uses
  store i32 32, ptr %i.ii, align 4, !tbaa !7
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store i32 32, ptr %i.ij, align 4, !tbaa !7
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i32 32, ptr %i.ik, align 4, !tbaa !7
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge142.split, label %bb.k, !llvm.loop !73

._crit_edge142.split:                             ; preds = %._crit_edge138.split
  store ptr %i.gr, ptr @ref_pic_sub, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge142.split, %.preheader117
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count
  br i1 %exitcond198.not, label %.preheader115, label %.preheader117, !llvm.loop !74

.preheader114:                                    ; preds = %.preheader115, %._crit_edge150
  %indvars.iv243 = phi i64 [ 0, %.preheader115 ], [ %indvars.iv.next244, %._crit_edge150 ] ; 6 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv243 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !7
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.preheader.lr.ph, label %._crit_edge150

.preheader.lr.ph:                                 ; preds = %.preheader114
  %i.io = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv243
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv243
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !35
  %i.ir = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv243
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv243
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !35
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv240 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next241, %.preheader ] ; 5 uses
  %i.iu = getelementptr inbounds nuw [12 x i8], ptr %i.io, i64 %indvars.iv240 ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv240
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !43 ; 3 uses
  %i.ix = getelementptr inbounds nuw [12 x i8], ptr %i.ir, i64 %indvars.iv240 ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv240
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !43 ; 3 uses
  %i.ja = load i32, ptr %i.iu, align 4, !tbaa !7
  store i32 %i.ja, ptr %i.iw, align 4, !tbaa !7
  %i.jb = load i32, ptr %i.ix, align 4, !tbaa !7
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !7
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !7
  %i.je = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !7
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !7
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !7
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !7
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !7
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !7
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !7
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %i.jo = load i32, ptr %i.il, align 4, !tbaa !7
  %i.jp = sext i32 %i.jo to i64
  %i.jq = icmp slt i64 %indvars.iv.next241, %i.jp
  br i1 %i.jq, label %.preheader, label %._crit_edge150, !llvm.loop !76

._crit_edge150:                                   ; preds = %.preheader, %.preheader114
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond247.not, label %bb.n, label %.preheader114, !llvm.loop !77

bb.n:                                             ; preds = %._crit_edge150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @estimate_weighting_factor_B_slice() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x [32 x [3 x i32]]], align 16  ; 5 uses
  %i.b = alloca [6 x [32 x [3 x i32]]], align 16  ; 5 uses
  %i.c = alloca [6 x [32 x [32 x [3 x i32]]]], align 16 ; 8 uses
  %i.d = load ptr, ptr @img, align 8, !tbaa !9    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 15268
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 14224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !30   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [536 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 424
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33
  %.not241 = icmp eq i32 %i.n, 0
  br i1 %.not241, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %i.j, 1
  %.not242 = icmp eq i32 %i.o, 0
  %0 = select i1 %.not242, i64 4, i64 6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %wide.trip.count = phi i64 [ %0, %bb.c ], [ 2, %bb.b ], [ 2, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 5, ptr @luma_log_weight_denom, align 4, !tbaa !7
  store i32 5, ptr @chroma_log_weight_denom, align 4, !tbaa !7
  store i32 16, ptr @wp_luma_round, align 4, !tbaa !7
  store i32 16, ptr @wp_chroma_round, align 4, !tbaa !7
  %i.p = load ptr, ptr @wp_weight, align 8
  %i.q = load ptr, ptr @wp_offset, align 8
  br label %.preheader266

.preheader266:                                    ; preds = %bb.d, %._crit_edge
  %indvars.iv331 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next332, %._crit_edge ] ; 6 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv331 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader265.lr.ph, label %._crit_edge

.preheader265.lr.ph:                              ; preds = %.preheader266
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv331
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv331
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv331
  %i.z = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv331
  br label %.preheader265

.preheader264:                                    ; preds = %._crit_edge
  %i.aa = load i32, ptr @listXsize, align 16, !tbaa !7 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.preheader263.lr.ph, label %._crit_edge277.split.thread

.preheader263.lr.ph:                              ; preds = %.preheader264
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8
  %i.af = load ptr, ptr @listX, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 12288 ; 2 uses
  br i1 %i.ad, label %.preheader263.lr.ph.split, label %._crit_edge277.split.thread464

.preheader263.lr.ph.split:                        ; preds = %.preheader263.lr.ph
  %i.ah = load ptr, ptr @enc_picture, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !62
  %wide.trip.count354 = zext nneg i32 %i.aa to i64
  %wide.trip.count349 = zext nneg i32 %i.ac to i64
  br label %.preheader263

.preheader265:                                    ; preds = %.preheader265.lr.ph, %.preheader265
  %indvars.iv = phi i64 [ 0, %.preheader265.lr.ph ], [ %indvars.iv.next, %.preheader265 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43 ; 3 uses
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i8 0, i64 12, i1 false), !tbaa !7
  store i32 32, ptr %i.ap, align 4, !tbaa !7
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 32, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !7
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !7
  store i32 32, ptr %i.al, align 4, !tbaa !7
  store i32 0, ptr %i.an, align 4, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 32, ptr %i.aq, align 4, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.ar, align 4, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 32, ptr %i.as, align 4, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.at, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i32, ptr %i.r, align 4, !tbaa !7
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.preheader265, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %.preheader265, %.preheader266
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count
  br i1 %exitcond.not, label %.preheader264, label %.preheader266, !llvm.loop !79

.preheader263:                                    ; preds = %.preheader263.lr.ph.split, %._crit_edge275
  %indvars.iv351 = phi i64 [ 0, %.preheader263.lr.ph.split ], [ %indvars.iv.next352, %._crit_edge275 ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv351
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !62 ; 3 uses
  %i.bb = sub nsw i32 %i.aj, %i.ba
  %i.bc = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.bb, i32 range(i32 -1024, -127) -128)
  %i.bd = tail call noundef i32 @llvm.smin.i32(i32 %i.bc, i32 127)
  %i.be = getelementptr inbounds nuw [384 x i8], ptr %i.ag, i64 %indvars.iv351
  %i.bf = getelementptr [384 x i8], ptr %i.c, i64 %indvars.iv351
  br label %bb.e

bb.e:                                             ; preds = %.preheader263, %.split272.us
  %indvars.iv346 = phi i64 [ 0, %.preheader263 ], [ %indvars.iv.next347, %.split272.us ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv346
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !62 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, %i.ba
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv346 ; 6 uses
  %i.bm = getelementptr [12 x i8], ptr %i.bf, i64 %indvars.iv346 ; 7 uses
  br i1 %i.bk, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.e
  store i32 32, ptr %i.bm, align 4, !tbaa !7
  %.sroa.8.0..sroa_idx443 = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 32, ptr %.sroa.8.0..sroa_idx443, align 4, !tbaa !7
  %.sroa.12.0..sroa_idx447 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 32, ptr %.sroa.12.0..sroa_idx447, align 4, !tbaa !7
  store i32 32, ptr %i.bl, align 4, !tbaa !7
  br label %.split272.us

.split:                                           ; preds = %bb.e
  %i.bn = sub nsw i32 %i.bj, %i.ba
  %i.bo = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.bn, i32 range(i32 -1024, -127) -128)
  %i.bp = tail call noundef i32 @llvm.smin.i32(i32 %i.bo, i32 127) ; 2 uses
  %.lhs.trunc = trunc nsw i32 %i.bp to i8
  %i.bq = sdiv i8 %.lhs.trunc, 2
  %i.br = tail call i8 @llvm.abs.i8(i8 %i.bq, i1 false)
  %i.bs = zext i8 %i.br to i16
  %.lhs.trunc466 = or disjoint i16 %i.bs, 16384
  %.rhs.trunc = trunc nsw i32 %i.bp to i16
  %i.bt = sdiv i16 %.lhs.trunc466, %.rhs.trunc
  %.sext467 = sext i16 %i.bt to i32
  %i.bu = mul nsw i32 %i.bd, %.sext467
  %i.bv = add nsw i32 %i.bu, 32
  %i.bw = ashr i32 %i.bv, 6
  %i.bx = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.bw, i32 range(i32 -1024, -127) -1024)
  %i.by = tail call noundef i32 @llvm.smin.i32(i32 %i.bx, i32 1023)
  %i.bz = ashr i32 %i.by, 2                       ; 5 uses
  %i.ca = add nsw i32 %i.bz, -129
  %or.cond243 = icmp ult i32 %i.ca, -193
  br i1 %or.cond243, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  store i32 %i.bz, ptr %i.bl, align 4, !tbaa !7
  %i.cb = sub nsw i32 64, %i.bz                   ; 3 uses
  store i32 %i.cb, ptr %i.bm, align 4, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bz, ptr %i.cc, align 4, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !7
  br label %.split272.us

.split.split.us.preheader:                        ; preds = %.split
  store i32 32, ptr %i.bl, align 4, !tbaa !7
  store i32 32, ptr %i.bm, align 4, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 32, ptr %i.ce, align 4, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 32, ptr %i.cf, align 4, !tbaa !7
  br label %.split272.us

.split272.us:                                     ; preds = %.split.split.preheader, %.split.split.us.preheader, %.split.us.preheader
  %.sink480 = phi i64 [ 8, %.split.split.preheader ], [ 8, %.split.split.us.preheader ], [ 4, %.split.us.preheader ]
  %.sink478 = phi i32 [ %i.bz, %.split.split.preheader ], [ 32, %.split.split.us.preheader ], [ 32, %.split.us.preheader ]
  %i.cg = phi ptr [ %i.c, %.split.split.preheader ], [ %i.c, %.split.split.us.preheader ], [ %i.ag, %.split.us.preheader ]
  %.sink = phi i32 [ %i.cb, %.split.split.preheader ], [ 32, %.split.split.us.preheader ], [ 32, %.split.us.preheader ]
  %i.ch = getelementptr [384 x i8], ptr %i.cg, i64 %indvars.iv351
  %i.ci = getelementptr [12 x i8], ptr %i.ch, i64 %indvars.iv346
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sink480
  store i32 %.sink478, ptr %i.cj, align 4, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %.sink, ptr %i.ck, align 4, !tbaa !7
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count349
  br i1 %exitcond350.not, label %._crit_edge275, label %bb.e, !llvm.loop !80

._crit_edge275:                                   ; preds = %.split272.us
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %exitcond355.not = icmp eq i64 %indvars.iv.next352, %wide.trip.count354
  br i1 %exitcond355.not, label %._crit_edge277.split, label %.preheader263, !llvm.loop !81

._crit_edge277.split:                             ; preds = %._crit_edge275
  %i.cl = load ptr, ptr @active_pps, align 8, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 196
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !101 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 2
  br i1 %i.co, label %.preheader246.lr.ph, label %.preheader262

._crit_edge277.split.thread464:                   ; preds = %.preheader263.lr.ph
  %i.cp = load ptr, ptr @active_pps, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 196
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !101 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 2
  br i1 %i.cs, label %.preheader246.lr.ph, label %.preheader262

._crit_edge277.split.thread:                      ; preds = %.preheader264
  %i.ct = load ptr, ptr @active_pps, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 196
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !101 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 2
  br i1 %i.cw, label %.preheader244, label %.preheader262

.preheader262:                                    ; preds = %._crit_edge277.split.thread464, %._crit_edge277.split.thread, %._crit_edge277.split
  %i.cx = phi i32 [ %i.cv, %._crit_edge277.split.thread ], [ %i.cn, %._crit_edge277.split ], [ %i.cr, %._crit_edge277.split.thread464 ]
end_hunk_1
begin_hunk_2_@estimate_weighting_factor_B_slice:bb.a
.preheader251.lr.ph:                              ; preds = %.preheader252
  %i.jz = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv407
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv407
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !35
  %i.kc = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv407
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv407
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !35
  br label %.preheader251

.preheader251:                                    ; preds = %.preheader251.lr.ph, %.preheader251
  %indvars.iv404 = phi i64 [ 0, %.preheader251.lr.ph ], [ %indvars.iv.next405, %.preheader251 ] ; 5 uses
  %i.kf = getelementptr inbounds nuw [12 x i8], ptr %i.jz, i64 %indvars.iv404 ; 3 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv404
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !43 ; 3 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.kc, i64 %indvars.iv404 ; 3 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv404
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !43 ; 3 uses
  %i.kl = load i32, ptr %i.kf, align 4, !tbaa !7
  store i32 %i.kl, ptr %i.kh, align 4, !tbaa !7
  %i.km = load i32, ptr %i.ki, align 4, !tbaa !7
  store i32 %i.km, ptr %i.kk, align 4, !tbaa !7
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !7
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !7
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !7
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !7
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !7
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !7
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !7
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !7
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %i.kz = load i32, ptr %i.jw, align 4, !tbaa !7
  %i.la = sext i32 %i.kz to i64
  %i.lb = icmp slt i64 %indvars.iv.next405, %i.la
  br i1 %i.lb, label %.preheader251, label %._crit_edge304, !llvm.loop !94

._crit_edge304:                                   ; preds = %.preheader251, %.preheader252
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond411.not = icmp eq i64 %indvars.iv.next408, %wide.trip.count
  br i1 %exitcond411.not, label %.loopexit254, label %.preheader252, !llvm.loop !95

.preheader255:                                    ; preds = %bb.j, %._crit_edge300
  %indvars.iv395 = phi i64 [ %indvars.iv.next396, %._crit_edge300 ], [ 0, %bb.j ] ; 4 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv395 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !7
  %i.le = icmp sgt i32 %i.ld, 0
  br i1 %i.le, label %.lr.ph299, label %._crit_edge300

.lr.ph299:                                        ; preds = %.preheader255
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv395
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !35
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv395
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph299, %bb.k
  %indvars.iv392 = phi i64 [ 0, %.lr.ph299 ], [ %indvars.iv.next393, %bb.k ] ; 3 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv392
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !43 ; 3 uses
  store i32 32, ptr %i.lk, align 4, !tbaa !7
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  store i32 32, ptr %i.ll, align 4, !tbaa !7
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i32 32, ptr %i.lm, align 4, !tbaa !7
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv392
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !43 ; 3 uses
  store i32 0, ptr %i.lo, align 4, !tbaa !7
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store i32 0, ptr %i.lp, align 4, !tbaa !7
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i32 0, ptr %i.lq, align 4, !tbaa !7
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1 ; 2 uses
  %i.lr = load i32, ptr %i.lc, align 4, !tbaa !7
  %i.ls = sext i32 %i.lr to i64
  %i.lt = icmp slt i64 %indvars.iv.next393, %i.ls
  br i1 %i.lt, label %bb.k, label %._crit_edge300, !llvm.loop !96

._crit_edge300:                                   ; preds = %bb.k, %.preheader255
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %exitcond399.not = icmp eq i64 %indvars.iv.next396, %wide.trip.count
  br i1 %exitcond399.not, label %.loopexit254, label %.preheader255, !llvm.loop !97

.loopexit254:                                     ; preds = %._crit_edge300, %._crit_edge304
  %i.lu = load i32, ptr @listXsize, align 16, !tbaa !7 ; 2 uses
  %i.lv = icmp sgt i32 %i.lu, 0
  br i1 %i.lv, label %.preheader249.lr.ph, label %.loopexit

.preheader249.lr.ph:                              ; preds = %.loopexit254
  %i.lw = load ptr, ptr @wp_weight, align 8       ; 2 uses
  %i.lx = load ptr, ptr @wbp_weight, align 8      ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.ma = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !7 ; 2 uses
  %i.mb = icmp sgt i32 %i.ma, 0
  br i1 %i.mb, label %.preheader249, label %.loopexit

.preheader249:                                    ; preds = %.preheader249.lr.ph, %._crit_edge308
  %i.mc = phi i32 [ %i.nm, %._crit_edge308 ], [ %i.lu, %.preheader249.lr.ph ]
  %i.md = phi i32 [ %i.nn, %._crit_edge308 ], [ %i.ma, %.preheader249.lr.ph ] ; 2 uses
  %indvars.iv419 = phi i64 [ %indvars.iv.next420, %._crit_edge308 ], [ 0, %.preheader249.lr.ph ] ; 4 uses
  %i.me = icmp sgt i32 %i.md, 0
  br i1 %i.me, label %.preheader248.lr.ph, label %._crit_edge308

.preheader248.lr.ph:                              ; preds = %.preheader249
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !35
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv419
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !43 ; 3 uses
  %i.mi = load ptr, ptr %i.lx, align 8, !tbaa !63
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv419
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !35
  %i.ml = load ptr, ptr %i.ly, align 8, !tbaa !35
  %i.mm = load ptr, ptr %i.lz, align 8, !tbaa !63
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv419
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !35
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  br label %.preheader248

.preheader248:                                    ; preds = %.preheader248.lr.ph, %.preheader248
  %indvars.iv416 = phi i64 [ 0, %.preheader248.lr.ph ], [ %indvars.iv.next417, %.preheader248 ] ; 4 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %indvars.iv416
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !43 ; 3 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv416
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !43 ; 3 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv416
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !43 ; 3 uses
  %i.mx = load i32, ptr %i.mh, align 4, !tbaa !7
  store i32 %i.mx, ptr %i.ms, align 4, !tbaa !7
  %i.my = load i32, ptr %i.mu, align 4, !tbaa !7
  store i32 %i.my, ptr %i.mw, align 4, !tbaa !7
  %i.mz = load i32, ptr %i.mp, align 4, !tbaa !7
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !7
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !7
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !7
  %i.ne = load i32, ptr %i.mq, align 4, !tbaa !7
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store i32 %i.ne, ptr %i.nf, align 4, !tbaa !7
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !7
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !7
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 2 uses
  %i.nj = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !7 ; 2 uses
  %i.nk = sext i32 %i.nj to i64
  %i.nl = icmp slt i64 %indvars.iv.next417, %i.nk
  br i1 %i.nl, label %.preheader248, label %._crit_edge308.loopexit, !llvm.loop !98

._crit_edge308.loopexit:                          ; preds = %.preheader248
  %.pre = load i32, ptr @listXsize, align 16, !tbaa !7
  br label %._crit_edge308

._crit_edge308:                                   ; preds = %._crit_edge308.loopexit, %.preheader249
  %i.nm = phi i32 [ %.pre, %._crit_edge308.loopexit ], [ %i.mc, %.preheader249 ] ; 2 uses
  %i.nn = phi i32 [ %i.nj, %._crit_edge308.loopexit ], [ %i.md, %.preheader249 ]
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %i.no = sext i32 %i.nm to i64
  %i.np = icmp slt i64 %indvars.iv.next420, %i.no
  br i1 %i.np, label %.preheader249, label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %._crit_edge308, %._crit_edge316, %.preheader249.lr.ph, %.loopexit254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @test_wp_P_slice(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [32 x [3 x i32]]], align 16  ; 7 uses
  %i.b = alloca [2 x [32 x [3 x i32]]], align 16  ; 5 uses
  %i.c = load ptr, ptr @img, align 8, !tbaa !9    ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 15268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 14224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [536 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 424
  %i.m = load i32, ptr %i.l, align 8, !tbaa !33
  %.not125 = icmp eq i32 %i.m, 0
  br i1 %.not125, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.i, 1
  %.not126 = icmp eq i32 %i.n, 0
  %1 = select i1 %.not126, i64 4, i64 6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %wide.trip.count = phi i64 [ %1, %bb.c ], [ 2, %bb.b ], [ 2, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 5, ptr @luma_log_weight_denom, align 4, !tbaa !7
  store i32 5, ptr @chroma_log_weight_denom, align 4, !tbaa !7
  store i32 16, ptr @wp_luma_round, align 4, !tbaa !7
  store i32 16, ptr @wp_chroma_round, align 4, !tbaa !7
  %i.o = load ptr, ptr @wp_weight, align 8
  %i.p = load ptr, ptr @wp_offset, align 8
  br label %.preheader141

.preheader141:                                    ; preds = %bb.d, %._crit_edge
  %indvars.iv194 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next195, %._crit_edge ] ; 6 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv194 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.preheader140.lr.ph, label %._crit_edge

.preheader140.lr.ph:                              ; preds = %.preheader141
  %i.t = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv194
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv194
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv194
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv194
  br label %.preheader140

.preheader139:                                    ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36
  %.fr176 = freeze i32 %i.aa                      ; 5 uses
  %i.ab = icmp sgt i32 %.fr176, 0                 ; 2 uses
  br i1 %i.ab, label %.preheader138.lr.ph, label %.preheader137.thread

.preheader138.lr.ph:                              ; preds = %.preheader139
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !37 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = load ptr, ptr @imgY_org, align 8
  br i1 %i.ae, label %.preheader138.us.preheader, label %.preheader137.thread308

.preheader138.us.preheader:                       ; preds = %.preheader138.lr.ph
  %wide.trip.count205 = zext nneg i32 %.fr176 to i64
  %wide.trip.count200 = zext nneg i32 %i.ad to i64 ; 2 uses
  %xtraiter356 = and i64 %wide.trip.count200, 3   ; 3 uses
  %i.ag = icmp ult i32 %i.ad, 4
  %unroll_iter360 = and i64 %wide.trip.count200, 2147483644
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  %lcmp.mod359 = icmp ne i64 %xtraiter356, 0
  br label %.preheader138.us

.preheader138.us:                                 ; preds = %.preheader138.us.preheader, %._crit_edge147.us
  %indvars.iv202 = phi i64 [ 0, %.preheader138.us.preheader ], [ %indvars.iv.next203, %._crit_edge147.us ] ; 2 uses
  %.0111149.us = phi double [ 0.000000e+00, %.preheader138.us.preheader ], [ %.lcssa350, %._crit_edge147.us ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv202
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 5 uses
  br i1 %i.ag, label %.epil.preheader355, label %.preheader138.us.new

.preheader138.us.new:                             ; preds = %.preheader138.us, %.preheader138.us.new
  %indvars.iv197 = phi i64 [ %indvars.iv.next198.3, %.preheader138.us.new ], [ 0, %.preheader138.us ] ; 5 uses
  %.1112146.us = phi double [ %i.bb, %.preheader138.us.new ], [ %.0111149.us, %.preheader138.us ]
  %niter361 = phi i64 [ %niter361.next.3, %.preheader138.us.new ], [ 0, %.preheader138.us ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv197
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !40
  %i.al = uitofp i16 %i.ak to double
  %i.am = fadd double %.1112146.us, %i.al
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv197
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !40
  %i.aq = uitofp i16 %i.ap to double
  %i.ar = fadd double %i.am, %i.aq
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv197
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i16, ptr %i.at, align 2, !tbaa !40
  %i.av = uitofp i16 %i.au to double
  %i.aw = fadd double %i.ar, %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv197
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !40
  %i.ba = uitofp i16 %i.az to double
  %i.bb = fadd double %i.aw, %i.ba                ; 3 uses
  %indvars.iv.next198.3 = add nuw nsw i64 %indvars.iv197, 4 ; 2 uses
  %niter361.next.3 = add i64 %niter361, 4         ; 2 uses
  %niter361.ncmp.3 = icmp eq i64 %niter361.next.3, %unroll_iter360
  br i1 %niter361.ncmp.3, label %._crit_edge147.us.unr-lcssa, label %.preheader138.us.new, !llvm.loop !102

._crit_edge147.us.unr-lcssa:                      ; preds = %.preheader138.us.new
  br i1 %lcmp.mod357.not, label %._crit_edge147.us, label %.epil.preheader355

.epil.preheader355:                               ; preds = %._crit_edge147.us.unr-lcssa, %.preheader138.us
  %indvars.iv197.epil.init = phi i64 [ 0, %.preheader138.us ], [ %indvars.iv.next198.3, %._crit_edge147.us.unr-lcssa ]
  %.1112146.us.epil.init = phi double [ %.0111149.us, %.preheader138.us ], [ %i.bb, %._crit_edge147.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod359)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader355
  %indvars.iv197.epil = phi i64 [ %indvars.iv197.epil.init, %.epil.preheader355 ], [ %indvars.iv.next198.epil, %bb.e ] ; 2 uses
  %.1112146.us.epil = phi double [ %.1112146.us.epil.init, %.epil.preheader355 ], [ %i.bf, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader355 ], [ %epil.iter.next, %bb.e ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv197.epil
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !40
  %i.be = uitofp i16 %i.bd to double
  %i.bf = fadd double %.1112146.us.epil, %i.be    ; 2 uses
  %indvars.iv.next198.epil = add nuw nsw i64 %indvars.iv197.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter356
  br i1 %epil.iter.cmp.not, label %._crit_edge147.us, label %bb.e, !llvm.loop !103

._crit_edge147.us:                                ; preds = %bb.e, %._crit_edge147.us.unr-lcssa
  %.lcssa350 = phi double [ %i.bb, %._crit_edge147.us.unr-lcssa ], [ %i.bf, %bb.e ] ; 3 uses
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %.preheader137, label %.preheader138.us, !llvm.loop !104

.preheader140:                                    ; preds = %.preheader140.lr.ph, %.preheader140
  %indvars.iv = phi i64 [ 0, %.preheader140.lr.ph ], [ %indvars.iv.next, %.preheader140 ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43 ; 3 uses
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bl, i8 0, i64 12, i1 false), !tbaa !7
  store i32 32, ptr %i.bg, align 4, !tbaa !7
  store i32 32, ptr %i.bi, align 4, !tbaa !7
  store i32 0, ptr %i.bk, align 4, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 32, ptr %i.bm, align 4, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 32, ptr %i.bn, align 4, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 0, ptr %i.bo, align 4, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 32, ptr %i.bp, align 4, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 32, ptr %i.bq, align 4, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 0, ptr %i.br, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = load i32, ptr %i.q, align 4, !tbaa !7
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next, %i.bt
  br i1 %i.bu, label %.preheader140, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %.preheader140, %.preheader141
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count
  br i1 %exitcond.not, label %.preheader139, label %.preheader141, !llvm.loop !106

.preheader137:                                    ; preds = %._crit_edge147.us
  %i.bv = add nuw i32 %.fr176, 20                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.bx = icmp eq i32 %0, 0
  br i1 %i.bx, label %.preheader137.split.us, label %.preheader136.preheader

.preheader137.thread308:                          ; preds = %.preheader138.lr.ph
  %i.by = add nuw i32 %.fr176, 20                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.ca = icmp eq i32 %0, 0
  br i1 %i.ca, label %.preheader136.us.us.preheader, label %.preheader136.preheader

.preheader137.thread:                             ; preds = %.preheader139
  %i.cb = add nsw i32 %.fr176, 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.cd = icmp eq i32 %0, 0
  br i1 %i.cd, label %.preheader136.us, label %.preheader136.preheader

.preheader136.preheader:                          ; preds = %.preheader137.thread308, %.preheader137.thread, %.preheader137
  %i.ce = phi ptr [ %i.cc, %.preheader137.thread ], [ %i.bw, %.preheader137 ], [ %i.bz, %.preheader137.thread308 ]
  %i.cf = phi i32 [ %i.cb, %.preheader137.thread ], [ %i.bv, %.preheader137 ], [ %i.by, %.preheader137.thread308 ]
  %.0111.lcssa307 = phi double [ 0.000000e+00, %.preheader137.thread ], [ %.lcssa350, %.preheader137 ], [ 0.000000e+00, %.preheader137.thread308 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %smax215 = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 21)
  %wide.trip.count216 = zext nneg i32 %smax215 to i64
  br label %.preheader136

.preheader137.split.us:                           ; preds = %.preheader137
  %i.ch = fmul double %.lcssa350, 3.200000e+01
  br label %.preheader136.us.us.preheader

.preheader136.us.us.preheader:                    ; preds = %.preheader137.split.us, %.preheader137.thread308
  %i.ci = phi i32 [ %i.bv, %.preheader137.split.us ], [ %i.by, %.preheader137.thread308 ]
  %i.cj = phi ptr [ %i.bw, %.preheader137.split.us ], [ %i.bz, %.preheader137.thread308 ]
  %i.ck = phi double [ %i.ch, %.preheader137.split.us ], [ 0.000000e+00, %.preheader137.thread308 ]
  %smax252 = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 21)
  %wide.trip.count253 = zext nneg i32 %smax252 to i64
  br label %.preheader136.us.us

.preheader136.us.us:                              ; preds = %.preheader136.us.us.preheader, %bb.h
  %indvars.iv260 = phi i64 [ 0, %.preheader136.us.us.preheader ], [ %indvars.iv.next261, %bb.h ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv260
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7  ; 5 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.us.us, label %bb.h

.lr.ph.us.us:                                     ; preds = %.preheader136.us.us
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @listX, i64 %indvars.iv260
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !45 ; 3 uses
  %i.cq = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv260 ; 4 uses
  %i.cr = load i32, ptr %i.cj, align 4, !tbaa !37 ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
end_hunk_2
begin_hunk_3_@test_wp_P_slice:bb.a
  %i.if = phi double [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %.preheader135.lr.ph ], [ %.lcssa348, %._crit_edge154 ]
  %i.ig = fsub double %.0111.lcssa307, %i.if
  %i.ih = fdiv double %i.ig, %i.gn
  %i.ii = fadd double %i.ih, 5.000000e-01
  %i.ij = getelementptr inbounds nuw [12 x i8], ptr %i.gk, i64 %indvars.iv218
  %i.ik = tail call i8 @llvm.fptosi.sat.i8.f64(double %i.ii)
  %i.il = sext i8 %i.ik to i32
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !7
  %i.im = getelementptr inbounds nuw [12 x i8], ptr %i.gl, i64 %indvars.iv218 ; 3 uses
  store i32 32, ptr %i.im, align 4, !tbaa !7
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store i32 32, ptr %i.in, align 4, !tbaa !7
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i32 32, ptr %i.io, align 4, !tbaa !7
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge161.split, label %bb.k, !llvm.loop !110

._crit_edge161.split:                             ; preds = %._crit_edge157.split
  store ptr %i.gv, ptr @ref_pic_sub, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge161.split, %.preheader136
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count
  br i1 %exitcond227.not, label %.preheader133, label %.preheader136, !llvm.loop !111

.preheader132:                                    ; preds = %.preheader133, %.critedge
  %indvars.iv292 = phi i64 [ 0, %.preheader133 ], [ %indvars.iv.next293, %.critedge ] ; 4 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv292
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !7  ; 3 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.preheader132
  %i.is = load i32, ptr %i.gp, align 8, !tbaa !116
  %.not127 = icmp eq i32 %i.is, 0
  %i.it = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv292 ; 3 uses
  %i.iu = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv292 ; 3 uses
  br i1 %.not127, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count290 = zext nneg i32 %i.iq to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.critedge131.us
  %indvars.iv287 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next288, %.critedge131.us ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [12 x i8], ptr %i.it, i64 %indvars.iv287 ; 3 uses
  %i.iw = getelementptr inbounds nuw [12 x i8], ptr %i.iu, i64 %indvars.iv287 ; 3 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !7
  %i.iy = icmp ne i32 %i.ix, 0
  %i.iz = load i32, ptr %i.iv, align 4, !tbaa !7
  %i.ja = icmp ne i32 %i.iz, 32
  %or.cond.us.us = select i1 %i.ja, i1 true, i1 %i.iy
  br i1 %or.cond.us.us, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.preheader.us
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !7
  %i.jd = icmp ne i32 %i.jc, 0
  %i.je = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !7
  %i.jg = icmp ne i32 %i.jf, 32
  %or.cond.us.us.1 = select i1 %i.jg, i1 true, i1 %i.jd
  br i1 %or.cond.us.us.1, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !7
  %i.jj = icmp ne i32 %i.ji, 0
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !7
  %i.jm = icmp ne i32 %i.jl, 32
  %or.cond.us.us.2 = select i1 %i.jm, i1 true, i1 %i.jj
  br i1 %or.cond.us.us.2, label %.loopexit, label %.critedge131.us

.critedge131.us:                                  ; preds = %bb.o
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count290
  br i1 %exitcond291.not, label %.critedge, label %.preheader.us, !llvm.loop !113

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.jn = load i32, ptr %i.gr, align 4, !tbaa !120
  %.not128 = icmp eq i32 %i.jn, 66
  %wide.trip.count281 = zext nneg i32 %i.iq to i64 ; 2 uses
  br i1 %.not128, label %.preheader.us172, label %.preheader

.preheader.us172:                                 ; preds = %.preheader.lr.ph.split, %.critedge131.us174
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %.critedge131.us174 ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [12 x i8], ptr %i.it, i64 %indvars.iv278 ; 3 uses
  %i.jp = getelementptr inbounds nuw [12 x i8], ptr %i.iu, i64 %indvars.iv278 ; 3 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !7
  %i.jr = icmp ne i32 %i.jq, 0
  %i.js = load i32, ptr %i.jo, align 4, !tbaa !7
  %i.jt = icmp ne i32 %i.js, 32
  %or.cond.us170.us = select i1 %i.jt, i1 true, i1 %i.jr
  br i1 %or.cond.us170.us, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.preheader.us172
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !7
  %i.jw = icmp ne i32 %i.jv, 0
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !7
  %i.jz = icmp ne i32 %i.jy, 32
  %or.cond.us170.us.1 = select i1 %i.jz, i1 true, i1 %i.jw
  br i1 %or.cond.us170.us.1, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !7
  %i.kc = icmp ne i32 %i.kb, 0
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !7
  %i.kf = icmp ne i32 %i.ke, 32
  %or.cond.us170.us.2 = select i1 %i.kf, i1 true, i1 %i.kc
  br i1 %or.cond.us170.us.2, label %.loopexit, label %.critedge131.us174

.critedge131.us174:                               ; preds = %bb.q
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %.critedge, label %.preheader.us172, !llvm.loop !113

.preheader:                                       ; preds = %.preheader.lr.ph.split, %.critedge131
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %.critedge131 ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [12 x i8], ptr %i.it, i64 %indvars.iv269 ; 3 uses
  %i.kh = getelementptr inbounds nuw [12 x i8], ptr %i.iu, i64 %indvars.iv269 ; 3 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !7
  %i.kj = add i32 %i.ki, -3
  %i.kk = icmp ult i32 %i.kj, -5
  %i.kl = load i32, ptr %i.kg, align 4, !tbaa !7
  %i.km = icmp ne i32 %i.kl, 32
  %or.cond = select i1 %i.km, i1 true, i1 %i.kk
  br i1 %or.cond, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !7
  %i.kp = add i32 %i.ko, -3
  %i.kq = icmp ult i32 %i.kp, -5
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !7
  %i.kt = icmp ne i32 %i.ks, 32
  %or.cond.1 = select i1 %i.kt, i1 true, i1 %i.kq
  br i1 %or.cond.1, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !7
  %i.kw = add i32 %i.kv, -3
  %i.kx = icmp ult i32 %i.kw, -5
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !7
  %i.la = icmp ne i32 %i.kz, 32
  %or.cond.2 = select i1 %i.la, i1 true, i1 %i.kx
  br i1 %or.cond.2, label %.loopexit, label %.critedge131

.critedge131:                                     ; preds = %bb.s
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count281
  br i1 %exitcond273.not, label %.critedge, label %.preheader, !llvm.loop !113

.critedge:                                        ; preds = %.critedge131, %.critedge131.us174, %.critedge131.us, %.preheader132
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count
  br i1 %exitcond296.not, label %.loopexit, label %.preheader132, !llvm.loop !114

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.r, %bb.s, %.preheader.us172, %bb.p, %bb.q, %.preheader.us, %bb.n, %bb.o
  %.6 = phi i32 [ 1, %.preheader.us ], [ 1, %.preheader ], [ 1, %.preheader.us172 ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.s ], [ 1, %bb.r ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @test_wp_B_slice(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x [32 x [3 x i32]]], align 16  ; 5 uses
  %i.b = alloca [6 x [32 x [3 x i32]]], align 16  ; 5 uses
  %i.c = alloca [6 x [32 x [32 x [3 x i32]]]], align 16 ; 7 uses
  %i.d = alloca [2 x i32], align 8                ; 4 uses
  %i.e = load ptr, ptr @img, align 8, !tbaa !9    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15268
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 14224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [536 x i8], ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33
  %.not270 = icmp eq i32 %i.o, 0
  br i1 %.not270, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = and i32 %i.k, 1
  %.not271 = icmp eq i32 %i.p, 0
  %1 = select i1 %.not271, i64 4, i64 6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %wide.trip.count = phi i64 [ %1, %bb.c ], [ 2, %bb.b ], [ 2, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.q = icmp eq i32 %0, 1                        ; 4 uses
  %. = select i1 %i.q, i32 5, i32 6               ; 4 uses
  store i32 %., ptr @luma_log_weight_denom, align 4, !tbaa !7
  store i32 %., ptr @chroma_log_weight_denom, align 4, !tbaa !7
  %i.r = add nsw i32 %., -1
  %i.s = shl nuw nsw i32 1, %i.r                  ; 2 uses
  store i32 %i.s, ptr @wp_luma_round, align 4, !tbaa !7
  store i32 %i.s, ptr @wp_chroma_round, align 4, !tbaa !7
  %i.t = shl nuw nsw i32 1, %.                    ; 25 uses
  %i.u = load ptr, ptr @wp_weight, align 8
  %i.v = load ptr, ptr @wp_offset, align 8
  %i.w = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.x = shufflevector <2 x i32> %i.w, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader303

.preheader303:                                    ; preds = %bb.d, %._crit_edge
  %indvars.iv370 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next371, %._crit_edge ] ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv370 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.preheader302.lr.ph, label %._crit_edge

.preheader302.lr.ph:                              ; preds = %.preheader303
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv370
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv370
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv370
  %i.ag = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv370
  br label %.preheader302

.preheader301:                                    ; preds = %._crit_edge
  %i.ah = load i32, ptr @listXsize, align 16, !tbaa !7 ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.preheader300.lr.ph, label %._crit_edge313.split.thread

.preheader300.lr.ph:                              ; preds = %.preheader301
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !7 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8
  %i.am = load ptr, ptr @listX, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 12288 ; 2 uses
  br i1 %i.ak, label %.preheader300.lr.ph.split, label %._crit_edge313.split.thread516

.preheader300.lr.ph.split:                        ; preds = %.preheader300.lr.ph
  %i.ao = load ptr, ptr @enc_picture, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !62
  %wide.trip.count389 = zext nneg i32 %i.ah to i64
  %wide.trip.count384 = zext nneg i32 %i.aj to i64
  %i.ar = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.as = shufflevector <2 x i32> %i.ar, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader300

.preheader302:                                    ; preds = %.preheader302.lr.ph, %.preheader302
  %indvars.iv = phi i64 [ 0, %.preheader302.lr.ph ], [ %indvars.iv.next, %.preheader302 ] ; 5 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43 ; 3 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ax, i8 0, i64 12, i1 false), !tbaa !7
  store <2 x i32> %i.x, ptr %i.ay, align 4, !tbaa !7
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.t, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !7
  store i32 %i.t, ptr %i.au, align 4, !tbaa !7
  store i32 0, ptr %i.aw, align 4, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.t, ptr %i.az, align 4, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 0, ptr %i.ba, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.t, ptr %i.bb, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 0, ptr %i.bc, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i32, ptr %i.y, align 4, !tbaa !7
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.preheader302, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %.preheader302, %.preheader303
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count
  br i1 %exitcond.not, label %.preheader301, label %.preheader303, !llvm.loop !122

.preheader300:                                    ; preds = %.preheader300.lr.ph.split, %._crit_edge311
  %indvars.iv386 = phi i64 [ 0, %.preheader300.lr.ph.split ], [ %indvars.iv.next387, %._crit_edge311 ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv386
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !62 ; 3 uses
  %i.bk = sub nsw i32 %i.aq, %i.bj
  %i.bl = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.bk, i32 range(i32 -1024, -127) -128)
  %i.bm = tail call noundef i32 @llvm.smin.i32(i32 %i.bl, i32 127)
  %i.bn = getelementptr inbounds nuw [384 x i8], ptr %i.an, i64 %indvars.iv386
  %i.bo = getelementptr [384 x i8], ptr %i.c, i64 %indvars.iv386
  br label %bb.e

bb.e:                                             ; preds = %.preheader300, %.split309.us
  %indvars.iv381 = phi i64 [ 0, %.preheader300 ], [ %indvars.iv.next382, %.split309.us ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv381
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !62 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, %i.bj
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %indvars.iv381 ; 4 uses
  %i.bv = getelementptr [12 x i8], ptr %i.bo, i64 %indvars.iv381 ; 4 uses
  br i1 %i.bt, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.e
  store <2 x i32> %i.as, ptr %i.bv, align 4, !tbaa !7
  %.sroa.12.0..sroa_idx496 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.t, ptr %.sroa.12.0..sroa_idx496, align 4, !tbaa !7
  store i32 %i.t, ptr %i.bu, align 4, !tbaa !7
  br label %.split309.us

.split:                                           ; preds = %bb.e
  %i.bw = sub nsw i32 %i.bs, %i.bj
  %i.bx = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.bw, i32 range(i32 -1024, -127) -128)
  %i.by = tail call noundef i32 @llvm.smin.i32(i32 %i.bx, i32 127) ; 2 uses
  %.lhs.trunc = trunc nsw i32 %i.by to i8
  %i.bz = sdiv i8 %.lhs.trunc, 2
  %i.ca = tail call i8 @llvm.abs.i8(i8 %i.bz, i1 false)
  %i.cb = zext i8 %i.ca to i16
  %.lhs.trunc518 = or disjoint i16 %i.cb, 16384
  %.rhs.trunc = trunc nsw i32 %i.by to i16
  %i.cc = sdiv i16 %.lhs.trunc518, %.rhs.trunc
  %.sext519 = sext i16 %i.cc to i32
  %i.cd = mul nsw i32 %i.bm, %.sext519
  %i.ce = add nsw i32 %i.cd, 32
  %i.cf = ashr i32 %i.ce, 6
  %i.cg = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.cf, i32 range(i32 -1024, -127) -1024)
  %i.ch = tail call noundef i32 @llvm.smin.i32(i32 %i.cg, i32 1023)
  %i.ci = ashr i32 %i.ch, 2                       ; 2 uses
  %i.cj = add nsw i32 %i.ci, -129
  %or.cond274 = icmp ult i32 %i.cj, -193
  %spec.store.select = select i1 %or.cond274, i32 32, i32 %i.ci ; 4 uses
  %i.ck = sub nsw i32 64, %spec.store.select      ; 3 uses
  store i32 %spec.store.select, ptr %i.bu, align 4
  store i32 %i.ck, ptr %i.bv, align 4, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %spec.store.select, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !7
  br label %.split309.us

.split309.us:                                     ; preds = %.split, %.split.us.preheader
  %.sink532 = phi i64 [ 8, %.split ], [ 4, %.split.us.preheader ]
  %spec.store.select.sink = phi i32 [ %spec.store.select, %.split ], [ %i.t, %.split.us.preheader ]
  %i.cn = phi ptr [ %i.c, %.split ], [ %i.an, %.split.us.preheader ]
  %.sink = phi i32 [ %i.ck, %.split ], [ %i.t, %.split.us.preheader ]
  %i.co = getelementptr [384 x i8], ptr %i.cn, i64 %indvars.iv386
  %i.cp = getelementptr [12 x i8], ptr %i.co, i64 %indvars.iv381
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sink532
  store i32 %spec.store.select.sink, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %.sink, ptr %i.cr, align 4, !tbaa !7
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %._crit_edge311, label %bb.e, !llvm.loop !123

._crit_edge311:                                   ; preds = %.split309.us
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %._crit_edge313.split, label %.preheader300, !llvm.loop !124

._crit_edge313.split:                             ; preds = %._crit_edge311
  br i1 %i.q, label %.preheader283.lr.ph, label %.preheader299

._crit_edge313.split.thread516:                   ; preds = %.preheader300.lr.ph
  br i1 %i.q, label %.preheader283.lr.ph, label %.preheader299

._crit_edge313.split.thread:                      ; preds = %.preheader301
  br i1 %i.q, label %.preheader280, label %.preheader299

.preheader299:                                    ; preds = %._crit_edge313.split.thread516, %._crit_edge313.split.thread, %._crit_edge313.split
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !36 ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 0                   ; 2 uses
  br i1 %i.cu, label %.preheader298.lr.ph, label %.preheader297

.preheader298.lr.ph:                              ; preds = %.preheader299
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !37 ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  %i.cy = load ptr, ptr @imgY_org, align 8
  br i1 %i.cx, label %.preheader298.us.preheader, label %.preheader297

.preheader298.us.preheader:                       ; preds = %.preheader298.lr.ph
  %wide.trip.count399 = zext nneg i32 %i.ct to i64
  %wide.trip.count394 = zext nneg i32 %i.cw to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count394, 3      ; 3 uses
  %i.cz = icmp ult i32 %i.cw, 4
  %unroll_iter = and i64 %wide.trip.count394, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_3
