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
  %i.fb = add nuw nsw i64 %i.bh, %i.bc
  %i.fc = shl nuw nsw i64 %i.fb, 4                ; 3 uses
  %i.fd = shl nuw nsw i64 %i.bh, 3
  %i.fe = add nuw nsw i64 %i.bk, 8
  %i.ff = mul i64 %i.fe, %i.bh                    ; 2 uses
  %i.fg = getelementptr i8, ptr %i.bf, i64 %i.ff
  %scevgep1684 = getelementptr i8, ptr %i.fg, i64 %i.ez
  %scevgep1687 = getelementptr i8, ptr %i.bf, i64 %i.fc
  %i.fh = shl nuw nsw i64 %i.bc, 4
  %i.fi = getelementptr i8, ptr %i.bf, i64 %i.ff
  %scevgep1722 = getelementptr i8, ptr %i.fi, i64 %i.fh
  %i.fj = add nuw nsw i64 %i.bh, %i.bc
  %i.fk = shl nuw nsw i64 %i.fj, 4
  %scevgep1723 = getelementptr i8, ptr %i.bf, i64 %i.fk
  %.neg = mul nsw i64 %i.bc, -24
  %i.fl = shl nuw nsw i64 %i.bn, 3
  %i.fm = sub nsw i64 %.neg, %i.fl
  %i.fn = shl nuw nsw i64 %i.bh, 3
  %i.fo = shl nuw nsw i64 %i.bc, 4
  %i.fp = add nuw nsw i64 %i.fo, %i.bi
  %i.fq = add nsw i64 %i.bh, -1                   ; 3 uses
  %i.fr = add nsw i64 %i.bc, -1                   ; 6 uses
  %i.fs = add nsw i64 %i.bc, -2
  %min.iters.check1746 = icmp eq i32 %4, 1
  %invariant.op = add i64 %i.fm, -1
  %invariant.op1921 = add i64 %i.fp, -1
  %n.vec1748 = and i64 %i.bh, 4294967294          ; 3 uses
  %cmp.n1757 = icmp eq i64 %n.vec1748, %i.bh
  %xtraiter = and i64 %i.bh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ft = extractelement <2 x double> %i.dm, i64 0
  %i.fu = getelementptr i8, ptr %i.bf, i64 %i.fc
  %i.fv = getelementptr i8, ptr %i.bf, i64 %i.ez
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.bi
  %min.iters.check1729 = icmp ult i32 %4, 4
  %n.vec1731 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1740 = icmp eq i64 %n.vec1731, %i.bh
  %xtraiter1810.a = and i64 %i.bh, 1
  %lcmp.mod1811.not.a = icmp eq i64 %xtraiter1810.a, 0
  %i.fx = add nsw i64 %i.bh, -1
  %i.fy = add nsw i64 %i.bh, -1
  %min.iters.check1669 = icmp ult i32 %4, 4
  %n.vec1671 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1680 = icmp eq i64 %n.vec1671, %i.bh
  %min.iters.check1657 = icmp ult i32 %4, 4
  %n.vec1659 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1666 = icmp eq i64 %n.vec1659, %i.bh
  %invariant.gep1923 = getelementptr i8, ptr %i.bf, i64 %i.ex
  %i.fz = getelementptr i8, ptr %i.bf, i64 %i.ez
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.bi
  %i.gb = getelementptr i8, ptr %i.bf, i64 %i.fc
  %i.gc = add nsw i64 %i.bh, -1
  %min.iters.check1620 = icmp ult i32 %0, 4
  %n.vec1622 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1631 = icmp eq i64 %n.vec1622, %i.bc
  %min.iters.check1608 = icmp ult i32 %0, 4
  %n.vec1610 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1617 = icmp eq i64 %n.vec1610, %i.bc
  %min.iters.check1594 = icmp ult i32 %0, 4
  %n.vec1596 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1605 = icmp eq i64 %n.vec1596, %i.bc
  %i.gd = getelementptr i8, ptr %i.bf, i64 %i.eu
  %xtraiter1830 = and i64 %i.bc, 3                ; 3 uses
  %i.ge = icmp ult i64 %i.fr, 3
  %unroll_iter1834 = and i64 %i.bc, 2147483644
  %lcmp.mod1832.not = icmp eq i64 %xtraiter1830, 0
  %lcmp.mod1833 = icmp ne i64 %xtraiter1830, 0
  %min.iters.check1556 = icmp ult i32 %0, 4
  %n.vec1558 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1567 = icmp eq i64 %n.vec1558, %i.bc
  %xtraiter1836 = and i64 %i.bc, 1
  %i.gf = icmp eq i64 %i.fr, 0
  %unroll_iter1840 = and i64 %i.bc, 2147483646
  %lcmp.mod1838.not = icmp eq i64 %xtraiter1836, 0
  %lcmp.mod1839 = trunc i32 %0 to i1
  %min.iters.check1542 = icmp ult i32 %0, 4
  %n.vec1544 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1553 = icmp eq i64 %n.vec1544, %i.bc
  %ident.check.not = icmp eq i32 %4, 1
  %invariant.gep1925 = getelementptr i8, ptr %i.bf, i64 %i.ei
  %invariant.gep1927 = getelementptr i8, ptr %invariant.gep1925, i64 %i.el
  %i.gg = getelementptr i8, ptr %i.bf, i64 %i.em
  %i.gh = getelementptr i8, ptr %i.gg, i64 %i.bi
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = getelementptr i8, ptr %i.bf, i64 %i.ei
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.bi
  %xtraiter1863 = and i64 %i.bc, 1
  %i.gl = icmp eq i64 %i.fr, 0
  %unroll_iter1868 = and i64 %i.bc, 2147483646
  %lcmp.mod1865.not = icmp eq i64 %xtraiter1863, 0
  %lcmp.mod1867 = trunc i32 %0 to i1
  %xtraiter1870 = and i64 %i.bc, 3                ; 3 uses
  %i.gm = icmp ult i64 %i.fr, 3
  %unroll_iter1874 = and i64 %i.bc, 2147483644
  %lcmp.mod1872.not = icmp eq i64 %xtraiter1870, 0
  %lcmp.mod1873 = icmp ne i64 %xtraiter1870, 0
  %min.iters.check1491 = icmp ult i32 %0, 4
  %n.vec1493 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1502 = icmp eq i64 %n.vec1493, %i.bc
  %xtraiter1877 = and i64 %i.bc, 1
  %i.gn = icmp eq i64 %i.fr, 0
  %unroll_iter1881 = and i64 %i.bc, 2147483646
  %lcmp.mod1879.not = icmp eq i64 %xtraiter1877, 0
  %lcmp.mod1880 = trunc i32 %0 to i1
  %i.go = getelementptr i8, ptr %i.bf, i64 %i.eb
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.ed
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  %i.gr = getelementptr i8, ptr %i.bf, i64 %i.eg
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.bi
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  %i.gu = getelementptr i8, ptr %i.bf, i64 %i.ei
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.bi
  %bound11471 = icmp ult ptr %i.bs, %scevgep1464
  %i.gw = add nsw i64 %i.bc, -1
  %i.gx = getelementptr i8, ptr %i.bf, i64 %i.dx
  %i.gy = getelementptr i8, ptr %i.gx, i64 8
  %i.gz = getelementptr i8, ptr %i.bf, i64 %i.dt
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.dv
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
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
  %.0592 = phi i32 [ %i.bmz, %bb.jn ], [ 0, %.preheader877 ] ; 3 uses
  br label %.lr.ph934

.lr.ph934:                                        ; preds = %.lr.ph934.preheader, %._crit_edge
  %indvars.iv1083 = phi i64 [ 0, %.lr.ph934.preheader ], [ %indvars.iv.next1084, %._crit_edge ] ; 4 uses
  %i.hc = mul i64 %i.fn, %indvars.iv1083          ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1083 ; 3 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !10 ; 3 uses
  %i.hf = tail call double @llvm.fabs.f64(double %i.he)
  %i.hg = fmul double %i.h, %i.hf                 ; 2 uses
  %.inv850 = fcmp oge double %i.df, %i.hg
  %.708 = select i1 %.inv850, double %i.df, double %i.hg ; 5 uses
  %i.hh = fadd double %i.he, %.708
  store double %i.hh, ptr %i.hd, align 8, !tbaa !10
  tail call void %7(ptr noundef %1, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.r)
  %i.hi = load i32, ptr %i.s, align 8, !tbaa !139
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.s, align 8, !tbaa !139
  %i.hk = load i32, ptr %i.r, align 8, !tbaa !138
  %.not701 = icmp eq i32 %i.hk, 0
  br i1 %.not701, label %.preheader864, label %.thread

.preheader864:                                    ; preds = %.lr.ph934
  br i1 %.not1369, label %._crit_edge, label %.lr.ph931

.lr.ph931:                                        ; preds = %.preheader864
  %i.hl = mul nuw nsw i64 %indvars.iv1083, %i.bh
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.hl ; 4 uses
  br i1 %min.iters.check1746, label %scalar.ph1745.preheader, label %vector.memcheck1742

vector.memcheck1742:                              ; preds = %.lr.ph931
  %.reass = add i64 %i.hc, %invariant.op
  %diff.check = icmp ult i64 %.reass, 15
  %.reass1922 = add i64 %i.hc, %invariant.op1921
  %diff.check1743 = icmp ult i64 %.reass1922, 15
  %conflict.rdx1744 = or i1 %diff.check, %diff.check1743
  br i1 %conflict.rdx1744, label %scalar.ph1745.preheader, label %vector.ph1747

vector.ph1747:                                    ; preds = %vector.memcheck1742
  %broadcast.splatinsert1749 = insertelement <2 x double> poison, double %.708, i64 0
  %broadcast.splat1750 = shufflevector <2 x double> %broadcast.splatinsert1749, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1751

vector.body1751:                                  ; preds = %vector.body1751, %vector.ph1747
  %index1752 = phi i64 [ 0, %vector.ph1747 ], [ %index.next1755, %vector.body1751 ] ; 4 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1752
  %wide.load1753 = load <2 x double>, ptr %i.hm, align 8, !tbaa !10
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1752
  %wide.load1754 = load <2 x double>, ptr %i.hn, align 8, !tbaa !10
  %i.ho = fsub <2 x double> %wide.load1753, %wide.load1754
  %i.hp = fdiv <2 x double> %i.ho, %broadcast.splat1750
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1752
  store <2 x double> %i.hp, ptr %i.hq, align 8, !tbaa !10
  %index.next1755 = add nuw i64 %index1752, 2     ; 2 uses
  %i.hr = icmp eq i64 %index.next1755, %n.vec1748
  br i1 %i.hr, label %middle.block1756, label %vector.body1751, !llvm.loop !17

middle.block1756:                                 ; preds = %vector.body1751
  br i1 %cmp.n1757, label %._crit_edge, label %scalar.ph1745.preheader

scalar.ph1745.preheader:                          ; preds = %vector.memcheck1742, %.lr.ph931, %middle.block1756
  %indvars.iv1078.ph = phi i64 [ 0, %vector.memcheck1742 ], [ 0, %.lr.ph931 ], [ %n.vec1748, %middle.block1756 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph1745.prol.loopexit, label %scalar.ph1745.prol

scalar.ph1745.prol:                               ; preds = %scalar.ph1745.preheader
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1078.ph
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1078.ph
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !10
  %i.hw = fsub double %i.ht, %i.hv
  %i.hx = fdiv double %i.hw, %.708
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1078.ph
  store double %i.hx, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next1079.prol = or disjoint i64 %indvars.iv1078.ph, 1
  br label %scalar.ph1745.prol.loopexit

scalar.ph1745.prol.loopexit:                      ; preds = %scalar.ph1745.prol, %scalar.ph1745.preheader
  %indvars.iv1078.unr = phi i64 [ %indvars.iv1078.ph, %scalar.ph1745.preheader ], [ %indvars.iv.next1079.prol, %scalar.ph1745.prol ]
  %i.hy = icmp eq i64 %i.fq, %indvars.iv1078.ph
  br i1 %i.hy, label %._crit_edge, label %scalar.ph1745

scalar.ph1745:                                    ; preds = %scalar.ph1745.prol.loopexit, %scalar.ph1745
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079.1, %scalar.ph1745 ], [ %indvars.iv1078.unr, %scalar.ph1745.prol.loopexit ] ; 5 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1078
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1078
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !10
  %i.id = fsub double %i.ia, %i.ic
  %i.ie = fdiv double %i.id, %.708
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1078
  store double %i.ie, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next1079 = add nuw nsw i64 %indvars.iv1078, 1 ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1079
  %i.ig = load double, ptr %i.if, align 8, !tbaa !10
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next1079
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !10
  %i.ij = fsub double %i.ig, %i.ii
  %i.ik = fdiv double %i.ij, %.708
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next1079
  store double %i.ik, ptr %gep.1, align 8, !tbaa !10
  %indvars.iv.next1079.1 = add nuw nsw i64 %indvars.iv1078, 2 ; 2 uses
  %exitcond1082.not.1 = icmp eq i64 %indvars.iv.next1079.1, %i.bh
  br i1 %exitcond1082.not.1, label %._crit_edge, label %scalar.ph1745, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph1745.prol.loopexit, %scalar.ph1745, %middle.block1756, %.preheader864
  store double %i.he, ptr %i.hd, align 8, !tbaa !10
  %indvars.iv.next1084 = add nuw nsw i64 %indvars.iv1083, 1 ; 2 uses
  %exitcond1087.not = icmp eq i64 %indvars.iv.next1084, %i.dr
  br i1 %exitcond1087.not, label %._crit_edge935, label %.lr.ph934, !llvm.loop !19

._crit_edge935:                                   ; preds = %._crit_edge
  %i.il = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.im = and i32 %i.il, 16
  %.not672 = icmp eq i32 %i.im, 0
  br i1 %.not672, label %.lr.ph.preheader.i.i.preheader, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge935
  %fwrite673 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 9, i64 1, ptr %i.p) ; 0 uses
  br i1 %.not1369, label %.lr.ph.preheader.i.i.preheader, label %.lr.ph938.preheader

.lr.ph938.preheader:                              ; preds = %bb.aa, %._crit_edge939
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %._crit_edge939 ], [ 0, %bb.aa ] ; 2 uses
  %fwrite698 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr %i.p) ; 0 uses
  %invariant.gep1354 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv1094
  br label %.lr.ph938

.lr.ph938:                                        ; preds = %.lr.ph938.preheader, %.lr.ph938
  %indvars.iv1088 = phi i64 [ 0, %.lr.ph938.preheader ], [ %indvars.iv.next1089, %.lr.ph938 ] ; 2 uses
  %i.in = mul nuw nsw i64 %indvars.iv1088, %i.bh
  %gep1355 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1354, i64 %i.in
  %i.io = load double, ptr %gep1355, align 8, !tbaa !10
  %i.ip = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.41, double noundef %i.io) #11 ; 0 uses
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 1 ; 2 uses
  %exitcond1093.not = icmp eq i64 %indvars.iv.next1089, %i.dr
  br i1 %exitcond1093.not, label %._crit_edge939, label %.lr.ph938, !llvm.loop !20

._crit_edge939:                                   ; preds = %.lr.ph938
  %fputc700 = tail call i32 @fputc(i32 10, ptr %i.p) ; 0 uses
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 1 ; 2 uses
  %exitcond1098.not = icmp eq i64 %indvars.iv.next1095, %i.bh
  br i1 %exitcond1098.not, label %.lr.ph.preheader.i.i.preheader, label %.lr.ph938.preheader, !llvm.loop !21

.lr.ph.preheader.i.i.preheader:                   ; preds = %._crit_edge939, %._crit_edge935, %bb.aa
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.preheader, %_Z8lm_enormiPKd.exit.i
  %indvars.iv.i712 = phi i64 [ %indvars.iv.next.i713, %_Z8lm_enormiPKd.exit.i ], [ 0, %.lr.ph.preheader.i.i.preheader ] ; 7 uses
  %i.iq = mul nuw nsw i64 %indvars.iv.i712, %i.bh
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.iq
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ak, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ak ] ; 2 uses
  %.076.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.ak ] ; 8 uses
  %.06075.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.161.i.i, %bb.ak ] ; 8 uses
  %.06274.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.163.i.i, %bb.ak ] ; 6 uses
  %.06473.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.165.i.i, %bb.ak ] ; 6 uses
  %.06672.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.167.i.i, %bb.ak ] ; 6 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i.i
  %i.it = load double, ptr %i.is, align 8, !tbaa !10 ; 4 uses
  %i.iu = tail call double @llvm.fabs.f64(double %i.it) ; 10 uses
  %i.iv = fcmp ogt double %i.iu, f0x2000000000000000
  br i1 %i.iv, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.iw = fcmp olt double %i.iu, %i.ft
  br i1 %i.iw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.it, double %i.it, double %.06473.i.i)
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.iy = fcmp ogt double %i.iu, %.06075.i.i
  br i1 %i.iy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.iz = fdiv double %.06075.i.i, %i.iu          ; 2 uses
  %i.ja = fmul double %.06672.i.i, %i.iz
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.iz, double 1.000000e+00)
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  %i.jc = fdiv double %i.iu, %.06075.i.i          ; 2 uses
  %i.jd = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.jc, double %.06672.i.i)
  br label %bb.ak

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.je = fcmp ogt double %i.iu, %.076.i.i
  br i1 %i.je, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jf = fdiv double %.076.i.i, %i.iu            ; 2 uses
  %i.jg = fmul double %.06274.i.i, %i.jf
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.jf, double 1.000000e+00)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.ji = fcmp une double %i.it, 0.000000e+00
  br i1 %i.ji, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jj = fdiv double %i.iu, %.076.i.i            ; 2 uses
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.jj, double %.06274.i.i)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ac
  %.167.i.i = phi double [ %.06672.i.i, %bb.ac ], [ %i.jb, %bb.ae ], [ %i.jd, %bb.af ], [ %.06672.i.i, %bb.ah ], [ %.06672.i.i, %bb.aj ], [ %.06672.i.i, %bb.ai ] ; 3 uses
  %.165.i.i = phi double [ %i.ix, %bb.ac ], [ %.06473.i.i, %bb.ae ], [ %.06473.i.i, %bb.af ], [ %.06473.i.i, %bb.ah ], [ %.06473.i.i, %bb.aj ], [ %.06473.i.i, %bb.ai ] ; 7 uses
  %.163.i.i = phi double [ %.06274.i.i, %bb.ac ], [ %.06274.i.i, %bb.ae ], [ %.06274.i.i, %bb.af ], [ %i.jh, %bb.ah ], [ %i.jk, %bb.aj ], [ %.06274.i.i, %bb.ai ] ; 4 uses
  %.161.i.i = phi double [ %.06075.i.i, %bb.ac ], [ %i.iu, %bb.ae ], [ %.06075.i.i, %bb.af ], [ %.06075.i.i, %bb.ah ], [ %.06075.i.i, %bb.aj ], [ %.06075.i.i, %bb.ai ] ; 4 uses
  %.1.i.i = phi double [ %.076.i.i, %bb.ac ], [ %.076.i.i, %bb.ae ], [ %.076.i.i, %bb.af ], [ %i.iu, %bb.ah ], [ %.076.i.i, %bb.aj ], [ %.076.i.i, %bb.ai ] ; 8 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bh
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.ak
  %i.jl = fcmp une double %.167.i.i, 0.000000e+00
  br i1 %i.jl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.jm = fdiv double %.165.i.i, %.161.i.i
  %i.jn = fdiv double %i.jm, %.161.i.i
  %i.jo = fadd double %.167.i.i, %i.jn
  %i.jp = tail call double @sqrt(double noundef %i.jo) #11
  %i.jq = fmul double %.161.i.i, %i.jp
  br label %_Z8lm_enormiPKd.exit.i

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.jr = fcmp une double %.165.i.i, 0.000000e+00
  br i1 %i.jr, label %bb.an, label %.thread.i.i

bb.an:                                            ; preds = %bb.am
  %i.js = fcmp ult double %.165.i.i, %.1.i.i
  br i1 %i.js, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jt = fdiv double %.1.i.i, %.165.i.i
  %i.ju = fmul double %.163.i.i, %.1.i.i
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.jt, double %i.ju, double 1.000000e+00)
  %i.jw = fmul double %.165.i.i, %i.jv
  %i.jx = tail call double @sqrt(double noundef %i.jw) #11
  br label %_Z8lm_enormiPKd.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.jy = fdiv double %.165.i.i, %.1.i.i
  %i.jz = tail call double @llvm.fmuladd.f64(double %.1.i.i, double %.163.i.i, double %i.jy)
  %i.ka = fmul double %.1.i.i, %i.jz
  %i.kb = tail call double @sqrt(double noundef %i.ka) #11
  br label %_Z8lm_enormiPKd.exit.i

.thread.i.i:                                      ; preds = %bb.am
  %i.kc = tail call double @sqrt(double noundef %.163.i.i) #11
  %i.kd = fmul double %.1.i.i, %i.kc
  br label %_Z8lm_enormiPKd.exit.i

_Z8lm_enormiPKd.exit.i:                           ; preds = %.thread.i.i, %bb.ap, %bb.ao, %bb.al
  %.069.i.i = phi double [ %i.jq, %bb.al ], [ %i.jx, %bb.ao ], [ %i.kb, %bb.ap ], [ %i.kd, %.thread.i.i ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i712
  store double %.069.i.i, ptr %i.ke, align 8, !tbaa !10
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i712
  store double %.069.i.i, ptr %i.kf, align 8, !tbaa !10
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i712
  store double %.069.i.i, ptr %i.kg, align 8, !tbaa !10
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i712
  %i.ki = trunc nuw nsw i64 %indvars.iv.i712 to i32
  store i32 %i.ki, ptr %i.kh, align 4, !tbaa !149
  %indvars.iv.next.i713 = add nuw nsw i64 %indvars.iv.i712, 1 ; 2 uses
  %exitcond.not.i714 = icmp eq i64 %indvars.iv.next.i713, %i.bc
  br i1 %exitcond.not.i714, label %.preheader224.i, label %.lr.ph.preheader.i.i, !llvm.loop !22

.preheader224.i:                                  ; preds = %_Z8lm_enormiPKd.exit.i, %bb.by
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i, %bb.by ], [ 0, %_Z8lm_enormiPKd.exit.i ] ; 26 uses
  %indvars.iv256.i = phi i64 [ %indvars.iv.next257.i, %bb.by ], [ 1, %_Z8lm_enormiPKd.exit.i ] ; 6 uses
  %i.kj = sub i64 %i.fq, %indvars.iv268.i
  %i.kk = mul i64 %i.fa, %indvars.iv268.i
  %scevgep1683 = getelementptr i8, ptr %i.fu, i64 %i.kk
  %i.kl = shl i64 %indvars.iv268.i, 3
  %scevgep1685 = getelementptr i8, ptr %i.fw, i64 %i.kl
  %i.km = trunc i64 %indvars.iv268.i to i32
  %i.kn = mul i32 %4, %i.km
  %i.ko = zext i32 %i.kn to i64
  %i.kp = shl nuw nsw i64 %i.ko, 3                ; 2 uses
  %scevgep1686 = getelementptr i8, ptr %scevgep1685, i64 %i.kp
  %scevgep1688 = getelementptr i8, ptr %scevgep1687, i64 %i.kp
  %indvars290.i = trunc i64 %indvars.iv268.i to i32 ; 4 uses
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 3 uses
  %i.kq = icmp samesign ult i64 %indvars.iv.next269.i, %i.bc ; 2 uses
  br i1 %i.kq, label %.lr.ph.preheader.i715, label %._crit_edge.i

.lr.ph.preheader.i715:                            ; preds = %.preheader224.i
  %i.kr = sub i64 %i.fr, %indvars.iv268.i
  %sext.i = shl i64 %indvars.iv268.i, 32
  %10 = ashr exact i64 %sext.i, 29
  %.phi.trans.insert293.i = getelementptr inbounds i8, ptr %i.bp, i64 %10
  %.pre.i = load double, ptr %.phi.trans.insert293.i, align 8, !tbaa !10 ; 3 uses
  %xtraiter1808 = and i64 %i.kr, 1
  %lcmp.mod1809.not = icmp eq i64 %xtraiter1808, 0
  br i1 %lcmp.mod1809.not, label %.lr.ph.i716.prol.loopexit, label %.lr.ph.i716.prol

.lr.ph.i716.prol:                                 ; preds = %.lr.ph.preheader.i715
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv256.i
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !10 ; 2 uses
  %i.ku = fcmp ogt double %i.kt, %.pre.i          ; 2 uses
  %i.kv = trunc nuw nsw i64 %indvars.iv256.i to i32
  %spec.select.i.prol = select i1 %i.ku, i32 %i.kv, i32 %indvars290.i ; 2 uses
  %indvars.iv.next259.i.prol = add nuw nsw i64 %indvars.iv256.i, 1
  %i.kw = select i1 %i.ku, double %i.kt, double %.pre.i
  br label %.lr.ph.i716.prol.loopexit

.lr.ph.i716.prol.loopexit:                        ; preds = %.lr.ph.i716.prol, %.lr.ph.preheader.i715
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i715 ], [ %spec.select.i.prol, %.lr.ph.i716.prol ]
  %.unr = phi double [ %.pre.i, %.lr.ph.preheader.i715 ], [ %i.kw, %.lr.ph.i716.prol ]
  %indvars.iv258.i.unr = phi i64 [ %indvars.iv256.i, %.lr.ph.preheader.i715 ], [ %indvars.iv.next259.i.prol, %.lr.ph.i716.prol ]
  %.0166227.i.unr = phi i32 [ %indvars290.i, %.lr.ph.preheader.i715 ], [ %spec.select.i.prol, %.lr.ph.i716.prol ]
  %i.kx = icmp eq i64 %i.fs, %indvars.iv268.i
  br i1 %i.kx, label %._crit_edge.i, label %.lr.ph.i716

.lr.ph.i716:                                      ; preds = %.lr.ph.i716.prol.loopexit, %.lr.ph.i716
  %i.ky = phi double [ %i.li, %.lr.ph.i716 ], [ %.unr, %.lr.ph.i716.prol.loopexit ] ; 2 uses
  %indvars.iv258.i = phi i64 [ %indvars.iv.next259.i.1, %.lr.ph.i716 ], [ %indvars.iv258.i.unr, %.lr.ph.i716.prol.loopexit ] ; 4 uses
  %.0166227.i = phi i32 [ %spec.select.i.1, %.lr.ph.i716 ], [ %.0166227.i.unr, %.lr.ph.i716.prol.loopexit ]
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv258.i
  %i.la = load double, ptr %i.kz, align 8, !tbaa !10 ; 2 uses
  %i.lb = fcmp ogt double %i.la, %i.ky            ; 2 uses
  %i.lc = trunc nuw nsw i64 %indvars.iv258.i to i32
  %spec.select.i = select i1 %i.lb, i32 %i.lc, i32 %.0166227.i
  %indvars.iv.next259.i = add nuw nsw i64 %indvars.iv258.i, 1 ; 2 uses
  %i.ld = select i1 %i.lb, double %i.la, double %i.ky ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next259.i
  %i.lf = load double, ptr %i.le, align 8, !tbaa !10 ; 2 uses
  %i.lg = fcmp ogt double %i.lf, %i.ld            ; 2 uses
  %i.lh = trunc nuw nsw i64 %indvars.iv.next259.i to i32
  %spec.select.i.1 = select i1 %i.lg, i32 %i.lh, i32 %spec.select.i ; 2 uses
  %indvars.iv.next259.i.1 = add nuw nsw i64 %indvars.iv258.i, 2 ; 2 uses
  %exitcond262.not.i.1 = icmp eq i64 %indvars.iv.next259.i.1, %i.bc
  %i.li = select i1 %i.lg, double %i.lf, double %i.ld
  br i1 %exitcond262.not.i.1, label %._crit_edge.i, label %.lr.ph.i716, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i716.prol.loopexit, %.lr.ph.i716, %.preheader224.i
  %.0166.lcssa.i = phi i32 [ %indvars290.i, %.preheader224.i ], [ %spec.select.i.lcssa.unr, %.lr.ph.i716.prol.loopexit ], [ %spec.select.i.1, %.lr.ph.i716 ] ; 3 uses
  %i.lj = zext i32 %.0166.lcssa.i to i64
  %.not.i = icmp eq i64 %indvars.iv268.i, %i.lj
  br i1 %.not.i, label %.lr.ph.i184.i.preheader, label %.lr.ph230.i

