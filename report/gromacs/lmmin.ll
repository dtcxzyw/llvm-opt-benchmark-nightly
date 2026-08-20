inline.NumInlined: 23
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lm_control_struct = type { double, double, double, double, double, i32, i32, ptr, i32, i32, i32 }

@lm_control_double = local_unnamed_addr constant %struct.lm_control_struct { double f0x3CFE000000000000, double f0x3CFE000000000000, double f0x3CFE000000000000, double f0x3CFE000000000000, double 1.000000e+02, i32 100, i32 1, ptr null, i32 0, i32 -1, i32 -1 }, align 8
@lm_control_float = local_unnamed_addr constant %struct.lm_control_struct { double f0x3E7AD7F29ABCAF48, double f0x3E7AD7F29ABCAF48, double f0x3E7AD7F29ABCAF48, double f0x3E7AD7F29ABCAF48, double 1.000000e+02, i32 100, i32 1, ptr null, i32 0, i32 -1, i32 -1 }, align 8
@.str = private unnamed_addr constant [50 x i8] c"found zero (sum of squares below underflow limit)\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"converged  (the relative error in the sum of squares is at most tol)\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"converged  (the relative error of the parameter vector is at most tol)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"converged  (both errors are at most tol)\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"trapped    (by degeneracy; increasing epsilon might help)\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"exhausted  (number of function calls exceeding preset patience)\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"failed     (ftol<tol: cannot reduce sum of squares any further)\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"failed     (xtol<tol: cannot improve approximate solution any further)\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"failed     (gtol<tol: cannot improve approximate solution any further)\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"crashed    (not enough memory)\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"exploded   (fatal coding error: improper input parameters)\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"stopped    (break requested within function evaluation)\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"found nan  (function value is not-a-number or infinite)\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"won't fit  (no free parameter)\00", align 1
@lm_infmsg = local_unnamed_addr global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 16
@.str.14 = private unnamed_addr constant [11 x i8] c"found zero\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"converged (f)\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"converged (p)\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"converged (2)\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"degenerate\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"call limit\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"failed (f)\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"failed (p)\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"failed (o)\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"user break\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"found nan\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"no free par\00", align 1
@lm_shortmsg = local_unnamed_addr global [14 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 16
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [40 x i8] c"lmmin: invalid number of parameters %i\0A\00", align 1
@.str.29 = private unnamed_addr constant [74 x i8] c"lmmin: number of data points (%i) smaller than number of parameters (%i)\0A\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"lmmin: negative tolerance (at least one of %g %g %g)\0A\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"lmmin: nonpositive function evaluations limit %i\0A\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"lmmin: nonpositive stepbound %g\0A\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"lmmin: control parameter scale_diag=%i, should be 0 or 1\0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"lmmin start (ftol=%g gtol=%g xtol=%g)\0A\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"    i, f, y-f: %4i %18.8g %18.8g\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"    i, f: %4i %18.8g\0A\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"  fnorm = %24.16g\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"nan case 1\0A\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Jacobian\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"%.5e \00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"nan case 2\0A\00", align 1
@.str.44 = private unnamed_addr constant [102 x i8] c" #o #i     lmpar    prered  actred        ratio    dirder      delta      pnorm                 fnorm\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"               p%i\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"nan case 3\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"nan case 4\0A\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"%3i %2i %9.2g %9.2g %9.2g %14.6g %9.2g %10.3e %10.3e %21.15e\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c" %16.9g\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"nan case 6\0A\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"lmmin terminates with outcome %i\0A\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"  fnorm=%24.16g xnorm=%24.16g\0A\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"  pars:\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c" %23.16g\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z5lmminiPdiPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef initializes((8, 20)) %7) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct(i32 noundef %0, ptr noundef %1, ptr poison, ptr poison, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct(i32 noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr noundef initializes((8, 20)) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = add nsw i32 %0, 1
  %i.d = mul nsw i32 %i.b, %i.c                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %.inv = fcmp oge double %i.f, f0x3CB0000000000000
  %i.g = select i1 %.inv, double %i.f, double f0x3CB0000000000000
  %i.h = tail call double @sqrt(double noundef %i.g) #11 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  %. = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %0)
  %i.l = select i1 %i.k, i32 %0, i32 %.           ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not661 = icmp eq ptr %i.n, null
  %i.o = load ptr, ptr @stdout, align 8
  %i.p = select i1 %.not661, ptr %i.o, ptr %i.n   ; 27 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 13 uses
  store i32 0, ptr %i.q, align 4, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store i32 0, ptr %i.r, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i32 0, ptr %i.s, align 8, !tbaa !19
  %i.t = icmp slt i32 %0, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.28, i32 noundef %0) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !16
  br label %bb.jx

bb.c:                                             ; preds = %bb.a
  %i.w = icmp slt i32 %4, %0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.29, i32 noundef %4, i32 noundef %0) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !16
  br label %bb.jx

bb.e:                                             ; preds = %bb.c
  %i.z = load double, ptr %8, align 8, !tbaa !21  ; 3 uses
  %i.aa = fcmp olt double %i.z, 0.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.pre1217 = load double, ptr %.phi.trans.insert, align 8, !tbaa !22 ; 3 uses
  %i.ab = fcmp olt double %.pre1217, 0.000000e+00
  %or.cond1353 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond1353, label %._crit_edge1216, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  br i1 %i.ae, label %._crit_edge1216, label %bb.g

._crit_edge1216:                                  ; preds = %bb.e, %bb.f
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !23
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.30, double noundef %i.z, double noundef %.pre1217, double noundef %i.ah) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !16
  br label %bb.jx

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp slt i32 %i.d, 1
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.31, i32 noundef %i.d) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !16
  br label %bb.jx

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %i.ao = fcmp ugt double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.32, double noundef %i.an) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !16
  br label %bb.jx

bb.k:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !25 ; 3 uses
  %switch = icmp ult i32 %i.as, 2
  br i1 %switch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.33, i32 noundef %i.as) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !16
  br label %bb.jx

bb.m:                                             ; preds = %bb.k
  %i.av = shl nuw nsw i32 %4, 1
  %i.aw = mul nuw nsw i32 %0, 5
  %i.ax = add nuw nsw i32 %i.av, %i.aw
  %i.ay = mul nsw i32 %4, %0                      ; 2 uses
  %i.az = add nuw nsw i32 %i.ax, %i.ay
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = zext nneg i32 %0 to i64                 ; 84 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bb, %i.bd
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #13 ; 45 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 9, ptr %i.q, align 4, !tbaa !16
  br label %bb.jx

bb.o:                                             ; preds = %bb.m
  %i.bh = zext i32 %4 to i64                      ; 74 uses
  %i.bi = shl nuw nsw i64 %i.bh, 3                ; 16 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 %i.bi  ; 24 uses
  %i.bk = shl nuw nsw i64 %i.bc, 3                ; 7 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.bk  ; 14 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk  ; 31 uses
  %i.bn = zext i32 %i.ay to i64                   ; 7 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3                ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bm, i64 %i.bo  ; 30 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bk  ; 26 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bk  ; 45 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bk  ; 62 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bi  ; 24 uses
  %.not664 = icmp eq i32 %i.as, 0
  %i.bu = icmp ne i32 %0, 0
  %or.cond = and i1 %.not664, %i.bu
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit873

.lr.ph.preheader:                                 ; preds = %bb.o
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader1798, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bc, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bv, align 8, !tbaa !26
  store <2 x double> splat (double 1.000000e+00), ptr %i.bw, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bc
  br i1 %cmp.n, label %.loopexit873, label %.lr.ph.preheader1798

.lr.ph.preheader1798:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1798, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1798 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.by, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bc
  br i1 %exitcond.not, label %.loopexit873, label %.lr.ph, !llvm.loop !31

