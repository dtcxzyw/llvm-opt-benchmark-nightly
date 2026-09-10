Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_normalize?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.NormalizeLocal = type { i16, float, float }

@.str = private unnamed_addr constant [10 x i8] c"normalize\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Normalize RGB video.\00", align 1
@inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@pixel_fmts = internal constant [25 x i32] [i32 2, i32 3, i32 25, i32 26, i32 27, i32 28, i32 118, i32 119, i32 120, i32 121, i32 35, i32 58, i32 105, i32 107, i32 71, i32 73, i32 75, i32 135, i32 137, i32 77, i32 111, i32 163, i32 161, i32 113, i32 -1], align 16
@ff_vf_normalize = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @ff_video_default_filterpad, ptr @normalize_class, i32 131072, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @pixel_fmts }, i32 393424, i32 0, ptr @ff_filter_process_command, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@normalize_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @normalize_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"blackpt\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"output color to which darkest input color is mapped\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"whitept\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"output color to which brightest input color is mapped\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"smoothing\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"amount of temporal smoothing of the input range, to reduce flicker\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"independence\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"proportion of independent to linked channel normalization\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"strength of filter, from no effect to full normalization\00", align 1
@normalize_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 17, { ptr } { ptr @.str.6 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 12, i32 17, { ptr } { ptr @.str.9 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 16, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41AFFFFFFE000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 20, i32 5, { double } { double 1.000000e+00 }, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 24, i32 5, { double } { double 1.000000e+00 }, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  ret void
}

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %2 = alloca [3 x %struct.NormalizeLocal], align 16 ; 12 uses
  %3 = alloca [3 x %struct.NormalizeLocal], align 16 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 49 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.j = tail call i32 @av_frame_is_writable(ptr noundef %1) #8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76
  %.not14 = icmp eq i32 %i.l, 0
  br i1 %.not14, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.b, align 8, !tbaa !72
  br label %bb.f

.thread:                                          ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78
  %i.q = tail call ptr @ff_get_video_buffer(ptr noundef %i.g, i32 noundef %i.n, i32 noundef %i.p) #8 ; 4 uses
  store ptr %i.q, ptr %i.b, align 8, !tbaa !72
  %.not15 = icmp eq ptr %i.q, null
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.q

bb.e:                                             ; preds = %.thread
  %i.r = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.q, ptr noundef %1) #8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.s = phi ptr [ %i.q, %bb.e ], [ %1, %bb.c ]
  %i.t = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 393408
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  call void %i.v(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8, !inline_history !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !79   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33   ; 3 uses
  %i.aa = srem i32 %i.x, %i.z                     ; 2 uses
  %.not.i = icmp slt i32 %i.x, %i.z
  br i1 %.not.i, label %..loopexit111_crit_edge.i, label %.preheader.i

..loopexit111_crit_edge.i:                        ; preds = %bb.f
  %i.ab = add nsw i32 %i.x, 1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !36
  %.phi.trans.insert134.i = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.pre135.i = load i64, ptr %.phi.trans.insert134.i, align 8, !tbaa !80
  %.phi.trans.insert136.i = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %.pre137.i = load ptr, ptr %.phi.trans.insert136.i, align 8, !tbaa !36
  %.phi.trans.insert139.i = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %.pre140.i = load i64, ptr %.phi.trans.insert139.i, align 8, !tbaa !80
  %.phi.trans.insert142.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.pre143.i = load ptr, ptr %.phi.trans.insert142.i, align 8, !tbaa !36
  %.phi.trans.insert146.i = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %.pre147.i = load i64, ptr %.phi.trans.insert146.i, align 8, !tbaa !80
  %.phi.trans.insert149.i = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %.pre150.i = load ptr, ptr %.phi.trans.insert149.i, align 8, !tbaa !36
  %.phi.trans.insert153.i = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %.pre154.i = load i64, ptr %.phi.trans.insert153.i, align 8, !tbaa !80
  %.phi.trans.insert156.i = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %.pre157.i = load ptr, ptr %.phi.trans.insert156.i, align 8, !tbaa !36
  %.phi.trans.insert160.i = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %.pre161.i = load i64, ptr %.phi.trans.insert160.i, align 8, !tbaa !80
  %.phi.trans.insert163.i = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %.pre164.i = load ptr, ptr %.phi.trans.insert163.i, align 8, !tbaa !36
  %.phi.trans.insert167.i = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %.pre168.i = load i64, ptr %.phi.trans.insert167.i, align 8, !tbaa !80
  %.pre169.i = sext i32 %i.aa to i64
  br label %.loopexit111.i

.preheader.i:                                     ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.ad = sext i32 %i.aa to i64                   ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ad
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.ad
  %i.am = load i16, ptr %i.al, align 2, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !36 ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ad
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !38
  %i.at = zext i16 %i.as to i64
  %i.au = zext i16 %i.ah to i64
  %i.av = sub i64 %i.aj, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !80
  %i.ay = sub i64 %i.ax, %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.ad
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !38
  %i.bd = zext i16 %i.bc to i64
  %i.be = zext i16 %i.am to i64
  %i.bf = sub i64 %i.ao, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !80
  %i.bi = sub i64 %i.bh, %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36 ; 2 uses
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.ad
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !80
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36 ; 2 uses
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.ad
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !38
  %i.bt = zext i16 %i.bm to i64
  %i.bu = zext i16 %i.bs to i64
  %i.bv = sub i64 %i.bo, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !80
  %i.by = sub i64 %i.bx, %i.bu
  br label %.loopexit111.i

.loopexit111.i:                                   ; preds = %.preheader.i, %..loopexit111_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre169.i, %..loopexit111_crit_edge.i ], [ %i.ad, %.preheader.i ] ; 6 uses
  %i.bz = phi i64 [ %.pre168.i, %..loopexit111_crit_edge.i ], [ %i.by, %.preheader.i ]
  %i.ca = phi ptr [ %.pre164.i, %..loopexit111_crit_edge.i ], [ %i.bq, %.preheader.i ]
  %i.cb = phi i64 [ %.pre161.i, %..loopexit111_crit_edge.i ], [ %i.bv, %.preheader.i ]
  %i.cc = phi ptr [ %.pre157.i, %..loopexit111_crit_edge.i ], [ %i.bk, %.preheader.i ]
  %i.cd = phi i64 [ %.pre154.i, %..loopexit111_crit_edge.i ], [ %i.bi, %.preheader.i ]
  %i.ce = phi ptr [ %.pre150.i, %..loopexit111_crit_edge.i ], [ %i.ba, %.preheader.i ]
  %i.cf = phi i64 [ %.pre147.i, %..loopexit111_crit_edge.i ], [ %i.ay, %.preheader.i ]
  %i.cg = phi ptr [ %.pre143.i, %..loopexit111_crit_edge.i ], [ %i.aq, %.preheader.i ]
  %i.ch = phi i64 [ %.pre140.i, %..loopexit111_crit_edge.i ], [ %i.bf, %.preheader.i ]
  %i.ci = phi ptr [ %.pre137.i, %..loopexit111_crit_edge.i ], [ %i.ak, %.preheader.i ]
  %i.cj = phi i64 [ %.pre135.i, %..loopexit111_crit_edge.i ], [ %i.av, %.preheader.i ]
  %i.ck = phi ptr [ %.pre.i, %..loopexit111_crit_edge.i ], [ %i.af, %.preheader.i ]
  %.099.i = phi i32 [ %i.ab, %..loopexit111_crit_edge.i ], [ %i.z, %.preheader.i ]
  %i.cl = sitofp nsz i32 %.099.i to float
  %i.cm = load i16, ptr %2, align 16, !tbaa !40   ; 2 uses
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %.pre-phi.i
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !38
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cq = load i16, ptr %3, align 16, !tbaa !40   ; 2 uses
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %.pre-phi.i
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !40 ; 2 uses
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %.pre-phi.i
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.cy = zext i16 %i.cv to i64
  %i.cz = zext i16 %i.cm to i64
  %i.da = add i64 %i.cf, %i.cy                    ; 2 uses
  %i.db = add i64 %i.cj, %i.cz                    ; 2 uses
  store i64 %i.db, ptr %i.co, align 8, !tbaa !80
  store i64 %i.da, ptr %i.cx, align 8, !tbaa !80
  %i.dc = uitofp nsz i64 %i.da to float
  %i.dd = uitofp nsz i64 %i.db to float
  %i.de = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.dc, i64 1
  %i.dg = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.di = fdiv nsz <2 x float> %i.df, %i.dh       ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 4, !tbaa !40 ; 2 uses
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %.pre-phi.i
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !38
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.do = zext i16 %i.dl to i64
  %i.dp = zext i16 %i.cq to i64
  %i.dq = add i64 %i.cd, %i.do                    ; 2 uses
  %i.dr = add i64 %i.ch, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.cs, align 8, !tbaa !80
  store i64 %i.dq, ptr %i.dn, align 8, !tbaa !80
  %i.ds = uitofp nsz i64 %i.dq to float
  %i.dt = uitofp nsz i64 %i.dr to float
  %i.du = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.ds, i64 1
  %i.dw = fdiv nsz <2 x float> %i.dv, %i.dh       ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 8, !tbaa !40 ; 2 uses
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %.pre-phi.i
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !38
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ee = load i16, ptr %i.ed, align 8, !tbaa !40 ; 5 uses
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %.pre-phi.i
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !38
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ei = extractelement <2 x float> %i.di, i64 0 ; 2 uses
  %i.ej = extractelement <2 x float> %i.di, i64 1 ; 2 uses
  %i.ek = extractelement <2 x float> %i.dw, i64 0 ; 2 uses
  %i.el = extractelement <2 x float> %i.dw, i64 1 ; 2 uses
  %i.em = zext i16 %i.dz to i64
  %i.en = zext i16 %i.ee to i64                   ; 5 uses
  %i.eo = add i64 %i.cb, %i.em                    ; 2 uses
  %i.ep = add i64 %i.bz, %i.en                    ; 2 uses
  store i64 %i.eo, ptr %i.eb, align 8, !tbaa !80
  store i64 %i.ep, ptr %i.eg, align 8, !tbaa !80
  %i.eq = uitofp nsz i64 %i.eo to float
  %i.er = uitofp nsz i64 %i.ep to float
  %i.es = insertelement <2 x float> poison, float %i.er, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.eq, i64 1
  %i.eu = fdiv nsz <2 x float> %i.et, %i.dh       ; 5 uses
  %i.ev = fcmp nsz ogt float %i.ei, %i.ej
  %i.ew = fcmp nsz ogt float %i.ek, %i.el
  %i.ex = select nsz i1 %i.ev, float %i.ej, float %i.ei ; 2 uses
  %i.ey = select nsz i1 %i.ew, float %i.ek, float %i.el ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.ex, i64 1
  %i.fb = fcmp nsz ogt <2 x float> %i.fa, %i.eu
  %i.fc = insertelement <2 x float> %i.eu, float %i.ey, i64 0
  %i.fd = insertelement <2 x float> %i.eu, float %i.ex, i64 1
  %i.fe = select <2 x i1> %i.fb, <2 x float> %i.fc, <2 x float> %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.fh = load <2 x float>, ptr %i.ff, align 4, !tbaa !81 ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.fj = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 5 uses
  %i.fl = load i32, ptr %i.fg, align 4, !tbaa !41
  %i.fm = sitofp nsz i32 %i.fl to float
  %i.fn = load i16, ptr %2, align 16, !tbaa !40   ; 6 uses
  %i.fo = uitofp i16 %i.fn to float
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fq = load i32, ptr %i.fi, align 4, !tbaa !41
  %i.fr = sitofp nsz i32 %i.fq to float
  %i.fs = load i16, ptr %3, align 16, !tbaa !40   ; 5 uses
  %i.ft = uitofp i16 %i.fs to float
  %i.fu = fsub nsz <2 x float> splat (float 1.000000e+00), %i.fh ; 3 uses
  %i.fv = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fw = insertelement <2 x float> %i.fv, float %i.fo, i64 1
  %i.fx = fmul nsz <2 x float> %i.fw, %i.fu       ; 3 uses
  %i.fy = insertelement <2 x float> %i.di, float %i.fm, i64 1
  %i.fz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fh, <2 x float> %i.fx) ; 5 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 0 ; 3 uses
  store float %i.ga, ptr %i.cp, align 4, !tbaa !82
  %i.gb = extractelement <2 x float> %i.fz, i64 1 ; 3 uses
  store float %i.gb, ptr %i.fp, align 8, !tbaa !83
  %i.gc = insertelement <2 x float> %i.fe, float %i.ft, i64 1
  %i.gd = fmul nsz <2 x float> %i.fu, %i.gc       ; 3 uses
  %i.ge = insertelement <2 x float> %i.dw, float %i.fr, i64 1
  %i.gf = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.fh, <2 x float> %i.gd) ; 3 uses
  store <2 x float> %i.gf, ptr %i.ct, align 4, !tbaa !81
  %i.gg = extractelement <2 x float> %i.gf, i64 0
  %i.gh = fcmp nsz oeq float %i.ga, %i.gg
  br i1 %i.gh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit111.i
  %.not109116.i = icmp ugt i16 %i.fn, %i.fs
  br i1 %.not109116.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.gi = zext i16 %i.fs to i64                   ; 2 uses
  %i.gj = fptoui float %i.gb to i16               ; 3 uses
  %i.gk = zext i16 %i.fn to i64                   ; 6 uses
  %i.gl = add nuw nsw i64 %i.gi, 1
  %i.gm = sub nsw i64 %i.gl, %i.gk                ; 7 uses
  %min.iters.check58 = icmp ult i64 %i.gm, 4
  br i1 %min.iters.check58, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.gm, 16
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph60