.lr.ph230.i:                                      ; preds = %._crit_edge.i
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv268.i ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !149
  %i.lm = sext i32 %.0166.lcssa.i to i64          ; 3 uses
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.lm ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !149
  store i32 %i.lo, ptr %i.lk, align 4, !tbaa !149
  store i32 %i.ll, ptr %i.ln, align 4, !tbaa !149
  %i.lp = mul nuw nsw i64 %indvars.iv268.i, %i.bh
  %i.lq = mul nsw i32 %.0166.lcssa.i, %4
  %i.lr = sext i32 %i.lq to i64                   ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.lp ; 4 uses
  %invariant.gep306.i = getelementptr [8 x i8], ptr %i.bm, i64 %i.lr ; 5 uses
  br i1 %min.iters.check1729, label %scalar.ph1728.preheader, label %vector.memcheck1721

vector.memcheck1721:                              ; preds = %.lr.ph230.i
  %i.ls = shl nsw i64 %i.lr, 3
  %scevgep1724 = getelementptr i8, ptr %scevgep1723, i64 %i.ls
  %bound01725 = icmp ult ptr %i.bm, %scevgep1724
  %bound11726 = icmp ult ptr %invariant.gep306.i, %scevgep1722
  %found.conflict1727 = and i1 %bound01725, %bound11726
  br i1 %found.conflict1727, label %scalar.ph1728.preheader, label %vector.body1732

vector.body1732:                                  ; preds = %vector.memcheck1721, %vector.body1732
  %index1733 = phi i64 [ %index.next1738, %vector.body1732 ], [ 0, %vector.memcheck1721 ] ; 3 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index1733 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %wide.load1734 = load <2 x double>, ptr %i.lt, align 8, !tbaa !10, !alias.scope !150, !noalias !151
  %wide.load1735 = load <2 x double>, ptr %i.lu, align 8, !tbaa !10, !alias.scope !150, !noalias !151
  %i.lv = getelementptr [8 x i8], ptr %invariant.gep306.i, i64 %index1733 ; 3 uses
  %i.lw = getelementptr i8, ptr %i.lv, i64 16     ; 2 uses
  %wide.load1736 = load <2 x double>, ptr %i.lv, align 8, !tbaa !10, !alias.scope !151
  %wide.load1737 = load <2 x double>, ptr %i.lw, align 8, !tbaa !10, !alias.scope !151
  store <2 x double> %wide.load1736, ptr %i.lt, align 8, !tbaa !10, !alias.scope !150, !noalias !151
  store <2 x double> %wide.load1737, ptr %i.lu, align 8, !tbaa !10, !alias.scope !150, !noalias !151
  store <2 x double> %wide.load1734, ptr %i.lv, align 8, !tbaa !10, !alias.scope !151
  store <2 x double> %wide.load1735, ptr %i.lw, align 8, !tbaa !10, !alias.scope !151
  %index.next1738 = add nuw i64 %index1733, 4     ; 2 uses
  %i.lx = icmp eq i64 %index.next1738, %n.vec1731
  br i1 %i.lx, label %middle.block1739, label %vector.body1732, !llvm.loop !27

middle.block1739:                                 ; preds = %vector.body1732
  br i1 %cmp.n1740, label %._crit_edge231.i.loopexit, label %scalar.ph1728.preheader

scalar.ph1728.preheader:                          ; preds = %vector.memcheck1721, %.lr.ph230.i, %middle.block1739
  %indvars.iv263.i.ph = phi i64 [ 0, %vector.memcheck1721 ], [ 0, %.lr.ph230.i ], [ %n.vec1731, %middle.block1739 ] ; 5 uses
  br i1 %lcmp.mod1811.not.a, label %scalar.ph1728.prol.loopexit, label %scalar.ph1728.prol

scalar.ph1728.prol:                               ; preds = %scalar.ph1728.preheader
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv263.i.ph ; 2 uses
  %i.ly = load double, ptr %gep.i.prol, align 8, !tbaa !10
  %gep307.i.prol = getelementptr [8 x i8], ptr %invariant.gep306.i, i64 %indvars.iv263.i.ph ; 2 uses
  %i.lz = load double, ptr %gep307.i.prol, align 8, !tbaa !10
  store double %i.lz, ptr %gep.i.prol, align 8, !tbaa !10
  store double %i.ly, ptr %gep307.i.prol, align 8, !tbaa !10
  %indvars.iv.next264.i.prol = or disjoint i64 %indvars.iv263.i.ph, 1
  br label %scalar.ph1728.prol.loopexit

scalar.ph1728.prol.loopexit:                      ; preds = %scalar.ph1728.prol, %scalar.ph1728.preheader
  %indvars.iv263.i.unr = phi i64 [ %indvars.iv263.i.ph, %scalar.ph1728.preheader ], [ %indvars.iv.next264.i.prol, %scalar.ph1728.prol ]
  %i.ma = icmp eq i64 %indvars.iv263.i.ph, %i.fx
  br i1 %i.ma, label %._crit_edge231.i.loopexit, label %scalar.ph1728

scalar.ph1728:                                    ; preds = %scalar.ph1728.prol.loopexit, %scalar.ph1728
  %indvars.iv263.i = phi i64 [ %indvars.iv.next264.i.1, %scalar.ph1728 ], [ %indvars.iv263.i.unr, %scalar.ph1728.prol.loopexit ] ; 4 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv263.i ; 2 uses
  %i.mb = load double, ptr %gep.i, align 8, !tbaa !10
  %gep307.i = getelementptr [8 x i8], ptr %invariant.gep306.i, i64 %indvars.iv263.i ; 2 uses
  %i.mc = load double, ptr %gep307.i, align 8, !tbaa !10
  store double %i.mc, ptr %gep.i, align 8, !tbaa !10
  store double %i.mb, ptr %gep307.i, align 8, !tbaa !10
  %indvars.iv.next264.i = add nuw nsw i64 %indvars.iv263.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next264.i ; 2 uses
  %i.md = load double, ptr %gep.i.1, align 8, !tbaa !10
  %gep307.i.1 = getelementptr [8 x i8], ptr %invariant.gep306.i, i64 %indvars.iv.next264.i ; 2 uses
  %i.me = load double, ptr %gep307.i.1, align 8, !tbaa !10
  store double %i.me, ptr %gep.i.1, align 8, !tbaa !10
  store double %i.md, ptr %gep307.i.1, align 8, !tbaa !10
  %indvars.iv.next264.i.1 = add nuw nsw i64 %indvars.iv263.i, 2 ; 2 uses
  %exitcond267.not.i.1 = icmp eq i64 %indvars.iv.next264.i.1, %i.bh
  br i1 %exitcond267.not.i.1, label %._crit_edge231.i.loopexit, label %scalar.ph1728, !llvm.loop !28

._crit_edge231.i.loopexit:                        ; preds = %scalar.ph1728.prol.loopexit, %scalar.ph1728, %middle.block1739
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv268.i
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !10
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.lm
  store double %i.mg, ptr %i.mh, align 8, !tbaa !10
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv268.i
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !10
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.lm
  store double %i.mj, ptr %i.mk, align 8, !tbaa !10
  br label %.lr.ph.i184.i.preheader

.lr.ph.i184.i.preheader:                          ; preds = %._crit_edge231.i.loopexit, %._crit_edge.i
  %i.ml = sub nsw i64 %i.bh, %indvars.iv268.i     ; 10 uses
  %i.mm = mul nuw i32 %i.dh, %indvars290.i
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.mn ; 5 uses
  %i.mp = trunc nuw nsw i64 %i.ml to i32
  %i.mq = uitofp nneg i32 %i.mp to double
  %i.mr = fdiv double f0x5FEFFFFFFFFFFFFF, %i.mq
  br label %.lr.ph.i184.i

.lr.ph.i184.i:                                    ; preds = %.lr.ph.i184.i.preheader, %bb.az
  %indvars.iv.i185.i = phi i64 [ %indvars.iv.next.i196.i, %bb.az ], [ 0, %.lr.ph.i184.i.preheader ] ; 2 uses
  %.076.i186.i = phi double [ %.1.i195.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 8 uses
  %.06075.i187.i = phi double [ %.161.i194.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 8 uses
  %.06274.i188.i = phi double [ %.163.i193.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 6 uses
  %.06473.i189.i = phi double [ %.165.i192.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 6 uses
  %.06672.i190.i = phi double [ %.167.i191.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 6 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv.i185.i
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !10 ; 4 uses
  %i.mu = tail call double @llvm.fabs.f64(double %i.mt) ; 10 uses
  %i.mv = fcmp ogt double %i.mu, f0x2000000000000000
  br i1 %i.mv, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %.lr.ph.i184.i
  %i.mw = fcmp olt double %i.mu, %i.mr
  br i1 %i.mw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.mt, double %i.mt, double %.06473.i189.i)
  br label %bb.az

bb.as:                                            ; preds = %bb.aq
  %i.my = fcmp ogt double %i.mu, %.06075.i187.i
  br i1 %i.my, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.mz = fdiv double %.06075.i187.i, %i.mu       ; 2 uses
  %i.na = fmul double %.06672.i190.i, %i.mz
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.na, double %i.mz, double 1.000000e+00)
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.nc = fdiv double %i.mu, %.06075.i187.i       ; 2 uses
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.nc, double %i.nc, double %.06672.i190.i)
  br label %bb.az

bb.av:                                            ; preds = %.lr.ph.i184.i
  %i.ne = fcmp ogt double %i.mu, %.076.i186.i
  br i1 %i.ne, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.nf = fdiv double %.076.i186.i, %i.mu         ; 2 uses
  %i.ng = fmul double %.06274.i188.i, %i.nf
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.ng, double %i.nf, double 1.000000e+00)
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
end_hunk_0
begin_hunk_1_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a

bb.bk:                                            ; preds = %bb.bi
  %i.rj = fcmp ogt double %i.rf, %.06075.i209.i
  br i1 %i.rj, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.rk = fdiv double %.06075.i209.i, %i.rf       ; 2 uses
  %i.rl = fmul double %.06672.i212.i, %i.rk
  %i.rm = tail call double @llvm.fmuladd.f64(double %i.rl, double %i.rk, double 1.000000e+00)
  br label %bb.br

bb.bm:                                            ; preds = %bb.bk
  %i.rn = fdiv double %i.rf, %.06075.i209.i       ; 2 uses
  %i.ro = tail call double @llvm.fmuladd.f64(double %i.rn, double %i.rn, double %.06672.i212.i)
  br label %bb.br

bb.bn:                                            ; preds = %.lr.ph.i206.i
  %i.rp = fcmp ogt double %i.rf, %.076.i208.i
  br i1 %i.rp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.rq = fdiv double %.076.i208.i, %i.rf         ; 2 uses
  %i.rr = fmul double %.06274.i210.i, %i.rq
  %i.rs = tail call double @llvm.fmuladd.f64(double %i.rr, double %i.rq, double 1.000000e+00)
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %i.rt = fcmp une double %i.re, 0.000000e+00
  br i1 %i.rt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ru = fdiv double %i.rf, %.076.i208.i         ; 2 uses
  %i.rv = tail call double @llvm.fmuladd.f64(double %i.ru, double %i.ru, double %.06274.i210.i)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm, %bb.bl, %bb.bj
  %.167.i213.i = phi double [ %.06672.i212.i, %bb.bj ], [ %i.rm, %bb.bl ], [ %i.ro, %bb.bm ], [ %.06672.i212.i, %bb.bo ], [ %.06672.i212.i, %bb.bq ], [ %.06672.i212.i, %bb.bp ] ; 3 uses
  %.165.i214.i = phi double [ %i.ri, %bb.bj ], [ %.06473.i211.i, %bb.bl ], [ %.06473.i211.i, %bb.bm ], [ %.06473.i211.i, %bb.bo ], [ %.06473.i211.i, %bb.bq ], [ %.06473.i211.i, %bb.bp ] ; 7 uses
  %.163.i215.i = phi double [ %.06274.i210.i, %bb.bj ], [ %.06274.i210.i, %bb.bl ], [ %.06274.i210.i, %bb.bm ], [ %i.rs, %bb.bo ], [ %i.rv, %bb.bq ], [ %.06274.i210.i, %bb.bp ] ; 4 uses
  %.161.i216.i = phi double [ %.06075.i209.i, %bb.bj ], [ %i.rf, %bb.bl ], [ %.06075.i209.i, %bb.bm ], [ %.06075.i209.i, %bb.bo ], [ %.06075.i209.i, %bb.bq ], [ %.06075.i209.i, %bb.bp ] ; 4 uses
  %.1.i217.i = phi double [ %.076.i208.i, %bb.bj ], [ %.076.i208.i, %bb.bl ], [ %.076.i208.i, %bb.bm ], [ %i.rf, %bb.bo ], [ %.076.i208.i, %bb.bq ], [ %.076.i208.i, %bb.bp ] ; 8 uses
  %indvars.iv.next.i218.i = add nuw nsw i64 %indvars.iv.i207.i, 1 ; 2 uses
  %exitcond.not.i219.i = icmp eq i64 %indvars.iv.next.i218.i, %i.os
  br i1 %exitcond.not.i219.i, label %._crit_edge.i220.i, label %.lr.ph.i206.i, !llvm.loop !0

._crit_edge.i220.i:                               ; preds = %bb.br
  %i.rw = fcmp une double %.167.i213.i, 0.000000e+00
  br i1 %i.rw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i220.i
  %i.rx = fdiv double %.165.i214.i, %.161.i216.i
  %i.ry = fdiv double %i.rx, %.161.i216.i
  %i.rz = fadd double %.167.i213.i, %i.ry
  %i.sa = tail call double @sqrt(double noundef %i.rz) #11
  %i.sb = fmul double %.161.i216.i, %i.sa
  br label %_Z8lm_enormiPKd.exit221.i

bb.bt:                                            ; preds = %._crit_edge.i220.i
  %i.sc = fcmp une double %.165.i214.i, 0.000000e+00
  br i1 %i.sc, label %bb.bu, label %.thread.i200.i

bb.bu:                                            ; preds = %bb.bt
  %i.sd = fcmp ult double %.165.i214.i, %.1.i217.i
  br i1 %i.sd, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.se = fdiv double %.1.i217.i, %.165.i214.i
  %i.sf = fmul double %.163.i215.i, %.1.i217.i
  %i.sg = tail call double @llvm.fmuladd.f64(double %i.se, double %i.sf, double 1.000000e+00)
  %i.sh = fmul double %.165.i214.i, %i.sg
  %i.si = tail call double @sqrt(double noundef %i.sh) #11
  br label %_Z8lm_enormiPKd.exit221.i

bb.bw:                                            ; preds = %bb.bu
  %i.sj = fdiv double %.165.i214.i, %.1.i217.i
  %i.sk = tail call double @llvm.fmuladd.f64(double %.1.i217.i, double %.163.i215.i, double %i.sj)
  %i.sl = fmul double %.1.i217.i, %i.sk
  %i.sm = tail call double @sqrt(double noundef %i.sl) #11
  br label %_Z8lm_enormiPKd.exit221.i

.thread.i200.i:                                   ; preds = %bb.bt
  %i.sn = tail call double @sqrt(double noundef %.163.i215.i) #11
  %i.so = fmul double %.1.i217.i, %i.sn
  br label %_Z8lm_enormiPKd.exit221.i

_Z8lm_enormiPKd.exit221.i:                        ; preds = %.thread.i200.i, %bb.bw, %bb.bv, %bb.bs
  %.069.i203.i = phi double [ %i.sb, %bb.bs ], [ %i.si, %bb.bv ], [ %i.sm, %bb.bw ], [ %i.so, %.thread.i200.i ] ; 2 uses
  store double %.069.i203.i, ptr %i.qk, align 8, !tbaa !10
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv285.i
  store double %.069.i203.i, ptr %i.sp, align 8, !tbaa !10
  br label %bb.bx

bb.bx:                                            ; preds = %_Z8lm_enormiPKd.exit221.i, %bb.bh, %._crit_edge244.i.loopexit
  %indvars.iv.next286.i = add nuw nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next286.i, %i.bc
  br i1 %exitcond289.not.i, label %._crit_edge246.i, label %.preheader.i, !llvm.loop !38

._crit_edge246.i:                                 ; preds = %bb.bx, %._crit_edge235.loopexit.i
  %i.sq = fneg double %.0165.i
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge246.i, %_Z8lm_enormiPKd.exit199.i
  %.sink.i = phi double [ %i.sq, %._crit_edge246.i ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit199.i ]
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv268.i
  store double %.sink.i, ptr %i.sr, align 8, !tbaa !10
  %indvars.iv.next257.i = add nuw nsw i64 %indvars.iv256.i, 1
  %exitcond292.not.i = icmp eq i64 %indvars.iv.next269.i, %i.bc
  br i1 %exitcond292.not.i, label %_ZL8lm_qrfaciiPdPiS_S_S_.exit, label %.preheader224.i, !llvm.loop !39

_ZL8lm_qrfaciiPdPiS_S_S_.exit:                    ; preds = %bb.by
  br i1 %.not674, label %.preheader870, label %.preheader872

.preheader872:                                    ; preds = %_ZL8lm_qrfaciiPdPiS_S_S_.exit
  br i1 %.not1369, label %.lr.ph957.preheader, label %.lr.ph944.preheader

.lr.ph944.preheader:                              ; preds = %.preheader872
  br i1 %min.iters.check1669, label %.lr.ph944.preheader1776, label %vector.body1672

vector.body1672:                                  ; preds = %.lr.ph944.preheader, %vector.body1672
  %index1673 = phi i64 [ %index.next1678, %vector.body1672 ], [ 0, %.lr.ph944.preheader ] ; 4 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1673 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %wide.load1674 = load <2 x double>, ptr %i.ss, align 8, !tbaa !10
  %wide.load1675 = load <2 x double>, ptr %i.st, align 8, !tbaa !10
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index1673 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %wide.load1676 = load <2 x double>, ptr %i.su, align 8, !tbaa !10
  %wide.load1677 = load <2 x double>, ptr %i.sv, align 8, !tbaa !10
  %i.sw = fsub <2 x double> %wide.load1674, %wide.load1676
  %i.sx = fsub <2 x double> %wide.load1675, %wide.load1677
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1673 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  store <2 x double> %i.sw, ptr %i.sy, align 8, !tbaa !10
  store <2 x double> %i.sx, ptr %i.sz, align 8, !tbaa !10
  %index.next1678 = add nuw i64 %index1673, 4     ; 2 uses
  %i.ta = icmp eq i64 %index.next1678, %n.vec1671
  br i1 %i.ta, label %middle.block1679, label %vector.body1672, !llvm.loop !40

middle.block1679:                                 ; preds = %vector.body1672
  br i1 %cmp.n1680, label %.lr.ph957.preheader, label %.lr.ph944.preheader1776

.lr.ph944.preheader1776:                          ; preds = %.lr.ph944.preheader, %middle.block1679
  %indvars.iv1099.ph = phi i64 [ 0, %.lr.ph944.preheader ], [ %n.vec1671, %middle.block1679 ]
  br label %.lr.ph944

.preheader870:                                    ; preds = %_ZL8lm_qrfaciiPdPiS_S_S_.exit
  br i1 %.not1369, label %.lr.ph957.preheader, label %.lr.ph946.preheader

.lr.ph946.preheader:                              ; preds = %.preheader870
  br i1 %min.iters.check1657, label %.lr.ph946.preheader1775, label %vector.body1660

vector.body1660:                                  ; preds = %.lr.ph946.preheader, %vector.body1660
  %index1661 = phi i64 [ %index.next1664, %vector.body1660 ], [ 0, %.lr.ph946.preheader ] ; 3 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1661 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %wide.load1662 = load <2 x double>, ptr %i.tb, align 8, !tbaa !10
  %wide.load1663 = load <2 x double>, ptr %i.tc, align 8, !tbaa !10
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1661 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  store <2 x double> %wide.load1662, ptr %i.td, align 8, !tbaa !10
  store <2 x double> %wide.load1663, ptr %i.te, align 8, !tbaa !10
  %index.next1664 = add nuw i64 %index1661, 4     ; 2 uses
  %i.tf = icmp eq i64 %index.next1664, %n.vec1659
  br i1 %i.tf, label %middle.block1665, label %vector.body1660, !llvm.loop !41

middle.block1665:                                 ; preds = %vector.body1660
  br i1 %cmp.n1666, label %.lr.ph957.preheader, label %.lr.ph946.preheader1775

.lr.ph946.preheader1775:                          ; preds = %.lr.ph946.preheader, %middle.block1665
  %indvars.iv1104.ph = phi i64 [ 0, %.lr.ph946.preheader ], [ %n.vec1659, %middle.block1665 ]
  br label %.lr.ph946

.lr.ph944:                                        ; preds = %.lr.ph944.preheader1776, %.lr.ph944
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %.lr.ph944 ], [ %indvars.iv1099.ph, %.lr.ph944.preheader1776 ] ; 4 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1099
  %i.th = load double, ptr %i.tg, align 8, !tbaa !10
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1099
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !10
  %i.tk = fsub double %i.th, %i.tj
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1099
  store double %i.tk, ptr %i.tl, align 8, !tbaa !10
  %indvars.iv.next1100 = add nuw nsw i64 %indvars.iv1099, 1 ; 2 uses
  %exitcond1103.not = icmp eq i64 %indvars.iv.next1100, %i.bh
  br i1 %exitcond1103.not, label %.lr.ph957.preheader, label %.lr.ph944, !llvm.loop !42

.lr.ph946:                                        ; preds = %.lr.ph946.preheader1775, %.lr.ph946
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %.lr.ph946 ], [ %indvars.iv1104.ph, %.lr.ph946.preheader1775 ] ; 3 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1104
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !10
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1104
  store double %i.tn, ptr %i.to, align 8, !tbaa !10
  %indvars.iv.next1105 = add nuw nsw i64 %indvars.iv1104, 1 ; 2 uses
  %exitcond1108.not = icmp eq i64 %indvars.iv.next1105, %i.bh
  br i1 %exitcond1108.not, label %.lr.ph957.preheader, label %.lr.ph946, !llvm.loop !43

.lr.ph957.preheader:                              ; preds = %.lr.ph944, %.lr.ph946, %middle.block1679, %middle.block1665, %.preheader870, %.preheader872
  br label %.lr.ph957

.lr.ph957:                                        ; preds = %.lr.ph957.preheader, %.loopexit862
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %.loopexit862 ], [ 0, %.lr.ph957.preheader ] ; 20 uses
  %11 = sub i64 %i.fq, %indvars.iv1109
  %i.tp = sub nsw i64 %i.bh, %indvars.iv1109      ; 3 uses
  %i.tq = add nuw i64 %i.ey, %indvars.iv1109
  %i.tr = shl i64 %i.tq, 3
  %gep1924 = getelementptr i8, ptr %invariant.gep1923, i64 %i.tr
  %i.ts = mul i64 %i.fa, %indvars.iv1109
  %scevgep1635 = getelementptr i8, ptr %i.ga, i64 %i.ts
  %i.tt = mul i64 %i.fd, %indvars.iv1109
  %scevgep1636 = getelementptr i8, ptr %i.gb, i64 %i.tt
  %indvars1121 = trunc i64 %indvars.iv1109 to i32
  %i.tu = mul nuw nsw i64 %indvars.iv1109, %i.dq  ; 2 uses
  %i.tv = mul nuw nsw i32 %4, %indvars1121
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr [8 x i8], ptr %i.bm, i64 %indvars.iv1109
  %i.ty = getelementptr [8 x i8], ptr %i.tx, i64 %i.tw ; 2 uses
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !10 ; 2 uses
  %i.ua = fcmp une double %i.tz, 0.000000e+00
  %i.ub = icmp samesign ult i64 %indvars.iv1109, %i.dq
  %or.cond1365 = select i1 %i.ua, i1 %i.ub, i1 false
  br i1 %or.cond1365, label %.lr.ph949.preheader, label %.loopexit862

.lr.ph949.preheader:                              ; preds = %.lr.ph957
  %i.uc = sub nsw i64 %i.bh, %indvars.iv1109
  %invariant.gep1356 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.tu ; 5 uses
  %xtraiter1817.a = and i64 %i.uc, 3              ; 2 uses
  %lcmp.mod1818.not.a = icmp eq i64 %xtraiter1817.a, 0
  br i1 %lcmp.mod1818.not.a, label %.lr.ph949.prol.loopexit, label %.lr.ph949.prol

.lr.ph949.prol:                                   ; preds = %.lr.ph949.preheader, %.lr.ph949.prol
  %indvars.iv1111.prol = phi i64 [ %indvars.iv.next1112.prol, %.lr.ph949.prol ], [ %indvars.iv1109, %.lr.ph949.preheader ] ; 3 uses
  %.0604948.prol = phi double [ %i.ug, %.lr.ph949.prol ], [ 0.000000e+00, %.lr.ph949.preheader ]
  %prol.iter1819 = phi i64 [ %prol.iter1819.next, %.lr.ph949.prol ], [ 0, %.lr.ph949.preheader ]
  %gep1357.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1356, i64 %indvars.iv1111.prol
  %i.ud = load double, ptr %gep1357.prol, align 8, !tbaa !10
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1111.prol
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !10
  %i.ug = tail call double @llvm.fmuladd.f64(double %i.ud, double %i.uf, double %.0604948.prol) ; 3 uses
  %indvars.iv.next1112.prol = add nuw nsw i64 %indvars.iv1111.prol, 1 ; 2 uses
  %prol.iter1819.next = add i64 %prol.iter1819, 1 ; 2 uses
  %prol.iter1819.cmp.not = icmp eq i64 %prol.iter1819.next, %xtraiter1817.a
  br i1 %prol.iter1819.cmp.not, label %.lr.ph949.prol.loopexit, label %.lr.ph949.prol, !llvm.loop !44

.lr.ph949.prol.loopexit:                          ; preds = %.lr.ph949.prol, %.lr.ph949.preheader
  %.lcssa1780.unr = phi double [ poison, %.lr.ph949.preheader ], [ %i.ug, %.lr.ph949.prol ]
  %indvars.iv1111.unr = phi i64 [ %indvars.iv1109, %.lr.ph949.preheader ], [ %indvars.iv.next1112.prol, %.lr.ph949.prol ]
  %.0604948.unr = phi double [ 0.000000e+00, %.lr.ph949.preheader ], [ %i.ug, %.lr.ph949.prol ]
  %i.uh = icmp ult i64 %11, 3
  br i1 %i.uh, label %.lr.ph953.preheader, label %.lr.ph949

.lr.ph949:                                        ; preds = %.lr.ph949.prol.loopexit, %.lr.ph949
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112.3, %.lr.ph949 ], [ %indvars.iv1111.unr, %.lr.ph949.prol.loopexit ] ; 6 uses
  %.0604948 = phi double [ %i.ux, %.lr.ph949 ], [ %.0604948.unr, %.lr.ph949.prol.loopexit ]
  %gep1357 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1356, i64 %indvars.iv1111
  %i.ui = load double, ptr %gep1357, align 8, !tbaa !10
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1111
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !10
  %i.ul = tail call double @llvm.fmuladd.f64(double %i.ui, double %i.uk, double %.0604948)
  %indvars.iv.next1112 = add nuw nsw i64 %indvars.iv1111, 1 ; 2 uses
  %gep1357.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1356, i64 %indvars.iv.next1112
  %i.um = load double, ptr %gep1357.1, align 8, !tbaa !10
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1112
  %i.uo = load double, ptr %i.un, align 8, !tbaa !10
  %i.up = tail call double @llvm.fmuladd.f64(double %i.um, double %i.uo, double %i.ul)
  %indvars.iv.next1112.1 = add nuw nsw i64 %indvars.iv1111, 2 ; 2 uses
  %gep1357.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1356, i64 %indvars.iv.next1112.1
  %i.uq = load double, ptr %gep1357.2, align 8, !tbaa !10
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1112.1
  %i.us = load double, ptr %i.ur, align 8, !tbaa !10
  %i.ut = tail call double @llvm.fmuladd.f64(double %i.uq, double %i.us, double %i.up)
  %indvars.iv.next1112.2 = add nuw nsw i64 %indvars.iv1111, 3 ; 2 uses
  %gep1357.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1356, i64 %indvars.iv.next1112.2
  %i.uu = load double, ptr %gep1357.3, align 8, !tbaa !10
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1112.2
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !10
  %i.ux = tail call double @llvm.fmuladd.f64(double %i.uu, double %i.uw, double %i.ut) ; 2 uses
  %indvars.iv.next1112.3 = add nuw nsw i64 %indvars.iv1111, 4 ; 2 uses
  %exitcond1115.not.3 = icmp eq i64 %indvars.iv.next1112.3, %i.bh
  br i1 %exitcond1115.not.3, label %.lr.ph953.preheader, label %.lr.ph949, !llvm.loop !45

