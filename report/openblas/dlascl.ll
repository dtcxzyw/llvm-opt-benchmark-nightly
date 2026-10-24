Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlascl?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"DLASCL\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"S\00", align 1

; Function Attrs: nounwind uwtable
define void @dlascl_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef captures(none) initializes((0, 4)) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load i32, ptr %8, align 4, !tbaa !36     ; 3 uses
  %narrow = xor i32 %i.b, -1
  %i.c = sext i32 %narrow to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %7, i64 %i.c ; 7 uses
  store i32 0, ptr %9, align 4, !tbaa !36
  %i.e = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %.not.not = icmp eq i32 %i.e, 0                 ; 2 uses
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #4
  %.not257 = icmp eq i32 %i.f, 0
  br i1 %.not257, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %.not258 = icmp eq i32 %i.g, 0
  br i1 %.not258, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #4
  %.not259 = icmp eq i32 %i.h, 0
  br i1 %.not259, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #4
  %.not260 = icmp eq i32 %i.i, 0
  br i1 %.not260, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.5) #4
  %.not261 = icmp eq i32 %i.j, 0
  br i1 %.not261, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  %.not262 = icmp eq i32 %i.k, 0
  br i1 %.not262, label %.thread309.sink.split, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.f, %bb.g
  %i.l = phi i1 [ false, %bb.g ], [ false, %bb.e ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ]
  %i.m = phi i1 [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ]
  %i.n = phi i1 [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.f ]
  %i.o = phi i1 [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ] ; 2 uses
  %i.p = phi i1 [ true, %bb.g ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.f ]
  %i.q = phi i1 [ false, %bb.g ], [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ false, %bb.f ]
  %i.r = phi i1 [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.f ] ; 3 uses
  %i.s = phi i1 [ false, %bb.g ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ] ; 3 uses
  %i.t = load double, ptr %3, align 8, !tbaa !38
  %i.u = fcmp oeq double %i.t, 0.000000e+00
  br i1 %i.u, label %.thread309.sink.split, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.v = tail call i32 @disnan_(ptr noundef nonnull %3) #4
  %.not263 = icmp eq i32 %i.v, 0
  br i1 %.not263, label %bb.i, label %.thread309.sink.split

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i32 @disnan_(ptr noundef %4) #4
  %.not264 = icmp eq i32 %i.w, 0
  br i1 %.not264, label %bb.j, label %.thread309.sink.split

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %5, align 4, !tbaa !36     ; 6 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread309.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load i32, ptr %6, align 4, !tbaa !36     ; 4 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread309.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not265 = icmp ne i32 %i.z, %i.x
  %brmerge314.demorgan = or i1 %i.r, %i.s         ; 2 uses
  %or.cond313.not = and i1 %brmerge314.demorgan, %.not265
  br i1 %or.cond313.not, label %.thread309.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.q, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = load i32, ptr %8, align 4, !tbaa !36
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.x, i32 1)
  %i.ac = icmp slt i32 %i.ab, %spec.select
  br i1 %i.ac, label %.thread309.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.p, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.ad = add nsw i32 %i.x, -1
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !36
  %i.ae = load i32, ptr %1, align 4, !tbaa !36    ; 5 uses
  %i.af = tail call i32 @llvm.usub.sat.i32(i32 %i.x, i32 1)
  %or.cond318 = icmp ugt i32 %i.ae, %i.af
  br i1 %or.cond318, label %.thread309.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load i32, ptr %2, align 4, !tbaa !36    ; 3 uses
  %i.ah = tail call i32 @llvm.usub.sat.i32(i32 %i.z, i32 1)
  %or.cond320 = icmp ugt i32 %i.ag, %i.ah
  br i1 %or.cond320, label %.thread309.sink.split, label %10

10:                                               ; preds = %bb.q
  br i1 %brmerge314.demorgan, label %11, label %bb.v

11:                                               ; preds = %10
  %.not267 = icmp eq i32 %i.ae, %i.ag
  br i1 %.not267, label %bb.r, label %.thread309.sink.split

bb.r:                                             ; preds = %11
  br i1 %i.s, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ai = load i32, ptr %8, align 4, !tbaa !36
  %.not268 = icmp sgt i32 %i.ai, %i.ae
  br i1 %.not268, label %bb.t, label %.thread309.sink.split

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %i.r, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aj = load i32, ptr %8, align 4, !tbaa !36
  %.not269 = icmp sgt i32 %i.aj, %i.ae
  br i1 %.not269, label %bb.v, label %.thread309.sink.split

