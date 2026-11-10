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
  %.pre1218 = load double, ptr %.phi.trans.insert, align 8, !tbaa !142 ; 3 uses
  %i.ab = fcmp olt double %.pre1218, 0.000000e+00
  %or.cond1354 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond1354, label %._crit_edge1217, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !143 ; 2 uses
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  br i1 %i.ae, label %._crit_edge1217, label %bb.g

._crit_edge1217:                                  ; preds = %bb.e, %bb.f
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !143
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.30, double noundef %i.z, double noundef %.pre1218, double noundef %i.ah) #12 ; 0 uses
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
  %i.bc = zext nneg i32 %0 to i64                 ; 98 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bb, %i.bd
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #13 ; 43 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 9, ptr %i.q, align 4, !tbaa !137
  br label %bb.jx

bb.o:                                             ; preds = %bb.m
  %i.bh = zext i32 %4 to i64                      ; 68 uses
  %i.bi = shl nuw nsw i64 %i.bh, 3                ; 20 uses
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
  %i.bu = icmp ne i32 %0, 0                       ; 2 uses
  %or.cond = and i1 %.not664, %i.bu
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit883

.lr.ph.preheader:                                 ; preds = %bb.o
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader1839, label %vector.ph

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
  br i1 %cmp.n, label %.loopexit883, label %.lr.ph.preheader1839

.lr.ph.preheader1839:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1839, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1839 ] ; 2 uses
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
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.34, double noundef %i.z, double noundef %i.ad, double noundef %.pre1218) #11 ; 0 uses
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
  %.not1358 = icmp eq i32 %4, 0                   ; 2 uses
  br i1 %.not668, label %.preheader878, label %.preheader880

.preheader880:                                    ; preds = %bb.t
  br i1 %.not1358, label %.loopexit879, label %.lr.ph927

.preheader878:                                    ; preds = %bb.t
  br i1 %.not1358, label %.loopexit879, label %.lr.ph929

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
  %.not1359 = icmp eq i32 %4, 0                   ; 7 uses
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
  %i.dr = add nsw i32 %0, -1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 3
  %i.du = add nuw nsw i64 %i.dt, 8
  %wide.trip.count1189 = zext nneg i32 %i.l to i64
  %i.dv = shl nuw nsw i64 %i.bc, 4
  %i.dw = add nuw nsw i64 %i.dv, %i.bi            ; 2 uses
  %10 = getelementptr i8, ptr %i.bf, i64 %i.dw
  %11 = getelementptr i8, ptr %10, i64 %i.bo
  %scevgep = getelementptr i8, ptr %11, i64 8
  %i.dx = add nuw nsw i64 %i.bi, 8
  %i.dy = shl nuw nsw i64 %i.bc, 5
  %i.dz = add nuw nsw i64 %i.bh, %i.bn
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = mul nuw nsw i64 %i.bc, 24
  %i.ec = add nuw nsw i64 %i.bi, 8
  %i.ed = shl nuw nsw i64 %i.bc, 4
  %i.ee = mul nuw nsw i64 %i.bc, 48
  %i.ef = add nuw nsw i64 %i.bh, %i.bn
  %i.eg = shl nuw nsw i64 %i.ef, 3                ; 2 uses
  %i.eh = getelementptr i8, ptr %i.bf, i64 %i.ee
  %scevgep.a = getelementptr i8, ptr %i.eh, i64 %i.eg ; 3 uses
  %i.ei = mul nuw nsw i64 %i.bc, 40
  %i.ej = mul nuw nsw i64 %i.bc, 24               ; 2 uses
  %i.ek = shl nuw nsw i64 %i.bh, 3
  %i.el = add nuw nsw i64 %i.bi, 8                ; 2 uses
  %i.em = shl nuw nsw i64 %i.bc, 4
  %i.en = add nuw nsw i64 %i.bh, %i.bn
  %i.eo = shl nuw nsw i64 %i.en, 3
  %i.ep = sub nuw nsw i64 -8, %i.bi
  %i.eq = shl nuw nsw i64 %i.bc, 4
  %i.er = shl nuw nsw i64 %i.bh, 3
  %i.es = mul nuw nsw i64 %i.bc, 40
  %i.et = add nuw nsw i64 %i.bh, %i.bn
  %i.eu = shl nuw nsw i64 %i.et, 3
  %i.ev = add nuw nsw i64 %i.es, %i.eu
  %i.ew = shl nuw nsw i64 %i.bc, 4
  %i.ex = add nuw nsw i64 %i.bh, %i.bc
  %i.ey = shl nuw nsw i64 %i.ex, 4
  %i.ez = add nuw nsw i64 %i.bi, 8
  %i.fa = mul nuw nsw i64 %i.bc, 40
  %i.fb = add nuw nsw i64 %i.bh, %i.bn
  %i.fc = shl nuw nsw i64 %i.bc, 4                ; 2 uses
  %i.fd = add nuw nsw i64 %i.bh, %i.bc
  %i.fe = shl nuw nsw i64 %i.fd, 4                ; 2 uses
  %scevgep1706 = getelementptr i8, ptr %i.bf, i64 %i.fe
  %i.ff = add nuw nsw i64 %i.bk, 8
  %i.fg = mul i64 %i.ff, %i.bh
  %i.fh = getelementptr i8, ptr %i.bf, i64 %i.fg
  %scevgep1710.a = getelementptr i8, ptr %i.fh, i64 %i.fc
  %i.fi = add nuw nsw i64 %i.bi, 8
  %i.fj = shl nuw nsw i64 %i.bc, 4
  %i.fk = add nuw nsw i64 %i.bh, %i.bc
  %i.fl = shl nuw nsw i64 %i.fk, 4
  %scevgep1754 = getelementptr i8, ptr %i.bf, i64 %i.fl
  %i.fm = add nuw nsw i64 %i.bk, 8
  %i.fn = mul i64 %i.fm, %i.bh
  %i.fo = getelementptr i8, ptr %i.bf, i64 %i.fn
  %scevgep1752 = getelementptr i8, ptr %i.fo, i64 %i.fj
  %12 = shl nuw nsw i64 %i.bc, 4
  %i.fp = add nuw nsw i64 %12, %i.bi
  %.neg = mul nsw i64 %i.bc, -24
  %i.fq = shl nuw nsw i64 %i.bn, 3
  %i.fr = sub nsw i64 %.neg, %i.fq
  %i.fs = add nsw i64 %i.bh, -1                   ; 3 uses
  %i.ft = add nsw i64 %i.bc, -1                   ; 5 uses
  %i.fu = add nsw i64 %i.bc, -2
  %min.iters.check1775 = icmp eq i32 %4, 1
  %invariant.op = add i64 %i.fr, -1
  %invariant.op1953 = add i64 %i.fp, -1
  %n.vec1780 = and i64 %i.bh, 4294967294          ; 3 uses
  %cmp.n1789 = icmp eq i64 %n.vec1780, %i.bh
  %xtraiter = and i64 %i.bh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fv = extractelement <2 x double> %i.dm, i64 0
  %i.fw = getelementptr i8, ptr %i.bf, i64 %i.fc
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.bi
  %i.fy = getelementptr i8, ptr %i.bf, i64 %i.fe
  %min.iters.check1754 = icmp ult i32 %4, 4
  %n.vec1760 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1769 = icmp eq i64 %n.vec1760, %i.bh
  %xtraiter1842 = and i64 %i.bh, 1
  %lcmp.mod1843.not = icmp eq i64 %xtraiter1842, 0
  %i.fz = add nsw i64 %i.bh, -1
  %i.ga = add nsw i64 %i.bh, -1
  %min.iters.check1683 = icmp ult i32 %4, 4
  %n.vec1685 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1694 = icmp eq i64 %n.vec1685, %i.bh
  %min.iters.check1671 = icmp ult i32 %4, 4
  %n.vec1673 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1680 = icmp eq i64 %n.vec1673, %i.bh
  %invariant.gep1955 = getelementptr i8, ptr %i.bf, i64 %i.fa
  %i.gb = getelementptr i8, ptr %i.bf, i64 %i.ew
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.bi
  %i.gd = getelementptr i8, ptr %i.bf, i64 %i.ey
  %i.ge = add nsw i64 %i.bh, -1
  %min.iters.check1630 = icmp ult i32 %0, 4
  %n.vec1632 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1641 = icmp eq i64 %n.vec1632, %i.bc
  %min.iters.check1618 = icmp ult i32 %0, 4
  %n.vec1620 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1627 = icmp eq i64 %n.vec1620, %i.bc
  %min.iters.check1604 = icmp ult i32 %0, 4
  %n.vec1606 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1615 = icmp eq i64 %n.vec1606, %i.bc
  %i.gf = getelementptr i8, ptr %i.bf, i64 %i.eq
  %xtraiter1862.a = and i64 %i.bc, 3              ; 3 uses
  %i.gg = icmp ult i32 %0, 4
  %unroll_iter1866 = and i64 %i.bc, 2147483644
  %lcmp.mod1864.not = icmp eq i64 %xtraiter1862.a, 0
  %lcmp.mod1865 = icmp ne i64 %xtraiter1862.a, 0
  %min.iters.check1560 = icmp ult i32 %0, 4
  %n.vec1562 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1571 = icmp eq i64 %n.vec1562, %i.bc
  %xtraiter1868 = and i64 %i.bc, 1
  %i.gh = icmp eq i64 %i.ft, 0
  %unroll_iter1872 = and i64 %i.bc, 2147483646
  %lcmp.mod1870.not = icmp eq i64 %xtraiter1868, 0
  %lcmp.mod1871 = trunc i32 %0 to i1
  %min.iters.check1546 = icmp ult i32 %0, 4
  %n.vec1548 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1557 = icmp eq i64 %n.vec1548, %i.bc
  %ident.check.not = icmp eq i32 %4, 1
  %invariant.gep1957 = getelementptr i8, ptr %i.bf, i64 %i.ej
  %invariant.gep1959 = getelementptr i8, ptr %invariant.gep1957, i64 %i.eo
  %i.gi = getelementptr i8, ptr %i.bf, i64 %i.em
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.bi
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  %i.gl = getelementptr i8, ptr %i.bf, i64 %i.ej
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.bi
  %xtraiter1895.a = and i64 %i.bc, 1
  %i.gn = icmp eq i64 %i.ft, 0
  %unroll_iter1900 = and i64 %i.bc, 2147483646
  %lcmp.mod1897.not = icmp eq i64 %xtraiter1895.a, 0
  %lcmp.mod1899 = trunc i32 %0 to i1
  %xtraiter1902 = and i64 %i.bc, 3                ; 3 uses
  %i.go = icmp ult i64 %i.ft, 3
  %unroll_iter1906 = and i64 %i.bc, 2147483644
  %lcmp.mod1904.not = icmp eq i64 %xtraiter1902, 0
  %lcmp.mod1905 = icmp ne i64 %xtraiter1902, 0
  %min.iters.check1491 = icmp ult i32 %0, 4
  %n.vec1493 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1502 = icmp eq i64 %n.vec1493, %i.bc
  %xtraiter1909 = and i64 %i.bc, 1
  %i.gp = icmp eq i64 %i.ft, 0
  %unroll_iter1913 = and i64 %i.bc, 2147483646
  %lcmp.mod1911.not = icmp eq i64 %xtraiter1909, 0
  %lcmp.mod1912 = trunc i32 %0 to i1
  %i.gq = getelementptr i8, ptr %i.bf, i64 %i.ei
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.eg
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %i.gt = getelementptr i8, ptr %i.bf, i64 %i.ed
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.bi
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %i.gw = getelementptr i8, ptr %i.bf, i64 %i.eb
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.bi
  %bound11473 = icmp ult ptr %i.bs, %scevgep.a
  %i.gy = add nsw i64 %i.bc, -1
  %i.gz = getelementptr i8, ptr %i.bf, i64 %i.dy
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.ea
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  %i.hc = getelementptr i8, ptr %i.bf, i64 %i.dw
  %i.hd = getelementptr i8, ptr %i.hc, i64 8
  %min.iters.check1419 = icmp ult i32 %0, 4
  %n.vec1421 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1430 = icmp eq i64 %n.vec1421, %i.bc
  %min.iters.check1405 = icmp ult i32 %0, 4
  %n.vec1407 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1416 = icmp eq i64 %n.vec1407, %i.bc
  %min.iters.check1394 = icmp ult i32 %4, 4
  %n.vec1396 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1402 = icmp eq i64 %n.vec1396, %i.bh
  br label %.lr.ph934.preheader