.lr.ph953.preheader:                              ; preds = %.lr.ph949, %.lr.ph949.prol.loopexit
  %.lcssa1780 = phi double [ %.lcssa1780.unr, %.lr.ph949.prol.loopexit ], [ %i.ux, %.lr.ph949 ]
  %i.uy = fneg double %.lcssa1780
  %i.uz = fdiv double %i.uy, %i.tz                ; 4 uses
  %invariant.gep1358 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.tu ; 4 uses
  %min.iters.check1641 = icmp ult i64 %i.tp, 4
  br i1 %min.iters.check1641, label %.lr.ph953.preheader1770, label %vector.memcheck1633

vector.memcheck1633:                              ; preds = %.lr.ph953.preheader
  %bound01637 = icmp ult ptr %gep1924, %scevgep1636
  %bound11638 = icmp ult ptr %scevgep1635, %i.bt
  %found.conflict1639 = and i1 %bound01637, %bound11638
  br i1 %found.conflict1639, label %.lr.ph953.preheader1770, label %vector.ph1642

vector.ph1642:                                    ; preds = %vector.memcheck1633
  %n.vec1643 = and i64 %i.tp, -4                  ; 3 uses
  %i.va = add i64 %indvars.iv1109, %n.vec1643
  %broadcast.splatinsert1644 = insertelement <2 x double> poison, double %i.uz, i64 0
  %broadcast.splat1645 = shufflevector <2 x double> %broadcast.splatinsert1644, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1646

vector.body1646:                                  ; preds = %vector.body1646, %vector.ph1642
  %index1647 = phi i64 [ 0, %vector.ph1642 ], [ %index.next1652, %vector.body1646 ] ; 2 uses
  %i.vb = add nuw i64 %indvars.iv1109, %index1647 ; 2 uses
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1358, i64 %i.vb ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  %wide.load1648 = load <2 x double>, ptr %i.vc, align 8, !tbaa !10, !alias.scope !155
  %wide.load1649 = load <2 x double>, ptr %i.vd, align 8, !tbaa !10, !alias.scope !155
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vb ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16 ; 2 uses
  %wide.load1650 = load <2 x double>, ptr %i.ve, align 8, !tbaa !10, !alias.scope !156, !noalias !155
  %wide.load1651 = load <2 x double>, ptr %i.vf, align 8, !tbaa !10, !alias.scope !156, !noalias !155
  %i.vg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1648, <2 x double> %broadcast.splat1645, <2 x double> %wide.load1650)
  %i.vh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1649, <2 x double> %broadcast.splat1645, <2 x double> %wide.load1651)
  store <2 x double> %i.vg, ptr %i.ve, align 8, !tbaa !10, !alias.scope !156, !noalias !155
  store <2 x double> %i.vh, ptr %i.vf, align 8, !tbaa !10, !alias.scope !156, !noalias !155
  %index.next1652 = add nuw i64 %index1647, 4     ; 2 uses
  %i.vi = icmp eq i64 %index.next1652, %n.vec1643
  br i1 %i.vi, label %middle.block1653, label %vector.body1646, !llvm.loop !49

middle.block1653:                                 ; preds = %vector.body1646
  %cmp.n1654 = icmp eq i64 %i.tp, %n.vec1643
  br i1 %cmp.n1654, label %.loopexit862, label %.lr.ph953.preheader1770

.lr.ph953.preheader1770:                          ; preds = %vector.memcheck1633, %.lr.ph953.preheader, %middle.block1653
  %indvars.iv1116.ph = phi i64 [ %indvars.iv1109, %vector.memcheck1633 ], [ %indvars.iv1109, %.lr.ph953.preheader ], [ %i.va, %middle.block1653 ] ; 6 uses
  %i.vj = sub i64 %i.bh, %indvars.iv1116.ph
  %xtraiter1820 = and i64 %i.vj, 1
  %lcmp.mod1821.not = icmp eq i64 %xtraiter1820, 0
  br i1 %lcmp.mod1821.not, label %.lr.ph953.prol.loopexit, label %.lr.ph953.prol

.lr.ph953.prol:                                   ; preds = %.lr.ph953.preheader1770
  %gep1359.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1358, i64 %indvars.iv1116.ph
  %i.vk = load double, ptr %gep1359.prol, align 8, !tbaa !10
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1116.ph ; 2 uses
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !10
  %i.vn = tail call double @llvm.fmuladd.f64(double %i.vk, double %i.uz, double %i.vm)
  store double %i.vn, ptr %i.vl, align 8, !tbaa !10
  %indvars.iv.next1117.prol = add nuw nsw i64 %indvars.iv1116.ph, 1
  br label %.lr.ph953.prol.loopexit

.lr.ph953.prol.loopexit:                          ; preds = %.lr.ph953.prol, %.lr.ph953.preheader1770
  %indvars.iv1116.unr = phi i64 [ %indvars.iv1116.ph, %.lr.ph953.preheader1770 ], [ %indvars.iv.next1117.prol, %.lr.ph953.prol ]
  %i.vo = icmp eq i64 %indvars.iv1116.ph, %i.gc
  br i1 %i.vo, label %.loopexit862, label %.lr.ph953

.lr.ph953:                                        ; preds = %.lr.ph953.prol.loopexit, %.lr.ph953
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117.1, %.lr.ph953 ], [ %indvars.iv1116.unr, %.lr.ph953.prol.loopexit ] ; 4 uses
  %gep1359 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1358, i64 %indvars.iv1116
  %i.vp = load double, ptr %gep1359, align 8, !tbaa !10
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1116 ; 2 uses
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !10
  %i.vs = tail call double @llvm.fmuladd.f64(double %i.vp, double %i.uz, double %i.vr)
  store double %i.vs, ptr %i.vq, align 8, !tbaa !10
  %indvars.iv.next1117 = add nuw nsw i64 %indvars.iv1116, 1 ; 2 uses
  %gep1359.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1358, i64 %indvars.iv.next1117
  %i.vt = load double, ptr %gep1359.1, align 8, !tbaa !10
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1117 ; 2 uses
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !10
  %i.vw = tail call double @llvm.fmuladd.f64(double %i.vt, double %i.uz, double %i.vv)
  store double %i.vw, ptr %i.vu, align 8, !tbaa !10
  %indvars.iv.next1117.1 = add nuw nsw i64 %indvars.iv1116, 2 ; 2 uses
  %exitcond1120.not.1 = icmp eq i64 %indvars.iv.next1117.1, %i.bh
  br i1 %exitcond1120.not.1, label %.loopexit862, label %.lr.ph953, !llvm.loop !50

.loopexit862:                                     ; preds = %.lr.ph953.prol.loopexit, %.lr.ph953, %middle.block1653, %.lr.ph957
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv1109
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !10
  store double %i.vy, ptr %i.ty, align 8, !tbaa !10
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1109
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !10
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv1109
  store double %i.wa, ptr %i.wb, align 8, !tbaa !10
  %indvars.iv.next1110 = add nuw nsw i64 %indvars.iv1109, 1 ; 2 uses
  %exitcond1124.not = icmp eq i64 %indvars.iv.next1110, %i.dr
  br i1 %exitcond1124.not, label %.lr.ph962, label %.lr.ph957, !llvm.loop !51

.lr.ph962:                                        ; preds = %.loopexit862, %bb.cb
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %bb.cb ], [ 0, %.loopexit862 ] ; 4 uses
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %bb.cb ], [ 1, %.loopexit862 ] ; 3 uses
  %.0606961 = phi double [ %.1607, %bb.cb ], [ 0.000000e+00, %.loopexit862 ] ; 3 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1134
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !149
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.we
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !10 ; 2 uses
  %i.wh = fcmp oeq double %i.wg, 0.000000e+00
  br i1 %i.wh, label %bb.cb, label %.preheader861

.preheader861:                                    ; preds = %.lr.ph962
  %i.wi = mul nuw nsw i64 %indvars.iv1134, %i.dq
  %invariant.gep1360 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.wi ; 5 uses
  %xtraiter1823 = and i64 %indvars.iv1132, 3      ; 3 uses
  %i.wj = icmp samesign ult i64 %indvars.iv1134, 3
  br i1 %i.wj, label %.epil.preheader, label %.preheader861.new

.preheader861.new:                                ; preds = %.preheader861
  %unroll_iter = and i64 %indvars.iv1132, -4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.preheader861.new
  %indvars.iv1125 = phi i64 [ 0, %.preheader861.new ], [ %indvars.iv.next1126.3, %bb.bz ] ; 6 uses
  %.1605959 = phi double [ 0.000000e+00, %.preheader861.new ], [ %i.wz, %bb.bz ]
  %niter = phi i64 [ 0, %.preheader861.new ], [ %niter.next.3, %bb.bz ]
  %gep1361 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1360, i64 %indvars.iv1125
  %i.wk = load double, ptr %gep1361, align 8, !tbaa !10
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv1125
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !10
  %i.wn = tail call double @llvm.fmuladd.f64(double %i.wk, double %i.wm, double %.1605959)
  %indvars.iv.next1126 = or disjoint i64 %indvars.iv1125, 1 ; 2 uses
  %gep1361.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1360, i64 %indvars.iv.next1126
  %i.wo = load double, ptr %gep1361.1, align 8, !tbaa !10
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next1126
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !10
  %i.wr = tail call double @llvm.fmuladd.f64(double %i.wo, double %i.wq, double %i.wn)
  %indvars.iv.next1126.1 = or disjoint i64 %indvars.iv1125, 2 ; 2 uses
  %gep1361.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1360, i64 %indvars.iv.next1126.1
  %i.ws = load double, ptr %gep1361.2, align 8, !tbaa !10
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next1126.1
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !10
  %i.wv = tail call double @llvm.fmuladd.f64(double %i.ws, double %i.wu, double %i.wr)
  %indvars.iv.next1126.2 = or disjoint i64 %indvars.iv1125, 3 ; 2 uses
  %gep1361.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1360, i64 %indvars.iv.next1126.2
  %i.ww = load double, ptr %gep1361.3, align 8, !tbaa !10
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next1126.2
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !10
  %i.wz = tail call double @llvm.fmuladd.f64(double %i.ww, double %i.wy, double %i.wv) ; 3 uses
  %indvars.iv.next1126.3 = add nuw nsw i64 %indvars.iv1125, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.bz, !llvm.loop !52

.unr-lcssa:                                       ; preds = %bb.bz
  %lcmp.mod1824.not = icmp eq i64 %xtraiter1823, 0
  br i1 %lcmp.mod1824.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader861
  %indvars.iv1125.epil.init = phi i64 [ 0, %.preheader861 ], [ %indvars.iv.next1126.3, %.unr-lcssa ]
  %.1605959.epil.init = phi double [ 0.000000e+00, %.preheader861 ], [ %i.wz, %.unr-lcssa ]
  %lcmp.mod1826 = icmp ne i64 %xtraiter1823, 0
  tail call void @llvm.assume(i1 %lcmp.mod1826)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.epil.preheader
  %indvars.iv1125.epil = phi i64 [ %indvars.iv1125.epil.init, %.epil.preheader ], [ %indvars.iv.next1126.epil, %bb.ca ] ; 3 uses
  %.1605959.epil = phi double [ %.1605959.epil.init, %.epil.preheader ], [ %i.xd, %bb.ca ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ca ]
  %gep1361.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1360, i64 %indvars.iv1125.epil
  %i.xa = load double, ptr %gep1361.epil, align 8, !tbaa !10
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv1125.epil
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !10
  %i.xd = tail call double @llvm.fmuladd.f64(double %i.xa, double %i.xc, double %.1605959.epil) ; 2 uses
  %indvars.iv.next1126.epil = add nuw nsw i64 %indvars.iv1125.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1823
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ca, !llvm.loop !53

.epilog-lcssa:                                    ; preds = %bb.ca, %.unr-lcssa
  %.lcssa1781 = phi double [ %i.wz, %.unr-lcssa ], [ %i.xd, %bb.ca ]
  %i.xe = fdiv double %.lcssa1781, %i.wg
  %i.xf = fdiv double %i.xe, %.0608
  %i.xg = tail call double @llvm.fabs.f64(double %i.xf) ; 2 uses
  %.inv849 = fcmp oge double %.0606961, %i.xg
  %..0606 = select i1 %.inv849, double %.0606961, double %i.xg
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph962, %.epilog-lcssa
  %.1607 = phi double [ %.0606961, %.lr.ph962 ], [ %..0606, %.epilog-lcssa ] ; 3 uses
  %indvars.iv.next1135 = add nuw nsw i64 %indvars.iv1134, 1 ; 2 uses
  %indvars.iv.next1133 = add nuw i64 %indvars.iv1132, 1
  %exitcond1141.not = icmp eq i64 %indvars.iv.next1135, %i.dr
  br i1 %exitcond1141.not, label %._crit_edge963, label %.lr.ph962, !llvm.loop !54

._crit_edge963:                                   ; preds = %bb.cb
  %i.xh = load double, ptr %i.ac, align 8, !tbaa !143
  %i.xi = fcmp ugt double %.1607, %i.xh
  br i1 %i.xi, label %bb.cc, label %.thread.sink.split

bb.cc:                                            ; preds = %._crit_edge963
  %i.xj = icmp eq i32 %.0592, 0                   ; 2 uses
  %i.xk = load i32, ptr %i.ar, align 4, !tbaa !145
  %.not675 = icmp eq i32 %i.xk, 0                 ; 2 uses
  br i1 %i.xj, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  br i1 %.not675, label %._crit_edge971, label %.lr.ph968.preheader

.lr.ph968.preheader:                              ; preds = %bb.cd
  br i1 %min.iters.check1608, label %.lr.ph968.preheader1773, label %vector.body1611

vector.body1611:                                  ; preds = %.lr.ph968.preheader, %vector.body1611
  %index1612 = phi i64 [ %index.next1615, %vector.body1611 ], [ 0, %.lr.ph968.preheader ] ; 3 uses
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index1612 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %wide.load1613 = load <2 x double>, ptr %i.xl, align 8, !tbaa !10 ; 2 uses
  %wide.load1614 = load <2 x double>, ptr %i.xm, align 8, !tbaa !10 ; 2 uses
  %i.xn = fcmp une <2 x double> %wide.load1613, zeroinitializer
  %i.xo = fcmp une <2 x double> %wide.load1614, zeroinitializer
  %i.xp = select <2 x i1> %i.xn, <2 x double> %wide.load1613, <2 x double> splat (double 1.000000e+00)
  %i.xq = select <2 x i1> %i.xo, <2 x double> %wide.load1614, <2 x double> splat (double 1.000000e+00)
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1612 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  store <2 x double> %i.xp, ptr %i.xr, align 8, !tbaa !10
  store <2 x double> %i.xq, ptr %i.xs, align 8, !tbaa !10
  %index.next1615 = add nuw i64 %index1612, 4     ; 2 uses
  %i.xt = icmp eq i64 %index.next1615, %n.vec1610
  br i1 %i.xt, label %middle.block1616, label %vector.body1611, !llvm.loop !55

middle.block1616:                                 ; preds = %vector.body1611
  br i1 %cmp.n1617, label %.lr.ph970.preheader, label %.lr.ph968.preheader1773

.lr.ph968.preheader1773:                          ; preds = %.lr.ph968.preheader, %middle.block1616
  %indvars.iv1148.ph = phi i64 [ 0, %.lr.ph968.preheader ], [ %n.vec1610, %middle.block1616 ]
  br label %.lr.ph968

.lr.ph968:                                        ; preds = %.lr.ph968.preheader1773, %.lr.ph968
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %.lr.ph968 ], [ %indvars.iv1148.ph, %.lr.ph968.preheader1773 ] ; 3 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv1148
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !10 ; 2 uses
  %i.xw = fcmp une double %i.xv, 0.000000e+00
  %i.xx = select i1 %i.xw, double %i.xv, double 1.000000e+00
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv1148
  store double %i.xx, ptr %i.xy, align 8, !tbaa !10
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 1 ; 2 uses
  %exitcond1153.not.a = icmp eq i64 %indvars.iv.next1149, %i.dr
  br i1 %exitcond1153.not.a, label %.lr.ph970.preheader, label %.lr.ph968, !llvm.loop !56

.lr.ph970.preheader:                              ; preds = %.lr.ph968, %middle.block1616
  br i1 %min.iters.check1594, label %.lr.ph970.preheader1772, label %vector.body1597

vector.body1597:                                  ; preds = %.lr.ph970.preheader, %vector.body1597
  %index1598 = phi i64 [ %index.next1603, %vector.body1597 ], [ 0, %.lr.ph970.preheader ] ; 4 uses
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1598 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %wide.load1599 = load <2 x double>, ptr %i.xz, align 8, !tbaa !10
  %wide.load1600 = load <2 x double>, ptr %i.ya, align 8, !tbaa !10
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index1598 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %wide.load1601 = load <2 x double>, ptr %i.yb, align 8, !tbaa !10
  %wide.load1602 = load <2 x double>, ptr %i.yc, align 8, !tbaa !10
  %i.yd = fmul <2 x double> %wide.load1599, %wide.load1601
  %i.ye = fmul <2 x double> %wide.load1600, %wide.load1602
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index1598 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  store <2 x double> %i.yd, ptr %i.yf, align 8, !tbaa !10
  store <2 x double> %i.ye, ptr %i.yg, align 8, !tbaa !10
  %index.next1603 = add nuw i64 %index1598, 4     ; 2 uses
  %i.yh = icmp eq i64 %index.next1603, %n.vec1596
  br i1 %i.yh, label %middle.block1604, label %vector.body1597, !llvm.loop !57

middle.block1604:                                 ; preds = %vector.body1597
  br i1 %cmp.n1605, label %._crit_edge971, label %.lr.ph970.preheader1772

.lr.ph970.preheader1772:                          ; preds = %.lr.ph970.preheader, %middle.block1604
  %indvars.iv1154.ph = phi i64 [ 0, %.lr.ph970.preheader ], [ %n.vec1596, %middle.block1604 ]
  br label %.lr.ph970

.lr.ph970:                                        ; preds = %.lr.ph970.preheader1772, %.lr.ph970
  %indvars.iv1154 = phi i64 [ %indvars.iv.next1155, %.lr.ph970 ], [ %indvars.iv1154.ph, %.lr.ph970.preheader1772 ] ; 4 uses
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv1154
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !10
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1154
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !10
  %i.ym = fmul double %i.yj, %i.yl
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1154
  store double %i.ym, ptr %i.yn, align 8, !tbaa !10
  %indvars.iv.next1155 = add nuw nsw i64 %indvars.iv1154, 1 ; 2 uses
  %exitcond1159.not = icmp eq i64 %indvars.iv.next1155, %i.dr
  br i1 %exitcond1159.not, label %._crit_edge971, label %.lr.ph970, !llvm.loop !58

._crit_edge971:                                   ; preds = %.lr.ph970, %middle.block1604, %bb.cd
  %.sink = phi ptr [ %1, %bb.cd ], [ %i.br, %middle.block1604 ], [ %i.br, %.lr.ph970 ]
  %i.yo = tail call noundef double @_Z8lm_enormiPKd(i32 noundef %0, ptr noundef %.sink) ; 7 uses
  %i.yp = tail call double @llvm.fabs.f64(double %i.yo)
  %i.yq = fcmp ueq double %i.yp, +inf
  br i1 %i.yq, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge971
  %i.yr = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not676 = icmp eq i32 %i.yr, 0
  br i1 %.not676, label %.thread.sink.split, label %.thread.sink.split.sink.split

bb.cf:                                            ; preds = %._crit_edge971
  %i.ys = fcmp une double %i.yo, 0.000000e+00
  %i.yt = load double, ptr %i.am, align 8, !tbaa !144 ; 2 uses
  %i.yu = fmul double %i.yo, %i.yt
  %.1596 = select i1 %i.ys, double %i.yu, double %i.yt ; 2 uses
  %i.yv = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.yw = and i32 %i.yv, 2
  %.not678 = icmp eq i32 %i.yw, 0
  br i1 %.not678, label %.loopexit868, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %fwrite679 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 101, i64 1, ptr %i.p) ; 0 uses
  br i1 %i.di, label %.lr.ph974, label %._crit_edge975

.lr.ph974:                                        ; preds = %bb.cg, %.lr.ph974
  %.9630972 = phi i32 [ %i.yy, %.lr.ph974 ], [ 0, %bb.cg ] ; 2 uses
  %i.yx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.45, i32 noundef %.9630972) #11 ; 0 uses
  %i.yy = add nuw nsw i32 %.9630972, 1            ; 2 uses
  %exitcond1160.not = icmp eq i32 %i.yy, %i.l
  br i1 %exitcond1160.not, label %._crit_edge975, label %.lr.ph974, !llvm.loop !59

._crit_edge975:                                   ; preds = %.lr.ph974, %bb.cg
  %fputc = tail call i32 @fputc(i32 10, ptr %i.p) ; 0 uses
  br label %.loopexit868

bb.ch:                                            ; preds = %bb.cc
  br i1 %.not675, label %.loopexit868, label %.lr.ph966.preheader

.lr.ph966.preheader:                              ; preds = %bb.ch
  br i1 %min.iters.check1620, label %.lr.ph966.preheader1774, label %vector.body1623

vector.body1623:                                  ; preds = %.lr.ph966.preheader, %vector.body1623
  %index1624 = phi i64 [ %index.next1629, %vector.body1623 ], [ 0, %.lr.ph966.preheader ] ; 3 uses
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1624 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16 ; 2 uses
  %wide.load1625 = load <2 x double>, ptr %i.yz, align 8, !tbaa !10 ; 2 uses
  %wide.load1626 = load <2 x double>, ptr %i.za, align 8, !tbaa !10 ; 2 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index1624 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %wide.load1627 = load <2 x double>, ptr %i.zb, align 8, !tbaa !10 ; 2 uses
  %wide.load1628 = load <2 x double>, ptr %i.zc, align 8, !tbaa !10 ; 2 uses
  %i.zd = fcmp oge <2 x double> %wide.load1625, %wide.load1627
  %i.ze = fcmp oge <2 x double> %wide.load1626, %wide.load1628
  %i.zf = select <2 x i1> %i.zd, <2 x double> %wide.load1625, <2 x double> %wide.load1627
  %i.zg = select <2 x i1> %i.ze, <2 x double> %wide.load1626, <2 x double> %wide.load1628
  store <2 x double> %i.zf, ptr %i.yz, align 8, !tbaa !10
  store <2 x double> %i.zg, ptr %i.za, align 8, !tbaa !10
  %index.next1629 = add nuw i64 %index1624, 4     ; 2 uses
  %i.zh = icmp eq i64 %index.next1629, %n.vec1622
  br i1 %i.zh, label %middle.block1630, label %vector.body1623, !llvm.loop !60

middle.block1630:                                 ; preds = %vector.body1623
  br i1 %cmp.n1631, label %.loopexit868, label %.lr.ph966.preheader1774

.lr.ph966.preheader1774:                          ; preds = %.lr.ph966.preheader, %middle.block1630
  %indvars.iv1142.ph = phi i64 [ 0, %.lr.ph966.preheader ], [ %n.vec1622, %middle.block1630 ]
  br label %.lr.ph966

.lr.ph966:                                        ; preds = %.lr.ph966.preheader1774, %.lr.ph966
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %.lr.ph966 ], [ %indvars.iv1142.ph, %.lr.ph966.preheader1774 ] ; 3 uses
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv1142 ; 2 uses
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !10 ; 2 uses
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv1142
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !10 ; 2 uses
  %.inv846 = fcmp oge double %i.zj, %i.zl
  %.709 = select i1 %.inv846, double %i.zj, double %i.zl
  store double %.709, ptr %i.zi, align 8, !tbaa !10
  %indvars.iv.next1143 = add nuw nsw i64 %indvars.iv1142, 1 ; 2 uses
  %exitcond1147.not = icmp eq i64 %indvars.iv.next1143, %i.dr
  br i1 %exitcond1147.not, label %.loopexit868, label %.lr.ph966, !llvm.loop !61

.loopexit868:                                     ; preds = %.lr.ph966, %middle.block1630, %bb.ch, %bb.cf, %._crit_edge975
  %.2597 = phi double [ %.1596, %bb.cf ], [ %.0595, %bb.ch ], [ %.1596, %._crit_edge975 ], [ %.0595, %middle.block1630 ], [ %.0595, %.lr.ph966 ]
  %.2 = phi double [ %i.yo, %bb.cf ], [ %.0594, %bb.ch ], [ %i.yo, %._crit_edge975 ], [ %.0594, %middle.block1630 ], [ %.0594, %.lr.ph966 ]
  %i.zm = fcmp ole double %.1607, f0x3CB0000000000000
  br label %bb.ci

bb.ci:                                            ; preds = %bb.jm, %.loopexit868
  %.1836 = phi double [ %.0835, %.loopexit868 ], [ %.2837, %bb.jm ] ; 2 uses
  %.1609 = phi double [ %.0608, %.loopexit868 ], [ %.2610, %bb.jm ] ; 7 uses
  %.3598 = phi double [ %.2597, %.loopexit868 ], [ %.5600, %bb.jm ] ; 10 uses
  %.3 = phi double [ %.2, %.loopexit868 ], [ %.4, %bb.jm ] ; 6 uses
  %.0 = phi i32 [ 0, %.loopexit868 ], [ %i.bmy, %bb.jm ] ; 3 uses
  br label %bb.cj

.preheader372.i:                                  ; preds = %bb.cl
  %.not396.i = icmp eq i32 %.1258.i, 0
  br i1 %.not396.i, label %.preheader370.i.preheader, label %.lr.ph378.preheader.i

.preheader370.i.preheader:                        ; preds = %.loopexit371.i, %.lr.ph378.preheader.i, %.preheader372.i
  br i1 %i.ge, label %.preheader370.i.epil.preheader, label %.preheader370.i

.lr.ph378.preheader.i:                            ; preds = %.preheader372.i
  %i.zn = zext nneg i32 %.1258.i to i64           ; 2 uses
  %indvars.iv.next413.i976 = add nsw i64 %i.zn, -1 ; 3 uses
  %indvars415.i977 = trunc nuw nsw i64 %indvars.iv.next413.i976 to i32
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next413.i976 ; 2 uses
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !10
  %i.zq = mul nuw i32 %i.dh, %indvars415.i977
  %i.zr = zext nneg i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.zr
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !10
  %i.zu = fdiv double %i.zp, %i.zt                ; 2 uses
  store double %i.zu, ptr %i.zo, align 8, !tbaa !10
  %.not = icmp eq i32 %.1258.i, 1
  br i1 %.not, label %.preheader370.i.preheader, label %.lr.ph.preheader.i742.preheader

.lr.ph.preheader.i742.preheader:                  ; preds = %.lr.ph378.preheader.i
  %i.zv = add i32 %.1258.i, -1
  %i.zw = zext i32 %i.zv to i64                   ; 3 uses
  %i.zx = shl nuw nsw i64 %i.zw, 3                ; 2 uses
  %i.zy = add nuw nsw i64 %i.et, %i.zx
  %i.zz = mul i64 %i.ev, %i.zn
  %i.aaa = getelementptr i8, ptr %i.gd, i64 %i.zz
  %i.aab = getelementptr i8, ptr %i.aaa, i64 %i.zx
  br label %.lr.ph.preheader.i742

