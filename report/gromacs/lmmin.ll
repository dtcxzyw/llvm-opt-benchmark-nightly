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
  %.pre1228 = load double, ptr %.phi.trans.insert, align 8, !tbaa !142 ; 3 uses
  %i.ab = fcmp olt double %.pre1228, 0.000000e+00
  %or.cond1364 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond1364, label %._crit_edge1227, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !143 ; 2 uses
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  br i1 %i.ae, label %._crit_edge1227, label %bb.g

._crit_edge1227:                                  ; preds = %bb.e, %bb.f
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !143
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.30, double noundef %i.z, double noundef %.pre1228, double noundef %i.ah) #12 ; 0 uses
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
  %i.bc = zext nneg i32 %0 to i64                 ; 85 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bb, %i.bd
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #13 ; 43 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 9, ptr %i.q, align 4, !tbaa !137
  br label %bb.jx

bb.o:                                             ; preds = %bb.m
  %i.bh = zext i32 %4 to i64                      ; 70 uses
  %i.bi = shl nuw nsw i64 %i.bh, 3                ; 15 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 %i.bi  ; 24 uses
  %i.bk = shl nuw nsw i64 %i.bc, 3                ; 6 uses
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
  %i.bu = icmp ne i32 %0, 0                       ; 2 uses
  %or.cond = and i1 %.not664, %i.bu
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit883

.lr.ph.preheader:                                 ; preds = %bb.o
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader1807, label %vector.ph

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
  br i1 %cmp.n, label %.loopexit883, label %.lr.ph.preheader1807

.lr.ph.preheader1807:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1807, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1807 ] ; 2 uses
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
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.34, double noundef %i.z, double noundef %i.ad, double noundef %.pre1228) #11 ; 0 uses
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
  %.not1368 = icmp eq i32 %4, 0                   ; 2 uses
  br i1 %.not668, label %.preheader878, label %.preheader880

.preheader880:                                    ; preds = %bb.t
  br i1 %.not1368, label %.loopexit879, label %.lr.ph927

.preheader878:                                    ; preds = %bb.t
  br i1 %.not1368, label %.loopexit879, label %.lr.ph929

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
  br i1 %i.bu, label %bb.v, label %.thread.sink.split

bb.v:                                             ; preds = %bb.u
  %i.cx = tail call noundef double @_Z8lm_fnormiPKdS0_(i32 noundef %4, ptr noundef nonnull %i.bf, ptr noundef %5) ; 4 uses
  %i.cy = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.cz = and i32 %i.cy, 2
  %.not670 = icmp eq i32 %i.cz, 0
  br i1 %.not670, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.37, double noundef %i.cx) #11 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.db = tail call double @llvm.fabs.f64(double %i.cx)
  %i.dc = fcmp ueq double %i.db, +inf
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dd = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not671 = icmp eq i32 %i.dd, 0
  br i1 %.not671, label %.thread.sink.split, label %.thread.sink.split.sink.split

bb.z:                                             ; preds = %bb.x
  %i.de = fcmp ugt double %i.cx, f0x0010000000000000
  br i1 %i.de, label %.preheader877, label %.thread.sink.split

