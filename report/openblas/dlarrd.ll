Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarrd?download=true
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@c__1 = internal global i32 1, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"DSTEBZ\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@c__3 = internal global i32 3, align 4
@c__2 = internal global i32 2, align 4
@c__0 = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @dlarrd_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef captures(none) %15, ptr noundef %16, ptr nofree noundef captures(none) %17, ptr nofree noundef captures(none) %18, ptr nofree noundef captures(none) %19, ptr noundef %20, ptr nofree noundef captures(none) %21, ptr noundef %22, ptr noundef %23, ptr nofree noundef captures(none) initializes((0, 4)) %24) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %21 to i64                 ; 4 uses
  %i.b = ptrtoaddr ptr %20 to i64                 ; 4 uses
  %i.c = ptrtoaddr ptr %16 to i64                 ; 4 uses
  %i.d = ptrtoaddr ptr %17 to i64                 ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca double, align 8                   ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca double, align 8                   ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 16 uses
  %i.l = alloca i32, align 4                      ; 9 uses
  %i.m = alloca [1 x i32], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  %i.n = getelementptr inbounds i8, ptr %23, i64 -4 ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %22, i64 -8 ; 10 uses
  %i.p = getelementptr inbounds i8, ptr %21, i64 -4 ; 25 uses
  %i.q = getelementptr inbounds i8, ptr %20, i64 -4 ; 37 uses
  %i.r = getelementptr inbounds i8, ptr %17, i64 -8 ; 25 uses
  %i.s = getelementptr inbounds i8, ptr %16, i64 -8 ; 43 uses
  %i.t = getelementptr inbounds i8, ptr %14, i64 -4
  %i.u = getelementptr inbounds i8, ptr %11, i64 -8
  %i.v = getelementptr inbounds i8, ptr %10, i64 -8
  %i.w = getelementptr inbounds i8, ptr %9, i64 -8 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %7, i64 -8 ; 15 uses
  store i32 0, ptr %24, align 4, !tbaa !31
  %i.y = load i32, ptr %2, align 4, !tbaa !31
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #6
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %.not676 = icmp eq i32 %i.ab, 0
  br i1 %.not676, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  %.not677 = icmp eq i32 %i.ac, 0
  br i1 %.not677, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %24, align 4, !tbaa !31
  br label %.critedge.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.0621725 = phi i32 [ 3, %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ]
  %i.ad = phi i1 [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ] ; 2 uses
  %i.ae = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ true, %bb.c ]
  %i.af = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %.not678 = icmp eq i32 %i.af, 0
  br i1 %.not678, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.thread
  %i.ag = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  %.not679 = icmp eq i32 %i.ag, 0
  br i1 %.not679, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -2, ptr %24, align 4, !tbaa !31
  br label %.critedge.thread

bb.h:                                             ; preds = %bb.f, %.thread
  %i.ah = load i32, ptr %2, align 4, !tbaa !31    ; 4 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -3, ptr %24, align 4, !tbaa !31
  br label %.critedge.thread

bb.j:                                             ; preds = %bb.h
  br i1 %i.ae, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = load double, ptr %3, align 8, !tbaa !33
  %i.ak = load double, ptr %4, align 8, !tbaa !33
  %i.al = fcmp ult double %i.aj, %i.ak
  br i1 %i.al, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 -5, ptr %24, align 4, !tbaa !31
  br label %.critedge.thread

bb.m:                                             ; preds = %bb.j
  br i1 %i.ad, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.am = load i32, ptr %5, align 4, !tbaa !31    ; 3 uses
  %i.an = icmp slt i32 %i.am, 1
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 1)
  %i.ao = icmp samesign ugt i32 %i.am, %spec.select
  %or.cond = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 -6, ptr %24, align 4, !tbaa !31
  br label %.critedge.thread

bb.p:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %6, align 4, !tbaa !31    ; 2 uses
  %.710 = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.am)
  %i.aq = icmp slt i32 %i.ap, %.710
  %i.ar = icmp samesign ugt i32 %i.ap, %i.ah
  %or.cond737 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond737, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  store i32 -7, ptr %24, align 4, !tbaa !31
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.p, %bb.m, %bb.k
  %.pr = load i32, ptr %24, align 4, !tbaa !31
  %.not681 = icmp eq i32 %.pr, 0
  br i1 %.not681, label %bb.r, label %.critedge.thread