vector.ph60:                                      ; preds = %vector.main.loop.iter.check
  %i.gn = and i64 %i.gm, 12
  %n.vec61 = and i64 %i.gm, -16                   ; 4 uses
  %i.go = add nsw i64 %n.vec61, %i.gk
  %broadcast.splatinsert62 = insertelement <8 x i16> poison, i16 %i.gj, i64 0
  %broadcast.splat63 = shufflevector <8 x i16> %broadcast.splatinsert62, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep188 = getelementptr [2 x i8], ptr %i.fk, i64 %i.gk
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next66, %vector.body64 ] ; 2 uses
  %gep189 = getelementptr [2 x i8], ptr %invariant.gep188, i64 %index65 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %gep189, i64 16
  store <8 x i16> %broadcast.splat63, ptr %gep189, align 2, !tbaa !38
  store <8 x i16> %broadcast.splat63, ptr %i.gp, align 2, !tbaa !38
  %index.next66 = add nuw i64 %index65, 16        ; 2 uses
  %i.gq = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.gq, label %middle.block67, label %vector.body64, !llvm.loop !56

middle.block67:                                   ; preds = %vector.body64
  %cmp.n68 = icmp eq i64 %i.gm, %n.vec61
  br i1 %cmp.n68, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block67
  %min.epilog.iters.check = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec61, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.gm, -4                    ; 3 uses
  %i.gr = add nsw i64 %n.vec70, %i.gk
  %broadcast.splatinsert71 = insertelement <4 x i16> poison, i16 %i.gj, i64 0
  %broadcast.splat72 = shufflevector <4 x i16> %broadcast.splatinsert71, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep190 = getelementptr [2 x i8], ptr %i.fk, i64 %i.gk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 2 uses
  %gep191 = getelementptr [2 x i8], ptr %invariant.gep190, i64 %index73
  store <4 x i16> %broadcast.splat72, ptr %gep191, align 2, !tbaa !38
  %index.next74 = add nuw i64 %index73, 4         ; 2 uses
  %i.gs = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.gs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %i.gm, %n.vec70
  br i1 %cmp.n75, label %.loopexit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv124.i.ph = phi i64 [ %i.gk, %iter.check ], [ %i.go, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %vec.epilog.scalar.ph ], [ %indvars.iv124.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %indvars.iv124.i
  store i16 %i.gj, ptr %i.gt, align 2, !tbaa !38
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1
  %exitcond128.not.i = icmp eq i64 %indvars.iv124.i, %i.gi
  br i1 %exitcond128.not.i, label %.loopexit.i, label %vec.epilog.scalar.ph, !llvm.loop !58

bb.h:                                             ; preds = %.loopexit111.i
  %i.gu = fsub nsz <2 x float> %i.gf, %i.fz       ; 2 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 0
  %i.gw = extractelement <2 x float> %i.gu, i64 1
  %i.gx = fdiv nsz float %i.gw, %i.gv             ; 2 uses
  %.not108114.i = icmp ugt i16 %i.fn, %i.fs
  br i1 %.not108114.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.gy = zext i16 %i.fs to i64                   ; 2 uses
  %i.gz = load i32, ptr %i.fj, align 8, !tbaa !43
  %notmask.i.i = shl nsw i32 -1, %i.gz            ; 3 uses
  %i.ha = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.hb = zext i16 %i.fn to i64                   ; 4 uses
  %i.hc = add nuw nsw i64 %i.gy, 1
  %i.hd = sub nsw i64 %i.hc, %i.hb                ; 3 uses
  %min.iters.check = icmp ult i64 %i.hd, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.hd, -8                      ; 3 uses
  %i.he = add nsw i64 %n.vec, %i.hb
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %notmask.i.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert47 = insertelement <8 x i32> poison, i32 %i.ha, i64 0
  %broadcast.splat48 = shufflevector <8 x i32> %broadcast.splatinsert47, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat50 = shufflevector <2 x float> %i.fz, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <8 x float> poison, float %i.gx, i64 0
  %broadcast.splat52 = shufflevector <8 x float> %broadcast.splatinsert51, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat54 = shufflevector <2 x float> %i.fz, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.hf = zext i16 %i.fn to i32
  %broadcast.splatinsert55 = insertelement <8 x i32> poison, i32 %i.hf, i64 0
  %broadcast.splat56 = shufflevector <8 x i32> %broadcast.splatinsert55, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i32> %broadcast.splat56, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep = getelementptr [2 x i8], ptr %i.fk, i64 %i.hb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.hg = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.hh = fsub nsz <8 x float> %i.hg, %broadcast.splat50
  %i.hi = call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hh, <8 x float> %broadcast.splat52, <8 x float> %broadcast.splat54)
  %i.hj = fadd nsz <8 x float> %i.hi, splat (float 5.000000e-01)
  %i.hk = fptosi <8 x float> %i.hj to <8 x i32>   ; 3 uses
  %i.hl = and <8 x i32> %broadcast.splat, %i.hk
  %i.hm = icmp eq <8 x i32> %i.hl, zeroinitializer
  %i.hn = icmp slt <8 x i32> %i.hk, zeroinitializer
  %i.ho = select <8 x i1> %i.hn, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat48
  %i.hp = select <8 x i1> %i.hm, <8 x i32> %i.hk, <8 x i32> %i.ho
  %i.hq = trunc <8 x i32> %i.hp to <8 x i16>
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  store <8 x i16> %i.hq, ptr %gep, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hd, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.hb, %.lr.ph.i ], [ %i.he, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hs = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ht = uitofp nneg i32 %i.hs to float
  %i.hu = fsub nsz float %i.ht, %i.ga
  %i.hv = call nsz float @llvm.fmuladd.f32(float %i.hu, float %i.gx, float %i.gb)
  %i.hw = fadd nsz float %i.hv, 5.000000e-01
  %i.hx = fptosi float %i.hw to i32               ; 3 uses
  %i.hy = and i32 %notmask.i.i, %i.hx
  %.not.i.i = icmp eq i32 %i.hy, 0
  %isnotneg.inv.i.i = icmp slt i32 %i.hx, 0
  %i.hz = select i1 %isnotneg.inv.i.i, i32 0, i32 %i.ha
  %.0.i.i = select i1 %.not.i.i, i32 %i.hx, i32 %i.hz
  %i.ia = trunc i32 %.0.i.i to i16
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %indvars.iv.i
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.gy
  br i1 %exitcond.not.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !60

.loopexit.i:                                      ; preds = %scalar.ph, %vec.epilog.scalar.ph, %middle.block, %middle.block67, %vec.epilog.middle.block, %bb.h, %bb.g
  %i.ic = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !41
  %i.ie = sitofp nsz i32 %i.id to float
  %i.if = load i16, ptr %i.cu, align 4, !tbaa !40 ; 6 uses
  %i.ig = uitofp i16 %i.if to float
  %i.ih = extractelement <2 x float> %i.fu, i64 1 ; 4 uses
  %i.ii = fmul nsz float %i.ih, %i.ig
  %i.ij = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ik = insertelement <2 x float> %i.ij, float %i.ie, i64 1
  %i.il = insertelement <2 x float> %i.fx, float %i.ii, i64 1
  %i.im = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.fh, <2 x float> %i.il) ; 5 uses
  %i.in = extractelement <2 x float> %i.im, i64 1 ; 3 uses
  %i.io = extractelement <2 x float> %i.im, i64 0 ; 3 uses
  store float %i.io, ptr %i.dj, align 16, !tbaa !82
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.in, ptr %i.ip, align 4, !tbaa !83
  %i.iq = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !41
  %i.is = sitofp nsz i32 %i.ir to float
  %i.it = load i16, ptr %i.dk, align 4, !tbaa !40 ; 5 uses
  %i.iu = uitofp i16 %i.it to float
  %i.iv = fmul nsz float %i.ih, %i.iu
  %i.iw = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ix = insertelement <2 x float> %i.iw, float %i.is, i64 1
  %i.iy = insertelement <2 x float> %i.gd, float %i.iv, i64 1
  %i.iz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.fh, <2 x float> %i.iy) ; 3 uses
  store <2 x float> %i.iz, ptr %i.dx, align 16, !tbaa !81
  %i.ja = extractelement <2 x float> %i.iz, i64 0
  %i.jb = fcmp nsz oeq float %i.io, %i.ja
  br i1 %i.jb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  %i.jc = fsub nsz <2 x float> %i.iz, %i.im       ; 2 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 0
  %i.je = extractelement <2 x float> %i.jc, i64 1
  %i.jf = fdiv nsz float %i.je, %i.jd             ; 2 uses
  %.not108114.1.i = icmp ugt i16 %i.if, %i.it
  br i1 %.not108114.1.i, label %.loopexit.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.i
  %i.jg = zext i16 %i.it to i64                   ; 2 uses
  %i.jh = load i32, ptr %i.fj, align 8, !tbaa !43
  %notmask.i.1.i = shl nsw i32 -1, %i.jh          ; 3 uses
  %i.ji = xor i32 %notmask.i.1.i, -1              ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.i, i64 131264 ; 2 uses
  %i.jk = zext i16 %i.if to i64                   ; 4 uses
  %i.jl = add nuw nsw i64 %i.jg, 1
  %i.jm = sub nsw i64 %i.jl, %i.jk                ; 3 uses
  %min.iters.check78 = icmp ult i64 %i.jm, 8
  br i1 %min.iters.check78, label %scalar.ph77.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph.1.i
  %n.vec80 = and i64 %i.jm, -8                    ; 3 uses
  %i.jn = add nsw i64 %n.vec80, %i.jk
  %broadcast.splatinsert81 = insertelement <8 x i32> poison, i32 %notmask.i.1.i, i64 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert83 = insertelement <8 x i32> poison, i32 %i.ji, i64 0
  %broadcast.splat84 = shufflevector <8 x i32> %broadcast.splatinsert83, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat86 = shufflevector <2 x float> %i.im, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert87 = insertelement <8 x float> poison, float %i.jf, i64 0
  %broadcast.splat88 = shufflevector <8 x float> %broadcast.splatinsert87, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat90 = shufflevector <2 x float> %i.im, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.jo = zext i16 %i.if to i32
  %broadcast.splatinsert91 = insertelement <8 x i32> poison, i32 %i.jo, i64 0
  %broadcast.splat92 = shufflevector <8 x i32> %broadcast.splatinsert91, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction93 = add nuw nsw <8 x i32> %broadcast.splat92, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep192 = getelementptr [2 x i8], ptr %i.jj, i64 %i.jk
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph79
  %index95 = phi i64 [ 0, %vector.ph79 ], [ %index.next97, %vector.body94 ] ; 2 uses
  %vec.ind96 = phi <8 x i32> [ %induction93, %vector.ph79 ], [ %vec.ind.next98, %vector.body94 ] ; 2 uses
  %i.jp = uitofp nneg <8 x i32> %vec.ind96 to <8 x float>
  %i.jq = fsub nsz <8 x float> %i.jp, %broadcast.splat86
  %i.jr = call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jq, <8 x float> %broadcast.splat88, <8 x float> %broadcast.splat90)
  %i.js = fadd nsz <8 x float> %i.jr, splat (float 5.000000e-01)
  %i.jt = fptosi <8 x float> %i.js to <8 x i32>   ; 3 uses
  %i.ju = and <8 x i32> %broadcast.splat82, %i.jt
  %i.jv = icmp eq <8 x i32> %i.ju, zeroinitializer
  %i.jw = icmp slt <8 x i32> %i.jt, zeroinitializer
  %i.jx = select <8 x i1> %i.jw, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat84
  %i.jy = select <8 x i1> %i.jv, <8 x i32> %i.jt, <8 x i32> %i.jx
  %i.jz = trunc <8 x i32> %i.jy to <8 x i16>
  %gep193 = getelementptr [2 x i8], ptr %invariant.gep192, i64 %index95
  store <8 x i16> %i.jz, ptr %gep193, align 2, !tbaa !38
  %index.next97 = add nuw i64 %index95, 8         ; 2 uses
  %vec.ind.next98 = add <8 x i32> %vec.ind96, splat (i32 8)
  %i.ka = icmp eq i64 %index.next97, %n.vec80
  br i1 %i.ka, label %middle.block99, label %vector.body94, !llvm.loop !61

