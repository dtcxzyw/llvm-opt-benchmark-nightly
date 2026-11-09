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
  %i.bc = zext nneg i32 %0 to i64                 ; 97 uses
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
  %i.bi = shl nuw nsw i64 %i.bh, 3                ; 21 uses
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
  %i.dv = shl nuw nsw i64 %i.bc, 4                ; 2 uses
  %i.dw = add nuw nsw i64 %i.bi, 8
  %i.dx = shl nuw nsw i64 %i.bc, 5
  %i.dy = add nuw nsw i64 %i.bh, %i.bn
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = mul nuw nsw i64 %i.bc, 24
  %i.eb = add nuw nsw i64 %i.bi, 8
  %i.ec = shl nuw nsw i64 %i.bc, 4
  %i.ed = mul nuw nsw i64 %i.bc, 48
  %i.ee = add nuw nsw i64 %i.bh, %i.bn
  %i.ef = shl nuw nsw i64 %i.ee, 3                ; 2 uses
  %i.eg = getelementptr i8, ptr %i.bf, i64 %i.ed
  %scevgep = getelementptr i8, ptr %i.eg, i64 %i.ef ; 3 uses
  %i.eh = mul nuw nsw i64 %i.bc, 40
  %i.ei = mul nuw nsw i64 %i.bc, 24               ; 2 uses
  %i.ej = shl nuw nsw i64 %i.bh, 3
  %i.ek = add nuw nsw i64 %i.bi, 8                ; 2 uses
  %i.el = shl nuw nsw i64 %i.bc, 4
  %i.em = add nuw nsw i64 %i.bh, %i.bn
  %i.en = shl nuw nsw i64 %i.em, 3
  %i.eo = sub nuw nsw i64 -8, %i.bi
  %i.ep = shl nuw nsw i64 %i.bc, 4
  %i.eq = shl nuw nsw i64 %i.bh, 3
  %i.er = mul nuw nsw i64 %i.bc, 40
  %i.es = add nuw nsw i64 %i.bh, %i.bn
  %i.et = shl nuw nsw i64 %i.es, 3
  %i.eu = add nuw nsw i64 %i.er, %i.et
  %i.ev = shl nuw nsw i64 %i.bc, 4
  %i.ew = add nuw nsw i64 %i.bh, %i.bc
  %i.ex = shl nuw nsw i64 %i.ew, 4
  %i.ey = add nuw nsw i64 %i.bi, 8
  %i.ez = mul nuw nsw i64 %i.bc, 40
  %i.fa = add nuw nsw i64 %i.bh, %i.bn
  %i.fb = shl nuw nsw i64 %i.bc, 4                ; 2 uses
  %i.fc = add nuw nsw i64 %i.bh, %i.bc
  %i.fd = shl nuw nsw i64 %i.fc, 4                ; 2 uses
  %scevgep1706 = getelementptr i8, ptr %i.bf, i64 %i.fd
  %i.fe = add nuw nsw i64 %i.bk, 8
  %i.ff = mul i64 %i.fe, %i.bh
  %i.fg = getelementptr i8, ptr %i.bf, i64 %i.ff
  %scevgep1710 = getelementptr i8, ptr %i.fg, i64 %i.fb
  %i.fh = add nuw nsw i64 %i.bi, 8
  %i.fi = shl nuw nsw i64 %i.bc, 4                ; 2 uses
  %i.fj = add nuw nsw i64 %i.bk, 8
  %i.fk = mul i64 %i.fj, %i.bh
  %i.fl = getelementptr i8, ptr %i.bf, i64 %i.fk
  %scevgep1752 = getelementptr i8, ptr %i.fl, i64 %i.fi
  %i.fm = add nuw nsw i64 %i.fi, %i.bi
  %.neg = mul nsw i64 %i.bc, -24
  %i.fn = shl nuw nsw i64 %i.bn, 3
  %i.fo = sub nsw i64 %.neg, %i.fn
  %i.fp = add nsw i64 %i.bh, -1                   ; 3 uses
  %i.fq = add nsw i64 %i.bc, -1                   ; 5 uses
  %i.fr = add nsw i64 %i.bc, -2
  %min.iters.check1775 = icmp eq i32 %4, 1
  %invariant.op = add i64 %i.fo, -1
  %invariant.op1953 = add i64 %i.fm, -1
  %n.vec1780 = and i64 %i.bh, 4294967294          ; 3 uses
  %cmp.n1789 = icmp eq i64 %n.vec1780, %i.bh
  %xtraiter = and i64 %i.bh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fs = extractelement <2 x double> %i.dm, i64 0
  %i.ft = getelementptr i8, ptr %i.bf, i64 %i.fb
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.bi
  %i.fv = getelementptr i8, ptr %i.bf, i64 %i.fd
  %min.iters.check1754 = icmp ult i32 %4, 4
  %10 = add nuw nsw i64 %i.bh, %i.bc
  %11 = shl nuw nsw i64 %10, 4
  %i.fw = getelementptr i8, ptr %i.bf, i64 %11
  %n.vec1760 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1769 = icmp eq i64 %n.vec1760, %i.bh
  %xtraiter1842 = and i64 %i.bh, 1
  %lcmp.mod1843.not = icmp eq i64 %xtraiter1842, 0
  %i.fx = add nsw i64 %i.bh, -1
  %i.fy = add nsw i64 %i.bh, -1
  %min.iters.check1683 = icmp ult i32 %4, 4
  %n.vec1685 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1694 = icmp eq i64 %n.vec1685, %i.bh
  %min.iters.check1671 = icmp ult i32 %4, 4
  %n.vec1673 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1680 = icmp eq i64 %n.vec1673, %i.bh
  %invariant.gep1955 = getelementptr i8, ptr %i.bf, i64 %i.ez
  %i.fz = getelementptr i8, ptr %i.bf, i64 %i.ev
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.bi
  %i.gb = getelementptr i8, ptr %i.bf, i64 %i.ex
  %i.gc = add nsw i64 %i.bh, -1
  %min.iters.check1630 = icmp ult i32 %0, 4
  %n.vec1632 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1641 = icmp eq i64 %n.vec1632, %i.bc
  %min.iters.check1618 = icmp ult i32 %0, 4
  %n.vec1620 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1627 = icmp eq i64 %n.vec1620, %i.bc
  %min.iters.check1604 = icmp ult i32 %0, 4
  %n.vec1606 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1615 = icmp eq i64 %n.vec1606, %i.bc
  %i.gd = getelementptr i8, ptr %i.bf, i64 %i.ep
  %xtraiter1862 = and i64 %i.bc, 3                ; 3 uses
  %i.ge = icmp ult i32 %0, 4
  %unroll_iter1866 = and i64 %i.bc, 2147483644
  %lcmp.mod1864.not = icmp eq i64 %xtraiter1862, 0
  %lcmp.mod1865 = icmp ne i64 %xtraiter1862, 0
  %min.iters.check1560 = icmp ult i32 %0, 4
  %n.vec1562 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1571 = icmp eq i64 %n.vec1562, %i.bc
  %xtraiter1868 = and i64 %i.bc, 1
  %i.gf = icmp eq i64 %i.fq, 0
  %unroll_iter1872 = and i64 %i.bc, 2147483646
  %lcmp.mod1870.not = icmp eq i64 %xtraiter1868, 0
  %lcmp.mod1871 = trunc i32 %0 to i1
  %min.iters.check1546 = icmp ult i32 %0, 4
  %n.vec1548 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1557 = icmp eq i64 %n.vec1548, %i.bc
  %ident.check.not = icmp eq i32 %4, 1
  %invariant.gep1957 = getelementptr i8, ptr %i.bf, i64 %i.ei
  %invariant.gep1959 = getelementptr i8, ptr %invariant.gep1957, i64 %i.en
  %i.gg = getelementptr i8, ptr %i.bf, i64 %i.el
  %i.gh = getelementptr i8, ptr %i.gg, i64 %i.bi
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = getelementptr i8, ptr %i.bf, i64 %i.ei
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.bi
  %xtraiter1895 = and i64 %i.bc, 1
  %i.gl = icmp eq i64 %i.fq, 0
  %unroll_iter1900 = and i64 %i.bc, 2147483646
  %lcmp.mod1897.not = icmp eq i64 %xtraiter1895, 0
  %lcmp.mod1899 = trunc i32 %0 to i1
  %xtraiter1902 = and i64 %i.bc, 3                ; 3 uses
  %i.gm = icmp ult i64 %i.fq, 3
  %unroll_iter1906 = and i64 %i.bc, 2147483644
  %lcmp.mod1904.not = icmp eq i64 %xtraiter1902, 0
  %lcmp.mod1905 = icmp ne i64 %xtraiter1902, 0
  %min.iters.check1491 = icmp ult i32 %0, 4
  %n.vec1493 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1502 = icmp eq i64 %n.vec1493, %i.bc
  %xtraiter1909 = and i64 %i.bc, 1
  %i.gn = icmp eq i64 %i.fq, 0
  %unroll_iter1913 = and i64 %i.bc, 2147483646
  %lcmp.mod1911.not = icmp eq i64 %xtraiter1909, 0
  %lcmp.mod1912 = trunc i32 %0 to i1
  %i.go = getelementptr i8, ptr %i.bf, i64 %i.eh
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.ef
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  %i.gr = getelementptr i8, ptr %i.bf, i64 %i.ec
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.bi
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  %i.gu = getelementptr i8, ptr %i.bf, i64 %i.ea
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.bi
  %bound11473 = icmp ult ptr %i.bs, %scevgep
  %i.gw = add nsw i64 %i.bc, -1
  %12 = getelementptr i8, ptr %i.bf, i64 %i.dx
  %i.gx = getelementptr i8, ptr %12, i64 %i.dz
  %i.gy = getelementptr i8, ptr %i.gx, i64 8
  %i.gz = getelementptr i8, ptr %i.bf, i64 %i.dv
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.bi
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  %i.hc = getelementptr i8, ptr %i.bf, i64 %i.dv
  %invariant.gep1961 = getelementptr i8, ptr %i.hc, i64 %i.bi
  %invariant.gep1963 = getelementptr i8, ptr %invariant.gep1961, i64 %i.bo
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
  %.0592 = phi i32 [ %i.bnv, %bb.jn ], [ 0, %.preheader877 ] ; 3 uses
  br label %.lr.ph934