bb.cj:                                            ; preds = %bb.cl, %bb.ci
  %indvars.iv.i718 = phi i64 [ 0, %bb.ci ], [ %indvars.iv.next.i719, %bb.cl ] ; 4 uses
  %.0257374.i = phi i32 [ %0, %bb.ci ], [ %.1258.i, %bb.cl ] ; 2 uses
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i718
  %i.aad = load double, ptr %i.aac, align 8, !tbaa !10
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i718 ; 2 uses
  store double %i.aad, ptr %i.aae, align 8, !tbaa !10
  %i.aaf = trunc nuw nsw i64 %indvars.iv.i718 to i32 ; 2 uses
  %i.aag = mul i32 %i.dh, %i.aaf
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.aah
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !10
  %i.aak = fcmp oeq double %i.aaj, 0.000000e+00
  %i.aal = icmp eq i32 %.0257374.i, %0
  %or.cond279.i = and i1 %i.aal, %i.aak
  %.1258.i = select i1 %or.cond279.i, i32 %i.aaf, i32 %.0257374.i ; 6 uses
  %i.aam = icmp samesign ult i32 %.1258.i, %0     ; 2 uses
  br i1 %i.aam, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store double 0.000000e+00, ptr %i.aae, align 8, !tbaa !10
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %indvars.iv.next.i719 = add nuw nsw i64 %indvars.iv.i718, 1 ; 2 uses
  %exitcond.not.i720 = icmp eq i64 %indvars.iv.next.i719, %i.bc
  br i1 %exitcond.not.i720, label %.preheader372.i, label %bb.cj, !llvm.loop !62

.loopexit371.i:                                   ; preds = %.lr.ph.i744.prol.loopexit, %.lr.ph.i744, %middle.block1590
  %indvars.iv.next410.i = add nsw i64 %indvars.iv409.i978, -1
  %indvars.iv.next413.i = add nsw i64 %indvars.iv.next413.i979, -1 ; 3 uses
  %indvars415.i = trunc i64 %indvars.iv.next413.i to i32
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next413.i ; 2 uses
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !10
  %i.aap = mul nuw i32 %i.dh, %indvars415.i
  %i.aaq = zext nneg i32 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.aaq
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !10
  %i.aat = fdiv double %i.aao, %i.aas             ; 2 uses
  store double %i.aat, ptr %i.aan, align 8, !tbaa !10
  %i.aau = icmp samesign ugt i64 %indvars.iv.next413.i979, 1
  %indvar.next1571 = add i64 %indvar1570, 1
  br i1 %i.aau, label %.lr.ph.preheader.i742, label %.preheader370.i.preheader, !llvm.loop !63

.lr.ph.preheader.i742:                            ; preds = %.lr.ph.preheader.i742.preheader, %.loopexit371.i
  %indvar1570 = phi i64 [ 0, %.lr.ph.preheader.i742.preheader ], [ %indvar.next1571, %.loopexit371.i ] ; 4 uses
  %i.aav = phi double [ %i.zu, %.lr.ph.preheader.i742.preheader ], [ %i.aat, %.loopexit371.i ] ; 4 uses
  %indvars.iv.next413.i979 = phi i64 [ %indvars.iv.next413.i976, %.lr.ph.preheader.i742.preheader ], [ %indvars.iv.next413.i, %.loopexit371.i ] ; 3 uses
  %indvars.iv409.i978 = phi i64 [ %i.zw, %.lr.ph.preheader.i742.preheader ], [ %indvars.iv.next410.i, %.loopexit371.i ] ; 6 uses
  %i.aaw = xor i64 %indvar1570, -1
  %i.aax = add i64 %i.aaw, %i.zw
  %i.aay = mul nuw nsw i64 %indvars.iv.next413.i979, %i.bh
  %invariant.gep.i743 = getelementptr [8 x i8], ptr %i.bm, i64 %i.aay ; 5 uses
  %min.iters.check1578 = icmp ult i64 %indvars.iv409.i978, 4
  br i1 %min.iters.check1578, label %.lr.ph.i744.preheader, label %vector.memcheck1569

vector.memcheck1569:                              ; preds = %.lr.ph.preheader.i742
  %i.aaz = mul i64 %i.ew, %indvar1570
  %scevgep1573 = getelementptr i8, ptr %i.aab, i64 %i.aaz
  %i.aba = shl i64 %indvar1570, 3
  %i.abb = sub i64 %i.zy, %i.aba
  %scevgep1572 = getelementptr i8, ptr %i.bf, i64 %i.abb
  %bound01574 = icmp ult ptr %i.bs, %scevgep1573
  %bound11575 = icmp ult ptr %invariant.gep.i743, %scevgep1572
  %found.conflict1576 = and i1 %bound01574, %bound11575
  br i1 %found.conflict1576, label %.lr.ph.i744.preheader, label %vector.ph1579

vector.ph1579:                                    ; preds = %vector.memcheck1569
  %n.vec1580 = and i64 %indvars.iv409.i978, -4    ; 3 uses
  %broadcast.splatinsert1581 = insertelement <2 x double> poison, double %i.aav, i64 0
  %broadcast.splat1582 = shufflevector <2 x double> %broadcast.splatinsert1581, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1583

vector.body1583:                                  ; preds = %vector.body1583, %vector.ph1579
  %index1584 = phi i64 [ 0, %vector.ph1579 ], [ %index.next1589, %vector.body1583 ] ; 3 uses
  %i.abc = getelementptr [8 x i8], ptr %invariant.gep.i743, i64 %index1584 ; 2 uses
  %i.abd = getelementptr i8, ptr %i.abc, i64 16
  %wide.load1585 = load <2 x double>, ptr %i.abc, align 8, !tbaa !10, !alias.scope !157
  %wide.load1586 = load <2 x double>, ptr %i.abd, align 8, !tbaa !10, !alias.scope !157
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1584 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16 ; 2 uses
  %wide.load1587 = load <2 x double>, ptr %i.abe, align 8, !tbaa !10, !alias.scope !158, !noalias !157
  %wide.load1588 = load <2 x double>, ptr %i.abf, align 8, !tbaa !10, !alias.scope !158, !noalias !157
  %i.abg = fneg <2 x double> %wide.load1585
  %i.abh = fneg <2 x double> %wide.load1586
  %i.abi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abg, <2 x double> %broadcast.splat1582, <2 x double> %wide.load1587)
  %i.abj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abh, <2 x double> %broadcast.splat1582, <2 x double> %wide.load1588)
  store <2 x double> %i.abi, ptr %i.abe, align 8, !tbaa !10, !alias.scope !158, !noalias !157
  store <2 x double> %i.abj, ptr %i.abf, align 8, !tbaa !10, !alias.scope !158, !noalias !157
  %index.next1589 = add nuw i64 %index1584, 4     ; 2 uses
  %i.abk = icmp eq i64 %index.next1589, %n.vec1580
  br i1 %i.abk, label %middle.block1590, label %vector.body1583, !llvm.loop !67

middle.block1590:                                 ; preds = %vector.body1583
  %cmp.n1591 = icmp eq i64 %indvars.iv409.i978, %n.vec1580
  br i1 %cmp.n1591, label %.loopexit371.i, label %.lr.ph.i744.preheader

.lr.ph.i744.preheader:                            ; preds = %vector.memcheck1569, %.lr.ph.preheader.i742, %middle.block1590
  %indvars.iv401.i.ph = phi i64 [ 0, %vector.memcheck1569 ], [ 0, %.lr.ph.preheader.i742 ], [ %n.vec1580, %middle.block1590 ] ; 5 uses
  %xtraiter1827 = and i64 %indvars.iv409.i978, 1
  %lcmp.mod1828.not = icmp eq i64 %xtraiter1827, 0
  br i1 %lcmp.mod1828.not, label %.lr.ph.i744.prol.loopexit, label %.lr.ph.i744.prol

.lr.ph.i744.prol:                                 ; preds = %.lr.ph.i744.preheader
  %gep.i745.prol = getelementptr [8 x i8], ptr %invariant.gep.i743, i64 %indvars.iv401.i.ph
  %i.abl = load double, ptr %gep.i745.prol, align 8, !tbaa !10
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv401.i.ph ; 2 uses
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !10
  %i.abo = fneg double %i.abl
  %i.abp = tail call double @llvm.fmuladd.f64(double %i.abo, double %i.aav, double %i.abn)
  store double %i.abp, ptr %i.abm, align 8, !tbaa !10
  %indvars.iv.next402.i.prol = or disjoint i64 %indvars.iv401.i.ph, 1
  br label %.lr.ph.i744.prol.loopexit

.lr.ph.i744.prol.loopexit:                        ; preds = %.lr.ph.i744.prol, %.lr.ph.i744.preheader
  %indvars.iv401.i.unr = phi i64 [ %indvars.iv401.i.ph, %.lr.ph.i744.preheader ], [ %indvars.iv.next402.i.prol, %.lr.ph.i744.prol ]
  %i.abq = icmp eq i64 %i.aax, %indvars.iv401.i.ph
  br i1 %i.abq, label %.loopexit371.i, label %.lr.ph.i744

.lr.ph.i744:                                      ; preds = %.lr.ph.i744.prol.loopexit, %.lr.ph.i744
  %indvars.iv401.i = phi i64 [ %indvars.iv.next402.i.1, %.lr.ph.i744 ], [ %indvars.iv401.i.unr, %.lr.ph.i744.prol.loopexit ] ; 4 uses
  %gep.i745 = getelementptr [8 x i8], ptr %invariant.gep.i743, i64 %indvars.iv401.i
  %i.abr = load double, ptr %gep.i745, align 8, !tbaa !10
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv401.i ; 2 uses
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !10
  %i.abu = fneg double %i.abr
  %i.abv = tail call double @llvm.fmuladd.f64(double %i.abu, double %i.aav, double %i.abt)
  store double %i.abv, ptr %i.abs, align 8, !tbaa !10
  %indvars.iv.next402.i = add nuw nsw i64 %indvars.iv401.i, 1 ; 2 uses
  %gep.i745.1 = getelementptr [8 x i8], ptr %invariant.gep.i743, i64 %indvars.iv.next402.i
  %i.abw = load double, ptr %gep.i745.1, align 8, !tbaa !10
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next402.i ; 2 uses
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !10
  %i.abz = fneg double %i.abw
  %i.aca = tail call double @llvm.fmuladd.f64(double %i.abz, double %i.aav, double %i.aby)
  store double %i.aca, ptr %i.abx, align 8, !tbaa !10
  %indvars.iv.next402.i.1 = add nuw nsw i64 %indvars.iv401.i, 2 ; 2 uses
  %exitcond408.not.i.1 = icmp eq i64 %indvars.iv.next402.i.1, %indvars.iv409.i978
  br i1 %exitcond408.not.i.1, label %.loopexit371.i, label %.lr.ph.i744, !llvm.loop !68

.preheader370.i:                                  ; preds = %.preheader370.i.preheader, %.preheader370.i
  %indvars.iv417.i = phi i64 [ %indvars.iv.next418.i.3, %.preheader370.i ], [ 0, %.preheader370.i.preheader ] ; 6 uses
  %niter1835 = phi i64 [ %niter1835.next.3, %.preheader370.i ], [ 0, %.preheader370.i.preheader ]
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv417.i
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !10
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv417.i
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !149
  %i.acf = sext i32 %i.ace to i64
  %i.acg = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.acf
  store double %i.acc, ptr %i.acg, align 8, !tbaa !10
  %indvars.iv.next418.i = or disjoint i64 %indvars.iv417.i, 1 ; 2 uses
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next418.i
end_hunk_1
begin_hunk_2_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a
  br label %_Z8lm_enormiPKd.exit317.i

.thread.i299.i:                                   ; preds = %bb.eh
  %i.alv = tail call double @sqrt(double noundef %.163.i311.i) #11
  %i.alw = fmul double %.1.i313.i, %i.alv
  br label %_Z8lm_enormiPKd.exit317.i

_Z8lm_enormiPKd.exit317.i:                        ; preds = %.thread.i299.i, %bb.ek, %bb.ej, %bb.eg
  %.069.i300.i = phi double [ %i.alj, %bb.eg ], [ %i.alq, %bb.ej ], [ %i.alu, %bb.ek ], [ %i.alw, %.thread.i299.i ] ; 2 uses
  %i.alx = fdiv double %.069.i300.i, %.3598       ; 2 uses
  %i.aly = fcmp oeq double %i.alx, 0.000000e+00
  br i1 %i.aly, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_Z8lm_enormiPKd.exit317.i
  %i.alz = fcmp ole double %.3598, 1.000000e-01
  %i.ama = select i1 %i.alz, double %.3598, double 1.000000e-01
  %i.amb = fdiv double f0x0010000000000000, %i.ama
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_Z8lm_enormiPKd.exit317.i
  %.0251.i = phi double [ %i.amb, %bb.el ], [ %i.alx, %_Z8lm_enormiPKd.exit317.i ] ; 3 uses
  %.inv.i = fcmp oge double %.1836, %.0253.i
  %.0253..i = select i1 %.inv.i, double %.1836, double %.0253.i ; 2 uses
  %.inv360.i = fcmp ole double %.0253..i, %.0251.i
  %i.amc = select i1 %.inv360.i, double %.0253..i, double %.0251.i ; 2 uses
  %i.amd = fcmp oeq double %i.amc, 0.000000e+00
  %i.ame = fdiv double %.069.i300.i, %.069.i.i738
  %storemerge.i = select i1 %i.amd, double %i.ame, double %i.amc
  br label %bb.en

bb.en:                                            ; preds = %bb.gj, %bb.em
  %.4839 = phi double [ %storemerge.i, %bb.em ], [ %..2255.i, %bb.gj ] ; 2 uses
  %.0262.i = phi i32 [ 0, %bb.em ], [ %i.bas, %bb.gj ] ; 3 uses
  %.0256.i = phi double [ %i.afg, %bb.em ], [ %i.avz, %bb.gj ] ; 2 uses
  %.1254.i = phi double [ %.0253.i, %bb.em ], [ %.2255.i, %bb.gj ] ; 5 uses
  %.1252.i = phi double [ %.0251.i, %bb.em ], [ %.2.i, %bb.gj ] ; 5 uses
  %i.amf = fcmp oeq double %.4839, 0.000000e+00
  br i1 %i.amf, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.amg = fmul double %.1252.i, 1.000000e-03     ; 2 uses
  %i.amh = fcmp ole double %i.amg, f0x0010000000000000
  %i.ami = select i1 %i.amh, double f0x0010000000000000, double %i.amg
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.amj = phi double [ %i.ami, %bb.eo ], [ %.4839, %bb.en ] ; 9 uses
  %i.amk = tail call double @sqrt(double noundef %i.amj) #11 ; 2 uses
  br i1 %min.iters.check1542, label %scalar.ph1541.preheader, label %vector.ph1543

vector.ph1543:                                    ; preds = %bb.ep
  %broadcast.splatinsert1545 = insertelement <2 x double> poison, double %i.amk, i64 0
  %broadcast.splat1546 = shufflevector <2 x double> %broadcast.splatinsert1545, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1547

vector.body1547:                                  ; preds = %vector.body1547, %vector.ph1543
  %index1548 = phi i64 [ 0, %vector.ph1543 ], [ %index.next1551, %vector.body1547 ] ; 3 uses
  %i.aml = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1548 ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  %wide.load1549 = load <2 x double>, ptr %i.aml, align 8, !tbaa !10
  %wide.load1550 = load <2 x double>, ptr %i.amm, align 8, !tbaa !10
  %i.amn = fmul <2 x double> %broadcast.splat1546, %wide.load1549
  %i.amo = fmul <2 x double> %broadcast.splat1546, %wide.load1550
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1548 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 16
  store <2 x double> %i.amn, ptr %i.amp, align 8, !tbaa !10
  store <2 x double> %i.amo, ptr %i.amq, align 8, !tbaa !10
  %index.next1551 = add nuw i64 %index1548, 4     ; 2 uses
  %i.amr = icmp eq i64 %index.next1551, %n.vec1544
  br i1 %i.amr, label %middle.block1552, label %vector.body1547, !llvm.loop !80

middle.block1552:                                 ; preds = %vector.body1547
  br i1 %cmp.n1553, label %.preheader196.i.i.preheader, label %scalar.ph1541.preheader

scalar.ph1541.preheader:                          ; preds = %bb.ep, %middle.block1552
  %indvars.iv458.i.ph = phi i64 [ 0, %bb.ep ], [ %n.vec1544, %middle.block1552 ]
  br label %scalar.ph1541

scalar.ph1541:                                    ; preds = %scalar.ph1541.preheader, %scalar.ph1541
  %indvars.iv458.i = phi i64 [ %indvars.iv.next459.i, %scalar.ph1541 ], [ %indvars.iv458.i.ph, %scalar.ph1541.preheader ] ; 3 uses
  %i.ams = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv458.i
  %i.amt = load double, ptr %i.ams, align 8, !tbaa !10
  %i.amu = fmul double %i.amk, %i.amt
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv458.i
  store double %i.amu, ptr %i.amv, align 8, !tbaa !10
  %indvars.iv.next459.i = add nuw nsw i64 %indvars.iv458.i, 1 ; 2 uses
  %exitcond462.not.i = icmp eq i64 %indvars.iv.next459.i, %i.bc
  br i1 %exitcond462.not.i, label %.preheader196.i.i.preheader, label %scalar.ph1541, !llvm.loop !81

.preheader196.i.i.preheader:                      ; preds = %scalar.ph1541, %middle.block1552
  br label %.preheader196.i.i

.preheader196.i.i:                                ; preds = %.preheader196.i.i.preheader, %.loopexit1759
  %indvars.iv.i318.i = phi i64 [ %indvars.iv.next.i320.i, %.loopexit1759 ], [ 0, %.preheader196.i.i.preheader ] ; 11 uses
  %i.amw = mul nuw nsw i64 %indvars.iv.i318.i, %i.bh
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i318.i ; 6 uses
  %invariant.gep269.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.amw ; 6 uses
  %i.amx = sub nsw i64 %i.bc, %indvars.iv.i318.i  ; 3 uses
  %min.iters.check1530 = icmp ugt i64 %i.amx, 3
  %or.cond1761 = and i1 %min.iters.check1530, %ident.check.not
  br i1 %or.cond1761, label %vector.ph1531, label %scalar.ph1529.preheader

vector.ph1531:                                    ; preds = %.preheader196.i.i
  %n.vec1532 = and i64 %i.amx, -4                 ; 3 uses
  %i.amy = add i64 %indvars.iv.i318.i, %n.vec1532
  br label %vector.body1533

vector.body1533:                                  ; preds = %vector.body1533, %vector.ph1531
  %index1534 = phi i64 [ 0, %vector.ph1531 ], [ %index.next1537, %vector.body1533 ] ; 2 uses
  %i.amz = add nuw i64 %indvars.iv.i318.i, %index1534 ; 2 uses
  %i.ana = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.amz ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %wide.load1535 = load <2 x double>, ptr %i.ana, align 8, !tbaa !10
  %wide.load1536 = load <2 x double>, ptr %i.anb, align 8, !tbaa !10
  %i.anc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %i.amz ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 16
  store <2 x double> %wide.load1535, ptr %i.anc, align 8, !tbaa !10
  store <2 x double> %wide.load1536, ptr %i.and, align 8, !tbaa !10
  %index.next1537 = add nuw i64 %index1534, 4     ; 2 uses
  %i.ane = icmp eq i64 %index.next1537, %n.vec1532
  br i1 %i.ane, label %middle.block1538, label %vector.body1533, !llvm.loop !82

middle.block1538:                                 ; preds = %vector.body1533
  %cmp.n1539 = icmp eq i64 %i.amx, %n.vec1532
  br i1 %cmp.n1539, label %.loopexit1759, label %scalar.ph1529.preheader

scalar.ph1529.preheader:                          ; preds = %.preheader196.i.i, %middle.block1538
  %indvars.iv220.i.i.ph = phi i64 [ %indvars.iv.i318.i, %.preheader196.i.i ], [ %i.amy, %middle.block1538 ] ; 4 uses
  %i.anf = sub i64 %i.bc, %indvars.iv220.i.i.ph
  %xtraiter1860 = and i64 %i.anf, 3               ; 2 uses
  %lcmp.mod1861.not = icmp eq i64 %xtraiter1860, 0
  br i1 %lcmp.mod1861.not, label %scalar.ph1529.prol.loopexit, label %scalar.ph1529.prol

scalar.ph1529.prol:                               ; preds = %scalar.ph1529.preheader, %scalar.ph1529.prol
  %indvars.iv220.i.i.prol = phi i64 [ %indvars.iv.next221.i.i.prol, %scalar.ph1529.prol ], [ %indvars.iv220.i.i.ph, %scalar.ph1529.preheader ] ; 3 uses
  %prol.iter1862 = phi i64 [ %prol.iter1862.next, %scalar.ph1529.prol ], [ 0, %scalar.ph1529.preheader ]
  %i.ang = mul nuw nsw i64 %indvars.iv220.i.i.prol, %i.bh
  %gep.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.ang
  %i.anh = load double, ptr %gep.i.i.prol, align 8, !tbaa !10
  %gep270.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv220.i.i.prol
  store double %i.anh, ptr %gep270.i.i.prol, align 8, !tbaa !10
  %indvars.iv.next221.i.i.prol = add nuw nsw i64 %indvars.iv220.i.i.prol, 1 ; 2 uses
  %prol.iter1862.next = add i64 %prol.iter1862, 1 ; 2 uses
  %prol.iter1862.cmp.not = icmp eq i64 %prol.iter1862.next, %xtraiter1860
  br i1 %prol.iter1862.cmp.not, label %scalar.ph1529.prol.loopexit, label %scalar.ph1529.prol, !llvm.loop !83

scalar.ph1529.prol.loopexit:                      ; preds = %scalar.ph1529.prol, %scalar.ph1529.preheader
  %indvars.iv220.i.i.unr = phi i64 [ %indvars.iv220.i.i.ph, %scalar.ph1529.preheader ], [ %indvars.iv.next221.i.i.prol, %scalar.ph1529.prol ]
  %i.ani = sub i64 %indvars.iv220.i.i.ph, %i.bc
  %i.anj = icmp ugt i64 %i.ani, -4
  br i1 %i.anj, label %.loopexit1759, label %scalar.ph1529

scalar.ph1529:                                    ; preds = %scalar.ph1529.prol.loopexit, %scalar.ph1529
  %indvars.iv220.i.i = phi i64 [ %indvars.iv.next221.i.i.3, %scalar.ph1529 ], [ %indvars.iv220.i.i.unr, %scalar.ph1529.prol.loopexit ] ; 6 uses
  %i.ank = mul nuw nsw i64 %indvars.iv220.i.i, %i.bh
  %gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.ank
  %i.anl = load double, ptr %gep.i.i, align 8, !tbaa !10
  %gep270.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv220.i.i
  store double %i.anl, ptr %gep270.i.i, align 8, !tbaa !10
  %indvars.iv.next221.i.i = add nuw nsw i64 %indvars.iv220.i.i, 1 ; 2 uses
  %i.anm = mul nuw nsw i64 %indvars.iv.next221.i.i, %i.bh
  %gep.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.anm
  %i.ann = load double, ptr %gep.i.i.1, align 8, !tbaa !10
  %gep270.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv.next221.i.i
  store double %i.ann, ptr %gep270.i.i.1, align 8, !tbaa !10
  %indvars.iv.next221.i.i.1 = add nuw nsw i64 %indvars.iv220.i.i, 2 ; 2 uses
  %i.ano = mul nuw nsw i64 %indvars.iv.next221.i.i.1, %i.bh
  %gep.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.ano
  %i.anp = load double, ptr %gep.i.i.2, align 8, !tbaa !10
  %gep270.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv.next221.i.i.1
  store double %i.anp, ptr %gep270.i.i.2, align 8, !tbaa !10
  %indvars.iv.next221.i.i.2 = add nuw nsw i64 %indvars.iv220.i.i, 3 ; 2 uses
  %i.anq = mul nuw nsw i64 %indvars.iv.next221.i.i.2, %i.bh
  %gep.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.anq
  %i.anr = load double, ptr %gep.i.i.3, align 8, !tbaa !10
  %gep270.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv.next221.i.i.2
  store double %i.anr, ptr %gep270.i.i.3, align 8, !tbaa !10
  %indvars.iv.next221.i.i.3 = add nuw nsw i64 %indvars.iv220.i.i, 4 ; 2 uses
  %exitcond.not.i319.i.3 = icmp eq i64 %indvars.iv.next221.i.i.3, %i.bc
  br i1 %exitcond.not.i319.i.3, label %.loopexit1759, label %scalar.ph1529, !llvm.loop !84

.loopexit1759:                                    ; preds = %scalar.ph1529.prol.loopexit, %scalar.ph1529, %middle.block1538
  %i.ans = trunc nuw nsw i64 %indvars.iv.i318.i to i32
  %i.ant = mul i32 %i.dh, %i.ans
  %i.anu = sext i32 %i.ant to i64
  %i.anv = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.anu
  %i.anw = load double, ptr %i.anv, align 8, !tbaa !10
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i318.i
  store double %i.anw, ptr %i.anx, align 8, !tbaa !10
  %i.any = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i318.i
  %i.anz = load double, ptr %i.any, align 8, !tbaa !10
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i318.i
  store double %i.anz, ptr %i.aoa, align 8, !tbaa !10
  %indvars.iv.next.i320.i = add nuw nsw i64 %indvars.iv.i318.i, 1 ; 2 uses
  %exitcond225.not.i.i = icmp eq i64 %indvars.iv.next.i320.i, %i.bc
  br i1 %exitcond225.not.i.i, label %.preheader195.i.i, label %.preheader196.i.i, !llvm.loop !85

.preheader195.i.i:                                ; preds = %.loopexit1759, %.loopexit193.i.i
  %indvars.iv229.i.i = phi i64 [ %indvars.iv.next230.i.i, %.loopexit193.i.i ], [ 1, %.loopexit1759 ] ; 2 uses
  %indvar.i.i = phi i64 [ %indvar.next.i.i, %.loopexit193.i.i ], [ 0, %.loopexit1759 ] ; 12 uses
  %12 = xor i64 %indvar.i.i, -1
  %13 = add nsw i64 %12, %i.bc
  %i.aob = mul i64 %i.en, %indvar.i.i
  %i.aoc = mul i64 %i.eo, %indvar.i.i
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvar.i.i
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !149
  %i.aof = sext i32 %i.aoe to i64
  %i.aog = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.aof ; 2 uses
  %i.aoh = load double, ptr %i.aog, align 8, !tbaa !10
  %i.aoi = fcmp oeq double %i.aoh, 0.000000e+00
  %.pre486.i = trunc i64 %indvar.i.i to i32       ; 2 uses
  br i1 %i.aoi, label %.loopexit193.i.i, label %.lr.ph207.preheader.i.i

.lr.ph207.preheader.i.i:                          ; preds = %.preheader195.i.i
  %i.aoj = xor i32 %.pre486.i, -1
  %i.aok = add i32 %0, %i.aoj
  %i.aol = zext i32 %i.aok to i64
  %i.aom = shl nuw nsw i64 %i.aol, 3
  %i.aon = add nuw nsw i64 %i.aom, 8
  %i.aoo = shl nuw nsw i64 %indvar.i.i, 3
  %scevgep.i.i = getelementptr i8, ptr %i.bq, i64 %i.aoo
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.aon, i1 false), !tbaa !10
  %.pre.i.i = load double, ptr %i.aog, align 8, !tbaa !10
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvar.i.i
  store double %.pre.i.i, ptr %i.aop, align 8, !tbaa !10
  %i.aoq = getelementptr i8, ptr %i.gi, i64 %i.aob
  %i.aor = getelementptr i8, ptr %i.gk, i64 %i.aoc
  br label %.lr.ph207.i.i

