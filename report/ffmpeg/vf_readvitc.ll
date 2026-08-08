inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"readvitc\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Read vertical interval timecode and write it to frame metadata.\00", align 1
@inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_props }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@pixel_fmts = internal constant [19 x i32] [i32 8, i32 23, i32 101, i32 24, i32 6, i32 7, i32 0, i32 4, i32 31, i32 5, i32 33, i32 78, i32 79, i32 138, i32 12, i32 13, i32 32, i32 14, i32 -1], align 16
@ff_vf_readvitc = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @ff_video_default_filterpad, ptr @readvitc_class, i32 8, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr null, %union.anon.0 { ptr @pixel_fmts }, i32 80, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"lavfi.readvitc.found\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"lavfi.readvitc.tc_str\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%02u:%02u:%02u%c%02u\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"w:%d h:%d grp_width:%d scan_max:%d\0A\00", align 1
@readvitc_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @readvitc_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"scan_max\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"maximum line numbers to scan for VITC data\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"thr_b\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"black color threshold\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"thr_w\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"white color threshold\00", align 1
@readvitc_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 8, i32 2, %union.anon.2 { i64 45 }, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 16, i32 4, { double } { double 2.000000e-01 }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 24, i32 4, { double } { double 6.000000e-01 }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.17 = private unnamed_addr constant [70 x i8] c"Black color threshold is higher than white color threshold (%g > %g)\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"threshold_black:%d threshold_white:%d threshold_gray:%d\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.e = fmul nsz double %i.d, 2.550000e+02
  %i.f = fptosi double %i.e to i32                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !24 ; 2 uses
  %i.j = fmul nsz double %i.i, 2.550000e+02
  %i.k = fptosi double %i.j to i32                ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.k, ptr %i.l, align 4, !tbaa !25
  %i.m = icmp sgt i32 %i.f, %i.k
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.17, double noundef %i.d, double noundef %i.i) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.k, %i.f
  %i.o = lshr i32 %i.n, 1
  %i.p = sub nsw i32 %i.k, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.p, ptr %i.q, align 8, !tbaa !26
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.18, i32 noundef %i.f, i32 noundef %i.k, i32 noundef %i.p) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !40   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !41   ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.m)
  %i.n = icmp slt i32 %i.m, 0
  %.068.i = select i1 %i.n, i32 %i.k, i32 %..i    ; 2 uses
  %i.o = icmp sgt i32 %.068.i, 0
  br i1 %i.o, label %.lr.ph89.i, label %read_vitc_line.exit.thread

.lr.ph89.i:                                       ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 5 uses
  %i.s = icmp sgt i32 %i.i, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 49 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 51
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ad = sext i32 %i.q to i64
  %i.ae = sext i32 %i.i to i64                    ; 2 uses
  br i1 %i.s, label %.preheader72.lr.ph.i.us.preheader, label %.lr.ph89.i.split

.preheader72.lr.ph.i.us.preheader:                ; preds = %.lr.ph89.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.ah = load ptr, ptr %1, align 8, !tbaa !43
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !25 ; 2 uses
  %.pre24 = load i32, ptr %i.af, align 4, !tbaa !44 ; 10 uses
  %i.ai = add nsw i32 %.pre24, 10
  %.neg.i.us = sdiv i32 %i.ai, -20
  %i.aj = sdiv i32 %.pre24, 10
  %i.ak = sdiv i32 %.pre24, 5
  %i.al = mul nsw i32 %.pre24, 3                  ; 2 uses
  %i.am = sdiv i32 %i.al, 10
  %i.an = shl nsw i32 %.pre24, 1
  %i.ao = sdiv i32 %i.an, 5
  %i.ap = sdiv i32 %.pre24, 2
  %i.aq = sdiv i32 %i.al, 5
  %i.ar = mul nsw i32 %.pre24, 7
  %i.as = sdiv i32 %i.ar, 10
  %i.at = shl nsw i32 %.pre24, 2
  %i.au = sdiv i32 %i.at, 5
  %i.av = mul nsw i32 %.pre24, 9
  %i.aw = sdiv i32 %i.av, 10
  br label %.preheader72.lr.ph.i.us

.preheader72.lr.ph.i.us:                          ; preds = %.preheader72.lr.ph.i.us.preheader, %._crit_edge.thread.i.us
  %.06387.i.us = phi i32 [ %i.ki, %._crit_edge.thread.i.us ], [ 0, %.preheader72.lr.ph.i.us.preheader ]
  %.06586.i.us = phi ptr [ %i.kh, %._crit_edge.thread.i.us ], [ %i.ah, %.preheader72.lr.ph.i.us.preheader ] ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.r, i8 0, i64 9, i1 false)
  br label %.preheader72.i.us

