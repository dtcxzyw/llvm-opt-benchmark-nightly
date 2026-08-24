Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fmo?download=true
inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MBAmap = dso_local local_unnamed_addr global ptr null, align 8
@MapUnitToSliceGroupMap = dso_local local_unnamed_addr global ptr null, align 8
@FirstMBInSlice = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@img = external local_unnamed_addr global ptr, align 8
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
@active_pps = common dso_local local_unnamed_addr global ptr null, align 8
@active_sps = common dso_local local_unnamed_addr global ptr null, align 8
@dsr_new_search_range = common dso_local local_unnamed_addr global i32 0, align 4
@mb_adaptive = common dso_local local_unnamed_addr global i32 0, align 4
@MBPairIsField = common dso_local local_unnamed_addr global i32 0, align 4
@wp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@wp_offset = common dso_local local_unnamed_addr global ptr null, align 8
@wbp_weight = common dso_local local_unnamed_addr global ptr null, align 8
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
@PicSizeInMapUnits = common dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"cannot allocated %d bytes for MapUnitToSliceGroupMap, exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Illegal slice_group_map_type %d , exit \0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"cannot allocated %d bytes for MBAmap, exit\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FmoInit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @FirstMBInSlice, i8 -1, i64 32, i1 false), !tbaa !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15340 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 15336 ; 11 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = mul i32 %i.d, %i.b                       ; 2 uses
  store i32 %i.e, ptr @PicSizeInMapUnits, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29
  %i.h = icmp eq i32 %i.g, 6
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = add i32 %i.j, 1
  %.not.i = icmp eq i32 %i.k, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33 ; 2 uses
  %.not22.i = icmp eq ptr %i.l, null
  br i1 %.not22.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.l) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !4 ; 14 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #15 ; 3 uses
  store ptr %i.o, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.m) ; 0 uses
  tail call void @exit(i32 noundef -1) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 0, i64 %i.n, i1 false)
  br label %FmoGenerateMapUnitToSliceGroupMap.exit

bb.j:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  switch i32 %i.u, label %bb.ah [
    i32 0, label %bb.k
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.r
    i32 4, label %bb.ad
    i32 5, label %bb.ae
    i32 6, label %bb.af
  ]

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.w = icmp ne i32 %i.m, 0
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i, %bb.k
  %i.x = phi i32 [ %i.m, %bb.k ], [ %i.ap, %._crit_edge.i.i ]
  %i.y = phi i1 [ %i.w, %bb.k ], [ true, %._crit_edge.i.i ]
  %.0.i.i = phi i32 [ 0, %bb.k ], [ %i.as, %._crit_edge.i.i ]
  br i1 %i.y, label %.preheader.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

.preheader.i.i:                                   ; preds = %bb.l, %.critedge.i.i
  %i.z = phi i32 [ %i.ap, %.critedge.i.i ], [ %i.x, %bb.l ] ; 2 uses
  %.14.i.i = phi i32 [ %i.as, %.critedge.i.i ], [ %.0.i.i, %bb.l ] ; 3 uses
  %.0163.i.i = phi i32 [ %i.aq, %.critedge.i.i ], [ 0, %bb.l ] ; 3 uses
  %i.aa = zext i32 %.0163.i.i to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = trunc i32 %.0163.i.i to i8
  %i.ae = zext i32 %.14.i.i to i64                ; 2 uses
  %i.af = icmp ult i32 %.14.i.i, %i.z
  br i1 %i.af, label %.lr.ph.i, label %.critedge.i.i

bb.m:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i70.i, 1 ; 2 uses
  %i.ag = add nuw nsw i64 %indvars.iv.next.i.i, %i.ae
  %i.ah = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !4 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %.lr.ph.i, label %.critedge.i.i, !llvm.loop !35