.lr.ph934:                                        ; preds = %.lr.ph934.preheader, %._crit_edge
  %indvars.iv1083 = phi i64 [ 0, %.lr.ph934.preheader ], [ %indvars.iv.next1084, %._crit_edge ] ; 4 uses
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
  br i1 %.not1359, label %._crit_edge, label %.lr.ph931

.lr.ph931:                                        ; preds = %.preheader864
  %i.hl = mul nuw nsw i64 %indvars.iv1083, %i.bh
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.hl ; 4 uses
  br i1 %min.iters.check1775, label %scalar.ph1774.preheader, label %vector.memcheck1776

vector.memcheck1776:                              ; preds = %.lr.ph931
  %i.hm = mul i64 %indvars.iv1083, %i.bi          ; 2 uses
  %.reass = add i64 %i.hm, %invariant.op
  %diff.check = icmp ult i64 %.reass, 15
  %.reass1954 = add i64 %i.hm, %invariant.op1953
  %diff.check1777 = icmp ult i64 %.reass1954, 15
  %conflict.rdx1778 = or i1 %diff.check, %diff.check1777
  br i1 %conflict.rdx1778, label %scalar.ph1774.preheader, label %vector.ph1779

vector.ph1779:                                    ; preds = %vector.memcheck1776
  %broadcast.splatinsert1781 = insertelement <2 x double> poison, double %.708, i64 0
  %broadcast.splat1782 = shufflevector <2 x double> %broadcast.splatinsert1781, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1783

