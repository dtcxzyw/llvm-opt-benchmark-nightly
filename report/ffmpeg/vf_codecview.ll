Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_codecview?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"codecview\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Visualize information about some codecs.\00", align 1
@codecview_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 1, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_vf_codecview = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, { i32, [4 x i8] }, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @codecview_inputs, ptr @ff_video_default_filterpad, ptr @codecview_class, i32 65536, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 5, [5 x i8] zeroinitializer, ptr null, ptr null, ptr null, { i32, [4 x i8] } zeroinitializer, i32 40, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@codecview_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @codecview_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"mv\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"set motion vectors to visualize\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"pf\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"forward predicted MVs of P-frames\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"bf\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"forward predicted MVs of B-frames\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"backward predicted MVs of B-frames\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"mv_type\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"set motion vectors type\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"mvt\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"forward predicted MVs\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"backward predicted MVs\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"frame_type\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"set frame types to visualize motion vectors of\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"I-frames\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"P-frames\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"B-frames\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"set block partitioning structure to visualize\00", align 1
@codecview_options = internal constant [16 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 8, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 0, i32 11, %union.anon.2 { i64 4 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr null, i32 28, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.17, i32 16, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.16 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.17, i32 16, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.16 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.16 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.16 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.24, i32 12, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.23 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.24, i32 12, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.23 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.26, ptr @.str.27, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.23 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.28, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.23 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.29, i32 0, i32 11, %union.anon.2 { i64 4 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.23 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr @.str.31, i32 32, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !43
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.n = call i32 @ff_qp_table_extract(ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.b) #7 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !44
  %.not149 = icmp eq ptr %i.p, null
  br i1 %.not149, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !51
  %i.u = sub nsw i32 0, %i.r
  %i.v = ashr i32 %i.u, %i.t                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !53
  %i.aa = sub nsw i32 0, %i.x
  %i.ab = ashr i32 %i.aa, %i.z                    ; 2 uses
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !29
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i32 %i.ab, 0
  %i.ak = icmp slt i32 %i.v, 0
  %or.cond187 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond187, label %.preheader178.preheader, label %.sink.split

.preheader178.preheader:                          ; preds = %bb.d
  %i.al = sub nsw i32 0, %i.v
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !44
  %wide.trip.count = zext nneg i32 %i.al to i64
  br label %.preheader178

.preheader178:                                    ; preds = %.preheader178.preheader, %._crit_edge
  %.0131182 = phi ptr [ %i.bi, %._crit_edge ], [ %i.an, %.preheader178.preheader ] ; 2 uses
  %.0132181 = phi ptr [ %i.bh, %._crit_edge ], [ %i.ap, %.preheader178.preheader ] ; 2 uses
  %.0133180 = phi i32 [ %i.bj, %._crit_edge ], [ 0, %.preheader178.preheader ] ; 2 uses
  %i.aq = lshr i32 %.0133180, 3
  br label %bb.e

bb.e:                                             ; preds = %.preheader178, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader178 ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.as = load i32, ptr %i.c, align 4, !tbaa !29
  %i.at = mul nsw i32 %i.as, %i.aq
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = lshr i32 %i.au, 3
  %i.aw = add nsw i32 %i.at, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !30
  %i.ba = sext i8 %i.az to i16
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !29
  %cond.i = icmp eq i32 %i.bb, 2
  %i.bc = zext i1 %cond.i to i16
  %.0.i = ashr i16 %i.ba, %i.bc
  %.lhs.trunc = shl nsw i16 %.0.i, 7
  %i.bd = sdiv i16 %.lhs.trunc, 31
  %i.be = trunc i16 %i.bd to i8                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0131182, i64 %indvars.iv
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.0132181, i64 %indvars.iv
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.e
  %i.bh = getelementptr inbounds i8, ptr %.0132181, i64 %i.af
  %i.bi = getelementptr inbounds i8, ptr %.0131182, i64 %i.ai
  %i.bj = add nuw nsw i32 %.0133180, 1            ; 2 uses
  %exitcond192.not = icmp eq i32 %i.bj, %i.ac
  br i1 %exitcond192.not, label %.sink.split, label %.preheader178, !llvm.loop !33

.sink.split:                                      ; preds = %._crit_edge, %bb.d, %bb.c
  call void @av_freep(ptr noundef nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !54
  %.not150 = icmp eq i32 %i.bl, 0
  br i1 %.not150, label %.loopexit177, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = call ptr @av_frame_get_side_data(ptr noundef %1, i32 noundef 19) #7 ; 2 uses
  %.not151 = icmp eq ptr %i.bm, null
  br i1 %.not151, label %.loopexit177, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !56 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !29
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = load i32, ptr %i.bo, align 8, !tbaa !58
  %.not152 = icmp eq i32 %i.bs, 0
  br i1 %.not152, label %.loopexit177, label %av_video_enc_params_block.exit.lr.ph

av_video_enc_params_block.exit.lr.ph:             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 108
  br label %av_video_enc_params_block.exit

av_video_enc_params_block.exit:                   ; preds = %av_video_enc_params_block.exit.lr.ph, %draw_block_rectangle.exit
  %indvars.iv193 = phi i64 [ 0, %av_video_enc_params_block.exit.lr.ph ], [ %indvars.iv.next194, %draw_block_rectangle.exit ] ; 2 uses
  %i.bx = load i64, ptr %i.bt, align 8, !tbaa !59
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bx
  %i.bz = load i64, ptr %i.bu, align 8, !tbaa !60
  %i.ca = mul i64 %i.bz, %indvars.iv193
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !62
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !63
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !64
  %i.cj = sext i32 %i.ci to i64
  %i.ck = add nsw i64 %i.cj, %i.cd
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !65
  %i.cn = sext i32 %i.cm to i64
  %i.co = add nsw i64 %i.cn, %i.cg
  %i.cp = call i64 @llvm.smax.i64(i64 %i.cd, i64 0) ; 5 uses
  %i.cq = call i64 @llvm.smax.i64(i64 %i.cg, i64 0) ; 4 uses
  %i.cr = load i32, ptr %i.bv, align 8, !tbaa !50
  %i.cs = sext i32 %i.cr to i64
  %. = call i64 @llvm.smin.i64(i64 %i.ck, i64 %i.cs) ; 2 uses
  %i.ct = load i32, ptr %i.bw, align 4, !tbaa !52
  %i.cu = sext i32 %i.ct to i64
  %i.cv = call i64 @llvm.smin.i64(i64 %i.co, i64 %i.cu) ; 2 uses
  %.not165 = icmp sgt i64 %., %i.cp
  %.not166 = icmp sgt i64 %i.cv, %i.cq
  %or.cond167 = select i1 %.not165, i1 %.not166, i1 false
  br i1 %or.cond167, label %.lr.ph.preheader.i, label %draw_block_rectangle.exit

.lr.ph.preheader.i:                               ; preds = %av_video_enc_params_block.exit
  %i.cw = load ptr, ptr %1, align 8, !tbaa !44
  %i.cx = mul nsw i64 %i.cq, %i.br
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx ; 2 uses
  %i.cz = trunc nuw nsw i64 %i.cp to i32          ; 3 uses
  %i.da = trunc nuw nsw i64 %i.cq to i32          ; 2 uses
  %i.db = sub nuw nsw i64 %., %i.cp
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = sub nuw nsw i64 %i.cv, %i.cq
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = add nuw i32 %i.dc, %i.cz                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.cy, i64 %i.cp
  %i.dg = add nuw nsw i32 %i.cz, 1
  %smax.i = call i32 @llvm.smax.i32(i32 %i.df, i32 %i.dg)
  %i.dh = xor i32 %i.cz, -1
  %i.di = add nsw i32 %smax.i, %i.dh
  %i.dj = zext i32 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dj, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 100, i64 %i.dk, i1 false), !tbaa !30
  %i.dl = add nuw nsw i32 %i.de, %i.da
  %i.dm = sext i32 %i.df to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.preheader.i
  %.026.i = phi i32 [ %i.da, %.lr.ph.preheader.i ], [ %i.dr, %bb.i ]
  %.02225.i = phi ptr [ %i.cy, %.lr.ph.preheader.i ], [ %i.dq, %bb.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02225.i, i64 %i.cp
  store i8 100, ptr %i.dn, align 1, !tbaa !30
  %i.do = getelementptr i8, ptr %.02225.i, i64 %i.dm
  %i.dp = getelementptr i8, ptr %i.do, i64 -1
  store i8 100, ptr %i.dp, align 1, !tbaa !30
  %i.dq = getelementptr inbounds i8, ptr %.02225.i, i64 %i.br
  %i.dr = add nuw nsw i32 %.026.i, 1              ; 2 uses
  %i.ds = icmp slt i32 %i.dr, %i.dl
  br i1 %i.ds, label %bb.i, label %draw_block_rectangle.exit, !llvm.loop !34

draw_block_rectangle.exit:                        ; preds = %bb.i, %av_video_enc_params_block.exit
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %2 = load i32, ptr %i.bo, align 8, !tbaa !58
  %i.dt = zext i32 %2 to i64
  %i.du = icmp samesign ult i64 %indvars.iv.next194, %i.dt
  br i1 %i.du, label %av_video_enc_params_block.exit, label %.loopexit177, !llvm.loop !35

.loopexit177:                                     ; preds = %draw_block_rectangle.exit, %bb.g, %bb.h, %bb.f
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !66
  %.not153 = icmp eq i32 %i.dw, 0
  br i1 %.not153, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit177
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !67
  %.not154 = icmp eq i32 %i.dy, 0
  br i1 %.not154, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit177
  %i.dz = call ptr @av_frame_get_side_data(ptr noundef %1, i32 noundef 8) #7 ; 3 uses
  %.not155 = icmp eq ptr %i.dz, null
  br i1 %.not155, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !56
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !68 ; 3 uses
  %i.ee = and i32 %i.ed, 1
  %.not156 = icmp eq i32 %i.ee, 0
  br i1 %.not156, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !69
  %i.eh = icmp eq i32 %i.eg, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ei = phi i1 [ false, %bb.l ], [ %i.eh, %bb.m ] ; 2 uses
  %i.ej = and i32 %i.ed, 2
  %.not157 = icmp eq i32 %i.ej, 0
  br i1 %.not157, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !69
  %i.em = icmp eq i32 %i.el, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.en = phi i1 [ false, %bb.n ], [ %i.em, %bb.o ]
  %i.eo = and i32 %i.ed, 4
  %.not158 = icmp eq i32 %i.eo, 0
  br i1 %.not158, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !69
  %i.er = icmp eq i32 %i.eq, 3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.es = phi i1 [ false, %bb.p ], [ %i.er, %bb.q ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !70
  %.not190 = icmp ult i64 %i.eu, 40
  br i1 %.not190, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv196 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next197, %bb.ac ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [40 x i8], ptr %i.eb, i64 %indvars.iv196 ; 9 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !73
  %i.fh = icmp sgt i32 %i.fg, 0                   ; 5 uses
  %i.fi = zext i1 %i.fh to i32                    ; 2 uses
  %i.fj = load i32, ptr %i.ev, align 8, !tbaa !67 ; 3 uses
  %.not159 = icmp eq i32 %i.fj, 0
  br i1 %.not159, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fk = trunc i32 %i.fj to i1
  %not. = xor i1 %i.fh, true
  %spec.select = and i1 %not., %i.fk              ; 4 uses
  %i.fl = and i32 %i.fj, 2
  %i.fm = icmp ne i32 %i.fl, 0
  %i.fn = and i1 %i.fh, %i.fm                     ; 3 uses
  %i.fo = load i32, ptr %i.ec, align 4, !tbaa !68
  %.not164 = icmp eq i32 %i.fo, 0
  %or.cond = or i1 %spec.select, %i.fn
  %or.cond168 = select i1 %.not164, i1 %or.cond, i1 false
  %or.cond3 = and i1 %i.ei, %spec.select
  %or.cond169 = select i1 %or.cond168, i1 true, i1 %or.cond3
  %or.cond5 = select i1 %i.ei, i1 %i.fn, i1 false
  %or.cond170 = select i1 %or.cond169, i1 true, i1 %or.cond5
  %or.cond7 = and i1 %i.en, %spec.select
  %or.cond171 = select i1 %or.cond170, i1 true, i1 %or.cond7
  %or.cond9 = and i1 %i.es, %spec.select
  %or.cond172 = select i1 %or.cond171, i1 true, i1 %or.cond9
  %or.cond11 = select i1 %i.es, i1 %i.fn, i1 false
  %or.cond173 = select i1 %or.cond172, i1 true, i1 %or.cond11
  br i1 %or.cond173, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.fp = load ptr, ptr %1, align 8, !tbaa !44
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 10
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !74
  %i.fs = sext i16 %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fu = load i16, ptr %i.ft, align 4, !tbaa !75
  %i.fv = sext i16 %i.fu to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !76
  %i.fy = sext i16 %i.fx to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.ga = load i16, ptr %i.fz, align 8, !tbaa !77
  %i.gb = sext i16 %i.ga to i32
  %i.gc = load i32, ptr %i.ew, align 8, !tbaa !50
  %i.gd = load i32, ptr %i.ex, align 4, !tbaa !52
  %i.ge = load i32, ptr %i.ey, align 8, !tbaa !29
  %i.gf = sext i32 %i.ge to i64
  call fastcc void @draw_arrow(ptr noundef %i.fp, i32 noundef %i.fs, i32 noundef %i.fv, i32 noundef %i.fy, i32 noundef %i.gb, i32 noundef %i.gc, i32 noundef %i.gd, i64 noundef %i.gf, i32 noundef %i.fi)
  br label %bb.ac

bb.v:                                             ; preds = %bb.s
  %i.gg = load i32, ptr %i.dv, align 8, !tbaa !66 ; 4 uses
  %.not160 = icmp eq i32 %i.gg, 0
  br i1 %.not160, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gh = and i32 %i.gg, 1
  %.not161 = icmp eq i32 %i.gh, 0
  %or.cond174 = or i1 %i.fh, %.not161
  br i1 %or.cond174, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gi = load i32, ptr %i.ez, align 8, !tbaa !69
  %i.gj = icmp eq i32 %i.gi, 2
  br i1 %i.gj, label %bb.ab, label %.thread176

bb.y:                                             ; preds = %bb.w
  br i1 %i.fh, label %.critedge, label %.thread176

.thread176:                                       ; preds = %bb.x, %bb.y
  %i.gk = and i32 %i.gg, 2
  %.not162 = icmp eq i32 %i.gk, 0
  br i1 %.not162, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.thread176
  %i.gl = load i32, ptr %i.fa, align 8, !tbaa !69
  %i.gm = icmp eq i32 %i.gl, 3
  br i1 %i.gm, label %bb.ab, label %bb.ac

.critedge:                                        ; preds = %bb.y
  %i.gn = and i32 %i.gg, 4
  %.not163 = icmp eq i32 %i.gn, 0
  br i1 %.not163, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.go = load i32, ptr %i.fb, align 8, !tbaa !69
  %i.gp = icmp eq i32 %i.go, 3
  br i1 %i.gp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x
  %i.gq = load ptr, ptr %1, align 8, !tbaa !44
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ff, i64 10
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !74
  %i.gt = sext i16 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.gv = load i16, ptr %i.gu, align 4, !tbaa !75
  %i.gw = sext i16 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !76
  %i.gz = sext i16 %i.gy to i32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.hb = load i16, ptr %i.ha, align 8, !tbaa !77
  %i.hc = sext i16 %i.hb to i32
  %i.hd = load i32, ptr %i.fc, align 8, !tbaa !50
  %i.he = load i32, ptr %i.fd, align 4, !tbaa !52
  %i.hf = load i32, ptr %i.fe, align 8, !tbaa !29
  %i.hg = sext i32 %i.hf to i64
  call fastcc void @draw_arrow(ptr noundef %i.gq, i32 noundef %i.gt, i32 noundef %i.gw, i32 noundef %i.gz, i32 noundef %i.hc, i32 noundef %i.hd, i32 noundef %i.he, i64 noundef %i.hg, i32 noundef %i.fi)
  br label %bb.ac

bb.ac:                                            ; preds = %.thread176, %bb.z, %bb.u, %bb.t, %bb.v, %bb.ab, %bb.aa, %.critedge
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.hh = load i64, ptr %i.et, align 8, !tbaa !70
  %i.hi = udiv i64 %i.hh, 40
  %i.hj = icmp samesign ugt i64 %i.hi, %indvars.iv.next197
  br i1 %i.hj, label %bb.s, label %.loopexit, !llvm.loop !36

end_hunk_0