.lr.ph.i:                                         ; preds = %.preheader.i.i, %bb.m
  %indvars.iv.i70.i = phi i64 [ %indvars.iv.next.i.i, %bb.m ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ak = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.i70.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ae
  store i8 %i.ad, ptr %i.am, align 1, !tbaa !37
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !4  ; 3 uses
  %i.ao = zext i32 %i.an to i64
  %.not.not.i.i = icmp samesign ult i64 %indvars.iv.i70.i, %i.ao
  br i1 %.not.not.i.i, label %bb.m, label %..critedge_crit_edge.i.i, !llvm.loop !35

..critedge_crit_edge.i.i:                         ; preds = %.lr.ph.i
  %.pre9.i.i = load i32, ptr @PicSizeInMapUnits, align 4
  br label %.critedge.i.i, !llvm.loop !35

.critedge.i.i:                                    ; preds = %bb.m, %..critedge_crit_edge.i.i, %.preheader.i.i
  %i.ap = phi i32 [ %.pre9.i.i, %..critedge_crit_edge.i.i ], [ %i.z, %.preheader.i.i ], [ %i.ah, %bb.m ] ; 3 uses
  %.lcssa.i.i = phi i32 [ %i.an, %..critedge_crit_edge.i.i ], [ %i.ac, %.preheader.i.i ], [ %i.an, %bb.m ]
  %i.aq = add i32 %.0163.i.i, 1                   ; 2 uses
  %i.ar = add i32 %.14.i.i, 1
  %i.as = add i32 %i.ar, %.lcssa.i.i              ; 3 uses
  %i.at = load i32, ptr %i.r, align 4, !tbaa !34
  %i.au = icmp ule i32 %i.aq, %i.at
  %i.av = icmp ult i32 %i.as, %i.ap               ; 2 uses
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !38

._crit_edge.i.i:                                  ; preds = %.critedge.i.i
  br i1 %i.av, label %bb.l, label %FmoGenerateMapUnitToSliceGroupMap.exit, !llvm.loop !39

bb.n:                                             ; preds = %bb.j
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i23.i = phi i64 [ %indvars.iv.next.i24.i, %.lr.ph.i.i ], [ 0, %bb.n ] ; 3 uses
  %i.ax = load i32, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv.i23.i to i32  ; 2 uses
  %i.az = urem i32 %i.ay, %i.ax
  %i.ba = udiv i32 %i.ay, %i.ax
  %i.bb = load i32, ptr %i.r, align 4, !tbaa !34
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  %i.bd = mul i32 %i.bc, %i.ba
  %i.be = lshr i32 %i.bd, 1
  %i.bf = add i32 %i.be, %i.az
  %i.bg = urem i32 %i.bf, %i.bc
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.i23.i
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !37
  %indvars.iv.next.i24.i = add nuw nsw i64 %indvars.iv.i23.i, 1 ; 2 uses
  %i.bk = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !4
  %i.bl = zext i32 %i.bk to i64
  %i.bm = icmp samesign ult i64 %indvars.iv.next.i24.i, %i.bl
  br i1 %i.bm, label %.lr.ph.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, !llvm.loop !40

bb.o:                                             ; preds = %bb.j
  %.not46.i.i = icmp eq i32 %i.m, 0
  br i1 %.not46.i.i, label %._crit_edge.i29.i, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %bb.o, %.lr.ph.i26.i
  %indvars.iv.i27.i = phi i64 [ %indvars.iv.next.i28.i, %.lr.ph.i26.i ], [ 0, %bb.o ] ; 2 uses
  %i.bn = load i32, ptr %i.r, align 4, !tbaa !34
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.i27.i
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !37
  %indvars.iv.next.i28.i = add nuw nsw i64 %indvars.iv.i27.i, 1 ; 2 uses
  %i.br = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !4
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next.i28.i, %i.bs
  br i1 %i.bt, label %.lr.ph.i26.i, label %._crit_edge.i29.loopexit.i, !llvm.loop !41

._crit_edge.i29.loopexit.i:                       ; preds = %.lr.ph.i26.i
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !34
  br label %._crit_edge.i29.i

._crit_edge.i29.i:                                ; preds = %._crit_edge.i29.loopexit.i, %bb.o
  %i.bu = phi i32 [ %.pre.i, %._crit_edge.i29.loopexit.i ], [ %i.s, %bb.o ]
  %.03241.i.i = add i32 %i.bu, -1                 ; 2 uses
  %i.bv = icmp sgt i32 %.03241.i.i, -1
  br i1 %i.bv, label %.lr.ph44.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

.lr.ph44.i.i:                                     ; preds = %._crit_edge.i29.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.by = zext nneg i32 %.03241.i.i to i64
  br label %bb.p

.loopexit.i.i:                                    ; preds = %._crit_edge38.i.i, %.preheader.lr.ph.i.i, %bb.p
  %indvars.iv.next49.i.i = add nsw i64 %indvars.iv48.i.i, -1
  %i.bz = icmp sgt i64 %indvars.iv48.i.i, 0
  br i1 %i.bz, label %bb.p, label %FmoGenerateMapUnitToSliceGroupMap.exit, !llvm.loop !42

bb.p:                                             ; preds = %.loopexit.i.i, %.lr.ph44.i.i
  %indvars.iv48.i.i = phi i64 [ %i.by, %.lr.ph44.i.i ], [ %indvars.iv.next49.i.i, %.loopexit.i.i ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv48.i.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4  ; 2 uses
  %i.cc = load i32, ptr %i.c, align 8, !tbaa !28  ; 4 uses
  %i.cd = udiv i32 %i.cb, %i.cc                   ; 2 uses
  %i.ce = urem i32 %i.cb, %i.cc                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv48.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4  ; 2 uses
  %i.ch = udiv i32 %i.cg, %i.cc                   ; 2 uses
  %i.ci = urem i32 %i.cg, %i.cc                   ; 2 uses
  %.not39.i.i = icmp ugt i32 %i.cd, %i.ch
  br i1 %.not39.i.i, label %.loopexit.i.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.p
  %.not3335.i.i = icmp ugt i32 %i.ce, %i.ci
  %i.cj = trunc i64 %indvars.iv48.i.i to i8
  br i1 %.not3335.i.i, label %.loopexit.i.i, label %.preheader.i30.i

.preheader.i30.i:                                 ; preds = %.preheader.lr.ph.i.i, %._crit_edge38.i.i
  %.040.i.i = phi i32 [ %i.cr, %._crit_edge38.i.i ], [ %i.cd, %.preheader.lr.ph.i.i ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.i30.i
  %.03036.i.i = phi i32 [ %i.ce, %.preheader.i30.i ], [ %i.cq, %bb.q ] ; 3 uses
  %i.ck = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !28
  %i.cm = mul i32 %i.cl, %.040.i.i
  %i.cn = add i32 %i.cm, %.03036.i.i
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.co
  store i8 %i.cj, ptr %i.cp, align 1, !tbaa !37
  %i.cq = add nuw i32 %.03036.i.i, 1
  %.not33.not.i.i = icmp ult i32 %.03036.i.i, %i.ci
  br i1 %.not33.not.i.i, label %bb.q, label %._crit_edge38.i.i, !llvm.loop !43

._crit_edge38.i.i:                                ; preds = %bb.q
  %i.cr = add i32 %.040.i.i, 1                    ; 2 uses
  %.not.i31.i = icmp ugt i32 %i.cr, %i.ch
  br i1 %.not.i31.i, label %.loopexit.i.i, label %.preheader.i30.i, !llvm.loop !44

bb.r:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !45
  %i.cu = add i32 %i.ct, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 15436
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !46
  %i.cx = mul i32 %i.cu, %i.cw
  %i.cy = tail call noundef i32 @llvm.smin.i32(i32 %i.cx, i32 %i.m)
  %.not.i32.i = icmp eq i32 %i.m, 0
  br i1 %.not.i32.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %bb.r, %.lr.ph.i33.i
  %indvars.iv.i34.i = phi i64 [ %indvars.iv.next.i35.i, %.lr.ph.i33.i ], [ 0, %bb.r ] ; 2 uses
  %i.cz = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.i34.i
  store i8 2, ptr %i.da, align 1, !tbaa !37
  %indvars.iv.next.i35.i = add nuw nsw i64 %indvars.iv.i34.i, 1 ; 2 uses
  %i.db = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !4 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp samesign ult i64 %indvars.iv.next.i35.i, %i.dc
  br i1 %i.dd, label %.lr.ph.i33.i, label %._crit_edge.i36.i, !llvm.loop !47

._crit_edge.i36.i:                                ; preds = %.lr.ph.i33.i
  %i.de = icmp eq i32 %i.db, 0
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 5 uses
  br i1 %i.de, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %.lr.ph86.preheader.i.i

.lr.ph86.preheader.i.i:                           ; preds = %._crit_edge.i36.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !48 ; 4 uses
  %i.dh = add i32 %i.dg, -1
  %i.di = load i32, ptr %i.a, align 4, !tbaa !8
  %i.dj = sub i32 %i.di, %i.dg
  %i.dk = lshr i32 %i.dj, 1                       ; 3 uses
  %i.dl = load i32, ptr %i.c, align 8, !tbaa !28
  %i.dm = sub i32 %i.dl, %i.dg
  %i.dn = lshr i32 %i.dm, 1                       ; 3 uses
  %.pre90.i.i = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  br label %.lr.ph86.i.i

.lr.ph86.i.i:                                     ; preds = %bb.ac, %.lr.ph86.preheader.i.i
  %i.do = phi ptr [ %i.dz, %bb.ac ], [ %.pre90.i.i, %.lr.ph86.preheader.i.i ] ; 2 uses
  %.084.i.i = phi i32 [ %.1.i.i, %bb.ac ], [ %i.dg, %.lr.ph86.preheader.i.i ] ; 4 uses
  %.05683.i.i = phi i32 [ %.157.i.i, %bb.ac ], [ %i.dh, %.lr.ph86.preheader.i.i ] ; 4 uses
  %.05882.i.i = phi i32 [ %.159.i.i, %bb.ac ], [ %i.dk, %.lr.ph86.preheader.i.i ] ; 8 uses
  %.06081.i.i = phi i32 [ %.161.i.i, %bb.ac ], [ %i.dn, %.lr.ph86.preheader.i.i ] ; 8 uses
  %.06280.i.i = phi i32 [ %.163.i.i, %bb.ac ], [ %i.dk, %.lr.ph86.preheader.i.i ] ; 5 uses
  %.06479.i.i = phi i32 [ %.165.i.i, %bb.ac ], [ %i.dn, %.lr.ph86.preheader.i.i ] ; 5 uses
  %.06678.i.i = phi i32 [ %.167.i.i, %bb.ac ], [ %i.dk, %.lr.ph86.preheader.i.i ] ; 5 uses
  %.06877.i.i = phi i32 [ %.169.i.i, %bb.ac ], [ %i.dn, %.lr.ph86.preheader.i.i ] ; 5 uses
  %.07076.i.i = phi i32 [ %i.fi, %bb.ac ], [ 0, %.lr.ph86.preheader.i.i ] ; 2 uses
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !28
  %i.dq = mul i32 %i.dp, %.05882.i.i
  %i.dr = add i32 %i.dq, %.06081.i.i
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !37
  %i.dv = icmp eq i8 %i.du, 2                     ; 2 uses
  %i.dw = zext i1 %i.dv to i32
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph86.i.i
  %i.dx = icmp uge i32 %.07076.i.i, %i.cy
  %i.dy = zext i1 %i.dx to i8
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !37
  %.pre.i37.i = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph86.i.i
  %i.dz = phi ptr [ %.pre.i37.i, %bb.s ], [ %i.do, %.lr.ph86.i.i ]
  %i.ea = icmp eq i32 %.05683.i.i, -1
  %i.eb = icmp eq i32 %.06081.i.i, %.06877.i.i
  %or.cond.i.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ec = tail call i32 @llvm.smax.i32(i32 %.06081.i.i, i32 1)
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  %i.ee = load i32, ptr %i.df, align 4, !tbaa !48
  %i.ef = shl i32 %i.ee, 1
  %i.eg = add i32 %i.ef, -1
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.eh = icmp eq i32 %.05683.i.i, 1
  %i.ei = icmp eq i32 %.06081.i.i, %.06479.i.i
  %or.cond72.i.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond72.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ej = add nsw i32 %.06081.i.i, 1
  %i.ek = load i32, ptr %i.c, align 8, !tbaa !28
  %i.el = add nsw i32 %i.ek, -1
  %i.em = tail call noundef i32 @llvm.smin.i32(i32 %i.ej, i32 %i.el) ; 2 uses
  %i.en = load i32, ptr %i.df, align 4, !tbaa !48
  %i.eo = shl i32 %i.en, 1
  %i.ep = sub i32 1, %i.eo
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.eq = icmp eq i32 %.084.i.i, -1
  %i.er = icmp eq i32 %.05882.i.i, %.06678.i.i
  %or.cond73.i.i = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond73.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.es = tail call i32 @llvm.smax.i32(i32 %.05882.i.i, i32 1)
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  %i.eu = load i32, ptr %i.df, align 4, !tbaa !48
  %i.ev = shl i32 %i.eu, 1
  %i.ew = sub i32 1, %i.ev
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.ex = icmp eq i32 %.084.i.i, 1
  %i.ey = icmp eq i32 %.05882.i.i, %.06280.i.i
  %or.cond74.i.i = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond74.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ez = add nsw i32 %.05882.i.i, 1
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !8
  %i.fb = add nsw i32 %i.fa, -1
  %i.fc = tail call noundef i32 @llvm.smin.i32(i32 %i.ez, i32 %i.fb) ; 2 uses
  %i.fd = load i32, ptr %i.df, align 4, !tbaa !48
  %i.fe = shl i32 %i.fd, 1
  %i.ff = add i32 %i.fe, -1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.fg = add nsw i32 %.06081.i.i, %.05683.i.i
  %i.fh = add nsw i32 %.05882.i.i, %.084.i.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.u
  %.169.i.i = phi i32 [ %i.ed, %bb.u ], [ %.06877.i.i, %bb.w ], [ %.06877.i.i, %bb.y ], [ %.06877.i.i, %bb.aa ], [ %.06877.i.i, %bb.ab ]
  %.167.i.i = phi i32 [ %.06678.i.i, %bb.u ], [ %.06678.i.i, %bb.w ], [ %i.et, %bb.y ], [ %.06678.i.i, %bb.aa ], [ %.06678.i.i, %bb.ab ]
  %.165.i.i = phi i32 [ %.06479.i.i, %bb.u ], [ %i.em, %bb.w ], [ %.06479.i.i, %bb.y ], [ %.06479.i.i, %bb.aa ], [ %.06479.i.i, %bb.ab ]
  %.163.i.i = phi i32 [ %.06280.i.i, %bb.u ], [ %.06280.i.i, %bb.w ], [ %.06280.i.i, %bb.y ], [ %i.fc, %bb.aa ], [ %.06280.i.i, %bb.ab ]
  %.161.i.i = phi i32 [ %i.ed, %bb.u ], [ %i.em, %bb.w ], [ %.06081.i.i, %bb.y ], [ %.06081.i.i, %bb.aa ], [ %i.fg, %bb.ab ]
  %.159.i.i = phi i32 [ %.05882.i.i, %bb.u ], [ %.05882.i.i, %bb.w ], [ %i.et, %bb.y ], [ %i.fc, %bb.aa ], [ %i.fh, %bb.ab ]
  %.157.i.i = phi i32 [ 0, %bb.u ], [ 0, %bb.w ], [ %i.ew, %bb.y ], [ %i.ff, %bb.aa ], [ %.05683.i.i, %bb.ab ]
  %.1.i.i = phi i32 [ %i.eg, %bb.u ], [ %i.ep, %bb.w ], [ 0, %bb.y ], [ 0, %bb.aa ], [ %.084.i.i, %bb.ab ]
  %i.fi = add nuw i32 %.07076.i.i, %i.dw          ; 2 uses
  %i.fj = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !4
  %i.fk = icmp ult i32 %i.fi, %i.fj
  br i1 %i.fk, label %.lr.ph86.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, !llvm.loop !49

bb.ad:                                            ; preds = %bb.j
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 2 uses
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ad
  %i.fm = getelementptr i8, ptr %0, i64 15436
  %.val.i = load i32, ptr %i.fm, align 4, !tbaa !46
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !48
  %.not.i38.i = icmp eq i32 %i.fn, 0
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !45
  %i.fq = add i32 %i.fp, 1
  %i.fr = mul i32 %i.fq, %.val.i
  %i.fs = tail call noundef i32 @llvm.smin.i32(i32 %i.fr, i32 %i.m) ; 2 uses
  %i.ft = sub i32 %i.m, %i.fs
  %i.fu = select i1 %.not.i38.i, i32 %i.fs, i32 %i.ft
  %i.fv = zext i32 %i.fu to i64
  br label %.lr.ph.i39.i

.lr.ph.i39.i:                                     ; preds = %.lr.ph.i39.i, %.lr.ph.preheader.i.i
  %indvars.iv.i40.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i41.i, %.lr.ph.i39.i ] ; 3 uses
  %i.fw = icmp samesign ult i64 %indvars.iv.i40.i, %i.fv
  %i.fx = load i32, ptr %i.fl, align 4, !tbaa !48
  %i.fy = trunc i32 %i.fx to i8                   ; 2 uses
  %i.fz = sub i8 1, %i.fy
  %.sink.i.i = select i1 %i.fw, i8 %i.fy, i8 %i.fz
  %i.ga = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv.i40.i
  store i8 %.sink.i.i, ptr %i.gb, align 1, !tbaa !37
  %indvars.iv.next.i41.i = add nuw nsw i64 %indvars.iv.i40.i, 1 ; 2 uses
  %i.gc = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !4
  %i.gd = zext i32 %i.gc to i64
  %i.ge = icmp samesign ult i64 %indvars.iv.next.i41.i, %i.gd
  br i1 %i.ge, label %.lr.ph.i39.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, !llvm.loop !50

bb.ae:                                            ; preds = %bb.j
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !45
  %i.gh = add i32 %i.gg, 1
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 15436
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !46
  %i.gk = mul i32 %i.gh, %i.gj
  %i.gl = tail call noundef i32 @llvm.smin.i32(i32 %i.gk, i32 %i.m) ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !48
  %.not.i43.i = icmp eq i32 %i.gn, 0
  %i.go = sub i32 %i.m, %i.gl
  %i.gp = select i1 %.not.i43.i, i32 %i.gl, i32 %i.go
  %i.gq = load i32, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %.not27.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not27.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %.preheader.lr.ph.i44.i

.preheader.lr.ph.i44.i:                           ; preds = %bb.ae
  %i.gr = load i32, ptr %i.a, align 4, !tbaa !8
  %.not28.i.i = icmp eq i32 %i.gr, 0
  br i1 %.not28.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %.preheader.i45.i

.preheader.i45.i:                                 ; preds = %.preheader.lr.ph.i44.i, %._crit_edge.i49.i
  %i.gs = phi i32 [ %i.hi, %._crit_edge.i49.i ], [ %i.gq, %.preheader.lr.ph.i44.i ]
  %i.gt = phi i32 [ %i.hj, %._crit_edge.i49.i ], [ 1, %.preheader.lr.ph.i44.i ]
  %.025.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge.i49.i ], [ 0, %.preheader.lr.ph.i44.i ] ; 2 uses
  %.02024.i.i = phi i32 [ %i.hk, %._crit_edge.i49.i ], [ 0, %.preheader.lr.ph.i44.i ] ; 2 uses
  %.not29.i.i = icmp eq i32 %i.gt, 0
  br i1 %.not29.i.i, label %._crit_edge.i49.i, label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %.preheader.i45.i, %.lr.ph.i46.i
  %.123.i.i = phi i32 [ %i.gu, %.lr.ph.i46.i ], [ %.025.i.i, %.preheader.i45.i ] ; 2 uses
  %.02122.i.i = phi i32 [ %i.hf, %.lr.ph.i46.i ], [ 0, %.preheader.i45.i ] ; 2 uses
  %i.gu = add i32 %.123.i.i, 1                    ; 2 uses
  %i.gv = icmp ult i32 %.123.i.i, %i.gp
  %i.gw = load i32, ptr %i.gm, align 4, !tbaa !48
  %i.gx = trunc i32 %i.gw to i8                   ; 2 uses
  %i.gy = sub i8 1, %i.gx
  %.sink.i47.i = select i1 %i.gv, i8 %i.gx, i8 %i.gy
  %i.gz = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.ha = load i32, ptr %i.c, align 8, !tbaa !28
  %i.hb = mul i32 %i.ha, %.02122.i.i
  %i.hc = add i32 %i.hb, %.02024.i.i
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hd
  store i8 %.sink.i47.i, ptr %i.he, align 1, !tbaa !37
  %i.hf = add nuw i32 %.02122.i.i, 1              ; 2 uses
  %i.hg = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %i.hh = icmp ult i32 %i.hf, %i.hg
  br i1 %i.hh, label %.lr.ph.i46.i, label %._crit_edge.loopexit.i.i, !llvm.loop !51

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i46.i
  %.pre.i48.i = load i32, ptr %i.c, align 8, !tbaa !28
  br label %._crit_edge.i49.i

._crit_edge.i49.i:                                ; preds = %._crit_edge.loopexit.i.i, %.preheader.i45.i
  %i.hi = phi i32 [ %i.gs, %.preheader.i45.i ], [ %.pre.i48.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.hj = phi i32 [ 0, %.preheader.i45.i ], [ %i.hg, %._crit_edge.loopexit.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.025.i.i, %.preheader.i45.i ], [ %i.gu, %._crit_edge.loopexit.i.i ]
  %i.hk = add nuw i32 %.02024.i.i, 1              ; 2 uses
  %i.hl = icmp ult i32 %i.hk, %i.hi
  br i1 %i.hl, label %.preheader.i45.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, !llvm.loop !52

bb.af:                                            ; preds = %bb.j
  %.not.i50.i = icmp eq i32 %i.m, 0
  br i1 %.not.i50.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %bb.af
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 176
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i51.i
  %indvars.iv.i52.i = phi i64 [ 0, %.lr.ph.i51.i ], [ %indvars.iv.next.i53.i, %bb.ag ] ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !54
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv.i52.i
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !37
  %i.hq = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %indvars.iv.i52.i
  store i8 %i.hp, ptr %i.hr, align 1, !tbaa !37
  %indvars.iv.next.i53.i = add nuw nsw i64 %indvars.iv.i52.i, 1 ; 2 uses
  %i.hs = load i32, ptr @PicSizeInMapUnits, align 4, !tbaa !4
  %i.ht = zext i32 %i.hs to i64
  %i.hu = icmp samesign ult i64 %indvars.iv.next.i53.i, %i.ht
  br i1 %i.hu, label %bb.ag, label %FmoGenerateMapUnitToSliceGroupMap.exit, !llvm.loop !55

bb.ah:                                            ; preds = %bb.j
  %i.hv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.u) ; 0 uses
  tail call void @exit(i32 noundef -1) #16
  unreachable

FmoGenerateMapUnitToSliceGroupMap.exit:           ; preds = %bb.ag, %._crit_edge.i49.i, %.lr.ph.i39.i, %bb.ac, %.loopexit.i.i, %.lr.ph.i.i, %bb.l, %._crit_edge.i.i, %bb.i, %bb.n, %._crit_edge.i29.i, %bb.r, %._crit_edge.i36.i, %bb.ad, %bb.ae, %.preheader.lr.ph.i44.i, %bb.af
  %i.hw = load ptr, ptr @MBAmap, align 8, !tbaa !33 ; 2 uses
  %.not.i6 = icmp eq ptr %i.hw, null
  br i1 %.not.i6, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %FmoGenerateMapUnitToSliceGroupMap.exit
  tail call void @free(ptr noundef nonnull %i.hw) #14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %FmoGenerateMapUnitToSliceGroupMap.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 15348 ; 7 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !56
  %i.hz = zext i32 %i.hy to i64
  %i.ia = tail call noalias ptr @malloc(i64 noundef %i.hz) #15 ; 2 uses
  store ptr %i.ia, ptr @MBAmap, align 8, !tbaa !33
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ic = load i32, ptr %i.hx, align 4, !tbaa !56
  %i.id = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ic) ; 0 uses
  tail call void @exit(i32 noundef -1) #16
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 1148
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !57
  %.not25.i = icmp eq i32 %i.if, 0
  br i1 %.not25.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 15312
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !61
  %.not26.i = icmp eq i32 %i.ih, 0
  br i1 %.not26.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ii = load i32, ptr %i.hx, align 4, !tbaa !56
  %.not36.i = icmp eq i32 %i.ii, 0
  br i1 %.not36.i, label %FmoGenerateMBAmap.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.an, %.lr.ph.i7
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i7 ], [ 0, %bb.an ] ; 3 uses
  %i.ij = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv.i
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !37
  %i.im = load ptr, ptr @MBAmap, align 8, !tbaa !33
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %indvars.iv.i
  store i8 %i.il, ptr %i.in, align 1, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.io = load i32, ptr %i.hx, align 4, !tbaa !56
  %i.ip = zext i32 %i.io to i64
  %i.iq = icmp samesign ult i64 %indvars.iv.next.i, %i.ip
  br i1 %i.iq, label %.lr.ph.i7, label %FmoGenerateMBAmap.exit, !llvm.loop !62