middle.block99:                                   ; preds = %vector.body94
  %cmp.n100 = icmp eq i64 %i.jm, %n.vec80
  br i1 %cmp.n100, label %.loopexit.1.i, label %scalar.ph77.preheader

scalar.ph77.preheader:                            ; preds = %.lr.ph.1.i, %middle.block99
  %indvars.iv.1.i.ph = phi i64 [ %i.jk, %.lr.ph.1.i ], [ %i.jn, %middle.block99 ]
  br label %scalar.ph77

scalar.ph77:                                      ; preds = %scalar.ph77.preheader, %scalar.ph77
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %scalar.ph77 ], [ %indvars.iv.1.i.ph, %scalar.ph77.preheader ] ; 4 uses
  %i.kb = trunc nuw nsw i64 %indvars.iv.1.i to i32
  %i.kc = uitofp nneg i32 %i.kb to float
  %i.kd = fsub nsz float %i.kc, %i.io
  %i.ke = call nsz float @llvm.fmuladd.f32(float %i.kd, float %i.jf, float %i.in)
  %i.kf = fadd nsz float %i.ke, 5.000000e-01
  %i.kg = fptosi float %i.kf to i32               ; 3 uses
  %i.kh = and i32 %notmask.i.1.i, %i.kg
  %.not.i.1.i = icmp eq i32 %i.kh, 0
  %isnotneg.inv.i.1.i = icmp slt i32 %i.kg, 0
  %i.ki = select i1 %isnotneg.inv.i.1.i, i32 0, i32 %i.ji
  %.0.i.1.i = select i1 %.not.i.1.i, i32 %i.kg, i32 %i.ki
  %i.kj = trunc i32 %.0.i.1.i to i16
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %indvars.iv.1.i
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !38
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.1.i, %i.jg
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %scalar.ph77, !llvm.loop !62

bb.j:                                             ; preds = %.loopexit.i
  %.not109116.1.i = icmp ugt i16 %i.if, %i.it
  br i1 %.not109116.1.i, label %.loopexit.1.i, label %iter.check117

iter.check117:                                    ; preds = %bb.j
  %i.kl = zext i16 %i.it to i64                   ; 2 uses
  %i.km = fptoui float %i.in to i16               ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.i, i64 131264 ; 3 uses
  %i.ko = zext i16 %i.if to i64                   ; 6 uses
  %i.kp = add nuw nsw i64 %i.kl, 1
  %i.kq = sub nsw i64 %i.kp, %i.ko                ; 7 uses
  %min.iters.check103 = icmp ult i64 %i.kq, 4
  br i1 %min.iters.check103, label %vec.epilog.scalar.ph118.preheader, label %vector.main.loop.iter.check104

vector.main.loop.iter.check104:                   ; preds = %iter.check117
  %min.iters.check105 = icmp ult i64 %i.kq, 16
  br i1 %min.iters.check105, label %vec.epilog.ph121, label %vector.ph106

vector.ph106:                                     ; preds = %vector.main.loop.iter.check104
  %i.kr = and i64 %i.kq, 12
  %n.vec107 = and i64 %i.kq, -16                  ; 4 uses
  %i.ks = add nsw i64 %n.vec107, %i.ko
  %broadcast.splatinsert108 = insertelement <8 x i16> poison, i16 %i.km, i64 0
  %broadcast.splat109 = shufflevector <8 x i16> %broadcast.splatinsert108, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep194 = getelementptr [2 x i8], ptr %i.kn, i64 %i.ko
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph106
  %index111 = phi i64 [ 0, %vector.ph106 ], [ %index.next112, %vector.body110 ] ; 2 uses
  %gep195 = getelementptr [2 x i8], ptr %invariant.gep194, i64 %index111 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %gep195, i64 16
  store <8 x i16> %broadcast.splat109, ptr %gep195, align 2, !tbaa !38
  store <8 x i16> %broadcast.splat109, ptr %i.kt, align 2, !tbaa !38
  %index.next112 = add nuw i64 %index111, 16      ; 2 uses
  %i.ku = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.ku, label %middle.block113, label %vector.body110, !llvm.loop !63

middle.block113:                                  ; preds = %vector.body110
  %cmp.n114 = icmp eq i64 %i.kq, %n.vec107
  br i1 %cmp.n114, label %.loopexit.1.i, label %vec.epilog.iter.check119

vec.epilog.iter.check119:                         ; preds = %middle.block113
  %min.epilog.iters.check120 = icmp eq i64 %i.kr, 0
  br i1 %min.epilog.iters.check120, label %vec.epilog.scalar.ph118.preheader, label %vec.epilog.ph121, !prof !86