.preheader877:                                    ; preds = %bb.z
  %i.df = fmul double %i.h, %i.h                  ; 2 uses
  %.not1369 = icmp eq i32 %4, 0                   ; 7 uses
  %i.dg = uitofp nneg i32 %4 to double
  %i.dh = add nuw i32 %4, 1                       ; 7 uses
  %.not674 = icmp eq ptr %5, null                 ; 2 uses
  %i.di = icmp sgt i32 %i.l, 0                    ; 2 uses
  %i.dj = uitofp nneg i32 %0 to double
  %i.dk = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.dj, i64 1
  %i.dm = fdiv <2 x double> splat (double f0x5FEFFFFFFFFFFFFF), %i.dl ; 2 uses
  %i.dn = extractelement <2 x double> %i.dm, i64 1 ; 5 uses
  %i.do = uitofp nneg i32 %0 to double
  %i.dp = fdiv double f0x5FEFFFFFFFFFFFFF, %i.do  ; 4 uses
  %i.dq = zext nneg i32 %4 to i64                 ; 4 uses
  %i.dr = zext nneg i32 %0 to i64                 ; 11 uses
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %wide.trip.count1197 = zext nneg i32 %i.l to i64
  %i.dt = shl nuw nsw i64 %i.bc, 5
  %i.du = add nuw nsw i64 %i.bh, %i.bn
  %i.dv = shl nuw nsw i64 %i.du, 3
  %i.dw = shl nuw nsw i64 %i.bc, 4
  %i.dx = add nuw nsw i64 %i.dw, %i.bi            ; 2 uses
  %i.dy = add nuw nsw i64 %i.bi, 8
  %i.dz = getelementptr i8, ptr %i.bf, i64 %i.dx
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.bo
  %scevgep1443 = getelementptr i8, ptr %i.ea, i64 8
  %i.eb = mul nuw nsw i64 %i.bc, 40
  %i.ec = add nuw nsw i64 %i.bh, %i.bn
  %i.ed = shl nuw nsw i64 %i.ec, 3                ; 2 uses
  %i.ee = mul nuw nsw i64 %i.bc, 48
  %i.ef = getelementptr i8, ptr %i.bf, i64 %i.ee
  %scevgep1464 = getelementptr i8, ptr %i.ef, i64 %i.ed ; 3 uses
  %i.eg = shl nuw nsw i64 %i.bc, 4
  %i.eh = add nuw nsw i64 %i.bi, 8
  %i.ei = mul nuw nsw i64 %i.bc, 24               ; 3 uses
  %i.ej = shl nuw nsw i64 %i.bh, 3
  %i.ek = add nuw nsw i64 %i.bh, %i.bn
  %i.el = shl nuw nsw i64 %i.ek, 3
  %i.em = shl nuw nsw i64 %i.bc, 4
  %i.en = add nuw nsw i64 %i.bi, 8                ; 2 uses
  %i.eo = shl nuw nsw i64 %i.bh, 3
  %i.ep = shl nuw nsw i64 %i.bh, 3
  %i.eq = mul nuw nsw i64 %i.bc, 40
  %i.er = add nuw nsw i64 %i.bh, %i.bn
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = add nuw nsw i64 %i.eq, %i.es
  %i.eu = shl nuw nsw i64 %i.bc, 4
  %i.ev = shl nuw nsw i64 %i.bh, 3
  %i.ew = sub nuw nsw i64 -8, %i.bi
  %i.ex = mul nuw nsw i64 %i.bc, 40
  %i.ey = add nuw nsw i64 %i.bh, %i.bn
  %i.ez = shl nuw nsw i64 %i.bc, 4                ; 3 uses
  %i.fa = add nuw nsw i64 %i.bi, 8                ; 2 uses
  %10 = add nuw nsw i64 %i.bh, %i.bc
  %11 = shl nuw nsw i64 %10, 4                    ; 3 uses
  %i.fb = shl nuw nsw i64 %i.bh, 3
  %i.fc = add nuw nsw i64 %i.bk, 8
  %i.fd = mul i64 %i.fc, %i.bh                    ; 2 uses
  %scevgep1684.a = getelementptr i8, ptr %i.bf, i64 %i.fd
  %i.fe = getelementptr i8, ptr %scevgep1684.a, i64 %i.ez
  %scevgep1687 = getelementptr i8, ptr %i.bf, i64 %11
  %i.ff = shl nuw nsw i64 %i.bc, 4
  %i.fg = getelementptr i8, ptr %i.bf, i64 %i.fd
  %scevgep1722 = getelementptr i8, ptr %i.fg, i64 %i.ff
  %i.fh = add nuw nsw i64 %i.bh, %i.bc
  %i.fi = shl nuw nsw i64 %i.fh, 4
  %scevgep1723 = getelementptr i8, ptr %i.bf, i64 %i.fi
  %.neg = mul nsw i64 %i.bc, -24
  %i.fj = shl nuw nsw i64 %i.bn, 3
  %i.fk = sub nsw i64 %.neg, %i.fj
  %i.fl = shl nuw nsw i64 %i.bh, 3
  %i.fm = shl nuw nsw i64 %i.bc, 4
  %i.fn = add nuw nsw i64 %i.fm, %i.bi
  %i.fo = add nsw i64 %i.bh, -1                   ; 3 uses
  %i.fp = add nsw i64 %i.bc, -1                   ; 6 uses
  %i.fq = add nsw i64 %i.bc, -2
  %min.iters.check1746 = icmp eq i32 %4, 1
  %invariant.op = add i64 %i.fk, -1
  %invariant.op1921 = add i64 %i.fn, -1
  %n.vec1748 = and i64 %i.bh, 4294967294          ; 3 uses
  %cmp.n1757 = icmp eq i64 %n.vec1748, %i.bh
  %xtraiter = and i64 %i.bh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fr = extractelement <2 x double> %i.dm, i64 0
  %i.fs = getelementptr i8, ptr %i.bf, i64 %11
  %i.ft = getelementptr i8, ptr %i.bf, i64 %i.ez
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.bi
  %min.iters.check1729 = icmp ult i32 %4, 4
  %n.vec1731 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1740 = icmp eq i64 %n.vec1731, %i.bh
  %xtraiter1810 = and i64 %i.bh, 1
  %lcmp.mod1811.not = icmp eq i64 %xtraiter1810, 0
  %i.fv = add nsw i64 %i.bh, -1
  %i.fw = add nsw i64 %i.bh, -1
  %min.iters.check1669 = icmp ult i32 %4, 4
  %n.vec1671 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1680 = icmp eq i64 %n.vec1671, %i.bh
  %min.iters.check1657 = icmp ult i32 %4, 4
  %n.vec1659 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1666 = icmp eq i64 %n.vec1659, %i.bh
  %invariant.gep1923 = getelementptr i8, ptr %i.bf, i64 %i.ex
  %i.fx = getelementptr i8, ptr %i.bf, i64 %i.ez
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.bi
  %i.fz = getelementptr i8, ptr %i.bf, i64 %11
  %i.ga = add nsw i64 %i.bh, -1
  %min.iters.check1620 = icmp ult i32 %0, 4
  %n.vec1622 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1631 = icmp eq i64 %n.vec1622, %i.bc
  %min.iters.check1608 = icmp ult i32 %0, 4
  %n.vec1610 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1617 = icmp eq i64 %n.vec1610, %i.bc
  %min.iters.check1594 = icmp ult i32 %0, 4
  %n.vec1596 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1605 = icmp eq i64 %n.vec1596, %i.bc
  %i.gb = getelementptr i8, ptr %i.bf, i64 %i.eu
  %xtraiter1830 = and i64 %i.bc, 3                ; 3 uses
  %i.gc = icmp ult i64 %i.fp, 3
  %unroll_iter1834 = and i64 %i.bc, 2147483644
  %lcmp.mod1832.not = icmp eq i64 %xtraiter1830, 0
  %lcmp.mod1833 = icmp ne i64 %xtraiter1830, 0
  %min.iters.check1556 = icmp ult i32 %0, 4
  %n.vec1558 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1567 = icmp eq i64 %n.vec1558, %i.bc
  %xtraiter1836 = and i64 %i.bc, 1
  %i.gd = icmp eq i64 %i.fp, 0
  %unroll_iter1840 = and i64 %i.bc, 2147483646
  %lcmp.mod1838.not = icmp eq i64 %xtraiter1836, 0
  %lcmp.mod1839 = trunc i32 %0 to i1
  %min.iters.check1542 = icmp ult i32 %0, 4
  %n.vec1544 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1553 = icmp eq i64 %n.vec1544, %i.bc
  %ident.check.not = icmp eq i32 %4, 1
  %invariant.gep1925 = getelementptr i8, ptr %i.bf, i64 %i.ei
  %invariant.gep1927 = getelementptr i8, ptr %invariant.gep1925, i64 %i.el
  %i.ge = getelementptr i8, ptr %i.bf, i64 %i.em
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.bi
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = getelementptr i8, ptr %i.bf, i64 %i.ei
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.bi
  %xtraiter1863 = and i64 %i.bc, 1
  %i.gj = icmp eq i64 %i.fp, 0
  %unroll_iter1868 = and i64 %i.bc, 2147483646
  %lcmp.mod1865.not = icmp eq i64 %xtraiter1863, 0
  %lcmp.mod1867 = trunc i32 %0 to i1
  %xtraiter1870 = and i64 %i.bc, 3                ; 3 uses
  %i.gk = icmp ult i64 %i.fp, 3
  %unroll_iter1874 = and i64 %i.bc, 2147483644
  %lcmp.mod1872.not = icmp eq i64 %xtraiter1870, 0
  %lcmp.mod1873 = icmp ne i64 %xtraiter1870, 0
  %min.iters.check1491 = icmp ult i32 %0, 4
  %n.vec1493 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1502 = icmp eq i64 %n.vec1493, %i.bc
  %xtraiter1877 = and i64 %i.bc, 1
  %i.gl = icmp eq i64 %i.fp, 0
  %unroll_iter1881 = and i64 %i.bc, 2147483646
  %lcmp.mod1879.not = icmp eq i64 %xtraiter1877, 0
  %lcmp.mod1880 = trunc i32 %0 to i1
  %i.gm = getelementptr i8, ptr %i.bf, i64 %i.eb
  %i.gn = getelementptr i8, ptr %i.gm, i64 %i.ed
  %i.go = getelementptr i8, ptr %i.gn, i64 8
  %i.gp = getelementptr i8, ptr %i.bf, i64 %i.eg
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.bi
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %i.gs = getelementptr i8, ptr %i.bf, i64 %i.ei
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.bi
  %bound11471 = icmp ult ptr %i.bs, %scevgep1464
  %i.gu = add nsw i64 %i.bc, -1
  %i.gv = getelementptr i8, ptr %i.bf, i64 %i.dx
  %i.gw = getelementptr i8, ptr %i.gv, i64 8
  %i.gx = getelementptr i8, ptr %i.bf, i64 %i.dt
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.dv
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %min.iters.check1429 = icmp ult i32 %0, 4
  %n.vec1431 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1440 = icmp eq i64 %n.vec1431, %i.bc
  %min.iters.check1415 = icmp ult i32 %0, 4
  %n.vec1417 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1426 = icmp eq i64 %n.vec1417, %i.bc
  %min.iters.check1404 = icmp ult i32 %4, 4
  %n.vec1406 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1412 = icmp eq i64 %n.vec1406, %i.bh
  br label %.lr.ph934.preheader