bb.ao:                                            ; preds = %bb.am
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 1152
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !63
  %.not27.i = icmp eq i32 %i.is, 0
  %i.it = load i32, ptr %i.hx, align 4, !tbaa !56
  %.not38.i = icmp eq i32 %i.it, 0                ; 2 uses
  br i1 %.not27.i, label %.preheader.i, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.ao
  br i1 %.not38.i, label %FmoGenerateMBAmap.exit, label %.lr.ph33.i

.preheader.i:                                     ; preds = %bb.ao
  br i1 %.not38.i, label %FmoGenerateMBAmap.exit, label %.lr.ph35.i

.lr.ph33.i:                                       ; preds = %.preheader28.i, %.lr.ph33.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.lr.ph33.i ], [ 0, %.preheader28.i ] ; 3 uses
  %i.iu = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.iv = lshr i64 %indvars.iv42.i, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !37
  %i.iy = load ptr, ptr @MBAmap, align 8, !tbaa !33
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %indvars.iv42.i
  store i8 %i.ix, ptr %i.iz, align 1, !tbaa !37
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %i.ja = load i32, ptr %i.hx, align 4, !tbaa !56
  %i.jb = zext i32 %i.ja to i64
  %i.jc = icmp samesign ult i64 %indvars.iv.next43.i, %i.jb
  br i1 %i.jc, label %.lr.ph33.i, label %FmoGenerateMBAmap.exit, !llvm.loop !64

