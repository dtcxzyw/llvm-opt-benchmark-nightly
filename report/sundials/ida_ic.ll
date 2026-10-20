Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ida_ic?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__func__.IDACalcIC = private unnamed_addr constant [10 x i8] c"IDACalcIC\00", align 1
@.str = private unnamed_addr constant [51 x i8] c"/opt-bench/work/sundials/sundials/src/ida/ida_ic.c\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ida_mem = NULL illegal.\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Attempt to call before IDAMalloc.\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"icopt has an illegal value.\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"id = NULL conflicts with icopt.\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"tout1 too close to t0 to attempt initial condition calculation.\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"id has illegal values.\00", align 1
@__func__.IDAICFailFlag = private unnamed_addr constant [14 x i8] c"IDAICFailFlag\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"The residual function failed unrecoverably. \00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"The residual function failed at the first call. \00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"The linear solver setup failed unrecoverably.\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"The linear solver solve failed unrecoverably.\00", align 1
@.str.11 = private unnamed_addr constant [120 x i8] c"The residual routine or the linear setup or solve routine had a recoverable error, but IDACalcIC was unable to recover.\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Unable to satisfy the inequality constraints.\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"The linesearch algorithm failed: step too small or too many backtracks.\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Newton/Linesearch algorithm failed to converge.\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Some initial ewt component = 0.0 illegal.\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -99, 1) i32 @IDACalcIC(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 118, ptr noundef nonnull @__func__.IDACalcIC, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  br label %bb.bi

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 972
  %i.c = load i32, ptr %i.b, align 4, !tbaa !20
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -23, i32 noundef 129, ptr noundef nonnull @__func__.IDACalcIC, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3
  br label %bb.bi

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @IDAInitialSetup(ptr noundef nonnull %0) #3
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.bi

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i32 1, ptr %i.f, align 8, !tbaa !21
  %i.g = add i32 %1, -3
  %or.cond = icmp ult i32 %i.g, -2
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 149, ptr noundef nonnull @__func__.IDACalcIC, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #3
  br label %bb.bi

bb.h:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 5 uses
  store i32 %1, ptr %i.h, align 8, !tbaa !22
  %i.i = icmp eq i32 %1, 1                        ; 4 uses
  br i1 %i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 158, ptr noundef nonnull @__func__.IDACalcIC, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #3
  br label %bb.bi

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = fsub double %2, %i.n
  %i.p = tail call double @llvm.fabs.f64(double %i.o) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !25
  %i.s = fmul double %i.r, 2.000000e+00
  %i.t = tail call double @llvm.fabs.f64(double %i.n)
  %i.u = tail call double @llvm.fabs.f64(double %2)
  %i.v = fadd double %i.u, %i.t
  %i.w = fmul double %i.s, %i.v
  %i.x = fcmp olt double %i.p, %i.w
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 169, ptr noundef nonnull @__func__.IDACalcIC, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #3
  br label %bb.bi

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = tail call ptr @N_VClone(ptr noundef %i.z) #3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 18 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !27
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.ad = tail call ptr @N_VClone(ptr noundef %i.ac) #3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 14 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !28
  %i.af = load double, ptr %i.m, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  store double %i.af, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !27
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ai, ptr noundef %i.aj) #3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !28
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.al, ptr noundef %i.am) #3
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  store i32 1, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  store double %i.p, ptr %i.ao, align 8, !tbaa !32
  br i1 %i.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ar = tail call double @N_VMin(ptr noundef %i.aq) #3 ; 2 uses
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 192, ptr noundef nonnull @__func__.IDACalcIC, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #3
  br label %bb.bi

bb.p:                                             ; preds = %bb.n
  %i.at = fcmp ogt double %i.ar, 5.000000e-01
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.an, align 8, !tbaa !31
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.av = load double, ptr %i.au, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  store double %i.av, ptr %i.aw, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 712
  store double 1.000000e+00, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 3 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !36
  %i.az = fmul double %i.p, 1.000000e-03          ; 2 uses
  %i.ba = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 8 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !38
  %i.bf = tail call double @IDAWrmsNorm(ptr noundef nonnull %0, ptr noundef %i.ba, ptr noundef %i.bc, i32 noundef %i.be) #3 ; 2 uses
  %i.bg = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bf, i64 1
  %i.bi = fdiv <2 x double> splat (double 5.000000e-01), %i.bh ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = fcmp ogt double %i.bf, %i.bj
  %i.bl = extractelement <2 x double> %i.bi, i64 1
  %.0 = select i1 %i.bk, double %i.bl, double %i.az ; 2 uses
  %i.bm = load double, ptr %i.m, align 8, !tbaa !24
  %i.bn = fcmp olt double %2, %i.bm
  %i.bo = fneg double %.0
  %.1 = select i1 %i.bn, double %i.bo, double %.0 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  store double %.1, ptr %i.bp, align 8, !tbaa !39
  br i1 %i.i, label %bb.s, label %.thread218