vec.epilog.ph121:                                 ; preds = %vector.main.loop.iter.check104, %vec.epilog.iter.check119
  %vec.epilog.resume.val115 = phi i64 [ %n.vec107, %vec.epilog.iter.check119 ], [ 0, %vector.main.loop.iter.check104 ]
  %n.vec122 = and i64 %i.kq, -4                   ; 3 uses
  %i.kv = add nsw i64 %n.vec122, %i.ko
  %broadcast.splatinsert123 = insertelement <4 x i16> poison, i16 %i.km, i64 0
  %broadcast.splat124 = shufflevector <4 x i16> %broadcast.splatinsert123, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep196 = getelementptr [2 x i8], ptr %i.kn, i64 %i.ko
  br label %vec.epilog.vector.body125

vec.epilog.vector.body125:                        ; preds = %vec.epilog.vector.body125, %vec.epilog.ph121
  %index126 = phi i64 [ %vec.epilog.resume.val115, %vec.epilog.ph121 ], [ %index.next127, %vec.epilog.vector.body125 ] ; 2 uses
  %gep197 = getelementptr [2 x i8], ptr %invariant.gep196, i64 %index126
  store <4 x i16> %broadcast.splat124, ptr %gep197, align 2, !tbaa !38
  %index.next127 = add nuw i64 %index126, 4       ; 2 uses
  %i.kw = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.kw, label %vec.epilog.middle.block128, label %vec.epilog.vector.body125, !llvm.loop !64

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body125
  %cmp.n129 = icmp eq i64 %i.kq, %n.vec122
  br i1 %cmp.n129, label %.loopexit.1.i, label %vec.epilog.scalar.ph118.preheader

vec.epilog.scalar.ph118.preheader:                ; preds = %iter.check117, %vec.epilog.iter.check119, %vec.epilog.middle.block128
  %indvars.iv124.1.i.ph = phi i64 [ %i.ko, %iter.check117 ], [ %i.ks, %vec.epilog.iter.check119 ], [ %i.kv, %vec.epilog.middle.block128 ]
  br label %vec.epilog.scalar.ph118

vec.epilog.scalar.ph118:                          ; preds = %vec.epilog.scalar.ph118.preheader, %vec.epilog.scalar.ph118
  %indvars.iv124.1.i = phi i64 [ %indvars.iv.next125.1.i, %vec.epilog.scalar.ph118 ], [ %indvars.iv124.1.i.ph, %vec.epilog.scalar.ph118.preheader ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %indvars.iv124.1.i
  store i16 %i.km, ptr %i.kx, align 2, !tbaa !38
  %indvars.iv.next125.1.i = add nuw nsw i64 %indvars.iv124.1.i, 1
  %exitcond128.1.not.i = icmp eq i64 %indvars.iv124.1.i, %i.kl
  br i1 %exitcond128.1.not.i, label %.loopexit.1.i, label %vec.epilog.scalar.ph118, !llvm.loop !65

.loopexit.1.i:                                    ; preds = %scalar.ph77, %vec.epilog.scalar.ph118, %middle.block99, %middle.block113, %vec.epilog.middle.block128, %bb.j, %bb.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !41
  %i.la = sitofp nsz i32 %i.kz to float
  %i.lb = load i16, ptr %i.dy, align 8, !tbaa !40 ; 6 uses
  %i.lc = uitofp i16 %i.lb to float
  %i.ld = fmul nsz float %i.ih, %i.lc
  %i.le = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lf = insertelement <2 x float> %i.le, float %i.la, i64 1
  %i.lg = insertelement <2 x float> %i.fx, float %i.ld, i64 1
  %i.lh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lf, <2 x float> %i.fh, <2 x float> %i.lg) ; 7 uses
  store <2 x float> %i.lh, ptr %i.ec, align 4, !tbaa !81
  %i.li = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !41
  %i.lk = sitofp nsz i32 %i.lj to float
  %i.ll = uitofp i16 %i.ee to float
  %i.lm = fmul nsz float %i.ih, %i.ll
  %i.ln = insertelement <2 x float> %i.eu, float %i.lk, i64 1
  %i.lo = insertelement <2 x float> %i.gd, float %i.lm, i64 1
  %i.lp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.fh, <2 x float> %i.lo) ; 3 uses
  store <2 x float> %i.lp, ptr %i.eh, align 4, !tbaa !81
  %i.lq = extractelement <2 x float> %i.lh, i64 0 ; 2 uses
  %i.lr = extractelement <2 x float> %i.lp, i64 0
  %i.ls = fcmp nsz oeq float %i.lq, %i.lr
  br i1 %i.ls, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit.1.i
  %i.lt = fsub nsz <2 x float> %i.lp, %i.lh       ; 2 uses
  %i.lu = extractelement <2 x float> %i.lt, i64 0
  %i.lv = extractelement <2 x float> %i.lt, i64 1
  %i.lw = fdiv nsz float %i.lv, %i.lu             ; 2 uses
  %.not108114.2.i = icmp ugt i16 %i.lb, %i.ee
  br i1 %.not108114.2.i, label %normalize.exit, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %bb.k
  %i.lx = load i32, ptr %i.fj, align 8, !tbaa !43
  %notmask.i.2.i = shl nsw i32 -1, %i.lx          ; 3 uses
  %i.ly = xor i32 %notmask.i.2.i, -1              ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.i, i64 262336 ; 2 uses
  %i.ma = zext i16 %i.lb to i64                   ; 4 uses
  %i.mb = add nuw nsw i64 %i.en, 1
  %i.mc = sub nsw i64 %i.mb, %i.ma                ; 3 uses
  %min.iters.check132 = icmp ult i64 %i.mc, 8
  br i1 %min.iters.check132, label %scalar.ph131.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.2.i
  %n.vec134 = and i64 %i.mc, -8                   ; 3 uses
  %i.md = add nsw i64 %n.vec134, %i.ma
  %broadcast.splatinsert135 = insertelement <8 x i32> poison, i32 %notmask.i.2.i, i64 0
  %broadcast.splat136 = shufflevector <8 x i32> %broadcast.splatinsert135, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <8 x i32> poison, i32 %i.ly, i64 0
  %broadcast.splat138 = shufflevector <8 x i32> %broadcast.splatinsert137, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat140 = shufflevector <2 x float> %i.lh, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <8 x float> poison, float %i.lw, i64 0
  %broadcast.splat142 = shufflevector <8 x float> %broadcast.splatinsert141, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat144 = shufflevector <2 x float> %i.lh, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.me = zext i16 %i.lb to i32
  %broadcast.splatinsert145 = insertelement <8 x i32> poison, i32 %i.me, i64 0
  %broadcast.splat146 = shufflevector <8 x i32> %broadcast.splatinsert145, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction147 = add nuw nsw <8 x i32> %broadcast.splat146, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep198 = getelementptr [2 x i8], ptr %i.lz, i64 %i.ma
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph133
  %index149 = phi i64 [ 0, %vector.ph133 ], [ %index.next151, %vector.body148 ] ; 2 uses
  %vec.ind150 = phi <8 x i32> [ %induction147, %vector.ph133 ], [ %vec.ind.next152, %vector.body148 ] ; 2 uses
  %i.mf = uitofp nneg <8 x i32> %vec.ind150 to <8 x float>
  %i.mg = fsub nsz <8 x float> %i.mf, %broadcast.splat140
  %i.mh = call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mg, <8 x float> %broadcast.splat142, <8 x float> %broadcast.splat144)
  %i.mi = fadd nsz <8 x float> %i.mh, splat (float 5.000000e-01)
  %i.mj = fptosi <8 x float> %i.mi to <8 x i32>   ; 3 uses
  %i.mk = and <8 x i32> %broadcast.splat136, %i.mj
  %i.ml = icmp eq <8 x i32> %i.mk, zeroinitializer
  %i.mm = icmp slt <8 x i32> %i.mj, zeroinitializer
  %i.mn = select <8 x i1> %i.mm, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat138
  %i.mo = select <8 x i1> %i.ml, <8 x i32> %i.mj, <8 x i32> %i.mn
  %i.mp = trunc <8 x i32> %i.mo to <8 x i16>
  %gep199 = getelementptr [2 x i8], ptr %invariant.gep198, i64 %index149
  store <8 x i16> %i.mp, ptr %gep199, align 2, !tbaa !38
  %index.next151 = add nuw i64 %index149, 8       ; 2 uses
  %vec.ind.next152 = add <8 x i32> %vec.ind150, splat (i32 8)
  %i.mq = icmp eq i64 %index.next151, %n.vec134
  br i1 %i.mq, label %middle.block153, label %vector.body148, !llvm.loop !66

middle.block153:                                  ; preds = %vector.body148
  %cmp.n154 = icmp eq i64 %i.mc, %n.vec134
  br i1 %cmp.n154, label %normalize.exit, label %scalar.ph131.preheader

scalar.ph131.preheader:                           ; preds = %.lr.ph.2.i, %middle.block153
  %indvars.iv.2.i.ph = phi i64 [ %i.ma, %.lr.ph.2.i ], [ %i.md, %middle.block153 ]
  %i.mr = extractelement <2 x float> %i.lh, i64 1
  br label %scalar.ph131

scalar.ph131:                                     ; preds = %scalar.ph131.preheader, %scalar.ph131
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %scalar.ph131 ], [ %indvars.iv.2.i.ph, %scalar.ph131.preheader ] ; 4 uses
  %i.ms = trunc nuw nsw i64 %indvars.iv.2.i to i32
  %i.mt = uitofp nneg i32 %i.ms to float
  %i.mu = fsub nsz float %i.mt, %i.lq
  %i.mv = call nsz float @llvm.fmuladd.f32(float %i.mu, float %i.lw, float %i.mr)
  %i.mw = fadd nsz float %i.mv, 5.000000e-01
  %i.mx = fptosi float %i.mw to i32               ; 3 uses
  %i.my = and i32 %notmask.i.2.i, %i.mx
  %.not.i.2.i = icmp eq i32 %i.my, 0
  %isnotneg.inv.i.2.i = icmp slt i32 %i.mx, 0
  %i.mz = select i1 %isnotneg.inv.i.2.i, i32 0, i32 %i.ly
  %.0.i.2.i = select i1 %.not.i.2.i, i32 %i.mx, i32 %i.mz
  %i.na = trunc i32 %.0.i.2.i to i16
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv.2.i
  store i16 %i.na, ptr %i.nb, align 2, !tbaa !38
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.2.i, %i.en
  br i1 %exitcond.2.not.i, label %normalize.exit, label %scalar.ph131, !llvm.loop !67