vector.body1783:                                  ; preds = %vector.body1783, %vector.ph1779
  %index1784 = phi i64 [ 0, %vector.ph1779 ], [ %index.next1787, %vector.body1783 ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1784
  %wide.load1785 = load <2 x double>, ptr %i.hn, align 8, !tbaa !10
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1784
  %wide.load1786 = load <2 x double>, ptr %i.ho, align 8, !tbaa !10
  %i.hp = fsub <2 x double> %wide.load1785, %wide.load1786
  %i.hq = fdiv <2 x double> %i.hp, %broadcast.splat1782
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1784
  store <2 x double> %i.hq, ptr %i.hr, align 8, !tbaa !10
  %index.next1787 = add nuw i64 %index1784, 2     ; 2 uses
  %i.hs = icmp eq i64 %index.next1787, %n.vec1780
  br i1 %i.hs, label %middle.block1788, label %vector.body1783, !llvm.loop !17

middle.block1788:                                 ; preds = %vector.body1783
  br i1 %cmp.n1789, label %._crit_edge, label %scalar.ph1774.preheader

scalar.ph1774.preheader:                          ; preds = %vector.memcheck1776, %.lr.ph931, %middle.block1788
  %indvars.iv1078.ph = phi i64 [ 0, %vector.memcheck1776 ], [ 0, %.lr.ph931 ], [ %n.vec1780, %middle.block1788 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph1774.prol.loopexit, label %scalar.ph1774.prol

scalar.ph1774.prol:                               ; preds = %scalar.ph1774.preheader
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1078.ph
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !10
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1078.ph
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !10
  %i.hx = fsub double %i.hu, %i.hw
  %i.hy = fdiv double %i.hx, %.708
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1078.ph
  store double %i.hy, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next1079.prol = or disjoint i64 %indvars.iv1078.ph, 1
  br label %scalar.ph1774.prol.loopexit

scalar.ph1774.prol.loopexit:                      ; preds = %scalar.ph1774.prol, %scalar.ph1774.preheader
  %indvars.iv1078.unr = phi i64 [ %indvars.iv1078.ph, %scalar.ph1774.preheader ], [ %indvars.iv.next1079.prol, %scalar.ph1774.prol ]
  %i.hz = icmp eq i64 %i.fp, %indvars.iv1078.ph
  br i1 %i.hz, label %._crit_edge, label %scalar.ph1774

scalar.ph1774:                                    ; preds = %scalar.ph1774.prol.loopexit, %scalar.ph1774
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079.1, %scalar.ph1774 ], [ %indvars.iv1078.unr, %scalar.ph1774.prol.loopexit ] ; 5 uses
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
  br i1 %exitcond1082.not.1, label %._crit_edge, label %scalar.ph1774, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph1774.prol.loopexit, %scalar.ph1774, %middle.block1788, %.preheader864
  store double %i.he, ptr %i.hd, align 8, !tbaa !10
  %indvars.iv.next1084 = add nuw nsw i64 %indvars.iv1083, 1 ; 2 uses
  %exitcond1087.not = icmp eq i64 %indvars.iv.next1084, %i.bc
  br i1 %exitcond1087.not, label %._crit_edge935, label %.lr.ph934, !llvm.loop !19

._crit_edge935:                                   ; preds = %._crit_edge
  %i.im = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.in = and i32 %i.im, 16
  %.not672 = icmp eq i32 %i.in, 0
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
  %i.io = mul nuw nsw i64 %indvars.iv1088, %i.bh
  %gep1345 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1344, i64 %i.io
  %i.ip = load double, ptr %gep1345, align 8, !tbaa !10
  %i.iq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.41, double noundef %i.ip) #11 ; 0 uses
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
  %i.ir = mul nuw nsw i64 %indvars.iv.i712, %i.bh
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ir
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ak, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ak ] ; 2 uses
  %.076.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.ak ] ; 8 uses
  %.06075.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.161.i.i, %bb.ak ] ; 8 uses
  %.06274.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.163.i.i, %bb.ak ] ; 6 uses
  %.06473.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.165.i.i, %bb.ak ] ; 6 uses
  %.06672.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.167.i.i, %bb.ak ] ; 6 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !10 ; 4 uses
  %i.iv = tail call double @llvm.fabs.f64(double %i.iu) ; 10 uses
  %i.iw = fcmp ogt double %i.iv, f0x2000000000000000
  br i1 %i.iw, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ix = fcmp olt double %i.iv, %i.fs
  br i1 %i.ix, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.iu, double %.06473.i.i)
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.iz = fcmp ogt double %i.iv, %.06075.i.i
  br i1 %i.iz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ja = fdiv double %.06075.i.i, %i.iv          ; 2 uses
  %i.jb = fmul double %.06672.i.i, %i.ja
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.ja, double 1.000000e+00)
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  %i.jd = fdiv double %i.iv, %.06075.i.i          ; 2 uses
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
  %i.bbf = fdiv double %i.awn, %.3598
  %i.bbg = fdiv double %i.bbf, %.069.i342.i
  %i.bbh = fdiv double %i.bbg, %.069.i342.i
  %i.bbi = fcmp ogt double %i.awn, 0.000000e+00
  br i1 %i.bbi, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_Z8lm_enormiPKd.exit359.i
  %.inv362.i = fcmp oge double %.1254.i, %i.amr
  %..1254.i = select i1 %.inv362.i, double %.1254.i, double %i.amr
  br label %bb.gj