bb.v:                                             ; preds = %10, %bb.u, %bb.t
  br i1 %i.o, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ak = load i32, ptr %8, align 4, !tbaa !36
  %i.al = shl nuw i32 %i.ae, 1
  %i.am = add nsw i32 %i.ag, %i.al
  %.not270 = icmp sgt i32 %i.ak, %i.am
  br i1 %.not270, label %bb.x, label %.thread309.sink.split

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.o
  %.pr = load i32, ptr %9, align 4, !tbaa !36     ; 2 uses
  %.not271 = icmp eq i32 %.pr, 0
  br i1 %.not271, label %bb.y, label %.thread309

.thread309.sink.split:                            ; preds = %bb.s, %bb.u, %bb.w, %bb.q, %11, %bb.p, %bb.n, %bb.k, %bb.l, %bb.j, %bb.i, %.thread, %bb.h, %bb.g
  %.sink = phi i32 [ -1, %bb.g ], [ -4, %.thread ], [ -6, %bb.j ], [ -2, %bb.p ], [ -3, %bb.q ], [ -9, %bb.n ], [ -7, %bb.k ], [ -5, %bb.i ], [ -4, %bb.h ], [ -7, %bb.l ], [ -3, %11 ], [ -9, %bb.w ], [ -9, %bb.u ], [ -9, %bb.s ] ; 2 uses
  store i32 %.sink, ptr %9, align 4, !tbaa !36
  br label %.thread309

.thread309:                                       ; preds = %.thread309.sink.split, %bb.x
  %i.an = phi i32 [ %.pr, %bb.x ], [ %.sink, %.thread309.sink.split ]
  %i.ao = sub nsw i32 0, %i.an
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !36
  %i.ap = call i32 @xerbla_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %.loopexit328

bb.y:                                             ; preds = %bb.x
  %i.aq = icmp eq i32 %i.z, 0
  %i.ar = icmp eq i32 %i.x, 0
  %or.cond551 = or i1 %i.aq, %i.ar
  br i1 %or.cond551, label %.loopexit328, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = tail call double @dlamch_(ptr noundef nonnull @.str.8) #4 ; 7 uses
  %i.at = fdiv double 1.000000e+00, %i.as         ; 6 uses
  %i.au = load double, ptr %3, align 8, !tbaa !38 ; 4 uses
  %i.av = load double, ptr %4, align 8, !tbaa !38 ; 4 uses
  br i1 %.not.not, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.z
  %i.aw = sext i32 %i.b to i64                    ; 6 uses
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit321.us
  %.0243.us = phi double [ %.1244.us, %.loopexit321.us ], [ %i.av, %.split.us.preheader ] ; 11 uses
  %.0232.us = phi double [ %.1.us, %.loopexit321.us ], [ %i.au, %.split.us.preheader ] ; 8 uses
  %i.ax = fmul double %i.as, %.0232.us            ; 3 uses
  %i.ay = fcmp oeq double %i.ax, %.0232.us
  br i1 %i.ay, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %.split.us
  %i.az = fdiv double %.0243.us, %i.at            ; 3 uses
  %i.ba = fcmp oeq double %i.az, %.0243.us
  br i1 %i.ba, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bb = tail call double @llvm.fabs.f64(double %i.ax)
  %i.bc = tail call double @llvm.fabs.f64(double %.0243.us)
  %i.bd = fcmp ogt double %i.bb, %i.bc
  %i.be = fcmp une double %.0243.us, 0.000000e+00
  %or.cond3.us = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond3.us, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bf = tail call double @llvm.fabs.f64(double %i.az)
  %i.bg = tail call double @llvm.fabs.f64(double %.0232.us)
  %i.bh = fcmp ogt double %i.bf, %i.bg
  br i1 %i.bh, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bi = fdiv double %.0243.us, %.0232.us
  br label %bb.af

bb.ae:                                            ; preds = %.split.us
  %i.bj = fdiv double %.0243.us, %.0232.us
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.not289.us = phi i1 [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.aa ], [ true, %bb.ab ], [ true, %bb.ac ]
  %.1244.us = phi double [ %.0243.us, %bb.ae ], [ %.0243.us, %bb.ad ], [ %.0243.us, %bb.aa ], [ %.0243.us, %bb.ab ], [ %i.az, %bb.ac ]
  %.1.us = phi double [ %.0232.us, %bb.ae ], [ %.0232.us, %bb.ad ], [ 1.000000e+00, %bb.aa ], [ %i.ax, %bb.ab ], [ %.0232.us, %bb.ac ]
  %.0.us = phi double [ %i.bj, %bb.ae ], [ %i.bi, %bb.ad ], [ %.0243.us, %bb.aa ], [ %i.as, %bb.ab ], [ %i.at, %bb.ac ] ; 18 uses
  br i1 %i.n, label %bb.as, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.m, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.l, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.s, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.r, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.o, label %bb.al, label %.loopexit321.us