.lr.ph934.preheader:                              ; preds = %bb.jn, %.preheader877
  %.0835 = phi double [ %.2837, %bb.jn ], [ 0.000000e+00, %.preheader877 ]
  %.0608 = phi double [ %.2610, %bb.jn ], [ %i.cx, %.preheader877 ] ; 2 uses
  %.0595 = phi double [ %.5600, %bb.jn ], [ 0.000000e+00, %.preheader877 ] ; 3 uses
  %.0594 = phi double [ %.4, %bb.jn ], [ 0.000000e+00, %.preheader877 ] ; 5 uses
  %.0592 = phi i32 [ %i.bnw, %bb.jn ], [ 0, %.preheader877 ] ; 3 uses
  br label %.lr.ph934

.lr.ph934:                                        ; preds = %.lr.ph934.preheader, %._crit_edge
  %indvars.iv1083 = phi i64 [ 0, %.lr.ph934.preheader ], [ %indvars.iv.next1084, %._crit_edge ] ; 4 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1083 ; 3 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !10 ; 3 uses
  %i.hg = tail call double @llvm.fabs.f64(double %i.hf)
  %i.hh = fmul double %i.h, %i.hg                 ; 2 uses
  %.inv850 = fcmp oge double %i.df, %i.hh
  %.708 = select i1 %.inv850, double %i.df, double %i.hh ; 5 uses
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
  br i1 %.not1359, label %._crit_edge, label %.lr.ph931

.lr.ph931:                                        ; preds = %.preheader864
  %i.hm = mul nuw nsw i64 %indvars.iv1083, %i.bh
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.hm ; 4 uses
  br i1 %min.iters.check1775, label %scalar.ph1774.preheader, label %vector.memcheck1776

vector.memcheck1776:                              ; preds = %.lr.ph931
  %i.hn = mul i64 %indvars.iv1083, %i.bi          ; 2 uses
  %.reass = add i64 %i.hn, %invariant.op
  %diff.check = icmp ult i64 %.reass, 15
  %.reass1954 = add i64 %i.hn, %invariant.op1953
  %diff.check1777 = icmp ult i64 %.reass1954, 15
  %conflict.rdx1778 = or i1 %diff.check, %diff.check1777
  br i1 %conflict.rdx1778, label %scalar.ph1774.preheader, label %vector.ph1779

vector.ph1779:                                    ; preds = %vector.memcheck1776
  %broadcast.splatinsert1781 = insertelement <2 x double> poison, double %.708, i64 0
  %broadcast.splat1782 = shufflevector <2 x double> %broadcast.splatinsert1781, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1783

vector.body1783:                                  ; preds = %vector.body1783, %vector.ph1779
  %index1784 = phi i64 [ 0, %vector.ph1779 ], [ %index.next1787, %vector.body1783 ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1784
  %wide.load1785 = load <2 x double>, ptr %i.ho, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1784
  %wide.load1786 = load <2 x double>, ptr %i.hp, align 8, !tbaa !10
  %i.hq = fsub <2 x double> %wide.load1785, %wide.load1786
  %i.hr = fdiv <2 x double> %i.hq, %broadcast.splat1782
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1784
  store <2 x double> %i.hr, ptr %i.hs, align 8, !tbaa !10
  %index.next1787 = add nuw i64 %index1784, 2     ; 2 uses
  %i.ht = icmp eq i64 %index.next1787, %n.vec1780
  br i1 %i.ht, label %middle.block1788, label %vector.body1783, !llvm.loop !17

middle.block1788:                                 ; preds = %vector.body1783
  br i1 %cmp.n1789, label %._crit_edge, label %scalar.ph1774.preheader

scalar.ph1774.preheader:                          ; preds = %vector.memcheck1776, %.lr.ph931, %middle.block1788
  %indvars.iv1078.ph = phi i64 [ 0, %vector.memcheck1776 ], [ 0, %.lr.ph931 ], [ %n.vec1780, %middle.block1788 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph1774.prol.loopexit, label %scalar.ph1774.prol

scalar.ph1774.prol:                               ; preds = %scalar.ph1774.preheader
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1078.ph
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !10
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1078.ph
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !10
  %i.hy = fsub double %i.hv, %i.hx
  %i.hz = fdiv double %i.hy, %.708
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1078.ph
  store double %i.hz, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next1079.prol = or disjoint i64 %indvars.iv1078.ph, 1
  br label %scalar.ph1774.prol.loopexit

scalar.ph1774.prol.loopexit:                      ; preds = %scalar.ph1774.prol, %scalar.ph1774.preheader
  %indvars.iv1078.unr = phi i64 [ %indvars.iv1078.ph, %scalar.ph1774.preheader ], [ %indvars.iv.next1079.prol, %scalar.ph1774.prol ]
  %i.ia = icmp eq i64 %i.fs, %indvars.iv1078.ph
  br i1 %i.ia, label %._crit_edge, label %scalar.ph1774

scalar.ph1774:                                    ; preds = %scalar.ph1774.prol.loopexit, %scalar.ph1774
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079.1, %scalar.ph1774 ], [ %indvars.iv1078.unr, %scalar.ph1774.prol.loopexit ] ; 5 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1078
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !10
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1078
  %i.ie = load double, ptr %i.id, align 8, !tbaa !10
  %i.if = fsub double %i.ic, %i.ie
  %i.ig = fdiv double %i.if, %.708
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1078
  store double %i.ig, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next1079 = add nuw nsw i64 %indvars.iv1078, 1 ; 3 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1079
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !10
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next1079
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !10
  %i.il = fsub double %i.ii, %i.ik
  %i.im = fdiv double %i.il, %.708
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next1079
  store double %i.im, ptr %gep.1, align 8, !tbaa !10
  %indvars.iv.next1079.1 = add nuw nsw i64 %indvars.iv1078, 2 ; 2 uses
  %exitcond1082.not.1 = icmp eq i64 %indvars.iv.next1079.1, %i.bh
  br i1 %exitcond1082.not.1, label %._crit_edge, label %scalar.ph1774, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph1774.prol.loopexit, %scalar.ph1774, %middle.block1788, %.preheader864
  store double %i.hf, ptr %i.he, align 8, !tbaa !10
  %indvars.iv.next1084 = add nuw nsw i64 %indvars.iv1083, 1 ; 2 uses
  %exitcond1087.not = icmp eq i64 %indvars.iv.next1084, %i.bc
  br i1 %exitcond1087.not, label %._crit_edge935, label %.lr.ph934, !llvm.loop !19

._crit_edge935:                                   ; preds = %._crit_edge
  %i.in = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.io = and i32 %i.in, 16
  %.not672 = icmp eq i32 %i.io, 0
  br i1 %.not672, label %.lr.ph.preheader.i.i.preheader, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge935
  %fwrite673 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 9, i64 1, ptr %i.p) ; 0 uses
  br i1 %.not1359, label %.lr.ph.preheader.i.i.preheader, label %.lr.ph938.preheader

