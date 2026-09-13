Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/lmmin?download=true
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !132
  %i.c = add nsw i32 %0, 1
  %i.d = mul nsw i32 %i.b, %i.c                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !133 ; 2 uses
  %.inv = fcmp oge double %i.f, f0x3CB0000000000000
  %i.g = select i1 %.inv, double %i.f, double f0x3CB0000000000000
  %i.h = tail call double @sqrt(double noundef %i.g) #11 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !134  ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  %. = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %0)
  %i.l = select i1 %i.k, i32 %0, i32 %.           ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !135  ; 2 uses
  %.not661 = icmp eq ptr %i.n, null
  %i.o = load ptr, ptr @stdout, align 8
  %i.p = select i1 %.not661, ptr %i.o, ptr %i.n   ; 27 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 13 uses
  store i32 0, ptr %i.q, align 4, !tbaa !137
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store i32 0, ptr %i.r, align 8, !tbaa !138
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i32 0, ptr %i.s, align 8, !tbaa !139
  %i.t = icmp slt i32 %0, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !140
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.28, i32 noundef %0) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !137
  br label %bb.jx

bb.c:                                             ; preds = %bb.a
  %i.w = icmp slt i32 %4, %0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !140
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.29, i32 noundef %4, i32 noundef %0) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !137
  br label %bb.jx

bb.e:                                             ; preds = %bb.c
  %i.z = load double, ptr %8, align 8, !tbaa !141 ; 3 uses
  %i.aa = fcmp olt double %i.z, 0.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.pre1227 = load double, ptr %.phi.trans.insert, align 8, !tbaa !142 ; 3 uses
  %i.ab = fcmp olt double %.pre1227, 0.000000e+00
  %or.cond1363 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond1363, label %._crit_edge1226, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !143 ; 2 uses
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  br i1 %i.ae, label %._crit_edge1226, label %bb.g

._crit_edge1226:                                  ; preds = %bb.e, %bb.f
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !143
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.30, double noundef %i.z, double noundef %.pre1227, double noundef %i.ah) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !137
  br label %bb.jx

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp slt i32 %i.d, 1
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !140
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.31, i32 noundef %i.d) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !137
  br label %bb.jx

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !144 ; 2 uses
  %i.ao = fcmp ugt double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !140
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.32, double noundef %i.an) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !137
  br label %bb.jx

bb.k:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !145 ; 3 uses
  %switch = icmp ult i32 %i.as, 2
  br i1 %switch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !140
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.33, i32 noundef %i.as) #12 ; 0 uses
  store i32 10, ptr %i.q, align 4, !tbaa !137
  br label %bb.jx

bb.m:                                             ; preds = %bb.k
  %i.av = shl nuw nsw i32 %4, 1
  %i.aw = mul nuw nsw i32 %0, 5
  %i.ax = add nuw nsw i32 %i.av, %i.aw
  %i.ay = mul nuw nsw i32 %4, %0                  ; 2 uses
  %i.az = add nuw nsw i32 %i.ax, %i.ay
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = zext nneg i32 %0 to i64                 ; 84 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bb, %i.bd
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #13 ; 43 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 9, ptr %i.q, align 4, !tbaa !137
  br label %bb.jx

bb.o:                                             ; preds = %bb.m
  %i.bh = zext i32 %4 to i64                      ; 71 uses
  %i.bi = shl nuw nsw i64 %i.bh, 3                ; 15 uses
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
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit883

.lr.ph.preheader:                                 ; preds = %bb.o
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader1806, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bc, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bv, align 8, !tbaa !10
  store <2 x double> splat (double 1.000000e+00), ptr %i.bw, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bc
  br i1 %cmp.n, label %.loopexit883, label %.lr.ph.preheader1806

.lr.ph.preheader1806:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1806, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1806 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.by, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bc
  br i1 %exitcond.not, label %.loopexit883, label %.lr.ph, !llvm.loop !13

.loopexit883:                                     ; preds = %.lr.ph, %middle.block, %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 17 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !148 ; 2 uses
  %i.cb = and i32 %i.ca, 1
  %.not665 = icmp eq i32 %i.cb, 0
  br i1 %.not665, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit883
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.34, double noundef %i.z, double noundef %i.ad, double noundef %.pre1227) #11 ; 0 uses
  %.pre = load i32, ptr %i.bz, align 8, !tbaa !148
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit883
  %i.cd = phi i32 [ %.pre, %bb.p ], [ %i.ca, %.loopexit883 ]
  %i.ce = and i32 %i.cd, 2
  %.not666 = icmp eq i32 %i.ce, 0
  br i1 %.not666, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.53, i64 7, i64 1, ptr %i.p) ; 0 uses
  %i.cf = icmp sgt i32 %i.l, 0
  br i1 %i.cf, label %.lr.ph.preheader.i, label %_ZL13lm_print_parsiPKdP8_IO_FILE.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !10
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.54, double noundef %i.ch) #11 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL13lm_print_parsiPKdP8_IO_FILE.exit, label %.lr.ph.i, !llvm.loop !14

_ZL13lm_print_parsiPKdP8_IO_FILE.exit:            ; preds = %.lr.ph.i, %bb.r
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.p) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZL13lm_print_parsiPKdP8_IO_FILE.exit, %bb.q
  tail call void %7(ptr noundef %1, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.r)
  %i.cj = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.ck = and i32 %i.cj, 8
  %.not667 = icmp eq i32 %i.ck, 0
  br i1 %.not667, label %.loopexit879, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not668 = icmp eq ptr %5, null
  %.not1367 = icmp eq i32 %4, 0                   ; 2 uses
  br i1 %.not668, label %.preheader878, label %.preheader880

.preheader880:                                    ; preds = %bb.t
  br i1 %.not1367, label %.loopexit879, label %.lr.ph927

.preheader878:                                    ; preds = %bb.t
  br i1 %.not1367, label %.loopexit879, label %.lr.ph929

.lr.ph927:                                        ; preds = %.preheader880, %.lr.ph927
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %.lr.ph927 ], [ 0, %.preheader880 ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1068
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !10 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1068
  %i.co = load double, ptr %i.cn, align 8, !tbaa !10
  %i.cp = fsub double %i.co, %i.cm
  %i.cq = trunc nuw nsw i64 %indvars.iv1068 to i32
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.35, i32 noundef %i.cq, double noundef %i.cm, double noundef %i.cp) #11 ; 0 uses
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 1 ; 2 uses
  %exitcond1072.not = icmp eq i64 %indvars.iv.next1069, %i.bh
  br i1 %exitcond1072.not, label %.loopexit879, label %.lr.ph927, !llvm.loop !15

.lr.ph929:                                        ; preds = %.preheader878, %.lr.ph929
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %.lr.ph929 ], [ 0, %.preheader878 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1073
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !10
  %i.cu = trunc nuw nsw i64 %indvars.iv1073 to i32
  %i.cv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.36, i32 noundef %i.cu, double noundef %i.ct) #11 ; 0 uses
  %indvars.iv.next1074 = add nuw nsw i64 %indvars.iv1073, 1 ; 2 uses
  %exitcond1077.not = icmp eq i64 %indvars.iv.next1074, %i.bh
  br i1 %exitcond1077.not, label %.loopexit879, label %.lr.ph929, !llvm.loop !16

.loopexit879:                                     ; preds = %.lr.ph927, %.lr.ph929, %.preheader880, %.preheader878, %bb.s
  store i32 1, ptr %i.s, align 8, !tbaa !139
  %i.cw = load i32, ptr %i.r, align 8, !tbaa !138
  %.not669 = icmp eq i32 %i.cw, 0
  br i1 %.not669, label %bb.u, label %.thread

bb.u:                                             ; preds = %.loopexit879
  %i.cx = icmp eq i32 %0, 0
  br i1 %i.cx, label %.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = tail call noundef double @_Z8lm_fnormiPKdS0_(i32 noundef %4, ptr noundef nonnull %i.bf, ptr noundef %5) ; 4 uses
  %i.cz = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.da = and i32 %i.cz, 2
  %.not670 = icmp eq i32 %i.da, 0
  br i1 %.not670, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.37, double noundef %i.cy) #11 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dc = tail call double @llvm.fabs.f64(double %i.cy)
  %i.dd = fcmp ueq double %i.dc, +inf
  br i1 %i.dd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.de = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not671 = icmp eq i32 %i.de, 0
  br i1 %.not671, label %.thread.sink.split, label %.thread.sink.split.sink.split