bb.al:                                            ; preds = %bb.ak
  %i.bk = load i32, ptr %1, align 4, !tbaa !36    ; 5 uses
  %i.bl = load i32, ptr %2, align 4, !tbaa !36    ; 3 uses
  %i.bm = add nsw i32 %i.bl, %i.bk                ; 2 uses
  %i.bn = add nsw i32 %i.bm, 2
  %i.bo = add i32 %i.bk, 1                        ; 4 uses
  %i.bp = shl i32 %i.bk, 1
  %i.bq = add i32 %i.bl, 1                        ; 2 uses
  %i.br = add i32 %i.bq, %i.bp                    ; 2 uses
  %i.bs = add nsw i32 %i.bm, 1
  %i.bt = load i32, ptr %5, align 4, !tbaa !36    ; 2 uses
  %i.bu = add nsw i32 %i.bs, %i.bt
  %i.bv = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  %.not340.us = icmp slt i32 %i.bv, 1
  br i1 %.not340.us, label %.loopexit321.us, label %.lr.ph344.us.preheader

.lr.ph344.us.preheader:                           ; preds = %bb.al
  %i.bw = add i32 %i.bq, %i.bk
  %i.bx = add nuw i32 %i.bv, 1
  %wide.trip.count433 = zext i32 %i.bx to i64
  %i.by = add i32 %i.bt, %i.bl
  %i.bz = add i32 %i.by, %i.bk
  %broadcast.splatinsert752 = insertelement <4 x double> poison, double %.0.us, i64 0
  %broadcast.splat753 = shufflevector <4 x double> %broadcast.splatinsert752, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert770 = insertelement <4 x double> poison, double %.0.us, i64 0
  %broadcast.splat771 = shufflevector <4 x double> %broadcast.splatinsert770, <4 x double> poison, <4 x i32> zeroinitializer
  br label %.lr.ph344.us

.lr.ph344.us:                                     ; preds = %.lr.ph344.us.preheader, %._crit_edge339.us
  %indvar741 = phi i32 [ 0, %.lr.ph344.us.preheader ], [ %indvar.next742, %._crit_edge339.us ] ; 2 uses
  %indvars.iv429 = phi i64 [ 1, %.lr.ph344.us.preheader ], [ %indvars.iv.next430, %._crit_edge339.us ] ; 3 uses
  %indvars.iv425 = phi i32 [ %i.bw, %.lr.ph344.us.preheader ], [ %indvars.iv.next426, %._crit_edge339.us ] ; 4 uses
  %.6.neg342.us = phi i32 [ -1, %.lr.ph344.us.preheader ], [ %i.co, %._crit_edge339.us ] ; 2 uses
  %i.ca = sub i32 %i.bz, %indvar741
  %i.cb = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.br)
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 %indvars.iv425)
  %i.cd = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 %i.bo)
  %smax745 = sext i32 %i.cd to i64
  %i.ce = add nsw i64 %smax745, 1
  %i.cf = tail call i32 @llvm.smax.i32(i32 %indvars.iv425, i32 %i.bo)
  %smax746 = sext i32 %i.cf to i64
  %i.cg = sub nsw i64 %i.ce, %smax746             ; 7 uses
  %i.ch = add i32 %i.bn, %.6.neg342.us
  %i.ci = add i32 %i.bu, %.6.neg342.us
  %i.cj = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.ci) ; 2 uses
  %i.ck = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 %i.bo)
  %.not274335.us = icmp sgt i32 %i.ck, %i.cj
  br i1 %.not274335.us, label %._crit_edge339.us, label %iter.check763

vec.epilog.scalar.ph765:                          ; preds = %vec.epilog.scalar.ph765.preheader, %vec.epilog.scalar.ph765
  %indvars.iv427 = phi i64 [ %indvars.iv.next428, %vec.epilog.scalar.ph765 ], [ %indvars.iv427.ph, %vec.epilog.scalar.ph765.preheader ] ; 3 uses
  %gep540 = getelementptr [8 x i8], ptr %invariant.gep539, i64 %indvars.iv427 ; 2 uses
  %i.cl = load double, ptr %gep540, align 8, !tbaa !38
  %i.cm = fmul double %.0.us, %i.cl
  store double %i.cm, ptr %gep540, align 8, !tbaa !38
  %indvars.iv.next428 = add nsw i64 %indvars.iv427, 1
  %.not274.us.not = icmp slt i64 %indvars.iv427, %i.ei
  br i1 %.not274.us.not, label %vec.epilog.scalar.ph765, label %._crit_edge339.us, !llvm.loop !8