.preheader72.i.us:                                ; preds = %bb.w, %.preheader72.lr.ph.i.us
  %indvars.iv99.i.us = phi i64 [ 0, %.preheader72.lr.ph.i.us ], [ %indvars.iv.next100.i.us, %bb.w ] ; 6 uses
  %.06479.i.us = phi i32 [ 0, %.preheader72.lr.ph.i.us ], [ %i.ht, %bb.w ] ; 2 uses
  %i.ax = sext i32 %.06479.i.us to i64
  %i.ay = add nsw i32 %.06479.i.us, 1
  %smax.i.us = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.ay)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader72.i.us
  %indvars.iv.i.us = phi i64 [ %i.ax, %.preheader72.i.us ], [ %indvars.iv.next.i.us, %bb.c ] ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.06586.i.us, i64 %indvars.iv.i.us
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !45
  %i.bb = zext i8 %i.ba to i32
  %i.bc = icmp sgt i32 %.pre, %i.bb
  br i1 %i.bc, label %bb.c, label %.critedge.i.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.bd = icmp slt i64 %indvars.iv.next.i.us, %i.ae
  br i1 %i.bd, label %bb.b, label %.critedge2.i.us, !llvm.loop !46

.critedge.i.us:                                   ; preds = %bb.b
  %i.be = trunc nsw i64 %indvars.iv.i.us to i32   ; 2 uses
  %i.bf = icmp sgt i32 %i.i, %i.be
  br i1 %i.bf, label %.lr.ph.i.us, label %.critedge2.i.us

.lr.ph.i.us:                                      ; preds = %.critedge.i.us
  %i.bg = load i32, ptr %i.t, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.us
  %indvars.iv95.i.us = phi i64 [ %indvars.iv.i.us, %.lr.ph.i.us ], [ %indvars.iv.next96.i.us, %bb.e ] ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %.06586.i.us, i64 %indvars.iv95.i.us
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !45
  %i.bj = zext i8 %i.bi to i32
  %i.bk = icmp slt i32 %i.bg, %i.bj
  br i1 %i.bk, label %bb.e, label %.critedge2.loopexit.split.loop.exit110.i.us

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next96.i.us = add nsw i64 %indvars.iv95.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next96.i.us, %i.ae
  br i1 %exitcond.not.i.us, label %.critedge2.i.us, label %bb.d, !llvm.loop !48

.critedge2.loopexit.split.loop.exit110.i.us:      ; preds = %bb.d
  %i.bl = trunc nsw i64 %indvars.iv95.i.us to i32
  br label %.critedge2.i.us

.critedge2.i.us:                                  ; preds = %bb.c, %bb.e, %.critedge2.loopexit.split.loop.exit110.i.us, %.critedge.i.us
  %.2.lcssa.i.us = phi i32 [ %i.be, %.critedge.i.us ], [ %i.i, %bb.e ], [ %i.bl, %.critedge2.loopexit.split.loop.exit110.i.us ], [ %smax.i.us, %bb.c ]
  %i.bm = add i32 %.2.lcssa.i.us, %.neg.i.us
  %spec.select.i.us = tail call i32 @llvm.smax.i32(i32 %i.bm, i32 1) ; 11 uses
  %i.bn = add nsw i32 %spec.select.i.us, %.pre24
  %i.bo = icmp sgt i32 %i.bn, %i.i
  br i1 %i.bo, label %._crit_edge.i.us, label %bb.f