bb.l:                                             ; preds = %.loopexit.1.i
  %.not109116.2.i = icmp ugt i16 %i.lb, %i.ee
  br i1 %.not109116.2.i, label %normalize.exit, label %iter.check171

iter.check171:                                    ; preds = %bb.l
  %i.nc = extractelement <2 x float> %i.lh, i64 1
  %i.nd = fptoui float %i.nc to i16               ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.i, i64 262336 ; 3 uses
  %i.nf = zext i16 %i.lb to i64                   ; 6 uses
  %i.ng = add nuw nsw i64 %i.en, 1
  %i.nh = sub nsw i64 %i.ng, %i.nf                ; 7 uses
  %min.iters.check157 = icmp ult i64 %i.nh, 4
  br i1 %min.iters.check157, label %vec.epilog.scalar.ph172.preheader, label %vector.main.loop.iter.check158

vector.main.loop.iter.check158:                   ; preds = %iter.check171
  %min.iters.check159 = icmp ult i64 %i.nh, 16
  br i1 %min.iters.check159, label %vec.epilog.ph175, label %vector.ph160

vector.ph160:                                     ; preds = %vector.main.loop.iter.check158
  %i.ni = and i64 %i.nh, 12
  %n.vec161 = and i64 %i.nh, -16                  ; 4 uses
  %i.nj = add nsw i64 %n.vec161, %i.nf
  %broadcast.splatinsert162 = insertelement <8 x i16> poison, i16 %i.nd, i64 0
  %broadcast.splat163 = shufflevector <8 x i16> %broadcast.splatinsert162, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep200 = getelementptr [2 x i8], ptr %i.ne, i64 %i.nf
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph160
  %index165 = phi i64 [ 0, %vector.ph160 ], [ %index.next166, %vector.body164 ] ; 2 uses
  %gep201 = getelementptr [2 x i8], ptr %invariant.gep200, i64 %index165 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %gep201, i64 16
  store <8 x i16> %broadcast.splat163, ptr %gep201, align 2, !tbaa !38
  store <8 x i16> %broadcast.splat163, ptr %i.nk, align 2, !tbaa !38
  %index.next166 = add nuw i64 %index165, 16      ; 2 uses
  %i.nl = icmp eq i64 %index.next166, %n.vec161
  br i1 %i.nl, label %middle.block167, label %vector.body164, !llvm.loop !68

middle.block167:                                  ; preds = %vector.body164
  %cmp.n168 = icmp eq i64 %i.nh, %n.vec161
  br i1 %cmp.n168, label %normalize.exit, label %vec.epilog.iter.check173

vec.epilog.iter.check173:                         ; preds = %middle.block167
  %min.epilog.iters.check174 = icmp eq i64 %i.ni, 0
  br i1 %min.epilog.iters.check174, label %vec.epilog.scalar.ph172.preheader, label %vec.epilog.ph175, !prof !86

vec.epilog.ph175:                                 ; preds = %vector.main.loop.iter.check158, %vec.epilog.iter.check173
  %vec.epilog.resume.val169 = phi i64 [ %n.vec161, %vec.epilog.iter.check173 ], [ 0, %vector.main.loop.iter.check158 ]
  %n.vec176 = and i64 %i.nh, -4                   ; 3 uses
  %i.nm = add nsw i64 %n.vec176, %i.nf
  %broadcast.splatinsert177 = insertelement <4 x i16> poison, i16 %i.nd, i64 0
  %broadcast.splat178 = shufflevector <4 x i16> %broadcast.splatinsert177, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep202 = getelementptr [2 x i8], ptr %i.ne, i64 %i.nf
  br label %vec.epilog.vector.body179

vec.epilog.vector.body179:                        ; preds = %vec.epilog.vector.body179, %vec.epilog.ph175
  %index180 = phi i64 [ %vec.epilog.resume.val169, %vec.epilog.ph175 ], [ %index.next181, %vec.epilog.vector.body179 ] ; 2 uses
  %gep203 = getelementptr [2 x i8], ptr %invariant.gep202, i64 %index180
  store <4 x i16> %broadcast.splat178, ptr %gep203, align 2, !tbaa !38
  %index.next181 = add nuw i64 %index180, 4       ; 2 uses
  %i.nn = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.nn, label %vec.epilog.middle.block182, label %vec.epilog.vector.body179, !llvm.loop !69

vec.epilog.middle.block182:                       ; preds = %vec.epilog.vector.body179
  %cmp.n183 = icmp eq i64 %i.nh, %n.vec176
  br i1 %cmp.n183, label %normalize.exit, label %vec.epilog.scalar.ph172.preheader

vec.epilog.scalar.ph172.preheader:                ; preds = %iter.check171, %vec.epilog.iter.check173, %vec.epilog.middle.block182
  %indvars.iv124.2.i.ph = phi i64 [ %i.nf, %iter.check171 ], [ %i.nj, %vec.epilog.iter.check173 ], [ %i.nm, %vec.epilog.middle.block182 ]
  br label %vec.epilog.scalar.ph172

vec.epilog.scalar.ph172:                          ; preds = %vec.epilog.scalar.ph172.preheader, %vec.epilog.scalar.ph172
  %indvars.iv124.2.i = phi i64 [ %indvars.iv.next125.2.i, %vec.epilog.scalar.ph172 ], [ %indvars.iv124.2.i.ph, %vec.epilog.scalar.ph172.preheader ] ; 3 uses
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %indvars.iv124.2.i
  store i16 %i.nd, ptr %i.no, align 2, !tbaa !38
  %indvars.iv.next125.2.i = add nuw nsw i64 %indvars.iv124.2.i, 1
  %exitcond128.2.not.i = icmp eq i64 %indvars.iv124.2.i, %i.en
  br i1 %exitcond128.2.not.i, label %normalize.exit, label %vec.epilog.scalar.ph172, !llvm.loop !70

normalize.exit:                                   ; preds = %scalar.ph131, %vec.epilog.scalar.ph172, %middle.block153, %middle.block167, %vec.epilog.middle.block182, %bb.k, %bb.l
  %i.np = getelementptr inbounds nuw i8, ptr %i.i, i64 393416
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !44
  call void %i.nq(ptr noundef nonnull %i.i, ptr noundef %1, ptr noundef %i.s) #8, !inline_history !55
  %i.nr = load i32, ptr %i.w, align 8, !tbaa !79
  %i.ns = add nsw i32 %i.nr, 1
  store i32 %i.ns, ptr %i.w, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !76
  %.not16 = icmp eq i32 %i.nu, 0
  br i1 %.not16, label %bb.n, label %bb.m

bb.m:                                             ; preds = %normalize.exit
  call void @av_frame_free(ptr noundef nonnull %i.b) #8
  %i.nv = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.nw = call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef %i.nv) #8
  br label %bb.q

bb.n:                                             ; preds = %normalize.exit
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.nx = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.ny = call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef %i.nx) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.d
  %.0 = phi i32 [ %i.nw, %bb.m ], [ %i.ny, %bb.p ], [ -12, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 27 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !87
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.i = load i32, ptr %i.e, align 4, !tbaa !87
  %i.j = tail call i32 @ff_fill_rgba_map(ptr noundef nonnull %i.h, i32 noundef %i.i) #8 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !89   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !91
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.p, ptr %i.q, align 4, !tbaa !45
  %i.r = tail call i32 @av_get_padded_bits_per_pixel(ptr noundef %i.g) #8
  %i.s = load i32, ptr %i.m, align 8, !tbaa !43
  %i.t = icmp sgt i32 %i.s, 8
  %i.u = select i1 %i.t, i32 4, i32 3
  %i.v = ashr i32 %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.v, ptr %i.w, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !92
  %i.z = add nsw i32 %i.y, 1                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 76 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !33
  %i.ab = mul nsw i32 %i.z, 6
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 1
  %i.ae = tail call noalias ptr @av_malloc(i64 noundef %i.ad) #8 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !93
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.ah = add nsw i32 %i.l, -8                    ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.al = load i32, ptr %i.m, align 8, !tbaa !43  ; 2 uses
  %i.am = add nsw i32 %i.al, -8
  %i.an = shl nuw i32 1, %i.am                    ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !33 ; 5 uses
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !36
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.as
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !36
  %i.au = load i8, ptr %i.ak, align 8, !tbaa !47
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = shl i32 %i.av, %i.ah
  %i.ax = and i32 %i.an, %i.av
  %i.ay = add nsw i32 %i.ax, %i.aw
  store i32 %i.ay, ptr %i.ao, align 4, !tbaa !41
  %i.az = load i8, ptr %i.ap, align 4, !tbaa !47
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = shl i32 %i.ba, %i.ah
  %i.bc = and i32 %i.an, %i.ba
  %i.bd = add nsw i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %i.aq, align 4, !tbaa !41
  %i.be = shl nsw i32 %i.ar, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !36
  %i.bi = mul nsw i32 %i.ar, 3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !47
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = shl i32 %i.bo, %i.ah
  %i.bq = and i32 %i.an, %i.bo
  %i.br = add nsw i32 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !47
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = shl i32 %i.bv, %i.ah
  %i.bx = and i32 %i.an, %i.bv
  %i.by = add nsw i32 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !41
  %i.ca = shl nsw i32 %i.ar, 2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !36
  %i.ce = mul nsw i32 %i.ar, 5
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.cj = load i8, ptr %i.ci, align 2, !tbaa !47
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = shl i32 %i.ck, %i.ah
  %i.cm = and i32 %i.an, %i.ck
  %i.cn = add nsw i32 %i.cm, %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !47
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %i.cs = shl i32 %i.cr, %i.ah
  %i.ct = and i32 %i.an, %i.cr
  %i.cu = add nsw i32 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !94
  %i.cy = icmp slt i32 %i.al, 9
  %i.cz = and i64 %i.cx, 16
  %.not56 = icmp eq i64 %i.cz, 0                  ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 393408 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 393416
  br i1 %i.cy, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.dc = select i1 %.not56, ptr @find_min_max, ptr @find_min_max_planar
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !32
  %i.dd = select i1 %.not56, ptr @process, ptr @process_planar
  br label %.sink.split

bb.c:                                             ; preds = %.preheader
  %i.de = select i1 %.not56, ptr @find_min_max_16, ptr @find_min_max_planar_16
  store ptr %i.de, ptr %i.da, align 8, !tbaa !32
  %i.df = select i1 %.not56, ptr @process_16, ptr @process_planar_16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.dd, %bb.b ], [ %i.df, %bb.c ]
  store ptr %.sink, ptr %i.db, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.055 = phi i32 [ -12, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.055
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #1

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @av_frame_free(ptr noundef) local_unnamed_addr #1

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_get_padded_bits_per_pixel(ptr noundef) local_unnamed_addr #1

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @find_min_max_planar(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 2), (12, 14), (24, 26)) %2, ptr nofree noundef captures(none) initializes((0, 2), (12, 14), (24, 26)) %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !47
  %i.d = zext i8 %i.c to i16                      ; 2 uses
  store i16 %i.d, ptr %3, align 4, !tbaa !40
  store i16 %i.d, ptr %2, align 4, !tbaa !40
  %i.e = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !47
  %i.g = zext i8 %i.f to i16                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i16 %i.g, ptr %i.h, align 4, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i16 %i.g, ptr %i.i, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !47
  %i.m = zext i8 %i.l to i16                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i16 %i.m, ptr %i.n, align 4, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i16 %i.m, ptr %i.o, align 4, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.q = load i32, ptr %i.p, align 4, !tbaa !53   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph81, label %._crit_edge82.split