.thread218:                                       ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  store double 0.000000e+00, ptr %i.bq, align 8, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %.preheader.preheader

bb.s:                                             ; preds = %bb.r
  %i.bt = fdiv double 1.000000e+00, %.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !41 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  store double %i.bt, ptr %i.bw, align 8, !tbaa !40
  %.not119170 = icmp slt i32 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br i1 %.not119170, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.thread218, %bb.s
  %i.bz = phi ptr [ %i.bs, %.thread218 ], [ %i.by, %bb.s ]
  %i.ca = phi ptr [ %i.br, %.thread218 ], [ %i.bx, %bb.s ]
  %i.cb = phi ptr [ %i.bq, %.thread218 ], [ %i.bw, %bb.s ] ; 4 uses
  %.0109222 = phi i32 [ 1, %.thread218 ], [ %i.bv, %bb.s ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 14 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 7 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 4 uses
  br label %.preheader

.preheader.us.preheader:                          ; preds = %bb.s
  %i.da = load ptr, ptr %i.bx, align 8, !tbaa !42
  %i.db = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.dc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.dd = load ptr, ptr %i.by, align 8, !tbaa !43
  %i.de = tail call i32 %i.da(ptr noundef %i.db, ptr noundef %i.dc, ptr noundef %i.dd) #3
  %.not122.us = icmp eq i32 %i.de, 0
  br i1 %.not122.us, label %.preheader.us.1, label %IDANlsIC.exit.thread134

.preheader.us.1:                                  ; preds = %.preheader.us.preheader
  %i.df = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.dg = load ptr, ptr %i.ah, align 8, !tbaa !30
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.df, ptr noundef %i.dg) #3
  %i.dh = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.di = load ptr, ptr %i.ak, align 8, !tbaa !30
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dh, ptr noundef %i.di) #3
  %i.dj = load ptr, ptr %i.bx, align 8, !tbaa !42
  %i.dk = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.dl = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.dm = load ptr, ptr %i.by, align 8, !tbaa !43
  %i.dn = tail call i32 %i.dj(ptr noundef %i.dk, ptr noundef %i.dl, ptr noundef %i.dm) #3
  %.not122.us.1 = icmp eq i32 %i.dn, 0
  br i1 %.not122.us.1, label %bb.t, label %IDANlsIC.exit.thread134

bb.t:                                             ; preds = %.preheader.us.1
  %i.do = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.dp = load ptr, ptr %i.ah, align 8, !tbaa !30
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.do, ptr noundef %i.dp) #3
  %i.dq = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.dr = load ptr, ptr %i.ak, align 8, !tbaa !30
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dq, ptr noundef %i.dr) #3
  br label %IDANlsIC.exit.thread134