bb.z:                                             ; preds = %bb.x
  %i.df = fcmp ugt double %i.cy, f0x0010000000000000
  br i1 %i.df, label %.preheader877, label %.thread.sink.split

.preheader877:                                    ; preds = %bb.z
  %i.dg = fmul double %i.h, %i.h                  ; 2 uses
  %.not1368 = icmp eq i32 %4, 0                   ; 7 uses
  %i.dh = uitofp nneg i32 %4 to double
  %i.di = add nuw i32 %4, 1                       ; 7 uses
  %.not674 = icmp eq ptr %5, null                 ; 2 uses
  %i.dj = icmp sgt i32 %i.l, 0                    ; 2 uses
  %i.dk = uitofp nneg i32 %0 to double
  %i.dl = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dk, i64 1
  %i.dn = fdiv <2 x double> splat (double f0x5FEFFFFFFFFFFFFF), %i.dm ; 2 uses
  %i.do = extractelement <2 x double> %i.dn, i64 1 ; 5 uses
  %i.dp = uitofp nneg i32 %0 to double
  %i.dq = fdiv double f0x5FEFFFFFFFFFFFFF, %i.dp  ; 4 uses
  %i.dr = zext nneg i32 %4 to i64                 ; 4 uses
  %i.ds = zext nneg i32 %0 to i64                 ; 11 uses
  %i.dt = shl nuw nsw i64 %i.ds, 3
  %wide.trip.count1197 = zext nneg i32 %i.l to i64
  %i.du = shl nuw nsw i64 %i.bc, 5
  %i.dv = add nuw nsw i64 %i.bh, %i.bn
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = shl nuw nsw i64 %i.bc, 4
  %i.dy = add nuw nsw i64 %i.dx, %i.bi            ; 2 uses
  %i.dz = add nuw nsw i64 %i.bi, 8
  %i.ea = getelementptr i8, ptr %i.bf, i64 %i.dy
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.bo
  %scevgep1442 = getelementptr i8, ptr %i.eb, i64 8
  %i.ec = mul nuw nsw i64 %i.bc, 40
  %i.ed = add nuw nsw i64 %i.bh, %i.bn
  %i.ee = shl nuw nsw i64 %i.ed, 3                ; 2 uses
  %i.ef = mul nuw nsw i64 %i.bc, 48
  %i.eg = getelementptr i8, ptr %i.bf, i64 %i.ef
  %scevgep1463 = getelementptr i8, ptr %i.eg, i64 %i.ee ; 3 uses
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
  %10 = add nuw nsw i64 %i.er, %i.et
  %i.eu = shl nuw nsw i64 %i.bc, 4
  %11 = shl nuw nsw i64 %i.bh, 3
  %12 = sub nuw nsw i64 -8, %i.bi
  %i.ev = mul nuw nsw i64 %i.bc, 40
  %i.ew = add nuw nsw i64 %i.bh, %i.bn
  %i.ex = shl nuw nsw i64 %i.bc, 4                ; 5 uses
  %i.ey = add nuw nsw i64 %i.bi, 8                ; 2 uses
  %i.ez = shl nuw nsw i64 %i.bh, 4                ; 2 uses
  %i.fa = add nuw nsw i64 %i.ex, %i.ez            ; 2 uses
  %i.fb = shl nuw nsw i64 %i.bh, 3
  %i.fc = add nuw nsw i64 %i.bk, 8
  %i.fd = mul i64 %i.fc, %i.bh
  %i.fe = getelementptr i8, ptr %i.bf, i64 %i.fd
  %scevgep1683 = getelementptr i8, ptr %i.fe, i64 %i.ex
  %i.ff = getelementptr i8, ptr %i.bf, i64 %i.ez
  %scevgep1686 = getelementptr i8, ptr %i.ff, i64 %i.ex
  %i.fg = add nuw nsw i64 %i.bk, 8
  %i.fh = mul i64 %i.fg, %i.bh
  %i.fi = shl nuw nsw i64 %i.bc, 4
  %i.fj = getelementptr i8, ptr %i.bf, i64 %i.fh
  %scevgep1721 = getelementptr i8, ptr %i.fj, i64 %i.fi
  %i.fk = add nuw nsw i64 %i.bh, %i.bc
  %i.fl = shl nuw nsw i64 %i.fk, 4
  %scevgep1722 = getelementptr i8, ptr %i.bf, i64 %i.fl
  %.neg = mul nsw i64 %i.bc, -24
  %i.fm = shl nuw nsw i64 %i.bn, 3
  %i.fn = sub nsw i64 %.neg, %i.fm
  %i.fo = shl nuw nsw i64 %i.bh, 3
  %i.fp = shl nuw nsw i64 %i.bc, 4
  %i.fq = add nuw nsw i64 %i.fp, %i.bi
  %i.fr = add nsw i64 %i.bh, -1                   ; 3 uses
  %i.fs = add nsw i64 %i.bc, -1                   ; 6 uses
  %i.ft = add nsw i64 %i.bc, -2
  %min.iters.check1745 = icmp eq i32 %4, 1
  %invariant.op = add i64 %i.fn, -1
  %invariant.op1920 = add i64 %i.fq, -1
  %n.vec1747 = and i64 %i.bh, 4294967294          ; 3 uses
  %cmp.n1756 = icmp eq i64 %n.vec1747, %i.bh
  %xtraiter = and i64 %i.bh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fu = extractelement <2 x double> %i.dn, i64 0
  %i.fv = getelementptr i8, ptr %i.bf, i64 %i.fa
  %i.fw = getelementptr i8, ptr %i.bf, i64 %i.ex
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.bi
  %min.iters.check1728 = icmp ult i32 %4, 4
  %n.vec1730 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1739 = icmp eq i64 %n.vec1730, %i.bh
  %xtraiter1809 = and i64 %i.bh, 1
  %lcmp.mod1810.not = icmp eq i64 %xtraiter1809, 0
  %i.fy = add nsw i64 %i.bh, -1
  %i.fz = add nsw i64 %i.bh, -1
  %min.iters.check1668 = icmp ult i32 %4, 4
  %n.vec1670 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1679.a = icmp eq i64 %n.vec1670, %i.bh
  %min.iters.check1656 = icmp ult i32 %4, 4
  %n.vec1658 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1665 = icmp eq i64 %n.vec1658, %i.bh
  %invariant.gep1922 = getelementptr i8, ptr %i.bf, i64 %i.ev
  %i.ga = getelementptr i8, ptr %i.bf, i64 %i.ex
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.bi
  %i.gc = getelementptr i8, ptr %i.bf, i64 %i.fa
  %i.gd = add nsw i64 %i.bh, -1
  %min.iters.check1619 = icmp ult i32 %0, 4
  %n.vec1621 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1630.a = icmp eq i64 %n.vec1621, %i.bc
  %min.iters.check1607.a = icmp ult i32 %0, 4
  %n.vec1609.a = and i64 %i.bc, 2147483644        ; 3 uses
  %cmp.n1616 = icmp eq i64 %n.vec1609.a, %i.bc
  %min.iters.check1593 = icmp ult i32 %0, 4
  %n.vec1595 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1604.a = icmp eq i64 %n.vec1595, %i.bc
  %i.ge = getelementptr i8, ptr %i.bf, i64 %i.eu
  %xtraiter1829 = and i64 %i.bc, 3                ; 3 uses
  %i.gf = icmp ult i64 %i.fs, 3
  %unroll_iter1833 = and i64 %i.bc, 2147483644
  %lcmp.mod1831.not.a = icmp eq i64 %xtraiter1829, 0
  %lcmp.mod1832 = icmp ne i64 %xtraiter1829, 0
  %min.iters.check1555 = icmp ult i32 %0, 4
  %n.vec1557 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1566 = icmp eq i64 %n.vec1557, %i.bc
  %xtraiter1835 = and i64 %i.bc, 1
  %i.gg = icmp eq i64 %i.fs, 0
  %unroll_iter1839 = and i64 %i.bc, 2147483646
  %lcmp.mod1837.not.a = icmp eq i64 %xtraiter1835, 0
  %lcmp.mod1838 = trunc i32 %0 to i1
  %min.iters.check1541 = icmp ult i32 %0, 4
  %n.vec1543 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1552 = icmp eq i64 %n.vec1543, %i.bc
  %ident.check.not = icmp eq i32 %4, 1
  %invariant.gep1924 = getelementptr i8, ptr %i.bf, i64 %i.ej
  %invariant.gep1926 = getelementptr i8, ptr %invariant.gep1924, i64 %i.em
  %i.gh = getelementptr i8, ptr %i.bf, i64 %i.en
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.bi
  %i.gj = getelementptr i8, ptr %i.gi, i64 8
  %i.gk = getelementptr i8, ptr %i.bf, i64 %i.ej
  %i.gl = getelementptr i8, ptr %i.gk, i64 %i.bi
  %xtraiter1862 = and i64 %i.bc, 1
  %i.gm = icmp eq i64 %i.fs, 0
  %unroll_iter1867 = and i64 %i.bc, 2147483646
  %lcmp.mod1864.not = icmp eq i64 %xtraiter1862, 0
  %lcmp.mod1866 = trunc i32 %0 to i1
  %xtraiter1869 = and i64 %i.bc, 3                ; 3 uses
  %i.gn = icmp ult i64 %i.fs, 3
  %unroll_iter1873 = and i64 %i.bc, 2147483644
  %lcmp.mod1871.not = icmp eq i64 %xtraiter1869, 0
  %lcmp.mod1872 = icmp ne i64 %xtraiter1869, 0
  %min.iters.check1490 = icmp ult i32 %0, 4
  %n.vec1492 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1501 = icmp eq i64 %n.vec1492, %i.bc
  %xtraiter1876 = and i64 %i.bc, 1
  %i.go = icmp eq i64 %i.fs, 0
  %unroll_iter1880 = and i64 %i.bc, 2147483646
  %lcmp.mod1878.not = icmp eq i64 %xtraiter1876, 0
  %lcmp.mod1879 = trunc i32 %0 to i1
  %i.gp = getelementptr i8, ptr %i.bf, i64 %i.ec
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.ee
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %i.gs = getelementptr i8, ptr %i.bf, i64 %i.eh
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.bi
  %i.gu = getelementptr i8, ptr %i.gt, i64 8
  %i.gv = getelementptr i8, ptr %i.bf, i64 %i.ej
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.bi
  %bound11470 = icmp ult ptr %i.bs, %scevgep1463
  %i.gx = add nsw i64 %i.bc, -1
  %i.gy = getelementptr i8, ptr %i.bf, i64 %i.dy
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %i.ha = getelementptr i8, ptr %i.bf, i64 %i.du
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.dw
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %min.iters.check1428 = icmp ult i32 %0, 4
  %n.vec1430 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1439 = icmp eq i64 %n.vec1430, %i.bc
  %min.iters.check1414 = icmp ult i32 %0, 4
  %n.vec1416 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1425 = icmp eq i64 %n.vec1416, %i.bc
  %min.iters.check1403 = icmp ult i32 %4, 4
  %n.vec1405 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1411 = icmp eq i64 %n.vec1405, %i.bh
  br label %.lr.ph934.preheader