.lr.ph81:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = load i32, ptr %i.s, align 8, !tbaa !54   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge82.split

.lr.ph.preheader:                                 ; preds = %.lr.ph81
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !41
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sext i32 %i.y to i64
  %i.ad = sext i32 %i.w to i64
  %wide.trip.count87 = zext nneg i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %i.t to i64
  br label %.lr.ph

._crit_edge82.split:                              ; preds = %._crit_edge, %.lr.ph81, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv84 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next85, %._crit_edge ] ; 4 uses
  %i.ae = mul nsw i64 %indvars.iv84, %i.ab
  %i.af = getelementptr inbounds i8, ptr %i.b, i64 %i.ae
  %i.ag = mul nsw i64 %indvars.iv84, %i.ac
  %i.ah = getelementptr inbounds i8, ptr %i.e, i64 %i.ag
  %i.ai = mul nsw i64 %indvars.iv84, %i.ad
  %i.aj = getelementptr inbounds i8, ptr %i.k, i64 %i.ai
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge82.split, label %.lr.ph, !llvm.loop !95

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.ak = load i16, ptr %2, align 4, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !47
  %i.an = zext i8 %i.am to i16
  %i.ao = tail call i16 @llvm.umin.i16(i16 %i.ak, i16 %i.an)
  store i16 %i.ao, ptr %2, align 4, !tbaa !40
  %i.ap = load i16, ptr %3, align 4, !tbaa !40
  %i.aq = load i8, ptr %i.al, align 1, !tbaa !47
  %i.ar = zext i8 %i.aq to i16
  %i.as = tail call i16 @llvm.umax.i16(i16 %i.ap, i16 %i.ar)
  store i16 %i.as, ptr %3, align 4, !tbaa !40
  %i.at = load i16, ptr %i.i, align 4, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !47
  %i.aw = zext i8 %i.av to i16
  %i.ax = tail call i16 @llvm.umin.i16(i16 %i.at, i16 %i.aw)
  store i16 %i.ax, ptr %i.i, align 4, !tbaa !40
  %i.ay = load i16, ptr %i.h, align 4, !tbaa !40
  %i.az = load i8, ptr %i.au, align 1, !tbaa !47
  %i.ba = zext i8 %i.az to i16
  %i.bb = tail call i16 @llvm.umax.i16(i16 %i.ay, i16 %i.ba)
  store i16 %i.bb, ptr %i.h, align 4, !tbaa !40
  %i.bc = load i16, ptr %i.o, align 4, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !47
  %i.bf = zext i8 %i.be to i16
  %i.bg = tail call i16 @llvm.umin.i16(i16 %i.bc, i16 %i.bf)
  store i16 %i.bg, ptr %i.o, align 4, !tbaa !40
  %i.bh = load i16, ptr %i.n, align 4, !tbaa !40
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !47
  %i.bj = zext i8 %i.bi to i16
  %i.bk = tail call i16 @llvm.umax.i16(i16 %i.bh, i16 %i.bj)
  store i16 %i.bk, ptr %i.n, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !96
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @find_min_max(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 2), (12, 14), (24, 26)) %2, ptr nofree noundef captures(none) initializes((0, 2), (12, 14), (24, 26)) %3) #5 {
.preheader53:
  %i.a = load ptr, ptr %1, align 8, !tbaa !48     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !47
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !47
  %i.g = zext i8 %i.f to i16                      ; 2 uses
  store i16 %i.g, ptr %3, align 4, !tbaa !40
  store i16 %i.g, ptr %2, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !47
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !47
  %i.m = zext i8 %i.l to i16                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i16 %i.m, ptr %i.n, align 4, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i16 %i.m, ptr %i.o, align 4, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !47
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !47
  %i.u = zext i8 %i.t to i16                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i16 %i.u, ptr %i.v, align 4, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i16 %i.u, ptr %i.w, align 4, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge59.split

.lr.ph:                                           ; preds = %.preheader53
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.split, label %._crit_edge59.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !46
  %i.ah = sext i32 %i.ag to i64
  %i.ai = sext i32 %i.ae to i64
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %.preheader.lr.ph

._crit_edge59.split:                              ; preds = %._crit_edge, %.lr.ph, %.preheader53
  ret void

.preheader.lr.ph:                                 ; preds = %.lr.ph.split, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.aj = mul nsw i64 %indvars.iv, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %i.aj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04557 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cc, %.preheader ]
  %.04656 = phi ptr [ %i.ak, %.preheader.lr.ph ], [ %i.cb, %.preheader ] ; 7 uses
  %i.al = load i16, ptr %2, align 4, !tbaa !40
  %i.am = load i8, ptr %i.b, align 4, !tbaa !47
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.04656, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !47
  %i.aq = zext i8 %i.ap to i16
  %i.ar = tail call i16 @llvm.umin.i16(i16 %i.al, i16 %i.aq)
  store i16 %i.ar, ptr %2, align 4, !tbaa !40
  %i.as = load i16, ptr %3, align 4, !tbaa !40
  %i.at = load i8, ptr %i.b, align 4, !tbaa !47
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.04656, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !47
  %i.ax = zext i8 %i.aw to i16
  %i.ay = tail call i16 @llvm.umax.i16(i16 %i.as, i16 %i.ax)
  store i16 %i.ay, ptr %3, align 4, !tbaa !40
  %i.az = load i16, ptr %i.o, align 4, !tbaa !40
  %i.ba = load i8, ptr %i.h, align 1, !tbaa !47
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.04656, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !47
  %i.be = zext i8 %i.bd to i16
  %i.bf = tail call i16 @llvm.umin.i16(i16 %i.az, i16 %i.be)
  store i16 %i.bf, ptr %i.o, align 4, !tbaa !40
  %i.bg = load i16, ptr %i.n, align 4, !tbaa !40
  %i.bh = load i8, ptr %i.h, align 1, !tbaa !47
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.04656, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !47
  %i.bl = zext i8 %i.bk to i16
  %i.bm = tail call i16 @llvm.umax.i16(i16 %i.bg, i16 %i.bl)
  store i16 %i.bm, ptr %i.n, align 4, !tbaa !40
  %i.bn = load i16, ptr %i.w, align 4, !tbaa !40
  %i.bo = load i8, ptr %i.p, align 2, !tbaa !47
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.04656, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !47
  %i.bs = zext i8 %i.br to i16
  %i.bt = tail call i16 @llvm.umin.i16(i16 %i.bn, i16 %i.bs)
  store i16 %i.bt, ptr %i.w, align 4, !tbaa !40
  %i.bu = load i16, ptr %i.v, align 4, !tbaa !40
  %i.bv = load i8, ptr %i.p, align 2, !tbaa !47
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.04656, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !47
  %i.bz = zext i8 %i.by to i16
  %i.ca = tail call i16 @llvm.umax.i16(i16 %i.bu, i16 %i.bz)
  store i16 %i.ca, ptr %i.v, align 4, !tbaa !40
  %i.cb = getelementptr inbounds i8, ptr %.04656, i64 %i.ah
  %i.cc = add nuw nsw i32 %.04557, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cc, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !97

._crit_edge:                                      ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond63.not, label %._crit_edge59.split, label %.preheader.lr.ph, !llvm.loop !98
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @process_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !53   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 131264
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 262336
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.w = load i32, ptr %i.r, align 8, !tbaa !54
  br label %.lr.ph53.split