.lr.ph938.preheader:                              ; preds = %bb.aa, %._crit_edge939
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %._crit_edge939 ], [ 0, %bb.aa ] ; 2 uses
  %fwrite698 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr %i.p) ; 0 uses
  %invariant.gep1344 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv1093
  br label %.lr.ph938

.lr.ph938:                                        ; preds = %.lr.ph938.preheader, %.lr.ph938
  %indvars.iv1088 = phi i64 [ 0, %.lr.ph938.preheader ], [ %indvars.iv.next1089, %.lr.ph938 ] ; 2 uses
  %i.ip = mul nuw nsw i64 %indvars.iv1088, %i.bh
  %gep1345 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1344, i64 %i.ip
  %i.iq = load double, ptr %gep1345, align 8, !tbaa !10
  %i.ir = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.41, double noundef %i.iq) #11 ; 0 uses
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 1 ; 2 uses
  %exitcond1092.not = icmp eq i64 %indvars.iv.next1089, %i.bc
  br i1 %exitcond1092.not, label %._crit_edge939, label %.lr.ph938, !llvm.loop !20

._crit_edge939:                                   ; preds = %.lr.ph938
  %fputc700 = tail call i32 @fputc(i32 10, ptr %i.p) ; 0 uses
  %indvars.iv.next1094 = add nuw nsw i64 %indvars.iv1093, 1 ; 2 uses
  %exitcond1097.not = icmp eq i64 %indvars.iv.next1094, %i.bh
  br i1 %exitcond1097.not, label %.lr.ph.preheader.i.i.preheader, label %.lr.ph938.preheader, !llvm.loop !21

.lr.ph.preheader.i.i.preheader:                   ; preds = %._crit_edge939, %._crit_edge935, %bb.aa
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.preheader, %_Z8lm_enormiPKd.exit.i
  %indvars.iv.i712 = phi i64 [ %indvars.iv.next.i713, %_Z8lm_enormiPKd.exit.i ], [ 0, %.lr.ph.preheader.i.i.preheader ] ; 7 uses
  %i.is = mul nuw nsw i64 %indvars.iv.i712, %i.bh
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.is
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ak, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ak ] ; 2 uses
  %.076.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.ak ] ; 8 uses
  %.06075.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.161.i.i, %bb.ak ] ; 8 uses
  %.06274.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.163.i.i, %bb.ak ] ; 6 uses
  %.06473.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.165.i.i, %bb.ak ] ; 6 uses
  %.06672.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.167.i.i, %bb.ak ] ; 6 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.i.i
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !10 ; 4 uses
  %i.iw = tail call double @llvm.fabs.f64(double %i.iv) ; 10 uses
  %i.ix = fcmp ogt double %i.iw, f0x2000000000000000
  br i1 %i.ix, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.iy = fcmp olt double %i.iw, %i.fv
  br i1 %i.iy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.iv, double %.06473.i.i)
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.ja = fcmp ogt double %i.iw, %.06075.i.i
  br i1 %i.ja, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jb = fdiv double %.06075.i.i, %i.iw          ; 2 uses
  %i.jc = fmul double %.06672.i.i, %i.jb
  %i.jd = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.jb, double 1.000000e+00)
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  %i.je = fdiv double %i.iw, %.06075.i.i          ; 2 uses
  %i.jf = tail call double @llvm.fmuladd.f64(double %i.je, double %i.je, double %.06672.i.i)
  br label %bb.ak

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.jg = fcmp ogt double %i.iw, %.076.i.i
  br i1 %i.jg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jh = fdiv double %.076.i.i, %i.iw            ; 2 uses
  %i.ji = fmul double %.06274.i.i, %i.jh
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.ji, double %i.jh, double 1.000000e+00)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.jk = fcmp une double %i.iv, 0.000000e+00
  br i1 %i.jk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jl = fdiv double %i.iw, %.076.i.i            ; 2 uses
  %i.jm = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.jl, double %.06274.i.i)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ac
  %.167.i.i = phi double [ %.06672.i.i, %bb.ac ], [ %i.jd, %bb.ae ], [ %i.jf, %bb.af ], [ %.06672.i.i, %bb.ah ], [ %.06672.i.i, %bb.aj ], [ %.06672.i.i, %bb.ai ] ; 3 uses
  %.165.i.i = phi double [ %i.iz, %bb.ac ], [ %.06473.i.i, %bb.ae ], [ %.06473.i.i, %bb.af ], [ %.06473.i.i, %bb.ah ], [ %.06473.i.i, %bb.aj ], [ %.06473.i.i, %bb.ai ] ; 7 uses
  %.163.i.i = phi double [ %.06274.i.i, %bb.ac ], [ %.06274.i.i, %bb.ae ], [ %.06274.i.i, %bb.af ], [ %i.jj, %bb.ah ], [ %i.jm, %bb.aj ], [ %.06274.i.i, %bb.ai ] ; 4 uses
  %.161.i.i = phi double [ %.06075.i.i, %bb.ac ], [ %i.iw, %bb.ae ], [ %.06075.i.i, %bb.af ], [ %.06075.i.i, %bb.ah ], [ %.06075.i.i, %bb.aj ], [ %.06075.i.i, %bb.ai ] ; 4 uses
  %.1.i.i = phi double [ %.076.i.i, %bb.ac ], [ %.076.i.i, %bb.ae ], [ %.076.i.i, %bb.af ], [ %i.iw, %bb.ah ], [ %.076.i.i, %bb.aj ], [ %.076.i.i, %bb.ai ] ; 8 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bh
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.ak
  %i.jn = fcmp une double %.167.i.i, 0.000000e+00
  br i1 %i.jn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.jo = fdiv double %.165.i.i, %.161.i.i
  %i.jp = fdiv double %i.jo, %.161.i.i
  %i.jq = fadd double %.167.i.i, %i.jp
  %i.jr = tail call double @sqrt(double noundef %i.jq) #11
  %i.js = fmul double %.161.i.i, %i.jr
  br label %_Z8lm_enormiPKd.exit.i

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.jt = fcmp une double %.165.i.i, 0.000000e+00
  br i1 %i.jt, label %bb.an, label %.thread.i.i

bb.an:                                            ; preds = %bb.am
  %i.ju = fcmp ult double %.165.i.i, %.1.i.i
  br i1 %i.ju, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jv = fdiv double %.1.i.i, %.165.i.i
  %i.jw = fmul double %.163.i.i, %.1.i.i
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.jv, double %i.jw, double 1.000000e+00)
  %i.jy = fmul double %.165.i.i, %i.jx
  %i.jz = tail call double @sqrt(double noundef %i.jy) #11
  br label %_Z8lm_enormiPKd.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.ka = fdiv double %.165.i.i, %.1.i.i
  %i.kb = tail call double @llvm.fmuladd.f64(double %.1.i.i, double %.163.i.i, double %i.ka)
  %i.kc = fmul double %.1.i.i, %i.kb
  %i.kd = tail call double @sqrt(double noundef %i.kc) #11
  br label %_Z8lm_enormiPKd.exit.i

.thread.i.i:                                      ; preds = %bb.am
  %i.ke = tail call double @sqrt(double noundef %.163.i.i) #11
  %i.kf = fmul double %.1.i.i, %i.ke
  br label %_Z8lm_enormiPKd.exit.i

_Z8lm_enormiPKd.exit.i:                           ; preds = %.thread.i.i, %bb.ap, %bb.ao, %bb.al
  %.069.i.i = phi double [ %i.js, %bb.al ], [ %i.jz, %bb.ao ], [ %i.kd, %bb.ap ], [ %i.kf, %.thread.i.i ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i712
  store double %.069.i.i, ptr %i.kg, align 8, !tbaa !10
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i712
  store double %.069.i.i, ptr %i.kh, align 8, !tbaa !10
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i712
  store double %.069.i.i, ptr %i.ki, align 8, !tbaa !10
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i712
  %i.kk = trunc nuw nsw i64 %indvars.iv.i712 to i32
  store i32 %i.kk, ptr %i.kj, align 4, !tbaa !149
  %indvars.iv.next.i713 = add nuw nsw i64 %indvars.iv.i712, 1 ; 2 uses
  %exitcond.not.i714 = icmp eq i64 %indvars.iv.next.i713, %i.bc
  br i1 %exitcond.not.i714, label %.preheader224.i, label %.lr.ph.preheader.i.i, !llvm.loop !22

.preheader224.i:                                  ; preds = %_Z8lm_enormiPKd.exit.i, %bb.by
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i, %bb.by ], [ 0, %_Z8lm_enormiPKd.exit.i ] ; 26 uses
  %indvars.iv256.i = phi i64 [ %indvars.iv.next257.i, %bb.by ], [ 1, %_Z8lm_enormiPKd.exit.i ] ; 6 uses
  %i.kl = sub i64 %i.fs, %indvars.iv268.i
  %i.km = trunc i64 %indvars.iv268.i to i32
  %i.kn = mul i32 %4, %i.km
  %i.ko = zext i32 %i.kn to i64
  %i.kp = shl nuw nsw i64 %i.ko, 3                ; 2 uses
  %scevgep1707 = getelementptr i8, ptr %scevgep1706, i64 %i.kp
  %i.kq = shl nuw nsw i64 %indvars.iv268.i, 3
  %scevgep1708 = getelementptr i8, ptr %i.fx, i64 %i.kq
  %scevgep1709 = getelementptr i8, ptr %scevgep1708, i64 %i.kp
  %i.kr = mul i64 %i.fi, %indvars.iv268.i
  %scevgep1711 = getelementptr i8, ptr %i.fy, i64 %i.kr
  %indvars290.i = trunc i64 %indvars.iv268.i to i32 ; 4 uses
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 3 uses
  %i.ks = icmp samesign ult i64 %indvars.iv.next269.i, %i.bc ; 2 uses
  br i1 %i.ks, label %.lr.ph.preheader.i715, label %._crit_edge.i