bb.r:                                             ; preds = %.critedge
  store i32 0, ptr %15, align 4, !tbaa !31
  %i.as = load i32, ptr %2, align 4, !tbaa !31    ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.critedge.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.ad, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.au = load i32, ptr %5, align 4, !tbaa !31
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aw = load i32, ptr %6, align 4, !tbaa !31
  %i.ax = icmp eq i32 %i.aw, %i.as
  %spec.select711 = select i1 %i.ax, i32 1, i32 3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.1622 = phi i32 [ %.0621725, %bb.s ], [ %spec.select711, %bb.u ], [ 3, %bb.t ] ; 6 uses
  %i.ay = tail call double @dlamch_(ptr noundef nonnull @.str.5) #6
  %i.az = tail call double @dlamch_(ptr noundef nonnull @.str.6) #6
  %i.ba = load i32, ptr %2, align 4, !tbaa !31
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  switch i32 %.1622, label %default.unreachable [
    i32 1, label %bb.ab
    i32 2, label %bb.x
    i32 3, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.bc = load double, ptr %9, align 8, !tbaa !33 ; 2 uses
  %i.bd = load double, ptr %3, align 8, !tbaa !33
  %i.be = fcmp ogt double %i.bc, %i.bd
  br i1 %i.be, label %bb.y, label %.critedge.thread

bb.y:                                             ; preds = %bb.x
  %i.bf = load double, ptr %4, align 8, !tbaa !33
  %i.bg = fcmp ugt double %i.bc, %i.bf
  br i1 %i.bg, label %.critedge.thread, label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.bh = load i32, ptr %5, align 4, !tbaa !31
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.aa, label %.critedge.thread

bb.aa:                                            ; preds = %bb.z
  %i.bj = load i32, ptr %6, align 4, !tbaa !31
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.ab, label %.critedge.thread

bb.ab:                                            ; preds = %bb.w, %bb.aa, %bb.y
  store i32 1, ptr %15, align 4, !tbaa !31
  %i.bl = load double, ptr %9, align 8, !tbaa !33
  store double %i.bl, ptr %16, align 8, !tbaa !33
  store double 0.000000e+00, ptr %17, align 8, !tbaa !33
  store i32 1, ptr %20, align 4, !tbaa !31
  store i32 1, ptr %21, align 4, !tbaa !31
  br label %.critedge.thread

bb.ac:                                            ; preds = %bb.v
  %i.bm = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #6 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 2
  %spec.store.select = select i1 %i.bn, i32 0, i32 %i.bm
  store i32 %spec.store.select, ptr %i.j, align 4, !tbaa !31
  %i.bo = load double, ptr %9, align 8, !tbaa !33 ; 6 uses
  %i.bp = load i32, ptr %2, align 4, !tbaa !31    ; 4 uses
  %.not682753 = icmp slt i32 %i.bp, 1
  br i1 %.not682753, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@dlarrd_:bb.a
  %.1619.1 = phi i32 [ %i.rt, %bb.bg ], [ %.1619, %bb.bf ] ; 3 uses
  %indvars.iv.next878.1 = add nuw nsw i64 %indvars.iv877, 2 ; 2 uses
  %niter1073.next.1 = add i64 %niter1073, 2       ; 2 uses
  %niter1073.ncmp.1 = icmp eq i64 %niter1073.next.1, %unroll_iter1072
  br i1 %niter1073.ncmp.1, label %._crit_edge795.loopexit.unr-lcssa, label %.lr.ph794, !llvm.loop !17

._crit_edge795.loopexit.unr-lcssa:                ; preds = %bb.bh
  %lcmp.mod1068.not = icmp eq i64 %xtraiter1066, 0
  br i1 %lcmp.mod1068.not, label %._crit_edge795, label %.lr.ph794.epil.preheader

.lr.ph794.epil.preheader:                         ; preds = %._crit_edge795.loopexit.unr-lcssa, %.lr.ph794.preheader
  %indvars.iv877.epil.init = phi i64 [ 1, %.lr.ph794.preheader ], [ %indvars.iv.next878.1, %._crit_edge795.loopexit.unr-lcssa ] ; 4 uses
  %.0618792.epil.init = phi i32 [ %i.qd, %.lr.ph794.preheader ], [ %.1619.1, %._crit_edge795.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi i32 [ 0, %.lr.ph794.preheader ], [ %i.ru, %._crit_edge795.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1071 = trunc i32 %i.qh to i1
  call void @llvm.assume(i1 %lcmp.mod1071)
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv877.epil.init
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !33 ; 2 uses
  %i.rx = fcmp ole double %i.rw, %.1603
  %i.ry = icmp sgt i32 %.0618792.epil.init, 0
  %or.cond3.epil = select i1 %i.rx, i1 %i.ry, i1 false
  br i1 %or.cond3.epil, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph794.epil.preheader
  %i.rz = add nsw i32 %.epil.init, 1              ; 3 uses
  store i32 %i.rz, ptr %i.k, align 4, !tbaa !31
  %i.sa = sext i32 %i.rz to i64                   ; 4 uses
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.sa
  store double %i.rw, ptr %i.sb, align 8, !tbaa !33
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv877.epil.init
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !33
  %i.se = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.sa
  store double %i.sd, ptr %i.se, align 8, !tbaa !33
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv877.epil.init
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !31
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.sa
  store i32 %i.sg, ptr %i.sh, align 4, !tbaa !31
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv877.epil.init
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !31
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.sa
  store i32 %i.sj, ptr %i.sk, align 4, !tbaa !31
  br label %._crit_edge795

bb.bj:                                            ; preds = %.lr.ph794.epil.preheader
  %i.sl = add nsw i32 %.0618792.epil.init, -1
  br label %._crit_edge795

._crit_edge795:                                   ; preds = %._crit_edge795.loopexit.unr-lcssa, %bb.bj, %bb.bi, %bb.bc
  %i.sm = phi i32 [ 0, %bb.bc ], [ %i.ru, %._crit_edge795.loopexit.unr-lcssa ], [ %.epil.init, %bb.bj ], [ %i.rz, %bb.bi ]
  %.0618.lcssa = phi i32 [ %i.qd, %bb.bc ], [ %.1619.1, %._crit_edge795.loopexit.unr-lcssa ], [ %i.sl, %bb.bj ], [ %.0618792.epil.init, %bb.bi ]
  store i32 %i.sm, ptr %15, align 4, !tbaa !31
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge795, %bb.bb
  %.2620 = phi i32 [ %.0618.lcssa, %._crit_edge795 ], [ %i.qd, %bb.bb ] ; 3 uses
  %i.sn = icmp sgt i32 %i.qf, 0
  br i1 %i.sn, label %bb.bl, label %bb.bt

bb.bl:                                            ; preds = %bb.bk
  %i.so = load i32, ptr %15, align 4, !tbaa !31   ; 8 uses
  %i.sp = add nsw i32 %i.so, 1                    ; 4 uses
  store i32 %i.sp, ptr %i.k, align 4, !tbaa !31
  %i.sq = icmp sgt i32 %i.so, 0
  br i1 %i.sq, label %.lr.ph801.preheader, label %._crit_edge809

.lr.ph801.preheader:                              ; preds = %bb.bl
  %i.sr = zext nneg i32 %i.so to i64              ; 7 uses
  %xtraiter1074 = and i64 %i.sr, 1
  %lcmp.mod1075.not = icmp eq i64 %xtraiter1074, 0
  br i1 %lcmp.mod1075.not, label %.lr.ph801.prol.loopexit, label %.lr.ph801.prol

.lr.ph801.prol:                                   ; preds = %.lr.ph801.preheader
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.sr
  %i.st = load double, ptr %i.ss, align 8, !tbaa !33 ; 2 uses
  %i.su = fcmp ult double %i.st, %.1601
  br i1 %i.su, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph801.prol
  store i32 %i.so, ptr %i.k, align 4, !tbaa !31
  %i.sv = zext nneg i32 %i.so to i64              ; 4 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.sv
  store double %i.st, ptr %i.sw, align 8, !tbaa !33
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.sr
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !33
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.sv
  store double %i.sy, ptr %i.sz, align 8, !tbaa !33
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.sr
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !31
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.sv
  store i32 %i.tb, ptr %i.tc, align 4, !tbaa !31
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.sr
  %i.te = load i32, ptr %i.td, align 4, !tbaa !31
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.sv
  store i32 %i.te, ptr %i.tf, align 4, !tbaa !31
  br label %.lr.ph801.prol.loopexit.unr-lcssa

bb.bn:                                            ; preds = %.lr.ph801.prol
  %i.tg = add nsw i32 %i.qf, -1
  br label %.lr.ph801.prol.loopexit.unr-lcssa

.lr.ph801.prol.loopexit.unr-lcssa:                ; preds = %bb.bn, %bb.bm
  %i.th = phi i32 [ %i.sp, %bb.bn ], [ %i.so, %bb.bm ] ; 2 uses
  %.1616.prol = phi i32 [ %i.tg, %bb.bn ], [ %i.qf, %bb.bm ] ; 2 uses
  %indvars.iv.next883.prol = add nsw i64 %i.sr, -1
  br label %.lr.ph801.prol.loopexit

.lr.ph801.prol.loopexit:                          ; preds = %.lr.ph801.prol.loopexit.unr-lcssa, %.lr.ph801.preheader
  %indvars.iv882.unr = phi i64 [ %i.sr, %.lr.ph801.preheader ], [ %indvars.iv.next883.prol, %.lr.ph801.prol.loopexit.unr-lcssa ]
  %.0615799.unr = phi i32 [ %i.qf, %.lr.ph801.preheader ], [ %.1616.prol, %.lr.ph801.prol.loopexit.unr-lcssa ]
  %.unr1077 = phi i32 [ %i.sp, %.lr.ph801.preheader ], [ %i.th, %.lr.ph801.prol.loopexit.unr-lcssa ]
  %.lcssa1052.unr = phi i32 [ poison, %.lr.ph801.preheader ], [ %i.th, %.lr.ph801.prol.loopexit.unr-lcssa ]
  %.1616.lcssa.unr = phi i32 [ poison, %.lr.ph801.preheader ], [ %.1616.prol, %.lr.ph801.prol.loopexit.unr-lcssa ]
  %i.ti = icmp eq i32 %i.so, 1
  br i1 %i.ti, label %._crit_edge802, label %.lr.ph801

.lr.ph801:                                        ; preds = %.lr.ph801.prol.loopexit, %bb.bs
  %indvars.iv882 = phi i64 [ %indvars.iv.next883.1, %bb.bs ], [ %indvars.iv882.unr, %.lr.ph801.prol.loopexit ] ; 7 uses
  %.0615799 = phi i32 [ %.1616.1, %bb.bs ], [ %.0615799.unr, %.lr.ph801.prol.loopexit ] ; 3 uses
  %i.tj = phi i32 [ %i.ut, %bb.bs ], [ %.unr1077, %.lr.ph801.prol.loopexit ] ; 2 uses
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv882
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !33 ; 2 uses
  %i.tm = fcmp oge double %i.tl, %.1601
  %i.tn = icmp sgt i32 %.0615799, 0
  %or.cond5 = select i1 %i.tm, i1 %i.tn, i1 false
  br i1 %or.cond5, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph801
  %i.to = add nsw i32 %.0615799, -1
  br label %.lr.ph801.1

bb.bp:                                            ; preds = %.lr.ph801
  %i.tp = add nsw i32 %i.tj, -1                   ; 3 uses
  store i32 %i.tp, ptr %i.k, align 4, !tbaa !31
  %i.tq = sext i32 %i.tp to i64                   ; 4 uses
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.tq
  store double %i.tl, ptr %i.tr, align 8, !tbaa !33
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv882
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !33
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.tq
  store double %i.tt, ptr %i.tu, align 8, !tbaa !33
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv882
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !31
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.tq
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !31
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv882
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !31
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.tq
  store i32 %i.tz, ptr %i.ua, align 4, !tbaa !31
  br label %.lr.ph801.1

.lr.ph801.1:                                      ; preds = %bb.bo, %bb.bp
  %i.ub = phi i32 [ %i.tj, %bb.bo ], [ %i.tp, %bb.bp ] ; 2 uses
  %.1616 = phi i32 [ %i.to, %bb.bo ], [ %.0615799, %bb.bp ] ; 3 uses
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -1 ; 4 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next883
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !33 ; 2 uses
  %i.ue = fcmp oge double %i.ud, %.1601
  %i.uf = icmp sgt i32 %.1616, 0
  %or.cond5.1 = select i1 %i.ue, i1 %i.uf, i1 false
  br i1 %or.cond5.1, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph801.1
  %i.ug = add nsw i32 %i.ub, -1                   ; 3 uses
  store i32 %i.ug, ptr %i.k, align 4, !tbaa !31
  %i.uh = sext i32 %i.ug to i64                   ; 4 uses
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.uh
  store double %i.ud, ptr %i.ui, align 8, !tbaa !33
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next883
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !33
  %i.ul = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.uh
  store double %i.uk, ptr %i.ul, align 8, !tbaa !33
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next883
  %i.un = load i32, ptr %i.um, align 4, !tbaa !31
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.uh
  store i32 %i.un, ptr %i.uo, align 4, !tbaa !31
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next883
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !31
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.uh
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !31
  br label %bb.bs

bb.br:                                            ; preds = %.lr.ph801.1
  %i.us = add nsw i32 %.1616, -1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ut = phi i32 [ %i.ub, %bb.br ], [ %i.ug, %bb.bq ] ; 2 uses
  %.1616.1 = phi i32 [ %i.us, %bb.br ], [ %.1616, %bb.bq ] ; 2 uses
  %indvars.iv.next883.1 = add nsw i64 %indvars.iv882, -2
  %i.uu = icmp sgt i64 %indvars.iv882, 2
  br i1 %i.uu, label %.lr.ph801, label %._crit_edge802, !llvm.loop !18

._crit_edge802:                                   ; preds = %bb.bs, %.lr.ph801.prol.loopexit
  %.lcssa1052 = phi i32 [ %.lcssa1052.unr, %.lr.ph801.prol.loopexit ], [ %i.ut, %bb.bs ] ; 5 uses
  %.1616.lcssa = phi i32 [ %.1616.lcssa.unr, %.lr.ph801.prol.loopexit ], [ %.1616.1, %bb.bs ] ; 2 uses
  %.pre = load i32, ptr %15, align 4, !tbaa !31   ; 3 uses
  %.not686804 = icmp sgt i32 %.lcssa1052, %.pre
  br i1 %.not686804, label %._crit_edge809, label %.lr.ph808.preheader

.lr.ph808.preheader:                              ; preds = %._crit_edge802
  %i.uv = sext i32 %.lcssa1052 to i64             ; 6 uses
  %i.uw = add i32 %.pre, 1
  %i.ux = sub i32 %i.uw, %.lcssa1052              ; 2 uses
  %wide.trip.count892 = zext i32 %i.ux to i64     ; 5 uses
  %min.iters.check1037 = icmp ult i32 %i.ux, 40
  br i1 %min.iters.check1037, label %.lr.ph808.preheader1051, label %vector.memcheck1021

vector.memcheck1021:                              ; preds = %.lr.ph808.preheader
  %25 = sub i64 %i.c, %i.d
  %26 = shl nsw i64 %i.uv, 3                      ; 3 uses
  %27 = add i64 %26, %i.d
  %28 = add i64 %26, %i.c
  %29 = sub i64 %i.a, %i.b
  %30 = shl nsw i64 %i.uv, 2                      ; 3 uses
  %31 = add i64 %30, %i.b
  %32 = add i64 %30, %i.a
  %33 = sub i64 %27, %i.c
  %34 = sub i64 %i.d, %28
  %35 = insertelement <2 x i64> poison, i64 %25, i64 0
  %36 = insertelement <2 x i64> %35, i64 %29, i64 1
  %i.uy = icmp ugt <2 x i64> %36, <i64 -32, i64 -16>
  %37 = sub i64 %31, %i.a
  %38 = sub i64 %i.b, %32
  %39 = insertelement <6 x i64> poison, i64 %26, i64 0
  %40 = insertelement <6 x i64> %39, i64 %30, i64 1
  %41 = insertelement <6 x i64> %40, i64 %33, i64 2
  %42 = insertelement <6 x i64> %41, i64 %34, i64 3
  %43 = insertelement <6 x i64> %42, i64 %37, i64 4
  %44 = insertelement <6 x i64> %43, i64 %38, i64 5
  %i.uz = add <6 x i64> %44, <i64 23, i64 11, i64 -9, i64 7, i64 -5, i64 3>
  %i.va = icmp ult <6 x i64> %i.uz, <i64 31, i64 15, i64 31, i64 31, i64 15, i64 15>
  %i.vb = shufflevector <6 x i1> %i.va, <6 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.vc = shufflevector <2 x i1> %i.uy, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vd = shufflevector <8 x i1> %i.vb, <8 x i1> %i.vc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ve = bitcast <8 x i1> %i.vd to i8
  %.not1050 = icmp eq i8 %i.ve, 0
  br i1 %.not1050, label %vector.ph1038, label %.lr.ph808.preheader1051

vector.ph1038:                                    ; preds = %vector.memcheck1021
  %n.vec1039 = and i64 %wide.trip.count892, 4294967292 ; 4 uses
  %i.vf = add nsw i64 %n.vec1039, %i.uv
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %vector.ph1038
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1045, %vector.body1040 ] ; 6 uses
  %i.vg = add i64 %index1041, %i.uv               ; 4 uses
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.vg
  %wide.load = load <4 x double>, ptr %i.vh, align 8, !tbaa !33
  %i.vi = getelementptr [8 x i8], ptr %16, i64 %index1041
  store <4 x double> %wide.load, ptr %i.vi, align 8, !tbaa !33
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.vg
  %wide.load1042 = load <4 x double>, ptr %i.vj, align 8, !tbaa !33
  %i.vk = getelementptr [8 x i8], ptr %17, i64 %index1041
  store <4 x double> %wide.load1042, ptr %i.vk, align 8, !tbaa !33
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.vg
  %wide.load1043 = load <4 x i32>, ptr %i.vl, align 4, !tbaa !31
  %i.vm = getelementptr [4 x i8], ptr %21, i64 %index1041
  store <4 x i32> %wide.load1043, ptr %i.vm, align 4, !tbaa !31
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.vg
  %wide.load1044 = load <4 x i32>, ptr %i.vn, align 4, !tbaa !31
  %i.vo = getelementptr [4 x i8], ptr %20, i64 %index1041
  store <4 x i32> %wide.load1044, ptr %i.vo, align 4, !tbaa !31
  %index.next1045 = add nuw i64 %index1041, 4     ; 2 uses
  %i.vp = icmp eq i64 %index.next1045, %n.vec1039
  br i1 %i.vp, label %middle.block1046, label %vector.body1040, !llvm.loop !19

middle.block1046:                                 ; preds = %vector.body1040
  %cmp.n1047 = icmp eq i64 %n.vec1039, %wide.trip.count892
  br i1 %cmp.n1047, label %._crit_edge809.loopexit, label %.lr.ph808.preheader1051

.lr.ph808.preheader1051:                          ; preds = %vector.memcheck1021, %.lr.ph808.preheader, %middle.block1046
  %indvars.iv887.ph = phi i64 [ %i.uv, %vector.memcheck1021 ], [ %i.uv, %.lr.ph808.preheader ], [ %i.vf, %middle.block1046 ] ; 6 uses
  %indvars.iv885.ph = phi i64 [ 0, %vector.memcheck1021 ], [ 0, %.lr.ph808.preheader ], [ %n.vec1039, %middle.block1046 ] ; 7 uses
  %xtraiter1078 = and i64 %wide.trip.count892, 1
  %lcmp.mod1079.not = icmp eq i64 %xtraiter1078, 0
  br i1 %lcmp.mod1079.not, label %.lr.ph808.prol.loopexit, label %.lr.ph808.prol

.lr.ph808.prol:                                   ; preds = %.lr.ph808.preheader1051
  %indvars.iv.next886.prol = or disjoint i64 %indvars.iv885.ph, 1
  %i.vq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv887.ph
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !33
  %i.vs = getelementptr [8 x i8], ptr %16, i64 %indvars.iv885.ph
  store double %i.vr, ptr %i.vs, align 8, !tbaa !33
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv887.ph
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !33
  %i.vv = getelementptr [8 x i8], ptr %17, i64 %indvars.iv885.ph
  store double %i.vu, ptr %i.vv, align 8, !tbaa !33
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv887.ph
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !31
  %i.vy = getelementptr [4 x i8], ptr %21, i64 %indvars.iv885.ph
  store i32 %i.vx, ptr %i.vy, align 4, !tbaa !31
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv887.ph
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !31
  %i.wb = getelementptr [4 x i8], ptr %20, i64 %indvars.iv885.ph
  store i32 %i.wa, ptr %i.wb, align 4, !tbaa !31
  %indvars.iv.next888.prol = add nsw i64 %indvars.iv887.ph, 1
  br label %.lr.ph808.prol.loopexit

.lr.ph808.prol.loopexit:                          ; preds = %.lr.ph808.prol, %.lr.ph808.preheader1051
  %indvars.iv887.unr = phi i64 [ %indvars.iv887.ph, %.lr.ph808.preheader1051 ], [ %indvars.iv.next888.prol, %.lr.ph808.prol ]
  %indvars.iv885.unr = phi i64 [ %indvars.iv885.ph, %.lr.ph808.preheader1051 ], [ %indvars.iv.next886.prol, %.lr.ph808.prol ]
  %i.wc = add nsw i64 %wide.trip.count892, -1
  %i.wd = icmp eq i64 %indvars.iv885.ph, %i.wc
  br i1 %i.wd, label %._crit_edge809.loopexit, label %.lr.ph808

.lr.ph808:                                        ; preds = %.lr.ph808.prol.loopexit, %.lr.ph808
  %indvars.iv887 = phi i64 [ %indvars.iv.next888.1, %.lr.ph808 ], [ %indvars.iv887.unr, %.lr.ph808.prol.loopexit ] ; 9 uses
  %indvars.iv885 = phi i64 [ %indvars.iv.next886.1, %.lr.ph808 ], [ %indvars.iv885.unr, %.lr.ph808.prol.loopexit ] ; 6 uses
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 1 ; 4 uses
  %i.we = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv887
  %i.wf = load double, ptr %i.we, align 8, !tbaa !33
  %i.wg = getelementptr [8 x i8], ptr %16, i64 %indvars.iv885
  store double %i.wf, ptr %i.wg, align 8, !tbaa !33
  %i.wh = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv887
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !33
  %i.wj = getelementptr [8 x i8], ptr %17, i64 %indvars.iv885
  store double %i.wi, ptr %i.wj, align 8, !tbaa !33
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv887
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !31
  %i.wm = getelementptr [4 x i8], ptr %21, i64 %indvars.iv885
  store i32 %i.wl, ptr %i.wm, align 4, !tbaa !31
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv887
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !31
  %i.wp = getelementptr [4 x i8], ptr %20, i64 %indvars.iv885
  store i32 %i.wo, ptr %i.wp, align 4, !tbaa !31
  %indvars.iv.next886.1 = add nuw nsw i64 %indvars.iv885, 2 ; 2 uses
  %i.wq = getelementptr [8 x i8], ptr %16, i64 %indvars.iv887
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !33
  %i.ws = getelementptr [8 x i8], ptr %16, i64 %indvars.iv.next886
  store double %i.wr, ptr %i.ws, align 8, !tbaa !33
  %i.wt = getelementptr [8 x i8], ptr %17, i64 %indvars.iv887
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !33
  %i.wv = getelementptr [8 x i8], ptr %17, i64 %indvars.iv.next886
  store double %i.wu, ptr %i.wv, align 8, !tbaa !33
  %i.ww = getelementptr [4 x i8], ptr %21, i64 %indvars.iv887
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !31
  %i.wy = getelementptr [4 x i8], ptr %21, i64 %indvars.iv.next886
  store i32 %i.wx, ptr %i.wy, align 4, !tbaa !31
  %i.wz = getelementptr [4 x i8], ptr %20, i64 %indvars.iv887
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !31
  %i.xb = getelementptr [4 x i8], ptr %20, i64 %indvars.iv.next886
  store i32 %i.xa, ptr %i.xb, align 4, !tbaa !31
  %indvars.iv.next888.1 = add nsw i64 %indvars.iv887, 2
  %exitcond893.not.1 = icmp eq i64 %indvars.iv.next886.1, %wide.trip.count892
  br i1 %exitcond893.not.1, label %._crit_edge809.loopexit, label %.lr.ph808, !llvm.loop !20

._crit_edge809.loopexit:                          ; preds = %.lr.ph808.prol.loopexit, %.lr.ph808, %middle.block1046
  %.pre923 = load i32, ptr %15, align 4, !tbaa !31
  br label %._crit_edge809

._crit_edge809:                                   ; preds = %bb.bl, %._crit_edge809.loopexit, %._crit_edge802
  %.0615.lcssa958 = phi i32 [ %.1616.lcssa, %._crit_edge809.loopexit ], [ %.1616.lcssa, %._crit_edge802 ], [ %i.qf, %bb.bl ]
  %i.xc = phi i32 [ %.lcssa1052, %._crit_edge809.loopexit ], [ %.lcssa1052, %._crit_edge802 ], [ %i.sp, %bb.bl ]
  %i.xd = phi i32 [ %.pre923, %._crit_edge809.loopexit ], [ %.pre, %._crit_edge802 ], [ %i.so, %bb.bl ]
  %reass.sub = sub i32 %i.xd, %i.xc
  %i.xe = add i32 %reass.sub, 1
  store i32 %i.xe, ptr %15, align 4, !tbaa !31
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge809, %bb.bk
  %.2617 = phi i32 [ %.0615.lcssa958, %._crit_edge809 ], [ %i.qf, %bb.bk ] ; 3 uses
  %i.xf = icmp sgt i32 %.2620, 0                  ; 2 uses
  %i.xg = icmp sgt i32 %.2617, 0                  ; 2 uses
  %or.cond7 = select i1 %i.xf, i1 true, i1 %i.xg
  br i1 %or.cond7, label %bb.bu, label %._crit_edge924

._crit_edge924:                                   ; preds = %bb.bt
  %.pre925 = load i32, ptr %15, align 4, !tbaa !31
  br label %bb.cr

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.xf, label %bb.bv, label %.loopexit744

bb.bv:                                            ; preds = %bb.bu
  %i.xh = load double, ptr %19, align 8, !tbaa !33
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge816
  %.0640820 = phi double [ %i.xh, %bb.bv ], [ %.1641.lcssa, %._crit_edge816 ] ; 3 uses
  %.0646819 = phi i32 [ 1, %bb.bv ], [ %i.yx, %._crit_edge816 ] ; 2 uses
  %i.xi = load i32, ptr %15, align 4, !tbaa !31   ; 3 uses
  %.not701810 = icmp slt i32 %i.xi, 1
  br i1 %.not701810, label %._crit_edge816, label %.lr.ph815.preheader

.lr.ph815.preheader:                              ; preds = %bb.bw
  %i.xj = zext nneg i32 %i.xi to i64              ; 2 uses
  %xtraiter1081 = and i64 %i.xj, 3                ; 3 uses
  %i.xk = icmp ult i32 %i.xi, 4
  br i1 %i.xk, label %.lr.ph815.epil.preheader, label %.lr.ph815.preheader.new

.lr.ph815.preheader.new:                          ; preds = %.lr.ph815.preheader
  %unroll_iter1087 = and i64 %i.xj, 2147483644
  br label %.lr.ph815

.lr.ph815:                                        ; preds = %bb.cb, %.lr.ph815.preheader.new
  %indvars.iv894 = phi i64 [ 1, %.lr.ph815.preheader.new ], [ %indvars.iv.next895.3, %bb.cb ] ; 9 uses
  %.0623813 = phi i32 [ 0, %.lr.ph815.preheader.new ], [ %.1624.3, %bb.cb ] ; 3 uses
  %.1641811 = phi double [ %.0640820, %.lr.ph815.preheader.new ], [ %.2642.3, %bb.cb ] ; 3 uses
  %niter1088 = phi i64 [ 0, %.lr.ph815.preheader.new ], [ %niter1088.next.3, %bb.cb ]
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv894
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !31
  %.not702 = icmp eq i32 %i.xm, 0
  br i1 %.not702, label %.lr.ph815.1, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph815
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv894
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !33 ; 2 uses
  %i.xp = fcmp olt double %i.xo, %.1641811
  %i.xq = icmp eq i32 %.0623813, 0
  %or.cond9 = select i1 %i.xp, i1 true, i1 %i.xq  ; 2 uses
  %spec.select715 = select i1 %or.cond9, double %i.xo, double %.1641811
  %i.xr = trunc nuw nsw i64 %indvars.iv894 to i32
  %spec.select716 = select i1 %or.cond9, i32 %i.xr, i32 %.0623813
  br label %.lr.ph815.1

.lr.ph815.1:                                      ; preds = %bb.bx, %.lr.ph815
  %.2642 = phi double [ %.1641811, %.lr.ph815 ], [ %spec.select715, %bb.bx ] ; 3 uses
  %.1624 = phi i32 [ %.0623813, %.lr.ph815 ], [ %spec.select716, %bb.bx ] ; 3 uses
  %i.xs = getelementptr [4 x i8], ptr %20, i64 %indvars.iv894
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !31
  %.not702.1 = icmp eq i32 %i.xt, 0
  br i1 %.not702.1, label %.lr.ph815.2, label %bb.by

bb.by:                                            ; preds = %.lr.ph815.1
  %i.xu = getelementptr [8 x i8], ptr %16, i64 %indvars.iv894
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !33 ; 2 uses
  %i.xw = fcmp olt double %i.xv, %.2642
  %i.xx = icmp eq i32 %.1624, 0
  %or.cond9.1 = select i1 %i.xw, i1 true, i1 %i.xx ; 2 uses
  %spec.select715.1 = select i1 %or.cond9.1, double %i.xv, double %.2642
  %i.xy = trunc i64 %indvars.iv894 to i32
end_hunk_1