._crit_edge54:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph53.split:                                   ; preds = %.lr.ph53, %._crit_edge
  %i.x = phi i32 [ %i.b, %.lr.ph53 ], [ %i.bo, %._crit_edge ]
  %i.y = phi i32 [ %i.w, %.lr.ph53 ], [ %i.bp, %._crit_edge ] ; 2 uses
  %.04951 = phi i32 [ 0, %.lr.ph53 ], [ %i.bq, %._crit_edge ] ; 9 uses
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !41
  %i.ab = mul nsw i32 %i.aa, %.04951
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = load ptr, ptr %1, align 8, !tbaa !48
  %i.af = load i32, ptr %i.e, align 8, !tbaa !41
  %i.ag = mul nsw i32 %i.af, %.04951
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !41
  %i.al = mul nsw i32 %i.ak, %.04951
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.ap = load i32, ptr %i.j, align 4, !tbaa !41
  %i.aq = mul nsw i32 %i.ap, %.04951
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.au = load i32, ptr %i.m, align 8, !tbaa !41
  %i.av = mul nsw i32 %i.au, %.04951
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = load ptr, ptr %2, align 8, !tbaa !48
  %i.az = load i32, ptr %i.l, align 8, !tbaa !41
  %i.ba = mul nsw i32 %i.az, %.04951
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.be = load i32, ptr %i.o, align 4, !tbaa !41
  %i.bf = mul nsw i32 %i.be, %.04951
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.bj = load i32, ptr %i.q, align 4, !tbaa !41
  %i.bk = mul nsw i32 %i.bj, %.04951
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %i.bl
  %i.bn = icmp sgt i32 %i.y, 0
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph53.split
  %i.bo = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.x, %.lr.ph53.split ] ; 2 uses
  %i.bp = phi i32 [ %i.cs, %._crit_edge.loopexit ], [ %i.y, %.lr.ph53.split ]
  %i.bq = add nuw nsw i32 %.04951, 1              ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.bo
  br i1 %i.br, label %.lr.ph53.split, label %._crit_edge54, !llvm.loop !99

.lr.ph:                                           ; preds = %.lr.ph53.split, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph53.split ] ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !47
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !38
  %i.bx = trunc i16 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !47
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !47
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !38
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !47
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !38
  %i.cl = trunc i16 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !47
  %i.cn = load i32, ptr %i.v, align 4, !tbaa !45
  %i.co = icmp eq i32 %i.cn, 4
  br i1 %i.co, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !47
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = load i32, ptr %i.r, align 8, !tbaa !54  ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next, %i.ct
  br i1 %i.cu, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !100
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @process(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !53   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge40

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i32, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.split.preheader, label %._crit_edge40

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 131264
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 262336
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 30
  br label %.lr.ph.split

._crit_edge40:                                    ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.r = phi i32 [ %i.bh, %._crit_edge ], [ %i.b, %.lr.ph.split.preheader ]
  %i.s = phi i32 [ %i.bi, %._crit_edge ], [ %i.l, %.lr.ph.split.preheader ] ; 2 uses
  %.03338 = phi i32 [ %i.bj, %._crit_edge ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.u = load ptr, ptr %2, align 8, !tbaa !48
  %i.v = load i32, ptr %i.e, align 8, !tbaa !41
  %i.w = mul nsw i32 %i.v, %.03338
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = load ptr, ptr %1, align 8, !tbaa !48
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !41
  %i.ab = mul nsw i32 %i.aa, %.03338
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.c
  %.03037 = phi i32 [ %i.bu, %bb.c ], [ 0, %.preheader.preheader ]
  %.03136 = phi ptr [ %i.bt, %bb.c ], [ %i.y, %.preheader.preheader ] ; 5 uses
  %.03235 = phi ptr [ %i.bs, %bb.c ], [ %i.ad, %.preheader.preheader ] ; 5 uses
  %i.ae = load i8, ptr %i.h, align 1, !tbaa !47
  %i.af = zext i8 %i.ae to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03235, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !47
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !38
  %i.al = trunc i16 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.03136, i64 %i.af
  store i8 %i.al, ptr %i.am, align 1, !tbaa !47
  %i.an = load i8, ptr %i.o, align 1, !tbaa !47
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03235, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !47
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !38
  %i.au = trunc i16 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.03136, i64 %i.ao
  store i8 %i.au, ptr %i.av, align 1, !tbaa !47
  %i.aw = load i8, ptr %i.q, align 1, !tbaa !47
  %i.ax = zext i8 %i.aw to i64                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.03235, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !47
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !38
  %i.bd = trunc i16 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.03136, i64 %i.ax
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !47
  %i.bf = load i32, ptr %i.i, align 4, !tbaa !45
  %i.bg = icmp eq i32 %i.bf, 4
  br i1 %i.bg, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.r, %.lr.ph.split ] ; 2 uses
  %i.bi = phi i32 [ %i.bv, %._crit_edge.loopexit ], [ %i.s, %.lr.ph.split ]
  %i.bj = add nuw nsw i32 %.03338, 1              ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.bh
  br i1 %i.bk, label %.lr.ph.split, label %._crit_edge40, !llvm.loop !101

bb.b:                                             ; preds = %.preheader
  %i.bl = load i8, ptr %i.j, align 1, !tbaa !47
  %i.bm = zext i8 %i.bl to i64                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03235, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %.03136, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.bq = load i32, ptr %i.k, align 8, !tbaa !46
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.03235, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %.03136, i64 %i.br
  %i.bu = add nuw nsw i32 %.03037, 1              ; 2 uses
  %i.bv = load i32, ptr %i.f, align 8, !tbaa !54  ; 2 uses
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !102
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @find_min_max_planar_16(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 2), (12, 14), (24, 26)) %2, ptr nofree noundef captures(none) initializes((0, 2), (12, 14), (24, 26)) %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = load i16, ptr %i.b, align 1, !tbaa !47   ; 2 uses
  store i16 %i.c, ptr %3, align 4, !tbaa !40
  store i16 %i.c, ptr %2, align 4, !tbaa !40
  %i.d = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.e = load i16, ptr %i.d, align 1, !tbaa !47   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i16 %i.e, ptr %i.f, align 4, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i16 %i.e, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.j = load i16, ptr %i.i, align 1, !tbaa !47   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i16 %i.j, ptr %i.k, align 4, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i16 %i.j, ptr %i.l, align 4, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph86, label %._crit_edge87.split

.lr.ph86:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = load i32, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge87.split

.lr.ph.preheader:                                 ; preds = %.lr.ph86
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = sext i32 %i.x to i64
  %i.z = sext i32 %i.v to i64
  %i.aa = sext i32 %i.t to i64
  %wide.trip.count92 = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %.lr.ph

._crit_edge87.split:                              ; preds = %._crit_edge, %.lr.ph86, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv89 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next90, %._crit_edge ] ; 4 uses
  %i.ab = mul nsw i64 %indvars.iv89, %i.y
  %i.ac = getelementptr inbounds i8, ptr %i.b, i64 %i.ab
  %i.ad = mul nsw i64 %indvars.iv89, %i.z
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 %i.ad
  %i.af = mul nsw i64 %indvars.iv89, %i.aa
  %i.ag = getelementptr inbounds i8, ptr %i.i, i64 %i.af
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %._crit_edge87.split, label %.lr.ph, !llvm.loop !104

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.ah = load i16, ptr %2, align 4, !tbaa !40
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !38
  %. = tail call i16 @llvm.umin.i16(i16 %i.ah, i16 %i.aj)
  store i16 %., ptr %2, align 4, !tbaa !40
  %i.ak = load i16, ptr %3, align 4, !tbaa !40
  %i.al = load i16, ptr %i.ai, align 2, !tbaa !38
  %.in78 = tail call i16 @llvm.umax.i16(i16 %i.ak, i16 %i.al)
  store i16 %.in78, ptr %3, align 4, !tbaa !40
  %i.am = load i16, ptr %i.g, align 4, !tbaa !40
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !38
  %.in79 = tail call i16 @llvm.umin.i16(i16 %i.am, i16 %i.ao)
  store i16 %.in79, ptr %i.g, align 4, !tbaa !40
  %i.ap = load i16, ptr %i.f, align 4, !tbaa !40
  %i.aq = load i16, ptr %i.an, align 2, !tbaa !38
  %.in80 = tail call i16 @llvm.umax.i16(i16 %i.ap, i16 %i.aq)
  store i16 %.in80, ptr %i.f, align 4, !tbaa !40
  %i.ar = load i16, ptr %i.l, align 4, !tbaa !40
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !38
  %.in81 = tail call i16 @llvm.umin.i16(i16 %i.ar, i16 %i.at)
  store i16 %.in81, ptr %i.l, align 4, !tbaa !40
  %i.au = load i16, ptr %i.k, align 4, !tbaa !40
  %i.av = load i16, ptr %i.as, align 2, !tbaa !38
  %.in82 = tail call i16 @llvm.umax.i16(i16 %i.au, i16 %i.av)
  store i16 %.in82, ptr %i.k, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !105
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @find_min_max_16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 2), (12, 14), (24, 26)) %2, ptr nofree noundef captures(none) initializes((0, 2), (12, 14), (24, 26)) %3) #5 {
.preheader54:
  %i.a = load ptr, ptr %1, align 8, !tbaa !48     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !47
  %i.d = zext i8 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  %i.g = load i16, ptr %i.f, align 1, !tbaa !47   ; 2 uses
  store i16 %i.g, ptr %3, align 4, !tbaa !40
  store i16 %i.g, ptr %2, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !47
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  %i.m = load i16, ptr %i.l, align 1, !tbaa !47   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i16 %i.m, ptr %i.n, align 4, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i16 %i.m, ptr %i.o, align 4, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !47
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s
  %i.u = load i16, ptr %i.t, align 1, !tbaa !47   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i16 %i.u, ptr %i.v, align 4, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i16 %i.u, ptr %i.w, align 4, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge60.split

.lr.ph:                                           ; preds = %.preheader54
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.split, label %._crit_edge60.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !46
  %i.ah = sext i32 %i.ag to i64
  %i.ai = sext i32 %i.ae to i64
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %.preheader.lr.ph

._crit_edge60.split:                              ; preds = %._crit_edge, %.lr.ph, %.preheader54
  ret void