.lr.ph.preheader.i715:                            ; preds = %.preheader224.i
  %i.kt = sub i64 %i.ft, %indvars.iv268.i
  %i.ku = shl nuw nsw i64 %indvars.iv268.i, 3
  %.phi.trans.insert293.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ku
  %.pre.i = load double, ptr %.phi.trans.insert293.i, align 8, !tbaa !10 ; 3 uses
  %xtraiter1840 = and i64 %i.kt, 1
  %lcmp.mod1841.not = icmp eq i64 %xtraiter1840, 0
  br i1 %lcmp.mod1841.not, label %.lr.ph.i716.prol.loopexit, label %.lr.ph.i716.prol

.lr.ph.i716.prol:                                 ; preds = %.lr.ph.preheader.i715
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv256.i
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !10 ; 2 uses
  %i.kx = fcmp ogt double %i.kw, %.pre.i          ; 2 uses
  %i.ky = trunc nuw nsw i64 %indvars.iv256.i to i32
  %spec.select.i.prol = select i1 %i.kx, i32 %i.ky, i32 %indvars290.i ; 2 uses
  %indvars.iv.next259.i.prol = add nuw nsw i64 %indvars.iv256.i, 1
  %i.kz = select i1 %i.kx, double %i.kw, double %.pre.i
  br label %.lr.ph.i716.prol.loopexit

.lr.ph.i716.prol.loopexit:                        ; preds = %.lr.ph.i716.prol, %.lr.ph.preheader.i715
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i715 ], [ %spec.select.i.prol, %.lr.ph.i716.prol ]
  %.unr = phi double [ %.pre.i, %.lr.ph.preheader.i715 ], [ %i.kz, %.lr.ph.i716.prol ]
  %indvars.iv258.i.unr = phi i64 [ %indvars.iv256.i, %.lr.ph.preheader.i715 ], [ %indvars.iv.next259.i.prol, %.lr.ph.i716.prol ]
  %.0166227.i.unr = phi i32 [ %indvars290.i, %.lr.ph.preheader.i715 ], [ %spec.select.i.prol, %.lr.ph.i716.prol ]
  %i.la = icmp eq i64 %i.fu, %indvars.iv268.i
  br i1 %i.la, label %._crit_edge.i, label %.lr.ph.i716

.lr.ph.i716:                                      ; preds = %.lr.ph.i716.prol.loopexit, %.lr.ph.i716
  %i.lb = phi double [ %i.ll, %.lr.ph.i716 ], [ %.unr, %.lr.ph.i716.prol.loopexit ] ; 2 uses
  %indvars.iv258.i = phi i64 [ %indvars.iv.next259.i.1, %.lr.ph.i716 ], [ %indvars.iv258.i.unr, %.lr.ph.i716.prol.loopexit ] ; 4 uses
  %.0166227.i = phi i32 [ %spec.select.i.1, %.lr.ph.i716 ], [ %.0166227.i.unr, %.lr.ph.i716.prol.loopexit ]
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv258.i
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !10 ; 2 uses
  %i.le = fcmp ogt double %i.ld, %i.lb            ; 2 uses
  %i.lf = trunc nuw nsw i64 %indvars.iv258.i to i32
  %spec.select.i = select i1 %i.le, i32 %i.lf, i32 %.0166227.i
  %indvars.iv.next259.i = add nuw nsw i64 %indvars.iv258.i, 1 ; 2 uses
  %i.lg = select i1 %i.le, double %i.ld, double %i.lb ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next259.i
  %i.li = load double, ptr %i.lh, align 8, !tbaa !10 ; 2 uses
  %i.lj = fcmp ogt double %i.li, %i.lg            ; 2 uses
  %i.lk = trunc nuw nsw i64 %indvars.iv.next259.i to i32
  %spec.select.i.1 = select i1 %i.lj, i32 %i.lk, i32 %spec.select.i ; 2 uses
  %indvars.iv.next259.i.1 = add nuw nsw i64 %indvars.iv258.i, 2 ; 2 uses
  %exitcond262.not.i.1 = icmp eq i64 %indvars.iv.next259.i.1, %i.bc
  %i.ll = select i1 %i.lj, double %i.li, double %i.lg
  br i1 %exitcond262.not.i.1, label %._crit_edge.i, label %.lr.ph.i716, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i716.prol.loopexit, %.lr.ph.i716, %.preheader224.i
  %.0166.lcssa.i = phi i32 [ %indvars290.i, %.preheader224.i ], [ %spec.select.i.lcssa.unr, %.lr.ph.i716.prol.loopexit ], [ %spec.select.i.1, %.lr.ph.i716 ] ; 3 uses
  %i.lm = zext i32 %.0166.lcssa.i to i64
  %.not.i = icmp eq i64 %indvars.iv268.i, %i.lm
  br i1 %.not.i, label %.lr.ph.i184.i.preheader, label %.lr.ph230.i

.lr.ph230.i:                                      ; preds = %._crit_edge.i
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv268.i ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !149
  %i.lp = sext i32 %.0166.lcssa.i to i64          ; 3 uses
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !149
  store i32 %i.lr, ptr %i.ln, align 4, !tbaa !149
  store i32 %i.lo, ptr %i.lq, align 4, !tbaa !149
  %i.ls = mul nuw nsw i64 %indvars.iv268.i, %i.bh
  %i.lt = mul nsw i32 %.0166.lcssa.i, %4
  %i.lu = sext i32 %i.lt to i64                   ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ls ; 4 uses
  %invariant.gep306.i = getelementptr [8 x i8], ptr %i.bm, i64 %i.lu ; 5 uses
  br i1 %min.iters.check1754, label %scalar.ph1753.preheader, label %vector.memcheck1755

vector.memcheck1755:                              ; preds = %.lr.ph230.i
  %i.lv = shl nsw i64 %i.lu, 3
  %i.lw = getelementptr i8, ptr %scevgep1754, i64 %i.lv
  %bound01756 = icmp ult ptr %i.bm, %i.lw
  %bound11757 = icmp ult ptr %invariant.gep306.i, %scevgep1752
  %found.conflict1758 = and i1 %bound01756, %bound11757
  br i1 %found.conflict1758, label %scalar.ph1753.preheader, label %vector.body1761