.loopexit873:                                     ; preds = %.lr.ph, %middle.block, %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 17 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !32 ; 2 uses
  %i.cb = and i32 %i.ca, 1
  %.not665 = icmp eq i32 %i.cb, 0
  br i1 %.not665, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit873
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.34, double noundef %i.z, double noundef %i.ad, double noundef %.pre1217) #11 ; 0 uses
  %.pre = load i32, ptr %i.bz, align 8, !tbaa !32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit873
  %i.cd = phi i32 [ %.pre, %bb.p ], [ %i.ca, %.loopexit873 ]
  %i.ce = and i32 %i.cd, 2
  %.not666 = icmp eq i32 %i.ce, 0
  br i1 %.not666, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = tail call i64 @fwrite(ptr nonnull @.str.53, i64 7, i64 1, ptr %i.p) ; 0 uses
  %i.cg = icmp sgt i32 %i.l, 0
  br i1 %i.cg, label %.lr.ph.preheader.i, label %_ZL13lm_print_parsiPKdP8_IO_FILE.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !26
  %i.cj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.54, double noundef %i.ci) #11 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13lm_print_parsiPKdP8_IO_FILE.exit, label %.lr.ph.i, !llvm.loop !33

_ZL13lm_print_parsiPKdP8_IO_FILE.exit:            ; preds = %.lr.ph.i, %bb.r
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.p) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZL13lm_print_parsiPKdP8_IO_FILE.exit, %bb.q
  tail call void %7(ptr noundef %1, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.r)
  %i.ck = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.cl = and i32 %i.ck, 8
  %.not667 = icmp eq i32 %i.cl, 0
  br i1 %.not667, label %.loopexit869, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not668 = icmp eq ptr %5, null
  %.not1357 = icmp eq i32 %4, 0                   ; 2 uses
  br i1 %.not668, label %.preheader868, label %.preheader870

.preheader870:                                    ; preds = %bb.t
  br i1 %.not1357, label %.loopexit869, label %.lr.ph917

.preheader868:                                    ; preds = %bb.t
  br i1 %.not1357, label %.loopexit869, label %.lr.ph919

.lr.ph917:                                        ; preds = %.preheader870, %.lr.ph917
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %.lr.ph917 ], [ 0, %.preheader870 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1058
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !26 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1058
  %i.cp = load double, ptr %i.co, align 8, !tbaa !26
  %i.cq = fsub double %i.cp, %i.cn
  %i.cr = trunc nuw nsw i64 %indvars.iv1058 to i32
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.35, i32 noundef %i.cr, double noundef %i.cn, double noundef %i.cq) #11 ; 0 uses
  %indvars.iv.next1059 = add nuw nsw i64 %indvars.iv1058, 1 ; 2 uses
  %exitcond1062.not = icmp eq i64 %indvars.iv.next1059, %i.bh
  br i1 %exitcond1062.not, label %.loopexit869, label %.lr.ph917, !llvm.loop !34

.lr.ph919:                                        ; preds = %.preheader868, %.lr.ph919
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %.lr.ph919 ], [ 0, %.preheader868 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1063
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !26
  %i.cv = trunc nuw nsw i64 %indvars.iv1063 to i32
  %i.cw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.36, i32 noundef %i.cv, double noundef %i.cu) #11 ; 0 uses
  %indvars.iv.next1064 = add nuw nsw i64 %indvars.iv1063, 1 ; 2 uses
  %exitcond1067.not = icmp eq i64 %indvars.iv.next1064, %i.bh
  br i1 %exitcond1067.not, label %.loopexit869, label %.lr.ph919, !llvm.loop !35

.loopexit869:                                     ; preds = %.lr.ph917, %.lr.ph919, %.preheader870, %.preheader868, %bb.s
  store i32 1, ptr %i.s, align 8, !tbaa !19
  %i.cx = load i32, ptr %i.r, align 8, !tbaa !18
  %.not669 = icmp eq i32 %i.cx, 0
  br i1 %.not669, label %bb.u, label %.thread

bb.u:                                             ; preds = %.loopexit869
  %i.cy = icmp eq i32 %0, 0
  br i1 %i.cy, label %.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = tail call noundef double @_Z8lm_fnormiPKdS0_(i32 noundef %4, ptr noundef nonnull %i.bf, ptr noundef %5) ; 4 uses
  %i.da = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.db = and i32 %i.da, 2
  %.not670 = icmp eq i32 %i.db, 0
  br i1 %.not670, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.37, double noundef %i.cz) #11 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dd = tail call double @llvm.fabs.f64(double %i.cz)
  %i.de = fcmp ueq double %i.dd, +inf
  br i1 %i.de, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.df = load i32, ptr %i.bz, align 8, !tbaa !32
  %.not671 = icmp eq i32 %i.df, 0
  br i1 %.not671, label %.thread.sink.split, label %.thread.sink.split.sink.split

bb.z:                                             ; preds = %bb.x
  %i.dg = fcmp ugt double %i.cz, f0x0010000000000000
  br i1 %i.dg, label %.preheader867, label %.thread.sink.split