.lr.ph207.i.i:                                    ; preds = %.loopexit.i.i, %.lr.ph207.preheader.i.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i.i ], [ 0, %.lr.ph207.preheader.i.i ] ; 5 uses
  %indvars.iv238.i.i = phi i64 [ %indvars.iv.next239.pre-phi.i.i, %.loopexit.i.i ], [ %indvar.i.i, %.lr.ph207.preheader.i.i ] ; 7 uses
  %indvars.iv231.i.i = phi i64 [ %indvars.iv.next232.i.i, %.loopexit.i.i ], [ %indvars.iv229.i.i, %.lr.ph207.preheader.i.i ] ; 6 uses
  %.0174205.i.i = phi double [ %.1.i321.i, %.loopexit.i.i ], [ 0.000000e+00, %.lr.ph207.preheader.i.i ] ; 3 uses
  %14 = sub i64 %13, %indvar                      ; 3 uses
  %i.aos = add i64 %indvar.i.i, %indvar
  %i.aot = shl i64 %i.aos, 3
  %gep1928 = getelementptr i8, ptr %invariant.gep1927, i64 %i.aot
  %scevgep1505 = getelementptr i8, ptr %gep1928, i64 8
  %i.aou = mul i64 %i.en, %indvar
  %scevgep1506 = getelementptr i8, ptr %i.aoq, i64 %i.aou
  %i.aov = mul i64 %i.ep, %indvar
  %scevgep1507 = getelementptr i8, ptr %i.aor, i64 %i.aov
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv238.i.i
  %i.aox = load double, ptr %i.aow, align 8, !tbaa !10 ; 5 uses
  %i.aoy = fcmp oeq double %i.aox, 0.000000e+00
  br i1 %i.aoy, label %.lr.ph207..loopexit_crit_edge.i.i, label %bb.eq

.lr.ph207..loopexit_crit_edge.i.i:                ; preds = %.lr.ph207.i.i
  %.pre264.i.i = add nuw nsw i64 %indvars.iv238.i.i, 1
  br label %.loopexit.i.i

bb.eq:                                            ; preds = %.lr.ph207.i.i
  %indvars241.i.i = trunc i64 %indvars.iv238.i.i to i32
  %i.aoz = mul nuw nsw i64 %indvars.iv238.i.i, %i.bh
  %i.apa = mul nuw nsw i32 %4, %indvars241.i.i
  %i.apb = zext i32 %i.apa to i64
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv238.i.i
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.apc, i64 %i.apb ; 2 uses
  %i.ape = load double, ptr %i.apd, align 8, !tbaa !10 ; 4 uses
  %i.apf = tail call double @llvm.fabs.f64(double %i.ape)
  %i.apg = tail call double @llvm.fabs.f64(double %i.aox)
  %i.aph = fcmp olt double %i.apf, %i.apg
  br i1 %i.aph, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.api = fdiv double %i.ape, %i.aox             ; 3 uses
  %i.apj = tail call double @llvm.fmuladd.f64(double %i.api, double %i.api, double 1.000000e+00)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.apj)
  %i.apk = fdiv double 1.000000e+00, %sqrt.i.i    ; 2 uses
  %i.apl = fmul double %i.api, %i.apk
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  %i.apm = fdiv double %i.aox, %i.ape             ; 3 uses
  %i.apn = tail call double @llvm.fmuladd.f64(double %i.apm, double %i.apm, double 1.000000e+00)
  %sqrt189.i.i = tail call double @llvm.sqrt.f64(double %i.apn)
  %i.apo = fdiv double 1.000000e+00, %sqrt189.i.i ; 2 uses
  %i.app = fmul double %i.apm, %i.apo
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.0172.i.i = phi double [ %i.apk, %bb.er ], [ %i.app, %bb.es ] ; 5 uses
  %.0.i.i = phi double [ %i.apl, %bb.er ], [ %i.apo, %bb.es ] ; 6 uses
  %i.apq = fmul double %i.aox, %.0172.i.i
  %i.apr = tail call double @llvm.fmuladd.f64(double %.0.i.i, double %i.ape, double %i.apq)
  store double %i.apr, ptr %i.apd, align 8, !tbaa !10
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv238.i.i ; 2 uses
  %i.apt = load double, ptr %i.aps, align 8, !tbaa !10 ; 2 uses
  %i.apu = fmul double %.0174205.i.i, %.0172.i.i
  %i.apv = tail call double @llvm.fmuladd.f64(double %.0.i.i, double %i.apt, double %i.apu)
  %i.apw = fneg double %.0172.i.i                 ; 3 uses
  %i.apx = fmul double %.0174205.i.i, %.0.i.i
  %i.apy = tail call double @llvm.fmuladd.f64(double %i.apw, double %i.apt, double %i.apx) ; 3 uses
  store double %i.apv, ptr %i.aps, align 8, !tbaa !10
  %i.apz = add nuw nsw i64 %indvars.iv238.i.i, 1  ; 4 uses
  %i.aqa = icmp samesign ult i64 %i.apz, %i.bc
  br i1 %i.aqa, label %.lr.ph203.preheader.i.i, label %.loopexit.i.i

.lr.ph203.preheader.i.i:                          ; preds = %bb.et
  %invariant.gep271.i.i = getelementptr [8 x i8], ptr %i.bm, i64 %i.aoz ; 2 uses
  %min.iters.check1512 = icmp ult i64 %14, 2
  br i1 %min.iters.check1512, label %.lr.ph203.i.i.preheader, label %vector.memcheck1504

vector.memcheck1504:                              ; preds = %.lr.ph203.preheader.i.i
  %bound01508 = icmp ult ptr %scevgep1505, %scevgep1507
  %bound11509 = icmp ult ptr %scevgep1506, %i.br
  %found.conflict1510 = and i1 %bound01508, %bound11509
  br i1 %found.conflict1510, label %.lr.ph203.i.i.preheader, label %vector.ph1513

vector.ph1513:                                    ; preds = %vector.memcheck1504
  %n.vec1514 = and i64 %14, -2                    ; 3 uses
  %i.aqb = add i64 %indvars.iv231.i.i, %n.vec1514
  %broadcast.splatinsert1515 = insertelement <2 x double> poison, double %.0172.i.i, i64 0
  %broadcast.splat1516 = shufflevector <2 x double> %broadcast.splatinsert1515, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1517 = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %broadcast.splat1518 = shufflevector <2 x double> %broadcast.splatinsert1517, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1519 = insertelement <2 x double> poison, double %i.apw, i64 0
  %broadcast.splat1520 = shufflevector <2 x double> %broadcast.splatinsert1519, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1521

vector.body1521:                                  ; preds = %vector.body1521, %vector.ph1513
  %index1522 = phi i64 [ 0, %vector.ph1513 ], [ %index.next1525, %vector.body1521 ] ; 2 uses
  %i.aqc = add nuw i64 %indvars.iv231.i.i, %index1522 ; 2 uses
  %i.aqd = getelementptr [8 x i8], ptr %invariant.gep271.i.i, i64 %i.aqc ; 2 uses
  %wide.load1523 = load <2 x double>, ptr %i.aqd, align 8, !tbaa !10, !alias.scope !159 ; 2 uses
  %i.aqe = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.aqc ; 2 uses
  %wide.load1524 = load <2 x double>, ptr %i.aqe, align 8, !tbaa !10, !alias.scope !160, !noalias !159 ; 2 uses
  %i.aqf = fmul <2 x double> %broadcast.splat1516, %wide.load1524
  %i.aqg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1518, <2 x double> %wide.load1523, <2 x double> %i.aqf)
  %i.aqh = fmul <2 x double> %broadcast.splat1518, %wide.load1524
  %i.aqi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1520, <2 x double> %wide.load1523, <2 x double> %i.aqh)
  store <2 x double> %i.aqi, ptr %i.aqe, align 8, !tbaa !10, !alias.scope !160, !noalias !159
  store <2 x double> %i.aqg, ptr %i.aqd, align 8, !tbaa !10, !alias.scope !159
  %index.next1525 = add nuw i64 %index1522, 2     ; 2 uses
  %i.aqj = icmp eq i64 %index.next1525, %n.vec1514
  br i1 %i.aqj, label %middle.block1526, label %vector.body1521, !llvm.loop !89

middle.block1526:                                 ; preds = %vector.body1521
  %cmp.n1527 = icmp eq i64 %14, %n.vec1514
  br i1 %cmp.n1527, label %.loopexit.i.i, label %.lr.ph203.i.i.preheader

.lr.ph203.i.i.preheader:                          ; preds = %vector.memcheck1504, %.lr.ph203.preheader.i.i, %middle.block1526
  %indvars.iv233.i.i.ph = phi i64 [ %indvars.iv231.i.i, %vector.memcheck1504 ], [ %indvars.iv231.i.i, %.lr.ph203.preheader.i.i ], [ %i.aqb, %middle.block1526 ]
  %i.aqk = insertelement <2 x double> poison, double %.0172.i.i, i64 0
  %i.aql = insertelement <2 x double> %i.aqk, double %.0.i.i, i64 1
  %i.aqm = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %i.aqn = insertelement <2 x double> %i.aqm, double %i.apw, i64 1
  br label %.lr.ph203.i.i

.lr.ph203.i.i:                                    ; preds = %.lr.ph203.i.i.preheader, %.lr.ph203.i.i
  %indvars.iv233.i.i = phi i64 [ %indvars.iv.next234.i.i, %.lr.ph203.i.i ], [ %indvars.iv233.i.i.ph, %.lr.ph203.i.i.preheader ] ; 3 uses
  %gep272.i.i = getelementptr [8 x i8], ptr %invariant.gep271.i.i, i64 %indvars.iv233.i.i ; 2 uses
  %i.aqo = load double, ptr %gep272.i.i, align 8, !tbaa !10
  %i.aqp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv233.i.i ; 2 uses
  %i.aqq = load double, ptr %i.aqp, align 8, !tbaa !10
  %i.aqr = insertelement <2 x double> poison, double %i.aqq, i64 0
  %i.aqs = shufflevector <2 x double> %i.aqr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqt = fmul <2 x double> %i.aql, %i.aqs
  %i.aqu = insertelement <2 x double> poison, double %i.aqo, i64 0
  %i.aqv = shufflevector <2 x double> %i.aqu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aqn, <2 x double> %i.aqv, <2 x double> %i.aqt) ; 2 uses
  %i.aqx = extractelement <2 x double> %i.aqw, i64 1
  store double %i.aqx, ptr %i.aqp, align 8, !tbaa !10
  %i.aqy = extractelement <2 x double> %i.aqw, i64 0
  store double %i.aqy, ptr %gep272.i.i, align 8, !tbaa !10
  %indvars.iv.next234.i.i = add nuw nsw i64 %indvars.iv233.i.i, 1 ; 2 uses
  %exitcond237.not.i.i = icmp eq i64 %indvars.iv.next234.i.i, %i.bc
  br i1 %exitcond237.not.i.i, label %.loopexit.i.i, label %.lr.ph203.i.i, !llvm.loop !90

.loopexit.i.i:                                    ; preds = %.lr.ph203.i.i, %middle.block1526, %bb.et, %.lr.ph207..loopexit_crit_edge.i.i
  %indvars.iv.next239.pre-phi.i.i = phi i64 [ %.pre264.i.i, %.lr.ph207..loopexit_crit_edge.i.i ], [ %i.apz, %bb.et ], [ %i.apz, %middle.block1526 ], [ %i.apz, %.lr.ph203.i.i ]
  %.1.i321.i = phi double [ %.0174205.i.i, %.lr.ph207..loopexit_crit_edge.i.i ], [ %i.apy, %bb.et ], [ %i.apy, %middle.block1526 ], [ %i.apy, %.lr.ph203.i.i ]
  %indvars.iv.next232.i.i = add nuw i64 %indvars.iv231.i.i, 1
  %exitcond463.i = icmp eq i64 %indvars.iv231.i.i, %i.bc
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond463.i, label %.loopexit193.i.i, label %.lr.ph207.i.i, !llvm.loop !91

.loopexit193.i.i:                                 ; preds = %.loopexit.i.i, %.preheader195.i.i
  %i.aqz = mul i32 %i.dh, %.pre486.i
  %i.ara = sext i32 %i.aqz to i64
  %i.arb = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ara ; 2 uses
  %i.arc = load double, ptr %i.arb, align 8, !tbaa !10
  %i.ard = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvar.i.i
  store double %i.arc, ptr %i.ard, align 8, !tbaa !10
  %i.are = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvar.i.i
  %i.arf = load double, ptr %i.are, align 8, !tbaa !10
  store double %i.arf, ptr %i.arb, align 8, !tbaa !10
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1 ; 2 uses
  %indvars.iv.next230.i.i = add nuw nsw i64 %indvars.iv229.i.i, 1
  %exitcond246.not.i.i = icmp eq i64 %indvar.next.i.i, %i.bc
  br i1 %exitcond246.not.i.i, label %.preheader192.i.i.preheader, label %.preheader195.i.i, !llvm.loop !92

.preheader192.i.i.preheader:                      ; preds = %.loopexit193.i.i
  br i1 %i.gl, label %.preheader192.i.i.epil.preheader, label %.preheader192.i.i

.preheader191.i.i.unr-lcssa:                      ; preds = %bb.ex
  br i1 %lcmp.mod1865.not, label %.preheader191.i.i, label %.preheader192.i.i.epil.preheader

.preheader192.i.i.epil.preheader:                 ; preds = %.preheader191.i.i.unr-lcssa, %.preheader192.i.i.preheader
  %indvars.iv247.i.i.epil.init = phi i64 [ 0, %.preheader192.i.i.preheader ], [ %indvars.iv.next248.i.i.1, %.preheader191.i.i.unr-lcssa ] ; 3 uses
  %.0175211.i.i.epil.init = phi i32 [ %0, %.preheader192.i.i.preheader ], [ %.1176.i.i.1, %.preheader191.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1867)
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv247.i.i.epil.init
  %i.arh = load double, ptr %i.arg, align 8, !tbaa !10
  %i.ari = fcmp oeq double %i.arh, 0.000000e+00
  %i.arj = icmp eq i32 %.0175211.i.i.epil.init, %0
  %or.cond.i.i.epil = and i1 %i.arj, %i.ari
  %i.ark = trunc nuw nsw i64 %indvars.iv247.i.i.epil.init to i32
  %.1176.i.i.epil = select i1 %or.cond.i.i.epil, i32 %i.ark, i32 %.0175211.i.i.epil.init ; 3 uses
  %i.arl = icmp samesign ult i32 %.1176.i.i.epil, %0
  br i1 %i.arl, label %bb.eu, label %.preheader191.i.i

bb.eu:                                            ; preds = %.preheader192.i.i.epil.preheader
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv247.i.i.epil.init
  store double 0.000000e+00, ptr %i.arm, align 8, !tbaa !10
  br label %.preheader191.i.i

.preheader191.i.i:                                ; preds = %.preheader192.i.i.epil.preheader, %bb.eu, %.preheader191.i.i.unr-lcssa
  %.1176.i.i.lcssa = phi i32 [ %.1176.i.i.1, %.preheader191.i.i.unr-lcssa ], [ %.1176.i.i.epil, %bb.eu ], [ %.1176.i.i.epil, %.preheader192.i.i.epil.preheader ] ; 4 uses
  %.not.i.i = icmp eq i32 %.1176.i.i.lcssa, 0
  br i1 %.not.i.i, label %.preheader.i.i.preheader, label %.preheader190.preheader.i.i

.preheader190.preheader.i.i:                      ; preds = %.preheader191.i.i
  %i.arn = zext nneg i32 %.1176.i.i.lcssa to i64
  %i.aro = sext i32 %.1176.i.i.lcssa to i64
  br label %.preheader190.i.i

.preheader192.i.i:                                ; preds = %.preheader192.i.i.preheader, %bb.ex
  %indvars.iv247.i.i = phi i64 [ %indvars.iv.next248.i.i.1, %bb.ex ], [ 0, %.preheader192.i.i.preheader ] ; 5 uses
  %.0175211.i.i = phi i32 [ %.1176.i.i.1, %bb.ex ], [ %0, %.preheader192.i.i.preheader ] ; 2 uses
  %niter1869 = phi i64 [ %niter1869.next.1, %bb.ex ], [ 0, %.preheader192.i.i.preheader ]
  %i.arp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv247.i.i
  %i.arq = load double, ptr %i.arp, align 8, !tbaa !10
  %i.arr = fcmp oeq double %i.arq, 0.000000e+00
  %i.ars = icmp eq i32 %.0175211.i.i, %0
  %or.cond.i.i = and i1 %i.ars, %i.arr
  %i.art = trunc nuw nsw i64 %indvars.iv247.i.i to i32
  %.1176.i.i = select i1 %or.cond.i.i, i32 %i.art, i32 %.0175211.i.i ; 3 uses
  %i.aru = icmp samesign ult i32 %.1176.i.i, %0
  br i1 %i.aru, label %bb.ev, label %.preheader192.i.i.1

bb.ev:                                            ; preds = %.preheader192.i.i
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv247.i.i
  store double 0.000000e+00, ptr %i.arv, align 8, !tbaa !10
  br label %.preheader192.i.i.1

.preheader192.i.i.1:                              ; preds = %bb.ev, %.preheader192.i.i
  %indvars.iv.next248.i.i = or disjoint i64 %indvars.iv247.i.i, 1 ; 3 uses
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next248.i.i
  %i.arx = load double, ptr %i.arw, align 8, !tbaa !10
  %i.ary = fcmp oeq double %i.arx, 0.000000e+00
  %i.arz = icmp eq i32 %.1176.i.i, %0
  %or.cond.i.i.1 = and i1 %i.arz, %i.ary
  %i.asa = trunc nuw nsw i64 %indvars.iv.next248.i.i to i32
  %.1176.i.i.1 = select i1 %or.cond.i.i.1, i32 %i.asa, i32 %.1176.i.i ; 4 uses
  %i.asb = icmp samesign ult i32 %.1176.i.i.1, %0
  br i1 %i.asb, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %.preheader192.i.i.1
  %i.asc = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next248.i.i
  store double 0.000000e+00, ptr %i.asc, align 8, !tbaa !10
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %.preheader192.i.i.1
  %indvars.iv.next248.i.i.1 = add nuw nsw i64 %indvars.iv247.i.i, 2 ; 2 uses
  %niter1869.next.1 = add i64 %niter1869, 2       ; 2 uses
  %niter1869.ncmp.1 = icmp eq i64 %niter1869.next.1, %unroll_iter1868
  br i1 %niter1869.ncmp.1, label %.preheader191.i.i.unr-lcssa, label %.preheader192.i.i, !llvm.loop !93

.preheader190.i.i:                                ; preds = %._crit_edge215.i.i, %.preheader190.preheader.i.i
  %indvars.iv253.i.i = phi i64 [ %i.arn, %.preheader190.preheader.i.i ], [ %indvars.iv.next254.i.i, %._crit_edge215.i.i ] ; 4 uses
  %indvars.iv.next254.i.i = add nsw i64 %indvars.iv253.i.i, -1 ; 4 uses
  %i.asd = icmp slt i64 %indvars.iv253.i.i, %i.aro
  br i1 %i.asd, label %.lr.ph214.i.i, label %._crit_edge215.i.i

.lr.ph214.i.i:                                    ; preds = %.preheader190.i.i
  %i.ase = trunc i64 %indvars.iv.next254.i.i to i32
  %i.asf = mul i32 %4, %i.ase
  %i.asg = zext i32 %i.asf to i64
  %invariant.gep273.i.i = getelementptr [8 x i8], ptr %i.bm, i64 %i.asg
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ey, %.lr.ph214.i.i
  %indvars.iv255.i.i = phi i64 [ %indvars.iv253.i.i, %.lr.ph214.i.i ], [ %indvars.iv.next256.i.i, %bb.ey ] ; 3 uses
  %.0173213.i.i = phi double [ 0.000000e+00, %.lr.ph214.i.i ], [ %i.ask, %bb.ey ]
  %gep274.i.i = getelementptr [8 x i8], ptr %invariant.gep273.i.i, i64 %indvars.iv255.i.i
  %i.ash = load double, ptr %gep274.i.i, align 8, !tbaa !10
  %i.asi = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv255.i.i
  %i.asj = load double, ptr %i.asi, align 8, !tbaa !10
  %i.ask = tail call double @llvm.fmuladd.f64(double %i.ash, double %i.asj, double %.0173213.i.i) ; 2 uses
  %indvars.iv.next256.i.i = add nuw nsw i64 %indvars.iv255.i.i, 1 ; 2 uses
  %i.asl = trunc nuw i64 %indvars.iv.next256.i.i to i32
  %i.asm = icmp sgt i32 %.1176.i.i.lcssa, %i.asl
  br i1 %i.asm, label %bb.ey, label %._crit_edge215.i.i, !llvm.loop !94

._crit_edge215.i.i:                               ; preds = %bb.ey, %.preheader190.i.i
  %.0173.lcssa.i.i = phi double [ 0.000000e+00, %.preheader190.i.i ], [ %i.ask, %bb.ey ]
  %i.asn = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next254.i.i ; 2 uses
  %i.aso = load double, ptr %i.asn, align 8, !tbaa !10
  %i.asp = fsub double %i.aso, %.0173.lcssa.i.i
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next254.i.i
  %i.asr = load double, ptr %i.asq, align 8, !tbaa !10
  %i.ass = fdiv double %i.asp, %i.asr
  store double %i.ass, ptr %i.asn, align 8, !tbaa !10
  %i.ast = icmp samesign ugt i64 %indvars.iv253.i.i, 1
  br i1 %i.ast, label %.preheader190.i.i, label %.preheader.i.i.preheader, !llvm.loop !95

.preheader.i.i.preheader:                         ; preds = %._crit_edge215.i.i, %.preheader191.i.i
  br i1 %i.gm, label %.preheader.i.i.epil.preheader, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv259.i.i = phi i64 [ %indvars.iv.next260.i.i.3, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ] ; 6 uses
  %niter1875 = phi i64 [ %niter1875.next.3, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ]
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv259.i.i
  %i.asv = load double, ptr %i.asu, align 8, !tbaa !10
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv259.i.i
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !149
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.asy
  store double %i.asv, ptr %i.asz, align 8, !tbaa !10
  %indvars.iv.next260.i.i = or disjoint i64 %indvars.iv259.i.i, 1 ; 2 uses
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next260.i.i
  %i.atb = load double, ptr %i.ata, align 8, !tbaa !10
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next260.i.i
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !149
  %i.ate = sext i32 %i.atd to i64
  %i.atf = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ate
  store double %i.atb, ptr %i.atf, align 8, !tbaa !10
  %indvars.iv.next260.i.i.1 = or disjoint i64 %indvars.iv259.i.i, 2 ; 2 uses
  %i.atg = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next260.i.i.1
  %i.ath = load double, ptr %i.atg, align 8, !tbaa !10
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next260.i.i.1
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !149
  %i.atk = sext i32 %i.atj to i64
  %i.atl = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.atk
  store double %i.ath, ptr %i.atl, align 8, !tbaa !10
  %indvars.iv.next260.i.i.2 = or disjoint i64 %indvars.iv259.i.i, 3 ; 2 uses
  %i.atm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next260.i.i.2
  %i.atn = load double, ptr %i.atm, align 8, !tbaa !10
end_hunk_2
begin_hunk_3_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a
  store double %i.aul, ptr %i.aum, align 8, !tbaa !10
  %indvars.iv.next465.i = add nuw nsw i64 %indvars.iv464.i, 1 ; 2 uses
  %exitcond468.not.i = icmp eq i64 %indvars.iv.next465.i, %i.bc
  br i1 %exitcond468.not.i, label %.lr.ph.i325.i.preheader, label %_ZL9lm_qrsolviPdiPiS_S_S_S_S_.exit.i, !llvm.loop !99

.lr.ph.i325.i.preheader:                          ; preds = %_ZL9lm_qrsolviPdiPiS_S_S_S_S_.exit.i, %middle.block1501
  br label %.lr.ph.i325.i

.lr.ph.i325.i:                                    ; preds = %.lr.ph.i325.i.preheader, %bb.fi
  %indvars.iv.i326.i = phi i64 [ %indvars.iv.next.i337.i, %bb.fi ], [ 0, %.lr.ph.i325.i.preheader ] ; 2 uses
  %.076.i327.i = phi double [ %.1.i336.i, %bb.fi ], [ 0.000000e+00, %.lr.ph.i325.i.preheader ] ; 8 uses
  %.06075.i328.i = phi double [ %.161.i335.i, %bb.fi ], [ 0.000000e+00, %.lr.ph.i325.i.preheader ] ; 8 uses
  %.06274.i329.i = phi double [ %.163.i334.i, %bb.fi ], [ 0.000000e+00, %.lr.ph.i325.i.preheader ] ; 6 uses
  %.06473.i330.i = phi double [ %.165.i333.i, %bb.fi ], [ 0.000000e+00, %.lr.ph.i325.i.preheader ] ; 6 uses
  %.06672.i331.i = phi double [ %.167.i332.i, %bb.fi ], [ 0.000000e+00, %.lr.ph.i325.i.preheader ] ; 6 uses
  %i.aun = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i326.i
  %i.auo = load double, ptr %i.aun, align 8, !tbaa !10 ; 4 uses
  %i.aup = tail call double @llvm.fabs.f64(double %i.auo) ; 10 uses
  %i.auq = fcmp ogt double %i.aup, f0x2000000000000000
  br i1 %i.auq, label %bb.ez, label %bb.fe

bb.ez:                                            ; preds = %.lr.ph.i325.i
  %i.aur = fcmp olt double %i.aup, %i.dn
  br i1 %i.aur, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.aus = tail call double @llvm.fmuladd.f64(double %i.auo, double %i.auo, double %.06473.i330.i)
  br label %bb.fi

bb.fb:                                            ; preds = %bb.ez
  %i.aut = fcmp ogt double %i.aup, %.06075.i328.i
  br i1 %i.aut, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.auu = fdiv double %.06075.i328.i, %i.aup     ; 2 uses
  %i.auv = fmul double %.06672.i331.i, %i.auu
  %i.auw = tail call double @llvm.fmuladd.f64(double %i.auv, double %i.auu, double 1.000000e+00)
  br label %bb.fi

bb.fd:                                            ; preds = %bb.fb
  %i.aux = fdiv double %i.aup, %.06075.i328.i     ; 2 uses
  %i.auy = tail call double @llvm.fmuladd.f64(double %i.aux, double %i.aux, double %.06672.i331.i)
  br label %bb.fi

bb.fe:                                            ; preds = %.lr.ph.i325.i
  %i.auz = fcmp ogt double %i.aup, %.076.i327.i
  br i1 %i.auz, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.ava = fdiv double %.076.i327.i, %i.aup       ; 2 uses
  %i.avb = fmul double %.06274.i329.i, %i.ava
  %i.avc = tail call double @llvm.fmuladd.f64(double %i.avb, double %i.ava, double 1.000000e+00)
  br label %bb.fi

bb.fg:                                            ; preds = %bb.fe
  %i.avd = fcmp une double %i.auo, 0.000000e+00
  br i1 %i.avd, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ave = fdiv double %i.aup, %.076.i327.i       ; 2 uses
  %i.avf = tail call double @llvm.fmuladd.f64(double %i.ave, double %i.ave, double %.06274.i329.i)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fd, %bb.fc, %bb.fa
  %.167.i332.i = phi double [ %.06672.i331.i, %bb.fa ], [ %i.auw, %bb.fc ], [ %i.auy, %bb.fd ], [ %.06672.i331.i, %bb.ff ], [ %.06672.i331.i, %bb.fh ], [ %.06672.i331.i, %bb.fg ] ; 3 uses
  %.165.i333.i = phi double [ %i.aus, %bb.fa ], [ %.06473.i330.i, %bb.fc ], [ %.06473.i330.i, %bb.fd ], [ %.06473.i330.i, %bb.ff ], [ %.06473.i330.i, %bb.fh ], [ %.06473.i330.i, %bb.fg ] ; 7 uses
  %.163.i334.i = phi double [ %.06274.i329.i, %bb.fa ], [ %.06274.i329.i, %bb.fc ], [ %.06274.i329.i, %bb.fd ], [ %i.avc, %bb.ff ], [ %i.avf, %bb.fh ], [ %.06274.i329.i, %bb.fg ] ; 4 uses
  %.161.i335.i = phi double [ %.06075.i328.i, %bb.fa ], [ %i.aup, %bb.fc ], [ %.06075.i328.i, %bb.fd ], [ %.06075.i328.i, %bb.ff ], [ %.06075.i328.i, %bb.fh ], [ %.06075.i328.i, %bb.fg ] ; 4 uses
  %.1.i336.i = phi double [ %.076.i327.i, %bb.fa ], [ %.076.i327.i, %bb.fc ], [ %.076.i327.i, %bb.fd ], [ %i.aup, %bb.ff ], [ %.076.i327.i, %bb.fh ], [ %.076.i327.i, %bb.fg ] ; 8 uses
  %indvars.iv.next.i337.i = add nuw nsw i64 %indvars.iv.i326.i, 1 ; 2 uses
  %exitcond.not.i338.i = icmp eq i64 %indvars.iv.next.i337.i, %i.bc
  br i1 %exitcond.not.i338.i, label %._crit_edge.i339.i, label %.lr.ph.i325.i, !llvm.loop !0