vector.body1761:                                  ; preds = %vector.memcheck1755, %vector.body1761
  %index1762 = phi i64 [ %index.next1767, %vector.body1761 ], [ 0, %vector.memcheck1755 ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index1762 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16 ; 2 uses
  %wide.load1763 = load <2 x double>, ptr %i.lx, align 8, !tbaa !10, !alias.scope !150, !noalias !151
  %wide.load1764 = load <2 x double>, ptr %i.ly, align 8, !tbaa !10, !alias.scope !150, !noalias !151
  %i.lz = getelementptr [8 x i8], ptr %invariant.gep306.i, i64 %index1762 ; 3 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 16     ; 2 uses
  %wide.load1765 = load <2 x double>, ptr %i.lz, align 8, !tbaa !10, !alias.scope !151
  %wide.load1766 = load <2 x double>, ptr %i.ma, align 8, !tbaa !10, !alias.scope !151
  store <2 x double> %wide.load1765, ptr %i.lx, align 8, !tbaa !10, !alias.scope !150, !noalias !151
  store <2 x double> %wide.load1766, ptr %i.ly, align 8, !tbaa !10, !alias.scope !150, !noalias !151
  store <2 x double> %wide.load1763, ptr %i.lz, align 8, !tbaa !10, !alias.scope !151
  store <2 x double> %wide.load1764, ptr %i.ma, align 8, !tbaa !10, !alias.scope !151
  %index.next1767 = add nuw i64 %index1762, 4     ; 2 uses
  %i.mb = icmp eq i64 %index.next1767, %n.vec1760
  br i1 %i.mb, label %middle.block1768, label %vector.body1761, !llvm.loop !27

middle.block1768:                                 ; preds = %vector.body1761
  br i1 %cmp.n1769, label %._crit_edge231.i.loopexit, label %scalar.ph1753.preheader

scalar.ph1753.preheader:                          ; preds = %vector.memcheck1755, %.lr.ph230.i, %middle.block1768
  %indvars.iv263.i.ph = phi i64 [ 0, %vector.memcheck1755 ], [ 0, %.lr.ph230.i ], [ %n.vec1760, %middle.block1768 ] ; 5 uses
  br i1 %lcmp.mod1843.not, label %scalar.ph1753.prol.loopexit, label %scalar.ph1753.prol

scalar.ph1753.prol:                               ; preds = %scalar.ph1753.preheader
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv263.i.ph ; 2 uses
  %i.mc = load double, ptr %gep.i.prol, align 8, !tbaa !10
  %gep307.i.prol = getelementptr [8 x i8], ptr %invariant.gep306.i, i64 %indvars.iv263.i.ph ; 2 uses
  %i.md = load double, ptr %gep307.i.prol, align 8, !tbaa !10
  store double %i.md, ptr %gep.i.prol, align 8, !tbaa !10
  store double %i.mc, ptr %gep307.i.prol, align 8, !tbaa !10
  %indvars.iv.next264.i.prol = or disjoint i64 %indvars.iv263.i.ph, 1
  br label %scalar.ph1753.prol.loopexit

scalar.ph1753.prol.loopexit:                      ; preds = %scalar.ph1753.prol, %scalar.ph1753.preheader
  %indvars.iv263.i.unr = phi i64 [ %indvars.iv263.i.ph, %scalar.ph1753.preheader ], [ %indvars.iv.next264.i.prol, %scalar.ph1753.prol ]
  %i.me = icmp eq i64 %indvars.iv263.i.ph, %i.fz
  br i1 %i.me, label %._crit_edge231.i.loopexit, label %scalar.ph1753

scalar.ph1753:                                    ; preds = %scalar.ph1753.prol.loopexit, %scalar.ph1753
  %indvars.iv263.i = phi i64 [ %indvars.iv.next264.i.1, %scalar.ph1753 ], [ %indvars.iv263.i.unr, %scalar.ph1753.prol.loopexit ] ; 4 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv263.i ; 2 uses
  %i.mf = load double, ptr %gep.i, align 8, !tbaa !10
  %gep307.i = getelementptr [8 x i8], ptr %invariant.gep306.i, i64 %indvars.iv263.i ; 2 uses
  %i.mg = load double, ptr %gep307.i, align 8, !tbaa !10
  store double %i.mg, ptr %gep.i, align 8, !tbaa !10
  store double %i.mf, ptr %gep307.i, align 8, !tbaa !10
  %indvars.iv.next264.i = add nuw nsw i64 %indvars.iv263.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next264.i ; 2 uses
  %i.mh = load double, ptr %gep.i.1, align 8, !tbaa !10
  %gep307.i.1 = getelementptr [8 x i8], ptr %invariant.gep306.i, i64 %indvars.iv.next264.i ; 2 uses
  %i.mi = load double, ptr %gep307.i.1, align 8, !tbaa !10
  store double %i.mi, ptr %gep.i.1, align 8, !tbaa !10
  store double %i.mh, ptr %gep307.i.1, align 8, !tbaa !10
  %indvars.iv.next264.i.1 = add nuw nsw i64 %indvars.iv263.i, 2 ; 2 uses
  %exitcond267.not.i.1 = icmp eq i64 %indvars.iv.next264.i.1, %i.bh
  br i1 %exitcond267.not.i.1, label %._crit_edge231.i.loopexit, label %scalar.ph1753, !llvm.loop !28

._crit_edge231.i.loopexit:                        ; preds = %scalar.ph1753.prol.loopexit, %scalar.ph1753, %middle.block1768
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv268.i
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !10
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.lp
  store double %i.mk, ptr %i.ml, align 8, !tbaa !10
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv268.i
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !10
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.lp
  store double %i.mn, ptr %i.mo, align 8, !tbaa !10
  br label %.lr.ph.i184.i.preheader

.lr.ph.i184.i.preheader:                          ; preds = %._crit_edge231.i.loopexit, %._crit_edge.i
  %i.mp = sub nsw i64 %i.bh, %indvars.iv268.i     ; 10 uses
  %i.mq = mul nuw i32 %i.dh, %indvars290.i
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.mr ; 5 uses
  %i.mt = trunc nuw nsw i64 %i.mp to i32
  %i.mu = uitofp nneg i32 %i.mt to double
  %i.mv = fdiv double f0x5FEFFFFFFFFFFFFF, %i.mu
  br label %.lr.ph.i184.i

.lr.ph.i184.i:                                    ; preds = %.lr.ph.i184.i.preheader, %bb.az
  %indvars.iv.i185.i = phi i64 [ %indvars.iv.next.i196.i, %bb.az ], [ 0, %.lr.ph.i184.i.preheader ] ; 2 uses
  %.076.i186.i = phi double [ %.1.i195.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 8 uses
  %.06075.i187.i = phi double [ %.161.i194.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 8 uses
  %.06274.i188.i = phi double [ %.163.i193.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 6 uses
  %.06473.i189.i = phi double [ %.165.i192.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 6 uses
  %.06672.i190.i = phi double [ %.167.i191.i, %bb.az ], [ 0.000000e+00, %.lr.ph.i184.i.preheader ] ; 6 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv.i185.i
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !10 ; 4 uses
  %i.my = tail call double @llvm.fabs.f64(double %i.mx) ; 10 uses
  %i.mz = fcmp ogt double %i.my, f0x2000000000000000
  br i1 %i.mz, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %.lr.ph.i184.i
  %i.na = fcmp olt double %i.my, %i.mv
  br i1 %i.na, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.mx, double %i.mx, double %.06473.i189.i)
  br label %bb.az

bb.as:                                            ; preds = %bb.aq
  %i.nc = fcmp ogt double %i.my, %.06075.i187.i
  br i1 %i.nc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.nd = fdiv double %.06075.i187.i, %i.my       ; 2 uses
  %i.ne = fmul double %.06672.i190.i, %i.nd
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.ne, double %i.nd, double 1.000000e+00)
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.ng = fdiv double %i.my, %.06075.i187.i       ; 2 uses
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.ng, double %i.ng, double %.06672.i190.i)
  br label %bb.az

bb.av:                                            ; preds = %.lr.ph.i184.i
  %i.ni = fcmp ogt double %i.my, %.076.i186.i
  br i1 %i.ni, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.nj = fdiv double %.076.i186.i, %i.my         ; 2 uses
  %i.nk = fmul double %.06274.i188.i, %i.nj
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.nk, double %i.nj, double 1.000000e+00)
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.nm = fcmp une double %i.mx, 0.000000e+00
  br i1 %i.nm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nn = fdiv double %i.my, %.076.i186.i         ; 2 uses
  %i.no = tail call double @llvm.fmuladd.f64(double %i.nn, double %i.nn, double %.06274.i188.i)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.ar
  %.167.i191.i = phi double [ %.06672.i190.i, %bb.ar ], [ %i.nf, %bb.at ], [ %i.nh, %bb.au ], [ %.06672.i190.i, %bb.aw ], [ %.06672.i190.i, %bb.ay ], [ %.06672.i190.i, %bb.ax ] ; 3 uses
  %.165.i192.i = phi double [ %i.nb, %bb.ar ], [ %.06473.i189.i, %bb.at ], [ %.06473.i189.i, %bb.au ], [ %.06473.i189.i, %bb.aw ], [ %.06473.i189.i, %bb.ay ], [ %.06473.i189.i, %bb.ax ] ; 7 uses
  %.163.i193.i = phi double [ %.06274.i188.i, %bb.ar ], [ %.06274.i188.i, %bb.at ], [ %.06274.i188.i, %bb.au ], [ %i.nl, %bb.aw ], [ %i.no, %bb.ay ], [ %.06274.i188.i, %bb.ax ] ; 4 uses
  %.161.i194.i = phi double [ %.06075.i187.i, %bb.ar ], [ %i.my, %bb.at ], [ %.06075.i187.i, %bb.au ], [ %.06075.i187.i, %bb.aw ], [ %.06075.i187.i, %bb.ay ], [ %.06075.i187.i, %bb.ax ] ; 4 uses
  %.1.i195.i = phi double [ %.076.i186.i, %bb.ar ], [ %.076.i186.i, %bb.at ], [ %.076.i186.i, %bb.au ], [ %i.my, %bb.aw ], [ %.076.i186.i, %bb.ay ], [ %.076.i186.i, %bb.ax ] ; 8 uses
  %indvars.iv.next.i196.i = add nuw nsw i64 %indvars.iv.i185.i, 1 ; 2 uses
  %exitcond.not.i197.i = icmp eq i64 %indvars.iv.next.i196.i, %i.mp
  br i1 %exitcond.not.i197.i, label %._crit_edge.i198.i, label %.lr.ph.i184.i, !llvm.loop !0

._crit_edge.i198.i:                               ; preds = %bb.az
  %i.np = mul nuw nsw i64 %indvars.iv268.i, %i.bh
  %i.nq = fcmp une double %.167.i191.i, 0.000000e+00
  br i1 %i.nq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i198.i
  %i.nr = fdiv double %.165.i192.i, %.161.i194.i
  %i.ns = fdiv double %i.nr, %.161.i194.i
  %i.nt = fadd double %.167.i191.i, %i.ns
  %i.nu = tail call double @sqrt(double noundef %i.nt) #11
  %i.nv = fmul double %.161.i194.i, %i.nu
  br label %_Z8lm_enormiPKd.exit199.i

bb.bb:                                            ; preds = %._crit_edge.i198.i
  %i.nw = fcmp une double %.165.i192.i, 0.000000e+00
  br i1 %i.nw, label %bb.bc, label %.thread.i178.i

bb.bc:                                            ; preds = %bb.bb
  %i.nx = fcmp ult double %.165.i192.i, %.1.i195.i
  br i1 %i.nx, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ny = fdiv double %.1.i195.i, %.165.i192.i
  %i.nz = fmul double %.163.i193.i, %.1.i195.i
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.ny, double %i.nz, double 1.000000e+00)
  %i.ob = fmul double %.165.i192.i, %i.oa
  %i.oc = tail call double @sqrt(double noundef %i.ob) #11
  br label %_Z8lm_enormiPKd.exit199.i