.lr.ph934.preheader:                              ; preds = %bb.jn, %.preheader877
  %.0835 = phi double [ %.2837, %bb.jn ], [ 0.000000e+00, %.preheader877 ]
  %.0608 = phi double [ %.2610, %bb.jn ], [ %i.cy, %.preheader877 ] ; 2 uses
  %.0595 = phi double [ %.5600, %bb.jn ], [ 0.000000e+00, %.preheader877 ] ; 3 uses
  %.0594 = phi double [ %.4, %bb.jn ], [ 0.000000e+00, %.preheader877 ] ; 5 uses
  %.0592 = phi i32 [ %i.bnd, %bb.jn ], [ 0, %.preheader877 ] ; 3 uses
  br label %.lr.ph934

.lr.ph934:                                        ; preds = %.lr.ph934.preheader, %._crit_edge
  %indvars.iv1083 = phi i64 [ 0, %.lr.ph934.preheader ], [ %indvars.iv.next1084, %._crit_edge ] ; 4 uses
  %i.hd = mul i64 %i.fo, %indvars.iv1083          ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1083 ; 3 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !10 ; 3 uses
  %i.hg = tail call double @llvm.fabs.f64(double %i.hf)
  %i.hh = fmul double %i.h, %i.hg                 ; 2 uses
  %.inv850 = fcmp oge double %i.dg, %i.hh
  %.708 = select i1 %.inv850, double %i.dg, double %i.hh ; 5 uses
  %i.hi = fadd double %i.hf, %.708
  store double %i.hi, ptr %i.he, align 8, !tbaa !10
  tail call void %7(ptr noundef %1, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.r)
  %i.hj = load i32, ptr %i.s, align 8, !tbaa !139
  %i.hk = add nsw i32 %i.hj, 1
  store i32 %i.hk, ptr %i.s, align 8, !tbaa !139
  %i.hl = load i32, ptr %i.r, align 8, !tbaa !138
  %.not701 = icmp eq i32 %i.hl, 0
  br i1 %.not701, label %.preheader864, label %.thread

.preheader864:                                    ; preds = %.lr.ph934
  br i1 %.not1368, label %._crit_edge, label %.lr.ph931

.lr.ph931:                                        ; preds = %.preheader864
  %i.hm = mul nuw nsw i64 %indvars.iv1083, %i.bh
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.hm ; 4 uses
  br i1 %min.iters.check1745, label %scalar.ph1744.preheader, label %vector.memcheck1741

vector.memcheck1741:                              ; preds = %.lr.ph931
  %.reass = add i64 %i.hd, %invariant.op
  %diff.check = icmp ult i64 %.reass, 15
  %.reass1921 = add i64 %i.hd, %invariant.op1920
  %diff.check1742 = icmp ult i64 %.reass1921, 15
  %conflict.rdx1743 = or i1 %diff.check, %diff.check1742
  br i1 %conflict.rdx1743, label %scalar.ph1744.preheader, label %vector.ph1746

vector.ph1746:                                    ; preds = %vector.memcheck1741
  %broadcast.splatinsert1748 = insertelement <2 x double> poison, double %.708, i64 0
  %broadcast.splat1749 = shufflevector <2 x double> %broadcast.splatinsert1748, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1750