.lr.ph934.preheader:                              ; preds = %bb.jn, %.preheader877
  %.0835 = phi double [ %.2837, %bb.jn ], [ 0.000000e+00, %.preheader877 ]
  %.0608 = phi double [ %.2610, %bb.jn ], [ %i.cx, %.preheader877 ] ; 2 uses
  %.0595 = phi double [ %.5600, %bb.jn ], [ 0.000000e+00, %.preheader877 ] ; 3 uses
  %.0594 = phi double [ %.4, %bb.jn ], [ 0.000000e+00, %.preheader877 ] ; 5 uses
  %.0592 = phi i32 [ %i.bne, %bb.jn ], [ 0, %.preheader877 ] ; 3 uses
  br label %.lr.ph934

.lr.ph934:                                        ; preds = %.lr.ph934.preheader, %._crit_edge
  %indvars.iv1083 = phi i64 [ 0, %.lr.ph934.preheader ], [ %indvars.iv.next1084, %._crit_edge ] ; 4 uses
  %i.ha = mul i64 %i.fl, %indvars.iv1083          ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1083 ; 3 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !10 ; 3 uses
  %i.hd = tail call double @llvm.fabs.f64(double %i.hc)
  %i.he = fmul double %i.h, %i.hd                 ; 2 uses
  %.inv850 = fcmp oge double %i.df, %i.he
  %.708 = select i1 %.inv850, double %i.df, double %i.he ; 5 uses
  %i.hf = fadd double %i.hc, %.708
  store double %i.hf, ptr %i.hb, align 8, !tbaa !10
  tail call void %7(ptr noundef %1, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.r)
  %i.hg = load i32, ptr %i.s, align 8, !tbaa !139
  %i.hh = add nsw i32 %i.hg, 1
  store i32 %i.hh, ptr %i.s, align 8, !tbaa !139
  %i.hi = load i32, ptr %i.r, align 8, !tbaa !138
  %.not701 = icmp eq i32 %i.hi, 0
  br i1 %.not701, label %.preheader864, label %.thread

.preheader864:                                    ; preds = %.lr.ph934
  br i1 %.not1369, label %._crit_edge, label %.lr.ph931

.lr.ph931:                                        ; preds = %.preheader864
  %i.hj = mul nuw nsw i64 %indvars.iv1083, %i.bh
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.hj ; 4 uses
  br i1 %min.iters.check1746, label %scalar.ph1745.preheader, label %vector.memcheck1742

vector.memcheck1742:                              ; preds = %.lr.ph931
  %.reass = add i64 %i.ha, %invariant.op
  %diff.check = icmp ult i64 %.reass, 15
  %.reass1922 = add i64 %i.ha, %invariant.op1921
  %diff.check1743 = icmp ult i64 %.reass1922, 15
  %conflict.rdx1744 = or i1 %diff.check, %diff.check1743
  br i1 %conflict.rdx1744, label %scalar.ph1745.preheader, label %vector.ph1747

vector.ph1747:                                    ; preds = %vector.memcheck1742
  %broadcast.splatinsert1749 = insertelement <2 x double> poison, double %.708, i64 0
  %broadcast.splat1750 = shufflevector <2 x double> %broadcast.splatinsert1749, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1751