bb.gh:                                            ; preds = %_Z8lm_enormiPKd.exit359.i
  %i.bbj = fcmp olt double %i.awn, 0.000000e+00
  br i1 %i.bbj, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %.inv361.i = fcmp ole double %.1252.i, %i.amr
  %..1252.i = select i1 %.inv361.i, double %.1252.i, double %i.amr
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gg
  %.2255.i = phi double [ %..1254.i, %bb.gg ], [ %.1254.i, %bb.gi ], [ %.1254.i, %bb.gh ] ; 3 uses
  %.2.i = phi double [ %.1252.i, %bb.gg ], [ %..1252.i, %bb.gi ], [ %.1252.i, %bb.gh ]
  %i.bbk = fadd double %i.amr, %i.bbh             ; 2 uses
  %.inv363.i = fcmp oge double %.2255.i, %i.bbk
  %..2255.i = select i1 %.inv363.i, double %.2255.i, double %i.bbk
  %i.bbl = add nuw nsw i32 %.0262.i, 1
  br label %bb.en, !llvm.loop !108

_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit:           ; preds = %_Z8lm_enormiPKd.exit340.i, %bb.fp, %bb.fq, %_Z8lm_enormiPKd.exit.i737
  %.6 = phi double [ 0.000000e+00, %_Z8lm_enormiPKd.exit.i737 ], [ %i.amr, %bb.fq ], [ %i.amr, %bb.fp ], [ %i.amr, %_Z8lm_enormiPKd.exit340.i ] ; 6 uses
  br label %.lr.ph.i749