vector.body1750:                                  ; preds = %vector.body1750, %vector.ph1746
  %index1751 = phi i64 [ 0, %vector.ph1746 ], [ %index.next1754, %vector.body1750 ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1751
  %wide.load1752 = load <2 x double>, ptr %i.hn, align 8, !tbaa !10
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1751
  %wide.load1753 = load <2 x double>, ptr %i.ho, align 8, !tbaa !10
  %i.hp = fsub <2 x double> %wide.load1752, %wide.load1753
  %i.hq = fdiv <2 x double> %i.hp, %broadcast.splat1749
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1751
  store <2 x double> %i.hq, ptr %i.hr, align 8, !tbaa !10
  %index.next1754 = add nuw i64 %index1751, 2     ; 2 uses
  %i.hs = icmp eq i64 %index.next1754, %n.vec1747
  br i1 %i.hs, label %middle.block1755, label %vector.body1750, !llvm.loop !17

middle.block1755:                                 ; preds = %vector.body1750
  br i1 %cmp.n1756, label %._crit_edge, label %scalar.ph1744.preheader

scalar.ph1744.preheader:                          ; preds = %vector.memcheck1741, %.lr.ph931, %middle.block1755
  %indvars.iv1078.ph = phi i64 [ 0, %vector.memcheck1741 ], [ 0, %.lr.ph931 ], [ %n.vec1747, %middle.block1755 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph1744.prol.loopexit, label %scalar.ph1744.prol

scalar.ph1744.prol:                               ; preds = %scalar.ph1744.preheader
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1078.ph
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !10
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1078.ph
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !10
  %i.hx = fsub double %i.hu, %i.hw
  %i.hy = fdiv double %i.hx, %.708
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1078.ph
  store double %i.hy, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next1079.prol = or disjoint i64 %indvars.iv1078.ph, 1
  br label %scalar.ph1744.prol.loopexit

scalar.ph1744.prol.loopexit:                      ; preds = %scalar.ph1744.prol, %scalar.ph1744.preheader
  %indvars.iv1078.unr = phi i64 [ %indvars.iv1078.ph, %scalar.ph1744.preheader ], [ %indvars.iv.next1079.prol, %scalar.ph1744.prol ]
  %i.hz = icmp eq i64 %i.fr, %indvars.iv1078.ph
  br i1 %i.hz, label %._crit_edge, label %scalar.ph1744

scalar.ph1744:                                    ; preds = %scalar.ph1744.prol.loopexit, %scalar.ph1744
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079.1, %scalar.ph1744 ], [ %indvars.iv1078.unr, %scalar.ph1744.prol.loopexit ] ; 5 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1078
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !10
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1078
  %i.id = load double, ptr %i.ic, align 8, !tbaa !10
  %i.ie = fsub double %i.ib, %i.id
  %i.if = fdiv double %i.ie, %.708
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1078
  store double %i.if, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next1079 = add nuw nsw i64 %indvars.iv1078, 1 ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1079
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !10
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next1079
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !10
  %i.ik = fsub double %i.ih, %i.ij
  %i.il = fdiv double %i.ik, %.708
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next1079
  store double %i.il, ptr %gep.1, align 8, !tbaa !10
  %indvars.iv.next1079.1 = add nuw nsw i64 %indvars.iv1078, 2 ; 2 uses
  %exitcond1082.not.1 = icmp eq i64 %indvars.iv.next1079.1, %i.bh
  br i1 %exitcond1082.not.1, label %._crit_edge, label %scalar.ph1744, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph1744.prol.loopexit, %scalar.ph1744, %middle.block1755, %.preheader864
  store double %i.hf, ptr %i.he, align 8, !tbaa !10
  %indvars.iv.next1084 = add nuw nsw i64 %indvars.iv1083, 1 ; 2 uses
  %exitcond1087.not = icmp eq i64 %indvars.iv.next1084, %i.ds
  br i1 %exitcond1087.not, label %._crit_edge935, label %.lr.ph934, !llvm.loop !19

._crit_edge935:                                   ; preds = %._crit_edge
  %i.im = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.in = and i32 %i.im, 16
  %.not672 = icmp eq i32 %i.in, 0
  br i1 %.not672, label %.lr.ph.preheader.i.i.preheader, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge935
  %fwrite673 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 9, i64 1, ptr %i.p) ; 0 uses
  br i1 %.not1368, label %.lr.ph.preheader.i.i.preheader, label %.lr.ph938.preheader

.lr.ph938.preheader:                              ; preds = %bb.aa, %._crit_edge939
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %._crit_edge939 ], [ 0, %bb.aa ] ; 2 uses
  %fwrite698 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr %i.p) ; 0 uses
  %invariant.gep1353 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv1094
  br label %.lr.ph938

.lr.ph938:                                        ; preds = %.lr.ph938.preheader, %.lr.ph938
end_hunk_0
begin_hunk_1_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a
  %i.xl = fcmp ugt double %.1607, %i.xk
  br i1 %i.xl, label %bb.cc, label %.thread.sink.split

bb.cc:                                            ; preds = %._crit_edge963
  %i.xm = icmp eq i32 %.0592, 0                   ; 2 uses
  %i.xn = load i32, ptr %i.ar, align 4, !tbaa !145
  %.not675 = icmp eq i32 %i.xn, 0                 ; 2 uses
  br i1 %i.xm, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  br i1 %.not675, label %._crit_edge971, label %.lr.ph968.preheader

.lr.ph968.preheader:                              ; preds = %bb.cd
  br i1 %min.iters.check1607.a, label %.lr.ph968.preheader1772, label %vector.body1610.a

vector.body1610.a:                                ; preds = %.lr.ph968.preheader, %vector.body1610.a
  %index1611.a = phi i64 [ %index.next1614, %vector.body1610.a ], [ 0, %.lr.ph968.preheader ] ; 3 uses
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index1611.a ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  %wide.load1612.a = load <2 x double>, ptr %i.xo, align 8, !tbaa !10 ; 2 uses
  %wide.load1613.a = load <2 x double>, ptr %i.xp, align 8, !tbaa !10 ; 2 uses
  %i.xq = fcmp une <2 x double> %wide.load1612.a, zeroinitializer
  %i.xr = fcmp une <2 x double> %wide.load1613.a, zeroinitializer
  %i.xs = select <2 x i1> %i.xq, <2 x double> %wide.load1612.a, <2 x double> splat (double 1.000000e+00)
  %i.xt = select <2 x i1> %i.xr, <2 x double> %wide.load1613.a, <2 x double> splat (double 1.000000e+00)
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1611.a ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store <2 x double> %i.xs, ptr %i.xu, align 8, !tbaa !10
  store <2 x double> %i.xt, ptr %i.xv, align 8, !tbaa !10
  %index.next1614 = add nuw i64 %index1611.a, 4   ; 2 uses
  %i.xw = icmp eq i64 %index.next1614, %n.vec1609.a
  br i1 %i.xw, label %middle.block1615, label %vector.body1610.a, !llvm.loop !55

middle.block1615:                                 ; preds = %vector.body1610.a
  br i1 %cmp.n1616, label %.lr.ph970.preheader, label %.lr.ph968.preheader1772

.lr.ph968.preheader1772:                          ; preds = %.lr.ph968.preheader, %middle.block1615
  %indvars.iv1148.ph = phi i64 [ 0, %.lr.ph968.preheader ], [ %n.vec1609.a, %middle.block1615 ]
  br label %.lr.ph968

.lr.ph968:                                        ; preds = %.lr.ph968.preheader1772, %.lr.ph968
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %.lr.ph968 ], [ %indvars.iv1148.ph, %.lr.ph968.preheader1772 ] ; 3 uses
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv1148
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !10 ; 2 uses
  %i.xz = fcmp une double %i.xy, 0.000000e+00
  %i.ya = select i1 %i.xz, double %i.xy, double 1.000000e+00
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv1148
  store double %i.ya, ptr %i.yb, align 8, !tbaa !10
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 1 ; 2 uses
  %exitcond1153.not = icmp eq i64 %indvars.iv.next1149, %i.ds
  br i1 %exitcond1153.not, label %.lr.ph970.preheader, label %.lr.ph968, !llvm.loop !56

.lr.ph970.preheader:                              ; preds = %.lr.ph968, %middle.block1615
  br i1 %min.iters.check1593, label %.lr.ph970.preheader1771, label %vector.body1596.a

vector.body1596.a:                                ; preds = %.lr.ph970.preheader, %vector.body1596.a
  %index1597.a = phi i64 [ %index.next1602.a, %vector.body1596.a ], [ 0, %.lr.ph970.preheader ] ; 4 uses
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1597.a ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %wide.load1598.a = load <2 x double>, ptr %i.yc, align 8, !tbaa !10
  %wide.load1599.a = load <2 x double>, ptr %i.yd, align 8, !tbaa !10
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index1597.a ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %wide.load1600.a = load <2 x double>, ptr %i.ye, align 8, !tbaa !10
  %wide.load1601.a = load <2 x double>, ptr %i.yf, align 8, !tbaa !10
  %i.yg = fmul <2 x double> %wide.load1598.a, %wide.load1600.a
  %i.yh = fmul <2 x double> %wide.load1599.a, %wide.load1601.a
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index1597.a ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  store <2 x double> %i.yg, ptr %i.yi, align 8, !tbaa !10
  store <2 x double> %i.yh, ptr %i.yj, align 8, !tbaa !10
  %index.next1602.a = add nuw i64 %index1597.a, 4 ; 2 uses
  %i.yk = icmp eq i64 %index.next1602.a, %n.vec1595
  br i1 %i.yk, label %middle.block1603.a, label %vector.body1596.a, !llvm.loop !57

middle.block1603.a:                               ; preds = %vector.body1596.a
  br i1 %cmp.n1604.a, label %._crit_edge971, label %.lr.ph970.preheader1771

.lr.ph970.preheader1771:                          ; preds = %.lr.ph970.preheader, %middle.block1603.a
  %indvars.iv1154.ph = phi i64 [ 0, %.lr.ph970.preheader ], [ %n.vec1595, %middle.block1603.a ]
  br label %.lr.ph970