vector.body1751:                                  ; preds = %vector.body1751, %vector.ph1747
  %index1752 = phi i64 [ 0, %vector.ph1747 ], [ %index.next1755, %vector.body1751 ] ; 4 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1752
  %wide.load1753 = load <2 x double>, ptr %i.hk, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1752
  %wide.load1754 = load <2 x double>, ptr %i.hl, align 8, !tbaa !10
  %i.hm = fsub <2 x double> %wide.load1753, %wide.load1754
  %i.hn = fdiv <2 x double> %i.hm, %broadcast.splat1750
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1752
  store <2 x double> %i.hn, ptr %i.ho, align 8, !tbaa !10
  %index.next1755 = add nuw i64 %index1752, 2     ; 2 uses
  %i.hp = icmp eq i64 %index.next1755, %n.vec1748
  br i1 %i.hp, label %middle.block1756, label %vector.body1751, !llvm.loop !17

middle.block1756:                                 ; preds = %vector.body1751
  br i1 %cmp.n1757, label %._crit_edge, label %scalar.ph1745.preheader

scalar.ph1745.preheader:                          ; preds = %vector.memcheck1742, %.lr.ph931, %middle.block1756
  %indvars.iv1078.ph = phi i64 [ 0, %vector.memcheck1742 ], [ 0, %.lr.ph931 ], [ %n.vec1748, %middle.block1756 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph1745.prol.loopexit, label %scalar.ph1745.prol

scalar.ph1745.prol:                               ; preds = %scalar.ph1745.preheader
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1078.ph
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !10
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1078.ph
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !10
  %i.hu = fsub double %i.hr, %i.ht
  %i.hv = fdiv double %i.hu, %.708
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1078.ph
  store double %i.hv, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next1079.prol = or disjoint i64 %indvars.iv1078.ph, 1
  br label %scalar.ph1745.prol.loopexit
end_hunk_0
begin_hunk_1_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a
  store double %i.mc, ptr %gep307.i.1, align 8, !tbaa !10
  %indvars.iv.next264.i.1 = add nuw nsw i64 %indvars.iv263.i, 2 ; 2 uses
  %exitcond267.not.i.1 = icmp eq i64 %indvars.iv.next264.i.1, %i.bh
  br i1 %exitcond267.not.i.1, label %._crit_edge231.i.loopexit, label %scalar.ph1728, !llvm.loop !28

._crit_edge231.i.loopexit:                        ; preds = %scalar.ph1728.prol.loopexit, %scalar.ph1728, %middle.block1739
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv268.i
  %i.mf = load double, ptr %i.me, align 8, !tbaa !10
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ll
  store double %i.mf, ptr %i.mg, align 8, !tbaa !10
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv268.i
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !10
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ll
  store double %i.mi, ptr %i.mj, align 8, !tbaa !10
  br label %.lr.ph.i184.i.preheader

.lr.ph.i184.i.preheader:                          ; preds = %._crit_edge231.i.loopexit, %._crit_edge.i
  %i.mk = sub nsw i64 %i.bh, %indvars.iv268.i     ; 10 uses
  %i.ml = mul nuw i32 %i.dh, %indvars290.i
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.mm ; 5 uses
  %i.mo = trunc nuw nsw i64 %i.mk to i32
  %i.mp = uitofp nneg i32 %i.mo to double
  %i.mq = fdiv double f0x5FEFFFFFFFFFFFFF, %i.mp
  br label %.lr.ph.i184.i

.lr.ph.i184.i:                                    ; preds = %.lr.ph.i184.i.preheader, %bb.az
  %indvars.iv.i185.i = phi i64 [ %indvars.iv.next.i196.i, %bb.az ], [ 0, %.lr.ph.i184.i.preheader ] ; 2 uses
  %.076.i186.i = phi double [ %.1.i195.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 8 uses
  %.06075.i187.i = phi double [ %.161.i194.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 8 uses
  %.06274.i188.i = phi double [ %.163.i193.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 6 uses
  %.06473.i189.i = phi double [ %.165.i192.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 6 uses
  %.06672.i190.i = phi double [ %.167.i191.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 6 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i185.i
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !10 ; 4 uses
  %i.mt = tail call double @llvm.fabs.f64(double %i.ms) ; 10 uses
  %i.mu = fcmp ogt double %i.mt, f0x2000000000000000
  br i1 %i.mu, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %.lr.ph.i184.i
  %i.mv = fcmp olt double %i.mt, %i.mq
  br i1 %i.mv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.ms, double %i.ms, double %.06473.i189.i)
  br label %bb.az

bb.as:                                            ; preds = %bb.aq
  %i.mx = fcmp ogt double %i.mt, %.06075.i187.i
  br i1 %i.mx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.my = fdiv double %.06075.i187.i, %i.mt       ; 2 uses
  %i.mz = fmul double %.06672.i190.i, %i.my
  %i.na = tail call double @llvm.fmuladd.f64(double %i.mz, double %i.my, double 1.000000e+00)
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.nb = fdiv double %i.mt, %.06075.i187.i       ; 2 uses
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.nb, double %i.nb, double %.06672.i190.i)
  br label %bb.az

bb.av:                                            ; preds = %.lr.ph.i184.i
  %i.nd = fcmp ogt double %i.mt, %.076.i186.i
  br i1 %i.nd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ne = fdiv double %.076.i186.i, %i.mt         ; 2 uses
  %i.nf = fmul double %.06274.i188.i, %i.ne
  %i.ng = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.ne, double 1.000000e+00)
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.nh = fcmp une double %i.ms, 0.000000e+00
  br i1 %i.nh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ni = fdiv double %i.mt, %.076.i186.i         ; 2 uses
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.ni, double %i.ni, double %.06274.i188.i)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.ar
  %.167.i191.i = phi double [ %.06672.i190.i, %bb.ar ], [ %i.na, %bb.at ], [ %i.nc, %bb.au ], [ %.06672.i190.i, %bb.aw ], [ %.06672.i190.i, %bb.ay ], [ %.06672.i190.i, %bb.ax ] ; 3 uses
  %.165.i192.i = phi double [ %i.mw, %bb.ar ], [ %.06473.i189.i, %bb.at ], [ %.06473.i189.i, %bb.au ], [ %.06473.i189.i, %bb.aw ], [ %.06473.i189.i, %bb.ay ], [ %.06473.i189.i, %bb.ax ] ; 7 uses
  %.163.i193.i = phi double [ %.06274.i188.i, %bb.ar ], [ %.06274.i188.i, %bb.at ], [ %.06274.i188.i, %bb.au ], [ %i.ng, %bb.aw ], [ %i.nj, %bb.ay ], [ %.06274.i188.i, %bb.ax ] ; 4 uses
  %.161.i194.i = phi double [ %.06075.i187.i, %bb.ar ], [ %i.mt, %bb.at ], [ %.06075.i187.i, %bb.au ], [ %.06075.i187.i, %bb.aw ], [ %.06075.i187.i, %bb.ay ], [ %.06075.i187.i, %bb.ax ] ; 4 uses
  %.1.i195.i = phi double [ %.076.i186.i, %bb.ar ], [ %.076.i186.i, %bb.at ], [ %.076.i186.i, %bb.au ], [ %i.mt, %bb.aw ], [ %.076.i186.i, %bb.ay ], [ %.076.i186.i, %bb.ax ] ; 8 uses
  %indvars.iv.next.i196.i = add nuw nsw i64 %indvars.iv.i185.i, 1 ; 2 uses
  %exitcond.not.i197.i = icmp eq i64 %indvars.iv.next.i196.i, %i.mk
  br i1 %exitcond.not.i197.i, label %._crit_edge.i198.i, label %.lr.ph.i184.i, !llvm.loop !0

._crit_edge.i198.i:                               ; preds = %bb.az
  %i.nk = mul nuw nsw i64 %indvars.iv268.i, %i.bh
  %i.nl = fcmp une double %.167.i191.i, 0.000000e+00
  br i1 %i.nl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i198.i
  %i.nm = fdiv double %.165.i192.i, %.161.i194.i
  %i.nn = fdiv double %i.nm, %.161.i194.i
  %i.no = fadd double %.167.i191.i, %i.nn
  %i.np = tail call double @sqrt(double noundef %i.no) #11
  %i.nq = fmul double %.161.i194.i, %i.np
  br label %_Z8lm_enormiPKd.exit199.i

bb.bb:                                            ; preds = %._crit_edge.i198.i
  %i.nr = fcmp une double %.165.i192.i, 0.000000e+00
  br i1 %i.nr, label %bb.bc, label %.thread.i178.i

bb.bc:                                            ; preds = %bb.bb
  %i.ns = fcmp ult double %.165.i192.i, %.1.i195.i
  br i1 %i.ns, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nt = fdiv double %.1.i195.i, %.165.i192.i
  %i.nu = fmul double %.163.i193.i, %.1.i195.i
  %i.nv = tail call double @llvm.fmuladd.f64(double %i.nt, double %i.nu, double 1.000000e+00)
  %i.nw = fmul double %.165.i192.i, %i.nv
  %i.nx = tail call double @sqrt(double noundef %i.nw) #11
  br label %_Z8lm_enormiPKd.exit199.i

bb.be:                                            ; preds = %bb.bc
  %i.ny = fdiv double %.165.i192.i, %.1.i195.i
  %i.nz = tail call double @llvm.fmuladd.f64(double %.1.i195.i, double %.163.i193.i, double %i.ny)
  %i.oa = fmul double %.1.i195.i, %i.nz
  %i.ob = tail call double @sqrt(double noundef %i.oa) #11
  br label %_Z8lm_enormiPKd.exit199.i

.thread.i178.i:                                   ; preds = %bb.bb
  %i.oc = tail call double @sqrt(double noundef %.163.i193.i) #11
  %i.od = fmul double %.1.i195.i, %i.oc
  br label %_Z8lm_enormiPKd.exit199.i

_Z8lm_enormiPKd.exit199.i:                        ; preds = %.thread.i178.i, %bb.be, %bb.bd, %bb.ba
  %.069.i181.i = phi double [ %i.nq, %bb.ba ], [ %i.nx, %bb.bd ], [ %i.ob, %bb.be ], [ %i.od, %.thread.i178.i ] ; 3 uses
  %i.oe = fcmp oeq double %.069.i181.i, 0.000000e+00
  br i1 %i.oe, label %bb.by, label %.lr.ph234.preheader.i

.lr.ph234.preheader.i:                            ; preds = %_Z8lm_enormiPKd.exit199.i
  %i.of = load double, ptr %i.mn, align 8, !tbaa !10
  %i.og = fcmp olt double %i.of, 0.000000e+00
  %i.oh = fneg double %.069.i181.i
  %.0165.i = select i1 %i.og, double %i.oh, double %.069.i181.i ; 3 uses
  %i.oi = and i64 %i.nk, 4294967295
  %invariant.gep308.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.oi ; 11 uses
  %min.iters.check1709 = icmp ult i64 %i.mk, 2
  br i1 %min.iters.check1709, label %.lr.ph234.i.preheader, label %vector.ph1710

vector.ph1710:                                    ; preds = %.lr.ph234.preheader.i
  %n.vec1711 = and i64 %i.mk, -2                  ; 3 uses
  %i.oj = add i64 %indvars.iv268.i, %n.vec1711
  %broadcast.splatinsert1712 = insertelement <2 x double> poison, double %.0165.i, i64 0
  %broadcast.splat1713 = shufflevector <2 x double> %broadcast.splatinsert1712, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %indvars.iv268.i
  br label %vector.body1714

vector.body1714:                                  ; preds = %vector.body1714, %vector.ph1710
  %index1715 = phi i64 [ 0, %vector.ph1710 ], [ %index.next1717, %vector.body1714 ] ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %index1715 ; 2 uses
  %wide.load1716 = load <2 x double>, ptr %i.ol, align 8, !tbaa !10
  %i.om = fdiv <2 x double> %wide.load1716, %broadcast.splat1713
  store <2 x double> %i.om, ptr %i.ol, align 8, !tbaa !10
  %index.next1717 = add nuw i64 %index1715, 2     ; 2 uses
  %i.on = icmp eq i64 %index.next1717, %n.vec1711
  br i1 %i.on, label %middle.block1718, label %vector.body1714, !llvm.loop !29

middle.block1718:                                 ; preds = %vector.body1714
  %cmp.n1719 = icmp eq i64 %i.mk, %n.vec1711
  br i1 %cmp.n1719, label %._crit_edge235.loopexit.i, label %.lr.ph234.i.preheader

.lr.ph234.i.preheader:                            ; preds = %.lr.ph234.preheader.i, %middle.block1718
  %indvars.iv270.i.ph = phi i64 [ %indvars.iv268.i, %.lr.ph234.preheader.i ], [ %i.oj, %middle.block1718 ]
  br label %.lr.ph234.i

.lr.ph234.i:                                      ; preds = %.lr.ph234.i.preheader, %.lr.ph234.i
  %indvars.iv270.i = phi i64 [ %indvars.iv.next271.i, %.lr.ph234.i ], [ %indvars.iv270.i.ph, %.lr.ph234.i.preheader ] ; 2 uses
  %gep309.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %indvars.iv270.i ; 2 uses
  %i.oo = load double, ptr %gep309.i, align 8, !tbaa !10
  %i.op = fdiv double %i.oo, %.0165.i
  store double %i.op, ptr %gep309.i, align 8, !tbaa !10
  %indvars.iv.next271.i = add nuw nsw i64 %indvars.iv270.i, 1 ; 2 uses
  %exitcond274.not.i = icmp eq i64 %indvars.iv.next271.i, %i.bh
  br i1 %exitcond274.not.i, label %._crit_edge235.loopexit.i, label %.lr.ph234.i, !llvm.loop !30

._crit_edge235.loopexit.i:                        ; preds = %.lr.ph234.i, %middle.block1718
  %.pre294.i = load double, ptr %i.mn, align 8, !tbaa !10
  %i.oq = fadd double %.pre294.i, 1.000000e+00
  store double %i.oq, ptr %i.mn, align 8, !tbaa !10
  br i1 %i.ko, label %.preheader.lr.ph.i, label %._crit_edge246.i

.preheader.lr.ph.i:                               ; preds = %._crit_edge235.loopexit.i
  %i.or = add nsw i64 %i.mk, -1                   ; 2 uses
  %i.os = trunc nuw nsw i64 %i.or to i32
  %i.ot = uitofp nneg i32 %i.os to double
  %i.ou = fdiv double f0x5FEFFFFFFFFFFFFF, %i.ot
  %invariant.gep318.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv268.i
  %xtraiter1812 = and i64 %i.mk, 3                ; 2 uses
  %lcmp.mod1813.not = icmp eq i64 %xtraiter1812, 0
  %i.ov = icmp ult i64 %i.kh, 3
  %min.iters.check1693 = icmp ult i64 %i.mk, 4
  %bound01689 = icmp ult ptr %scevgep1683, %scevgep1688
  %bound11690 = icmp ult ptr %scevgep1686, %i.fe
  %found.conflict1691 = and i1 %bound01689, %bound11690
  %n.vec1695 = and i64 %i.mk, -4                  ; 3 uses
  %i.ow = add i64 %indvars.iv268.i, %n.vec1695
  %cmp.n1706 = icmp eq i64 %i.mk, %n.vec1695
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.bx, %.preheader.lr.ph.i
  %indvars.iv285.i = phi i64 [ %indvars.iv256.i, %.preheader.lr.ph.i ], [ %indvars.iv.next286.i, %bb.bx ] ; 5 uses
  %i.ox = mul nuw nsw i64 %indvars.iv285.i, %i.bh ; 2 uses
  %invariant.gep312.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ox ; 9 uses
  br i1 %lcmp.mod1813.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.i, %.prol.preheader
  %indvars.iv275.i.prol = phi i64 [ %indvars.iv.next276.i.prol, %.prol.preheader ], [ %indvars.iv268.i, %.preheader.i ] ; 3 uses
  %.0164237.i.prol = phi double [ %i.pa, %.prol.preheader ], [ 0.000000e+00, %.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader.i ]
  %gep311.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %indvars.iv275.i.prol
  %i.oy = load double, ptr %gep311.i.prol, align 8, !tbaa !10
  %gep313.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312.i, i64 %indvars.iv275.i.prol
  %i.oz = load double, ptr %gep313.i.prol, align 8, !tbaa !10
  %i.pa = tail call double @llvm.fmuladd.f64(double %i.oy, double %i.oz, double %.0164237.i.prol) ; 3 uses
  %indvars.iv.next276.i.prol = add nuw nsw i64 %indvars.iv275.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1812
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader.i
  %.lcssa.unr = phi double [ poison, %.preheader.i ], [ %i.pa, %.prol.preheader ]
  %indvars.iv275.i.unr = phi i64 [ %indvars.iv268.i, %.preheader.i ], [ %indvars.iv.next276.i.prol, %.prol.preheader ]
  %.0164237.i.unr = phi double [ 0.000000e+00, %.preheader.i ], [ %i.pa, %.prol.preheader ]
  br i1 %i.ov, label %.lr.ph243.i, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i.3, %.preheader.i.new ], [ %indvars.iv275.i.unr, %.prol.loopexit ] ; 6 uses
  %.0164237.i = phi double [ %i.pm, %.preheader.i.new ], [ %.0164237.i.unr, %.prol.loopexit ]
  %gep311.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %indvars.iv275.i
  %i.pb = load double, ptr %gep311.i, align 8, !tbaa !10
  %gep313.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312.i, i64 %indvars.iv275.i
  %i.pc = load double, ptr %gep313.i, align 8, !tbaa !10
  %i.pd = tail call double @llvm.fmuladd.f64(double %i.pb, double %i.pc, double %.0164237.i)
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %gep311.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %indvars.iv.next276.i
  %i.pe = load double, ptr %gep311.i.1, align 8, !tbaa !10
  %gep313.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312.i, i64 %indvars.iv.next276.i
  %i.pf = load double, ptr %gep313.i.1, align 8, !tbaa !10
  %i.pg = tail call double @llvm.fmuladd.f64(double %i.pe, double %i.pf, double %i.pd)
  %indvars.iv.next276.i.1 = add nuw nsw i64 %indvars.iv275.i, 2 ; 2 uses
  %gep311.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %indvars.iv.next276.i.1
  %i.ph = load double, ptr %gep311.i.2, align 8, !tbaa !10
  %gep313.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312.i, i64 %indvars.iv.next276.i.1
  %i.pi = load double, ptr %gep313.i.2, align 8, !tbaa !10
  %i.pj = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.pi, double %i.pg)
  %indvars.iv.next276.i.2 = add nuw nsw i64 %indvars.iv275.i, 3 ; 2 uses
  %gep311.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %indvars.iv.next276.i.2
  %i.pk = load double, ptr %gep311.i.3, align 8, !tbaa !10
  %gep313.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312.i, i64 %indvars.iv.next276.i.2
  %i.pl = load double, ptr %gep313.i.3, align 8, !tbaa !10
  %i.pm = tail call double @llvm.fmuladd.f64(double %i.pk, double %i.pl, double %i.pj) ; 2 uses
  %indvars.iv.next276.i.3 = add nuw nsw i64 %indvars.iv275.i, 4 ; 2 uses
  %exitcond279.not.i.3 = icmp eq i64 %indvars.iv.next276.i.3, %i.bh
  br i1 %exitcond279.not.i.3, label %.lr.ph243.i, label %.preheader.i.new, !llvm.loop !32