.preheader867:                                    ; preds = %bb.z
  %i.dh = fmul double %i.h, %i.h                  ; 2 uses
  %.not1358 = icmp eq i32 %4, 0                   ; 7 uses
  %i.di = uitofp nneg i32 %4 to double
  %i.dj = add nuw i32 %4, 1                       ; 7 uses
  %.not673 = icmp eq ptr %5, null                 ; 2 uses
  %i.dk = icmp sgt i32 %i.l, 0                    ; 2 uses
  %i.dl = uitofp nneg i32 %0 to double
  %i.dm = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dl, i64 1
  %i.do = fdiv <2 x double> splat (double f0x5FEFFFFFFFFFFFFF), %i.dn ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 1 ; 5 uses
  %i.dq = uitofp nneg i32 %0 to double
  %i.dr = fdiv double f0x5FEFFFFFFFFFFFFF, %i.dq  ; 4 uses
  %i.ds = zext nneg i32 %4 to i64                 ; 4 uses
  %i.dt = zext nneg i32 %0 to i64                 ; 11 uses
  %i.du = shl nuw nsw i64 %i.dt, 3
  %wide.trip.count1187 = zext nneg i32 %i.l to i64
  %i.dv = shl nuw nsw i64 %i.bc, 5
  %i.dw = add nuw nsw i64 %i.bh, %i.bn
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = shl nuw nsw i64 %i.bc, 4                ; 2 uses
  %10 = shl nuw nsw i64 %i.bh, 3
  %11 = add nuw nsw i64 %i.dy, %i.bi              ; 2 uses
  %i.dz = add nuw nsw i64 %i.bi, 8
  %i.ea = getelementptr i8, ptr %i.bf, i64 %11
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.bo
  %scevgep1433 = getelementptr i8, ptr %i.eb, i64 8
  %i.ec = mul nuw nsw i64 %i.bc, 40
  %i.ed = add nuw nsw i64 %i.bh, %i.bn
  %i.ee = shl nuw nsw i64 %i.ed, 3                ; 2 uses
  %i.ef = mul nuw nsw i64 %i.bc, 48
  %i.eg = getelementptr i8, ptr %i.bf, i64 %i.ef
  %scevgep1454 = getelementptr i8, ptr %i.eg, i64 %i.ee ; 3 uses
  %i.eh = shl nuw nsw i64 %i.bc, 4
  %i.ei = add nuw nsw i64 %i.bi, 8
  %i.ej = mul nuw nsw i64 %i.bc, 24               ; 3 uses
  %i.ek = shl nuw nsw i64 %i.bh, 3
  %i.el = add nuw nsw i64 %i.bh, %i.bn
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = shl nuw nsw i64 %i.bc, 4
  %i.eo = add nuw nsw i64 %i.bi, 8                ; 2 uses
  %i.ep = shl nuw nsw i64 %i.bh, 3
  %i.eq = shl nuw nsw i64 %i.bh, 3
  %i.er = mul nuw nsw i64 %i.bc, 40
  %i.es = add nuw nsw i64 %i.bh, %i.bn
  %i.et = shl nuw nsw i64 %i.es, 3
  %i.eu = add nuw nsw i64 %i.er, %i.et
  %i.ev = shl nuw nsw i64 %i.bc, 4
  %i.ew = shl nuw nsw i64 %i.bh, 3
  %i.ex = mul nsw i64 %i.bh, -8
  %i.ey = sub nuw nsw i64 -8, %i.bi
  %i.ez = mul nuw nsw i64 %i.bc, 40
  %i.fa = add nuw nsw i64 %i.bh, %i.bn
  %i.fb = shl nuw nsw i64 %i.bc, 4                ; 5 uses
  %i.fc = add nuw nsw i64 %i.bi, 8                ; 2 uses
  %i.fd = shl nuw nsw i64 %i.bh, 4                ; 2 uses
  %i.fe = add nuw nsw i64 %i.fb, %i.fd            ; 2 uses
  %i.ff = shl nuw nsw i64 %i.bh, 3
  %i.fg = add nuw nsw i64 %i.bk, 8
  %i.fh = mul i64 %i.fg, %i.bh
  %i.fi = getelementptr i8, ptr %i.bf, i64 %i.fh
  %scevgep1675 = getelementptr i8, ptr %i.fi, i64 %i.fb
  %i.fj = getelementptr i8, ptr %i.bf, i64 %i.fd
  %scevgep1678 = getelementptr i8, ptr %i.fj, i64 %i.fb
  %i.fk = add nuw nsw i64 %i.bk, 8
  %i.fl = mul i64 %i.fk, %i.bh
  %i.fm = shl nuw nsw i64 %i.bc, 4
  %i.fn = getelementptr i8, ptr %i.bf, i64 %i.fl
  %scevgep1713 = getelementptr i8, ptr %i.fn, i64 %i.fm
  %i.fo = add nuw nsw i64 %i.bh, %i.bc
  %i.fp = shl nuw nsw i64 %i.fo, 4
  %scevgep1714 = getelementptr i8, ptr %i.bf, i64 %i.fp
  %.neg = mul nsw i64 %i.bc, -24
  %i.fq = shl nuw nsw i64 %i.bn, 3
  %i.fr = sub nsw i64 %.neg, %i.fq
  %i.fs = shl nuw nsw i64 %i.bh, 3
  %i.ft = shl nuw nsw i64 %i.bc, 4
  %i.fu = add nuw nsw i64 %i.ft, %i.bi
  %i.fv = add nsw i64 %i.bh, -1                   ; 3 uses
  %i.fw = add nsw i64 %i.bc, -1                   ; 6 uses
  %i.fx = add nsw i64 %i.bc, -2
  %min.iters.check1737 = icmp eq i32 %4, 1
  %invariant.op = add i64 %i.fr, -1
  %invariant.op1912 = add i64 %i.fu, -1
  %n.vec1739 = and i64 %i.bh, 4294967294          ; 3 uses
  %cmp.n1748 = icmp eq i64 %n.vec1739, %i.bh
  %xtraiter = and i64 %i.bh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fy = extractelement <2 x double> %i.do, i64 0
  %i.fz = getelementptr i8, ptr %i.bf, i64 %i.fe
  %i.ga = getelementptr i8, ptr %i.bf, i64 %i.fb
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.bi
  %min.iters.check1720 = icmp ult i32 %4, 4
  %n.vec1722 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1731 = icmp eq i64 %n.vec1722, %i.bh
  %xtraiter1801 = and i64 %i.bh, 1
  %lcmp.mod1802.not = icmp eq i64 %xtraiter1801, 0
  %i.gc = add nsw i64 %i.bh, -1
  %i.gd = add nsw i64 %i.bh, -1
  %min.iters.check1660 = icmp ult i32 %4, 4
  %n.vec1662 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1671 = icmp eq i64 %n.vec1662, %i.bh
  %min.iters.check1648 = icmp ult i32 %4, 4
  %n.vec1650 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1657 = icmp eq i64 %n.vec1650, %i.bh
  %invariant.gep1914 = getelementptr i8, ptr %i.bf, i64 %i.ez
  %i.ge = getelementptr i8, ptr %i.bf, i64 %i.fb
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.bi
  %i.gg = getelementptr i8, ptr %i.bf, i64 %i.fe
  %i.gh = add nsw i64 %i.bh, -1
  %min.iters.check1611 = icmp ult i32 %0, 4
  %n.vec1613 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1622 = icmp eq i64 %n.vec1613, %i.bc
  %min.iters.check1599 = icmp ult i32 %0, 4
  %n.vec1601 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1608 = icmp eq i64 %n.vec1601, %i.bc
  %min.iters.check1585 = icmp ult i32 %0, 4
  %n.vec1587 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1596 = icmp eq i64 %n.vec1587, %i.bc
  %xtraiter1821 = and i64 %i.bc, 3                ; 3 uses
  %i.gi = icmp ult i64 %i.fw, 3
  %unroll_iter1825 = and i64 %i.bc, 2147483644
  %lcmp.mod1823.not = icmp eq i64 %xtraiter1821, 0
  %lcmp.mod1824 = icmp ne i64 %xtraiter1821, 0
  %min.iters.check1546 = icmp ult i32 %0, 4
  %n.vec1548 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1557 = icmp eq i64 %n.vec1548, %i.bc
  %xtraiter1827 = and i64 %i.bc, 1
  %i.gj = icmp eq i64 %i.fw, 0
  %unroll_iter1831 = and i64 %i.bc, 2147483646
  %lcmp.mod1829.not = icmp eq i64 %xtraiter1827, 0
  %lcmp.mod1830 = trunc i32 %0 to i1
  %min.iters.check1532 = icmp ult i32 %0, 4
  %n.vec1534 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1543 = icmp eq i64 %n.vec1534, %i.bc
  %ident.check.not = icmp eq i32 %4, 1
  %invariant.gep1916 = getelementptr i8, ptr %i.bf, i64 %i.ej
  %invariant.gep1918 = getelementptr i8, ptr %invariant.gep1916, i64 %i.em
  %i.gk = getelementptr i8, ptr %i.bf, i64 %i.en
  %i.gl = getelementptr i8, ptr %i.gk, i64 %i.bi
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %i.gn = getelementptr i8, ptr %i.bf, i64 %i.ej
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.bi
  %xtraiter1854 = and i64 %i.bc, 1
  %i.gp = icmp eq i64 %i.fw, 0
  %unroll_iter1859 = and i64 %i.bc, 2147483646
  %lcmp.mod1856.not = icmp eq i64 %xtraiter1854, 0
  %lcmp.mod1858 = trunc i32 %0 to i1
  %xtraiter1861 = and i64 %i.bc, 3                ; 3 uses
  %i.gq = icmp ult i64 %i.fw, 3
  %unroll_iter1865 = and i64 %i.bc, 2147483644
  %lcmp.mod1863.not = icmp eq i64 %xtraiter1861, 0
  %lcmp.mod1864 = icmp ne i64 %xtraiter1861, 0
  %min.iters.check1481 = icmp ult i32 %0, 4
  %n.vec1483 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1492 = icmp eq i64 %n.vec1483, %i.bc
  %xtraiter1868 = and i64 %i.bc, 1
  %i.gr = icmp eq i64 %i.fw, 0
  %unroll_iter1872 = and i64 %i.bc, 2147483646
  %lcmp.mod1870.not = icmp eq i64 %xtraiter1868, 0
  %lcmp.mod1871 = trunc i32 %0 to i1
  %i.gs = getelementptr i8, ptr %i.bf, i64 %i.ec
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.ee
  %i.gu = getelementptr i8, ptr %i.gt, i64 8
  %i.gv = getelementptr i8, ptr %i.bf, i64 %i.eh
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.bi
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  %i.gy = getelementptr i8, ptr %i.bf, i64 %i.ej
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.bi
  %bound11461 = icmp ult ptr %i.bs, %scevgep1454
  %i.ha = add nsw i64 %i.bc, -1
  %12 = getelementptr i8, ptr %i.bf, i64 %11
  %i.hb = getelementptr i8, ptr %12, i64 8
  %i.hc = getelementptr i8, ptr %i.bf, i64 %i.dy
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.bi
  %i.he = getelementptr i8, ptr %i.bf, i64 %i.dv
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.dx
  %i.hg = getelementptr i8, ptr %i.hf, i64 8
  %min.iters.check1418 = icmp ult i32 %0, 4
  %n.vec1420 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1429 = icmp eq i64 %n.vec1420, %i.bc
  %min.iters.check1404 = icmp ult i32 %0, 4
  %n.vec1406 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1415 = icmp eq i64 %n.vec1406, %i.bc
  %min.iters.check1393 = icmp ult i32 %4, 4
  %n.vec1395 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1401 = icmp eq i64 %n.vec1395, %i.bh
  br label %.lr.ph924.preheader