.lr.ph970:                                        ; preds = %.lr.ph970.preheader1771, %.lr.ph970
  %indvars.iv1154 = phi i64 [ %indvars.iv.next1155, %.lr.ph970 ], [ %indvars.iv1154.ph, %.lr.ph970.preheader1771 ] ; 4 uses
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv1154
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !10
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1154
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !10
  %i.yp = fmul double %i.ym, %i.yo
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1154
  store double %i.yp, ptr %i.yq, align 8, !tbaa !10
  %indvars.iv.next1155 = add nuw nsw i64 %indvars.iv1154, 1 ; 2 uses
  %exitcond1159.not = icmp eq i64 %indvars.iv.next1155, %i.ds
  br i1 %exitcond1159.not, label %._crit_edge971, label %.lr.ph970, !llvm.loop !58

._crit_edge971:                                   ; preds = %.lr.ph970, %middle.block1603.a, %bb.cd
  %.sink = phi ptr [ %1, %bb.cd ], [ %i.br, %middle.block1603.a ], [ %i.br, %.lr.ph970 ]
  %i.yr = tail call noundef double @_Z8lm_enormiPKd(i32 noundef %0, ptr noundef %.sink) ; 7 uses
  %i.ys = tail call double @llvm.fabs.f64(double %i.yr)
  %i.yt = fcmp ueq double %i.ys, +inf
  br i1 %i.yt, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge971
  %i.yu = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not676 = icmp eq i32 %i.yu, 0
  br i1 %.not676, label %.thread.sink.split, label %.thread.sink.split.sink.split

bb.cf:                                            ; preds = %._crit_edge971
  %i.yv = fcmp une double %i.yr, 0.000000e+00
  %i.yw = load double, ptr %i.am, align 8, !tbaa !144 ; 2 uses
  %i.yx = fmul double %i.yr, %i.yw
  %.1596 = select i1 %i.yv, double %i.yx, double %i.yw ; 2 uses
  %i.yy = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.yz = and i32 %i.yy, 2
  %.not678 = icmp eq i32 %i.yz, 0
  br i1 %.not678, label %.loopexit868, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %fwrite679 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 101, i64 1, ptr %i.p) ; 0 uses
  br i1 %i.dj, label %.lr.ph974, label %._crit_edge975

.lr.ph974:                                        ; preds = %bb.cg, %.lr.ph974
  %.9630972 = phi i32 [ %i.zb, %.lr.ph974 ], [ 0, %bb.cg ] ; 2 uses
  %i.za = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.45, i32 noundef %.9630972) #11 ; 0 uses
  %i.zb = add nuw nsw i32 %.9630972, 1            ; 2 uses
  %exitcond1160.not = icmp eq i32 %i.zb, %i.l
  br i1 %exitcond1160.not, label %._crit_edge975, label %.lr.ph974, !llvm.loop !59

._crit_edge975:                                   ; preds = %.lr.ph974, %bb.cg
  %fputc = tail call i32 @fputc(i32 10, ptr %i.p) ; 0 uses
  br label %.loopexit868

bb.ch:                                            ; preds = %bb.cc
  br i1 %.not675, label %.loopexit868, label %.lr.ph966.preheader

.lr.ph966.preheader:                              ; preds = %bb.ch
  br i1 %min.iters.check1619, label %.lr.ph966.preheader1773, label %vector.body1622

vector.body1622:                                  ; preds = %.lr.ph966.preheader, %vector.body1622
  %index1623 = phi i64 [ %index.next1628, %vector.body1622 ], [ 0, %.lr.ph966.preheader ] ; 3 uses
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1623 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16 ; 2 uses
  %wide.load1624 = load <2 x double>, ptr %i.zc, align 8, !tbaa !10 ; 2 uses
  %wide.load1625 = load <2 x double>, ptr %i.zd, align 8, !tbaa !10 ; 2 uses
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index1623 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %wide.load1626 = load <2 x double>, ptr %i.ze, align 8, !tbaa !10 ; 2 uses
  %wide.load1627 = load <2 x double>, ptr %i.zf, align 8, !tbaa !10 ; 2 uses
  %i.zg = fcmp oge <2 x double> %wide.load1624, %wide.load1626
  %i.zh = fcmp oge <2 x double> %wide.load1625, %wide.load1627
  %i.zi = select <2 x i1> %i.zg, <2 x double> %wide.load1624, <2 x double> %wide.load1626
  %i.zj = select <2 x i1> %i.zh, <2 x double> %wide.load1625, <2 x double> %wide.load1627
  store <2 x double> %i.zi, ptr %i.zc, align 8, !tbaa !10
  store <2 x double> %i.zj, ptr %i.zd, align 8, !tbaa !10
  %index.next1628 = add nuw i64 %index1623, 4     ; 2 uses
  %i.zk = icmp eq i64 %index.next1628, %n.vec1621
  br i1 %i.zk, label %middle.block1629, label %vector.body1622, !llvm.loop !60

middle.block1629:                                 ; preds = %vector.body1622
  br i1 %cmp.n1630.a, label %.loopexit868, label %.lr.ph966.preheader1773

.lr.ph966.preheader1773:                          ; preds = %.lr.ph966.preheader, %middle.block1629
  %indvars.iv1142.ph = phi i64 [ 0, %.lr.ph966.preheader ], [ %n.vec1621, %middle.block1629 ]
  br label %.lr.ph966

.lr.ph966:                                        ; preds = %.lr.ph966.preheader1773, %.lr.ph966
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %.lr.ph966 ], [ %indvars.iv1142.ph, %.lr.ph966.preheader1773 ] ; 3 uses
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv1142 ; 2 uses
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !10 ; 2 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv1142
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !10 ; 2 uses
  %.inv846 = fcmp oge double %i.zm, %i.zo
  %.709 = select i1 %.inv846, double %i.zm, double %i.zo
  store double %.709, ptr %i.zl, align 8, !tbaa !10
  %indvars.iv.next1143 = add nuw nsw i64 %indvars.iv1142, 1 ; 2 uses
  %exitcond1147.not = icmp eq i64 %indvars.iv.next1143, %i.ds
  br i1 %exitcond1147.not, label %.loopexit868, label %.lr.ph966, !llvm.loop !61

.loopexit868:                                     ; preds = %.lr.ph966, %middle.block1629, %bb.ch, %bb.cf, %._crit_edge975
  %.2597 = phi double [ %.1596, %bb.cf ], [ %.0595, %bb.ch ], [ %.1596, %._crit_edge975 ], [ %.0595, %middle.block1629 ], [ %.0595, %.lr.ph966 ]
  %.2 = phi double [ %i.yr, %bb.cf ], [ %.0594, %bb.ch ], [ %i.yr, %._crit_edge975 ], [ %.0594, %middle.block1629 ], [ %.0594, %.lr.ph966 ]
  %i.zp = fcmp ole double %.1607, f0x3CB0000000000000
  br label %bb.ci

bb.ci:                                            ; preds = %bb.jm, %.loopexit868
  %.1836 = phi double [ %.0835, %.loopexit868 ], [ %.2837, %bb.jm ] ; 2 uses
  %.1609 = phi double [ %.0608, %.loopexit868 ], [ %.2610, %bb.jm ] ; 7 uses
  %.3598 = phi double [ %.2597, %.loopexit868 ], [ %.5600, %bb.jm ] ; 10 uses
  %.3 = phi double [ %.2, %.loopexit868 ], [ %.4, %bb.jm ] ; 6 uses
  %.0 = phi i32 [ 0, %.loopexit868 ], [ %i.bnc, %bb.jm ] ; 3 uses
  br label %bb.cj

.preheader372.i:                                  ; preds = %bb.cl
  %.not396.i = icmp eq i32 %.1258.i, 0
  br i1 %.not396.i, label %.preheader370.i.preheader, label %.lr.ph378.preheader.i

.preheader370.i.preheader:                        ; preds = %.loopexit371.i, %.lr.ph378.preheader.i, %.preheader372.i
  br i1 %i.gf, label %.preheader370.i.epil.preheader, label %.preheader370.i

.lr.ph378.preheader.i:                            ; preds = %.preheader372.i
  %i.zq = zext nneg i32 %.1258.i to i64           ; 2 uses
  %indvars.iv.next413.i976 = add nsw i64 %i.zq, -1 ; 3 uses
  %indvars415.i977 = trunc nuw nsw i64 %indvars.iv.next413.i976 to i32
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next413.i976 ; 2 uses
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !10
  %i.zt = mul nuw i32 %i.di, %indvars415.i977
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.zu
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !10
  %i.zx = fdiv double %i.zs, %i.zw                ; 2 uses
  store double %i.zx, ptr %i.zr, align 8, !tbaa !10
  %.not = icmp eq i32 %.1258.i, 1
  br i1 %.not, label %.preheader370.i.preheader, label %.lr.ph.preheader.i742.preheader