bb.f:                                             ; preds = %.critedge2.i.us
  %i.bp = zext nneg i32 %spec.select.i.us to i64
  %i.bq = getelementptr i8, ptr %.06586.i.us, i64 %i.bp ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !45
  %i.bt = zext i8 %i.bs to i16
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !45
  %i.bv = zext i8 %i.bu to i16
  %i.bw = add nuw nsw i16 %i.bv, %i.bt
  %i.bx = getelementptr i8, ptr %i.bq, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !45
  %i.bz = zext i8 %i.by to i16
  %i.ca = add nuw nsw i16 %i.bw, %i.bz
  %i.cb = udiv i16 %i.ca, 3
  %i.cc = zext nneg i16 %i.cb to i32
  %i.cd = icmp sgt i32 %.pre, %i.cc
  br i1 %i.cd, label %._crit_edge.i.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = add nsw i32 %spec.select.i.us, %i.aj
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr i8, ptr %.06586.i.us, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !45
  %i.cj = zext i8 %i.ci to i16
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !45
  %i.cl = zext i8 %i.ck to i16
  %i.cm = add nuw nsw i16 %i.cl, %i.cj
  %i.cn = getelementptr i8, ptr %i.cg, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !45
  %i.cp = zext i8 %i.co to i16
  %i.cq = add nuw nsw i16 %i.cm, %i.cp
  %i.cr = udiv i16 %i.cq, 3
  %i.cs = zext nneg i16 %i.cr to i32
  %i.ct = load i32, ptr %i.t, align 8, !tbaa !23
  %i.cu = icmp slt i32 %i.ct, %i.cs
  br i1 %i.cu, label %._crit_edge.i.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.g
  %i.cv = load i32, ptr %i.u, align 8, !tbaa !26  ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv99.i.us ; 16 uses
  %i.cx = add nsw i32 %spec.select.i.us, %i.ak
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr i8, ptr %.06586.i.us, i64 %i.cy ; 3 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !45
  %i.dc = zext i8 %i.db to i16
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !45
  %i.de = zext i8 %i.dd to i16
  %i.df = add nuw nsw i16 %i.de, %i.dc
  %i.dg = getelementptr i8, ptr %i.cz, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !45
  %i.di = zext i8 %i.dh to i16
  %i.dj = add nuw nsw i16 %i.df, %i.di
  %i.dk = udiv i16 %i.dj, 3
  %i.dl = zext nneg i16 %i.dk to i32
  %i.dm = icmp slt i32 %i.cv, %i.dl
  br i1 %i.dm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.i.us
  %i.dn = load i8, ptr %i.cw, align 1, !tbaa !45
  %i.do = or i8 %i.dn, 1
  store i8 %i.do, ptr %i.cw, align 1, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.i.us
  %i.dp = add nsw i32 %spec.select.i.us, %i.am
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr %.06586.i.us, i64 %i.dq ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !45
  %i.du = zext i8 %i.dt to i16
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !45
  %i.dw = zext i8 %i.dv to i16
  %i.dx = add nuw nsw i16 %i.dw, %i.du
  %i.dy = getelementptr i8, ptr %i.dr, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !45
  %i.ea = zext i8 %i.dz to i16
  %i.eb = add nuw nsw i16 %i.dx, %i.ea
  %i.ec = udiv i16 %i.eb, 3
  %i.ed = zext nneg i16 %i.ec to i32
  %i.ee = icmp slt i32 %i.cv, %i.ed
  br i1 %i.ee, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ef = load i8, ptr %i.cw, align 1, !tbaa !45
  %i.eg = or i8 %i.ef, 2
  store i8 %i.eg, ptr %i.cw, align 1, !tbaa !45
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eh = add nsw i32 %spec.select.i.us, %i.ao
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr %.06586.i.us, i64 %i.ei ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 -1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !45
  %i.em = zext i8 %i.el to i16
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !45
  %i.eo = zext i8 %i.en to i16
  %i.ep = add nuw nsw i16 %i.eo, %i.em
  %i.eq = getelementptr i8, ptr %i.ej, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !45
  %i.es = zext i8 %i.er to i16
  %i.et = add nuw nsw i16 %i.ep, %i.es
  %i.eu = udiv i16 %i.et, 3
  %i.ev = zext nneg i16 %i.eu to i32
  %i.ew = icmp slt i32 %i.cv, %i.ev
  br i1 %i.ew, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ex = load i8, ptr %i.cw, align 1, !tbaa !45
  %i.ey = or i8 %i.ex, 4
  store i8 %i.ey, ptr %i.cw, align 1, !tbaa !45
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ez = add nsw i32 %spec.select.i.us, %i.ap
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %.06586.i.us, i64 %i.fa ; 3 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 -1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !45
  %i.fe = zext i8 %i.fd to i16
  %i.ff = load i8, ptr %i.fb, align 1, !tbaa !45
  %i.fg = zext i8 %i.ff to i16
  %i.fh = add nuw nsw i16 %i.fg, %i.fe
  %i.fi = getelementptr i8, ptr %i.fb, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !45
  %i.fk = zext i8 %i.fj to i16
  %i.fl = add nuw nsw i16 %i.fh, %i.fk
  %i.fm = udiv i16 %i.fl, 3
  %i.fn = zext nneg i16 %i.fm to i32
  %i.fo = icmp slt i32 %i.cv, %i.fn
  br i1 %i.fo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_0