._crit_edge.i339.i:                               ; preds = %bb.fi
  %i.avg = fcmp une double %.167.i332.i, 0.000000e+00
  br i1 %i.avg, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %._crit_edge.i339.i
  %i.avh = fdiv double %.165.i333.i, %.161.i335.i
  %i.avi = fdiv double %i.avh, %.161.i335.i
  %i.avj = fadd double %.167.i332.i, %i.avi
  %i.avk = tail call double @sqrt(double noundef %i.avj) #11
  %i.avl = fmul double %.161.i335.i, %i.avk
  br label %_Z8lm_enormiPKd.exit340.i

bb.fk:                                            ; preds = %._crit_edge.i339.i
  %i.avm = fcmp une double %.165.i333.i, 0.000000e+00
  br i1 %i.avm, label %bb.fl, label %.thread.i322.i

bb.fl:                                            ; preds = %bb.fk
  %i.avn = fcmp ult double %.165.i333.i, %.1.i336.i
  br i1 %i.avn, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.avo = fdiv double %.1.i336.i, %.165.i333.i
  %i.avp = fmul double %.163.i334.i, %.1.i336.i
  %i.avq = tail call double @llvm.fmuladd.f64(double %i.avo, double %i.avp, double 1.000000e+00)
  %i.avr = fmul double %.165.i333.i, %i.avq
  %i.avs = tail call double @sqrt(double noundef %i.avr) #11
  br label %_Z8lm_enormiPKd.exit340.i

bb.fn:                                            ; preds = %bb.fl
  %i.avt = fdiv double %.165.i333.i, %.1.i336.i
  %i.avu = tail call double @llvm.fmuladd.f64(double %.1.i336.i, double %.163.i334.i, double %i.avt)
  %i.avv = fmul double %.1.i336.i, %i.avu
  %i.avw = tail call double @sqrt(double noundef %i.avv) #11
  br label %_Z8lm_enormiPKd.exit340.i

.thread.i322.i:                                   ; preds = %bb.fk
  %i.avx = tail call double @sqrt(double noundef %.163.i334.i) #11
  %i.avy = fmul double %.1.i336.i, %i.avx
  br label %_Z8lm_enormiPKd.exit340.i

_Z8lm_enormiPKd.exit340.i:                        ; preds = %.thread.i322.i, %bb.fn, %bb.fm, %bb.fj
  %.069.i323.i = phi double [ %i.avl, %bb.fj ], [ %i.avs, %bb.fm ], [ %i.avw, %bb.fn ], [ %i.avy, %.thread.i322.i ] ; 4 uses
  %i.avz = fsub double %.069.i323.i, %.3598       ; 6 uses
  %i.awa = tail call double @llvm.fabs.f64(double %i.avz)
  %i.awb = fcmp ugt double %i.awa, %i.afh
  br i1 %i.awb, label %bb.fo, label %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit

bb.fo:                                            ; preds = %_Z8lm_enormiPKd.exit340.i
  %i.awc = fcmp oeq double %.1254.i, 0.000000e+00
  br i1 %i.awc, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.awd = fcmp ole double %i.avz, %.0256.i
  %i.awe = fcmp olt double %.0256.i, 0.000000e+00
  %or.cond.i = and i1 %i.awe, %i.awd
  %i.awf = icmp eq i32 %.0262.i, 10
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.awf
  br i1 %or.cond3.i, label %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, label %.preheader1763

bb.fq:                                            ; preds = %bb.fo
  %.old2.i = icmp eq i32 %.0262.i, 10
  br i1 %.old2.i, label %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, label %.preheader1763

.preheader1763:                                   ; preds = %bb.fq, %bb.fp
  br i1 %i.gn, label %.epil.preheader1876, label %.preheader1763.new

.preheader1763.new:                               ; preds = %.preheader1763, %.preheader1763.new
  %indvars.iv469.i = phi i64 [ %indvars.iv.next470.i.1, %.preheader1763.new ], [ 0, %.preheader1763 ] ; 4 uses
  %niter1882 = phi i64 [ %niter1882.next.1, %.preheader1763.new ], [ 0, %.preheader1763 ]
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv469.i
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !149
  %i.awi = sext i32 %i.awh to i64                 ; 2 uses
  %i.awj = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.awi
  %i.awk = load double, ptr %i.awj, align 8, !tbaa !10
  %i.awl = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.awi
  %i.awm = load double, ptr %i.awl, align 8, !tbaa !10
  %i.awn = fmul double %i.awk, %i.awm
  %i.awo = fdiv double %i.awn, %.069.i323.i
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv469.i
  store double %i.awo, ptr %i.awp, align 8, !tbaa !10
  %indvars.iv.next470.i = or disjoint i64 %indvars.iv469.i, 1 ; 2 uses
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next470.i
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !149
  %i.aws = sext i32 %i.awr to i64                 ; 2 uses
  %i.awt = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.aws
  %i.awu = load double, ptr %i.awt, align 8, !tbaa !10
  %i.awv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.aws
  %i.aww = load double, ptr %i.awv, align 8, !tbaa !10
  %i.awx = fmul double %i.awu, %i.aww
  %i.awy = fdiv double %i.awx, %.069.i323.i
  %i.awz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next470.i
  store double %i.awy, ptr %i.awz, align 8, !tbaa !10
  %indvars.iv.next470.i.1 = add nuw nsw i64 %indvars.iv469.i, 2 ; 2 uses
  %niter1882.next.1 = add i64 %niter1882, 2       ; 2 uses
  %niter1882.ncmp.1 = icmp eq i64 %niter1882.next.1, %unroll_iter1881
  br i1 %niter1882.ncmp.1, label %.preheader.i740.preheader.unr-lcssa, label %.preheader1763.new, !llvm.loop !100

.preheader.i740.preheader.unr-lcssa:              ; preds = %.preheader1763.new
  br i1 %lcmp.mod1879.not, label %.preheader.i740.preheader, label %.epil.preheader1876

.epil.preheader1876:                              ; preds = %.preheader.i740.preheader.unr-lcssa, %.preheader1763
  %indvars.iv469.i.epil.init = phi i64 [ 0, %.preheader1763 ], [ %indvars.iv.next470.i.1, %.preheader.i740.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1880)
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv469.i.epil.init
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !149
  %i.axc = sext i32 %i.axb to i64                 ; 2 uses
  %i.axd = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.axc
  %i.axe = load double, ptr %i.axd, align 8, !tbaa !10
  %i.axf = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.axc
  %i.axg = load double, ptr %i.axf, align 8, !tbaa !10
  %i.axh = fmul double %i.axe, %i.axg
  %i.axi = fdiv double %i.axh, %.069.i323.i
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv469.i.epil.init
  store double %i.axi, ptr %i.axj, align 8, !tbaa !10
  br label %.preheader.i740.preheader

.preheader.i740.preheader:                        ; preds = %.preheader.i740.preheader.unr-lcssa, %.epil.preheader1876
  br label %.preheader.i740

.loopexit.i:                                      ; preds = %scalar.ph1474.prol.loopexit, %scalar.ph1474, %middle.block1487, %.preheader.i740
  %indvars.iv.next475.i = add nuw nsw i64 %indvars.iv474.i, 1
  %exitcond485.not.i = icmp eq i64 %indvars.iv.next482.i, %i.bc
  br i1 %exitcond485.not.i, label %.lr.ph.i344.i, label %.preheader.i740, !llvm.loop !101

.preheader.i740:                                  ; preds = %.preheader.i740.preheader, %.loopexit.i
  %indvars.iv481.i = phi i64 [ %indvars.iv.next482.i, %.loopexit.i ], [ 0, %.preheader.i740.preheader ] ; 8 uses
  %indvars.iv474.i = phi i64 [ %indvars.iv.next475.i, %.loopexit.i ], [ 1, %.preheader.i740.preheader ] ; 5 uses
  %15 = xor i64 %indvars.iv481.i, -1
  %16 = add nsw i64 %15, %i.bc                    ; 3 uses
  %i.axk = shl i64 %indvars.iv481.i, 3
  %scevgep1463 = getelementptr i8, ptr %i.gq, i64 %i.axk ; 2 uses
  %i.axl = mul i64 %i.eh, %indvars.iv481.i
  %scevgep1465 = getelementptr i8, ptr %i.gt, i64 %i.axl
  %i.axm = mul i64 %i.ej, %indvars.iv481.i
  %scevgep1466 = getelementptr i8, ptr %i.gv, i64 %i.axm
  %i.axn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv481.i ; 6 uses
  %i.axo = load double, ptr %i.axn, align 8, !tbaa !10
  %i.axp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv481.i
  %i.axq = load double, ptr %i.axp, align 8, !tbaa !10
  %i.axr = fdiv double %i.axo, %i.axq
  store double %i.axr, ptr %i.axn, align 8, !tbaa !10
  %indvars.iv.next482.i = add nuw nsw i64 %indvars.iv481.i, 1 ; 3 uses
  %i.axs = icmp samesign ult i64 %indvars.iv.next482.i, %i.bc
  br i1 %i.axs, label %.lr.ph394.i, label %.loopexit.i

.lr.ph394.i:                                      ; preds = %.preheader.i740
  %i.axt = mul nuw nsw i64 %indvars.iv481.i, %i.bh
  %invariant.gep510.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.axt ; 4 uses
  %min.iters.check1475 = icmp ult i64 %16, 4
  br i1 %min.iters.check1475, label %scalar.ph1474.preheader, label %vector.memcheck1462

vector.memcheck1462:                              ; preds = %.lr.ph394.i
  %bound01467 = icmp ult ptr %scevgep1463, %scevgep1466
  %bound11468 = icmp ult ptr %scevgep1465, %scevgep1464
  %found.conflict1469 = and i1 %bound01467, %bound11468
  %bound01470 = icmp ult ptr %scevgep1463, %scevgep1464
  %found.conflict1472 = and i1 %bound01470, %bound11471
  %conflict.rdx1473 = or i1 %found.conflict1469, %found.conflict1472
  br i1 %conflict.rdx1473, label %scalar.ph1474.preheader, label %vector.ph1476

vector.ph1476:                                    ; preds = %vector.memcheck1462
  %n.vec1477 = and i64 %16, -4                    ; 3 uses
  %i.axu = add i64 %indvars.iv474.i, %n.vec1477
  %i.axv = load double, ptr %i.axn, align 8, !tbaa !10, !alias.scope !161
  %broadcast.splatinsert1484 = insertelement <2 x double> poison, double %i.axv, i64 0
  %broadcast.splat1485 = shufflevector <2 x double> %broadcast.splatinsert1484, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1476
  %index1479 = phi i64 [ 0, %vector.ph1476 ], [ %index.next1486, %vector.body1478 ] ; 2 uses
  %i.axw = add nuw i64 %indvars.iv474.i, %index1479 ; 2 uses
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %i.axw ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %wide.load1480 = load <2 x double>, ptr %i.axx, align 8, !tbaa !10, !alias.scope !162
  %wide.load1481 = load <2 x double>, ptr %i.axy, align 8, !tbaa !10, !alias.scope !162
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.axw ; 3 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 16 ; 2 uses
  %wide.load1482 = load <2 x double>, ptr %i.axz, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  %wide.load1483 = load <2 x double>, ptr %i.aya, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  %i.ayb = fneg <2 x double> %wide.load1480
  %i.ayc = fneg <2 x double> %wide.load1481
  %i.ayd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayb, <2 x double> %broadcast.splat1485, <2 x double> %wide.load1482)
  %i.aye = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayc, <2 x double> %broadcast.splat1485, <2 x double> %wide.load1483)
  store <2 x double> %i.ayd, ptr %i.axz, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  store <2 x double> %i.aye, ptr %i.aya, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  %index.next1486 = add nuw i64 %index1479, 4     ; 2 uses
  %i.ayf = icmp eq i64 %index.next1486, %n.vec1477
  br i1 %i.ayf, label %middle.block1487, label %vector.body1478, !llvm.loop !106

middle.block1487:                                 ; preds = %vector.body1478
  %cmp.n1488 = icmp eq i64 %16, %n.vec1477
  br i1 %cmp.n1488, label %.loopexit.i, label %scalar.ph1474.preheader

scalar.ph1474.preheader:                          ; preds = %vector.memcheck1462, %.lr.ph394.i, %middle.block1487
  %indvars.iv476.i.ph = phi i64 [ %indvars.iv474.i, %vector.memcheck1462 ], [ %indvars.iv474.i, %.lr.ph394.i ], [ %i.axu, %middle.block1487 ] ; 6 uses
  %i.ayg = sub i64 %i.bc, %indvars.iv476.i.ph
  %xtraiter1883 = and i64 %i.ayg, 1
  %lcmp.mod1884.not = icmp eq i64 %xtraiter1883, 0
  br i1 %lcmp.mod1884.not, label %scalar.ph1474.prol.loopexit, label %scalar.ph1474.prol

scalar.ph1474.prol:                               ; preds = %scalar.ph1474.preheader
  %gep511.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %indvars.iv476.i.ph
  %i.ayh = load double, ptr %gep511.i.prol, align 8, !tbaa !10
  %i.ayi = load double, ptr %i.axn, align 8, !tbaa !10
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv476.i.ph ; 2 uses
  %i.ayk = load double, ptr %i.ayj, align 8, !tbaa !10
  %i.ayl = fneg double %i.ayh
  %i.aym = tail call double @llvm.fmuladd.f64(double %i.ayl, double %i.ayi, double %i.ayk)
  store double %i.aym, ptr %i.ayj, align 8, !tbaa !10
  %indvars.iv.next477.i.prol = add nuw nsw i64 %indvars.iv476.i.ph, 1
  br label %scalar.ph1474.prol.loopexit

scalar.ph1474.prol.loopexit:                      ; preds = %scalar.ph1474.prol, %scalar.ph1474.preheader
  %indvars.iv476.i.unr = phi i64 [ %indvars.iv476.i.ph, %scalar.ph1474.preheader ], [ %indvars.iv.next477.i.prol, %scalar.ph1474.prol ]
  %i.ayn = icmp eq i64 %indvars.iv476.i.ph, %i.gw
  br i1 %i.ayn, label %.loopexit.i, label %scalar.ph1474

scalar.ph1474:                                    ; preds = %scalar.ph1474.prol.loopexit, %scalar.ph1474
  %indvars.iv476.i = phi i64 [ %indvars.iv.next477.i.1, %scalar.ph1474 ], [ %indvars.iv476.i.unr, %scalar.ph1474.prol.loopexit ] ; 4 uses
  %gep511.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %indvars.iv476.i
  %i.ayo = load double, ptr %gep511.i, align 8, !tbaa !10
  %i.ayp = load double, ptr %i.axn, align 8, !tbaa !10
  %i.ayq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv476.i ; 2 uses
  %i.ayr = load double, ptr %i.ayq, align 8, !tbaa !10
  %i.ays = fneg double %i.ayo
  %i.ayt = tail call double @llvm.fmuladd.f64(double %i.ays, double %i.ayp, double %i.ayr)
  store double %i.ayt, ptr %i.ayq, align 8, !tbaa !10
  %indvars.iv.next477.i = add nuw nsw i64 %indvars.iv476.i, 1 ; 2 uses
  %gep511.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %indvars.iv.next477.i
  %i.ayu = load double, ptr %gep511.i.1, align 8, !tbaa !10
  %i.ayv = load double, ptr %i.axn, align 8, !tbaa !10
  %i.ayw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next477.i ; 2 uses
  %i.ayx = load double, ptr %i.ayw, align 8, !tbaa !10
  %i.ayy = fneg double %i.ayu
  %i.ayz = tail call double @llvm.fmuladd.f64(double %i.ayy, double %i.ayv, double %i.ayx)
  store double %i.ayz, ptr %i.ayw, align 8, !tbaa !10
  %indvars.iv.next477.i.1 = add nuw nsw i64 %indvars.iv476.i, 2 ; 2 uses
  %exitcond480.not.i.1 = icmp eq i64 %indvars.iv.next477.i.1, %i.bc
  br i1 %exitcond480.not.i.1, label %.loopexit.i, label %scalar.ph1474, !llvm.loop !107