bb.be:                                            ; preds = %bb.bc
  %i.od = fdiv double %.165.i192.i, %.1.i195.i
  %i.oe = tail call double @llvm.fmuladd.f64(double %.1.i195.i, double %.163.i193.i, double %i.od)
  %i.of = fmul double %.1.i195.i, %i.oe
  %i.og = tail call double @sqrt(double noundef %i.of) #11
  br label %_Z8lm_enormiPKd.exit199.i

.thread.i178.i:                                   ; preds = %bb.bb
  %i.oh = tail call double @sqrt(double noundef %.163.i193.i) #11
  %i.oi = fmul double %.1.i195.i, %i.oh
  br label %_Z8lm_enormiPKd.exit199.i

_Z8lm_enormiPKd.exit199.i:                        ; preds = %.thread.i178.i, %bb.be, %bb.bd, %bb.ba
  %.069.i181.i = phi double [ %i.nv, %bb.ba ], [ %i.oc, %bb.bd ], [ %i.og, %bb.be ], [ %i.oi, %.thread.i178.i ] ; 3 uses
  %i.oj = fcmp oeq double %.069.i181.i, 0.000000e+00
  br i1 %i.oj, label %bb.by, label %.lr.ph234.preheader.i

.lr.ph234.preheader.i:                            ; preds = %_Z8lm_enormiPKd.exit199.i
  %i.ok = load double, ptr %i.ms, align 8, !tbaa !10
  %i.ol = fcmp olt double %i.ok, 0.000000e+00
  %i.om = fneg double %.069.i181.i
end_hunk_0
begin_hunk_1_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a
  %i.bat = fcmp une double %.165.i352.i, 0.000000e+00
  br i1 %i.bat, label %bb.gd, label %.thread.i341.i

bb.gd:                                            ; preds = %bb.gc
  %i.bau = fcmp ult double %.165.i352.i, %.1.i355.i
  br i1 %i.bau, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.bav = fdiv double %.1.i355.i, %.165.i352.i
  %i.baw = fmul double %.163.i353.i, %.1.i355.i
  %i.bax = tail call double @llvm.fmuladd.f64(double %i.bav, double %i.baw, double 1.000000e+00)
  %i.bay = fmul double %.165.i352.i, %i.bax
  %i.baz = tail call double @sqrt(double noundef %i.bay) #11
  br label %_Z8lm_enormiPKd.exit359.i

bb.gf:                                            ; preds = %bb.gd
  %i.bba = fdiv double %.165.i352.i, %.1.i355.i
  %i.bbb = tail call double @llvm.fmuladd.f64(double %.1.i355.i, double %.163.i353.i, double %i.bba)
  %i.bbc = fmul double %.1.i355.i, %i.bbb
  %i.bbd = tail call double @sqrt(double noundef %i.bbc) #11
  br label %_Z8lm_enormiPKd.exit359.i

.thread.i341.i:                                   ; preds = %bb.gc
  %i.bbe = tail call double @sqrt(double noundef %.163.i353.i) #11
  %i.bbf = fmul double %.1.i355.i, %i.bbe
  br label %_Z8lm_enormiPKd.exit359.i

_Z8lm_enormiPKd.exit359.i:                        ; preds = %.thread.i341.i, %bb.gf, %bb.ge, %bb.gb
  %.069.i342.i = phi double [ %i.bas, %bb.gb ], [ %i.baz, %bb.ge ], [ %i.bbd, %bb.gf ], [ %i.bbf, %.thread.i341.i ] ; 2 uses
  %i.bbg = fdiv double %i.awo, %.3598
  %i.bbh = fdiv double %i.bbg, %.069.i342.i
  %i.bbi = fdiv double %i.bbh, %.069.i342.i
  %i.bbj = fcmp ogt double %i.awo, 0.000000e+00
  br i1 %i.bbj, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_Z8lm_enormiPKd.exit359.i
  %.inv362.i = fcmp oge double %.1254.i, %i.ams
  %..1254.i = select i1 %.inv362.i, double %.1254.i, double %i.ams
  br label %bb.gj

bb.gh:                                            ; preds = %_Z8lm_enormiPKd.exit359.i
  %i.bbk = fcmp olt double %i.awo, 0.000000e+00
  br i1 %i.bbk, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %.inv361.i = fcmp ole double %.1252.i, %i.ams
  %..1252.i = select i1 %.inv361.i, double %.1252.i, double %i.ams
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gg
  %.2255.i = phi double [ %..1254.i, %bb.gg ], [ %.1254.i, %bb.gi ], [ %.1254.i, %bb.gh ] ; 3 uses
  %.2.i = phi double [ %.1252.i, %bb.gg ], [ %..1252.i, %bb.gi ], [ %.1252.i, %bb.gh ]
  %i.bbl = fadd double %i.ams, %i.bbi             ; 2 uses
  %.inv363.i = fcmp oge double %.2255.i, %i.bbl
  %..2255.i = select i1 %.inv363.i, double %.2255.i, double %i.bbl
  %i.bbm = add nuw nsw i32 %.0262.i, 1
  br label %bb.en, !llvm.loop !108

_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit:           ; preds = %_Z8lm_enormiPKd.exit340.i, %bb.fp, %bb.fq, %_Z8lm_enormiPKd.exit.i737
  %.6 = phi double [ 0.000000e+00, %_Z8lm_enormiPKd.exit.i737 ], [ %i.ams, %bb.fq ], [ %i.ams, %bb.fp ], [ %i.ams, %_Z8lm_enormiPKd.exit340.i ] ; 6 uses
  br label %.lr.ph.i749