.lr.ph35.i:                                       ; preds = %.preheader.i, %.lr.ph35.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %.lr.ph35.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.jd = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  %i.je = load i32, ptr %i.c, align 8, !tbaa !28  ; 3 uses
  %i.jf = shl i32 %i.je, 1
  %i.jg = trunc nuw i64 %indvars.iv45.i to i32    ; 2 uses
  %i.jh = udiv i32 %i.jg, %i.jf
  %i.ji = mul i32 %i.jh, %i.je
  %i.jj = urem i32 %i.jg, %i.je
  %i.jk = add i32 %i.ji, %i.jj
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !37
  %i.jo = load ptr, ptr @MBAmap, align 8, !tbaa !33
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %indvars.iv45.i
  store i8 %i.jn, ptr %i.jp, align 1, !tbaa !37
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.jq = load i32, ptr %i.hx, align 4, !tbaa !56
  %i.jr = zext i32 %i.jq to i64
  %i.js = icmp samesign ult i64 %indvars.iv.next46.i, %i.jr
  br i1 %i.js, label %.lr.ph35.i, label %FmoGenerateMBAmap.exit, !llvm.loop !65

FmoGenerateMBAmap.exit:                           ; preds = %.lr.ph.i7, %.lr.ph33.i, %.lr.ph35.i, %bb.an, %.preheader28.i, %.preheader.i
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @FmoUninit() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @MBAmap, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #14
  store ptr null, ptr @MBAmap, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33 ; 2 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #14
  store ptr null, ptr @MapUnitToSliceGroupMap, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @FmoStartPicture() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15348
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = load ptr, ptr @MBAmap, align 8           ; 8 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64  ; 8 uses
  br i1 %i.d, label %.lr.ph.i.us.preheader, label %FmoGetFirstMBOfSliceGroup.exit.preheader