._crit_edge339.us:                                ; preds = %vec.epilog.scalar.ph765, %middle.block761, %vec.epilog.middle.block776, %.lr.ph344.us
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %indvars.iv.next426 = add i32 %indvars.iv425, -1
  %i.cn = trunc i64 %indvars.iv429 to i32
  %i.co = xor i32 %i.cn, -1
  %exitcond434.not = icmp eq i64 %indvars.iv.next430, %wide.trip.count433
  %indvar.next742 = add i32 %indvar741, 1
  br i1 %exitcond434.not, label %.loopexit321.us, label %.lr.ph344.us, !llvm.loop !9

bb.am:                                            ; preds = %bb.aj
  %i.cp = load i32, ptr %2, align 4, !tbaa !36    ; 3 uses
  %i.cq = add nsw i32 %i.cp, 2
  %i.cr = add i32 %i.cp, 1                        ; 2 uses
  %i.cs = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  %.not275350.us = icmp slt i32 %i.cs, 1
  br i1 %.not275350.us, label %.loopexit321.us, label %.lr.ph353.us.preheader

.lr.ph353.us.preheader:                           ; preds = %bb.am
  %i.ct = zext i32 %i.cp to i64                   ; 2 uses
  %i.cu = add nuw i32 %i.cs, 1
  %wide.trip.count444 = zext i32 %i.cu to i64
  %i.cv = add nuw nsw i64 %i.ct, 1
  %broadcast.splatinsert714 = insertelement <4 x double> poison, double %.0.us, i64 0
  %broadcast.splat715 = shufflevector <4 x double> %broadcast.splatinsert714, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert732 = insertelement <4 x double> poison, double %.0.us, i64 0
  %broadcast.splat733 = shufflevector <4 x double> %broadcast.splatinsert732, <4 x double> poison, <4 x i32> zeroinitializer
  br label %.lr.ph353.us

.lr.ph353.us:                                     ; preds = %.lr.ph353.us.preheader, %._crit_edge349.us
  %indvars.iv441 = phi i64 [ 1, %.lr.ph353.us.preheader ], [ %indvars.iv.next442, %._crit_edge349.us ] ; 3 uses
  %indvars.iv435 = phi i32 [ %i.cr, %.lr.ph353.us.preheader ], [ %indvars.iv.next436, %._crit_edge349.us ] ; 3 uses
  %smax708 = tail call i32 @llvm.smax.i32(i32 %indvars.iv435, i32 1)
  %i.cw = zext nneg i32 %smax708 to i64           ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cw)
  %i.cx = add nuw nsw i64 %umax, 1
  %i.cy = sub nsw i64 %i.cx, %i.cw                ; 7 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv441 to i32
  %i.da = sub i32 %i.cq, %i.cz
  %i.db = tail call i32 @llvm.smax.i32(i32 %i.da, i32 1)
  %.not276345.us = icmp sgt i32 %i.db, %i.cr
  br i1 %.not276345.us, label %._crit_edge349.us, label %iter.check725

vec.epilog.scalar.ph727:                          ; preds = %vec.epilog.scalar.ph727.preheader, %vec.epilog.scalar.ph727
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %vec.epilog.scalar.ph727 ], [ %indvars.iv438.ph, %vec.epilog.scalar.ph727.preheader ] ; 3 uses
  %gep542 = getelementptr [8 x i8], ptr %invariant.gep541, i64 %indvars.iv438 ; 2 uses
  %i.dc = load double, ptr %gep542, align 8, !tbaa !38
  %i.dd = fmul double %.0.us, %i.dc
  store double %i.dd, ptr %gep542, align 8, !tbaa !38
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1
  %.not276.us = icmp samesign ugt i64 %indvars.iv438, %i.ct
  br i1 %.not276.us, label %._crit_edge349.us, label %vec.epilog.scalar.ph727, !llvm.loop !10

._crit_edge349.us:                                ; preds = %vec.epilog.scalar.ph727, %middle.block723, %vec.epilog.middle.block738, %.lr.ph353.us
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %indvars.iv.next436 = add i32 %indvars.iv435, -1
  %exitcond445.not = icmp eq i64 %indvars.iv.next442, %wide.trip.count444
  br i1 %exitcond445.not, label %.loopexit321.us, label %.lr.ph353.us, !llvm.loop !11

end_hunk_0