.lr.ph.i344.i:                                    ; preds = %.loopexit.i, %bb.ga
  %indvars.iv.i345.i = phi i64 [ %indvars.iv.next.i356.i, %bb.ga ], [ 0, %.loopexit.i ] ; 2 uses
  %.076.i346.i = phi double [ %.1.i355.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 8 uses
  %.06075.i347.i = phi double [ %.161.i354.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 8 uses
  %.06274.i348.i = phi double [ %.163.i353.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %.06473.i349.i = phi double [ %.165.i352.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %.06672.i350.i = phi double [ %.167.i351.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i345.i
  %i.azb = load double, ptr %i.aza, align 8, !tbaa !10 ; 4 uses
  %i.azc = tail call double @llvm.fabs.f64(double %i.azb) ; 10 uses
  %i.azd = fcmp ogt double %i.azc, f0x2000000000000000
  br i1 %i.azd, label %bb.fr, label %bb.fw

bb.fr:                                            ; preds = %.lr.ph.i344.i
  %i.aze = fcmp olt double %i.azc, %i.dn
  br i1 %i.aze, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.azf = tail call double @llvm.fmuladd.f64(double %i.azb, double %i.azb, double %.06473.i349.i)
  br label %bb.ga

bb.ft:                                            ; preds = %bb.fr
  %i.azg = fcmp ogt double %i.azc, %.06075.i347.i
  br i1 %i.azg, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.azh = fdiv double %.06075.i347.i, %i.azc     ; 2 uses
  %i.azi = fmul double %.06672.i350.i, %i.azh
  %i.azj = tail call double @llvm.fmuladd.f64(double %i.azi, double %i.azh, double 1.000000e+00)
  br label %bb.ga

bb.fv:                                            ; preds = %bb.ft
  %i.azk = fdiv double %i.azc, %.06075.i347.i     ; 2 uses
  %i.azl = tail call double @llvm.fmuladd.f64(double %i.azk, double %i.azk, double %.06672.i350.i)
  br label %bb.ga

bb.fw:                                            ; preds = %.lr.ph.i344.i
  %i.azm = fcmp ogt double %i.azc, %.076.i346.i
  br i1 %i.azm, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.azn = fdiv double %.076.i346.i, %i.azc       ; 2 uses
  %i.azo = fmul double %.06274.i348.i, %i.azn
  %i.azp = tail call double @llvm.fmuladd.f64(double %i.azo, double %i.azn, double 1.000000e+00)
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fw
  %i.azq = fcmp une double %i.azb, 0.000000e+00
  br i1 %i.azq, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.azr = fdiv double %i.azc, %.076.i346.i       ; 2 uses
  %i.azs = tail call double @llvm.fmuladd.f64(double %i.azr, double %i.azr, double %.06274.i348.i)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fv, %bb.fu, %bb.fs
  %.167.i351.i = phi double [ %.06672.i350.i, %bb.fs ], [ %i.azj, %bb.fu ], [ %i.azl, %bb.fv ], [ %.06672.i350.i, %bb.fx ], [ %.06672.i350.i, %bb.fz ], [ %.06672.i350.i, %bb.fy ] ; 3 uses
  %.165.i352.i = phi double [ %i.azf, %bb.fs ], [ %.06473.i349.i, %bb.fu ], [ %.06473.i349.i, %bb.fv ], [ %.06473.i349.i, %bb.fx ], [ %.06473.i349.i, %bb.fz ], [ %.06473.i349.i, %bb.fy ] ; 7 uses
  %.163.i353.i = phi double [ %.06274.i348.i, %bb.fs ], [ %.06274.i348.i, %bb.fu ], [ %.06274.i348.i, %bb.fv ], [ %i.azp, %bb.fx ], [ %i.azs, %bb.fz ], [ %.06274.i348.i, %bb.fy ] ; 4 uses
  %.161.i354.i = phi double [ %.06075.i347.i, %bb.fs ], [ %i.azc, %bb.fu ], [ %.06075.i347.i, %bb.fv ], [ %.06075.i347.i, %bb.fx ], [ %.06075.i347.i, %bb.fz ], [ %.06075.i347.i, %bb.fy ] ; 4 uses
  %.1.i355.i = phi double [ %.076.i346.i, %bb.fs ], [ %.076.i346.i, %bb.fu ], [ %.076.i346.i, %bb.fv ], [ %i.azc, %bb.fx ], [ %.076.i346.i, %bb.fz ], [ %.076.i346.i, %bb.fy ] ; 8 uses
  %indvars.iv.next.i356.i = add nuw nsw i64 %indvars.iv.i345.i, 1 ; 2 uses
  %exitcond.not.i357.i = icmp eq i64 %indvars.iv.next.i356.i, %i.bc
  br i1 %exitcond.not.i357.i, label %._crit_edge.i358.i, label %.lr.ph.i344.i, !llvm.loop !0

._crit_edge.i358.i:                               ; preds = %bb.ga
  %i.azt = fcmp une double %.167.i351.i, 0.000000e+00
  br i1 %i.azt, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %._crit_edge.i358.i
  %i.azu = fdiv double %.165.i352.i, %.161.i354.i
  %i.azv = fdiv double %i.azu, %.161.i354.i
  %i.azw = fadd double %.167.i351.i, %i.azv
  %i.azx = tail call double @sqrt(double noundef %i.azw) #11
  %i.azy = fmul double %.161.i354.i, %i.azx
  br label %_Z8lm_enormiPKd.exit359.i

bb.gc:                                            ; preds = %._crit_edge.i358.i
  %i.azz = fcmp une double %.165.i352.i, 0.000000e+00
  br i1 %i.azz, label %bb.gd, label %.thread.i341.i

bb.gd:                                            ; preds = %bb.gc
  %i.baa = fcmp ult double %.165.i352.i, %.1.i355.i
  br i1 %i.baa, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.bab = fdiv double %.1.i355.i, %.165.i352.i
  %i.bac = fmul double %.163.i353.i, %.1.i355.i
  %i.bad = tail call double @llvm.fmuladd.f64(double %i.bab, double %i.bac, double 1.000000e+00)
  %i.bae = fmul double %.165.i352.i, %i.bad
  %i.baf = tail call double @sqrt(double noundef %i.bae) #11
  br label %_Z8lm_enormiPKd.exit359.i

bb.gf:                                            ; preds = %bb.gd
  %i.bag = fdiv double %.165.i352.i, %.1.i355.i
  %i.bah = tail call double @llvm.fmuladd.f64(double %.1.i355.i, double %.163.i353.i, double %i.bag)
  %i.bai = fmul double %.1.i355.i, %i.bah
  %i.baj = tail call double @sqrt(double noundef %i.bai) #11
  br label %_Z8lm_enormiPKd.exit359.i

.thread.i341.i:                                   ; preds = %bb.gc
  %i.bak = tail call double @sqrt(double noundef %.163.i353.i) #11
  %i.bal = fmul double %.1.i355.i, %i.bak
  br label %_Z8lm_enormiPKd.exit359.i

_Z8lm_enormiPKd.exit359.i:                        ; preds = %.thread.i341.i, %bb.gf, %bb.ge, %bb.gb
  %.069.i342.i = phi double [ %i.azy, %bb.gb ], [ %i.baf, %bb.ge ], [ %i.baj, %bb.gf ], [ %i.bal, %.thread.i341.i ] ; 2 uses
  %i.bam = fdiv double %i.avz, %.3598
  %i.ban = fdiv double %i.bam, %.069.i342.i
  %i.bao = fdiv double %i.ban, %.069.i342.i
  %i.bap = fcmp ogt double %i.avz, 0.000000e+00
  br i1 %i.bap, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_Z8lm_enormiPKd.exit359.i
  %.inv362.i = fcmp oge double %.1254.i, %i.amj
  %..1254.i = select i1 %.inv362.i, double %.1254.i, double %i.amj
  br label %bb.gj

bb.gh:                                            ; preds = %_Z8lm_enormiPKd.exit359.i
  %i.baq = fcmp olt double %i.avz, 0.000000e+00
  br i1 %i.baq, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %.inv361.i = fcmp ole double %.1252.i, %i.amj
  %..1252.i = select i1 %.inv361.i, double %.1252.i, double %i.amj
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gg
  %.2255.i = phi double [ %..1254.i, %bb.gg ], [ %.1254.i, %bb.gi ], [ %.1254.i, %bb.gh ] ; 3 uses
  %.2.i = phi double [ %.1252.i, %bb.gg ], [ %..1252.i, %bb.gi ], [ %.1252.i, %bb.gh ]
  %i.bar = fadd double %i.amj, %i.bao             ; 2 uses
  %.inv363.i = fcmp oge double %.2255.i, %i.bar
  %..2255.i = select i1 %.inv363.i, double %.2255.i, double %i.bar
  %i.bas = add nuw nsw i32 %.0262.i, 1
  br label %bb.en, !llvm.loop !108

_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit:           ; preds = %_Z8lm_enormiPKd.exit340.i, %bb.fp, %bb.fq, %_Z8lm_enormiPKd.exit.i737
  %.6 = phi double [ 0.000000e+00, %_Z8lm_enormiPKd.exit.i737 ], [ %i.amj, %bb.fq ], [ %i.amj, %bb.fp ], [ %i.amj, %_Z8lm_enormiPKd.exit340.i ] ; 6 uses
  br label %.lr.ph.i749

.lr.ph.i749:                                      ; preds = %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, %bb.gt
  %indvars.iv.i750 = phi i64 [ %indvars.iv.next.i751, %bb.gt ], [ 0, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 2 uses
  %.076.i = phi double [ %.1.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 8 uses
  %.06075.i = phi double [ %.161.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 8 uses
  %.06274.i = phi double [ %.163.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %.06473.i = phi double [ %.165.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %.06672.i = phi double [ %.167.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %i.bat = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i750
  %i.bau = load double, ptr %i.bat, align 8, !tbaa !10 ; 4 uses
  %i.bav = tail call double @llvm.fabs.f64(double %i.bau) ; 10 uses
  %i.baw = fcmp ogt double %i.bav, f0x2000000000000000
  br i1 %i.baw, label %bb.gk, label %bb.gp

bb.gk:                                            ; preds = %.lr.ph.i749
  %i.bax = fcmp olt double %i.bav, %i.dp
  br i1 %i.bax, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.bay = tail call double @llvm.fmuladd.f64(double %i.bau, double %i.bau, double %.06473.i)
  br label %bb.gt

bb.gm:                                            ; preds = %bb.gk
  %i.baz = fcmp ogt double %i.bav, %.06075.i
  br i1 %i.baz, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.bba = fdiv double %.06075.i, %i.bav          ; 2 uses
  %i.bbb = fmul double %.06672.i, %i.bba
  %i.bbc = tail call double @llvm.fmuladd.f64(double %i.bbb, double %i.bba, double 1.000000e+00)
  br label %bb.gt

bb.go:                                            ; preds = %bb.gm
  %i.bbd = fdiv double %i.bav, %.06075.i          ; 2 uses
  %i.bbe = tail call double @llvm.fmuladd.f64(double %i.bbd, double %i.bbd, double %.06672.i)
  br label %bb.gt

bb.gp:                                            ; preds = %.lr.ph.i749
  %i.bbf = fcmp ogt double %i.bav, %.076.i
  br i1 %i.bbf, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.bbg = fdiv double %.076.i, %i.bav            ; 2 uses
  %i.bbh = fmul double %.06274.i, %i.bbg
  %i.bbi = tail call double @llvm.fmuladd.f64(double %i.bbh, double %i.bbg, double 1.000000e+00)
  br label %bb.gt

bb.gr:                                            ; preds = %bb.gp
  %i.bbj = fcmp une double %i.bau, 0.000000e+00
  br i1 %i.bbj, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bbk = fdiv double %i.bav, %.076.i            ; 2 uses
  %i.bbl = tail call double @llvm.fmuladd.f64(double %i.bbk, double %i.bbk, double %.06274.i)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gq, %bb.go, %bb.gn, %bb.gl
  %.167.i = phi double [ %.06672.i, %bb.gl ], [ %i.bbc, %bb.gn ], [ %i.bbe, %bb.go ], [ %.06672.i, %bb.gq ], [ %.06672.i, %bb.gs ], [ %.06672.i, %bb.gr ] ; 3 uses
  %.165.i = phi double [ %i.bay, %bb.gl ], [ %.06473.i, %bb.gn ], [ %.06473.i, %bb.go ], [ %.06473.i, %bb.gq ], [ %.06473.i, %bb.gs ], [ %.06473.i, %bb.gr ] ; 7 uses
  %.163.i = phi double [ %.06274.i, %bb.gl ], [ %.06274.i, %bb.gn ], [ %.06274.i, %bb.go ], [ %i.bbi, %bb.gq ], [ %i.bbl, %bb.gs ], [ %.06274.i, %bb.gr ] ; 4 uses
  %.161.i = phi double [ %.06075.i, %bb.gl ], [ %i.bav, %bb.gn ], [ %.06075.i, %bb.go ], [ %.06075.i, %bb.gq ], [ %.06075.i, %bb.gs ], [ %.06075.i, %bb.gr ] ; 4 uses
  %.1.i = phi double [ %.076.i, %bb.gl ], [ %.076.i, %bb.gn ], [ %.076.i, %bb.go ], [ %i.bav, %bb.gq ], [ %.076.i, %bb.gs ], [ %.076.i, %bb.gr ] ; 8 uses
  %indvars.iv.next.i751 = add nuw nsw i64 %indvars.iv.i750, 1 ; 2 uses
  %exitcond.not.i752 = icmp eq i64 %indvars.iv.next.i751, %i.bc
  br i1 %exitcond.not.i752, label %._crit_edge.i753, label %.lr.ph.i749, !llvm.loop !0

._crit_edge.i753:                                 ; preds = %bb.gt
  %i.bbm = fcmp une double %.167.i, 0.000000e+00
  br i1 %i.bbm, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %._crit_edge.i753
  %i.bbn = fdiv double %.165.i, %.161.i
  %i.bbo = fdiv double %i.bbn, %.161.i
  %i.bbp = fadd double %.167.i, %i.bbo
  %i.bbq = tail call double @sqrt(double noundef %i.bbp) #11
  %i.bbr = fmul double %.161.i, %i.bbq
  br label %_Z8lm_enormiPKd.exit

bb.gv:                                            ; preds = %._crit_edge.i753
  %i.bbs = fcmp une double %.165.i, 0.000000e+00
  br i1 %i.bbs, label %bb.gw, label %.thread.i746

bb.gw:                                            ; preds = %bb.gv
  %i.bbt = fcmp ult double %.165.i, %.1.i
  br i1 %i.bbt, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bbu = fdiv double %.1.i, %.165.i
  %i.bbv = fmul double %.163.i, %.1.i
  %i.bbw = tail call double @llvm.fmuladd.f64(double %i.bbu, double %i.bbv, double 1.000000e+00)
  %i.bbx = fmul double %.165.i, %i.bbw
  %i.bby = tail call double @sqrt(double noundef %i.bbx) #11
  br label %_Z8lm_enormiPKd.exit

bb.gy:                                            ; preds = %bb.gw
  %i.bbz = fdiv double %.165.i, %.1.i
  %i.bca = tail call double @llvm.fmuladd.f64(double %.1.i, double %.163.i, double %i.bbz)
  %i.bcb = fmul double %.1.i, %i.bca
  %i.bcc = tail call double @sqrt(double noundef %i.bcb) #11
  br label %_Z8lm_enormiPKd.exit

.thread.i746:                                     ; preds = %bb.gv
  %i.bcd = tail call double @sqrt(double noundef %.163.i) #11
  %i.bce = fmul double %.1.i, %i.bcd
  br label %_Z8lm_enormiPKd.exit

_Z8lm_enormiPKd.exit:                             ; preds = %bb.gu, %bb.gx, %bb.gy, %.thread.i746
  %.069.i = phi double [ %i.bbr, %bb.gu ], [ %i.bby, %bb.gx ], [ %i.bcc, %bb.gy ], [ %i.bce, %.thread.i746 ] ; 7 uses
  %i.bcf = tail call double @llvm.fabs.f64(double %.069.i)
  %i.bcg = fcmp ueq double %i.bcf, +inf
  br i1 %i.bcg, label %bb.gz, label %.lr.ph983.preheader

bb.gz:                                            ; preds = %_Z8lm_enormiPKd.exit
  %i.bch = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not682 = icmp eq i32 %i.bch, 0
  br i1 %.not682, label %.thread.sink.split, label %.thread.sink.split.sink.split

.lr.ph983.preheader:                              ; preds = %_Z8lm_enormiPKd.exit
  %i.bci = fdiv double %.069.i, %.1609            ; 2 uses
  %i.bcj = fmul double %.6, %i.bci
  %i.bck = fmul double %i.bci, %i.bcj             ; 2 uses
  br label %.lr.ph983

.lr.ph983:                                        ; preds = %.lr.ph983.preheader, %.loopexit1760
  %indvars.iv1170 = phi i64 [ 0, %.lr.ph983.preheader ], [ %indvars.iv.next1171, %.loopexit1760 ] ; 7 uses
  %indvars.iv1168 = phi i64 [ 1, %.lr.ph983.preheader ], [ %indvars.iv.next1169, %.loopexit1760 ] ; 6 uses
  %i.bcl = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1170
  store double 0.000000e+00, ptr %i.bcl, align 8, !tbaa !10
  %i.bcm = mul nuw nsw i64 %indvars.iv1170, %i.dq
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1170
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !149
  %i.bcp = sext i32 %i.bco to i64                 ; 2 uses
  %i.bcq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bcp ; 5 uses
  %invariant.gep1362 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bcm ; 5 uses
  %min.iters.check1449 = icmp samesign ult i64 %indvars.iv1168, 4
  br i1 %min.iters.check1449, label %scalar.ph1448.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph983
  %i.bcr = mul i64 %i.dy, %indvars.iv1170
  %scevgep1442 = getelementptr i8, ptr %i.gy, i64 %i.bcr
  %i.bcs = shl i64 %indvars.iv1170, 3
  %scevgep = getelementptr i8, ptr %i.hb, i64 %i.bcs ; 2 uses
  %i.bct = shl nsw i64 %i.bcp, 3
  %scevgep1444 = getelementptr i8, ptr %scevgep1443, i64 %i.bct
  %bound0 = icmp ult ptr %i.br, %scevgep1442
  %bound1 = icmp ult ptr %invariant.gep1362, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound01445 = icmp ult ptr %i.br, %scevgep1444
  %bound11446 = icmp ult ptr %i.bcq, %scevgep
  %found.conflict1447 = and i1 %bound01445, %bound11446
  %conflict.rdx = or i1 %found.conflict, %found.conflict1447
  br i1 %conflict.rdx, label %scalar.ph1448.preheader, label %vector.ph1450

vector.ph1450:                                    ; preds = %vector.memcheck
  %n.vec1451 = and i64 %indvars.iv1168, 9223372036854775804 ; 3 uses
  %i.bcu = load double, ptr %i.bcq, align 8, !tbaa !10, !alias.scope !165
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bcu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1452

vector.body1452:                                  ; preds = %vector.body1452, %vector.ph1450
  %index1453 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1458, %vector.body1452 ] ; 3 uses
  %i.bcv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1362, i64 %index1453 ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 16
  %wide.load1454 = load <2 x double>, ptr %i.bcv, align 8, !tbaa !10, !alias.scope !166
  %wide.load1455 = load <2 x double>, ptr %i.bcw, align 8, !tbaa !10, !alias.scope !166
  %i.bcx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index1453 ; 3 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 16 ; 2 uses
  %wide.load1456 = load <2 x double>, ptr %i.bcx, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %wide.load1457 = load <2 x double>, ptr %i.bcy, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %i.bcz = fneg <2 x double> %wide.load1454
  %i.bda = fneg <2 x double> %wide.load1455
  %i.bdb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bcz, <2 x double> %broadcast.splat, <2 x double> %wide.load1456)
  %i.bdc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bda, <2 x double> %broadcast.splat, <2 x double> %wide.load1457)
  store <2 x double> %i.bdb, ptr %i.bcx, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  store <2 x double> %i.bdc, ptr %i.bcy, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %index.next1458 = add nuw i64 %index1453, 4     ; 2 uses
  %i.bdd = icmp eq i64 %index.next1458, %n.vec1451
  br i1 %i.bdd, label %middle.block1459, label %vector.body1452, !llvm.loop !113

middle.block1459:                                 ; preds = %vector.body1452
  %cmp.n1460 = icmp eq i64 %indvars.iv1168, %n.vec1451
  br i1 %cmp.n1460, label %.loopexit1760, label %scalar.ph1448.preheader

scalar.ph1448.preheader:                          ; preds = %vector.memcheck, %.lr.ph983, %middle.block1459
  %indvars.iv1161.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph983 ], [ %n.vec1451, %middle.block1459 ] ; 5 uses
  %xtraiter1886 = and i64 %indvars.iv1168, 1
  %lcmp.mod1887.not = icmp eq i64 %xtraiter1886, 0
  br i1 %lcmp.mod1887.not, label %scalar.ph1448.prol.loopexit, label %scalar.ph1448.prol

scalar.ph1448.prol:                               ; preds = %scalar.ph1448.preheader
  %gep1363.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1362, i64 %indvars.iv1161.ph
  %i.bde = load double, ptr %gep1363.prol, align 8, !tbaa !10
  %i.bdf = load double, ptr %i.bcq, align 8, !tbaa !10
  %i.bdg = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1161.ph ; 2 uses
  %i.bdh = load double, ptr %i.bdg, align 8, !tbaa !10
  %i.bdi = fneg double %i.bde
  %i.bdj = tail call double @llvm.fmuladd.f64(double %i.bdi, double %i.bdf, double %i.bdh)
  store double %i.bdj, ptr %i.bdg, align 8, !tbaa !10
  %indvars.iv.next1162.prol = or disjoint i64 %indvars.iv1161.ph, 1
  br label %scalar.ph1448.prol.loopexit

scalar.ph1448.prol.loopexit:                      ; preds = %scalar.ph1448.prol, %scalar.ph1448.preheader
  %indvars.iv1161.unr = phi i64 [ %indvars.iv1161.ph, %scalar.ph1448.preheader ], [ %indvars.iv.next1162.prol, %scalar.ph1448.prol ]
  %i.bdk = icmp eq i64 %indvars.iv1170, %indvars.iv1161.ph
  br i1 %i.bdk, label %.loopexit1760, label %scalar.ph1448

scalar.ph1448:                                    ; preds = %scalar.ph1448.prol.loopexit, %scalar.ph1448
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162.1, %scalar.ph1448 ], [ %indvars.iv1161.unr, %scalar.ph1448.prol.loopexit ] ; 4 uses
  %gep1363 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1362, i64 %indvars.iv1161
  %i.bdl = load double, ptr %gep1363, align 8, !tbaa !10
  %i.bdm = load double, ptr %i.bcq, align 8, !tbaa !10
  %i.bdn = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1161 ; 2 uses
  %i.bdo = load double, ptr %i.bdn, align 8, !tbaa !10
  %i.bdp = fneg double %i.bdl
  %i.bdq = tail call double @llvm.fmuladd.f64(double %i.bdp, double %i.bdm, double %i.bdo)
  store double %i.bdq, ptr %i.bdn, align 8, !tbaa !10
  %indvars.iv.next1162 = add nuw nsw i64 %indvars.iv1161, 1 ; 2 uses
  %gep1363.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1362, i64 %indvars.iv.next1162
  %i.bdr = load double, ptr %gep1363.1, align 8, !tbaa !10
  %i.bds = load double, ptr %i.bcq, align 8, !tbaa !10
  %i.bdt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next1162 ; 2 uses
  %i.bdu = load double, ptr %i.bdt, align 8, !tbaa !10
  %i.bdv = fneg double %i.bdr
  %i.bdw = tail call double @llvm.fmuladd.f64(double %i.bdv, double %i.bds, double %i.bdu)
  store double %i.bdw, ptr %i.bdt, align 8, !tbaa !10
  %indvars.iv.next1162.1 = add nuw nsw i64 %indvars.iv1161, 2 ; 2 uses
  %exitcond1167.not.1 = icmp eq i64 %indvars.iv.next1162.1, %indvars.iv1168
  br i1 %exitcond1167.not.1, label %.loopexit1760, label %scalar.ph1448, !llvm.loop !114

.loopexit1760:                                    ; preds = %scalar.ph1448.prol.loopexit, %scalar.ph1448, %middle.block1459
  %indvars.iv.next1171 = add nuw nsw i64 %indvars.iv1170, 1 ; 2 uses
  %indvars.iv.next1169 = add nuw nsw i64 %indvars.iv1168, 1
  %exitcond1177.not = icmp eq i64 %indvars.iv.next1171, %i.dr
  br i1 %exitcond1177.not, label %.lr.ph.i760, label %.lr.ph983, !llvm.loop !115

.lr.ph.i760:                                      ; preds = %.loopexit1760, %bb.hj
  %indvars.iv.i761 = phi i64 [ %indvars.iv.next.i772, %bb.hj ], [ 0, %.loopexit1760 ] ; 2 uses
  %.076.i762 = phi double [ %.1.i771, %bb.hj ], [ 0.000000e+00, %.loopexit1760 ] ; 8 uses
  %.06075.i763 = phi double [ %.161.i770, %bb.hj ], [ 0.000000e+00, %.loopexit1760 ] ; 8 uses
  %.06274.i764 = phi double [ %.163.i769, %bb.hj ], [ 0.000000e+00, %.loopexit1760 ] ; 6 uses
  %.06473.i765 = phi double [ %.165.i768, %bb.hj ], [ 0.000000e+00, %.loopexit1760 ] ; 6 uses
  %.06672.i766 = phi double [ %.167.i767, %bb.hj ], [ 0.000000e+00, %.loopexit1760 ] ; 6 uses
  %i.bdx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i761
  %i.bdy = load double, ptr %i.bdx, align 8, !tbaa !10 ; 4 uses
  %i.bdz = tail call double @llvm.fabs.f64(double %i.bdy) ; 10 uses
  %i.bea = fcmp ogt double %i.bdz, f0x2000000000000000
  br i1 %i.bea, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %.lr.ph.i760
  %i.beb = fcmp olt double %i.bdz, %i.dp
  br i1 %i.beb, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bec = tail call double @llvm.fmuladd.f64(double %i.bdy, double %i.bdy, double %.06473.i765)
  br label %bb.hj

bb.hc:                                            ; preds = %bb.ha
  %i.bed = fcmp ogt double %i.bdz, %.06075.i763
  br i1 %i.bed, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.bee = fdiv double %.06075.i763, %i.bdz       ; 2 uses
  %i.bef = fmul double %.06672.i766, %i.bee
  %i.beg = tail call double @llvm.fmuladd.f64(double %i.bef, double %i.bee, double 1.000000e+00)
  br label %bb.hj

bb.he:                                            ; preds = %bb.hc
  %i.beh = fdiv double %i.bdz, %.06075.i763       ; 2 uses
  %i.bei = tail call double @llvm.fmuladd.f64(double %i.beh, double %i.beh, double %.06672.i766)
  br label %bb.hj

bb.hf:                                            ; preds = %.lr.ph.i760
  %i.bej = fcmp ogt double %i.bdz, %.076.i762
  br i1 %i.bej, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.bek = fdiv double %.076.i762, %i.bdz         ; 2 uses
  %i.bel = fmul double %.06274.i764, %i.bek
  %i.bem = tail call double @llvm.fmuladd.f64(double %i.bel, double %i.bek, double 1.000000e+00)
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  %i.ben = fcmp une double %i.bdy, 0.000000e+00
  br i1 %i.ben, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.beo = fdiv double %i.bdz, %.076.i762         ; 2 uses
  %i.bep = tail call double @llvm.fmuladd.f64(double %i.beo, double %i.beo, double %.06274.i764)
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.he, %bb.hd, %bb.hb
  %.167.i767 = phi double [ %.06672.i766, %bb.hb ], [ %i.beg, %bb.hd ], [ %i.bei, %bb.he ], [ %.06672.i766, %bb.hg ], [ %.06672.i766, %bb.hi ], [ %.06672.i766, %bb.hh ] ; 3 uses
  %.165.i768 = phi double [ %i.bec, %bb.hb ], [ %.06473.i765, %bb.hd ], [ %.06473.i765, %bb.he ], [ %.06473.i765, %bb.hg ], [ %.06473.i765, %bb.hi ], [ %.06473.i765, %bb.hh ] ; 7 uses
  %.163.i769 = phi double [ %.06274.i764, %bb.hb ], [ %.06274.i764, %bb.hd ], [ %.06274.i764, %bb.he ], [ %i.bem, %bb.hg ], [ %i.bep, %bb.hi ], [ %.06274.i764, %bb.hh ] ; 4 uses
  %.161.i770 = phi double [ %.06075.i763, %bb.hb ], [ %i.bdz, %bb.hd ], [ %.06075.i763, %bb.he ], [ %.06075.i763, %bb.hg ], [ %.06075.i763, %bb.hi ], [ %.06075.i763, %bb.hh ] ; 4 uses
  %.1.i771 = phi double [ %.076.i762, %bb.hb ], [ %.076.i762, %bb.hd ], [ %.076.i762, %bb.he ], [ %i.bdz, %bb.hg ], [ %.076.i762, %bb.hi ], [ %.076.i762, %bb.hh ] ; 8 uses
  %indvars.iv.next.i772 = add nuw nsw i64 %indvars.iv.i761, 1 ; 2 uses
  %exitcond.not.i773 = icmp eq i64 %indvars.iv.next.i772, %i.bc
  br i1 %exitcond.not.i773, label %._crit_edge.i774, label %.lr.ph.i760, !llvm.loop !0

._crit_edge.i774:                                 ; preds = %bb.hj
  %i.beq = fcmp une double %.167.i767, 0.000000e+00
  br i1 %i.beq, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %._crit_edge.i774
  %i.ber = fdiv double %.165.i768, %.161.i770
  %i.bes = fdiv double %i.ber, %.161.i770
  %i.bet = fadd double %.167.i767, %i.bes
  %i.beu = tail call double @sqrt(double noundef %i.bet) #11
  %i.bev = fmul double %.161.i770, %i.beu
  br label %_Z8lm_enormiPKd.exit775

bb.hl:                                            ; preds = %._crit_edge.i774
  %i.bew = fcmp une double %.165.i768, 0.000000e+00
  br i1 %i.bew, label %bb.hm, label %.thread.i754

bb.hm:                                            ; preds = %bb.hl
  %i.bex = fcmp ult double %.165.i768, %.1.i771
  br i1 %i.bex, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.bey = fdiv double %.1.i771, %.165.i768
  %i.bez = fmul double %.163.i769, %.1.i771
  %i.bfa = tail call double @llvm.fmuladd.f64(double %i.bey, double %i.bez, double 1.000000e+00)
  %i.bfb = fmul double %.165.i768, %i.bfa
  %i.bfc = tail call double @sqrt(double noundef %i.bfb) #11
  br label %_Z8lm_enormiPKd.exit775

bb.ho:                                            ; preds = %bb.hm
  %i.bfd = fdiv double %.165.i768, %.1.i771
  %i.bfe = tail call double @llvm.fmuladd.f64(double %.1.i771, double %.163.i769, double %i.bfd)
  %i.bff = fmul double %.1.i771, %i.bfe
  %i.bfg = tail call double @sqrt(double noundef %i.bff) #11
  br label %_Z8lm_enormiPKd.exit775

.thread.i754:                                     ; preds = %bb.hl
  %i.bfh = tail call double @sqrt(double noundef %.163.i769) #11
  %i.bfi = fmul double %.1.i771, %i.bfh
  br label %_Z8lm_enormiPKd.exit775

_Z8lm_enormiPKd.exit775:                          ; preds = %bb.hk, %bb.hn, %bb.ho, %.thread.i754
  %.069.i757 = phi double [ %i.bev, %bb.hk ], [ %i.bfc, %bb.hn ], [ %i.bfg, %bb.ho ], [ %i.bfi, %.thread.i754 ]
  br label %.lr.ph.i782

.lr.ph.i782:                                      ; preds = %_Z8lm_enormiPKd.exit775, %bb.hy
  %indvars.iv.i783 = phi i64 [ %indvars.iv.next.i794, %bb.hy ], [ 0, %_Z8lm_enormiPKd.exit775 ] ; 2 uses
  %.076.i784 = phi double [ %.1.i793, %bb.hy ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit775 ] ; 8 uses
  %.06075.i785 = phi double [ %.161.i792, %bb.hy ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit775 ] ; 8 uses
  %.06274.i786 = phi double [ %.163.i791, %bb.hy ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit775 ] ; 6 uses
  %.06473.i787 = phi double [ %.165.i790, %bb.hy ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit775 ] ; 6 uses
  %.06672.i788 = phi double [ %.167.i789, %bb.hy ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit775 ] ; 6 uses
  %i.bfj = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i783
  %i.bfk = load double, ptr %i.bfj, align 8, !tbaa !10 ; 4 uses
  %i.bfl = tail call double @llvm.fabs.f64(double %i.bfk) ; 10 uses
  %i.bfm = fcmp ogt double %i.bfl, f0x2000000000000000
  br i1 %i.bfm, label %bb.hp, label %bb.hu

bb.hp:                                            ; preds = %.lr.ph.i782
  %i.bfn = fcmp olt double %i.bfl, %i.dp
  br i1 %i.bfn, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.bfo = tail call double @llvm.fmuladd.f64(double %i.bfk, double %i.bfk, double %.06473.i787)
  br label %bb.hy

bb.hr:                                            ; preds = %bb.hp
  %i.bfp = fcmp ogt double %i.bfl, %.06075.i785
  br i1 %i.bfp, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.bfq = fdiv double %.06075.i785, %i.bfl       ; 2 uses
  %i.bfr = fmul double %.06672.i788, %i.bfq
  %i.bfs = tail call double @llvm.fmuladd.f64(double %i.bfr, double %i.bfq, double 1.000000e+00)
  br label %bb.hy

bb.ht:                                            ; preds = %bb.hr
  %i.bft = fdiv double %i.bfl, %.06075.i785       ; 2 uses
  %i.bfu = tail call double @llvm.fmuladd.f64(double %i.bft, double %i.bft, double %.06672.i788)
  br label %bb.hy

bb.hu:                                            ; preds = %.lr.ph.i782
  %i.bfv = fcmp ogt double %i.bfl, %.076.i784
  br i1 %i.bfv, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.bfw = fdiv double %.076.i784, %i.bfl         ; 2 uses
  %i.bfx = fmul double %.06274.i786, %i.bfw
  %i.bfy = tail call double @llvm.fmuladd.f64(double %i.bfx, double %i.bfw, double 1.000000e+00)
  br label %bb.hy

bb.hw:                                            ; preds = %bb.hu
  %i.bfz = fcmp une double %i.bfk, 0.000000e+00
  br i1 %i.bfz, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.bga = fdiv double %i.bfl, %.076.i784         ; 2 uses
  %i.bgb = tail call double @llvm.fmuladd.f64(double %i.bga, double %i.bga, double %.06274.i786)
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw, %bb.hv, %bb.ht, %bb.hs, %bb.hq
  %.167.i789 = phi double [ %.06672.i788, %bb.hq ], [ %i.bfs, %bb.hs ], [ %i.bfu, %bb.ht ], [ %.06672.i788, %bb.hv ], [ %.06672.i788, %bb.hx ], [ %.06672.i788, %bb.hw ] ; 3 uses
  %.165.i790 = phi double [ %i.bfo, %bb.hq ], [ %.06473.i787, %bb.hs ], [ %.06473.i787, %bb.ht ], [ %.06473.i787, %bb.hv ], [ %.06473.i787, %bb.hx ], [ %.06473.i787, %bb.hw ] ; 7 uses
  %.163.i791 = phi double [ %.06274.i786, %bb.hq ], [ %.06274.i786, %bb.hs ], [ %.06274.i786, %bb.ht ], [ %i.bfy, %bb.hv ], [ %i.bgb, %bb.hx ], [ %.06274.i786, %bb.hw ] ; 4 uses
  %.161.i792 = phi double [ %.06075.i785, %bb.hq ], [ %i.bfl, %bb.hs ], [ %.06075.i785, %bb.ht ], [ %.06075.i785, %bb.hv ], [ %.06075.i785, %bb.hx ], [ %.06075.i785, %bb.hw ] ; 4 uses
  %.1.i793 = phi double [ %.076.i784, %bb.hq ], [ %.076.i784, %bb.hs ], [ %.076.i784, %bb.ht ], [ %i.bfl, %bb.hv ], [ %.076.i784, %bb.hx ], [ %.076.i784, %bb.hw ] ; 8 uses
  %indvars.iv.next.i794 = add nuw nsw i64 %indvars.iv.i783, 1 ; 2 uses
  %exitcond.not.i795 = icmp eq i64 %indvars.iv.next.i794, %i.bc
  br i1 %exitcond.not.i795, label %._crit_edge.i796, label %.lr.ph.i782, !llvm.loop !0

._crit_edge.i796:                                 ; preds = %bb.hy
  %i.bgc = fdiv double %.069.i757, %.1609
  %i.bgd = fcmp une double %.167.i789, 0.000000e+00
  br i1 %i.bgd, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %._crit_edge.i796
  %i.bge = fdiv double %.165.i790, %.161.i792
  %i.bgf = fdiv double %i.bge, %.161.i792
  %i.bgg = fadd double %.167.i789, %i.bgf
  %i.bgh = tail call double @sqrt(double noundef %i.bgg) #11
  %i.bgi = fmul double %.161.i792, %i.bgh
  br label %_Z8lm_enormiPKd.exit797

bb.ia:                                            ; preds = %._crit_edge.i796
  %i.bgj = fcmp une double %.165.i790, 0.000000e+00
  br i1 %i.bgj, label %bb.ib, label %.thread.i776

bb.ib:                                            ; preds = %bb.ia
  %i.bgk = fcmp ult double %.165.i790, %.1.i793
  br i1 %i.bgk, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.bgl = fdiv double %.1.i793, %.165.i790
  %i.bgm = fmul double %.163.i791, %.1.i793
  %i.bgn = tail call double @llvm.fmuladd.f64(double %i.bgl, double %i.bgm, double 1.000000e+00)
  %i.bgo = fmul double %.165.i790, %i.bgn
  %i.bgp = tail call double @sqrt(double noundef %i.bgo) #11
  br label %_Z8lm_enormiPKd.exit797

bb.id:                                            ; preds = %bb.ib
  %i.bgq = fdiv double %.165.i790, %.1.i793
  %i.bgr = tail call double @llvm.fmuladd.f64(double %.1.i793, double %.163.i791, double %i.bgq)
  %i.bgs = fmul double %.1.i793, %i.bgr
  %i.bgt = tail call double @sqrt(double noundef %i.bgs) #11
  br label %_Z8lm_enormiPKd.exit797

.thread.i776:                                     ; preds = %bb.ia
  %i.bgu = tail call double @sqrt(double noundef %.163.i791) #11
  %i.bgv = fmul double %.1.i793, %i.bgu
  br label %_Z8lm_enormiPKd.exit797

_Z8lm_enormiPKd.exit797:                          ; preds = %bb.hz, %bb.ic, %bb.id, %.thread.i776
  %.069.i779 = phi double [ %i.bgi, %bb.hz ], [ %i.bgp, %bb.ic ], [ %i.bgt, %bb.id ], [ %i.bgv, %.thread.i776 ]
  %i.bgw = fdiv double %.069.i779, %.1609
  %i.bgx = fmul double %i.bgc, %i.bgw             ; 3 uses
  %i.bgy = tail call double @llvm.fabs.f64(double %i.bgx)
  %i.bgz = fcmp ueq double %i.bgy, +inf
  br i1 %i.bgz, label %bb.ie, label %.lr.ph986.preheader

bb.ie:                                            ; preds = %_Z8lm_enormiPKd.exit797
  %i.bha = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not684 = icmp eq i32 %i.bha, 0
  br i1 %.not684, label %.thread.sink.split, label %.thread.sink.split.sink.split

.lr.ph986.preheader:                              ; preds = %_Z8lm_enormiPKd.exit797
  %i.bhb = tail call double @llvm.fmuladd.f64(double %i.bck, double 2.000000e+00, double %i.bgx) ; 5 uses
  %i.bhc = fneg double %i.bgx
  %i.bhd = fsub double %i.bhc, %i.bck             ; 3 uses
  %i.bhe = icmp eq i32 %.0, 0
  %or.cond.not848 = select i1 %i.xj, i1 %i.bhe, i1 false
  %i.bhf = fcmp olt double %.069.i, %.3598
  %or.cond710 = and i1 %or.cond.not848, %i.bhf
  %.4599 = select i1 %or.cond710, double %.069.i, double %.3598 ; 4 uses
  br i1 %min.iters.check1429, label %.lr.ph986.preheader1768, label %vector.body1432

vector.body1432:                                  ; preds = %.lr.ph986.preheader, %vector.body1432
  %index1433 = phi i64 [ %index.next1438, %vector.body1432 ], [ 0, %.lr.ph986.preheader ] ; 4 uses
  %i.bhg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index1433 ; 2 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 16
  %wide.load1434 = load <2 x double>, ptr %i.bhg, align 8, !tbaa !10
  %wide.load1435 = load <2 x double>, ptr %i.bhh, align 8, !tbaa !10
  %i.bhi = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index1433 ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 16
  %wide.load1436 = load <2 x double>, ptr %i.bhi, align 8, !tbaa !10
  %wide.load1437 = load <2 x double>, ptr %i.bhj, align 8, !tbaa !10
  %i.bhk = fsub <2 x double> %wide.load1434, %wide.load1436
  %i.bhl = fsub <2 x double> %wide.load1435, %wide.load1437
  %i.bhm = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index1433 ; 2 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 16
  store <2 x double> %i.bhk, ptr %i.bhm, align 8, !tbaa !10
  store <2 x double> %i.bhl, ptr %i.bhn, align 8, !tbaa !10
  %index.next1438 = add nuw i64 %index1433, 4     ; 2 uses
  %i.bho = icmp eq i64 %index.next1438, %n.vec1431
  br i1 %i.bho, label %middle.block1439, label %vector.body1432, !llvm.loop !116

middle.block1439:                                 ; preds = %vector.body1432
  br i1 %cmp.n1440, label %._crit_edge987, label %.lr.ph986.preheader1768

.lr.ph986.preheader1768:                          ; preds = %.lr.ph986.preheader, %middle.block1439
  %indvars.iv1178.ph = phi i64 [ 0, %.lr.ph986.preheader ], [ %n.vec1431, %middle.block1439 ]
  br label %.lr.ph986

.lr.ph986:                                        ; preds = %.lr.ph986.preheader1768, %.lr.ph986
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %.lr.ph986 ], [ %indvars.iv1178.ph, %.lr.ph986.preheader1768 ] ; 4 uses
  %i.bhp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1178
  %i.bhq = load double, ptr %i.bhp, align 8, !tbaa !10
  %i.bhr = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv1178
  %i.bhs = load double, ptr %i.bhr, align 8, !tbaa !10
  %i.bht = fsub double %i.bhq, %i.bhs
  %i.bhu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv1178
  store double %i.bht, ptr %i.bhu, align 8, !tbaa !10
  %indvars.iv.next1179 = add nuw nsw i64 %indvars.iv1178, 1 ; 2 uses
  %exitcond1183.not = icmp eq i64 %indvars.iv.next1179, %i.dr
  br i1 %exitcond1183.not, label %._crit_edge987, label %.lr.ph986, !llvm.loop !117

._crit_edge987:                                   ; preds = %.lr.ph986, %middle.block1439
  tail call void %7(ptr noundef nonnull %i.bq, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.r)
  %i.bhv = load i32, ptr %i.s, align 8, !tbaa !139
  %i.bhw = add nsw i32 %i.bhv, 1
  store i32 %i.bhw, ptr %i.s, align 8, !tbaa !139
  %i.bhx = load i32, ptr %i.r, align 8, !tbaa !138
  %.not686 = icmp eq i32 %i.bhx, 0
  br i1 %.not686, label %bb.if, label %.thread

bb.if:                                            ; preds = %._crit_edge987
  %i.bhy = tail call noundef double @_Z8lm_fnormiPKdS0_(i32 noundef %4, ptr noundef nonnull %i.bs, ptr noundef %5) ; 4 uses
  %i.bhz = fmul double %i.bhy, 1.000000e-01       ; 2 uses
  %i.bia = fcmp olt double %i.bhz, %.1609
  %i.bib = fdiv double %i.bhy, %.1609             ; 2 uses
  %i.bic = fneg double %i.bib
  %i.bid = tail call double @llvm.fmuladd.f64(double %i.bic, double %i.bib, double 1.000000e+00)
  %.0612 = select i1 %i.bia, double %i.bid, double -1.000000e+00 ; 5 uses
  %i.bie = fcmp une double %i.bhb, 0.000000e+00
  %i.bif = fdiv double %.0612, %i.bhb
  %i.big = select i1 %i.bie, double %i.bif, double 0.000000e+00 ; 6 uses
  %i.bih = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.bii = and i32 %i.bih, 32
  %.not687 = icmp eq i32 %i.bii, 0
  br i1 %.not687, label %.loopexit858, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  br i1 %.not674, label %.preheader857, label %.preheader859

.preheader859:                                    ; preds = %bb.ig
  br i1 %.not1369, label %.loopexit858, label %.lr.ph989

.preheader857:                                    ; preds = %bb.ig
  br i1 %.not1369, label %.loopexit858, label %.lr.ph991

.lr.ph989:                                        ; preds = %.preheader859, %.lr.ph989
  %indvars.iv1184 = phi i64 [ %indvars.iv.next1185, %.lr.ph989 ], [ 0, %.preheader859 ] ; 4 uses
  %i.bij = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1184
  %i.bik = load double, ptr %i.bij, align 8, !tbaa !10 ; 2 uses
  %i.bil = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1184
  %i.bim = load double, ptr %i.bil, align 8, !tbaa !10
  %i.bin = fsub double %i.bim, %i.bik
  %i.bio = trunc nuw nsw i64 %indvars.iv1184 to i32
  %i.bip = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.35, i32 noundef %i.bio, double noundef %i.bik, double noundef %i.bin) #11 ; 0 uses
  %indvars.iv.next1185 = add nuw nsw i64 %indvars.iv1184, 1 ; 2 uses
  %exitcond1188.not = icmp eq i64 %indvars.iv.next1185, %i.bh
  br i1 %exitcond1188.not, label %.loopexit858, label %.lr.ph989, !llvm.loop !118

.lr.ph991:                                        ; preds = %.preheader857, %.lr.ph991
  %indvars.iv1189 = phi i64 [ %indvars.iv.next1190, %.lr.ph991 ], [ 0, %.preheader857 ] ; 3 uses
  %i.biq = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1189
  %i.bir = load double, ptr %i.biq, align 8, !tbaa !10
  %i.bis = trunc nuw nsw i64 %indvars.iv1189 to i32
  %i.bit = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.36, i32 noundef %i.bis, double noundef %i.bir) #11 ; 0 uses
  %indvars.iv.next1190 = add nuw nsw i64 %indvars.iv1189, 1 ; 2 uses
  %exitcond1193.not = icmp eq i64 %indvars.iv.next1190, %i.bh
  br i1 %exitcond1193.not, label %.loopexit858, label %.lr.ph991, !llvm.loop !119

.loopexit858:                                     ; preds = %.lr.ph989, %.lr.ph991, %.preheader859, %.preheader857, %bb.if
  %i.biu = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.biv = and i32 %i.biu, 2
  %.not688 = icmp eq i32 %i.biv, 0
  br i1 %.not688, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %.loopexit858
  %i.biw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.48, i32 noundef %.0592, i32 noundef %.0, double noundef %.6, double noundef %i.bhb, double noundef %.0612, double noundef %i.big, double noundef %i.bhd, double noundef %.4599, double noundef %.069.i, double noundef %i.bhy) #11 ; 0 uses
  br i1 %i.di, label %.lr.ph994, label %._crit_edge995

.lr.ph994:                                        ; preds = %bb.ih, %.lr.ph994
  %indvars.iv1194 = phi i64 [ %indvars.iv.next1195, %.lr.ph994 ], [ 0, %bb.ih ] ; 2 uses
  %i.bix = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv1194
  %i.biy = load double, ptr %i.bix, align 8, !tbaa !10
  %i.biz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.49, double noundef %i.biy) #11 ; 0 uses
  %indvars.iv.next1195 = add nuw nsw i64 %indvars.iv1194, 1 ; 2 uses
  %exitcond1198.not = icmp eq i64 %indvars.iv.next1195, %wide.trip.count1197
  br i1 %exitcond1198.not, label %._crit_edge995, label %.lr.ph994, !llvm.loop !120

._crit_edge995:                                   ; preds = %.lr.ph994, %bb.ih
  %fputc690 = tail call i32 @fputc(i32 10, ptr %i.p) ; 0 uses
  br label %bb.ii

bb.ii:                                            ; preds = %._crit_edge995, %.loopexit858
  %i.bja = fcmp ugt double %i.big, 2.500000e-01
  br i1 %i.bja, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bjb = fcmp ult double %.0612, 0.000000e+00
  %i.bjc = fmul double %i.bhd, 5.000000e-01
  %i.bjd = fcmp oge double %i.bhz, %.1609
  %i.bje = tail call double @llvm.fmuladd.f64(double %.0612, double 5.000000e-01, double %i.bhd)
  %i.bjf = insertelement <2 x double> poison, double %i.bjc, i64 0
  %i.bjg = insertelement <2 x double> %i.bjf, double %.069.i, i64 1
  %i.bjh = insertelement <2 x double> <double poison, double 1.000000e-01>, double %i.bje, i64 0
  %i.bji = fdiv <2 x double> %i.bjg, %i.bjh       ; 2 uses
  %i.bjj = extractelement <2 x double> %i.bji, i64 0
  %.0602 = select i1 %i.bjb, double %i.bjj, double 5.000000e-01 ; 2 uses
  %i.bjk = fcmp olt double %.0602, 1.000000e-01
  %or.cond711 = select i1 %i.bjd, i1 true, i1 %i.bjk
  %.1603 = select i1 %or.cond711, double 1.000000e-01, double %.0602 ; 2 uses
  %i.bjl = extractelement <2 x double> %i.bji, i64 1 ; 2 uses
  %i.bjm = fcmp ole double %.4599, %i.bjl
  %i.bjn = select i1 %i.bjm, double %.4599, double %i.bjl
  %i.bjo = fmul double %i.bjn, %.1603
  %i.bjp = fdiv double %.6, %.1603
  br label %bb.im

bb.ik:                                            ; preds = %bb.ii
  %i.bjq = fcmp oeq double %.6, 0.000000e+00
  %i.bjr = fcmp oge double %i.big, 7.500000e-01
  %or.cond3 = select i1 %i.bjq, i1 true, i1 %i.bjr
  br i1 %or.cond3, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.bjs = fmul nnan double %.069.i, 2.000000e+00
  %i.bjt = fmul double %.6, 5.000000e-01
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik, %bb.ij
  %.2837 = phi double [ %i.bjt, %bb.il ], [ %.6, %bb.ik ], [ %i.bjp, %bb.ij ] ; 2 uses
  %.5600 = phi double [ %i.bjs, %bb.il ], [ %.4599, %bb.ik ], [ %i.bjo, %bb.ij ] ; 4 uses
  %i.bju = fcmp ult double %i.big, 1.000000e-04   ; 2 uses
  br i1 %i.bju, label %bb.je, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.bjv = load i32, ptr %i.ar, align 4, !tbaa !145
  %.not691 = icmp eq i32 %i.bjv, 0
  br i1 %.not691, label %.lr.ph999.preheader, label %.lr.ph997.preheader

.lr.ph997.preheader:                              ; preds = %bb.in
  br i1 %min.iters.check1415, label %.lr.ph997.preheader1766, label %vector.body1418

vector.body1418:                                  ; preds = %.lr.ph997.preheader, %vector.body1418
  %index1419 = phi i64 [ %index.next1424, %vector.body1418 ], [ 0, %.lr.ph997.preheader ] ; 4 uses
  %i.bjw = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index1419 ; 3 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 16 ; 2 uses
  %wide.load1420 = load <2 x double>, ptr %i.bjw, align 8, !tbaa !10 ; 2 uses
  %wide.load1421 = load <2 x double>, ptr %i.bjx, align 8, !tbaa !10 ; 2 uses
  %i.bjy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index1419 ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 16
  store <2 x double> %wide.load1420, ptr %i.bjy, align 8, !tbaa !10
  store <2 x double> %wide.load1421, ptr %i.bjz, align 8, !tbaa !10
  %i.bka = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1419 ; 2 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bka, i64 16
  %wide.load1422 = load <2 x double>, ptr %i.bka, align 8, !tbaa !10
  %wide.load1423 = load <2 x double>, ptr %i.bkb, align 8, !tbaa !10
  %i.bkc = fmul <2 x double> %wide.load1420, %wide.load1422
  %i.bkd = fmul <2 x double> %wide.load1421, %wide.load1423
  store <2 x double> %i.bkc, ptr %i.bjw, align 8, !tbaa !10
  store <2 x double> %i.bkd, ptr %i.bjx, align 8, !tbaa !10
  %index.next1424 = add nuw i64 %index1419, 4     ; 2 uses
  %i.bke = icmp eq i64 %index.next1424, %n.vec1417
  br i1 %i.bke, label %middle.block1425, label %vector.body1418, !llvm.loop !121

middle.block1425:                                 ; preds = %vector.body1418
  br i1 %cmp.n1426, label %.loopexit854, label %.lr.ph997.preheader1766

.lr.ph997.preheader1766:                          ; preds = %.lr.ph997.preheader, %middle.block1425
  %indvars.iv1199.ph.a = phi i64 [ 0, %.lr.ph997.preheader ], [ %n.vec1417, %middle.block1425 ]
  br label %.lr.ph997

.lr.ph999.preheader:                              ; preds = %bb.in
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %i.bq, i64 %i.ds, i1 false), !tbaa !10
  br label %.loopexit854