.lr.ph.preheader.i742.preheader:                  ; preds = %.lr.ph378.preheader.i
  %i.zy = add i32 %.1258.i, -1
  %i.zz = zext i32 %i.zy to i64                   ; 3 uses
  %i.aaa = shl nuw nsw i64 %i.zz, 3               ; 2 uses
  %13 = add nuw nsw i64 %10, %i.aaa
  %14 = mul i64 %11, %i.zq
  %i.aab = getelementptr i8, ptr %i.ge, i64 %14
  %i.aac = getelementptr i8, ptr %i.aab, i64 %i.aaa
  br label %.lr.ph.preheader.i742

bb.cj:                                            ; preds = %bb.cl, %bb.ci
  %indvars.iv.i718 = phi i64 [ 0, %bb.ci ], [ %indvars.iv.next.i719, %bb.cl ] ; 4 uses
  %.0257374.i = phi i32 [ %0, %bb.ci ], [ %.1258.i, %bb.cl ] ; 2 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i718
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !10
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i718 ; 2 uses
  store double %i.aae, ptr %i.aaf, align 8, !tbaa !10
  %i.aag = trunc nuw nsw i64 %indvars.iv.i718 to i32 ; 2 uses
  %i.aah = mul i32 %i.di, %i.aag
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.aai
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !10
  %i.aal = fcmp oeq double %i.aak, 0.000000e+00
  %i.aam = icmp eq i32 %.0257374.i, %0
  %or.cond279.i = and i1 %i.aam, %i.aal
  %.1258.i = select i1 %or.cond279.i, i32 %i.aag, i32 %.0257374.i ; 6 uses
  %i.aan = icmp samesign ult i32 %.1258.i, %0     ; 2 uses
  br i1 %i.aan, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store double 0.000000e+00, ptr %i.aaf, align 8, !tbaa !10
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %indvars.iv.next.i719 = add nuw nsw i64 %indvars.iv.i718, 1 ; 2 uses
  %exitcond.not.i720 = icmp eq i64 %indvars.iv.next.i719, %i.bc
  br i1 %exitcond.not.i720, label %.preheader372.i, label %bb.cj, !llvm.loop !62

.loopexit371.i:                                   ; preds = %.lr.ph.i744.prol.loopexit, %.lr.ph.i744, %middle.block1589
  %indvars.iv.next410.i = add nsw i64 %indvars.iv409.i978, -1
  %indvars.iv.next413.i = add nsw i64 %indvars.iv.next413.i979, -1 ; 3 uses
  %indvars415.i = trunc i64 %indvars.iv.next413.i to i32
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next413.i ; 2 uses
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !10
  %i.aaq = mul nuw i32 %i.di, %indvars415.i
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.aar
  %i.aat = load double, ptr %i.aas, align 8, !tbaa !10
  %i.aau = fdiv double %i.aap, %i.aat             ; 2 uses
  store double %i.aau, ptr %i.aao, align 8, !tbaa !10
  %i.aav = icmp samesign ugt i64 %indvars.iv.next413.i979, 1
  %indvar.next1570 = add i64 %indvar1569, 1
  br i1 %i.aav, label %.lr.ph.preheader.i742, label %.preheader370.i.preheader, !llvm.loop !63

.lr.ph.preheader.i742:                            ; preds = %.lr.ph.preheader.i742.preheader, %.loopexit371.i
  %indvar1569 = phi i64 [ 0, %.lr.ph.preheader.i742.preheader ], [ %indvar.next1570, %.loopexit371.i ] ; 4 uses
  %i.aaw = phi double [ %i.zx, %.lr.ph.preheader.i742.preheader ], [ %i.aau, %.loopexit371.i ] ; 4 uses
  %indvars.iv.next413.i979 = phi i64 [ %indvars.iv.next413.i976, %.lr.ph.preheader.i742.preheader ], [ %indvars.iv.next413.i, %.loopexit371.i ] ; 3 uses
  %indvars.iv409.i978 = phi i64 [ %i.zz, %.lr.ph.preheader.i742.preheader ], [ %indvars.iv.next410.i, %.loopexit371.i ] ; 6 uses
  %i.aax = xor i64 %indvar1569, -1
  %i.aay = add i64 %i.aax, %i.zz
  %15 = mul nuw nsw i64 %indvars.iv.next413.i979, %i.bh
  %invariant.gep.i743 = getelementptr [8 x i8], ptr %i.bm, i64 %15 ; 5 uses
  %min.iters.check1577 = icmp ult i64 %indvars.iv409.i978, 4
  br i1 %min.iters.check1577, label %.lr.ph.i744.preheader, label %vector.memcheck1568

vector.memcheck1568:                              ; preds = %.lr.ph.preheader.i742
  %i.aaz = mul i64 %12, %indvar1569
  %scevgep1572 = getelementptr i8, ptr %i.aac, i64 %i.aaz
  %i.aba = shl i64 %indvar1569, 3
  %16 = sub i64 %13, %i.aba
  %scevgep1571 = getelementptr i8, ptr %i.bf, i64 %16
  %bound01573 = icmp ult ptr %i.bs, %scevgep1572
  %bound11574 = icmp ult ptr %invariant.gep.i743, %scevgep1571
  %found.conflict1575 = and i1 %bound01573, %bound11574
  br i1 %found.conflict1575, label %.lr.ph.i744.preheader, label %vector.ph1578

vector.ph1578:                                    ; preds = %vector.memcheck1568
  %n.vec1579 = and i64 %indvars.iv409.i978, -4    ; 3 uses
  %broadcast.splatinsert1580 = insertelement <2 x double> poison, double %i.aaw, i64 0
  %broadcast.splat1581 = shufflevector <2 x double> %broadcast.splatinsert1580, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1582

vector.body1582:                                  ; preds = %vector.body1582, %vector.ph1578
  %index1583 = phi i64 [ 0, %vector.ph1578 ], [ %index.next1588, %vector.body1582 ] ; 3 uses
  %i.abb = getelementptr [8 x i8], ptr %invariant.gep.i743, i64 %index1583 ; 2 uses
  %i.abc = getelementptr i8, ptr %i.abb, i64 16
  %wide.load1584 = load <2 x double>, ptr %i.abb, align 8, !tbaa !10, !alias.scope !157
  %wide.load1585 = load <2 x double>, ptr %i.abc, align 8, !tbaa !10, !alias.scope !157
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1583 ; 3 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16 ; 2 uses
  %wide.load1586 = load <2 x double>, ptr %i.abd, align 8, !tbaa !10, !alias.scope !158, !noalias !157
  %wide.load1587 = load <2 x double>, ptr %i.abe, align 8, !tbaa !10, !alias.scope !158, !noalias !157
  %i.abf = fneg <2 x double> %wide.load1584
  %i.abg = fneg <2 x double> %wide.load1585
  %i.abh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abf, <2 x double> %broadcast.splat1581, <2 x double> %wide.load1586)
  %i.abi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abg, <2 x double> %broadcast.splat1581, <2 x double> %wide.load1587)
  store <2 x double> %i.abh, ptr %i.abd, align 8, !tbaa !10, !alias.scope !158, !noalias !157
  store <2 x double> %i.abi, ptr %i.abe, align 8, !tbaa !10, !alias.scope !158, !noalias !157
  %index.next1588 = add nuw i64 %index1583, 4     ; 2 uses
  %i.abj = icmp eq i64 %index.next1588, %n.vec1579
  br i1 %i.abj, label %middle.block1589, label %vector.body1582, !llvm.loop !67

middle.block1589:                                 ; preds = %vector.body1582
  %cmp.n1590 = icmp eq i64 %indvars.iv409.i978, %n.vec1579
  br i1 %cmp.n1590, label %.loopexit371.i, label %.lr.ph.i744.preheader

.lr.ph.i744.preheader:                            ; preds = %vector.memcheck1568, %.lr.ph.preheader.i742, %middle.block1589
  %indvars.iv401.i.ph = phi i64 [ 0, %vector.memcheck1568 ], [ 0, %.lr.ph.preheader.i742 ], [ %n.vec1579, %middle.block1589 ] ; 5 uses
  %xtraiter1826 = and i64 %indvars.iv409.i978, 1
  %lcmp.mod1827.not = icmp eq i64 %xtraiter1826, 0
  br i1 %lcmp.mod1827.not, label %.lr.ph.i744.prol.loopexit, label %.lr.ph.i744.prol