.lr.ph243.i:                                      ; preds = %.preheader.i.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.pm, %.preheader.i.new ]
  %i.pn = load double, ptr %i.mn, align 8, !tbaa !10
  %i.po = fneg double %.lcssa
  %i.pp = fdiv double %i.po, %i.pn                ; 4 uses
  %brmerge1939 = select i1 %min.iters.check1693, i1 true, i1 %found.conflict1691
  br i1 %brmerge1939, label %scalar.ph1692.preheader, label %vector.ph1694

vector.ph1694:                                    ; preds = %.lr.ph243.i
  %broadcast.splatinsert1696 = insertelement <2 x double> poison, double %i.pp, i64 0
  %broadcast.splat1697 = shufflevector <2 x double> %broadcast.splatinsert1696, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1698

vector.body1698:                                  ; preds = %vector.body1698, %vector.ph1694
  %index1699 = phi i64 [ 0, %vector.ph1694 ], [ %index.next1704, %vector.body1698 ] ; 2 uses
  %i.pq = add nuw i64 %indvars.iv268.i, %index1699 ; 2 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %wide.load1700 = load <2 x double>, ptr %i.pr, align 8, !tbaa !10, !alias.scope !153
  %wide.load1701 = load <2 x double>, ptr %i.ps, align 8, !tbaa !10, !alias.scope !153
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312.i, i64 %i.pq ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16 ; 2 uses
  %wide.load1702 = load <2 x double>, ptr %i.pt, align 8, !tbaa !10, !alias.scope !154, !noalias !153
  %wide.load1703 = load <2 x double>, ptr %i.pu, align 8, !tbaa !10, !alias.scope !154, !noalias !153
  %i.pv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1697, <2 x double> %wide.load1700, <2 x double> %wide.load1702)
  %i.pw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1697, <2 x double> %wide.load1701, <2 x double> %wide.load1703)
  store <2 x double> %i.pv, ptr %i.pt, align 8, !tbaa !10, !alias.scope !154, !noalias !153
  store <2 x double> %i.pw, ptr %i.pu, align 8, !tbaa !10, !alias.scope !154, !noalias !153
  %index.next1704 = add nuw i64 %index1699, 4     ; 2 uses
  %i.px = icmp eq i64 %index.next1704, %n.vec1695
  br i1 %i.px, label %middle.block1705, label %vector.body1698, !llvm.loop !36