.lr.ph997:                                        ; preds = %.lr.ph997.preheader1766, %.lr.ph997
  %indvars.iv1199.a = phi i64 [ %indvars.iv.next1200.a, %.lr.ph997 ], [ %indvars.iv1199.ph.a, %.lr.ph997.preheader1766 ] ; 4 uses
  %i.bkf = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv1199.a ; 2 uses
  %i.bkg = load double, ptr %i.bkf, align 8, !tbaa !10 ; 2 uses
  %i.bkh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1199.a
  store double %i.bkg, ptr %i.bkh, align 8, !tbaa !10
  %i.bki = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv1199.a
  %i.bkj = load double, ptr %i.bki, align 8, !tbaa !10
  %i.bkk = fmul double %i.bkg, %i.bkj
  store double %i.bkk, ptr %i.bkf, align 8, !tbaa !10
  %indvars.iv.next1200.a = add nuw nsw i64 %indvars.iv1199.a, 1 ; 2 uses
  %exitcond1204.not = icmp eq i64 %indvars.iv.next1200.a, %i.dr
  br i1 %exitcond1204.not, label %.loopexit854, label %.lr.ph997, !llvm.loop !122

.loopexit854:                                     ; preds = %.lr.ph997, %middle.block1425, %.lr.ph999.preheader
  br i1 %.not1369, label %.lr.ph.i804.preheader, label %.lr.ph1002.preheader

.lr.ph1002.preheader:                             ; preds = %.loopexit854
  br i1 %min.iters.check1404, label %.lr.ph1002.preheader1765, label %vector.body1407

vector.body1407:                                  ; preds = %.lr.ph1002.preheader, %vector.body1407
  %index1408 = phi i64 [ %index.next1410, %vector.body1407 ], [ 0, %.lr.ph1002.preheader ] ; 3 uses
  %i.bkl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1408 ; 2 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkl, i64 16
  %wide.load = load <2 x double>, ptr %i.bkl, align 8, !tbaa !10
  %wide.load1409 = load <2 x double>, ptr %i.bkm, align 8, !tbaa !10
  %i.bkn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1408 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 16
  store <2 x double> %wide.load, ptr %i.bkn, align 8, !tbaa !10
  store <2 x double> %wide.load1409, ptr %i.bko, align 8, !tbaa !10
  %index.next1410 = add nuw i64 %index1408, 4     ; 2 uses
  %i.bkp = icmp eq i64 %index.next1410, %n.vec1406
  br i1 %i.bkp, label %middle.block1411, label %vector.body1407, !llvm.loop !123

middle.block1411:                                 ; preds = %vector.body1407
  br i1 %cmp.n1412, label %.lr.ph.i804.preheader, label %.lr.ph1002.preheader1765

.lr.ph1002.preheader1765:                         ; preds = %.lr.ph1002.preheader, %middle.block1411
  %indvars.iv1209.ph = phi i64 [ 0, %.lr.ph1002.preheader ], [ %n.vec1406, %middle.block1411 ]
  br label %.lr.ph1002

.lr.ph1002:                                       ; preds = %.lr.ph1002.preheader1765, %.lr.ph1002
  %indvars.iv1209.a = phi i64 [ %indvars.iv.next1210.a, %.lr.ph1002 ], [ %indvars.iv1209.ph, %.lr.ph1002.preheader1765 ] ; 3 uses
  %i.bkq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1209.a
  %i.bkr = load double, ptr %i.bkq, align 8, !tbaa !10
  %i.bks = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1209.a
  store double %i.bkr, ptr %i.bks, align 8, !tbaa !10
  %indvars.iv.next1210.a = add nuw nsw i64 %indvars.iv1209.a, 1 ; 2 uses
  %exitcond1213.not.a = icmp eq i64 %indvars.iv.next1210.a, %i.bh
  br i1 %exitcond1213.not.a, label %.lr.ph.i804.preheader, label %.lr.ph1002, !llvm.loop !124

.lr.ph.i804.preheader:                            ; preds = %.lr.ph1002, %middle.block1411, %.loopexit854
  br label %.lr.ph.i804

.lr.ph.i804:                                      ; preds = %.lr.ph.i804.preheader, %bb.ix
  %indvars.iv.i805 = phi i64 [ %indvars.iv.next.i816, %bb.ix ], [ 0, %.lr.ph.i804.preheader ] ; 2 uses
  %.076.i806 = phi double [ %.1.i815, %bb.ix ], [ 0.000000e+00, %.lr.ph.i804.preheader ] ; 8 uses
  %.06075.i807 = phi double [ %.161.i814, %bb.ix ], [ 0.000000e+00, %.lr.ph.i804.preheader ] ; 8 uses
  %.06274.i808 = phi double [ %.163.i813, %bb.ix ], [ 0.000000e+00, %.lr.ph.i804.preheader ] ; 6 uses
  %.06473.i809 = phi double [ %.165.i812, %bb.ix ], [ 0.000000e+00, %.lr.ph.i804.preheader ] ; 6 uses
  %.06672.i810 = phi double [ %.167.i811, %bb.ix ], [ 0.000000e+00, %.lr.ph.i804.preheader ] ; 6 uses
  %i.bkt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i805
  %i.bku = load double, ptr %i.bkt, align 8, !tbaa !10 ; 4 uses
  %i.bkv = tail call double @llvm.fabs.f64(double %i.bku) ; 10 uses
  %i.bkw = fcmp ogt double %i.bkv, f0x2000000000000000
  br i1 %i.bkw, label %bb.io, label %bb.it

bb.io:                                            ; preds = %.lr.ph.i804
  %i.bkx = fcmp olt double %i.bkv, %i.dp
  br i1 %i.bkx, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.bky = tail call double @llvm.fmuladd.f64(double %i.bku, double %i.bku, double %.06473.i809)
  br label %bb.ix

bb.iq:                                            ; preds = %bb.io
  %i.bkz = fcmp ogt double %i.bkv, %.06075.i807
  br i1 %i.bkz, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.bla = fdiv double %.06075.i807, %i.bkv       ; 2 uses
  %i.blb = fmul double %.06672.i810, %i.bla
  %i.blc = tail call double @llvm.fmuladd.f64(double %i.blb, double %i.bla, double 1.000000e+00)
  br label %bb.ix

bb.is:                                            ; preds = %bb.iq
  %i.bld = fdiv double %i.bkv, %.06075.i807       ; 2 uses
  %i.ble = tail call double @llvm.fmuladd.f64(double %i.bld, double %i.bld, double %.06672.i810)
  br label %bb.ix

bb.it:                                            ; preds = %.lr.ph.i804
  %i.blf = fcmp ogt double %i.bkv, %.076.i806
  br i1 %i.blf, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.blg = fdiv double %.076.i806, %i.bkv         ; 2 uses
  %i.blh = fmul double %.06274.i808, %i.blg
  %i.bli = tail call double @llvm.fmuladd.f64(double %i.blh, double %i.blg, double 1.000000e+00)
  br label %bb.ix

bb.iv:                                            ; preds = %bb.it
  %i.blj = fcmp une double %i.bku, 0.000000e+00
  br i1 %i.blj, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.blk = fdiv double %i.bkv, %.076.i806         ; 2 uses
  %i.bll = tail call double @llvm.fmuladd.f64(double %i.blk, double %i.blk, double %.06274.i808)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %bb.iu, %bb.is, %bb.ir, %bb.ip
  %.167.i811 = phi double [ %.06672.i810, %bb.ip ], [ %i.blc, %bb.ir ], [ %i.ble, %bb.is ], [ %.06672.i810, %bb.iu ], [ %.06672.i810, %bb.iw ], [ %.06672.i810, %bb.iv ] ; 3 uses
  %.165.i812 = phi double [ %i.bky, %bb.ip ], [ %.06473.i809, %bb.ir ], [ %.06473.i809, %bb.is ], [ %.06473.i809, %bb.iu ], [ %.06473.i809, %bb.iw ], [ %.06473.i809, %bb.iv ] ; 7 uses
  %.163.i813 = phi double [ %.06274.i808, %bb.ip ], [ %.06274.i808, %bb.ir ], [ %.06274.i808, %bb.is ], [ %i.bli, %bb.iu ], [ %i.bll, %bb.iw ], [ %.06274.i808, %bb.iv ] ; 4 uses
  %.161.i814 = phi double [ %.06075.i807, %bb.ip ], [ %i.bkv, %bb.ir ], [ %.06075.i807, %bb.is ], [ %.06075.i807, %bb.iu ], [ %.06075.i807, %bb.iw ], [ %.06075.i807, %bb.iv ] ; 4 uses
  %.1.i815 = phi double [ %.076.i806, %bb.ip ], [ %.076.i806, %bb.ir ], [ %.076.i806, %bb.is ], [ %i.bkv, %bb.iu ], [ %.076.i806, %bb.iw ], [ %.076.i806, %bb.iv ] ; 8 uses
  %indvars.iv.next.i816 = add nuw nsw i64 %indvars.iv.i805, 1 ; 2 uses
  %exitcond.not.i817 = icmp eq i64 %indvars.iv.next.i816, %i.bc
  br i1 %exitcond.not.i817, label %._crit_edge.i818, label %.lr.ph.i804, !llvm.loop !0

._crit_edge.i818:                                 ; preds = %bb.ix
  %i.blm = fcmp une double %.167.i811, 0.000000e+00
  br i1 %i.blm, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %._crit_edge.i818
  %i.bln = fdiv double %.165.i812, %.161.i814
  %i.blo = fdiv double %i.bln, %.161.i814
  %i.blp = fadd double %.167.i811, %i.blo
  %i.blq = tail call double @sqrt(double noundef %i.blp) #11
  %i.blr = fmul double %.161.i814, %i.blq
  br label %_Z8lm_enormiPKd.exit819

bb.iz:                                            ; preds = %._crit_edge.i818
  %i.bls = fcmp une double %.165.i812, 0.000000e+00
  br i1 %i.bls, label %bb.ja, label %.thread.i798

bb.ja:                                            ; preds = %bb.iz
  %i.blt = fcmp ult double %.165.i812, %.1.i815
  br i1 %i.blt, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.blu = fdiv double %.1.i815, %.165.i812
  %i.blv = fmul double %.163.i813, %.1.i815
  %i.blw = tail call double @llvm.fmuladd.f64(double %i.blu, double %i.blv, double 1.000000e+00)
  %i.blx = fmul double %.165.i812, %i.blw
  %i.bly = tail call double @sqrt(double noundef %i.blx) #11
  br label %_Z8lm_enormiPKd.exit819

bb.jc:                                            ; preds = %bb.ja
  %i.blz = fdiv double %.165.i812, %.1.i815
  %i.bma = tail call double @llvm.fmuladd.f64(double %.1.i815, double %.163.i813, double %i.blz)
  %i.bmb = fmul double %.1.i815, %i.bma
  %i.bmc = tail call double @sqrt(double noundef %i.bmb) #11
  br label %_Z8lm_enormiPKd.exit819

.thread.i798:                                     ; preds = %bb.iz
  %i.bmd = tail call double @sqrt(double noundef %.163.i813) #11
  %i.bme = fmul double %.1.i815, %i.bmd
  br label %_Z8lm_enormiPKd.exit819

_Z8lm_enormiPKd.exit819:                          ; preds = %bb.iy, %bb.jb, %bb.jc, %.thread.i798
  %.069.i801 = phi double [ %i.blr, %bb.iy ], [ %i.bly, %bb.jb ], [ %i.bmc, %bb.jc ], [ %i.bme, %.thread.i798 ] ; 4 uses
  %i.bmf = tail call double @llvm.fabs.f64(double %.069.i801)
  %i.bmg = fcmp ueq double %i.bmf, +inf
  br i1 %i.bmg, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %_Z8lm_enormiPKd.exit819
  %i.bmh = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not692 = icmp eq i32 %i.bmh, 0
  br i1 %.not692, label %.thread.sink.split, label %.thread.sink.split.sink.split

bb.je:                                            ; preds = %_Z8lm_enormiPKd.exit819, %bb.im
  %.2610 = phi double [ %.1609, %bb.im ], [ %i.bhy, %_Z8lm_enormiPKd.exit819 ] ; 3 uses
  %.4 = phi double [ %.3, %bb.im ], [ %.069.i801, %_Z8lm_enormiPKd.exit819 ] ; 10 uses
  store i32 0, ptr %i.q, align 4, !tbaa !137
  %i.bmi = fcmp ugt double %.2610, f0x0010000000000000
  br i1 %i.bmi, label %bb.jf, label %.thread

bb.jf:                                            ; preds = %bb.je
  %i.bmj = tail call double @llvm.fabs.f64(double %.0612) ; 2 uses
  %i.bmk = load double, ptr %8, align 8, !tbaa !141 ; 2 uses
  %i.bml = fcmp ugt double %i.bmj, %i.bmk
  br i1 %i.bml, label %bb.ji, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.bmm = fcmp ole double %i.bhb, %i.bmk
  %i.bmn = fcmp ole double %i.big, 2.000000e+00
  %or.cond5 = select i1 %i.bmm, i1 %i.bmn, i1 false
  br i1 %or.cond5, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  store i32 1, ptr %i.q, align 4, !tbaa !137
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg, %bb.jf
  %i.bmo = phi i1 [ false, %bb.jh ], [ true, %bb.jg ], [ true, %bb.jf ]
  %.pr = phi i32 [ 3, %bb.jh ], [ 2, %bb.jg ], [ 2, %bb.jf ]
  %i.bmp = load double, ptr %.phi.trans.insert, align 8, !tbaa !142
  %i.bmq = fmul double %.4, %i.bmp
  %i.bmr = fcmp ugt double %.5600, %i.bmq
  br i1 %i.bmr, label %thread-pre-split, label %.thread.sink.split

thread-pre-split:                                 ; preds = %bb.ji
  br i1 %i.bmo, label %bb.jj, label %.thread

bb.jj:                                            ; preds = %thread-pre-split
  %i.bms = load i32, ptr %i.s, align 8, !tbaa !139
  %.not695 = icmp slt i32 %i.bms, %i.d
  br i1 %.not695, label %bb.jk, label %.thread.sink.split

bb.jk:                                            ; preds = %bb.jj
  %i.bmt = fcmp ole double %i.bmj, f0x3CB0000000000000
  %i.bmu = fcmp ole double %i.bhb, f0x3CB0000000000000
end_hunk_3