.lr.ph.i744.prol:                                 ; preds = %.lr.ph.i744.preheader
  %gep.i745.prol = getelementptr [8 x i8], ptr %invariant.gep.i743, i64 %indvars.iv401.i.ph
  %i.abk = load double, ptr %gep.i745.prol, align 8, !tbaa !10
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv401.i.ph ; 2 uses
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !10
  %i.abn = fneg double %i.abk
  %i.abo = tail call double @llvm.fmuladd.f64(double %i.abn, double %i.aaw, double %i.abm)
  store double %i.abo, ptr %i.abl, align 8, !tbaa !10
  %indvars.iv.next402.i.prol = or disjoint i64 %indvars.iv401.i.ph, 1
  br label %.lr.ph.i744.prol.loopexit

.lr.ph.i744.prol.loopexit:                        ; preds = %.lr.ph.i744.prol, %.lr.ph.i744.preheader
  %indvars.iv401.i.unr = phi i64 [ %indvars.iv401.i.ph, %.lr.ph.i744.preheader ], [ %indvars.iv.next402.i.prol, %.lr.ph.i744.prol ]
  %i.abp = icmp eq i64 %i.aay, %indvars.iv401.i.ph
  br i1 %i.abp, label %.loopexit371.i, label %.lr.ph.i744

.lr.ph.i744:                                      ; preds = %.lr.ph.i744.prol.loopexit, %.lr.ph.i744
  %indvars.iv401.i = phi i64 [ %indvars.iv.next402.i.1, %.lr.ph.i744 ], [ %indvars.iv401.i.unr, %.lr.ph.i744.prol.loopexit ] ; 4 uses
  %gep.i745 = getelementptr [8 x i8], ptr %invariant.gep.i743, i64 %indvars.iv401.i
  %i.abq = load double, ptr %gep.i745, align 8, !tbaa !10
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv401.i ; 2 uses
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !10
  %i.abt = fneg double %i.abq
  %i.abu = tail call double @llvm.fmuladd.f64(double %i.abt, double %i.aaw, double %i.abs)
  store double %i.abu, ptr %i.abr, align 8, !tbaa !10
  %indvars.iv.next402.i = add nuw nsw i64 %indvars.iv401.i, 1 ; 2 uses
  %gep.i745.1 = getelementptr [8 x i8], ptr %invariant.gep.i743, i64 %indvars.iv.next402.i
  %i.abv = load double, ptr %gep.i745.1, align 8, !tbaa !10
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next402.i ; 2 uses
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !10
  %i.aby = fneg double %i.abv
  %i.abz = tail call double @llvm.fmuladd.f64(double %i.aby, double %i.aaw, double %i.abx)
  store double %i.abz, ptr %i.abw, align 8, !tbaa !10
  %indvars.iv.next402.i.1 = add nuw nsw i64 %indvars.iv401.i, 2 ; 2 uses
  %exitcond408.not.i.1 = icmp eq i64 %indvars.iv.next402.i.1, %indvars.iv409.i978
  br i1 %exitcond408.not.i.1, label %.loopexit371.i, label %.lr.ph.i744, !llvm.loop !68

.preheader370.i:                                  ; preds = %.preheader370.i.preheader, %.preheader370.i
  %indvars.iv417.i = phi i64 [ %indvars.iv.next418.i.3, %.preheader370.i ], [ 0, %.preheader370.i.preheader ] ; 6 uses
  %niter1834 = phi i64 [ %niter1834.next.3, %.preheader370.i ], [ 0, %.preheader370.i.preheader ]
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv417.i
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !10
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv417.i
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !149
  %i.ace = sext i32 %i.acd to i64
  %i.acf = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ace
  store double %i.acb, ptr %i.acf, align 8, !tbaa !10
  %indvars.iv.next418.i = or disjoint i64 %indvars.iv417.i, 1 ; 2 uses
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next418.i
  %i.ach = load double, ptr %i.acg, align 8, !tbaa !10
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next418.i
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !149
  %i.ack = sext i32 %i.acj to i64
  %i.acl = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ack
  store double %i.ach, ptr %i.acl, align 8, !tbaa !10
  %indvars.iv.next418.i.1 = or disjoint i64 %indvars.iv417.i, 2 ; 2 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next418.i.1
  %i.acn = load double, ptr %i.acm, align 8, !tbaa !10
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next418.i.1
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !149
  %i.acq = sext i32 %i.acp to i64
  %i.acr = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.acq
  store double %i.acn, ptr %i.acr, align 8, !tbaa !10
  %indvars.iv.next418.i.2 = or disjoint i64 %indvars.iv417.i, 3 ; 2 uses
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next418.i.2
  %i.act = load double, ptr %i.acs, align 8, !tbaa !10
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next418.i.2
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !149
  %i.acw = sext i32 %i.acv to i64
  %i.acx = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.acw
  store double %i.act, ptr %i.acx, align 8, !tbaa !10
  %indvars.iv.next418.i.3 = add nuw nsw i64 %indvars.iv417.i, 4 ; 2 uses
  %niter1834.next.3 = add i64 %niter1834, 4       ; 2 uses
  %niter1834.ncmp.3 = icmp eq i64 %niter1834.next.3, %unroll_iter1833
  br i1 %niter1834.ncmp.3, label %.preheader369.i.preheader.unr-lcssa, label %.preheader370.i, !llvm.loop !69

.preheader369.i.preheader.unr-lcssa:              ; preds = %.preheader370.i
  br i1 %lcmp.mod1831.not.a, label %.preheader369.i.preheader, label %.preheader370.i.epil.preheader

.preheader370.i.epil.preheader:                   ; preds = %.preheader369.i.preheader.unr-lcssa, %.preheader370.i.preheader
  %indvars.iv417.i.epil.init = phi i64 [ 0, %.preheader370.i.preheader ], [ %indvars.iv.next418.i.3, %.preheader369.i.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1832)
  br label %.preheader370.i.epil

.preheader370.i.epil:                             ; preds = %.preheader370.i.epil, %.preheader370.i.epil.preheader
  %indvars.iv417.i.epil = phi i64 [ %indvars.iv.next418.i.epil, %.preheader370.i.epil ], [ %indvars.iv417.i.epil.init, %.preheader370.i.epil.preheader ] ; 3 uses
  %epil.iter1830 = phi i64 [ %epil.iter1830.next, %.preheader370.i.epil ], [ 0, %.preheader370.i.epil.preheader ]
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv417.i.epil
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !10
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv417.i.epil
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !149
  %i.adc = sext i32 %i.adb to i64
  %i.add = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.adc
  store double %i.acz, ptr %i.add, align 8, !tbaa !10
  %indvars.iv.next418.i.epil = add nuw nsw i64 %indvars.iv417.i.epil, 1
  %epil.iter1830.next = add i64 %epil.iter1830, 1 ; 2 uses
  %epil.iter1830.cmp.not = icmp eq i64 %epil.iter1830.next, %xtraiter1829
  br i1 %epil.iter1830.cmp.not, label %.preheader369.i.preheader, label %.preheader370.i.epil, !llvm.loop !70

.preheader369.i.preheader:                        ; preds = %.preheader370.i.epil, %.preheader369.i.preheader.unr-lcssa
  br i1 %min.iters.check1555, label %.preheader369.i.preheader1768, label %vector.body1558

vector.body1558:                                  ; preds = %.preheader369.i.preheader, %vector.body1558
  %index1559 = phi i64 [ %index.next1564, %vector.body1558 ], [ 0, %.preheader369.i.preheader ] ; 4 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1559 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %wide.load1560 = load <2 x double>, ptr %i.ade, align 8, !tbaa !10
  %wide.load1561.a = load <2 x double>, ptr %i.adf, align 8, !tbaa !10
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index1559 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %wide.load1562.a = load <2 x double>, ptr %i.adg, align 8, !tbaa !10
  %wide.load1563 = load <2 x double>, ptr %i.adh, align 8, !tbaa !10
  %i.adi = fmul <2 x double> %wide.load1560, %wide.load1562.a
  %i.adj = fmul <2 x double> %wide.load1561.a, %wide.load1563
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index1559 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  store <2 x double> %i.adi, ptr %i.adk, align 8, !tbaa !10
  store <2 x double> %i.adj, ptr %i.adl, align 8, !tbaa !10
  %index.next1564 = add nuw i64 %index1559, 4     ; 2 uses
  %i.adm = icmp eq i64 %index.next1564, %n.vec1557
  br i1 %i.adm, label %middle.block1565, label %vector.body1558, !llvm.loop !71