.lr.ph.i749:                                      ; preds = %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, %bb.gt
  %indvars.iv.i750 = phi i64 [ %indvars.iv.next.i751, %bb.gt ], [ 0, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 2 uses
  %.076.i = phi double [ %.1.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 8 uses
  %.06075.i = phi double [ %.161.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 8 uses
  %.06274.i = phi double [ %.163.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %.06473.i = phi double [ %.165.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %.06672.i = phi double [ %.167.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %i.bbm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i750
  %i.bbn = load double, ptr %i.bbm, align 8, !tbaa !10 ; 4 uses
  %i.bbo = tail call double @llvm.fabs.f64(double %i.bbn) ; 10 uses
  %i.bbp = fcmp ogt double %i.bbo, f0x2000000000000000
  br i1 %i.bbp, label %bb.gk, label %bb.gp

bb.gk:                                            ; preds = %.lr.ph.i749
  %i.bbq = fcmp olt double %i.bbo, %i.dp
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

bb.gp:                                            ; preds = %.lr.ph.i749
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
  %.1.i = phi double [ %.076.i, %bb.gl ], [ %.076.i, %bb.gn ], [ %.076.i, %bb.go ], [ %i.bbo, %bb.gq ], [ %.076.i, %bb.gs ], [ %.076.i, %bb.gr ] ; 8 uses
  %indvars.iv.next.i751 = add nuw nsw i64 %indvars.iv.i750, 1 ; 2 uses
  %exitcond.not.i752 = icmp eq i64 %indvars.iv.next.i751, %i.bc
  br i1 %exitcond.not.i752, label %._crit_edge.i753, label %.lr.ph.i749, !llvm.loop !0

._crit_edge.i753:                                 ; preds = %bb.gt
  %i.bcf = fcmp une double %.167.i, 0.000000e+00
  br i1 %i.bcf, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %._crit_edge.i753
  %i.bcg = fdiv double %.165.i, %.161.i
  %i.bch = fdiv double %i.bcg, %.161.i
  %i.bci = fadd double %.167.i, %i.bch
  %i.bcj = tail call double @sqrt(double noundef %i.bci) #11
  %i.bck = fmul double %.161.i, %i.bcj
  br label %_Z8lm_enormiPKd.exit

bb.gv:                                            ; preds = %._crit_edge.i753
  %i.bcl = fcmp une double %.165.i, 0.000000e+00
  br i1 %i.bcl, label %bb.gw, label %.thread.i746

bb.gw:                                            ; preds = %bb.gv
  %i.bcm = fcmp ult double %.165.i, %.1.i
  br i1 %i.bcm, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bcn = fdiv double %.1.i, %.165.i
  %i.bco = fmul double %.163.i, %.1.i
  %i.bcp = tail call double @llvm.fmuladd.f64(double %i.bcn, double %i.bco, double 1.000000e+00)
  %i.bcq = fmul double %.165.i, %i.bcp
  %i.bcr = tail call double @sqrt(double noundef %i.bcq) #11
  br label %_Z8lm_enormiPKd.exit

bb.gy:                                            ; preds = %bb.gw
  %i.bcs = fdiv double %.165.i, %.1.i
  %i.bct = tail call double @llvm.fmuladd.f64(double %.1.i, double %.163.i, double %i.bcs)
  %i.bcu = fmul double %.1.i, %i.bct
  %i.bcv = tail call double @sqrt(double noundef %i.bcu) #11
  br label %_Z8lm_enormiPKd.exit

.thread.i746:                                     ; preds = %bb.gv
  %i.bcw = tail call double @sqrt(double noundef %.163.i) #11
  %i.bcx = fmul double %.1.i, %i.bcw
  br label %_Z8lm_enormiPKd.exit

_Z8lm_enormiPKd.exit:                             ; preds = %bb.gu, %bb.gx, %bb.gy, %.thread.i746
  %.069.i = phi double [ %i.bck, %bb.gu ], [ %i.bcr, %bb.gx ], [ %i.bcv, %bb.gy ], [ %i.bcx, %.thread.i746 ] ; 7 uses
  %i.bcy = tail call double @llvm.fabs.f64(double %.069.i)
  %i.bcz = fcmp ueq double %i.bcy, +inf
  br i1 %i.bcz, label %bb.gz, label %.lr.ph983.preheader

bb.gz:                                            ; preds = %_Z8lm_enormiPKd.exit
  %i.bda = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not682 = icmp eq i32 %i.bda, 0
  br i1 %.not682, label %.thread.sink.split, label %.thread.sink.split.sink.split

.lr.ph983.preheader:                              ; preds = %_Z8lm_enormiPKd.exit
  %i.bdb = fdiv double %.069.i, %.1609            ; 2 uses
  %i.bdc = fmul double %.6, %i.bdb
  %i.bdd = fmul double %i.bdb, %i.bdc             ; 2 uses
  br label %.lr.ph983

.lr.ph983:                                        ; preds = %.lr.ph983.preheader, %.loopexit1792
  %indvars.iv1164 = phi i64 [ 0, %.lr.ph983.preheader ], [ %indvars.iv.next1165, %.loopexit1792 ] ; 7 uses
  %indvars.iv1162 = phi i64 [ 1, %.lr.ph983.preheader ], [ %indvars.iv.next1163, %.loopexit1792 ] ; 6 uses
  %i.bde = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1164
  store double 0.000000e+00, ptr %i.bde, align 8, !tbaa !10
  %i.bdf = mul nuw nsw i64 %indvars.iv1164, %i.dq
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1164
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !149
  %i.bdi = sext i32 %i.bdh to i64                 ; 2 uses
  %i.bdj = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bdi ; 5 uses
  %invariant.gep1352 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bdf ; 5 uses
  %min.iters.check1439 = icmp samesign ult i64 %indvars.iv1162, 4
  br i1 %min.iters.check1439, label %scalar.ph1438.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph983
  %i.bdk = shl nuw nsw i64 %indvars.iv1164, 3
  %i.bdl = getelementptr i8, ptr %i.gy, i64 %i.bdk ; 2 uses
  %i.bdm = mul i64 %indvars.iv1164, %i.dw
  %i.bdn = getelementptr i8, ptr %i.hb, i64 %i.bdm
  %i.bdo = shl nsw i64 %i.bdi, 3
  %gep1964 = getelementptr i8, ptr %invariant.gep1963, i64 %i.bdo
  %i.bdp = getelementptr i8, ptr %gep1964, i64 8
  %bound0 = icmp ult ptr %i.br, %i.bdn
  %bound1 = icmp ult ptr %invariant.gep1352, %i.bdl
  %found.conflict = and i1 %bound0, %bound1
  %bound01440 = icmp ult ptr %i.br, %i.bdp
  %bound11441 = icmp ult ptr %i.bdj, %i.bdl
  %found.conflict1442 = and i1 %bound01440, %bound11441
  %conflict.rdx = or i1 %found.conflict, %found.conflict1442
  br i1 %conflict.rdx, label %scalar.ph1438.preheader, label %vector.ph1443

vector.ph1443:                                    ; preds = %vector.memcheck
  %n.vec1444 = and i64 %indvars.iv1162, 9223372036854775804 ; 3 uses
  %i.bdq = load double, ptr %i.bdj, align 8, !tbaa !10, !alias.scope !165
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bdq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1445

vector.body1445:                                  ; preds = %vector.body1445, %vector.ph1443
  %index1446 = phi i64 [ 0, %vector.ph1443 ], [ %index.next1451, %vector.body1445 ] ; 3 uses
  %i.bdr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %index1446 ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 16
  %wide.load1447 = load <2 x double>, ptr %i.bdr, align 8, !tbaa !10, !alias.scope !166
  %wide.load1448 = load <2 x double>, ptr %i.bds, align 8, !tbaa !10, !alias.scope !166
  %i.bdt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index1446 ; 3 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdt, i64 16 ; 2 uses
  %wide.load1449 = load <2 x double>, ptr %i.bdt, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %wide.load1450 = load <2 x double>, ptr %i.bdu, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %i.bdv = fneg <2 x double> %wide.load1447
  %i.bdw = fneg <2 x double> %wide.load1448
  %i.bdx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdv, <2 x double> %broadcast.splat, <2 x double> %wide.load1449)
  %i.bdy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdw, <2 x double> %broadcast.splat, <2 x double> %wide.load1450)
  store <2 x double> %i.bdx, ptr %i.bdt, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  store <2 x double> %i.bdy, ptr %i.bdu, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %index.next1451 = add nuw i64 %index1446, 4     ; 2 uses
  %i.bdz = icmp eq i64 %index.next1451, %n.vec1444
  br i1 %i.bdz, label %middle.block1452, label %vector.body1445, !llvm.loop !113

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
  %i.bea = load double, ptr %gep1353.prol, align 8, !tbaa !10
  %i.beb = load double, ptr %i.bdj, align 8, !tbaa !10
  %i.bec = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1155.ph ; 2 uses
  %i.bed = load double, ptr %i.bec, align 8, !tbaa !10
  %i.bee = fneg double %i.bea
  %i.bef = tail call double @llvm.fmuladd.f64(double %i.bee, double %i.beb, double %i.bed)
  store double %i.bef, ptr %i.bec, align 8, !tbaa !10
  %indvars.iv.next1156.prol = or disjoint i64 %indvars.iv1155.ph, 1
  br label %scalar.ph1438.prol.loopexit

scalar.ph1438.prol.loopexit:                      ; preds = %scalar.ph1438.prol, %scalar.ph1438.preheader
  %indvars.iv1155.unr = phi i64 [ %indvars.iv1155.ph, %scalar.ph1438.preheader ], [ %indvars.iv.next1156.prol, %scalar.ph1438.prol ]
  %i.beg = icmp eq i64 %indvars.iv1164, %indvars.iv1155.ph
  br i1 %i.beg, label %.loopexit1792, label %scalar.ph1438

scalar.ph1438:                                    ; preds = %scalar.ph1438.prol.loopexit, %scalar.ph1438
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156.1, %scalar.ph1438 ], [ %indvars.iv1155.unr, %scalar.ph1438.prol.loopexit ] ; 4 uses
  %gep1353 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %indvars.iv1155
  %i.beh = load double, ptr %gep1353, align 8, !tbaa !10
  %i.bei = load double, ptr %i.bdj, align 8, !tbaa !10
  %i.bej = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1155 ; 2 uses
  %i.bek = load double, ptr %i.bej, align 8, !tbaa !10
  %i.bel = fneg double %i.beh
  %i.bem = tail call double @llvm.fmuladd.f64(double %i.bel, double %i.bei, double %i.bek)
  store double %i.bem, ptr %i.bej, align 8, !tbaa !10
  %indvars.iv.next1156 = add nuw nsw i64 %indvars.iv1155, 1 ; 2 uses
  %gep1353.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %indvars.iv.next1156
  %i.ben = load double, ptr %gep1353.1, align 8, !tbaa !10
  %i.beo = load double, ptr %i.bdj, align 8, !tbaa !10
  %i.bep = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next1156 ; 2 uses
  %i.beq = load double, ptr %i.bep, align 8, !tbaa !10
  %i.ber = fneg double %i.ben
  %i.bes = tail call double @llvm.fmuladd.f64(double %i.ber, double %i.beo, double %i.beq)
  store double %i.bes, ptr %i.bep, align 8, !tbaa !10
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
  %i.bet = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i761
  %i.beu = load double, ptr %i.bet, align 8, !tbaa !10 ; 4 uses
  %i.bev = tail call double @llvm.fabs.f64(double %i.beu) ; 10 uses
  %i.bew = fcmp ogt double %i.bev, f0x2000000000000000
  br i1 %i.bew, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %.lr.ph.i760
  %i.bex = fcmp olt double %i.bev, %i.dp
  br i1 %i.bex, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bey = tail call double @llvm.fmuladd.f64(double %i.beu, double %i.beu, double %.06473.i765)
  br label %bb.hj

bb.hc:                                            ; preds = %bb.ha
  %i.bez = fcmp ogt double %i.bev, %.06075.i763
  br i1 %i.bez, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.bfa = fdiv double %.06075.i763, %i.bev       ; 2 uses
  %i.bfb = fmul double %.06672.i766, %i.bfa
  %i.bfc = tail call double @llvm.fmuladd.f64(double %i.bfb, double %i.bfa, double 1.000000e+00)
  br label %bb.hj

bb.he:                                            ; preds = %bb.hc
  %i.bfd = fdiv double %i.bev, %.06075.i763       ; 2 uses
  %i.bfe = tail call double @llvm.fmuladd.f64(double %i.bfd, double %i.bfd, double %.06672.i766)
  br label %bb.hj

bb.hf:                                            ; preds = %.lr.ph.i760
  %i.bff = fcmp ogt double %i.bev, %.076.i762
  br i1 %i.bff, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.bfg = fdiv double %.076.i762, %i.bev         ; 2 uses
  %i.bfh = fmul double %.06274.i764, %i.bfg
  %i.bfi = tail call double @llvm.fmuladd.f64(double %i.bfh, double %i.bfg, double 1.000000e+00)
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  %i.bfj = fcmp une double %i.beu, 0.000000e+00
  br i1 %i.bfj, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.bfk = fdiv double %i.bev, %.076.i762         ; 2 uses
  %i.bfl = tail call double @llvm.fmuladd.f64(double %i.bfk, double %i.bfk, double %.06274.i764)
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.he, %bb.hd, %bb.hb
  %.167.i767 = phi double [ %.06672.i766, %bb.hb ], [ %i.bfc, %bb.hd ], [ %i.bfe, %bb.he ], [ %.06672.i766, %bb.hg ], [ %.06672.i766, %bb.hi ], [ %.06672.i766, %bb.hh ] ; 3 uses
  %.165.i768 = phi double [ %i.bey, %bb.hb ], [ %.06473.i765, %bb.hd ], [ %.06473.i765, %bb.he ], [ %.06473.i765, %bb.hg ], [ %.06473.i765, %bb.hi ], [ %.06473.i765, %bb.hh ] ; 7 uses
  %.163.i769 = phi double [ %.06274.i764, %bb.hb ], [ %.06274.i764, %bb.hd ], [ %.06274.i764, %bb.he ], [ %i.bfi, %bb.hg ], [ %i.bfl, %bb.hi ], [ %.06274.i764, %bb.hh ] ; 4 uses
  %.161.i770 = phi double [ %.06075.i763, %bb.hb ], [ %i.bev, %bb.hd ], [ %.06075.i763, %bb.he ], [ %.06075.i763, %bb.hg ], [ %.06075.i763, %bb.hi ], [ %.06075.i763, %bb.hh ] ; 4 uses
  %.1.i771 = phi double [ %.076.i762, %bb.hb ], [ %.076.i762, %bb.hd ], [ %.076.i762, %bb.he ], [ %i.bev, %bb.hg ], [ %.076.i762, %bb.hi ], [ %.076.i762, %bb.hh ] ; 8 uses
  %indvars.iv.next.i772 = add nuw nsw i64 %indvars.iv.i761, 1 ; 2 uses
  %exitcond.not.i773 = icmp eq i64 %indvars.iv.next.i772, %i.bc
  br i1 %exitcond.not.i773, label %._crit_edge.i774, label %.lr.ph.i760, !llvm.loop !0

._crit_edge.i774:                                 ; preds = %bb.hj
  %i.bfm = fcmp une double %.167.i767, 0.000000e+00
  br i1 %i.bfm, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %._crit_edge.i774
  %i.bfn = fdiv double %.165.i768, %.161.i770
  %i.bfo = fdiv double %i.bfn, %.161.i770
  %i.bfp = fadd double %.167.i767, %i.bfo
  %i.bfq = tail call double @sqrt(double noundef %i.bfp) #11
  %i.bfr = fmul double %.161.i770, %i.bfq
  br label %_Z8lm_enormiPKd.exit775

bb.hl:                                            ; preds = %._crit_edge.i774
  %i.bfs = fcmp une double %.165.i768, 0.000000e+00
  br i1 %i.bfs, label %bb.hm, label %.thread.i754

bb.hm:                                            ; preds = %bb.hl
  %i.bft = fcmp ult double %.165.i768, %.1.i771
  br i1 %i.bft, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.bfu = fdiv double %.1.i771, %.165.i768
  %i.bfv = fmul double %.163.i769, %.1.i771
  %i.bfw = tail call double @llvm.fmuladd.f64(double %i.bfu, double %i.bfv, double 1.000000e+00)
  %i.bfx = fmul double %.165.i768, %i.bfw
  %i.bfy = tail call double @sqrt(double noundef %i.bfx) #11
  br label %_Z8lm_enormiPKd.exit775

bb.ho:                                            ; preds = %bb.hm
  %i.bfz = fdiv double %.165.i768, %.1.i771
  %i.bga = tail call double @llvm.fmuladd.f64(double %.1.i771, double %.163.i769, double %i.bfz)
  %i.bgb = fmul double %.1.i771, %i.bga
  %i.bgc = tail call double @sqrt(double noundef %i.bgb) #11
  br label %_Z8lm_enormiPKd.exit775

.thread.i754:                                     ; preds = %bb.hl
  %i.bgd = tail call double @sqrt(double noundef %.163.i769) #11
  %i.bge = fmul double %.1.i771, %i.bgd
  br label %_Z8lm_enormiPKd.exit775

_Z8lm_enormiPKd.exit775:                          ; preds = %bb.hk, %bb.hn, %bb.ho, %.thread.i754
  %.069.i757 = phi double [ %i.bfr, %bb.hk ], [ %i.bfy, %bb.hn ], [ %i.bgc, %bb.ho ], [ %i.bge, %.thread.i754 ]
  br label %.lr.ph.i782
end_hunk_1