.lr.ph924.preheader:                              ; preds = %bb.jn, %.preheader867
  %.0825 = phi double [ %.2827, %bb.jn ], [ 0.000000e+00, %.preheader867 ]
  %.0608 = phi double [ %.2610, %bb.jn ], [ %i.cz, %.preheader867 ] ; 2 uses
  %.0595 = phi double [ %.5600, %bb.jn ], [ 0.000000e+00, %.preheader867 ] ; 3 uses
  %.0594 = phi double [ %.4, %bb.jn ], [ 0.000000e+00, %.preheader867 ] ; 5 uses
  %.0592 = phi i32 [ %i.bnt, %bb.jn ], [ 0, %.preheader867 ] ; 3 uses
  br label %.lr.ph924

.lr.ph924:                                        ; preds = %.lr.ph924.preheader, %._crit_edge
  %indvars.iv1073 = phi i64 [ 0, %.lr.ph924.preheader ], [ %indvars.iv.next1074, %._crit_edge ] ; 4 uses
  %i.hh = mul i64 %i.fs, %indvars.iv1073          ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1073 ; 3 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !26 ; 3 uses
  %i.hk = tail call double @llvm.fabs.f64(double %i.hj)
  %i.hl = fmul double %i.h, %i.hk                 ; 2 uses
  %.inv840 = fcmp oge double %i.dh, %i.hl
  %.698 = select i1 %.inv840, double %i.dh, double %i.hl ; 5 uses
  %i.hm = fadd double %i.hj, %.698
  store double %i.hm, ptr %i.hi, align 8, !tbaa !26
  tail call void %7(ptr noundef %1, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.r)
  %i.hn = load i32, ptr %i.s, align 8, !tbaa !19
  %i.ho = add nsw i32 %i.hn, 1
  store i32 %i.ho, ptr %i.s, align 8, !tbaa !19
  %i.hp = load i32, ptr %i.r, align 8, !tbaa !18
  %.not691 = icmp eq i32 %i.hp, 0
  br i1 %.not691, label %.preheader854, label %.thread

.preheader854:                                    ; preds = %.lr.ph924
  br i1 %.not1358, label %._crit_edge, label %.lr.ph921

.lr.ph921:                                        ; preds = %.preheader854
  %i.hq = mul nuw nsw i64 %indvars.iv1073, %i.bh
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.hq ; 4 uses
  br i1 %min.iters.check1737, label %scalar.ph1736.preheader, label %vector.memcheck1733

vector.memcheck1733:                              ; preds = %.lr.ph921
  %.reass = add i64 %i.hh, %invariant.op
  %diff.check = icmp ult i64 %.reass, 15
  %.reass1913 = add i64 %i.hh, %invariant.op1912
  %diff.check1734 = icmp ult i64 %.reass1913, 15
  %conflict.rdx1735 = or i1 %diff.check, %diff.check1734
  br i1 %conflict.rdx1735, label %scalar.ph1736.preheader, label %vector.ph1738

vector.ph1738:                                    ; preds = %vector.memcheck1733
  %broadcast.splatinsert1740 = insertelement <2 x double> poison, double %.698, i64 0
  %broadcast.splat1741 = shufflevector <2 x double> %broadcast.splatinsert1740, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1742

vector.body1742:                                  ; preds = %vector.body1742, %vector.ph1738
  %index1743 = phi i64 [ 0, %vector.ph1738 ], [ %index.next1746, %vector.body1742 ] ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1743
  %wide.load1744 = load <2 x double>, ptr %i.hr, align 8, !tbaa !26
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1743
  %wide.load1745 = load <2 x double>, ptr %i.hs, align 8, !tbaa !26
  %i.ht = fsub <2 x double> %wide.load1744, %wide.load1745
  %i.hu = fdiv <2 x double> %i.ht, %broadcast.splat1741
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1743
  store <2 x double> %i.hu, ptr %i.hv, align 8, !tbaa !26
  %index.next1746 = add nuw i64 %index1743, 2     ; 2 uses
  %i.hw = icmp eq i64 %index.next1746, %n.vec1739
  br i1 %i.hw, label %middle.block1747, label %vector.body1742, !llvm.loop !36

middle.block1747:                                 ; preds = %vector.body1742
  br i1 %cmp.n1748, label %._crit_edge, label %scalar.ph1736.preheader

scalar.ph1736.preheader:                          ; preds = %vector.memcheck1733, %.lr.ph921, %middle.block1747
  %indvars.iv1068.ph = phi i64 [ 0, %vector.memcheck1733 ], [ 0, %.lr.ph921 ], [ %n.vec1739, %middle.block1747 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph1736.prol.loopexit, label %scalar.ph1736.prol

scalar.ph1736.prol:                               ; preds = %scalar.ph1736.preheader
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1068.ph
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !26
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1068.ph
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !26
  %i.ib = fsub double %i.hy, %i.ia
  %i.ic = fdiv double %i.ib, %.698
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1068.ph
  store double %i.ic, ptr %gep.prol, align 8, !tbaa !26
  %indvars.iv.next1069.prol = or disjoint i64 %indvars.iv1068.ph, 1
  br label %scalar.ph1736.prol.loopexit

scalar.ph1736.prol.loopexit:                      ; preds = %scalar.ph1736.prol, %scalar.ph1736.preheader
  %indvars.iv1068.unr = phi i64 [ %indvars.iv1068.ph, %scalar.ph1736.preheader ], [ %indvars.iv.next1069.prol, %scalar.ph1736.prol ]
  %i.id = icmp eq i64 %i.fv, %indvars.iv1068.ph
  br i1 %i.id, label %._crit_edge, label %scalar.ph1736

scalar.ph1736:                                    ; preds = %scalar.ph1736.prol.loopexit, %scalar.ph1736
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069.1, %scalar.ph1736 ], [ %indvars.iv1068.unr, %scalar.ph1736.prol.loopexit ] ; 5 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1068
  %i.if = load double, ptr %i.ie, align 8, !tbaa !26
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1068
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !26
  %i.ii = fsub double %i.if, %i.ih
  %i.ij = fdiv double %i.ii, %.698
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1068
  store double %i.ij, ptr %gep, align 8, !tbaa !26
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 1 ; 3 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1069
  %i.il = load double, ptr %i.ik, align 8, !tbaa !26
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next1069
  %i.in = load double, ptr %i.im, align 8, !tbaa !26
  %i.io = fsub double %i.il, %i.in
  %i.ip = fdiv double %i.io, %.698
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next1069
  store double %i.ip, ptr %gep.1, align 8, !tbaa !26
  %indvars.iv.next1069.1 = add nuw nsw i64 %indvars.iv1068, 2 ; 2 uses
  %exitcond1072.not.1 = icmp eq i64 %indvars.iv.next1069.1, %i.bh
  br i1 %exitcond1072.not.1, label %._crit_edge, label %scalar.ph1736, !llvm.loop !37