.preheader:                                       ; preds = %.preheader.preheader, %bb.be
  %.2175 = phi double [ %.3172, %bb.be ], [ %.1, %.preheader.preheader ]
  %exitcond.not = phi i1 [ true, %bb.be ], [ false, %.preheader.preheader ]
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %bb.bd
  %.3172 = phi double [ %.2175, %.preheader ], [ %i.kp, %bb.bd ] ; 6 uses
  %.0110171 = phi i32 [ 1, %.preheader ], [ %i.kr, %bb.bd ] ; 2 uses
  %i.ds = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !44
  %i.du = load ptr, ptr %i.cd, align 8, !tbaa !30
  %i.dv = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.dw = load double, ptr %i.ag, align 8, !tbaa !29
  %i.dx = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.dy = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !46
  %i.ea = load ptr, ptr %i.cg, align 8, !tbaa !47
  %i.eb = tail call i32 %i.dv(double noundef %i.dw, ptr noundef %i.dx, ptr noundef %i.dy, ptr noundef %i.dz, ptr noundef %i.ea) #3, !inline_history !8 ; 2 uses
  %i.ec = load i64, ptr %i.ch, align 8, !tbaa !48
  %i.ed = add nsw i64 %i.ec, 1
  store i64 %i.ed, ptr %i.ch, align 8, !tbaa !48
  %i.ee = icmp slt i32 %i.eb, 0
  br i1 %i.ee, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.ef = load ptr, ptr %i.cf, align 8, !tbaa !46
  %i.eg = load ptr, ptr %i.ci, align 8, !tbaa !49
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ef, ptr noundef %i.eg) #3
  %i.eh = load i32, ptr %i.cj, align 4, !tbaa !50
  %.not4259.i = icmp slt i32 %i.eh, 1
  br i1 %.not4259.i, label %IDANlsIC.exit.thread130, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %bb.ba
  %.060.i = phi i32 [ %i.ke, %bb.ba ], [ 1, %bb.w ]
  %i.ei = load ptr, ptr %i.ck, align 8, !tbaa !51 ; 2 uses
  %.not43.i = icmp eq ptr %i.ei, null
  br i1 %.not43.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i
  %i.ej = load i64, ptr %i.cl, align 8, !tbaa !52
  %i.ek = add nsw i64 %i.ej, 1
  store i64 %i.ek, ptr %i.cl, align 8, !tbaa !52
  %i.el = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.em = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.en = load ptr, ptr %i.cf, align 8, !tbaa !46
  %i.eo = tail call i32 %i.ei(ptr noundef nonnull %0, ptr noundef %i.el, ptr noundef %i.em, ptr noundef %i.en, ptr noundef %i.ds, ptr noundef %i.dt, ptr noundef %i.du) #3, !inline_history !8 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not44.i = icmp eq i32 %i.eo, 0
  br i1 %.not44.i, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y, %.lr.ph.i
  %i.eq = load ptr, ptr %i.cd, align 8, !tbaa !30
  store ptr %i.eq, ptr %i.cm, align 8, !tbaa !53
  %i.er = load ptr, ptr %i.cn, align 8, !tbaa !54
  %i.es = load ptr, ptr %i.cf, align 8, !tbaa !46
  %i.et = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.eu = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ev = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.ew = load ptr, ptr %i.ci, align 8, !tbaa !49
  %i.ex = tail call i32 %i.er(ptr noundef nonnull %0, ptr noundef %i.es, ptr noundef %i.et, ptr noundef %i.eu, ptr noundef %i.ev, ptr noundef %i.ew) #3, !inline_history !9 ; 2 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.i.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i.i, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.ez = load ptr, ptr %i.cf, align 8, !tbaa !46
  %i.fa = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.fb = tail call double @IDAWrmsNorm(ptr noundef nonnull %0, ptr noundef %i.ez, ptr noundef %i.fa, i32 noundef 0) #3 ; 2 uses
  %i.fc = load i32, ptr %i.an, align 8, !tbaa !31
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fe = load double, ptr %i.ao, align 8, !tbaa !32
  %i.ff = load double, ptr %i.cb, align 8, !tbaa !40
  %i.fg = tail call double @llvm.fabs.f64(double %i.ff)
  %i.fh = fmul double %i.fe, %i.fg
  %i.fi = fmul double %i.fb, %i.fh
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.043.i.i = phi double [ %i.fi, %bb.ac ], [ %i.fb, %bb.ab ] ; 3 uses
  %i.fj = load double, ptr %i.aw, align 8, !tbaa !34
  %i.fk = fcmp ugt double %.043.i.i, %i.fj
  br i1 %i.fk, label %.preheader.i.i, label %IDANlsIC.exit.thread130

.preheader.i.i:                                   ; preds = %bb.ad
  %i.fl = load i32, ptr %i.co, align 8, !tbaa !55
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph.i.i, label %select.unfold.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ay
  %.03155.i.i = phi i32 [ %i.ju, %bb.ay ], [ 0, %.preheader.i.i ]
  %.154.i.i = phi double [ %.1.i.i.i, %bb.ay ], [ %.043.i.i, %.preheader.i.i ] ; 6 uses
  %i.fn = load i64, ptr %i.cp, align 8, !tbaa !56
  %i.fo = add nsw i64 %i.fn, 1
  store i64 %i.fo, ptr %i.cp, align 8, !tbaa !56
  %i.fp = load ptr, ptr %i.y, align 8, !tbaa !26  ; 3 uses
  %i.fq = load ptr, ptr %i.cq, align 8, !tbaa !30 ; 2 uses
  store ptr %i.fq, ptr %i.cr, align 8, !tbaa !57
  %i.fr = load ptr, ptr %i.cc, align 8, !tbaa !44 ; 2 uses
  store ptr %i.fr, ptr %i.cs, align 8, !tbaa !58
  store ptr %i.fp, ptr %i.ct, align 8, !tbaa !59
  %i.fs = fmul double %.154.i.i, %.154.i.i
  %i.ft = fmul double %i.fs, 5.000000e-01         ; 2 uses
  %i.fu = load ptr, ptr %i.cu, align 8, !tbaa !60
  %.not.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.fv = load i32, ptr %i.h, align 8, !tbaa !22
  %i.fw = icmp eq i32 %i.fv, 1
  %i.fx = load ptr, ptr %i.cf, align 8, !tbaa !46 ; 2 uses
  br i1 %i.fw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fy = load ptr, ptr %i.cv, align 8, !tbaa !23
  tail call void @N_VProd(ptr noundef %i.fy, ptr noundef %i.fx, ptr noundef %i.fq) #3
  %i.fz = load ptr, ptr %i.cf, align 8, !tbaa !46
  %i.ga = load ptr, ptr %i.cr, align 8, !tbaa !57 ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fz, double noundef -1.000000e+00, ptr noundef %i.ga, ptr noundef %i.ga) #3
  %i.gb = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.gc = load ptr, ptr %i.cr, align 8, !tbaa !57
  %i.gd = load ptr, ptr %i.cs, align 8, !tbaa !58
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.gb, double noundef -1.000000e+00, ptr noundef %i.gc, ptr noundef %i.gd) #3
  br label %IDANewy.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ge = load ptr, ptr %i.ab, align 8, !tbaa !27
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ge, double noundef -1.000000e+00, ptr noundef %i.fx, ptr noundef %i.fr) #3
  br label %IDANewy.exit.i.i.i