.preheader.lr.ph:                                 ; preds = %.lr.ph.split, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.aj = mul nsw i64 %indvars.iv, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %i.aj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04558 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bq, %.preheader ]
  %.04657 = phi ptr [ %i.ak, %.preheader.lr.ph ], [ %i.bp, %.preheader ] ; 7 uses
  %i.al = load i16, ptr %2, align 4, !tbaa !40
  %i.am = load i8, ptr %i.b, align 4, !tbaa !47
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.04657, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !38
  %. = tail call i16 @llvm.umin.i16(i16 %i.al, i16 %i.ap)
  store i16 %., ptr %2, align 4, !tbaa !40
  %i.aq = load i16, ptr %3, align 4, !tbaa !40
  %i.ar = load i8, ptr %i.b, align 4, !tbaa !47
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.04657, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !38
  %.in53 = tail call i16 @llvm.umax.i16(i16 %i.aq, i16 %i.au)
  store i16 %.in53, ptr %3, align 4, !tbaa !40
  %i.av = load i16, ptr %i.o, align 4, !tbaa !40
  %i.aw = load i8, ptr %i.h, align 1, !tbaa !47
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.04657, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !38
  %..1 = tail call i16 @llvm.umin.i16(i16 %i.av, i16 %i.az)
  store i16 %..1, ptr %i.o, align 4, !tbaa !40
  %i.ba = load i16, ptr %i.n, align 4, !tbaa !40
  %i.bb = load i8, ptr %i.h, align 1, !tbaa !47
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.04657, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !38
  %.in53.1 = tail call i16 @llvm.umax.i16(i16 %i.ba, i16 %i.be)
  store i16 %.in53.1, ptr %i.n, align 4, !tbaa !40
  %i.bf = load i16, ptr %i.w, align 4, !tbaa !40
  %i.bg = load i8, ptr %i.p, align 2, !tbaa !47
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.04657, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !38
  %..2 = tail call i16 @llvm.umin.i16(i16 %i.bf, i16 %i.bj)
  store i16 %..2, ptr %i.w, align 4, !tbaa !40
end_hunk_0
begin_hunk_1_@process_16:bb.a
  br i1 %i.s, label %.preheader.lr.ph.us, label %.preheader.lr.ph

.preheader.lr.ph.us:                              ; preds = %.lr.ph.split, %._crit_edge.split.us.us
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %._crit_edge.split.us.us ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.ab = mul nsw i64 %indvars.iv52, %i.v
  %i.ac = getelementptr inbounds i8, ptr %i.d, i64 %i.ab
  %i.ad = mul nsw i64 %indvars.iv52, %i.w
  %i.ae = getelementptr inbounds i8, ptr %i.e, i64 %i.ad
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us, %.preheader.lr.ph.us
  %.03037.us.us = phi i32 [ 0, %.preheader.lr.ph.us ], [ %i.bk, %.preheader.us.us ]
  %.03136.us.us = phi ptr [ %i.ae, %.preheader.lr.ph.us ], [ %i.bj, %.preheader.us.us ] ; 5 uses
  %.03235.us.us = phi ptr [ %i.ac, %.preheader.lr.ph.us ], [ %i.bi, %.preheader.us.us ] ; 5 uses
  %i.af = load i8, ptr %i.j, align 4, !tbaa !47
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.03235.us.us, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !38
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !38
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.03136.us.us, i64 %i.ag
  store i16 %i.al, ptr %i.am, align 2, !tbaa !38
  %i.an = load i8, ptr %i.y, align 1, !tbaa !47
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.03235.us.us, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !38
  %i.ar = zext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !38
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.03136.us.us, i64 %i.ao
  store i16 %i.at, ptr %i.au, align 2, !tbaa !38
  %i.av = load i8, ptr %i.aa, align 2, !tbaa !47
  %i.aw = zext i8 %i.av to i64                    ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.03235.us.us, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !38
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !38
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.03136.us.us, i64 %i.aw
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !38
  %i.bd = load i8, ptr %i.k, align 1, !tbaa !47
  %i.be = zext i8 %i.bd to i64                    ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.03235.us.us, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !38
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.03136.us.us, i64 %i.be
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !38
  %i.bi = getelementptr inbounds [2 x i8], ptr %.03235.us.us, i64 %i.u
  %i.bj = getelementptr inbounds [2 x i8], ptr %.03136.us.us, i64 %i.u
  %i.bk = add nuw nsw i32 %.03037.us.us, 1        ; 2 uses
  %exitcond51.not = icmp eq i32 %i.bk, %i.g
  br i1 %exitcond51.not, label %._crit_edge.split.us.us, label %.preheader.us.us, !llvm.loop !110

._crit_edge.split.us.us:                          ; preds = %.preheader.us.us
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge40.split, label %.preheader.lr.ph.us, !llvm.loop !111

._crit_edge40.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.lr.ph.split, %._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bl = mul nsw i64 %indvars.iv, %i.v
  %i.bm = getelementptr inbounds i8, ptr %i.d, i64 %i.bl
  %i.bn = mul nsw i64 %indvars.iv, %i.w
  %i.bo = getelementptr inbounds i8, ptr %i.e, i64 %i.bn
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.03037 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cp, %.preheader ]
  %.03136 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %i.co, %.preheader ] ; 4 uses
  %.03235 = phi ptr [ %i.bm, %.preheader.lr.ph ], [ %i.cn, %.preheader ] ; 4 uses
  %i.bp = load i8, ptr %i.j, align 4, !tbaa !47
  %i.bq = zext i8 %i.bp to i64                    ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.03235, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !38
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !38
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.03136, i64 %i.bq
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !38
  %i.bx = load i8, ptr %i.y, align 1, !tbaa !47
  %i.by = zext i8 %i.bx to i64                    ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.03235, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !38
  %i.cb = zext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !38
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.03136, i64 %i.by
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !38
  %i.cf = load i8, ptr %i.aa, align 2, !tbaa !47
  %i.cg = zext i8 %i.cf to i64                    ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.03235, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !38
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !38
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.03136, i64 %i.cg
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !38
  %i.cn = getelementptr inbounds [2 x i8], ptr %.03235, i64 %i.u
  %i.co = getelementptr inbounds [2 x i8], ptr %.03136, i64 %i.u
  %i.cp = add nuw nsw i32 %.03037, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cp, %i.g
  br i1 %exitcond.not, label %._crit_edge.split, label %.preheader, !llvm.loop !110

._crit_edge.split:                                ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next, %wide.trip.count55
  br i1 %exitcond46.not, label %._crit_edge40.split, label %.preheader.lr.ph, !llvm.loop !111
}

declare ptr @av_default_item_name(ptr noundef) #1

declare void @av_freep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!21 = !{!"AVRational", !6, i64 0, !6, i64 4}
!22 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!23 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!24 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!25 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!26 = !{!"AVFilterFormatsConfig", !24, i64 0, !24, i64 8, !25, i64 16, !24, i64 24, !24, i64 32, !24, i64 40}
!27 = !{!"AVFilterLink", !20, i64 0, !13, i64 8, !20, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !22, i64 72, !21, i64 96, !23, i64 104, !6, i64 112, !6, i64 116, !26, i64 120, !26, i64 168}
!28 = !{!27, !20, i64 16}
!29 = !{!"float", !5, i64 0}
!30 = !{!"p1 short", !9, i64 0}
!31 = !{!"NormalizeContext", !10, i64 0, !5, i64 8, !5, i64 12, !6, i64 16, !29, i64 20, !29, i64 24, !5, i64 28, !6, i64 32, !5, i64 36, !5, i64 52, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !5, i64 88, !5, i64 136, !30, i64 184, !5, i64 192, !9, i64 393408, !9, i64 393416}
!32 = !{!31, !9, i64 393408}
!33 = !{!31, !6, i64 76}
!34 = !{!"long", !5, i64 0}
!35 = !{!"NormalizeHistory", !30, i64 0, !34, i64 8}
!36 = !{!35, !30, i64 0}
!37 = !{!"short", !5, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"NormalizeLocal", !37, i64 0, !29, i64 4, !29, i64 8}
!40 = !{!39, !37, i64 0}
!41 = !{!6, !6, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!31, !6, i64 32}
!44 = !{!31, !9, i64 393416}
!45 = !{!31, !6, i64 68}
!46 = !{!31, !6, i64 72}
!47 = !{!5, !5, i64 0}
!48 = !{!12, !12, i64 0}
!49 = !{!"p2 omnipotent char", !14, i64 0}
!50 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!51 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!52 = !{!"AVFrame", !5, i64 0, !5, i64 64, !49, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !21, i64 124, !34, i64 136, !34, i64 144, !21, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !50, i64 248, !6, i64 256, !23, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !34, i64 304, !51, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !34, i64 344, !34, i64 352, !34, i64 360, !34, i64 368, !9, i64 376, !22, i64 384, !34, i64 408, !6, i64 416}
!53 = !{!52, !6, i64 108}
!54 = !{!52, !6, i64 104}
!55 = distinct !{null}
!56 = distinct !{!56, !42, !84, !85}
!57 = distinct !{!57, !42, !84, !85}
!58 = distinct !{!58, !42, !85, !84}
!59 = distinct !{!59, !42, !84, !85}
!60 = distinct !{!60, !42, !85, !84}
!61 = distinct !{!61, !42, !84, !85}
!62 = distinct !{!62, !42, !85, !84}
!63 = distinct !{!63, !42, !84, !85}
!64 = distinct !{!64, !42, !84, !85}
!65 = distinct !{!65, !42, !85, !84}
!66 = distinct !{!66, !42, !84, !85}
!67 = distinct !{!67, !42, !85, !84}
!68 = distinct !{!68, !42, !84, !85}
!69 = distinct !{!69, !42, !84, !85}
!70 = distinct !{!70, !42, !85, !84}
!71 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!18, !15, i64 56}
!74 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!18, !6, i64 104}
!77 = !{!27, !6, i64 40}
!78 = !{!27, !6, i64 44}
!79 = !{!31, !6, i64 80}
!80 = !{!35, !34, i64 8}
!81 = !{!29, !29, i64 0}
!82 = !{!39, !29, i64 4}
!83 = !{!39, !29, i64 8}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = !{!"branch_weights", i32 4, i32 12}
!87 = !{!27, !6, i64 36}
!88 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!89 = !{!88, !6, i64 16}
!90 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !34, i64 16, !5, i64 24, !12, i64 104}
!91 = !{!90, !5, i64 8}
!92 = !{!31, !6, i64 16}
!93 = !{!31, !30, i64 184}
!94 = !{!90, !34, i64 16}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = distinct !{!99, !42}
!100 = distinct !{!100, !42}
!101 = distinct !{!101, !42, !103}
!102 = distinct !{!102, !42}
!103 = !{!"llvm.loop.unswitch.partial.disable"}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !42}
!106 = distinct !{!106, !42}
!107 = distinct !{!107, !42}
!108 = distinct !{!108, !42}
!109 = distinct !{!109, !42}
!110 = distinct !{!110, !42}
!111 = distinct !{!111, !42}
end_hunk_1