._crit_edge:                                      ; preds = %scalar.ph1736.prol.loopexit, %scalar.ph1736, %middle.block1747, %.preheader854
  store double %i.hj, ptr %i.hi, align 8, !tbaa !26
  %indvars.iv.next1074 = add nuw nsw i64 %indvars.iv1073, 1 ; 2 uses
  %exitcond1077.not = icmp eq i64 %indvars.iv.next1074, %i.dt
  br i1 %exitcond1077.not, label %._crit_edge925, label %.lr.ph924, !llvm.loop !38

._crit_edge925:                                   ; preds = %._crit_edge
  %i.iq = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.ir = and i32 %i.iq, 16
  %.not672 = icmp eq i32 %i.ir, 0
  br i1 %.not672, label %.lr.ph.preheader.i.i.preheader, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge925
  %i.is = tail call i64 @fwrite(ptr nonnull @.str.39, i64 9, i64 1, ptr %i.p) ; 0 uses
  br i1 %.not1358, label %.lr.ph.preheader.i.i.preheader, label %.lr.ph928.preheader

.lr.ph928.preheader:                              ; preds = %bb.aa, %._crit_edge929
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %._crit_edge929 ], [ 0, %bb.aa ] ; 2 uses
  %i.it = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr %i.p) ; 0 uses
  %invariant.gep1343 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv1084
  br label %.lr.ph928

.lr.ph928:                                        ; preds = %.lr.ph928.preheader, %.lr.ph928
  %indvars.iv1078 = phi i64 [ 0, %.lr.ph928.preheader ], [ %indvars.iv.next1079, %.lr.ph928 ] ; 2 uses
  %i.iu = mul nuw nsw i64 %indvars.iv1078, %i.bh
  %gep1344 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1343, i64 %i.iu
  %i.iv = load double, ptr %gep1344, align 8, !tbaa !26
  %i.iw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.41, double noundef %i.iv) #11 ; 0 uses
  %indvars.iv.next1079 = add nuw nsw i64 %indvars.iv1078, 1 ; 2 uses
  %exitcond1083.not = icmp eq i64 %indvars.iv.next1079, %i.dt
  br i1 %exitcond1083.not, label %._crit_edge929, label %.lr.ph928, !llvm.loop !39

._crit_edge929:                                   ; preds = %.lr.ph928
  %fputc690 = tail call i32 @fputc(i32 10, ptr %i.p) ; 0 uses
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 1 ; 2 uses
  %exitcond1088.not = icmp eq i64 %indvars.iv.next1085, %i.bh
  br i1 %exitcond1088.not, label %.lr.ph.preheader.i.i.preheader, label %.lr.ph928.preheader, !llvm.loop !40

.lr.ph.preheader.i.i.preheader:                   ; preds = %._crit_edge929, %._crit_edge925, %bb.aa
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.preheader, %_Z8lm_enormiPKd.exit.i
  %indvars.iv.i702 = phi i64 [ %indvars.iv.next.i703, %_Z8lm_enormiPKd.exit.i ], [ 0, %.lr.ph.preheader.i.i.preheader ] ; 7 uses
  %i.ix = mul nuw nsw i64 %indvars.iv.i702, %i.bh
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ix
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ak, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ak ] ; 2 uses
  %.076.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.ak ] ; 8 uses
  %.06075.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.161.i.i, %bb.ak ] ; 8 uses
  %.06274.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.163.i.i, %bb.ak ] ; 6 uses
  %.06473.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.165.i.i, %bb.ak ] ; 6 uses
  %.06672.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.167.i.i, %bb.ak ] ; 6 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv.i.i
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !26 ; 4 uses
  %i.jb = tail call double @llvm.fabs.f64(double %i.ja) ; 10 uses
  %i.jc = fcmp ogt double %i.jb, f0x2000000000000000
  br i1 %i.jc, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.jd = fcmp olt double %i.jb, %i.fy
  br i1 %i.jd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.je = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.ja, double %.06473.i.i)
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.jf = fcmp ogt double %i.jb, %.06075.i.i
  br i1 %i.jf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jg = fdiv double %.06075.i.i, %i.jb          ; 2 uses
  %i.jh = fmul double %.06672.i.i, %i.jg
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.jh, double %i.jg, double 1.000000e+00)
  br label %bb.ak
end_hunk_0
begin_hunk_1_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a
  %i.bas = fcmp une double %.165.i352.i, 0.000000e+00
  br i1 %i.bas, label %bb.gd, label %.thread.i341.i

bb.gd:                                            ; preds = %bb.gc
  %i.bat = fcmp ult double %.165.i352.i, %.1.i355.i
  br i1 %i.bat, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.bau = fdiv double %.1.i355.i, %.165.i352.i
  %i.bav = fmul double %.163.i353.i, %.1.i355.i
  %i.baw = tail call double @llvm.fmuladd.f64(double %i.bau, double %i.bav, double 1.000000e+00)
  %i.bax = fmul double %.165.i352.i, %i.baw
  %i.bay = tail call double @sqrt(double noundef %i.bax) #11
  br label %_Z8lm_enormiPKd.exit359.i

bb.gf:                                            ; preds = %bb.gd
  %i.baz = fdiv double %.165.i352.i, %.1.i355.i
  %i.bba = tail call double @llvm.fmuladd.f64(double %.1.i355.i, double %.163.i353.i, double %i.baz)
  %i.bbb = fmul double %.1.i355.i, %i.bba
  %i.bbc = tail call double @sqrt(double noundef %i.bbb) #11
  br label %_Z8lm_enormiPKd.exit359.i

.thread.i341.i:                                   ; preds = %bb.gc
  %i.bbd = tail call double @sqrt(double noundef %.163.i353.i) #11
  %i.bbe = fmul double %.1.i355.i, %i.bbd
  br label %_Z8lm_enormiPKd.exit359.i

_Z8lm_enormiPKd.exit359.i:                        ; preds = %.thread.i341.i, %bb.gf, %bb.ge, %bb.gb
  %.069.i342.i = phi double [ %i.bar, %bb.gb ], [ %i.bay, %bb.ge ], [ %i.bbc, %bb.gf ], [ %i.bbe, %.thread.i341.i ] ; 2 uses
  %i.bbf = fdiv double %i.awq, %.3598
  %i.bbg = fdiv double %i.bbf, %.069.i342.i
  %i.bbh = fdiv double %i.bbg, %.069.i342.i
  %i.bbi = fcmp ogt double %i.awq, 0.000000e+00
  br i1 %i.bbi, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_Z8lm_enormiPKd.exit359.i
  %.inv362.i = fcmp oge double %.1254.i, %i.amx
  %..1254.i = select i1 %.inv362.i, double %.1254.i, double %i.amx
  br label %bb.gj

bb.gh:                                            ; preds = %_Z8lm_enormiPKd.exit359.i
  %i.bbj = fcmp olt double %i.awq, 0.000000e+00
  br i1 %i.bbj, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %.inv361.i = fcmp ole double %.1252.i, %i.amx
  %..1252.i = select i1 %.inv361.i, double %.1252.i, double %i.amx
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gg
  %.2255.i = phi double [ %..1254.i, %bb.gg ], [ %.1254.i, %bb.gi ], [ %.1254.i, %bb.gh ] ; 3 uses
  %.2.i = phi double [ %.1252.i, %bb.gg ], [ %..1252.i, %bb.gi ], [ %.1252.i, %bb.gh ]
  %i.bbk = fadd double %i.amx, %i.bbh             ; 2 uses
  %.inv363.i = fcmp oge double %.2255.i, %i.bbk
  %..2255.i = select i1 %.inv363.i, double %.2255.i, double %i.bbk
  %i.bbl = add nuw nsw i32 %.0262.i, 1
  br label %bb.en, !llvm.loop !144