IDANewy.exit.i.i.i:                               ; preds = %bb.ag, %bb.af
  %i.gf = load ptr, ptr %i.cu, align 8, !tbaa !60
  %i.gg = load ptr, ptr %i.cs, align 8, !tbaa !58
  %i.gh = tail call i32 @N_VConstrMask(ptr noundef %i.gf, ptr noundef %i.gg, ptr noundef %i.fp) #3
  %.not61.i.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not61.i.i.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %IDANewy.exit.i.i.i
  %i.gi = load ptr, ptr %i.cf, align 8, !tbaa !46
  %i.gj = load ptr, ptr %i.cr, align 8, !tbaa !57
  tail call void @N_VProd(ptr noundef %i.fp, ptr noundef %i.gi, ptr noundef %i.gj) #3
  %i.gk = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.gl = load ptr, ptr %i.cr, align 8, !tbaa !57
  %i.gm = tail call double @N_VMinQuotient(ptr noundef %i.gk, ptr noundef %i.gl) #3
  %i.gn = fmul double %i.gm, f0x3FEFAE147AE147AE  ; 3 uses
  %i.go = fmul double %.154.i.i, %i.gn            ; 2 uses
  %i.gp = load double, ptr %i.cw, align 8, !tbaa !61
  %i.gq = fcmp ugt double %i.go, %i.gp
  br i1 %i.gq, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.gr = load ptr, ptr %i.cf, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VScale(double noundef %i.gn, ptr noundef %i.gr, ptr noundef %i.gr) #3
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %IDANewy.exit.i.i.i, %.lr.ph.i.i
  %.044.i.i = phi double [ %.154.i.i, %.lr.ph.i.i ], [ %i.go, %bb.ai ], [ %.154.i.i, %IDANewy.exit.i.i.i ]
  %.057.i.i.i = phi double [ 1.000000e+00, %.lr.ph.i.i ], [ %i.gn, %bb.ai ], [ 1.000000e+00, %IDANewy.exit.i.i.i ]
  %i.gs = fmul double %i.ft, -2.000000e+00
  %i.gt = fmul double %i.gs, %.057.i.i.i
  %i.gu = load double, ptr %i.cw, align 8, !tbaa !61
  %i.gv = fdiv double %i.gu, %.044.i.i
  %i.gw = load i32, ptr %i.h, align 8, !tbaa !22
  %i.gx = icmp eq i32 %i.gw, 2
  br i1 %i.gx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gy = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.gz = load ptr, ptr %i.ct, align 8, !tbaa !59
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.gy, ptr noundef %i.gz) #3
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ha = load i32, ptr %i.cx, align 4, !tbaa !62
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.al
  %i.hc = fmul double %i.gt, 1.000000e-04
  br label %bb.am

bb.am:                                            ; preds = %bb.av, %.lr.ph.i.i.i
  %.070.i.i.i = phi double [ 1.000000e+00, %.lr.ph.i.i.i ], [ %i.je, %bb.av ] ; 5 uses
  %.05869.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.jh, %bb.av ]
  %i.hd = load i32, ptr %i.h, align 8, !tbaa !22
  %i.he = icmp eq i32 %i.hd, 1
  br i1 %i.he, label %bb.an, label %IDANewyyp.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.hf = load ptr, ptr %i.cv, align 8, !tbaa !23
  %i.hg = load ptr, ptr %i.cf, align 8, !tbaa !46
  %i.hh = load ptr, ptr %i.cr, align 8, !tbaa !57
  tail call void @N_VProd(ptr noundef %i.hf, ptr noundef %i.hg, ptr noundef %i.hh) #3
  %i.hi = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.hj = load double, ptr %i.cb, align 8, !tbaa !40
  %i.hk = fneg double %i.hj
  %i.hl = fmul double %.070.i.i.i, %i.hk
  %i.hm = load ptr, ptr %i.cr, align 8, !tbaa !57
  %i.hn = load ptr, ptr %i.ct, align 8, !tbaa !59
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.hi, double noundef %i.hl, ptr noundef %i.hm, ptr noundef %i.hn) #3
  %i.ho = load ptr, ptr %i.cf, align 8, !tbaa !46
  %i.hp = load ptr, ptr %i.cr, align 8, !tbaa !57 ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ho, double noundef -1.000000e+00, ptr noundef %i.hp, ptr noundef %i.hp) #3
  br label %IDANewyyp.exit.i.i.i