middle.block1705:                                 ; preds = %vector.body1698
  br i1 %cmp.n1706, label %._crit_edge244.i.loopexit, label %scalar.ph1692.preheader

scalar.ph1692.preheader:                          ; preds = %.lr.ph243.i, %middle.block1705
  %indvars.iv280.i.ph = phi i64 [ %i.ow, %middle.block1705 ], [ %indvars.iv268.i, %.lr.ph243.i ] ; 6 uses
  %i.py = sub i64 %i.bh, %indvars.iv280.i.ph
  %xtraiter1814 = and i64 %i.py, 1
  %lcmp.mod1815.not = icmp eq i64 %xtraiter1814, 0
  br i1 %lcmp.mod1815.not, label %scalar.ph1692.prol.loopexit, label %scalar.ph1692.prol

scalar.ph1692.prol:                               ; preds = %scalar.ph1692.preheader
  %gep315.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %indvars.iv280.i.ph
  %i.pz = load double, ptr %gep315.i.prol, align 8, !tbaa !10
  %gep317.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312.i, i64 %indvars.iv280.i.ph ; 2 uses
  %i.qa = load double, ptr %gep317.i.prol, align 8, !tbaa !10
  %i.qb = tail call double @llvm.fmuladd.f64(double %i.pp, double %i.pz, double %i.qa)
  store double %i.qb, ptr %gep317.i.prol, align 8, !tbaa !10
  %indvars.iv.next281.i.prol = add nuw nsw i64 %indvars.iv280.i.ph, 1
  br label %scalar.ph1692.prol.loopexit