middle.block1565:                                 ; preds = %vector.body1558
  br i1 %cmp.n1566, label %.lr.ph.i.i721.preheader, label %.preheader369.i.preheader1768

.preheader369.i.preheader1768:                    ; preds = %.preheader369.i.preheader, %middle.block1565
  %indvars.iv422.i.ph = phi i64 [ 0, %.preheader369.i.preheader ], [ %n.vec1557, %middle.block1565 ]
  br label %.preheader369.i

.preheader369.i:                                  ; preds = %.preheader369.i.preheader1768, %.preheader369.i
  %indvars.iv422.i = phi i64 [ %indvars.iv.next423.i, %.preheader369.i ], [ %indvars.iv422.i.ph, %.preheader369.i.preheader1768 ] ; 4 uses
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv422.i
  %i.ado = load double, ptr %i.adn, align 8, !tbaa !10
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv422.i
  %i.adq = load double, ptr %i.adp, align 8, !tbaa !10
  %i.adr = fmul double %i.ado, %i.adq
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv422.i
  store double %i.adr, ptr %i.ads, align 8, !tbaa !10
  %indvars.iv.next423.i = add nuw nsw i64 %indvars.iv422.i, 1 ; 2 uses
  %exitcond426.not.i = icmp eq i64 %indvars.iv.next423.i, %i.bc
  br i1 %exitcond426.not.i, label %.lr.ph.i.i721.preheader, label %.preheader369.i, !llvm.loop !72

.lr.ph.i.i721.preheader:                          ; preds = %.preheader369.i, %middle.block1565
  br label %.lr.ph.i.i721

.lr.ph.i.i721:                                    ; preds = %.lr.ph.i.i721.preheader, %bb.cv
  %indvars.iv.i.i722 = phi i64 [ %indvars.iv.next.i.i733, %bb.cv ], [ 0, %.lr.ph.i.i721.preheader ] ; 2 uses
  %.076.i.i723 = phi double [ %.1.i.i732, %bb.cv ], [ 0.000000e+00, %.lr.ph.i.i721.preheader ] ; 8 uses
  %.06075.i.i724 = phi double [ %.161.i.i731, %bb.cv ], [ 0.000000e+00, %.lr.ph.i.i721.preheader ] ; 8 uses
  %.06274.i.i725 = phi double [ %.163.i.i730, %bb.cv ], [ 0.000000e+00, %.lr.ph.i.i721.preheader ] ; 6 uses
  %.06473.i.i726 = phi double [ %.165.i.i729, %bb.cv ], [ 0.000000e+00, %.lr.ph.i.i721.preheader ] ; 6 uses
  %.06672.i.i727 = phi double [ %.167.i.i728, %bb.cv ], [ 0.000000e+00, %.lr.ph.i.i721.preheader ] ; 6 uses
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i.i722
  %i.adu = load double, ptr %i.adt, align 8, !tbaa !10 ; 4 uses
  %i.adv = tail call double @llvm.fabs.f64(double %i.adu) ; 10 uses
  %i.adw = fcmp ogt double %i.adv, f0x2000000000000000
  br i1 %i.adw, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %.lr.ph.i.i721
  %i.adx = fcmp olt double %i.adv, %i.do
  br i1 %i.adx, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ady = tail call double @llvm.fmuladd.f64(double %i.adu, double %i.adu, double %.06473.i.i726)
  br label %bb.cv

bb.co:                                            ; preds = %bb.cm
  %i.adz = fcmp ogt double %i.adv, %.06075.i.i724
  br i1 %i.adz, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.aea = fdiv double %.06075.i.i724, %i.adv     ; 2 uses
  %i.aeb = fmul double %.06672.i.i727, %i.aea
  %i.aec = tail call double @llvm.fmuladd.f64(double %i.aeb, double %i.aea, double 1.000000e+00)
  br label %bb.cv

bb.cq:                                            ; preds = %bb.co
  %i.aed = fdiv double %i.adv, %.06075.i.i724     ; 2 uses
  %i.aee = tail call double @llvm.fmuladd.f64(double %i.aed, double %i.aed, double %.06672.i.i727)
  br label %bb.cv

bb.cr:                                            ; preds = %.lr.ph.i.i721
  %i.aef = fcmp ogt double %i.adv, %.076.i.i723
  br i1 %i.aef, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.aeg = fdiv double %.076.i.i723, %i.adv       ; 2 uses
  %i.aeh = fmul double %.06274.i.i725, %i.aeg
  %i.aei = tail call double @llvm.fmuladd.f64(double %i.aeh, double %i.aeg, double 1.000000e+00)
  br label %bb.cv

bb.ct:                                            ; preds = %bb.cr
  %i.aej = fcmp une double %i.adu, 0.000000e+00
  br i1 %i.aej, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aek = fdiv double %i.adv, %.076.i.i723       ; 2 uses
  %i.ael = tail call double @llvm.fmuladd.f64(double %i.aek, double %i.aek, double %.06274.i.i725)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %bb.cn
  %.167.i.i728 = phi double [ %.06672.i.i727, %bb.cn ], [ %i.aec, %bb.cp ], [ %i.aee, %bb.cq ], [ %.06672.i.i727, %bb.cs ], [ %.06672.i.i727, %bb.cu ], [ %.06672.i.i727, %bb.ct ] ; 3 uses
  %.165.i.i729 = phi double [ %i.ady, %bb.cn ], [ %.06473.i.i726, %bb.cp ], [ %.06473.i.i726, %bb.cq ], [ %.06473.i.i726, %bb.cs ], [ %.06473.i.i726, %bb.cu ], [ %.06473.i.i726, %bb.ct ] ; 7 uses
  %.163.i.i730 = phi double [ %.06274.i.i725, %bb.cn ], [ %.06274.i.i725, %bb.cp ], [ %.06274.i.i725, %bb.cq ], [ %i.aei, %bb.cs ], [ %i.ael, %bb.cu ], [ %.06274.i.i725, %bb.ct ] ; 4 uses
  %.161.i.i731 = phi double [ %.06075.i.i724, %bb.cn ], [ %i.adv, %bb.cp ], [ %.06075.i.i724, %bb.cq ], [ %.06075.i.i724, %bb.cs ], [ %.06075.i.i724, %bb.cu ], [ %.06075.i.i724, %bb.ct ] ; 4 uses
  %.1.i.i732 = phi double [ %.076.i.i723, %bb.cn ], [ %.076.i.i723, %bb.cp ], [ %.076.i.i723, %bb.cq ], [ %i.adv, %bb.cs ], [ %.076.i.i723, %bb.cu ], [ %.076.i.i723, %bb.ct ] ; 8 uses
  %indvars.iv.next.i.i733 = add nuw nsw i64 %indvars.iv.i.i722, 1 ; 2 uses
  %exitcond.not.i.i734 = icmp eq i64 %indvars.iv.next.i.i733, %i.bc
  br i1 %exitcond.not.i.i734, label %._crit_edge.i.i735, label %.lr.ph.i.i721, !llvm.loop !0

._crit_edge.i.i735:                               ; preds = %bb.cv
  %i.aem = fcmp une double %.167.i.i728, 0.000000e+00
  br i1 %i.aem, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %._crit_edge.i.i735
  %i.aen = fdiv double %.165.i.i729, %.161.i.i731
  %i.aeo = fdiv double %i.aen, %.161.i.i731
  %i.aep = fadd double %.167.i.i728, %i.aeo
  %i.aeq = tail call double @sqrt(double noundef %i.aep) #11
  %i.aer = fmul double %.161.i.i731, %i.aeq
  br label %_Z8lm_enormiPKd.exit.i737

bb.cx:                                            ; preds = %._crit_edge.i.i735
  %i.aes = fcmp une double %.165.i.i729, 0.000000e+00
  br i1 %i.aes, label %bb.cy, label %.thread.i.i736

bb.cy:                                            ; preds = %bb.cx
end_hunk_1