IDANewyyp.exit.i.i.i:                             ; preds = %bb.am, %bb.an
  %.sink251 = phi ptr [ %i.cr, %bb.an ], [ %i.cf, %bb.am ]
  %i.hq = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.hr = fneg double %.070.i.i.i
  %i.hs = load ptr, ptr %.sink251, align 8, !tbaa !30
  %i.ht = load ptr, ptr %i.cs, align 8, !tbaa !58
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.hq, double noundef %i.hr, ptr noundef %i.hs, ptr noundef %i.ht) #3
  %i.hu = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.hv = load double, ptr %i.ag, align 8, !tbaa !29
  %i.hw = load ptr, ptr %i.cs, align 8, !tbaa !58
  %i.hx = load ptr, ptr %i.ct, align 8, !tbaa !59
  %i.hy = load ptr, ptr %i.cm, align 8, !tbaa !53
  %i.hz = load ptr, ptr %i.cg, align 8, !tbaa !47
  %i.ia = tail call i32 %i.hu(double noundef %i.hv, ptr noundef %i.hw, ptr noundef %i.hx, ptr noundef %i.hy, ptr noundef %i.hz) #3, !inline_history !10 ; 2 uses
  %i.ib = load i64, ptr %i.ch, align 8, !tbaa !48
  %i.ic = add nsw i64 %i.ib, 1
  store i64 %i.ic, ptr %i.ch, align 8, !tbaa !48
  %i.id = icmp slt i32 %i.ia, 0
  br i1 %i.id, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %IDANewyyp.exit.i.i.i
  %.not.i.i.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i.i.i, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.ie = load ptr, ptr %i.cm, align 8, !tbaa !53
  %i.if = load ptr, ptr %i.ci, align 8, !tbaa !49
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ie, ptr noundef %i.if) #3
  %i.ig = load ptr, ptr %i.cn, align 8, !tbaa !54
  %i.ih = load ptr, ptr %i.cm, align 8, !tbaa !53
  %i.ii = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.ij = load ptr, ptr %i.cs, align 8, !tbaa !58
  %i.ik = load ptr, ptr %i.ct, align 8, !tbaa !59
  %i.il = load ptr, ptr %i.ci, align 8, !tbaa !49
  %i.im = tail call i32 %i.ig(ptr noundef nonnull %0, ptr noundef %i.ih, ptr noundef %i.ii, ptr noundef %i.ij, ptr noundef %i.ik, ptr noundef %i.il) #3, !inline_history !10 ; 2 uses
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not30.i.i.i.i = icmp eq i32 %i.im, 0
  br i1 %.not30.i.i.i.i, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.io = load ptr, ptr %i.cm, align 8, !tbaa !53
  %i.ip = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.iq = tail call double @IDAWrmsNorm(ptr noundef nonnull %0, ptr noundef %i.io, ptr noundef %i.ip, i32 noundef 0) #3 ; 2 uses
  %i.ir = load i32, ptr %i.an, align 8, !tbaa !31
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.as, label %IDAfnorm.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.it = load double, ptr %i.ao, align 8, !tbaa !32
  %i.iu = load double, ptr %i.cb, align 8, !tbaa !40
  %i.iv = tail call double @llvm.fabs.f64(double %i.iu)
  %i.iw = fmul double %i.it, %i.iv
  %i.ix = fmul double %i.iq, %i.iw
  br label %IDAfnorm.exit.i.i.i

IDAfnorm.exit.i.i.i:                              ; preds = %bb.as, %bb.ar
  %.1.i.i.i = phi double [ %i.ix, %bb.as ], [ %i.iq, %bb.ar ] ; 6 uses
  %i.iy = load i32, ptr %i.cy, align 4, !tbaa !63
  %.not63.i.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not63.i.i.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %IDAfnorm.exit.i.i.i
  %i.iz = fmul double %.1.i.i.i, %.1.i.i.i
  %i.ja = fmul double %i.iz, 5.000000e-01
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.hc, double %.070.i.i.i, double %i.ft)
  %i.jc = fcmp ugt double %i.ja, %i.jb
  br i1 %i.jc, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.jd = fcmp olt double %.070.i.i.i, %i.gv
  br i1 %i.jd, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.je = fmul double %.070.i.i.i, 5.000000e-01
  %i.jf = load i32, ptr %i.ay, align 4, !tbaa !36
  %i.jg = add nsw i32 %i.jf, 1
  store i32 %i.jg, ptr %i.ay, align 4, !tbaa !36
  %i.jh = add nuw nsw i32 %.05869.i.i.i, 1        ; 2 uses
  %i.ji = load i32, ptr %i.cx, align 4, !tbaa !62
  %i.jj = icmp eq i32 %i.jh, %i.ji
  br i1 %i.jj, label %.loopexit, label %bb.am