scalar.ph1692.prol.loopexit:                      ; preds = %scalar.ph1692.prol, %scalar.ph1692.preheader
  %indvars.iv280.i.unr = phi i64 [ %indvars.iv280.i.ph, %scalar.ph1692.preheader ], [ %indvars.iv.next281.i.prol, %scalar.ph1692.prol ]
  %i.qc = icmp eq i64 %indvars.iv280.i.ph, %i.fw
  br i1 %i.qc, label %._crit_edge244.i.loopexit, label %scalar.ph1692

scalar.ph1692:                                    ; preds = %scalar.ph1692.prol.loopexit, %scalar.ph1692
  %indvars.iv280.i = phi i64 [ %indvars.iv.next281.i.1, %scalar.ph1692 ], [ %indvars.iv280.i.unr, %scalar.ph1692.prol.loopexit ] ; 4 uses
  %gep315.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %indvars.iv280.i
  %i.qd = load double, ptr %gep315.i, align 8, !tbaa !10
  %gep317.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312.i, i64 %indvars.iv280.i ; 2 uses
  %i.qe = load double, ptr %gep317.i, align 8, !tbaa !10
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.pp, double %i.qd, double %i.qe)
  store double %i.qf, ptr %gep317.i, align 8, !tbaa !10
  %indvars.iv.next281.i = add nuw nsw i64 %indvars.iv280.i, 1 ; 2 uses
  %gep315.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308.i, i64 %indvars.iv.next281.i
  %i.qg = load double, ptr %gep315.i.1, align 8, !tbaa !10
  %gep317.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312.i, i64 %indvars.iv.next281.i ; 2 uses
  %i.qh = load double, ptr %gep317.i.1, align 8, !tbaa !10
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.pp, double %i.qg, double %i.qh)
  store double %i.qi, ptr %gep317.i.1, align 8, !tbaa !10
  %indvars.iv.next281.i.1 = add nuw nsw i64 %indvars.iv280.i, 2 ; 2 uses
  %exitcond284.not.i.1 = icmp eq i64 %indvars.iv.next281.i.1, %i.bh
  br i1 %exitcond284.not.i.1, label %._crit_edge244.i.loopexit, label %scalar.ph1692, !llvm.loop !37