FmoGetFirstMBOfSliceGroup.exit.preheader:         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @FirstMBInSlice, i8 -1, i64 32, i1 false), !tbaa !4
  br label %.split7.us

.lr.ph.i.us.preheader:                            ; preds = %bb.a, %bb.b
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.us
  %i.g = load i8, ptr %i.f, align 1, !tbaa !37
  %.not.i.us = icmp eq i8 %i.g, 0
  br i1 %.not.i.us, label %.critedge.loopexit.split.loop.exit12.i.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.us.preheader
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %FmoGetFirstMBOfSliceGroup.exit.us, label %.lr.ph.i.us.preheader, !llvm.loop !67

.critedge.loopexit.split.loop.exit12.i.us:        ; preds = %.lr.ph.i.us.preheader
  %i.h = trunc nuw nsw i64 %indvars.iv.i.us to i32
  br label %FmoGetFirstMBOfSliceGroup.exit.us

FmoGetFirstMBOfSliceGroup.exit.us:                ; preds = %bb.b, %.critedge.loopexit.split.loop.exit12.i.us
  %.0..i.us = phi i32 [ %i.h, %.critedge.loopexit.split.loop.exit12.i.us ], [ -1, %bb.b ]
  store i32 %.0..i.us, ptr @FirstMBInSlice, align 16, !tbaa !4
  br label %bb.c

end_hunk_0