bb.aw:                                            ; preds = %bb.at, %IDAfnorm.exit.i.i.i
  %i.jk = load ptr, ptr %i.cs, align 8, !tbaa !58
  %i.jl = load ptr, ptr %i.ab, align 8, !tbaa !27
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.jk, ptr noundef %i.jl) #3
  %i.jm = load i32, ptr %i.h, align 8, !tbaa !22
  %i.jn = icmp eq i32 %i.jm, 1
  br i1 %i.jn, label %bb.ax, label %IDALineSrch.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.jo = load ptr, ptr %i.ct, align 8, !tbaa !59
  %i.jp = load ptr, ptr %i.ae, align 8, !tbaa !28
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.jo, ptr noundef %i.jp) #3
  br label %IDALineSrch.exit.i.i

IDALineSrch.exit.i.i:                             ; preds = %bb.ax, %bb.aw
  %i.jq = load double, ptr %i.aw, align 8, !tbaa !34
  %i.jr = fcmp ugt double %.1.i.i.i, %i.jq
  br i1 %i.jr, label %bb.ay, label %IDANlsIC.exit.thread130

bb.ay:                                            ; preds = %IDALineSrch.exit.i.i
  %i.js = load ptr, ptr %i.cm, align 8, !tbaa !53
  %i.jt = load ptr, ptr %i.cf, align 8, !tbaa !46
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.js, ptr noundef %i.jt) #3
  %i.ju = add nuw nsw i32 %.03155.i.i, 1          ; 2 uses
  %i.jv = load i32, ptr %i.co, align 8, !tbaa !55
  %i.jw = icmp slt i32 %i.ju, %i.jv
  br i1 %i.jw, label %.lr.ph.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jx = fdiv double %.1.i.i.i, %.154.i.i
  %i.jy = fcmp ole double %i.jx, 9.000000e-01
  %i.jz = fmul double %.043.i.i, 1.000000e-01
  %i.ka = fcmp olt double %.1.i.i.i, %i.jz
  %or.cond.i = or i1 %i.ka, %i.jy
  br i1 %or.cond.i, label %select.unfold.i, label %.loopexit

select.unfold.i:                                  ; preds = %bb.az, %.preheader.i.i
  %i.kb = load ptr, ptr %i.ck, align 8, !tbaa !51
  %.not45.i = icmp eq ptr %i.kb, null
  br i1 %.not45.i, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %select.unfold.i
  %i.kc = load ptr, ptr %i.ci, align 8, !tbaa !49
  %i.kd = load ptr, ptr %i.cf, align 8, !tbaa !46
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.kc, ptr noundef %i.kd) #3
  %i.ke = add nuw nsw i32 %.060.i, 1              ; 2 uses
  %i.kf = load i32, ptr %i.cj, align 4, !tbaa !50
  %.not42.i = icmp sgt i32 %i.ke, %i.kf
  br i1 %.not42.i, label %.loopexit, label %.lr.ph.i

.thread:                                          ; preds = %bb.v, %bb.u, %bb.x, %bb.z, %IDANewyyp.exit.i.i.i, %bb.ap
  %.038.i.ph.ph = phi i32 [ -7, %bb.z ], [ -7, %bb.ap ], [ -8, %IDANewyyp.exit.i.i.i ], [ -6, %bb.x ], [ -12, %bb.v ], [ -8, %bb.u ]
  %i.kg = load i64, ptr %i.cz, align 8, !tbaa !64
  %i.kh = add nsw i64 %i.kg, 1
  store i64 %i.kh, ptr %i.cz, align 8, !tbaa !64
  br label %IDANlsIC.exit.thread134

.loopexit:                                        ; preds = %bb.ba, %select.unfold.i, %bb.y, %bb.az, %bb.aa, %bb.ah, %bb.al, %bb.ao, %bb.av, %bb.au, %bb.aq
  %.not120 = phi i1 [ false, %bb.ao ], [ false, %bb.ah ], [ false, %bb.aq ], [ false, %bb.au ], [ false, %bb.av ], [ false, %bb.al ], [ true, %bb.ba ], [ true, %select.unfold.i ], [ false, %bb.y ], [ false, %bb.az ], [ false, %bb.aa ]
  %.038.i.ph = phi i32 [ 1, %bb.ao ], [ 2, %bb.ah ], [ 3, %bb.av ], [ 3, %bb.au ], [ 1, %bb.aq ], [ 3, %bb.al ], [ 5, %bb.ba ], [ 5, %select.unfold.i ], [ 1, %bb.y ], [ 4, %bb.az ], [ 1, %bb.aa ] ; 2 uses
  %i.ki = load i64, ptr %i.cz, align 8, !tbaa !64
  %i.kj = add nsw i64 %i.ki, 1
  store i64 %i.kj, ptr %i.cz, align 8, !tbaa !64
  %i.kk = icmp eq i32 %.0110171, %.0109222
  br i1 %i.kk, label %IDANlsIC.exit.thread134, label %bb.bb