.lr.ph.i749:                                      ; preds = %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, %bb.gt
  %indvars.iv.i750 = phi i64 [ %indvars.iv.next.i751, %bb.gt ], [ 0, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 2 uses
  %.076.i = phi double [ %.1.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 8 uses
  %.06075.i = phi double [ %.161.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 8 uses
  %.06274.i = phi double [ %.163.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %.06473.i = phi double [ %.165.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %.06672.i = phi double [ %.167.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %i.bbn = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i750
  %i.bbo = load double, ptr %i.bbn, align 8, !tbaa !10 ; 4 uses
  %i.bbp = tail call double @llvm.fabs.f64(double %i.bbo) ; 10 uses
  %i.bbq = fcmp ogt double %i.bbp, f0x2000000000000000
  br i1 %i.bbq, label %bb.gk, label %bb.gp

bb.gk:                                            ; preds = %.lr.ph.i749
  %i.bbr = fcmp olt double %i.bbp, %i.dp
  br i1 %i.bbr, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.bbs = tail call double @llvm.fmuladd.f64(double %i.bbo, double %i.bbo, double %.06473.i)
  br label %bb.gt

bb.gm:                                            ; preds = %bb.gk
  %i.bbt = fcmp ogt double %i.bbp, %.06075.i
  br i1 %i.bbt, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.bbu = fdiv double %.06075.i, %i.bbp          ; 2 uses
  %i.bbv = fmul double %.06672.i, %i.bbu
  %i.bbw = tail call double @llvm.fmuladd.f64(double %i.bbv, double %i.bbu, double 1.000000e+00)
  br label %bb.gt

bb.go:                                            ; preds = %bb.gm
  %i.bbx = fdiv double %i.bbp, %.06075.i          ; 2 uses
  %i.bby = tail call double @llvm.fmuladd.f64(double %i.bbx, double %i.bbx, double %.06672.i)
  br label %bb.gt

bb.gp:                                            ; preds = %.lr.ph.i749
  %i.bbz = fcmp ogt double %i.bbp, %.076.i
  br i1 %i.bbz, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.bca = fdiv double %.076.i, %i.bbp            ; 2 uses
  %i.bcb = fmul double %.06274.i, %i.bca
  %i.bcc = tail call double @llvm.fmuladd.f64(double %i.bcb, double %i.bca, double 1.000000e+00)
  br label %bb.gt

bb.gr:                                            ; preds = %bb.gp
  %i.bcd = fcmp une double %i.bbo, 0.000000e+00
  br i1 %i.bcd, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bce = fdiv double %i.bbp, %.076.i            ; 2 uses
  %i.bcf = tail call double @llvm.fmuladd.f64(double %i.bce, double %i.bce, double %.06274.i)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gq, %bb.go, %bb.gn, %bb.gl
  %.167.i = phi double [ %.06672.i, %bb.gl ], [ %i.bbw, %bb.gn ], [ %i.bby, %bb.go ], [ %.06672.i, %bb.gq ], [ %.06672.i, %bb.gs ], [ %.06672.i, %bb.gr ] ; 3 uses
  %.165.i = phi double [ %i.bbs, %bb.gl ], [ %.06473.i, %bb.gn ], [ %.06473.i, %bb.go ], [ %.06473.i, %bb.gq ], [ %.06473.i, %bb.gs ], [ %.06473.i, %bb.gr ] ; 7 uses
  %.163.i = phi double [ %.06274.i, %bb.gl ], [ %.06274.i, %bb.gn ], [ %.06274.i, %bb.go ], [ %i.bcc, %bb.gq ], [ %i.bcf, %bb.gs ], [ %.06274.i, %bb.gr ] ; 4 uses
  %.161.i = phi double [ %.06075.i, %bb.gl ], [ %i.bbp, %bb.gn ], [ %.06075.i, %bb.go ], [ %.06075.i, %bb.gq ], [ %.06075.i, %bb.gs ], [ %.06075.i, %bb.gr ] ; 4 uses
  %.1.i = phi double [ %.076.i, %bb.gl ], [ %.076.i, %bb.gn ], [ %.076.i, %bb.go ], [ %i.bbp, %bb.gq ], [ %.076.i, %bb.gs ], [ %.076.i, %bb.gr ] ; 8 uses
  %indvars.iv.next.i751 = add nuw nsw i64 %indvars.iv.i750, 1 ; 2 uses
  %exitcond.not.i752 = icmp eq i64 %indvars.iv.next.i751, %i.bc
  br i1 %exitcond.not.i752, label %._crit_edge.i753, label %.lr.ph.i749, !llvm.loop !0

._crit_edge.i753:                                 ; preds = %bb.gt
  %i.bcg = fcmp une double %.167.i, 0.000000e+00
  br i1 %i.bcg, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %._crit_edge.i753
  %i.bch = fdiv double %.165.i, %.161.i
  %i.bci = fdiv double %i.bch, %.161.i
  %i.bcj = fadd double %.167.i, %i.bci
  %i.bck = tail call double @sqrt(double noundef %i.bcj) #11
  %i.bcl = fmul double %.161.i, %i.bck
  br label %_Z8lm_enormiPKd.exit

bb.gv:                                            ; preds = %._crit_edge.i753
  %i.bcm = fcmp une double %.165.i, 0.000000e+00
  br i1 %i.bcm, label %bb.gw, label %.thread.i746

bb.gw:                                            ; preds = %bb.gv
  %i.bcn = fcmp ult double %.165.i, %.1.i
  br i1 %i.bcn, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bco = fdiv double %.1.i, %.165.i
  %i.bcp = fmul double %.163.i, %.1.i
  %i.bcq = tail call double @llvm.fmuladd.f64(double %i.bco, double %i.bcp, double 1.000000e+00)
  %i.bcr = fmul double %.165.i, %i.bcq
  %i.bcs = tail call double @sqrt(double noundef %i.bcr) #11
  br label %_Z8lm_enormiPKd.exit

bb.gy:                                            ; preds = %bb.gw
  %i.bct = fdiv double %.165.i, %.1.i
  %i.bcu = tail call double @llvm.fmuladd.f64(double %.1.i, double %.163.i, double %i.bct)
  %i.bcv = fmul double %.1.i, %i.bcu
  %i.bcw = tail call double @sqrt(double noundef %i.bcv) #11
  br label %_Z8lm_enormiPKd.exit

.thread.i746:                                     ; preds = %bb.gv
  %i.bcx = tail call double @sqrt(double noundef %.163.i) #11
  %i.bcy = fmul double %.1.i, %i.bcx
  br label %_Z8lm_enormiPKd.exit

_Z8lm_enormiPKd.exit:                             ; preds = %bb.gu, %bb.gx, %bb.gy, %.thread.i746
  %.069.i = phi double [ %i.bcl, %bb.gu ], [ %i.bcs, %bb.gx ], [ %i.bcw, %bb.gy ], [ %i.bcy, %.thread.i746 ] ; 7 uses
  %i.bcz = tail call double @llvm.fabs.f64(double %.069.i)
  %i.bda = fcmp ueq double %i.bcz, +inf
  br i1 %i.bda, label %bb.gz, label %.lr.ph983.preheader

bb.gz:                                            ; preds = %_Z8lm_enormiPKd.exit
  %i.bdb = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not682 = icmp eq i32 %i.bdb, 0
  br i1 %.not682, label %.thread.sink.split, label %.thread.sink.split.sink.split

.lr.ph983.preheader:                              ; preds = %_Z8lm_enormiPKd.exit
  %i.bdc = fdiv double %.069.i, %.1609            ; 2 uses
  %i.bdd = fmul double %.6, %i.bdc
  %i.bde = fmul double %i.bdc, %i.bdd             ; 2 uses
  br label %.lr.ph983

.lr.ph983:                                        ; preds = %.lr.ph983.preheader, %.loopexit1792
  %indvars.iv1164 = phi i64 [ 0, %.lr.ph983.preheader ], [ %indvars.iv.next1165, %.loopexit1792 ] ; 7 uses
  %indvars.iv1162 = phi i64 [ 1, %.lr.ph983.preheader ], [ %indvars.iv.next1163, %.loopexit1792 ] ; 6 uses
  %i.bdf = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1164
  store double 0.000000e+00, ptr %i.bdf, align 8, !tbaa !10
  %i.bdg = mul nuw nsw i64 %indvars.iv1164, %i.dq
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1164
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !149
  %i.bdj = sext i32 %i.bdi to i64                 ; 2 uses
  %i.bdk = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bdj ; 5 uses
  %invariant.gep1352 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bdg ; 5 uses
  %min.iters.check1439 = icmp samesign ult i64 %indvars.iv1162, 4
  br i1 %min.iters.check1439, label %scalar.ph1438.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph983
  %i.bdl = shl nuw nsw i64 %indvars.iv1164, 3
  %i.bdm = getelementptr i8, ptr %i.hb, i64 %i.bdl ; 2 uses
  %i.bdn = mul i64 %indvars.iv1164, %i.dx
  %i.bdo = getelementptr i8, ptr %i.hd, i64 %i.bdn
  %i.bdp = shl nsw i64 %i.bdj, 3
  %i.bdq = getelementptr i8, ptr %scevgep, i64 %i.bdp
  %bound0 = icmp ult ptr %i.br, %i.bdo
  %bound1 = icmp ult ptr %invariant.gep1352, %i.bdm
  %found.conflict = and i1 %bound0, %bound1
  %bound01440 = icmp ult ptr %i.br, %i.bdq
  %bound11441 = icmp ult ptr %i.bdk, %i.bdm
  %found.conflict1442 = and i1 %bound01440, %bound11441
  %conflict.rdx = or i1 %found.conflict, %found.conflict1442
  br i1 %conflict.rdx, label %scalar.ph1438.preheader, label %vector.ph1443

vector.ph1443:                                    ; preds = %vector.memcheck
  %n.vec1444 = and i64 %indvars.iv1162, 9223372036854775804 ; 3 uses
  %i.bdr = load double, ptr %i.bdk, align 8, !tbaa !10, !alias.scope !165
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bdr, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1445

vector.body1445:                                  ; preds = %vector.body1445, %vector.ph1443
  %index1446 = phi i64 [ 0, %vector.ph1443 ], [ %index.next1451, %vector.body1445 ] ; 3 uses
  %i.bds = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %index1446 ; 2 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 16
  %wide.load1447 = load <2 x double>, ptr %i.bds, align 8, !tbaa !10, !alias.scope !166
  %wide.load1448 = load <2 x double>, ptr %i.bdt, align 8, !tbaa !10, !alias.scope !166
  %i.bdu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index1446 ; 3 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 16 ; 2 uses
  %wide.load1449 = load <2 x double>, ptr %i.bdu, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %wide.load1450 = load <2 x double>, ptr %i.bdv, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %i.bdw = fneg <2 x double> %wide.load1447
  %i.bdx = fneg <2 x double> %wide.load1448
  %i.bdy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdw, <2 x double> %broadcast.splat, <2 x double> %wide.load1449)
  %i.bdz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdx, <2 x double> %broadcast.splat, <2 x double> %wide.load1450)
  store <2 x double> %i.bdy, ptr %i.bdu, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  store <2 x double> %i.bdz, ptr %i.bdv, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %index.next1451 = add nuw i64 %index1446, 4     ; 2 uses
  %i.bea = icmp eq i64 %index.next1451, %n.vec1444
  br i1 %i.bea, label %middle.block1452, label %vector.body1445, !llvm.loop !113

middle.block1452:                                 ; preds = %vector.body1445
  %cmp.n1453 = icmp eq i64 %indvars.iv1162, %n.vec1444
  br i1 %cmp.n1453, label %.loopexit1792, label %scalar.ph1438.preheader

scalar.ph1438.preheader:                          ; preds = %vector.memcheck, %.lr.ph983, %middle.block1452
  %indvars.iv1155.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph983 ], [ %n.vec1444, %middle.block1452 ] ; 5 uses
  %xtraiter1918 = and i64 %indvars.iv1162, 1
  %lcmp.mod1919.not = icmp eq i64 %xtraiter1918, 0
  br i1 %lcmp.mod1919.not, label %scalar.ph1438.prol.loopexit, label %scalar.ph1438.prol

scalar.ph1438.prol:                               ; preds = %scalar.ph1438.preheader
  %gep1353.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %indvars.iv1155.ph
  %i.beb = load double, ptr %gep1353.prol, align 8, !tbaa !10
  %i.bec = load double, ptr %i.bdk, align 8, !tbaa !10
  %i.bed = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1155.ph ; 2 uses
  %i.bee = load double, ptr %i.bed, align 8, !tbaa !10
  %i.bef = fneg double %i.beb
  %i.beg = tail call double @llvm.fmuladd.f64(double %i.bef, double %i.bec, double %i.bee)
  store double %i.beg, ptr %i.bed, align 8, !tbaa !10
  %indvars.iv.next1156.prol = or disjoint i64 %indvars.iv1155.ph, 1
  br label %scalar.ph1438.prol.loopexit

scalar.ph1438.prol.loopexit:                      ; preds = %scalar.ph1438.prol, %scalar.ph1438.preheader
  %indvars.iv1155.unr = phi i64 [ %indvars.iv1155.ph, %scalar.ph1438.preheader ], [ %indvars.iv.next1156.prol, %scalar.ph1438.prol ]
  %i.beh = icmp eq i64 %indvars.iv1164, %indvars.iv1155.ph
  br i1 %i.beh, label %.loopexit1792, label %scalar.ph1438

scalar.ph1438:                                    ; preds = %scalar.ph1438.prol.loopexit, %scalar.ph1438
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156.1, %scalar.ph1438 ], [ %indvars.iv1155.unr, %scalar.ph1438.prol.loopexit ] ; 4 uses
  %gep1353 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %indvars.iv1155
  %i.bei = load double, ptr %gep1353, align 8, !tbaa !10
  %i.bej = load double, ptr %i.bdk, align 8, !tbaa !10
  %i.bek = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1155 ; 2 uses
  %i.bel = load double, ptr %i.bek, align 8, !tbaa !10
  %i.bem = fneg double %i.bei
  %i.ben = tail call double @llvm.fmuladd.f64(double %i.bem, double %i.bej, double %i.bel)
  store double %i.ben, ptr %i.bek, align 8, !tbaa !10
  %indvars.iv.next1156 = add nuw nsw i64 %indvars.iv1155, 1 ; 2 uses
  %gep1353.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %indvars.iv.next1156
  %i.beo = load double, ptr %gep1353.1, align 8, !tbaa !10
  %i.bep = load double, ptr %i.bdk, align 8, !tbaa !10
  %i.beq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next1156 ; 2 uses
  %i.ber = load double, ptr %i.beq, align 8, !tbaa !10
  %i.bes = fneg double %i.beo
  %i.bet = tail call double @llvm.fmuladd.f64(double %i.bes, double %i.bep, double %i.ber)
  store double %i.bet, ptr %i.beq, align 8, !tbaa !10
  %indvars.iv.next1156.1 = add nuw nsw i64 %indvars.iv1155, 2 ; 2 uses
  %exitcond1161.not.1 = icmp eq i64 %indvars.iv.next1156.1, %indvars.iv1162
  br i1 %exitcond1161.not.1, label %.loopexit1792, label %scalar.ph1438, !llvm.loop !114

.loopexit1792:                                    ; preds = %scalar.ph1438.prol.loopexit, %scalar.ph1438, %middle.block1452
  %indvars.iv.next1165 = add nuw nsw i64 %indvars.iv1164, 1 ; 2 uses
  %indvars.iv.next1163 = add nuw nsw i64 %indvars.iv1162, 1
  %exitcond1170.not = icmp eq i64 %indvars.iv.next1165, %i.bc
  br i1 %exitcond1170.not, label %.lr.ph.i760, label %.lr.ph983, !llvm.loop !115

.lr.ph.i760:                                      ; preds = %.loopexit1792, %bb.hj
  %indvars.iv.i761 = phi i64 [ %indvars.iv.next.i772, %bb.hj ], [ 0, %.loopexit1792 ] ; 2 uses
  %.076.i762 = phi double [ %.1.i771, %bb.hj ], [ 0.000000e+00, %.loopexit1792 ] ; 8 uses
  %.06075.i763 = phi double [ %.161.i770, %bb.hj ], [ 0.000000e+00, %.loopexit1792 ] ; 8 uses
  %.06274.i764 = phi double [ %.163.i769, %bb.hj ], [ 0.000000e+00, %.loopexit1792 ] ; 6 uses
  %.06473.i765 = phi double [ %.165.i768, %bb.hj ], [ 0.000000e+00, %.loopexit1792 ] ; 6 uses
  %.06672.i766 = phi double [ %.167.i767, %bb.hj ], [ 0.000000e+00, %.loopexit1792 ] ; 6 uses
  %i.beu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i761
  %i.bev = load double, ptr %i.beu, align 8, !tbaa !10 ; 4 uses
  %i.bew = tail call double @llvm.fabs.f64(double %i.bev) ; 10 uses
  %i.bex = fcmp ogt double %i.bew, f0x2000000000000000
  br i1 %i.bex, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %.lr.ph.i760
  %i.bey = fcmp olt double %i.bew, %i.dp
  br i1 %i.bey, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bez = tail call double @llvm.fmuladd.f64(double %i.bev, double %i.bev, double %.06473.i765)
  br label %bb.hj

bb.hc:                                            ; preds = %bb.ha
  %i.bfa = fcmp ogt double %i.bew, %.06075.i763
  br i1 %i.bfa, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.bfb = fdiv double %.06075.i763, %i.bew       ; 2 uses
  %i.bfc = fmul double %.06672.i766, %i.bfb
  %i.bfd = tail call double @llvm.fmuladd.f64(double %i.bfc, double %i.bfb, double 1.000000e+00)
  br label %bb.hj

bb.he:                                            ; preds = %bb.hc
  %i.bfe = fdiv double %i.bew, %.06075.i763       ; 2 uses
  %i.bff = tail call double @llvm.fmuladd.f64(double %i.bfe, double %i.bfe, double %.06672.i766)
  br label %bb.hj

bb.hf:                                            ; preds = %.lr.ph.i760
  %i.bfg = fcmp ogt double %i.bew, %.076.i762
  br i1 %i.bfg, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.bfh = fdiv double %.076.i762, %i.bew         ; 2 uses
  %i.bfi = fmul double %.06274.i764, %i.bfh
  %i.bfj = tail call double @llvm.fmuladd.f64(double %i.bfi, double %i.bfh, double 1.000000e+00)
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  %i.bfk = fcmp une double %i.bev, 0.000000e+00
  br i1 %i.bfk, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.bfl = fdiv double %i.bew, %.076.i762         ; 2 uses
  %i.bfm = tail call double @llvm.fmuladd.f64(double %i.bfl, double %i.bfl, double %.06274.i764)
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.he, %bb.hd, %bb.hb
  %.167.i767 = phi double [ %.06672.i766, %bb.hb ], [ %i.bfd, %bb.hd ], [ %i.bff, %bb.he ], [ %.06672.i766, %bb.hg ], [ %.06672.i766, %bb.hi ], [ %.06672.i766, %bb.hh ] ; 3 uses
  %.165.i768 = phi double [ %i.bez, %bb.hb ], [ %.06473.i765, %bb.hd ], [ %.06473.i765, %bb.he ], [ %.06473.i765, %bb.hg ], [ %.06473.i765, %bb.hi ], [ %.06473.i765, %bb.hh ] ; 7 uses
  %.163.i769 = phi double [ %.06274.i764, %bb.hb ], [ %.06274.i764, %bb.hd ], [ %.06274.i764, %bb.he ], [ %i.bfj, %bb.hg ], [ %i.bfm, %bb.hi ], [ %.06274.i764, %bb.hh ] ; 4 uses
  %.161.i770 = phi double [ %.06075.i763, %bb.hb ], [ %i.bew, %bb.hd ], [ %.06075.i763, %bb.he ], [ %.06075.i763, %bb.hg ], [ %.06075.i763, %bb.hi ], [ %.06075.i763, %bb.hh ] ; 4 uses
  %.1.i771 = phi double [ %.076.i762, %bb.hb ], [ %.076.i762, %bb.hd ], [ %.076.i762, %bb.he ], [ %i.bew, %bb.hg ], [ %.076.i762, %bb.hi ], [ %.076.i762, %bb.hh ] ; 8 uses
  %indvars.iv.next.i772 = add nuw nsw i64 %indvars.iv.i761, 1 ; 2 uses
  %exitcond.not.i773 = icmp eq i64 %indvars.iv.next.i772, %i.bc
  br i1 %exitcond.not.i773, label %._crit_edge.i774, label %.lr.ph.i760, !llvm.loop !0

._crit_edge.i774:                                 ; preds = %bb.hj
  %i.bfn = fcmp une double %.167.i767, 0.000000e+00
  br i1 %i.bfn, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %._crit_edge.i774
  %i.bfo = fdiv double %.165.i768, %.161.i770
  %i.bfp = fdiv double %i.bfo, %.161.i770
  %i.bfq = fadd double %.167.i767, %i.bfp
  %i.bfr = tail call double @sqrt(double noundef %i.bfq) #11
  %i.bfs = fmul double %.161.i770, %i.bfr
  br label %_Z8lm_enormiPKd.exit775

bb.hl:                                            ; preds = %._crit_edge.i774
  %i.bft = fcmp une double %.165.i768, 0.000000e+00
  br i1 %i.bft, label %bb.hm, label %.thread.i754

bb.hm:                                            ; preds = %bb.hl
  %i.bfu = fcmp ult double %.165.i768, %.1.i771
  br i1 %i.bfu, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.bfv = fdiv double %.1.i771, %.165.i768
  %i.bfw = fmul double %.163.i769, %.1.i771
  %i.bfx = tail call double @llvm.fmuladd.f64(double %i.bfv, double %i.bfw, double 1.000000e+00)
  %i.bfy = fmul double %.165.i768, %i.bfx
  %i.bfz = tail call double @sqrt(double noundef %i.bfy) #11
  br label %_Z8lm_enormiPKd.exit775

bb.ho:                                            ; preds = %bb.hm
  %i.bga = fdiv double %.165.i768, %.1.i771
  %i.bgb = tail call double @llvm.fmuladd.f64(double %.1.i771, double %.163.i769, double %i.bga)
  %i.bgc = fmul double %.1.i771, %i.bgb
  %i.bgd = tail call double @sqrt(double noundef %i.bgc) #11
  br label %_Z8lm_enormiPKd.exit775

.thread.i754:                                     ; preds = %bb.hl
  %i.bge = tail call double @sqrt(double noundef %.163.i769) #11
  %i.bgf = fmul double %.1.i771, %i.bge
  br label %_Z8lm_enormiPKd.exit775

_Z8lm_enormiPKd.exit775:                          ; preds = %bb.hk, %bb.hn, %bb.ho, %.thread.i754
  %.069.i757 = phi double [ %i.bfs, %bb.hk ], [ %i.bfz, %bb.hn ], [ %i.bgd, %bb.ho ], [ %i.bgf, %.thread.i754 ]
  br label %.lr.ph.i782
end_hunk_1