_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit:           ; preds = %_Z8lm_enormiPKd.exit340.i, %bb.fp, %bb.fq, %_Z8lm_enormiPKd.exit.i727
  %.6 = phi double [ 0.000000e+00, %_Z8lm_enormiPKd.exit.i727 ], [ %i.amx, %bb.fq ], [ %i.amx, %bb.fp ], [ %i.amx, %_Z8lm_enormiPKd.exit340.i ] ; 6 uses
  br label %.lr.ph.i739

.lr.ph.i739:                                      ; preds = %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, %bb.gt
  %indvars.iv.i740 = phi i64 [ %indvars.iv.next.i742, %bb.gt ], [ 0, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 2 uses
  %.076.i = phi double [ %.1.i741, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 8 uses
  %.06075.i = phi double [ %.161.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 8 uses
  %.06274.i = phi double [ %.163.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %.06473.i = phi double [ %.165.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %.06672.i = phi double [ %.167.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %i.bbm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i740
  %i.bbn = load double, ptr %i.bbm, align 8, !tbaa !26 ; 4 uses
  %i.bbo = tail call double @llvm.fabs.f64(double %i.bbn) ; 10 uses
  %i.bbp = fcmp ogt double %i.bbo, f0x2000000000000000
  br i1 %i.bbp, label %bb.gk, label %bb.gp

bb.gk:                                            ; preds = %.lr.ph.i739
  %i.bbq = fcmp olt double %i.bbo, %i.dr
  br i1 %i.bbq, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.bbr = tail call double @llvm.fmuladd.f64(double %i.bbn, double %i.bbn, double %.06473.i)
  br label %bb.gt

bb.gm:                                            ; preds = %bb.gk
  %i.bbs = fcmp ogt double %i.bbo, %.06075.i
  br i1 %i.bbs, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.bbt = fdiv double %.06075.i, %i.bbo          ; 2 uses
  %i.bbu = fmul double %.06672.i, %i.bbt
  %i.bbv = tail call double @llvm.fmuladd.f64(double %i.bbu, double %i.bbt, double 1.000000e+00)
  br label %bb.gt

bb.go:                                            ; preds = %bb.gm
  %i.bbw = fdiv double %i.bbo, %.06075.i          ; 2 uses
  %i.bbx = tail call double @llvm.fmuladd.f64(double %i.bbw, double %i.bbw, double %.06672.i)
  br label %bb.gt

bb.gp:                                            ; preds = %.lr.ph.i739
  %i.bby = fcmp ogt double %i.bbo, %.076.i
  br i1 %i.bby, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.bbz = fdiv double %.076.i, %i.bbo            ; 2 uses
  %i.bca = fmul double %.06274.i, %i.bbz
  %i.bcb = tail call double @llvm.fmuladd.f64(double %i.bca, double %i.bbz, double 1.000000e+00)
  br label %bb.gt

bb.gr:                                            ; preds = %bb.gp
  %i.bcc = fcmp une double %i.bbn, 0.000000e+00
  br i1 %i.bcc, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bcd = fdiv double %i.bbo, %.076.i            ; 2 uses
  %i.bce = tail call double @llvm.fmuladd.f64(double %i.bcd, double %i.bcd, double %.06274.i)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gq, %bb.go, %bb.gn, %bb.gl
  %.167.i = phi double [ %.06672.i, %bb.gl ], [ %i.bbv, %bb.gn ], [ %i.bbx, %bb.go ], [ %.06672.i, %bb.gq ], [ %.06672.i, %bb.gs ], [ %.06672.i, %bb.gr ] ; 3 uses
  %.165.i = phi double [ %i.bbr, %bb.gl ], [ %.06473.i, %bb.gn ], [ %.06473.i, %bb.go ], [ %.06473.i, %bb.gq ], [ %.06473.i, %bb.gs ], [ %.06473.i, %bb.gr ] ; 7 uses
  %.163.i = phi double [ %.06274.i, %bb.gl ], [ %.06274.i, %bb.gn ], [ %.06274.i, %bb.go ], [ %i.bcb, %bb.gq ], [ %i.bce, %bb.gs ], [ %.06274.i, %bb.gr ] ; 4 uses
  %.161.i = phi double [ %.06075.i, %bb.gl ], [ %i.bbo, %bb.gn ], [ %.06075.i, %bb.go ], [ %.06075.i, %bb.gq ], [ %.06075.i, %bb.gs ], [ %.06075.i, %bb.gr ] ; 4 uses
  %.1.i741 = phi double [ %.076.i, %bb.gl ], [ %.076.i, %bb.gn ], [ %.076.i, %bb.go ], [ %i.bbo, %bb.gq ], [ %.076.i, %bb.gs ], [ %.076.i, %bb.gr ] ; 8 uses
  %indvars.iv.next.i742 = add nuw nsw i64 %indvars.iv.i740, 1 ; 2 uses
  %exitcond.not.i743 = icmp eq i64 %indvars.iv.next.i742, %i.bc
  br i1 %exitcond.not.i743, label %._crit_edge.i744, label %.lr.ph.i739, !llvm.loop !41

._crit_edge.i744:                                 ; preds = %bb.gt
  %i.bcf = fcmp une double %.167.i, 0.000000e+00
  br i1 %i.bcf, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %._crit_edge.i744
  %i.bcg = fdiv double %.165.i, %.161.i
  %i.bch = fdiv double %i.bcg, %.161.i
  %i.bci = fadd double %.167.i, %i.bch
  %i.bcj = tail call double @sqrt(double noundef %i.bci) #11
  %i.bck = fmul double %.161.i, %i.bcj
  br label %_Z8lm_enormiPKd.exit

bb.gv:                                            ; preds = %._crit_edge.i744
  %i.bcl = fcmp une double %.165.i, 0.000000e+00
  br i1 %i.bcl, label %bb.gw, label %.thread.i736

bb.gw:                                            ; preds = %bb.gv
  %i.bcm = fcmp ult double %.165.i, %.1.i741
  br i1 %i.bcm, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bcn = fdiv double %.1.i741, %.165.i
  %i.bco = fmul double %.163.i, %.1.i741
  %i.bcp = tail call double @llvm.fmuladd.f64(double %i.bcn, double %i.bco, double 1.000000e+00)
  %i.bcq = fmul double %.165.i, %i.bcp
  %i.bcr = tail call double @sqrt(double noundef %i.bcq) #11
  br label %_Z8lm_enormiPKd.exit

bb.gy:                                            ; preds = %bb.gw
  %i.bcs = fdiv double %.165.i, %.1.i741
  %i.bct = tail call double @llvm.fmuladd.f64(double %.1.i741, double %.163.i, double %i.bcs)
  %i.bcu = fmul double %.1.i741, %i.bct
  %i.bcv = tail call double @sqrt(double noundef %i.bcu) #11
  br label %_Z8lm_enormiPKd.exit

.thread.i736:                                     ; preds = %bb.gv
  %i.bcw = tail call double @sqrt(double noundef %.163.i) #11
  %i.bcx = fmul double %.1.i741, %i.bcw
  br label %_Z8lm_enormiPKd.exit

_Z8lm_enormiPKd.exit:                             ; preds = %bb.gu, %bb.gx, %bb.gy, %.thread.i736
  %.069.i = phi double [ %i.bck, %bb.gu ], [ %i.bcr, %bb.gx ], [ %i.bcv, %bb.gy ], [ %i.bcx, %.thread.i736 ] ; 7 uses
  %i.bcy = tail call double @llvm.fabs.f64(double %.069.i)
  %i.bcz = fcmp ueq double %i.bcy, +inf
  br i1 %i.bcz, label %bb.gz, label %.lr.ph973.preheader

bb.gz:                                            ; preds = %_Z8lm_enormiPKd.exit
  %i.bda = load i32, ptr %i.bz, align 8, !tbaa !32
  %.not678 = icmp eq i32 %i.bda, 0
  br i1 %.not678, label %.thread.sink.split, label %.thread.sink.split.sink.split

.lr.ph973.preheader:                              ; preds = %_Z8lm_enormiPKd.exit
  %i.bdb = fdiv double %.069.i, %.1609            ; 2 uses
  %i.bdc = fmul double %.6, %i.bdb
  %i.bdd = fmul double %i.bdb, %i.bdc             ; 2 uses
  br label %.lr.ph973

.lr.ph973:                                        ; preds = %.lr.ph973.preheader, %.loopexit1751
  %indvars.iv1160 = phi i64 [ 0, %.lr.ph973.preheader ], [ %indvars.iv.next1161, %.loopexit1751 ] ; 8 uses
  %indvars.iv1158 = phi i64 [ 1, %.lr.ph973.preheader ], [ %indvars.iv.next1159, %.loopexit1751 ] ; 6 uses
  %i.bde = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1160
  store double 0.000000e+00, ptr %i.bde, align 8, !tbaa !26
  %i.bdf = mul nuw nsw i64 %indvars.iv1160, %i.ds
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1160
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !42
  %i.bdi = sext i32 %i.bdh to i64                 ; 2 uses
  %i.bdj = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bdi ; 5 uses
  %invariant.gep1351 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bdf ; 4 uses
  %min.iters.check1439 = icmp samesign ult i64 %indvars.iv1158, 4
  br i1 %min.iters.check1439, label %scalar.ph1438.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph973
  %i.bdk = mul i64 %i.dz, %indvars.iv1160
  %scevgep1432 = getelementptr i8, ptr %i.hb, i64 %i.bdk
  %i.bdl = mul i64 %10, %indvars.iv1160
  %scevgep1431 = getelementptr i8, ptr %i.hd, i64 %i.bdl
  %i.bdm = shl i64 %indvars.iv1160, 3
  %scevgep = getelementptr i8, ptr %i.hg, i64 %i.bdm ; 2 uses
  %i.bdn = shl nsw i64 %i.bdi, 3
  %scevgep1434 = getelementptr i8, ptr %scevgep1433, i64 %i.bdn
  %bound0 = icmp ult ptr %i.br, %scevgep1432
  %bound1 = icmp ult ptr %scevgep1431, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound01435 = icmp ult ptr %i.br, %scevgep1434
  %bound11436 = icmp ult ptr %i.bdj, %scevgep
  %found.conflict1437 = and i1 %bound01435, %bound11436
  %conflict.rdx = or i1 %found.conflict, %found.conflict1437
  br i1 %conflict.rdx, label %scalar.ph1438.preheader, label %vector.ph1440

vector.ph1440:                                    ; preds = %vector.memcheck
  %n.vec1441 = and i64 %indvars.iv1158, 9223372036854775804 ; 3 uses
  %i.bdo = load double, ptr %i.bdj, align 8, !tbaa !26, !alias.scope !145
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bdo, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1442

vector.body1442:                                  ; preds = %vector.body1442, %vector.ph1440
  %index1443 = phi i64 [ 0, %vector.ph1440 ], [ %index.next1448, %vector.body1442 ] ; 3 uses
  %i.bdp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1351, i64 %index1443 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 16
  %wide.load1444 = load <2 x double>, ptr %i.bdp, align 8, !tbaa !26, !alias.scope !148
  %wide.load1445 = load <2 x double>, ptr %i.bdq, align 8, !tbaa !26, !alias.scope !148
  %i.bdr = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index1443 ; 3 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 16 ; 2 uses
  %wide.load1446 = load <2 x double>, ptr %i.bdr, align 8, !tbaa !26, !alias.scope !150, !noalias !152
  %wide.load1447 = load <2 x double>, ptr %i.bds, align 8, !tbaa !26, !alias.scope !150, !noalias !152
  %i.bdt = fneg <2 x double> %wide.load1444
  %i.bdu = fneg <2 x double> %wide.load1445
  %i.bdv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdt, <2 x double> %broadcast.splat, <2 x double> %wide.load1446)
  %i.bdw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdu, <2 x double> %broadcast.splat, <2 x double> %wide.load1447)
  store <2 x double> %i.bdv, ptr %i.bdr, align 8, !tbaa !26, !alias.scope !150, !noalias !152
  store <2 x double> %i.bdw, ptr %i.bds, align 8, !tbaa !26, !alias.scope !150, !noalias !152
  %index.next1448 = add nuw i64 %index1443, 4     ; 2 uses
  %i.bdx = icmp eq i64 %index.next1448, %n.vec1441
  br i1 %i.bdx, label %middle.block1449, label %vector.body1442, !llvm.loop !153

middle.block1449:                                 ; preds = %vector.body1442
  %cmp.n1450 = icmp eq i64 %indvars.iv1158, %n.vec1441
  br i1 %cmp.n1450, label %.loopexit1751, label %scalar.ph1438.preheader

scalar.ph1438.preheader:                          ; preds = %vector.memcheck, %.lr.ph973, %middle.block1449
  %indvars.iv1151.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph973 ], [ %n.vec1441, %middle.block1449 ] ; 5 uses
  %xtraiter1877 = and i64 %indvars.iv1158, 1
  %lcmp.mod1878.not = icmp eq i64 %xtraiter1877, 0
  br i1 %lcmp.mod1878.not, label %scalar.ph1438.prol.loopexit, label %scalar.ph1438.prol

scalar.ph1438.prol:                               ; preds = %scalar.ph1438.preheader
  %gep1352.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1351, i64 %indvars.iv1151.ph
  %i.bdy = load double, ptr %gep1352.prol, align 8, !tbaa !26
  %i.bdz = load double, ptr %i.bdj, align 8, !tbaa !26
  %i.bea = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1151.ph ; 2 uses
  %i.beb = load double, ptr %i.bea, align 8, !tbaa !26
  %i.bec = fneg double %i.bdy
  %i.bed = tail call double @llvm.fmuladd.f64(double %i.bec, double %i.bdz, double %i.beb)
  store double %i.bed, ptr %i.bea, align 8, !tbaa !26
  %indvars.iv.next1152.prol = or disjoint i64 %indvars.iv1151.ph, 1
  br label %scalar.ph1438.prol.loopexit

scalar.ph1438.prol.loopexit:                      ; preds = %scalar.ph1438.prol, %scalar.ph1438.preheader
  %indvars.iv1151.unr = phi i64 [ %indvars.iv1151.ph, %scalar.ph1438.preheader ], [ %indvars.iv.next1152.prol, %scalar.ph1438.prol ]
  %i.bee = icmp eq i64 %indvars.iv1160, %indvars.iv1151.ph
  br i1 %i.bee, label %.loopexit1751, label %scalar.ph1438

scalar.ph1438:                                    ; preds = %scalar.ph1438.prol.loopexit, %scalar.ph1438
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152.1, %scalar.ph1438 ], [ %indvars.iv1151.unr, %scalar.ph1438.prol.loopexit ] ; 4 uses
  %gep1352 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1351, i64 %indvars.iv1151
  %i.bef = load double, ptr %gep1352, align 8, !tbaa !26
  %i.beg = load double, ptr %i.bdj, align 8, !tbaa !26
  %i.beh = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1151 ; 2 uses
  %i.bei = load double, ptr %i.beh, align 8, !tbaa !26
  %i.bej = fneg double %i.bef
  %i.bek = tail call double @llvm.fmuladd.f64(double %i.bej, double %i.beg, double %i.bei)
  store double %i.bek, ptr %i.beh, align 8, !tbaa !26
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 1 ; 2 uses
  %gep1352.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1351, i64 %indvars.iv.next1152
  %i.bel = load double, ptr %gep1352.1, align 8, !tbaa !26
  %i.bem = load double, ptr %i.bdj, align 8, !tbaa !26
  %i.ben = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next1152 ; 2 uses
  %i.beo = load double, ptr %i.ben, align 8, !tbaa !26
  %i.bep = fneg double %i.bel
  %i.beq = tail call double @llvm.fmuladd.f64(double %i.bep, double %i.bem, double %i.beo)
  store double %i.beq, ptr %i.ben, align 8, !tbaa !26
  %indvars.iv.next1152.1 = add nuw nsw i64 %indvars.iv1151, 2 ; 2 uses
  %exitcond1157.not.1 = icmp eq i64 %indvars.iv.next1152.1, %indvars.iv1158
  br i1 %exitcond1157.not.1, label %.loopexit1751, label %scalar.ph1438, !llvm.loop !154

.loopexit1751:                                    ; preds = %scalar.ph1438.prol.loopexit, %scalar.ph1438, %middle.block1449
  %indvars.iv.next1161 = add nuw nsw i64 %indvars.iv1160, 1 ; 2 uses
  %indvars.iv.next1159 = add nuw nsw i64 %indvars.iv1158, 1
  %exitcond1167.not = icmp eq i64 %indvars.iv.next1161, %i.dt
  br i1 %exitcond1167.not, label %.lr.ph.i751, label %.lr.ph973, !llvm.loop !155

.lr.ph.i751:                                      ; preds = %.loopexit1751, %bb.hj
  %indvars.iv.i752 = phi i64 [ %indvars.iv.next.i763, %bb.hj ], [ 0, %.loopexit1751 ] ; 2 uses
  %.076.i753 = phi double [ %.1.i762, %bb.hj ], [ 0.000000e+00, %.loopexit1751 ] ; 8 uses
  %.06075.i754 = phi double [ %.161.i761, %bb.hj ], [ 0.000000e+00, %.loopexit1751 ] ; 8 uses
  %.06274.i755 = phi double [ %.163.i760, %bb.hj ], [ 0.000000e+00, %.loopexit1751 ] ; 6 uses
  %.06473.i756 = phi double [ %.165.i759, %bb.hj ], [ 0.000000e+00, %.loopexit1751 ] ; 6 uses
  %.06672.i757 = phi double [ %.167.i758, %bb.hj ], [ 0.000000e+00, %.loopexit1751 ] ; 6 uses
  %i.ber = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i752
  %i.bes = load double, ptr %i.ber, align 8, !tbaa !26 ; 4 uses
  %i.bet = tail call double @llvm.fabs.f64(double %i.bes) ; 10 uses
  %i.beu = fcmp ogt double %i.bet, f0x2000000000000000
  br i1 %i.beu, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %.lr.ph.i751
  %i.bev = fcmp olt double %i.bet, %i.dr
  br i1 %i.bev, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bew = tail call double @llvm.fmuladd.f64(double %i.bes, double %i.bes, double %.06473.i756)
  br label %bb.hj

bb.hc:                                            ; preds = %bb.ha
  %i.bex = fcmp ogt double %i.bet, %.06075.i754
  br i1 %i.bex, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.bey = fdiv double %.06075.i754, %i.bet       ; 2 uses
  %i.bez = fmul double %.06672.i757, %i.bey
  %i.bfa = tail call double @llvm.fmuladd.f64(double %i.bez, double %i.bey, double 1.000000e+00)
  br label %bb.hj

bb.he:                                            ; preds = %bb.hc
  %i.bfb = fdiv double %i.bet, %.06075.i754       ; 2 uses
  %i.bfc = tail call double @llvm.fmuladd.f64(double %i.bfb, double %i.bfb, double %.06672.i757)
  br label %bb.hj

bb.hf:                                            ; preds = %.lr.ph.i751
  %i.bfd = fcmp ogt double %i.bet, %.076.i753
  br i1 %i.bfd, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.bfe = fdiv double %.076.i753, %i.bet         ; 2 uses
  %i.bff = fmul double %.06274.i755, %i.bfe
  %i.bfg = tail call double @llvm.fmuladd.f64(double %i.bff, double %i.bfe, double 1.000000e+00)
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  %i.bfh = fcmp une double %i.bes, 0.000000e+00
  br i1 %i.bfh, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.bfi = fdiv double %i.bet, %.076.i753         ; 2 uses
  %i.bfj = tail call double @llvm.fmuladd.f64(double %i.bfi, double %i.bfi, double %.06274.i755)
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.he, %bb.hd, %bb.hb
  %.167.i758 = phi double [ %.06672.i757, %bb.hb ], [ %i.bfa, %bb.hd ], [ %i.bfc, %bb.he ], [ %.06672.i757, %bb.hg ], [ %.06672.i757, %bb.hi ], [ %.06672.i757, %bb.hh ] ; 3 uses
  %.165.i759 = phi double [ %i.bew, %bb.hb ], [ %.06473.i756, %bb.hd ], [ %.06473.i756, %bb.he ], [ %.06473.i756, %bb.hg ], [ %.06473.i756, %bb.hi ], [ %.06473.i756, %bb.hh ] ; 7 uses
  %.163.i760 = phi double [ %.06274.i755, %bb.hb ], [ %.06274.i755, %bb.hd ], [ %.06274.i755, %bb.he ], [ %i.bfg, %bb.hg ], [ %i.bfj, %bb.hi ], [ %.06274.i755, %bb.hh ] ; 4 uses
  %.161.i761 = phi double [ %.06075.i754, %bb.hb ], [ %i.bet, %bb.hd ], [ %.06075.i754, %bb.he ], [ %.06075.i754, %bb.hg ], [ %.06075.i754, %bb.hi ], [ %.06075.i754, %bb.hh ] ; 4 uses
  %.1.i762 = phi double [ %.076.i753, %bb.hb ], [ %.076.i753, %bb.hd ], [ %.076.i753, %bb.he ], [ %i.bet, %bb.hg ], [ %.076.i753, %bb.hi ], [ %.076.i753, %bb.hh ] ; 8 uses
  %indvars.iv.next.i763 = add nuw nsw i64 %indvars.iv.i752, 1 ; 2 uses
  %exitcond.not.i764 = icmp eq i64 %indvars.iv.next.i763, %i.bc
  br i1 %exitcond.not.i764, label %._crit_edge.i765, label %.lr.ph.i751, !llvm.loop !41

._crit_edge.i765:                                 ; preds = %bb.hj
  %i.bfk = fcmp une double %.167.i758, 0.000000e+00
  br i1 %i.bfk, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %._crit_edge.i765
  %i.bfl = fdiv double %.165.i759, %.161.i761
  %i.bfm = fdiv double %i.bfl, %.161.i761
  %i.bfn = fadd double %.167.i758, %i.bfm
  %i.bfo = tail call double @sqrt(double noundef %i.bfn) #11
  %i.bfp = fmul double %.161.i761, %i.bfo
  br label %_Z8lm_enormiPKd.exit766

bb.hl:                                            ; preds = %._crit_edge.i765
  %i.bfq = fcmp une double %.165.i759, 0.000000e+00
  br i1 %i.bfq, label %bb.hm, label %.thread.i745

bb.hm:                                            ; preds = %bb.hl
  %i.bfr = fcmp ult double %.165.i759, %.1.i762
  br i1 %i.bfr, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.bfs = fdiv double %.1.i762, %.165.i759
  %i.bft = fmul double %.163.i760, %.1.i762
  %i.bfu = tail call double @llvm.fmuladd.f64(double %i.bfs, double %i.bft, double 1.000000e+00)
  %i.bfv = fmul double %.165.i759, %i.bfu
  %i.bfw = tail call double @sqrt(double noundef %i.bfv) #11
  br label %_Z8lm_enormiPKd.exit766

bb.ho:                                            ; preds = %bb.hm
  %i.bfx = fdiv double %.165.i759, %.1.i762
  %i.bfy = tail call double @llvm.fmuladd.f64(double %.1.i762, double %.163.i760, double %i.bfx)
  %i.bfz = fmul double %.1.i762, %i.bfy
  %i.bga = tail call double @sqrt(double noundef %i.bfz) #11
  br label %_Z8lm_enormiPKd.exit766

.thread.i745:                                     ; preds = %bb.hl
  %i.bgb = tail call double @sqrt(double noundef %.163.i760) #11
  %i.bgc = fmul double %.1.i762, %i.bgb
end_hunk_1