bb.bb:                                            ; preds = %.loopexit
  br i1 %.not120, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kl = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.km = load ptr, ptr %i.ab, align 8, !tbaa !27
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.kl, ptr noundef %i.km) #3
  %i.kn = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.ko = load ptr, ptr %i.ae, align 8, !tbaa !28
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.kn, ptr noundef %i.ko) #3
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.kp = fmul double %.3172, 1.000000e-01        ; 4 uses
  %i.kq = fdiv double 1.000000e+00, %i.kp
  store double %i.kq, ptr %i.cb, align 8, !tbaa !40
  store double %i.kp, ptr %i.bp, align 8, !tbaa !39
  %i.kr = add nuw nsw i32 %.0110171, 1            ; 2 uses
  %.not119 = icmp samesign ugt i32 %i.kr, %.0109222
  br i1 %.not119, label %IDANlsIC.exit.thread134, label %bb.u

IDANlsIC.exit.thread130:                          ; preds = %bb.w, %bb.ad, %IDALineSrch.exit.i.i
  %i.ks = load ptr, ptr %i.ca, align 8, !tbaa !42
  %i.kt = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ku = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.kv = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.kw = tail call i32 %i.ks(ptr noundef %i.kt, ptr noundef %i.ku, ptr noundef %i.kv) #3
  %.not122 = icmp eq i32 %i.kw, 0
  br i1 %.not122, label %bb.be, label %IDANlsIC.exit.thread134

bb.be:                                            ; preds = %IDANlsIC.exit.thread130
  %i.kx = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ky = load ptr, ptr %i.ah, align 8, !tbaa !30
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.kx, ptr noundef %i.ky) #3
  %i.kz = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.la = load ptr, ptr %i.ak, align 8, !tbaa !30
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.kz, ptr noundef %i.la) #3
  br i1 %exitcond.not, label %IDANlsIC.exit.thread134, label %.preheader

IDANlsIC.exit.thread134:                          ; preds = %bb.be, %IDANlsIC.exit.thread130, %bb.bd, %.loopexit, %.preheader.us.preheader, %.preheader.us.1, %bb.t, %.thread
  %.3108 = phi i32 [ %.038.i.ph, %bb.bd ], [ %.038.i.ph.ph, %.thread ], [ -24, %.preheader.us.1 ], [ -24, %.preheader.us.preheader ], [ 0, %bb.t ], [ %.038.i.ph, %.loopexit ], [ -24, %IDANlsIC.exit.thread130 ], [ 0, %bb.be ] ; 2 uses
  %.4 = phi double [ %i.kp, %bb.bd ], [ %.3172, %.thread ], [ %.1, %.preheader.us.1 ], [ %.1, %.preheader.us.preheader ], [ %.1, %bb.t ], [ %.3172, %.loopexit ], [ %.3172, %IDANlsIC.exit.thread130 ], [ %.3172, %bb.be ]
  %i.lb = load ptr, ptr %i.ab, align 8, !tbaa !27
  tail call void @N_VDestroy(ptr noundef %i.lb) #3
  %i.lc = load ptr, ptr %i.ae, align 8, !tbaa !28
  tail call void @N_VDestroy(ptr noundef %i.lc) #3
  br i1 %i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %IDANlsIC.exit.thread134
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 656
  store double %.4, ptr %i.ld, align 8, !tbaa !65
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %IDANlsIC.exit.thread134
  %.not123 = icmp eq i32 %.3108, 0
  br i1 %.not123, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.le = tail call fastcc i32 @IDAICFailFlag(ptr noundef %0, i32 noundef %.3108)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.e, %bb.bh, %bb.o, %bb.l, %bb.j, %bb.g, %bb.d, %bb.b
  %.0112 = phi i32 [ -20, %bb.b ], [ -23, %bb.d ], [ -22, %bb.e ], [ -22, %bb.g ], [ -22, %bb.j ], [ -22, %bb.l ], [ -22, %bb.o ], [ %i.le, %bb.bh ], [ 0, %bb.bg ]
  ret i32 %.0112
}

declare void @IDAProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @IDAInitialSetup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #1

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @N_VMin(ptr noundef) local_unnamed_addr #1

declare double @IDAWrmsNorm(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -99, -3) i32 @IDAICFailFlag(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.l [
    i32 -8, label %bb.b
    i32 -12, label %bb.c
    i32 -6, label %bb.d
    i32 -7, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 -24, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 690, ptr noundef nonnull @__func__.IDAICFailFlag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #3
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -12, i32 noundef 695, ptr noundef nonnull @__func__.IDAICFailFlag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #3
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -6, i32 noundef 700, ptr noundef nonnull @__func__.IDAICFailFlag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #3
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -7, i32 noundef 705, ptr noundef nonnull @__func__.IDAICFailFlag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #3
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -14, i32 noundef 710, ptr noundef nonnull @__func__.IDAICFailFlag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #3
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -11, i32 noundef 715, ptr noundef nonnull @__func__.IDAICFailFlag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #3
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -13, i32 noundef 720, ptr noundef nonnull @__func__.IDAICFailFlag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #3
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 725, ptr noundef nonnull @__func__.IDAICFailFlag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #3
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 730, ptr noundef nonnull @__func__.IDAICFailFlag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #3
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -24, i32 noundef 735, ptr noundef nonnull @__func__.IDAICFailFlag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #3
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -24, %bb.k ], [ -8, %bb.b ], [ -12, %bb.c ], [ -6, %bb.d ], [ -7, %bb.e ], [ -14, %bb.f ], [ -11, %bb.g ], [ -13, %bb.h ], [ -4, %bb.i ], [ -4, %bb.j ], [ -99, %bb.a ]
  ret i32 %.0
}