._crit_edge244.i.loopexit:                        ; preds = %scalar.ph1692.prol.loopexit, %scalar.ph1692, %middle.block1705
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv285.i ; 3 uses
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !10 ; 3 uses
  %i.ql = fcmp une double %i.qk, 0.000000e+00
  br i1 %i.ql, label %bb.bf, label %bb.bx

bb.bf:                                            ; preds = %._crit_edge244.i.loopexit
  %gep319.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep318.i, i64 %i.ox ; 2 uses
  %i.qm = load double, ptr %gep319.i, align 8, !tbaa !10
  %i.qn = fdiv double %i.qm, %i.qk                ; 3 uses
  %i.qo = tail call double @llvm.fabs.f64(double %i.qn)
  %i.qp = fcmp olt double %i.qo, 1.000000e+00
  br i1 %i.qp, label %bb.bg, label %.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.qq = fneg double %i.qn
  %i.qr = tail call double @llvm.fmuladd.f64(double %i.qq, double %i.qn, double 1.000000e+00)
  %i.qs = tail call double @sqrt(double noundef %i.qr) #11
  %i.qt = fmul double %i.qk, %i.qs                ; 2 uses
  store double %i.qt, ptr %i.qj, align 8, !tbaa !10
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv285.i
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !10
  %i.qw = fdiv double %i.qt, %i.qv                ; 3 uses
  %i.qx = fcmp oeq double %i.qw, 0.000000e+00
  br i1 %i.qx, label %.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qy = fmul double %i.qw, 5.000000e-02
  %i.qz = fmul double %i.qw, %i.qy
  %i.ra = fcmp ugt double %i.qz, f0x3CB0000000000000
  br i1 %i.ra, label %bb.bx, label %.thread.i

.thread.i:                                        ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.rb = getelementptr inbounds nuw i8, ptr %gep319.i, i64 8
  br label %.lr.ph.i206.i

.lr.ph.i206.i:                                    ; preds = %.thread.i, %bb.br
  %indvars.iv.i207.i = phi i64 [ %indvars.iv.next.i218.i, %bb.br ], [ 0, %.thread.i ] ; 2 uses
  %.076.i208.i = phi double [ %.1.i217.i, %bb.br ], [ 0.000000e+00, %.thread.i ] ; 8 uses
  %.06075.i209.i = phi double [ %.161.i216.i, %bb.br ], [ 0.000000e+00, %.thread.i ] ; 8 uses
  %.06274.i210.i = phi double [ %.163.i215.i, %bb.br ], [ 0.000000e+00, %.thread.i ] ; 6 uses
  %.06473.i211.i = phi double [ %.165.i214.i, %bb.br ], [ 0.000000e+00, %.thread.i ] ; 6 uses
  %.06672.i212.i = phi double [ %.167.i213.i, %bb.br ], [ 0.000000e+00, %.thread.i ] ; 6 uses
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.i207.i
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !10 ; 4 uses
  %i.re = tail call double @llvm.fabs.f64(double %i.rd) ; 10 uses
  %i.rf = fcmp ogt double %i.re, f0x2000000000000000
  br i1 %i.rf, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %.lr.ph.i206.i
  %i.rg = fcmp olt double %i.re, %i.ou
  br i1 %i.rg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rh = tail call double @llvm.fmuladd.f64(double %i.rd, double %i.rd, double %.06473.i211.i)
  br label %bb.br

bb.bk:                                            ; preds = %bb.bi
  %i.ri = fcmp ogt double %i.re, %.06075.i209.i
  br i1 %i.ri, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
end_hunk_1