declare i32 @N_VConstrMask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{null}
!9 = distinct !{null, null}
!10 = distinct !{null, null, null, null}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !11, i64 0}
!17 = !{!"p1 int", !11, i64 0}
!18 = !{!"p1 double", !11, i64 0}
!19 = !{!"IDAMemRec", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !13, i64 40, !13, i64 48, !14, i64 56, !5, i64 64, !5, i64 68, !11, i64 72, !11, i64 80, !5, i64 88, !4, i64 96, !4, i64 144, !4, i64 192, !4, i64 240, !4, i64 288, !4, i64 336, !14, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !13, i64 512, !14, i64 520, !14, i64 528, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !13, i64 568, !13, i64 576, !13, i64 584, !5, i64 592, !13, i64 600, !5, i64 608, !5, i64 612, !5, i64 616, !5, i64 620, !5, i64 624, !13, i64 632, !13, i64 640, !13, i64 648, !13, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !13, i64 688, !13, i64 696, !13, i64 704, !13, i64 712, !13, i64 720, !13, i64 728, !13, i64 736, !13, i64 744, !13, i64 752, !13, i64 760, !5, i64 768, !5, i64 772, !5, i64 776, !5, i64 780, !15, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !13, i64 840, !13, i64 848, !13, i64 856, !15, i64 864, !15, i64 872, !15, i64 880, !15, i64 888, !15, i64 896, !15, i64 904, !15, i64 912, !15, i64 920, !15, i64 928, !15, i64 936, !15, i64 944, !13, i64 952, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !16, i64 976, !5, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !13, i64 1048, !5, i64 1056, !11, i64 1064, !5, i64 1072, !17, i64 1080, !17, i64 1088, !13, i64 1096, !13, i64 1104, !13, i64 1112, !18, i64 1120, !18, i64 1128, !18, i64 1136, !13, i64 1144, !5, i64 1152, !15, i64 1160, !17, i64 1168, !5, i64 1176, !14, i64 1184, !15, i64 1192, !15, i64 1200, !5, i64 1208, !4, i64 1216, !4, i64 1264, !4, i64 1304, !4, i64 1352}
!20 = !{!19, !5, i64 972}
!21 = !{!19, !5, i64 960}
!22 = !{!19, !5, i64 536}
!23 = !{!19, !14, i64 432}
!24 = !{!19, !13, i64 672}
!25 = !{!19, !13, i64 8}
!26 = !{!19, !14, i64 448}
!27 = !{!19, !14, i64 520}
!28 = !{!19, !14, i64 528}
!29 = !{!19, !13, i64 512}
!30 = !{!14, !14, i64 0}
!31 = !{!19, !5, i64 560}
!32 = !{!19, !13, i64 584}
!33 = !{!19, !13, i64 568}
!34 = !{!19, !13, i64 744}
!35 = !{!19, !13, i64 712}
!36 = !{!19, !5, i64 556}
!37 = !{!19, !14, i64 384}
!38 = !{!19, !5, i64 88}
!39 = !{!19, !13, i64 648}
!40 = !{!19, !13, i64 688}
!41 = !{!19, !5, i64 544}
!42 = !{!19, !11, i64 72}
!43 = !{!19, !11, i64 80}
!44 = !{!19, !14, i64 464}
!45 = !{!19, !11, i64 16}
!46 = !{!19, !14, i64 424}
!47 = !{!19, !11, i64 24}
!48 = !{!19, !15, i64 872}
!49 = !{!19, !14, i64 440}
!50 = !{!19, !5, i64 548}
!51 = !{!19, !11, i64 1008}
!52 = !{!19, !15, i64 912}
!53 = !{!19, !14, i64 496}
!54 = !{!19, !11, i64 1016}
!55 = !{!19, !5, i64 552}
!56 = !{!19, !15, i64 896}
!57 = !{!19, !14, i64 504}
!58 = !{!19, !14, i64 480}
!59 = !{!19, !14, i64 488}
!60 = !{!19, !14, i64 1184}
!61 = !{!19, !13, i64 576}
!62 = !{!19, !5, i64 564}
!63 = !{!19, !5, i64 540}
!64 = !{!19, !15, i64 880}
!65 = !{!19, !13, i64 656}
end_hunk_0
