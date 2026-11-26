Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/lmmin?download=true
inline.NumInlined: 23
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0
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
  br i1 %min.iters.check, label %.lr.ph.preheader1842, label %vector.ph

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
  br i1 %cmp.n, label %.loopexit883, label %.lr.ph.preheader1842

.lr.ph.preheader1842:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1842, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1842 ] ; 2 uses
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
  %i.dx = getelementptr i8, ptr %i.bf, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.bo
  %scevgep = getelementptr i8, ptr %i.dy, i64 8
  %i.dz = add nuw nsw i64 %i.bi, 8
  %i.ea = shl nuw nsw i64 %i.bc, 5
  %i.eb = add nuw nsw i64 %i.bh, %i.bn
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = mul nuw nsw i64 %i.bc, 24
  %i.ee = add nuw nsw i64 %i.bi, 8
  %i.ef = shl nuw nsw i64 %i.bc, 4
  %i.eg = mul nuw nsw i64 %i.bc, 48
  %i.eh = add nuw nsw i64 %i.bh, %i.bn
  %i.ei = shl nuw nsw i64 %i.eh, 3                ; 2 uses
  %i.ej = getelementptr i8, ptr %i.bf, i64 %i.eg
  %scevgep1467 = getelementptr i8, ptr %i.ej, i64 %i.ei ; 3 uses
  %i.ek = mul nuw nsw i64 %i.bc, 40
  %i.el = mul nuw nsw i64 %i.bc, 24               ; 2 uses
  %i.em = shl nuw nsw i64 %i.bh, 3
  %i.en = add nuw nsw i64 %i.bi, 8                ; 2 uses
  %i.eo = shl nuw nsw i64 %i.bc, 4
  %i.ep = add nuw nsw i64 %i.bh, %i.bn
  %i.eq = shl nuw nsw i64 %i.ep, 3
  %i.er = sub nuw nsw i64 -8, %i.bi
  %i.es = shl nuw nsw i64 %i.bc, 4
  %i.et = shl nuw nsw i64 %i.bh, 3
  %i.eu = mul nuw nsw i64 %i.bc, 40
  %i.ev = add nuw nsw i64 %i.bh, %i.bn
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = add nuw nsw i64 %i.eu, %i.ew
  %i.ey = shl nuw nsw i64 %i.bc, 4
  %i.ez = add nuw nsw i64 %i.bh, %i.bc
  %i.fa = shl nuw nsw i64 %i.ez, 4
  %i.fb = add nuw nsw i64 %i.bi, 8
  %i.fc = mul nuw nsw i64 %i.bc, 40
  %i.fd = add nuw nsw i64 %i.bh, %i.bn
  %i.fe = shl nuw nsw i64 %i.bc, 4                ; 2 uses
  %i.ff = add nuw nsw i64 %i.bh, %i.bc
  %i.fg = shl nuw nsw i64 %i.ff, 4                ; 2 uses
  %scevgep1708 = getelementptr i8, ptr %i.bf, i64 %i.fg
  %i.fh = add nuw nsw i64 %i.bk, 8
  %i.fi = mul i64 %i.fh, %i.bh
  %i.fj = getelementptr i8, ptr %i.bf, i64 %i.fi
  %scevgep1712 = getelementptr i8, ptr %i.fj, i64 %i.fe
  %i.fk = add nuw nsw i64 %i.bi, 8
  %i.fl = shl nuw nsw i64 %i.bc, 4
  %i.fm = add nuw nsw i64 %i.bh, %i.bc
  %i.fn = shl nuw nsw i64 %i.fm, 4
  %scevgep1754 = getelementptr i8, ptr %i.bf, i64 %i.fn
  %i.fo = add nuw nsw i64 %i.bk, 8
  %i.fp = mul i64 %i.fo, %i.bh
  %i.fq = getelementptr i8, ptr %i.bf, i64 %i.fp
  %scevgep1755 = getelementptr i8, ptr %i.fq, i64 %i.fl
  %i.fr = shl nuw nsw i64 %i.bc, 4
  %i.fs = add nuw nsw i64 %i.fr, %i.bi
  %.neg = mul nsw i64 %i.bc, -24
  %i.ft = shl nuw nsw i64 %i.bn, 3
  %i.fu = sub nsw i64 %.neg, %i.ft
  %i.fv = add nsw i64 %i.bh, -1                   ; 3 uses
  %i.fw = add nsw i64 %i.bc, -1                   ; 5 uses
  %i.fx = add nsw i64 %i.bc, -2
  %min.iters.check1778 = icmp eq i32 %4, 1
  %invariant.op = add i64 %i.fu, -1
  %invariant.op1956 = add i64 %i.fs, -1
  %n.vec1783 = and i64 %i.bh, 4294967294          ; 3 uses
  %cmp.n1792 = icmp eq i64 %n.vec1783, %i.bh
  %xtraiter = and i64 %i.bh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fy = extractelement <2 x double> %i.dm, i64 0
  %i.fz = getelementptr i8, ptr %i.bf, i64 %i.fe
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.bi
  %i.gb = getelementptr i8, ptr %i.bf, i64 %i.fg
  %min.iters.check1757 = icmp ult i32 %4, 4
  %n.vec1763 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1772 = icmp eq i64 %n.vec1763, %i.bh
  %xtraiter1845 = and i64 %i.bh, 1
  %lcmp.mod1846.not = icmp eq i64 %xtraiter1845, 0
  %i.gc = add nsw i64 %i.bh, -1
  %i.gd = add nsw i64 %i.bh, -1
  %min.iters.check1685 = icmp ult i32 %4, 4
  %n.vec1687 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1696 = icmp eq i64 %n.vec1687, %i.bh
  %min.iters.check1673 = icmp ult i32 %4, 4
  %n.vec1675 = and i64 %i.bh, 4294967292          ; 3 uses
  %cmp.n1682 = icmp eq i64 %n.vec1675, %i.bh
  %invariant.gep1958 = getelementptr i8, ptr %i.bf, i64 %i.fc
  %i.ge = getelementptr i8, ptr %i.bf, i64 %i.ey
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.bi
  %i.gg = getelementptr i8, ptr %i.bf, i64 %i.fa
  %i.gh = add nsw i64 %i.bh, -1
  %min.iters.check1632 = icmp ult i32 %0, 4
  %n.vec1634 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1643 = icmp eq i64 %n.vec1634, %i.bc
  %min.iters.check1620 = icmp ult i32 %0, 4
  %n.vec1622 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1629 = icmp eq i64 %n.vec1622, %i.bc
  %min.iters.check1606 = icmp ult i32 %0, 4
  %n.vec1608 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1617 = icmp eq i64 %n.vec1608, %i.bc
  %i.gi = getelementptr i8, ptr %i.bf, i64 %i.es
  %xtraiter1865 = and i64 %i.bc, 3                ; 3 uses
  %i.gj = icmp ult i32 %0, 4
  %unroll_iter1869 = and i64 %i.bc, 2147483644
  %lcmp.mod1867.not = icmp eq i64 %xtraiter1865, 0
  %lcmp.mod1868 = icmp ne i64 %xtraiter1865, 0
  %min.iters.check1562 = icmp ult i32 %0, 4
  %n.vec1564 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1573 = icmp eq i64 %n.vec1564, %i.bc
  %xtraiter1871 = and i64 %i.bc, 1
  %i.gk = icmp eq i64 %i.fw, 0
  %unroll_iter1875.a = and i64 %i.bc, 2147483646
  %lcmp.mod1873.not = icmp eq i64 %xtraiter1871, 0
  %lcmp.mod1874.a = trunc i32 %0 to i1
  %min.iters.check1548 = icmp ult i32 %0, 4
  %n.vec1550 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1559 = icmp eq i64 %n.vec1550, %i.bc
  %ident.check.not = icmp eq i32 %4, 1
  %invariant.gep1960 = getelementptr i8, ptr %i.bf, i64 %i.el
  %invariant.gep1962 = getelementptr i8, ptr %invariant.gep1960, i64 %i.eq
  %i.gl = getelementptr i8, ptr %i.bf, i64 %i.eo
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.bi
  %i.gn = getelementptr i8, ptr %i.gm, i64 8
  %i.go = getelementptr i8, ptr %i.bf, i64 %i.el
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.bi
  %xtraiter1898 = and i64 %i.bc, 1
  %i.gq = icmp eq i64 %i.fw, 0
  %unroll_iter1903 = and i64 %i.bc, 2147483646
  %lcmp.mod1900.not = icmp eq i64 %xtraiter1898, 0
  %lcmp.mod1902 = trunc i32 %0 to i1
  %xtraiter1905 = and i64 %i.bc, 3                ; 3 uses
  %i.gr = icmp ult i64 %i.fw, 3
  %unroll_iter1909 = and i64 %i.bc, 2147483644
  %lcmp.mod1907.not = icmp eq i64 %xtraiter1905, 0
  %lcmp.mod1908 = icmp ne i64 %xtraiter1905, 0
  %min.iters.check1493 = icmp ult i32 %0, 4
  %n.vec1495 = and i64 %i.bc, 2147483644          ; 3 uses
  %cmp.n1504 = icmp eq i64 %n.vec1495, %i.bc
  %xtraiter1912 = and i64 %i.bc, 1
  %i.gs = icmp eq i64 %i.fw, 0
  %unroll_iter1916 = and i64 %i.bc, 2147483646
  %lcmp.mod1914.not.a = icmp eq i64 %xtraiter1912, 0
  %lcmp.mod1915 = trunc i32 %0 to i1
  %i.gt = getelementptr i8, ptr %i.bf, i64 %i.ek
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.ei
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %i.gw = getelementptr i8, ptr %i.bf, i64 %i.ef
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.bi
  %i.gy = getelementptr i8, ptr %i.gx, i64 8
  %i.gz = getelementptr i8, ptr %i.bf, i64 %i.ed
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.bi
  %bound11475 = icmp ult ptr %i.bs, %scevgep1467
  %i.hb = add nsw i64 %i.bc, -1
  %i.hc = getelementptr i8, ptr %i.bf, i64 %i.ea
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.ec
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %i.hf = getelementptr i8, ptr %i.bf, i64 %i.dw
  %i.hg = getelementptr i8, ptr %i.hf, i64 8
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
  %.0592 = phi i32 [ %i.bny, %bb.jn ], [ 0, %.preheader877 ] ; 3 uses
  br label %.lr.ph934

.lr.ph934:                                        ; preds = %.lr.ph934.preheader, %._crit_edge
  %indvars.iv1083 = phi i64 [ 0, %.lr.ph934.preheader ], [ %indvars.iv.next1084, %._crit_edge ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1083 ; 3 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !10 ; 3 uses
  %i.hj = tail call double @llvm.fabs.f64(double %i.hi)
  %i.hk = fmul double %i.h, %i.hj                 ; 2 uses
  %.inv850 = fcmp oge double %i.df, %i.hk
  %.708 = select i1 %.inv850, double %i.df, double %i.hk ; 5 uses
  %i.hl = fadd double %i.hi, %.708
  store double %i.hl, ptr %i.hh, align 8, !tbaa !10
  tail call void %7(ptr noundef %1, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.r)
  %i.hm = load i32, ptr %i.s, align 8, !tbaa !139
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.s, align 8, !tbaa !139
  %i.ho = load i32, ptr %i.r, align 8, !tbaa !138
  %.not701 = icmp eq i32 %i.ho, 0
  br i1 %.not701, label %.preheader864, label %.thread

.preheader864:                                    ; preds = %.lr.ph934
  br i1 %.not1359, label %._crit_edge, label %.lr.ph931

.lr.ph931:                                        ; preds = %.preheader864
  %i.hp = mul nuw nsw i64 %indvars.iv1083, %i.bh
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.hp ; 4 uses
  br i1 %min.iters.check1778, label %scalar.ph1777.preheader, label %vector.memcheck1779

vector.memcheck1779:                              ; preds = %.lr.ph931
  %i.hq = mul i64 %indvars.iv1083, %i.bi          ; 2 uses
  %.reass = add i64 %i.hq, %invariant.op
  %diff.check = icmp ult i64 %.reass, 15
  %.reass1957 = add i64 %i.hq, %invariant.op1956
  %diff.check1780 = icmp ult i64 %.reass1957, 15
  %conflict.rdx1781 = or i1 %diff.check, %diff.check1780
  br i1 %conflict.rdx1781, label %scalar.ph1777.preheader, label %vector.ph1782

vector.ph1782:                                    ; preds = %vector.memcheck1779
  %broadcast.splatinsert1784 = insertelement <2 x double> poison, double %.708, i64 0
  %broadcast.splat1785 = shufflevector <2 x double> %broadcast.splatinsert1784, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1786

vector.body1786:                                  ; preds = %vector.body1786, %vector.ph1782
  %index1787 = phi i64 [ 0, %vector.ph1782 ], [ %index.next1790, %vector.body1786 ] ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1787
  %wide.load1788 = load <2 x double>, ptr %i.hr, align 8, !tbaa !10
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1787
  %wide.load1789 = load <2 x double>, ptr %i.hs, align 8, !tbaa !10
  %i.ht = fsub <2 x double> %wide.load1788, %wide.load1789
  %i.hu = fdiv <2 x double> %i.ht, %broadcast.splat1785
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1787
  store <2 x double> %i.hu, ptr %i.hv, align 8, !tbaa !10
  %index.next1790 = add nuw i64 %index1787, 2     ; 2 uses
  %i.hw = icmp eq i64 %index.next1790, %n.vec1783
  br i1 %i.hw, label %middle.block1791, label %vector.body1786, !llvm.loop !17

middle.block1791:                                 ; preds = %vector.body1786
  br i1 %cmp.n1792, label %._crit_edge, label %scalar.ph1777.preheader

scalar.ph1777.preheader:                          ; preds = %vector.memcheck1779, %.lr.ph931, %middle.block1791
  %indvars.iv1078.ph = phi i64 [ 0, %vector.memcheck1779 ], [ 0, %.lr.ph931 ], [ %n.vec1783, %middle.block1791 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph1777.prol.loopexit, label %scalar.ph1777.prol

scalar.ph1777.prol:                               ; preds = %scalar.ph1777.preheader
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1078.ph
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !10
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1078.ph
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !10
  %i.ib = fsub double %i.hy, %i.ia
  %i.ic = fdiv double %i.ib, %.708
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1078.ph
  store double %i.ic, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next1079.prol = or disjoint i64 %indvars.iv1078.ph, 1
  br label %scalar.ph1777.prol.loopexit

scalar.ph1777.prol.loopexit:                      ; preds = %scalar.ph1777.prol, %scalar.ph1777.preheader
  %indvars.iv1078.unr = phi i64 [ %indvars.iv1078.ph, %scalar.ph1777.preheader ], [ %indvars.iv.next1079.prol, %scalar.ph1777.prol ]
  %i.id = icmp eq i64 %i.fv, %indvars.iv1078.ph
  br i1 %i.id, label %._crit_edge, label %scalar.ph1777

scalar.ph1777:                                    ; preds = %scalar.ph1777.prol.loopexit, %scalar.ph1777
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079.1, %scalar.ph1777 ], [ %indvars.iv1078.unr, %scalar.ph1777.prol.loopexit ] ; 5 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1078
  %i.if = load double, ptr %i.ie, align 8, !tbaa !10
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1078
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !10
  %i.ii = fsub double %i.if, %i.ih
  %i.ij = fdiv double %i.ii, %.708
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1078
  store double %i.ij, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next1079 = add nuw nsw i64 %indvars.iv1078, 1 ; 3 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1079
  %i.il = load double, ptr %i.ik, align 8, !tbaa !10
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next1079
  %i.in = load double, ptr %i.im, align 8, !tbaa !10
  %i.io = fsub double %i.il, %i.in
  %i.ip = fdiv double %i.io, %.708
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next1079
  store double %i.ip, ptr %gep.1, align 8, !tbaa !10
  %indvars.iv.next1079.1 = add nuw nsw i64 %indvars.iv1078, 2 ; 2 uses
  %exitcond1082.not.1 = icmp eq i64 %indvars.iv.next1079.1, %i.bh
  br i1 %exitcond1082.not.1, label %._crit_edge, label %scalar.ph1777, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph1777.prol.loopexit, %scalar.ph1777, %middle.block1791, %.preheader864
  store double %i.hi, ptr %i.hh, align 8, !tbaa !10
  %indvars.iv.next1084 = add nuw nsw i64 %indvars.iv1083, 1 ; 2 uses
  %exitcond1087.not = icmp eq i64 %indvars.iv.next1084, %i.bc
  br i1 %exitcond1087.not, label %._crit_edge935, label %.lr.ph934, !llvm.loop !19

._crit_edge935:                                   ; preds = %._crit_edge
  %i.iq = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.ir = and i32 %i.iq, 16
  %.not672 = icmp eq i32 %i.ir, 0
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
  %i.is = mul nuw nsw i64 %indvars.iv1088, %i.bh
  %gep1345 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1344, i64 %i.is
  %i.it = load double, ptr %gep1345, align 8, !tbaa !10
  %i.iu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.41, double noundef %i.it) #11 ; 0 uses
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
  %i.iv = mul nuw nsw i64 %indvars.iv.i712, %i.bh
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.iv
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ak, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ak ] ; 2 uses
  %.076.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.ak ] ; 8 uses
  %.06075.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.161.i.i, %bb.ak ] ; 8 uses
  %.06274.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.163.i.i, %bb.ak ] ; 6 uses
  %.06473.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.165.i.i, %bb.ak ] ; 6 uses
  %.06672.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %.167.i.i, %bb.ak ] ; 6 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv.i.i
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !10 ; 4 uses
  %i.iz = tail call double @llvm.fabs.f64(double %i.iy) ; 10 uses
  %i.ja = fcmp ogt double %i.iz, f0x2000000000000000
  br i1 %i.ja, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.jb = fcmp olt double %i.iz, %i.fy
  br i1 %i.jb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.iy, double %i.iy, double %.06473.i.i)
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.jd = fcmp ogt double %i.iz, %.06075.i.i
  br i1 %i.jd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.je = fdiv double %.06075.i.i, %i.iz          ; 2 uses
end_hunk_0
begin_hunk_1_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a

bb.ez:                                            ; preds = %.lr.ph.i325.i
  %i.avj = fcmp olt double %i.avh, %i.dn
  br i1 %i.avj, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.avk = tail call double @llvm.fmuladd.f64(double %i.avg, double %i.avg, double %.06473.i330.i)
  br label %bb.fi

bb.fb:                                            ; preds = %bb.ez
  %i.avl = fcmp ogt double %i.avh, %.06075.i328.i
  br i1 %i.avl, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.avm = fdiv double %.06075.i328.i, %i.avh     ; 2 uses
  %i.avn = fmul double %.06672.i331.i, %i.avm
  %i.avo = tail call double @llvm.fmuladd.f64(double %i.avn, double %i.avm, double 1.000000e+00)
  br label %bb.fi

bb.fd:                                            ; preds = %bb.fb
  %i.avp = fdiv double %i.avh, %.06075.i328.i     ; 2 uses
  %i.avq = tail call double @llvm.fmuladd.f64(double %i.avp, double %i.avp, double %.06672.i331.i)
  br label %bb.fi

bb.fe:                                            ; preds = %.lr.ph.i325.i
  %i.avr = fcmp ogt double %i.avh, %.076.i327.i
  br i1 %i.avr, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.avs = fdiv double %.076.i327.i, %i.avh       ; 2 uses
  %i.avt = fmul double %.06274.i329.i, %i.avs
  %i.avu = tail call double @llvm.fmuladd.f64(double %i.avt, double %i.avs, double 1.000000e+00)
  br label %bb.fi

bb.fg:                                            ; preds = %bb.fe
  %i.avv = fcmp une double %i.avg, 0.000000e+00
  br i1 %i.avv, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.avw = fdiv double %i.avh, %.076.i327.i       ; 2 uses
  %i.avx = tail call double @llvm.fmuladd.f64(double %i.avw, double %i.avw, double %.06274.i329.i)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fd, %bb.fc, %bb.fa
  %.167.i332.i = phi double [ %.06672.i331.i, %bb.fa ], [ %i.avo, %bb.fc ], [ %i.avq, %bb.fd ], [ %.06672.i331.i, %bb.ff ], [ %.06672.i331.i, %bb.fh ], [ %.06672.i331.i, %bb.fg ] ; 3 uses
  %.165.i333.i = phi double [ %i.avk, %bb.fa ], [ %.06473.i330.i, %bb.fc ], [ %.06473.i330.i, %bb.fd ], [ %.06473.i330.i, %bb.ff ], [ %.06473.i330.i, %bb.fh ], [ %.06473.i330.i, %bb.fg ] ; 7 uses
  %.163.i334.i = phi double [ %.06274.i329.i, %bb.fa ], [ %.06274.i329.i, %bb.fc ], [ %.06274.i329.i, %bb.fd ], [ %i.avu, %bb.ff ], [ %i.avx, %bb.fh ], [ %.06274.i329.i, %bb.fg ] ; 4 uses
  %.161.i335.i = phi double [ %.06075.i328.i, %bb.fa ], [ %i.avh, %bb.fc ], [ %.06075.i328.i, %bb.fd ], [ %.06075.i328.i, %bb.ff ], [ %.06075.i328.i, %bb.fh ], [ %.06075.i328.i, %bb.fg ] ; 4 uses
  %.1.i336.i = phi double [ %.076.i327.i, %bb.fa ], [ %.076.i327.i, %bb.fc ], [ %.076.i327.i, %bb.fd ], [ %i.avh, %bb.ff ], [ %.076.i327.i, %bb.fh ], [ %.076.i327.i, %bb.fg ] ; 8 uses
  %indvars.iv.next.i337.i = add nuw nsw i64 %indvars.iv.i326.i, 1 ; 2 uses
  %exitcond.not.i338.i = icmp eq i64 %indvars.iv.next.i337.i, %i.bc
  br i1 %exitcond.not.i338.i, label %._crit_edge.i339.i, label %.lr.ph.i325.i, !llvm.loop !0

._crit_edge.i339.i:                               ; preds = %bb.fi
  %i.avy = fcmp une double %.167.i332.i, 0.000000e+00
  br i1 %i.avy, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %._crit_edge.i339.i
  %i.avz = fdiv double %.165.i333.i, %.161.i335.i
  %i.awa = fdiv double %i.avz, %.161.i335.i
  %i.awb = fadd double %.167.i332.i, %i.awa
  %i.awc = tail call double @sqrt(double noundef %i.awb) #11
  %i.awd = fmul double %.161.i335.i, %i.awc
  br label %_Z8lm_enormiPKd.exit340.i

bb.fk:                                            ; preds = %._crit_edge.i339.i
  %i.awe = fcmp une double %.165.i333.i, 0.000000e+00
  br i1 %i.awe, label %bb.fl, label %.thread.i322.i

bb.fl:                                            ; preds = %bb.fk
  %i.awf = fcmp ult double %.165.i333.i, %.1.i336.i
  br i1 %i.awf, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.awg = fdiv double %.1.i336.i, %.165.i333.i
  %i.awh = fmul double %.163.i334.i, %.1.i336.i
  %i.awi = tail call double @llvm.fmuladd.f64(double %i.awg, double %i.awh, double 1.000000e+00)
  %i.awj = fmul double %.165.i333.i, %i.awi
  %i.awk = tail call double @sqrt(double noundef %i.awj) #11
  br label %_Z8lm_enormiPKd.exit340.i

bb.fn:                                            ; preds = %bb.fl
  %i.awl = fdiv double %.165.i333.i, %.1.i336.i
  %i.awm = tail call double @llvm.fmuladd.f64(double %.1.i336.i, double %.163.i334.i, double %i.awl)
  %i.awn = fmul double %.1.i336.i, %i.awm
  %i.awo = tail call double @sqrt(double noundef %i.awn) #11
  br label %_Z8lm_enormiPKd.exit340.i

.thread.i322.i:                                   ; preds = %bb.fk
  %i.awp = tail call double @sqrt(double noundef %.163.i334.i) #11
  %i.awq = fmul double %.1.i336.i, %i.awp
  br label %_Z8lm_enormiPKd.exit340.i

_Z8lm_enormiPKd.exit340.i:                        ; preds = %.thread.i322.i, %bb.fn, %bb.fm, %bb.fj
  %.069.i323.i = phi double [ %i.awd, %bb.fj ], [ %i.awk, %bb.fm ], [ %i.awo, %bb.fn ], [ %i.awq, %.thread.i322.i ] ; 4 uses
  %i.awr = fsub double %.069.i323.i, %.3598       ; 6 uses
  %i.aws = tail call double @llvm.fabs.f64(double %i.awr)
  %i.awt = fcmp ugt double %i.aws, %i.aft
  br i1 %i.awt, label %bb.fo, label %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit

bb.fo:                                            ; preds = %_Z8lm_enormiPKd.exit340.i
  %i.awu = fcmp oeq double %.1254.i, 0.000000e+00
  br i1 %i.awu, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.awv = fcmp ole double %i.awr, %.0256.i
  %i.aww = fcmp olt double %.0256.i, 0.000000e+00
  %or.cond.i = and i1 %i.aww, %i.awv
  %i.awx = icmp eq i32 %.0262.i, 10
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.awx
  br i1 %or.cond3.i, label %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, label %.preheader1798

bb.fq:                                            ; preds = %bb.fo
  %.old2.i = icmp eq i32 %.0262.i, 10
  br i1 %.old2.i, label %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, label %.preheader1798

.preheader1798:                                   ; preds = %bb.fq, %bb.fp
  br i1 %i.gs, label %.epil.preheader1911, label %.preheader1798.new

.preheader1798.new:                               ; preds = %.preheader1798, %.preheader1798.new
  %indvars.iv469.i = phi i64 [ %indvars.iv.next470.i.1, %.preheader1798.new ], [ 0, %.preheader1798 ] ; 4 uses
  %niter1917 = phi i64 [ %niter1917.next.1, %.preheader1798.new ], [ 0, %.preheader1798 ]
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv469.i
  %i.awz = load i32, ptr %i.awy, align 4, !tbaa !149
  %i.axa = sext i32 %i.awz to i64                 ; 2 uses
  %i.axb = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.axa
  %i.axc = load double, ptr %i.axb, align 8, !tbaa !10
  %i.axd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.axa
  %i.axe = load double, ptr %i.axd, align 8, !tbaa !10
  %i.axf = fmul double %i.axc, %i.axe
  %i.axg = fdiv double %i.axf, %.069.i323.i
  %i.axh = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv469.i
  store double %i.axg, ptr %i.axh, align 8, !tbaa !10
  %indvars.iv.next470.i = or disjoint i64 %indvars.iv469.i, 1 ; 2 uses
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next470.i
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !149
  %i.axk = sext i32 %i.axj to i64                 ; 2 uses
  %i.axl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.axk
  %i.axm = load double, ptr %i.axl, align 8, !tbaa !10
  %i.axn = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.axk
  %i.axo = load double, ptr %i.axn, align 8, !tbaa !10
  %i.axp = fmul double %i.axm, %i.axo
  %i.axq = fdiv double %i.axp, %.069.i323.i
  %i.axr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next470.i
  store double %i.axq, ptr %i.axr, align 8, !tbaa !10
  %indvars.iv.next470.i.1 = add nuw nsw i64 %indvars.iv469.i, 2 ; 2 uses
  %niter1917.next.1 = add i64 %niter1917, 2       ; 2 uses
  %niter1917.ncmp.1 = icmp eq i64 %niter1917.next.1, %unroll_iter1916
  br i1 %niter1917.ncmp.1, label %.preheader.i740.preheader.unr-lcssa, label %.preheader1798.new, !llvm.loop !100

.preheader.i740.preheader.unr-lcssa:              ; preds = %.preheader1798.new
  br i1 %lcmp.mod1914.not.a, label %.preheader.i740.preheader, label %.epil.preheader1911

.epil.preheader1911:                              ; preds = %.preheader.i740.preheader.unr-lcssa, %.preheader1798
  %indvars.iv469.i.epil.init = phi i64 [ 0, %.preheader1798 ], [ %indvars.iv.next470.i.1, %.preheader.i740.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1915)
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv469.i.epil.init
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !149
  %i.axu = sext i32 %i.axt to i64                 ; 2 uses
  %i.axv = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.axu
  %i.axw = load double, ptr %i.axv, align 8, !tbaa !10
  %i.axx = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.axu
  %i.axy = load double, ptr %i.axx, align 8, !tbaa !10
  %i.axz = fmul double %i.axw, %i.axy
  %i.aya = fdiv double %i.axz, %.069.i323.i
  %i.ayb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv469.i.epil.init
  store double %i.aya, ptr %i.ayb, align 8, !tbaa !10
  br label %.preheader.i740.preheader

.preheader.i740.preheader:                        ; preds = %.preheader.i740.preheader.unr-lcssa, %.epil.preheader1911
  br label %.preheader.i740

.loopexit.i:                                      ; preds = %scalar.ph1468.prol.loopexit, %scalar.ph1468, %middle.block1489, %.preheader.i740
  %indvars.iv.next475.i = add nuw nsw i64 %indvars.iv474.i, 1
  %exitcond485.not.i = icmp eq i64 %indvars.iv.next482.i, %i.bc
  br i1 %exitcond485.not.i, label %.lr.ph.i344.i, label %.preheader.i740, !llvm.loop !101

.preheader.i740:                                  ; preds = %.preheader.i740.preheader, %.loopexit.i
  %indvars.iv481.i = phi i64 [ %indvars.iv.next482.i, %.loopexit.i ], [ 0, %.preheader.i740.preheader ] ; 8 uses
  %indvars.iv474.i = phi i64 [ %indvars.iv.next475.i, %.loopexit.i ], [ 1, %.preheader.i740.preheader ] ; 5 uses
  %i.ayc = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv481.i ; 6 uses
  %i.ayd = load double, ptr %i.ayc, align 8, !tbaa !10
  %i.aye = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv481.i
  %i.ayf = load double, ptr %i.aye, align 8, !tbaa !10
  %i.ayg = fdiv double %i.ayd, %i.ayf
  store double %i.ayg, ptr %i.ayc, align 8, !tbaa !10
  %indvars.iv.next482.i = add nuw nsw i64 %indvars.iv481.i, 1 ; 3 uses
  %i.ayh = icmp samesign ult i64 %indvars.iv.next482.i, %i.bc
  br i1 %i.ayh, label %.lr.ph394.i, label %.loopexit.i

.lr.ph394.i:                                      ; preds = %.preheader.i740
  %i.ayi = mul nuw nsw i64 %indvars.iv481.i, %i.bh
  %invariant.gep510.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ayi ; 4 uses
  %i.ayj = xor i64 %indvars.iv481.i, -1
  %i.ayk = add nsw i64 %i.ayj, %i.bc              ; 3 uses
  %min.iters.check1469 = icmp ult i64 %i.ayk, 4
  br i1 %min.iters.check1469, label %scalar.ph1468.preheader, label %vector.memcheck1470

vector.memcheck1470:                              ; preds = %.lr.ph394.i
  %i.ayl = shl nuw nsw i64 %indvars.iv481.i, 3
  %i.aym = getelementptr i8, ptr %i.gv, i64 %i.ayl ; 2 uses
  %i.ayn = mul i64 %indvars.iv481.i, %i.ee
  %i.ayo = getelementptr i8, ptr %i.gy, i64 %i.ayn
  %i.ayp = mul i64 %indvars.iv481.i, %i.bi
  %i.ayq = getelementptr i8, ptr %i.ha, i64 %i.ayp
  %bound01471 = icmp ult ptr %i.aym, %i.ayq
  %bound11472 = icmp ult ptr %i.ayo, %scevgep1467
  %found.conflict1473 = and i1 %bound01471, %bound11472
  %bound01474 = icmp ult ptr %i.aym, %scevgep1467
  %found.conflict1476 = and i1 %bound01474, %bound11475
  %conflict.rdx1477 = or i1 %found.conflict1473, %found.conflict1476
  br i1 %conflict.rdx1477, label %scalar.ph1468.preheader, label %vector.ph1478

vector.ph1478:                                    ; preds = %vector.memcheck1470
  %n.vec1479 = and i64 %i.ayk, -4                 ; 3 uses
  %i.ayr = add i64 %indvars.iv474.i, %n.vec1479
  %10 = load double, ptr %i.ayc, align 8, !tbaa !10, !alias.scope !161
  %broadcast.splatinsert1486 = insertelement <2 x double> poison, double %10, i64 0
  %broadcast.splat1487 = shufflevector <2 x double> %broadcast.splatinsert1486, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1480

vector.body1480:                                  ; preds = %vector.body1480, %vector.ph1478
  %index1481 = phi i64 [ 0, %vector.ph1478 ], [ %index.next1488, %vector.body1480 ] ; 2 uses
  %i.ays = add nuw i64 %indvars.iv474.i, %index1481 ; 2 uses
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %i.ays ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %wide.load1482 = load <2 x double>, ptr %i.ayt, align 8, !tbaa !10, !alias.scope !162
  %wide.load1483 = load <2 x double>, ptr %i.ayu, align 8, !tbaa !10, !alias.scope !162
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ays ; 3 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16 ; 2 uses
  %wide.load1484 = load <2 x double>, ptr %i.ayv, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  %wide.load1485 = load <2 x double>, ptr %i.ayw, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  %i.ayx = fneg <2 x double> %wide.load1482
  %i.ayy = fneg <2 x double> %wide.load1483
  %i.ayz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayx, <2 x double> %broadcast.splat1487, <2 x double> %wide.load1484)
  %i.aza = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayy, <2 x double> %broadcast.splat1487, <2 x double> %wide.load1485)
  store <2 x double> %i.ayz, ptr %i.ayv, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  store <2 x double> %i.aza, ptr %i.ayw, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  %index.next1488 = add nuw i64 %index1481, 4     ; 2 uses
  %i.azb = icmp eq i64 %index.next1488, %n.vec1479
  br i1 %i.azb, label %middle.block1489, label %vector.body1480, !llvm.loop !106

middle.block1489:                                 ; preds = %vector.body1480
  %cmp.n1490 = icmp eq i64 %i.ayk, %n.vec1479
  br i1 %cmp.n1490, label %.loopexit.i, label %scalar.ph1468.preheader

scalar.ph1468.preheader:                          ; preds = %vector.memcheck1470, %.lr.ph394.i, %middle.block1489
  %indvars.iv476.i.ph = phi i64 [ %indvars.iv474.i, %vector.memcheck1470 ], [ %indvars.iv474.i, %.lr.ph394.i ], [ %i.ayr, %middle.block1489 ] ; 6 uses
  %i.azc = sub i64 %i.bc, %indvars.iv476.i.ph
  %xtraiter1918 = and i64 %i.azc, 1
  %lcmp.mod1919.not = icmp eq i64 %xtraiter1918, 0
  br i1 %lcmp.mod1919.not, label %scalar.ph1468.prol.loopexit, label %scalar.ph1468.prol

scalar.ph1468.prol:                               ; preds = %scalar.ph1468.preheader
  %gep511.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %indvars.iv476.i.ph
  %i.azd = load double, ptr %gep511.i.prol, align 8, !tbaa !10
  %i.aze = load double, ptr %i.ayc, align 8, !tbaa !10
  %i.azf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv476.i.ph ; 2 uses
  %i.azg = load double, ptr %i.azf, align 8, !tbaa !10
  %i.azh = fneg double %i.azd
  %i.azi = tail call double @llvm.fmuladd.f64(double %i.azh, double %i.aze, double %i.azg)
  store double %i.azi, ptr %i.azf, align 8, !tbaa !10
  %indvars.iv.next477.i.prol = add nuw nsw i64 %indvars.iv476.i.ph, 1
  br label %scalar.ph1468.prol.loopexit

scalar.ph1468.prol.loopexit:                      ; preds = %scalar.ph1468.prol, %scalar.ph1468.preheader
  %indvars.iv476.i.unr = phi i64 [ %indvars.iv476.i.ph, %scalar.ph1468.preheader ], [ %indvars.iv.next477.i.prol, %scalar.ph1468.prol ]
  %i.azj = icmp eq i64 %indvars.iv476.i.ph, %i.hb
  br i1 %i.azj, label %.loopexit.i, label %scalar.ph1468

scalar.ph1468:                                    ; preds = %scalar.ph1468.prol.loopexit, %scalar.ph1468
  %indvars.iv476.i = phi i64 [ %indvars.iv.next477.i.1, %scalar.ph1468 ], [ %indvars.iv476.i.unr, %scalar.ph1468.prol.loopexit ] ; 4 uses
  %gep511.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %indvars.iv476.i
  %i.azk = load double, ptr %gep511.i, align 8, !tbaa !10
  %i.azl = load double, ptr %i.ayc, align 8, !tbaa !10
  %i.azm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv476.i ; 2 uses
  %i.azn = load double, ptr %i.azm, align 8, !tbaa !10
  %i.azo = fneg double %i.azk
  %i.azp = tail call double @llvm.fmuladd.f64(double %i.azo, double %i.azl, double %i.azn)
  store double %i.azp, ptr %i.azm, align 8, !tbaa !10
  %indvars.iv.next477.i = add nuw nsw i64 %indvars.iv476.i, 1 ; 2 uses
  %gep511.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %indvars.iv.next477.i
  %i.azq = load double, ptr %gep511.i.1, align 8, !tbaa !10
  %i.azr = load double, ptr %i.ayc, align 8, !tbaa !10
  %i.azs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next477.i ; 2 uses
  %i.azt = load double, ptr %i.azs, align 8, !tbaa !10
  %i.azu = fneg double %i.azq
  %i.azv = tail call double @llvm.fmuladd.f64(double %i.azu, double %i.azr, double %i.azt)
  store double %i.azv, ptr %i.azs, align 8, !tbaa !10
  %indvars.iv.next477.i.1 = add nuw nsw i64 %indvars.iv476.i, 2 ; 2 uses
  %exitcond480.not.i.1 = icmp eq i64 %indvars.iv.next477.i.1, %i.bc
  br i1 %exitcond480.not.i.1, label %.loopexit.i, label %scalar.ph1468, !llvm.loop !107

.lr.ph.i344.i:                                    ; preds = %.loopexit.i, %bb.ga
  %indvars.iv.i345.i = phi i64 [ %indvars.iv.next.i356.i, %bb.ga ], [ 0, %.loopexit.i ] ; 2 uses
  %.076.i346.i = phi double [ %.1.i355.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 8 uses
  %.06075.i347.i = phi double [ %.161.i354.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 8 uses
  %.06274.i348.i = phi double [ %.163.i353.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %.06473.i349.i = phi double [ %.165.i352.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %.06672.i350.i = phi double [ %.167.i351.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %i.azw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i345.i
  %i.azx = load double, ptr %i.azw, align 8, !tbaa !10 ; 4 uses
  %i.azy = tail call double @llvm.fabs.f64(double %i.azx) ; 10 uses
  %i.azz = fcmp ogt double %i.azy, f0x2000000000000000
  br i1 %i.azz, label %bb.fr, label %bb.fw

bb.fr:                                            ; preds = %.lr.ph.i344.i
  %i.baa = fcmp olt double %i.azy, %i.dn
  br i1 %i.baa, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.bab = tail call double @llvm.fmuladd.f64(double %i.azx, double %i.azx, double %.06473.i349.i)
  br label %bb.ga

bb.ft:                                            ; preds = %bb.fr
  %i.bac = fcmp ogt double %i.azy, %.06075.i347.i
  br i1 %i.bac, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.bad = fdiv double %.06075.i347.i, %i.azy     ; 2 uses
  %i.bae = fmul double %.06672.i350.i, %i.bad
  %i.baf = tail call double @llvm.fmuladd.f64(double %i.bae, double %i.bad, double 1.000000e+00)
  br label %bb.ga

bb.fv:                                            ; preds = %bb.ft
  %i.bag = fdiv double %i.azy, %.06075.i347.i     ; 2 uses
  %i.bah = tail call double @llvm.fmuladd.f64(double %i.bag, double %i.bag, double %.06672.i350.i)
  br label %bb.ga

bb.fw:                                            ; preds = %.lr.ph.i344.i
  %i.bai = fcmp ogt double %i.azy, %.076.i346.i
  br i1 %i.bai, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.baj = fdiv double %.076.i346.i, %i.azy       ; 2 uses
  %i.bak = fmul double %.06274.i348.i, %i.baj
  %i.bal = tail call double @llvm.fmuladd.f64(double %i.bak, double %i.baj, double 1.000000e+00)
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fw
  %i.bam = fcmp une double %i.azx, 0.000000e+00
  br i1 %i.bam, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.ban = fdiv double %i.azy, %.076.i346.i       ; 2 uses
  %i.bao = tail call double @llvm.fmuladd.f64(double %i.ban, double %i.ban, double %.06274.i348.i)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fv, %bb.fu, %bb.fs
  %.167.i351.i = phi double [ %.06672.i350.i, %bb.fs ], [ %i.baf, %bb.fu ], [ %i.bah, %bb.fv ], [ %.06672.i350.i, %bb.fx ], [ %.06672.i350.i, %bb.fz ], [ %.06672.i350.i, %bb.fy ] ; 3 uses
  %.165.i352.i = phi double [ %i.bab, %bb.fs ], [ %.06473.i349.i, %bb.fu ], [ %.06473.i349.i, %bb.fv ], [ %.06473.i349.i, %bb.fx ], [ %.06473.i349.i, %bb.fz ], [ %.06473.i349.i, %bb.fy ] ; 7 uses
  %.163.i353.i = phi double [ %.06274.i348.i, %bb.fs ], [ %.06274.i348.i, %bb.fu ], [ %.06274.i348.i, %bb.fv ], [ %i.bal, %bb.fx ], [ %i.bao, %bb.fz ], [ %.06274.i348.i, %bb.fy ] ; 4 uses
  %.161.i354.i = phi double [ %.06075.i347.i, %bb.fs ], [ %i.azy, %bb.fu ], [ %.06075.i347.i, %bb.fv ], [ %.06075.i347.i, %bb.fx ], [ %.06075.i347.i, %bb.fz ], [ %.06075.i347.i, %bb.fy ] ; 4 uses
  %.1.i355.i = phi double [ %.076.i346.i, %bb.fs ], [ %.076.i346.i, %bb.fu ], [ %.076.i346.i, %bb.fv ], [ %i.azy, %bb.fx ], [ %.076.i346.i, %bb.fz ], [ %.076.i346.i, %bb.fy ] ; 8 uses
  %indvars.iv.next.i356.i = add nuw nsw i64 %indvars.iv.i345.i, 1 ; 2 uses
  %exitcond.not.i357.i = icmp eq i64 %indvars.iv.next.i356.i, %i.bc
  br i1 %exitcond.not.i357.i, label %._crit_edge.i358.i, label %.lr.ph.i344.i, !llvm.loop !0

._crit_edge.i358.i:                               ; preds = %bb.ga
  %i.bap = fcmp une double %.167.i351.i, 0.000000e+00
  br i1 %i.bap, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %._crit_edge.i358.i
  %i.baq = fdiv double %.165.i352.i, %.161.i354.i
  %i.bar = fdiv double %i.baq, %.161.i354.i
  %i.bas = fadd double %.167.i351.i, %i.bar
  %i.bat = tail call double @sqrt(double noundef %i.bas) #11
  %i.bau = fmul double %.161.i354.i, %i.bat
  br label %_Z8lm_enormiPKd.exit359.i

bb.gc:                                            ; preds = %._crit_edge.i358.i
  %i.bav = fcmp une double %.165.i352.i, 0.000000e+00
  br i1 %i.bav, label %bb.gd, label %.thread.i341.i

bb.gd:                                            ; preds = %bb.gc
  %i.baw = fcmp ult double %.165.i352.i, %.1.i355.i
  br i1 %i.baw, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.bax = fdiv double %.1.i355.i, %.165.i352.i
  %i.bay = fmul double %.163.i353.i, %.1.i355.i
  %i.baz = tail call double @llvm.fmuladd.f64(double %i.bax, double %i.bay, double 1.000000e+00)
  %i.bba = fmul double %.165.i352.i, %i.baz
  %i.bbb = tail call double @sqrt(double noundef %i.bba) #11
  br label %_Z8lm_enormiPKd.exit359.i

bb.gf:                                            ; preds = %bb.gd
  %i.bbc = fdiv double %.165.i352.i, %.1.i355.i
  %i.bbd = tail call double @llvm.fmuladd.f64(double %.1.i355.i, double %.163.i353.i, double %i.bbc)
  %i.bbe = fmul double %.1.i355.i, %i.bbd
  %i.bbf = tail call double @sqrt(double noundef %i.bbe) #11
  br label %_Z8lm_enormiPKd.exit359.i

.thread.i341.i:                                   ; preds = %bb.gc
  %i.bbg = tail call double @sqrt(double noundef %.163.i353.i) #11
  %i.bbh = fmul double %.1.i355.i, %i.bbg
  br label %_Z8lm_enormiPKd.exit359.i

_Z8lm_enormiPKd.exit359.i:                        ; preds = %.thread.i341.i, %bb.gf, %bb.ge, %bb.gb
  %.069.i342.i = phi double [ %i.bau, %bb.gb ], [ %i.bbb, %bb.ge ], [ %i.bbf, %bb.gf ], [ %i.bbh, %.thread.i341.i ] ; 2 uses
  %i.bbi = fdiv double %i.awr, %.3598
  %i.bbj = fdiv double %i.bbi, %.069.i342.i
  %i.bbk = fdiv double %i.bbj, %.069.i342.i
  %i.bbl = fcmp ogt double %i.awr, 0.000000e+00
  br i1 %i.bbl, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_Z8lm_enormiPKd.exit359.i
  %.inv362.i = fcmp oge double %.1254.i, %i.amv
  %..1254.i = select i1 %.inv362.i, double %.1254.i, double %i.amv
  br label %bb.gj

bb.gh:                                            ; preds = %_Z8lm_enormiPKd.exit359.i
  %i.bbm = fcmp olt double %i.awr, 0.000000e+00
  br i1 %i.bbm, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %.inv361.i = fcmp ole double %.1252.i, %i.amv
  %..1252.i = select i1 %.inv361.i, double %.1252.i, double %i.amv
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gg
  %.2255.i = phi double [ %..1254.i, %bb.gg ], [ %.1254.i, %bb.gi ], [ %.1254.i, %bb.gh ] ; 3 uses
  %.2.i = phi double [ %.1252.i, %bb.gg ], [ %..1252.i, %bb.gi ], [ %.1252.i, %bb.gh ]
  %i.bbn = fadd double %i.amv, %i.bbk             ; 2 uses
  %.inv363.i = fcmp oge double %.2255.i, %i.bbn
  %..2255.i = select i1 %.inv363.i, double %.2255.i, double %i.bbn
  %i.bbo = add nuw nsw i32 %.0262.i, 1
  br label %bb.en, !llvm.loop !108

_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit:           ; preds = %_Z8lm_enormiPKd.exit340.i, %bb.fp, %bb.fq, %_Z8lm_enormiPKd.exit.i737
  %.6 = phi double [ 0.000000e+00, %_Z8lm_enormiPKd.exit.i737 ], [ %i.amv, %bb.fq ], [ %i.amv, %bb.fp ], [ %i.amv, %_Z8lm_enormiPKd.exit340.i ] ; 6 uses
  br label %.lr.ph.i749

.lr.ph.i749:                                      ; preds = %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, %bb.gt
  %indvars.iv.i750 = phi i64 [ %indvars.iv.next.i751, %bb.gt ], [ 0, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 2 uses
  %.076.i = phi double [ %.1.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 8 uses
  %.06075.i = phi double [ %.161.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 8 uses
  %.06274.i = phi double [ %.163.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %.06473.i = phi double [ %.165.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %.06672.i = phi double [ %.167.i, %bb.gt ], [ 0.000000e+00, %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit ] ; 6 uses
  %i.bbp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i750
  %i.bbq = load double, ptr %i.bbp, align 8, !tbaa !10 ; 4 uses
  %i.bbr = tail call double @llvm.fabs.f64(double %i.bbq) ; 10 uses
  %i.bbs = fcmp ogt double %i.bbr, f0x2000000000000000
  br i1 %i.bbs, label %bb.gk, label %bb.gp

bb.gk:                                            ; preds = %.lr.ph.i749
  %i.bbt = fcmp olt double %i.bbr, %i.dp
  br i1 %i.bbt, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.bbu = tail call double @llvm.fmuladd.f64(double %i.bbq, double %i.bbq, double %.06473.i)
  br label %bb.gt

bb.gm:                                            ; preds = %bb.gk
  %i.bbv = fcmp ogt double %i.bbr, %.06075.i
  br i1 %i.bbv, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.bbw = fdiv double %.06075.i, %i.bbr          ; 2 uses
  %i.bbx = fmul double %.06672.i, %i.bbw
  %i.bby = tail call double @llvm.fmuladd.f64(double %i.bbx, double %i.bbw, double 1.000000e+00)
  br label %bb.gt

bb.go:                                            ; preds = %bb.gm
  %i.bbz = fdiv double %i.bbr, %.06075.i          ; 2 uses
  %i.bca = tail call double @llvm.fmuladd.f64(double %i.bbz, double %i.bbz, double %.06672.i)
  br label %bb.gt

bb.gp:                                            ; preds = %.lr.ph.i749
  %i.bcb = fcmp ogt double %i.bbr, %.076.i
  br i1 %i.bcb, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.bcc = fdiv double %.076.i, %i.bbr            ; 2 uses
  %i.bcd = fmul double %.06274.i, %i.bcc
  %i.bce = tail call double @llvm.fmuladd.f64(double %i.bcd, double %i.bcc, double 1.000000e+00)
  br label %bb.gt

bb.gr:                                            ; preds = %bb.gp
  %i.bcf = fcmp une double %i.bbq, 0.000000e+00
  br i1 %i.bcf, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bcg = fdiv double %i.bbr, %.076.i            ; 2 uses
  %i.bch = tail call double @llvm.fmuladd.f64(double %i.bcg, double %i.bcg, double %.06274.i)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gq, %bb.go, %bb.gn, %bb.gl
  %.167.i = phi double [ %.06672.i, %bb.gl ], [ %i.bby, %bb.gn ], [ %i.bca, %bb.go ], [ %.06672.i, %bb.gq ], [ %.06672.i, %bb.gs ], [ %.06672.i, %bb.gr ] ; 3 uses
  %.165.i = phi double [ %i.bbu, %bb.gl ], [ %.06473.i, %bb.gn ], [ %.06473.i, %bb.go ], [ %.06473.i, %bb.gq ], [ %.06473.i, %bb.gs ], [ %.06473.i, %bb.gr ] ; 7 uses
  %.163.i = phi double [ %.06274.i, %bb.gl ], [ %.06274.i, %bb.gn ], [ %.06274.i, %bb.go ], [ %i.bce, %bb.gq ], [ %i.bch, %bb.gs ], [ %.06274.i, %bb.gr ] ; 4 uses
  %.161.i = phi double [ %.06075.i, %bb.gl ], [ %i.bbr, %bb.gn ], [ %.06075.i, %bb.go ], [ %.06075.i, %bb.gq ], [ %.06075.i, %bb.gs ], [ %.06075.i, %bb.gr ] ; 4 uses
  %.1.i = phi double [ %.076.i, %bb.gl ], [ %.076.i, %bb.gn ], [ %.076.i, %bb.go ], [ %i.bbr, %bb.gq ], [ %.076.i, %bb.gs ], [ %.076.i, %bb.gr ] ; 8 uses
  %indvars.iv.next.i751 = add nuw nsw i64 %indvars.iv.i750, 1 ; 2 uses
  %exitcond.not.i752 = icmp eq i64 %indvars.iv.next.i751, %i.bc
  br i1 %exitcond.not.i752, label %._crit_edge.i753, label %.lr.ph.i749, !llvm.loop !0

._crit_edge.i753:                                 ; preds = %bb.gt
  %i.bci = fcmp une double %.167.i, 0.000000e+00
  br i1 %i.bci, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %._crit_edge.i753
  %i.bcj = fdiv double %.165.i, %.161.i
  %i.bck = fdiv double %i.bcj, %.161.i
  %i.bcl = fadd double %.167.i, %i.bck
  %i.bcm = tail call double @sqrt(double noundef %i.bcl) #11
  %i.bcn = fmul double %.161.i, %i.bcm
  br label %_Z8lm_enormiPKd.exit

bb.gv:                                            ; preds = %._crit_edge.i753
  %i.bco = fcmp une double %.165.i, 0.000000e+00
  br i1 %i.bco, label %bb.gw, label %.thread.i746

bb.gw:                                            ; preds = %bb.gv
  %i.bcp = fcmp ult double %.165.i, %.1.i
  br i1 %i.bcp, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bcq = fdiv double %.1.i, %.165.i
  %i.bcr = fmul double %.163.i, %.1.i
  %i.bcs = tail call double @llvm.fmuladd.f64(double %i.bcq, double %i.bcr, double 1.000000e+00)
  %i.bct = fmul double %.165.i, %i.bcs
  %i.bcu = tail call double @sqrt(double noundef %i.bct) #11
  br label %_Z8lm_enormiPKd.exit

bb.gy:                                            ; preds = %bb.gw
  %i.bcv = fdiv double %.165.i, %.1.i
  %i.bcw = tail call double @llvm.fmuladd.f64(double %.1.i, double %.163.i, double %i.bcv)
  %i.bcx = fmul double %.1.i, %i.bcw
  %i.bcy = tail call double @sqrt(double noundef %i.bcx) #11
  br label %_Z8lm_enormiPKd.exit

.thread.i746:                                     ; preds = %bb.gv
  %i.bcz = tail call double @sqrt(double noundef %.163.i) #11
  %i.bda = fmul double %.1.i, %i.bcz
  br label %_Z8lm_enormiPKd.exit

_Z8lm_enormiPKd.exit:                             ; preds = %bb.gu, %bb.gx, %bb.gy, %.thread.i746
  %.069.i = phi double [ %i.bcn, %bb.gu ], [ %i.bcu, %bb.gx ], [ %i.bcy, %bb.gy ], [ %i.bda, %.thread.i746 ] ; 7 uses
  %i.bdb = tail call double @llvm.fabs.f64(double %.069.i)
  %i.bdc = fcmp ueq double %i.bdb, +inf
  br i1 %i.bdc, label %bb.gz, label %.lr.ph983.preheader

bb.gz:                                            ; preds = %_Z8lm_enormiPKd.exit
  %i.bdd = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not682 = icmp eq i32 %i.bdd, 0
  br i1 %.not682, label %.thread.sink.split, label %.thread.sink.split.sink.split

.lr.ph983.preheader:                              ; preds = %_Z8lm_enormiPKd.exit
  %i.bde = fdiv double %.069.i, %.1609            ; 2 uses
  %i.bdf = fmul double %.6, %i.bde
  %i.bdg = fmul double %i.bde, %i.bdf             ; 2 uses
  br label %.lr.ph983

.lr.ph983:                                        ; preds = %.lr.ph983.preheader, %.loopexit1795
  %indvars.iv1164 = phi i64 [ 0, %.lr.ph983.preheader ], [ %indvars.iv.next1165, %.loopexit1795 ] ; 7 uses
  %indvars.iv1162 = phi i64 [ 1, %.lr.ph983.preheader ], [ %indvars.iv.next1163, %.loopexit1795 ] ; 6 uses
  %i.bdh = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1164
  store double 0.000000e+00, ptr %i.bdh, align 8, !tbaa !10
  %i.bdi = mul nuw nsw i64 %indvars.iv1164, %i.dq
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1164
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !149
  %i.bdl = sext i32 %i.bdk to i64                 ; 2 uses
  %i.bdm = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bdl ; 5 uses
  %invariant.gep1352 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bdi ; 5 uses
  %min.iters.check1439 = icmp samesign ult i64 %indvars.iv1162, 4
  br i1 %min.iters.check1439, label %scalar.ph1438.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph983
  %i.bdn = shl nuw nsw i64 %indvars.iv1164, 3
  %i.bdo = getelementptr i8, ptr %i.he, i64 %i.bdn ; 2 uses
  %i.bdp = mul i64 %indvars.iv1164, %i.dz
  %i.bdq = getelementptr i8, ptr %i.hg, i64 %i.bdp
  %i.bdr = shl nsw i64 %i.bdl, 3
  %i.bds = getelementptr i8, ptr %scevgep, i64 %i.bdr
  %bound0 = icmp ult ptr %i.br, %i.bdq
  %bound1 = icmp ult ptr %invariant.gep1352, %i.bdo
  %found.conflict = and i1 %bound0, %bound1
  %bound01440 = icmp ult ptr %i.br, %i.bds
  %bound11441 = icmp ult ptr %i.bdm, %i.bdo
  %found.conflict1442 = and i1 %bound01440, %bound11441
  %conflict.rdx = or i1 %found.conflict, %found.conflict1442
  br i1 %conflict.rdx, label %scalar.ph1438.preheader, label %vector.ph1443

vector.ph1443:                                    ; preds = %vector.memcheck
  %n.vec1444 = and i64 %indvars.iv1162, 9223372036854775804 ; 3 uses
  %i.bdt = load double, ptr %i.bdm, align 8, !tbaa !10, !alias.scope !165
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bdt, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1445

vector.body1445:                                  ; preds = %vector.body1445, %vector.ph1443
  %index1446 = phi i64 [ 0, %vector.ph1443 ], [ %index.next1451, %vector.body1445 ] ; 3 uses
  %i.bdu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %index1446 ; 2 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 16
  %wide.load1447 = load <2 x double>, ptr %i.bdu, align 8, !tbaa !10, !alias.scope !166
  %wide.load1448 = load <2 x double>, ptr %i.bdv, align 8, !tbaa !10, !alias.scope !166
  %i.bdw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index1446 ; 3 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 16 ; 2 uses
  %wide.load1449 = load <2 x double>, ptr %i.bdw, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %wide.load1450 = load <2 x double>, ptr %i.bdx, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %i.bdy = fneg <2 x double> %wide.load1447
  %i.bdz = fneg <2 x double> %wide.load1448
  %i.bea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdy, <2 x double> %broadcast.splat, <2 x double> %wide.load1449)
  %i.beb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdz, <2 x double> %broadcast.splat, <2 x double> %wide.load1450)
  store <2 x double> %i.bea, ptr %i.bdw, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  store <2 x double> %i.beb, ptr %i.bdx, align 8, !tbaa !10, !alias.scope !167, !noalias !168
  %index.next1451 = add nuw i64 %index1446, 4     ; 2 uses
  %i.bec = icmp eq i64 %index.next1451, %n.vec1444
  br i1 %i.bec, label %middle.block1452, label %vector.body1445, !llvm.loop !113

middle.block1452:                                 ; preds = %vector.body1445
  %cmp.n1453 = icmp eq i64 %indvars.iv1162, %n.vec1444
  br i1 %cmp.n1453, label %.loopexit1795, label %scalar.ph1438.preheader

scalar.ph1438.preheader:                          ; preds = %vector.memcheck, %.lr.ph983, %middle.block1452
  %indvars.iv1155.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph983 ], [ %n.vec1444, %middle.block1452 ] ; 5 uses
  %xtraiter1921 = and i64 %indvars.iv1162, 1
  %lcmp.mod1922.not = icmp eq i64 %xtraiter1921, 0
  br i1 %lcmp.mod1922.not, label %scalar.ph1438.prol.loopexit, label %scalar.ph1438.prol

scalar.ph1438.prol:                               ; preds = %scalar.ph1438.preheader
  %gep1353.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %indvars.iv1155.ph
  %i.bed = load double, ptr %gep1353.prol, align 8, !tbaa !10
  %i.bee = load double, ptr %i.bdm, align 8, !tbaa !10
  %i.bef = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1155.ph ; 2 uses
  %i.beg = load double, ptr %i.bef, align 8, !tbaa !10
  %i.beh = fneg double %i.bed
  %i.bei = tail call double @llvm.fmuladd.f64(double %i.beh, double %i.bee, double %i.beg)
  store double %i.bei, ptr %i.bef, align 8, !tbaa !10
  %indvars.iv.next1156.prol = or disjoint i64 %indvars.iv1155.ph, 1
  br label %scalar.ph1438.prol.loopexit

scalar.ph1438.prol.loopexit:                      ; preds = %scalar.ph1438.prol, %scalar.ph1438.preheader
  %indvars.iv1155.unr = phi i64 [ %indvars.iv1155.ph, %scalar.ph1438.preheader ], [ %indvars.iv.next1156.prol, %scalar.ph1438.prol ]
  %i.bej = icmp eq i64 %indvars.iv1164, %indvars.iv1155.ph
  br i1 %i.bej, label %.loopexit1795, label %scalar.ph1438

scalar.ph1438:                                    ; preds = %scalar.ph1438.prol.loopexit, %scalar.ph1438
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156.1, %scalar.ph1438 ], [ %indvars.iv1155.unr, %scalar.ph1438.prol.loopexit ] ; 4 uses
  %gep1353 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %indvars.iv1155
  %i.bek = load double, ptr %gep1353, align 8, !tbaa !10
  %i.bel = load double, ptr %i.bdm, align 8, !tbaa !10
  %i.bem = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1155 ; 2 uses
  %i.ben = load double, ptr %i.bem, align 8, !tbaa !10
  %i.beo = fneg double %i.bek
  %i.bep = tail call double @llvm.fmuladd.f64(double %i.beo, double %i.bel, double %i.ben)
  store double %i.bep, ptr %i.bem, align 8, !tbaa !10
  %indvars.iv.next1156 = add nuw nsw i64 %indvars.iv1155, 1 ; 2 uses
  %gep1353.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1352, i64 %indvars.iv.next1156
  %i.beq = load double, ptr %gep1353.1, align 8, !tbaa !10
  %i.ber = load double, ptr %i.bdm, align 8, !tbaa !10
  %i.bes = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next1156 ; 2 uses
  %i.bet = load double, ptr %i.bes, align 8, !tbaa !10
  %i.beu = fneg double %i.beq
  %i.bev = tail call double @llvm.fmuladd.f64(double %i.beu, double %i.ber, double %i.bet)
  store double %i.bev, ptr %i.bes, align 8, !tbaa !10
  %indvars.iv.next1156.1 = add nuw nsw i64 %indvars.iv1155, 2 ; 2 uses
  %exitcond1161.not.1 = icmp eq i64 %indvars.iv.next1156.1, %indvars.iv1162
  br i1 %exitcond1161.not.1, label %.loopexit1795, label %scalar.ph1438, !llvm.loop !114

.loopexit1795:                                    ; preds = %scalar.ph1438.prol.loopexit, %scalar.ph1438, %middle.block1452
  %indvars.iv.next1165 = add nuw nsw i64 %indvars.iv1164, 1 ; 2 uses
  %indvars.iv.next1163 = add nuw nsw i64 %indvars.iv1162, 1
  %exitcond1170.not = icmp eq i64 %indvars.iv.next1165, %i.bc
  br i1 %exitcond1170.not, label %.lr.ph.i760, label %.lr.ph983, !llvm.loop !115

.lr.ph.i760:                                      ; preds = %.loopexit1795, %bb.hj
  %indvars.iv.i761 = phi i64 [ %indvars.iv.next.i772, %bb.hj ], [ 0, %.loopexit1795 ] ; 2 uses
  %.076.i762 = phi double [ %.1.i771, %bb.hj ], [ 0.000000e+00, %.loopexit1795 ] ; 8 uses
  %.06075.i763 = phi double [ %.161.i770, %bb.hj ], [ 0.000000e+00, %.loopexit1795 ] ; 8 uses
  %.06274.i764 = phi double [ %.163.i769, %bb.hj ], [ 0.000000e+00, %.loopexit1795 ] ; 6 uses
  %.06473.i765 = phi double [ %.165.i768, %bb.hj ], [ 0.000000e+00, %.loopexit1795 ] ; 6 uses
  %.06672.i766 = phi double [ %.167.i767, %bb.hj ], [ 0.000000e+00, %.loopexit1795 ] ; 6 uses
  %i.bew = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i761
  %i.bex = load double, ptr %i.bew, align 8, !tbaa !10 ; 4 uses
  %i.bey = tail call double @llvm.fabs.f64(double %i.bex) ; 10 uses
  %i.bez = fcmp ogt double %i.bey, f0x2000000000000000
  br i1 %i.bez, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %.lr.ph.i760
  %i.bfa = fcmp olt double %i.bey, %i.dp
  br i1 %i.bfa, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bfb = tail call double @llvm.fmuladd.f64(double %i.bex, double %i.bex, double %.06473.i765)
  br label %bb.hj

bb.hc:                                            ; preds = %bb.ha
  %i.bfc = fcmp ogt double %i.bey, %.06075.i763
  br i1 %i.bfc, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.bfd = fdiv double %.06075.i763, %i.bey       ; 2 uses
  %i.bfe = fmul double %.06672.i766, %i.bfd
  %i.bff = tail call double @llvm.fmuladd.f64(double %i.bfe, double %i.bfd, double 1.000000e+00)
  br label %bb.hj

bb.he:                                            ; preds = %bb.hc
  %i.bfg = fdiv double %i.bey, %.06075.i763       ; 2 uses
  %i.bfh = tail call double @llvm.fmuladd.f64(double %i.bfg, double %i.bfg, double %.06672.i766)
  br label %bb.hj

bb.hf:                                            ; preds = %.lr.ph.i760
  %i.bfi = fcmp ogt double %i.bey, %.076.i762
  br i1 %i.bfi, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.bfj = fdiv double %.076.i762, %i.bey         ; 2 uses
  %i.bfk = fmul double %.06274.i764, %i.bfj
  %i.bfl = tail call double @llvm.fmuladd.f64(double %i.bfk, double %i.bfj, double 1.000000e+00)
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  %i.bfm = fcmp une double %i.bex, 0.000000e+00
  br i1 %i.bfm, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.bfn = fdiv double %i.bey, %.076.i762         ; 2 uses
  %i.bfo = tail call double @llvm.fmuladd.f64(double %i.bfn, double %i.bfn, double %.06274.i764)
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.he, %bb.hd, %bb.hb
  %.167.i767 = phi double [ %.06672.i766, %bb.hb ], [ %i.bff, %bb.hd ], [ %i.bfh, %bb.he ], [ %.06672.i766, %bb.hg ], [ %.06672.i766, %bb.hi ], [ %.06672.i766, %bb.hh ] ; 3 uses
  %.165.i768 = phi double [ %i.bfb, %bb.hb ], [ %.06473.i765, %bb.hd ], [ %.06473.i765, %bb.he ], [ %.06473.i765, %bb.hg ], [ %.06473.i765, %bb.hi ], [ %.06473.i765, %bb.hh ] ; 7 uses
  %.163.i769 = phi double [ %.06274.i764, %bb.hb ], [ %.06274.i764, %bb.hd ], [ %.06274.i764, %bb.he ], [ %i.bfl, %bb.hg ], [ %i.bfo, %bb.hi ], [ %.06274.i764, %bb.hh ] ; 4 uses
  %.161.i770 = phi double [ %.06075.i763, %bb.hb ], [ %i.bey, %bb.hd ], [ %.06075.i763, %bb.he ], [ %.06075.i763, %bb.hg ], [ %.06075.i763, %bb.hi ], [ %.06075.i763, %bb.hh ] ; 4 uses
  %.1.i771 = phi double [ %.076.i762, %bb.hb ], [ %.076.i762, %bb.hd ], [ %.076.i762, %bb.he ], [ %i.bey, %bb.hg ], [ %.076.i762, %bb.hi ], [ %.076.i762, %bb.hh ] ; 8 uses
  %indvars.iv.next.i772 = add nuw nsw i64 %indvars.iv.i761, 1 ; 2 uses
  %exitcond.not.i773 = icmp eq i64 %indvars.iv.next.i772, %i.bc
  br i1 %exitcond.not.i773, label %._crit_edge.i774, label %.lr.ph.i760, !llvm.loop !0

._crit_edge.i774:                                 ; preds = %bb.hj
  %i.bfp = fcmp une double %.167.i767, 0.000000e+00
  br i1 %i.bfp, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %._crit_edge.i774
  %i.bfq = fdiv double %.165.i768, %.161.i770
  %i.bfr = fdiv double %i.bfq, %.161.i770
  %i.bfs = fadd double %.167.i767, %i.bfr
  %i.bft = tail call double @sqrt(double noundef %i.bfs) #11
  %i.bfu = fmul double %.161.i770, %i.bft
  br label %_Z8lm_enormiPKd.exit775

bb.hl:                                            ; preds = %._crit_edge.i774
  %i.bfv = fcmp une double %.165.i768, 0.000000e+00
  br i1 %i.bfv, label %bb.hm, label %.thread.i754

bb.hm:                                            ; preds = %bb.hl
  %i.bfw = fcmp ult double %.165.i768, %.1.i771
  br i1 %i.bfw, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.bfx = fdiv double %.1.i771, %.165.i768
  %i.bfy = fmul double %.163.i769, %.1.i771
  %i.bfz = tail call double @llvm.fmuladd.f64(double %i.bfx, double %i.bfy, double 1.000000e+00)
  %i.bga = fmul double %.165.i768, %i.bfz
  %i.bgb = tail call double @sqrt(double noundef %i.bga) #11
  br label %_Z8lm_enormiPKd.exit775

bb.ho:                                            ; preds = %bb.hm
  %i.bgc = fdiv double %.165.i768, %.1.i771
  %i.bgd = tail call double @llvm.fmuladd.f64(double %.1.i771, double %.163.i769, double %i.bgc)
  %i.bge = fmul double %.1.i771, %i.bgd
  %i.bgf = tail call double @sqrt(double noundef %i.bge) #11
  br label %_Z8lm_enormiPKd.exit775

.thread.i754:                                     ; preds = %bb.hl
  %i.bgg = tail call double @sqrt(double noundef %.163.i769) #11
  %i.bgh = fmul double %.1.i771, %i.bgg
  br label %_Z8lm_enormiPKd.exit775

_Z8lm_enormiPKd.exit775:                          ; preds = %bb.hk, %bb.hn, %bb.ho, %.thread.i754
  %.069.i757 = phi double [ %i.bfu, %bb.hk ], [ %i.bgb, %bb.hn ], [ %i.bgf, %bb.ho ], [ %i.bgh, %.thread.i754 ]
  br label %.lr.ph.i782

.lr.ph.i782:                                      ; preds = %_Z8lm_enormiPKd.exit775, %bb.hy
  %indvars.iv.i783 = phi i64 [ %indvars.iv.next.i794, %bb.hy ], [ 0, %_Z8lm_enormiPKd.exit775 ] ; 2 uses
  %.076.i784 = phi double [ %.1.i793, %bb.hy ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit775 ] ; 8 uses
  %.06075.i785 = phi double [ %.161.i792, %bb.hy ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit775 ] ; 8 uses
  %.06274.i786 = phi double [ %.163.i791, %bb.hy ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit775 ] ; 6 uses
  %.06473.i787 = phi double [ %.165.i790, %bb.hy ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit775 ] ; 6 uses
  %.06672.i788 = phi double [ %.167.i789, %bb.hy ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit775 ] ; 6 uses
  %i.bgi = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i783
  %i.bgj = load double, ptr %i.bgi, align 8, !tbaa !10 ; 4 uses
  %i.bgk = tail call double @llvm.fabs.f64(double %i.bgj) ; 10 uses
  %i.bgl = fcmp ogt double %i.bgk, f0x2000000000000000
  br i1 %i.bgl, label %bb.hp, label %bb.hu

bb.hp:                                            ; preds = %.lr.ph.i782
  %i.bgm = fcmp olt double %i.bgk, %i.dp
  br i1 %i.bgm, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.bgn = tail call double @llvm.fmuladd.f64(double %i.bgj, double %i.bgj, double %.06473.i787)
  br label %bb.hy

bb.hr:                                            ; preds = %bb.hp
  %i.bgo = fcmp ogt double %i.bgk, %.06075.i785
  br i1 %i.bgo, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.bgp = fdiv double %.06075.i785, %i.bgk       ; 2 uses
  %i.bgq = fmul double %.06672.i788, %i.bgp
  %i.bgr = tail call double @llvm.fmuladd.f64(double %i.bgq, double %i.bgp, double 1.000000e+00)
  br label %bb.hy

end_hunk_1
begin_hunk_2_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a

.lr.ph.i804.preheader:                            ; preds = %.lr.ph1002, %middle.block1401, %.loopexit854
  br label %.lr.ph.i804

.lr.ph.i804:                                      ; preds = %.lr.ph.i804.preheader, %bb.ix
  %indvars.iv.i805 = phi i64 [ %indvars.iv.next.i816, %bb.ix ], [ 0, %.lr.ph.i804.preheader ] ; 2 uses
  %.076.i806 = phi double [ %.1.i815, %bb.ix ], [ 0.000000e+00, %.lr.ph.i804.preheader ] ; 8 uses
  %.06075.i807 = phi double [ %.161.i814, %bb.ix ], [ 0.000000e+00, %.lr.ph.i804.preheader ] ; 8 uses
  %.06274.i808 = phi double [ %.163.i813, %bb.ix ], [ 0.000000e+00, %.lr.ph.i804.preheader ] ; 6 uses
  %.06473.i809 = phi double [ %.165.i812, %bb.ix ], [ 0.000000e+00, %.lr.ph.i804.preheader ] ; 6 uses
  %.06672.i810 = phi double [ %.167.i811, %bb.ix ], [ 0.000000e+00, %.lr.ph.i804.preheader ] ; 6 uses
  %i.bls = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i805
  %i.blt = load double, ptr %i.bls, align 8, !tbaa !10 ; 4 uses
  %i.blu = tail call double @llvm.fabs.f64(double %i.blt) ; 10 uses
  %i.blv = fcmp ogt double %i.blu, f0x2000000000000000
  br i1 %i.blv, label %bb.io, label %bb.it

bb.io:                                            ; preds = %.lr.ph.i804
  %i.blw = fcmp olt double %i.blu, %i.dp
  br i1 %i.blw, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.blx = tail call double @llvm.fmuladd.f64(double %i.blt, double %i.blt, double %.06473.i809)
  br label %bb.ix

bb.iq:                                            ; preds = %bb.io
  %i.bly = fcmp ogt double %i.blu, %.06075.i807
  br i1 %i.bly, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.blz = fdiv double %.06075.i807, %i.blu       ; 2 uses
  %i.bma = fmul double %.06672.i810, %i.blz
  %i.bmb = tail call double @llvm.fmuladd.f64(double %i.bma, double %i.blz, double 1.000000e+00)
  br label %bb.ix

bb.is:                                            ; preds = %bb.iq
  %i.bmc = fdiv double %i.blu, %.06075.i807       ; 2 uses
  %i.bmd = tail call double @llvm.fmuladd.f64(double %i.bmc, double %i.bmc, double %.06672.i810)
  br label %bb.ix

bb.it:                                            ; preds = %.lr.ph.i804
  %i.bme = fcmp ogt double %i.blu, %.076.i806
  br i1 %i.bme, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.bmf = fdiv double %.076.i806, %i.blu         ; 2 uses
  %i.bmg = fmul double %.06274.i808, %i.bmf
  %i.bmh = tail call double @llvm.fmuladd.f64(double %i.bmg, double %i.bmf, double 1.000000e+00)
  br label %bb.ix

bb.iv:                                            ; preds = %bb.it
  %i.bmi = fcmp une double %i.blt, 0.000000e+00
  br i1 %i.bmi, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.bmj = fdiv double %i.blu, %.076.i806         ; 2 uses
  %i.bmk = tail call double @llvm.fmuladd.f64(double %i.bmj, double %i.bmj, double %.06274.i808)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %bb.iu, %bb.is, %bb.ir, %bb.ip
  %.167.i811 = phi double [ %.06672.i810, %bb.ip ], [ %i.bmb, %bb.ir ], [ %i.bmd, %bb.is ], [ %.06672.i810, %bb.iu ], [ %.06672.i810, %bb.iw ], [ %.06672.i810, %bb.iv ] ; 3 uses
  %.165.i812 = phi double [ %i.blx, %bb.ip ], [ %.06473.i809, %bb.ir ], [ %.06473.i809, %bb.is ], [ %.06473.i809, %bb.iu ], [ %.06473.i809, %bb.iw ], [ %.06473.i809, %bb.iv ] ; 7 uses
  %.163.i813 = phi double [ %.06274.i808, %bb.ip ], [ %.06274.i808, %bb.ir ], [ %.06274.i808, %bb.is ], [ %i.bmh, %bb.iu ], [ %i.bmk, %bb.iw ], [ %.06274.i808, %bb.iv ] ; 4 uses
  %.161.i814 = phi double [ %.06075.i807, %bb.ip ], [ %i.blu, %bb.ir ], [ %.06075.i807, %bb.is ], [ %.06075.i807, %bb.iu ], [ %.06075.i807, %bb.iw ], [ %.06075.i807, %bb.iv ] ; 4 uses
  %.1.i815 = phi double [ %.076.i806, %bb.ip ], [ %.076.i806, %bb.ir ], [ %.076.i806, %bb.is ], [ %i.blu, %bb.iu ], [ %.076.i806, %bb.iw ], [ %.076.i806, %bb.iv ] ; 8 uses
  %indvars.iv.next.i816 = add nuw nsw i64 %indvars.iv.i805, 1 ; 2 uses
  %exitcond.not.i817 = icmp eq i64 %indvars.iv.next.i816, %i.bc
  br i1 %exitcond.not.i817, label %._crit_edge.i818, label %.lr.ph.i804, !llvm.loop !0

._crit_edge.i818:                                 ; preds = %bb.ix
  %i.bml = fcmp une double %.167.i811, 0.000000e+00
  br i1 %i.bml, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %._crit_edge.i818
  %i.bmm = fdiv double %.165.i812, %.161.i814
  %i.bmn = fdiv double %i.bmm, %.161.i814
  %i.bmo = fadd double %.167.i811, %i.bmn
  %i.bmp = tail call double @sqrt(double noundef %i.bmo) #11
  %i.bmq = fmul double %.161.i814, %i.bmp
  br label %_Z8lm_enormiPKd.exit819

bb.iz:                                            ; preds = %._crit_edge.i818
  %i.bmr = fcmp une double %.165.i812, 0.000000e+00
  br i1 %i.bmr, label %bb.ja, label %.thread.i798

bb.ja:                                            ; preds = %bb.iz
  %i.bms = fcmp ult double %.165.i812, %.1.i815
  br i1 %i.bms, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bmt = fdiv double %.1.i815, %.165.i812
  %i.bmu = fmul double %.163.i813, %.1.i815
  %i.bmv = tail call double @llvm.fmuladd.f64(double %i.bmt, double %i.bmu, double 1.000000e+00)
  %i.bmw = fmul double %.165.i812, %i.bmv
  %i.bmx = tail call double @sqrt(double noundef %i.bmw) #11
  br label %_Z8lm_enormiPKd.exit819

bb.jc:                                            ; preds = %bb.ja
  %i.bmy = fdiv double %.165.i812, %.1.i815
  %i.bmz = tail call double @llvm.fmuladd.f64(double %.1.i815, double %.163.i813, double %i.bmy)
  %i.bna = fmul double %.1.i815, %i.bmz
  %i.bnb = tail call double @sqrt(double noundef %i.bna) #11
  br label %_Z8lm_enormiPKd.exit819

.thread.i798:                                     ; preds = %bb.iz
  %i.bnc = tail call double @sqrt(double noundef %.163.i813) #11
  %i.bnd = fmul double %.1.i815, %i.bnc
  br label %_Z8lm_enormiPKd.exit819

_Z8lm_enormiPKd.exit819:                          ; preds = %bb.iy, %bb.jb, %bb.jc, %.thread.i798
  %.069.i801 = phi double [ %i.bmq, %bb.iy ], [ %i.bmx, %bb.jb ], [ %i.bnb, %bb.jc ], [ %i.bnd, %.thread.i798 ] ; 4 uses
  %i.bne = tail call double @llvm.fabs.f64(double %.069.i801)
  %i.bnf = fcmp ueq double %i.bne, +inf
  br i1 %i.bnf, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %_Z8lm_enormiPKd.exit819
  %i.bng = load i32, ptr %i.bz, align 8, !tbaa !148
  %.not692 = icmp eq i32 %i.bng, 0
  br i1 %.not692, label %.thread.sink.split, label %.thread.sink.split.sink.split

bb.je:                                            ; preds = %_Z8lm_enormiPKd.exit819, %bb.im
  %.2610 = phi double [ %.1609, %bb.im ], [ %i.bix, %_Z8lm_enormiPKd.exit819 ] ; 3 uses
  %.4 = phi double [ %.3, %bb.im ], [ %.069.i801, %_Z8lm_enormiPKd.exit819 ] ; 10 uses
  store i32 0, ptr %i.q, align 4, !tbaa !137
  %i.bnh = fcmp ugt double %.2610, f0x0010000000000000
  br i1 %i.bnh, label %bb.jf, label %.thread

bb.jf:                                            ; preds = %bb.je
  %i.bni = tail call double @llvm.fabs.f64(double %.0612) ; 2 uses
  %i.bnj = load double, ptr %8, align 8, !tbaa !141 ; 2 uses
  %i.bnk = fcmp ugt double %i.bni, %i.bnj
  br i1 %i.bnk, label %bb.ji, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.bnl = fcmp ole double %i.bia, %i.bnj
  %i.bnm = fcmp ole double %i.bjf, 2.000000e+00
  %or.cond5 = select i1 %i.bnl, i1 %i.bnm, i1 false
  br i1 %or.cond5, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  store i32 1, ptr %i.q, align 4, !tbaa !137
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg, %bb.jf
  %i.bnn = phi i1 [ false, %bb.jh ], [ true, %bb.jg ], [ true, %bb.jf ]
  %.pr = phi i32 [ 3, %bb.jh ], [ 2, %bb.jg ], [ 2, %bb.jf ]
  %i.bno = load double, ptr %.phi.trans.insert, align 8, !tbaa !142
  %i.bnp = fmul double %.4, %i.bno
  %i.bnq = fcmp ugt double %.5600, %i.bnp
  br i1 %i.bnq, label %thread-pre-split, label %.thread.sink.split

thread-pre-split:                                 ; preds = %bb.ji
  br i1 %i.bnn, label %bb.jj, label %.thread

bb.jj:                                            ; preds = %thread-pre-split
  %i.bnr = load i32, ptr %i.s, align 8, !tbaa !139
  %.not695 = icmp slt i32 %i.bnr, %i.d
  br i1 %.not695, label %bb.jk, label %.thread.sink.split

bb.jk:                                            ; preds = %bb.jj
  %i.bns = fcmp ole double %i.bni, f0x3CB0000000000000
  %i.bnt = fcmp ole double %i.bia, f0x3CB0000000000000
  %or.cond7 = select i1 %i.bns, i1 %i.bnt, i1 false
  %i.bnu = fcmp ole double %i.bjf, 2.000000e+00
  %or.cond9 = select i1 %or.cond7, i1 %i.bnu, i1 false
  br i1 %or.cond9, label %.thread.sink.split, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.bnv = fmul double %.4, f0x3CB0000000000000
  %i.bnw = fcmp ole double %.5600, %i.bnv         ; 2 uses
  %brmerge = or i1 %i.bnw, %i.zw
  br i1 %brmerge, label %.thread.sink.split.loopexit.split.loop.exit1970, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.bnx = add nuw nsw i32 %.0, 1
  br i1 %i.bkt, label %bb.ci, label %bb.jn, !llvm.loop !125

bb.jn:                                            ; preds = %bb.jm
  %i.bny = add nuw nsw i32 %.0592, 1
  br label %.lr.ph934.preheader, !llvm.loop !126

.thread.sink.split.sink.split:                    ; preds = %bb.jd, %bb.ie, %bb.gz, %bb.ce, %bb.y
  %.str.50.sink = phi ptr [ @.str.47, %bb.ie ], [ @.str.46, %bb.gz ], [ @.str.43, %bb.ce ], [ @.str.38, %bb.y ], [ @.str.50, %bb.jd ]
  %.7.ph.ph = phi double [ %.3, %bb.ie ], [ %.3, %bb.gz ], [ %i.yy, %bb.ce ], [ 0.000000e+00, %bb.y ], [ %.069.i801, %bb.jd ]
  %fwrite693 = tail call i64 @fwrite(ptr nonnull %.str.50.sink, i64 11, i64 1, ptr %i.p) ; 0 uses
  br label %.thread.sink.split

.thread.sink.split.loopexit.split.loop.exit1970:  ; preds = %bb.jl
  %.mux.le = select i1 %i.bnw, i32 7, i32 8
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %._crit_edge963, %.thread.sink.split.loopexit.split.loop.exit1970, %bb.ji, %bb.jj, %bb.jk, %.thread.sink.split.sink.split, %bb.jd, %bb.ie, %bb.gz, %bb.ce, %bb.z, %bb.y, %bb.u
  %.pr.lcssa.sink = phi i32 [ 12, %bb.jd ], [ 12, %bb.gz ], [ 12, %bb.ie ], [ 6, %bb.jk ], [ 12, %bb.y ], [ 13, %bb.u ], [ 12, %.thread.sink.split.sink.split ], [ 12, %bb.ce ], [ 0, %bb.z ], [ %.pr, %bb.ji ], [ %.mux.le, %.thread.sink.split.loopexit.split.loop.exit1970 ], [ 5, %bb.jj ], [ 4, %._crit_edge963 ]
  %.7.ph = phi double [ %.069.i801, %bb.jd ], [ %.3, %bb.gz ], [ %.3, %bb.ie ], [ %.4, %.thread.sink.split.loopexit.split.loop.exit1970 ], [ 0.000000e+00, %bb.y ], [ 0.000000e+00, %bb.u ], [ %.7.ph.ph, %.thread.sink.split.sink.split ], [ %i.yy, %bb.ce ], [ 0.000000e+00, %bb.z ], [ %.4, %bb.jk ], [ %.4, %bb.jj ], [ %.4, %bb.ji ], [ %.0594, %._crit_edge963 ]
  store i32 %.pr.lcssa.sink, ptr %i.q, align 4, !tbaa !137
  br label %.thread

.thread:                                          ; preds = %.lr.ph934, %thread-pre-split, %bb.je, %._crit_edge987, %.thread.sink.split, %.loopexit879
  %.7 = phi double [ 0.000000e+00, %.loopexit879 ], [ %.4, %bb.je ], [ %.7.ph, %.thread.sink.split ], [ %.4, %thread-pre-split ], [ %.3, %._crit_edge987 ], [ %.0594, %.lr.ph934 ]
  %i.bnz = tail call noundef double @_Z8lm_fnormiPKdS0_(i32 noundef %4, ptr noundef nonnull %i.bf, ptr noundef %5)
  store double %i.bnz, ptr %9, align 8, !tbaa !169
  %i.boa = load i32, ptr %i.r, align 8, !tbaa !138
  %.not702 = icmp eq i32 %i.boa, 0
  br i1 %.not702, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %.thread
  store i32 11, ptr %i.q, align 4, !tbaa !137
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %.thread
  %i.bob = load i32, ptr %i.bz, align 8, !tbaa !148 ; 2 uses
  %i.boc = and i32 %i.bob, 1
  %.not703 = icmp eq i32 %i.boc, 0
  br i1 %.not703, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.bod = load i32, ptr %i.q, align 4, !tbaa !137
  %i.boe = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.51, i32 noundef %i.bod) #11 ; 0 uses
  %.pre1215 = load i32, ptr %i.bz, align 8, !tbaa !148
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.bof = phi i32 [ %.pre1215, %bb.jq ], [ %i.bob, %bb.jp ] ; 2 uses
  %i.bog = and i32 %i.bof, 2
  %.not704 = icmp eq i32 %i.bog, 0
  br i1 %.not704, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %fwrite.i820 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 7, i64 1, ptr %i.p) ; 0 uses
  %i.boh = icmp sgt i32 %i.l, 0
  br i1 %i.boh, label %.lr.ph.preheader.i823, label %_ZL13lm_print_parsiPKdP8_IO_FILE.exit829

.lr.ph.preheader.i823:                            ; preds = %bb.js
  %wide.trip.count.i824 = zext nneg i32 %i.l to i64
  br label %.lr.ph.i825

.lr.ph.i825:                                      ; preds = %.lr.ph.i825, %.lr.ph.preheader.i823
  %indvars.iv.i826 = phi i64 [ 0, %.lr.ph.preheader.i823 ], [ %indvars.iv.next.i827, %.lr.ph.i825 ] ; 2 uses
  %i.boi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i826
  %i.boj = load double, ptr %i.boi, align 8, !tbaa !10
  %i.bok = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.54, double noundef %i.boj) #11 ; 0 uses
  %indvars.iv.next.i827 = add nuw nsw i64 %indvars.iv.i826, 1 ; 2 uses
  %exitcond.not.i828 = icmp eq i64 %indvars.iv.next.i827, %wide.trip.count.i824
  br i1 %exitcond.not.i828, label %_ZL13lm_print_parsiPKdP8_IO_FILE.exit829, label %.lr.ph.i825, !llvm.loop !14

_ZL13lm_print_parsiPKdP8_IO_FILE.exit829:         ; preds = %.lr.ph.i825, %bb.js
  %fputc.i822 = tail call i32 @fputc(i32 10, ptr %i.p) ; 0 uses
  %.pre1216 = load i32, ptr %i.bz, align 8, !tbaa !148
  br label %bb.jt

bb.jt:                                            ; preds = %_ZL13lm_print_parsiPKdP8_IO_FILE.exit829, %bb.jr
  %i.bol = phi i32 [ %.pre1216, %_ZL13lm_print_parsiPKdP8_IO_FILE.exit829 ], [ %i.bof, %bb.jr ]
  %i.bom = and i32 %i.bol, 8
  %.not705 = icmp eq i32 %i.bom, 0
  br i1 %.not705, label %.loopexit, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %.not706 = icmp eq ptr %5, null
  %i.bon = icmp sgt i32 %4, 0                     ; 2 uses
  br i1 %.not706, label %.preheader, label %.preheader851

.preheader851:                                    ; preds = %bb.ju
  br i1 %i.bon, label %.lr.ph1004, label %.loopexit

.preheader:                                       ; preds = %bb.ju
  br i1 %i.bon, label %.lr.ph1006, label %.loopexit

.lr.ph1004:                                       ; preds = %.preheader851, %.lr.ph1004
  %indvars.iv1204 = phi i64 [ %indvars.iv.next1205, %.lr.ph1004 ], [ 0, %.preheader851 ] ; 4 uses
  %i.boo = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1204
  %i.bop = load double, ptr %i.boo, align 8, !tbaa !10 ; 2 uses
  %i.boq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1204
  %i.bor = load double, ptr %i.boq, align 8, !tbaa !10
  %i.bos = fsub double %i.bor, %i.bop
  %i.bot = trunc nuw nsw i64 %indvars.iv1204 to i32
  %i.bou = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.35, i32 noundef %i.bot, double noundef %i.bop, double noundef %i.bos) #11 ; 0 uses
  %indvars.iv.next1205 = add nuw nsw i64 %indvars.iv1204, 1 ; 2 uses
  %exitcond1208.not = icmp eq i64 %indvars.iv.next1205, %i.bh
  br i1 %exitcond1208.not, label %.loopexit, label %.lr.ph1004, !llvm.loop !127

.lr.ph1006:                                       ; preds = %.preheader, %.lr.ph1006
  %indvars.iv1209 = phi i64 [ %indvars.iv.next1210, %.lr.ph1006 ], [ 0, %.preheader ] ; 3 uses
  %i.bov = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1209
  %i.bow = load double, ptr %i.bov, align 8, !tbaa !10
  %i.box = trunc nuw nsw i64 %indvars.iv1209 to i32
  %i.boy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.36, i32 noundef %i.box, double noundef %i.bow) #11 ; 0 uses
  %indvars.iv.next1210 = add nuw nsw i64 %indvars.iv1209, 1 ; 2 uses
  %exitcond1213.not = icmp eq i64 %indvars.iv.next1210, %i.bh
  br i1 %exitcond1213.not, label %.loopexit, label %.lr.ph1006, !llvm.loop !128

.loopexit:                                        ; preds = %.lr.ph1004, %.lr.ph1006, %.preheader851, %.preheader, %bb.jt
  %i.boz = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.bpa = and i32 %i.boz, 2
  %.not707 = icmp eq i32 %i.bpa, 0
  br i1 %.not707, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %.loopexit
  %i.bpb = load double, ptr %9, align 8, !tbaa !169
  %i.bpc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.52, double noundef %i.bpb, double noundef %.7) #11 ; 0 uses
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %.loopexit
  tail call void @free(ptr noundef %i.bf) #11
  br label %bb.jx

bb.jx:                                            ; preds = %bb.n, %bb.jw, %bb.l, %bb.j, %bb.h, %._crit_edge1217, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef double @_Z8lm_fnormiPKdS0_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = sitofp i32 %0 to double
  %i.b = fdiv double f0x5FEFFFFFFFFFFFFF, %i.a    ; 2 uses
  %i.c = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %.lr.ph.preheader.i, label %.thread.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.076.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %.1.i, %bb.l ] ; 8 uses
  %.06075.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %.161.i, %bb.l ] ; 8 uses
  %.06274.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %.163.i, %bb.l ] ; 6 uses
  %.06473.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %.165.i, %bb.l ] ; 6 uses
  %.06672.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %.167.i, %bb.l ] ; 6 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.e = load double, ptr %i.d, align 8, !tbaa !10 ; 4 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e) ; 10 uses
  %i.g = fcmp ogt double %i.f, f0x2000000000000000
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = fcmp olt double %i.f, %i.b
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %.06473.i)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.j = fcmp ogt double %i.f, %.06075.i
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = fdiv double %.06075.i, %i.f              ; 2 uses
  %i.l = fmul double %.06672.i, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.k, double 1.000000e+00)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.n = fdiv double %i.f, %.06075.i              ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %.06672.i)
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph.i
  %i.p = fcmp ogt double %i.f, %.076.i
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = fdiv double %.076.i, %i.f                ; 2 uses
  %i.r = fmul double %.06274.i, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.q, double 1.000000e+00)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.t = fcmp une double %i.e, 0.000000e+00
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = fdiv double %i.f, %.076.i                ; 2 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %.06274.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d
  %.167.i = phi double [ %.06672.i, %bb.d ], [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ %.06672.i, %bb.i ], [ %.06672.i, %bb.k ], [ %.06672.i, %bb.j ] ; 3 uses
  %.165.i = phi double [ %i.i, %bb.d ], [ %.06473.i, %bb.f ], [ %.06473.i, %bb.g ], [ %.06473.i, %bb.i ], [ %.06473.i, %bb.k ], [ %.06473.i, %bb.j ] ; 7 uses
  %.163.i = phi double [ %.06274.i, %bb.d ], [ %.06274.i, %bb.f ], [ %.06274.i, %bb.g ], [ %i.s, %bb.i ], [ %i.v, %bb.k ], [ %.06274.i, %bb.j ] ; 4 uses
  %.161.i = phi double [ %.06075.i, %bb.d ], [ %i.f, %bb.f ], [ %.06075.i, %bb.g ], [ %.06075.i, %bb.i ], [ %.06075.i, %bb.k ], [ %.06075.i, %bb.j ] ; 4 uses
  %.1.i = phi double [ %.076.i, %bb.d ], [ %.076.i, %bb.f ], [ %.076.i, %bb.g ], [ %i.f, %bb.i ], [ %.076.i, %bb.k ], [ %.076.i, %bb.j ] ; 8 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.l
  %i.w = fcmp une double %.167.i, 0.000000e+00
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i
  %i.x = fdiv double %.165.i, %.161.i
  %i.y = fdiv double %i.x, %.161.i
  %i.z = fadd double %.167.i, %i.y
  %i.aa = tail call double @sqrt(double noundef %i.z) #11
  %i.ab = fmul double %.161.i, %i.aa
  br label %_Z8lm_enormiPKd.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ac = fcmp une double %.165.i, 0.000000e+00
  br i1 %i.ac, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.ad = fcmp ult double %.165.i, %.1.i
  br i1 %i.ad, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = fdiv double %.1.i, %.165.i
  %i.af = fmul double %.163.i, %.1.i
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.af, double 1.000000e+00)
  %i.ah = fmul double %.165.i, %i.ag
  %i.ai = tail call double @sqrt(double noundef %i.ah) #11
  br label %_Z8lm_enormiPKd.exit

bb.q:                                             ; preds = %bb.o
  %i.aj = fdiv double %.165.i, %.1.i
  %i.ak = tail call double @llvm.fmuladd.f64(double %.1.i, double %.163.i, double %i.aj)
  %i.al = fmul double %.1.i, %i.ak
  %i.am = tail call double @sqrt(double noundef %i.al) #11
  br label %_Z8lm_enormiPKd.exit

.thread.i:                                        ; preds = %bb.n, %bb.b
  %.062.lcssa8995.i = phi double [ %.163.i, %bb.n ], [ 0.000000e+00, %bb.b ]
  %.0.lcssa9094.i = phi double [ %.1.i, %bb.n ], [ 0.000000e+00, %bb.b ]
  %i.an = tail call double @sqrt(double noundef %.062.lcssa8995.i) #11
  %i.ao = fmul double %.0.lcssa9094.i, %i.an
  br label %_Z8lm_enormiPKd.exit

bb.r:                                             ; preds = %bb.a
  br i1 %i.c, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.r
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %.083 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.1, %bb.ab ] ; 8 uses
  %.06582 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.166, %bb.ab ] ; 8 uses
  %.06781 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.168, %bb.ab ] ; 6 uses
  %.06980 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.170, %bb.ab ] ; 6 uses
  %.07179 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.172, %bb.ab ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.as = load double, ptr %i.ar, align 8, !tbaa !10
  %i.at = fsub double %i.aq, %i.as                ; 4 uses
  %i.au = tail call double @llvm.fabs.f64(double %i.at) ; 10 uses
  %i.av = fcmp ogt double %i.au, f0x2000000000000000
  br i1 %i.av, label %bb.s, label %bb.x

bb.s:                                             ; preds = %.lr.ph
  %i.aw = fcmp olt double %i.au, %i.b
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.at, double %.06980)
  br label %bb.ab

bb.u:                                             ; preds = %bb.s
  %i.ay = fcmp ogt double %i.au, %.06582
  br i1 %i.ay, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.az = fdiv double %.06582, %i.au              ; 2 uses
  %i.ba = fmul double %.07179, %i.az
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.az, double 1.000000e+00)
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.bc = fdiv double %i.au, %.06582              ; 2 uses
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %.07179)
  br label %bb.ab

bb.x:                                             ; preds = %.lr.ph
  %i.be = fcmp ogt double %i.au, %.083
  br i1 %i.be, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bf = fdiv double %.083, %i.au                ; 2 uses
  %i.bg = fmul double %.06781, %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bf, double 1.000000e+00)
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.bi = fcmp une double %i.at, 0.000000e+00
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bj = fdiv double %i.au, %.083                ; 2 uses
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %.06781)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.w, %bb.t, %bb.z, %bb.aa, %bb.y
  %.172 = phi double [ %.07179, %bb.t ], [ %i.bb, %bb.v ], [ %i.bd, %bb.w ], [ %.07179, %bb.y ], [ %.07179, %bb.aa ], [ %.07179, %bb.z ] ; 3 uses
  %.170 = phi double [ %i.ax, %bb.t ], [ %.06980, %bb.v ], [ %.06980, %bb.w ], [ %.06980, %bb.y ], [ %.06980, %bb.aa ], [ %.06980, %bb.z ] ; 7 uses
  %.168 = phi double [ %.06781, %bb.t ], [ %.06781, %bb.v ], [ %.06781, %bb.w ], [ %i.bh, %bb.y ], [ %i.bk, %bb.aa ], [ %.06781, %bb.z ] ; 4 uses
  %.166 = phi double [ %.06582, %bb.t ], [ %i.au, %bb.v ], [ %.06582, %bb.w ], [ %.06582, %bb.y ], [ %.06582, %bb.aa ], [ %.06582, %bb.z ] ; 4 uses
  %.1 = phi double [ %.083, %bb.t ], [ %.083, %bb.v ], [ %.083, %bb.w ], [ %i.au, %bb.y ], [ %.083, %bb.aa ], [ %.083, %bb.z ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !170

._crit_edge:                                      ; preds = %bb.ab
  %i.bl = fcmp une double %.172, 0.000000e+00
  br i1 %i.bl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge
  %i.bm = fdiv double %.170, %.166
  %i.bn = fdiv double %i.bm, %.166
  %i.bo = fadd double %.172, %i.bn
  %i.bp = tail call double @sqrt(double noundef %i.bo) #11
  %i.bq = fmul double %.166, %i.bp
  br label %_Z8lm_enormiPKd.exit

bb.ad:                                            ; preds = %._crit_edge
  %i.br = fcmp une double %.170, 0.000000e+00
  br i1 %i.br, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.bs = fcmp ult double %.170, %.1
  br i1 %i.bs, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = fdiv double %.1, %.170
  %i.bu = fmul double %.168, %.1
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bu, double 1.000000e+00)
  %i.bw = fmul double %.170, %i.bv
  %i.bx = tail call double @sqrt(double noundef %i.bw) #11
  br label %_Z8lm_enormiPKd.exit

bb.ag:                                            ; preds = %bb.ae
  %i.by = fdiv double %.170, %.1
  %i.bz = tail call double @llvm.fmuladd.f64(double %.1, double %.168, double %i.by)
  %i.ca = fmul double %.1, %i.bz
  %i.cb = tail call double @sqrt(double noundef %i.ca) #11
  br label %_Z8lm_enormiPKd.exit

.thread:                                          ; preds = %bb.r, %bb.ad
  %.067.lcssa100106 = phi double [ %.168, %bb.ad ], [ 0.000000e+00, %bb.r ]
  %.0.lcssa101105 = phi double [ %.1, %bb.ad ], [ 0.000000e+00, %bb.r ]
  %i.cc = tail call double @sqrt(double noundef %.067.lcssa100106) #11
  %i.cd = fmul double %.0.lcssa101105, %i.cc
  br label %_Z8lm_enormiPKd.exit

_Z8lm_enormiPKd.exit:                             ; preds = %.thread.i, %bb.q, %bb.p, %bb.m, %bb.ac, %bb.af, %bb.ag, %.thread
  %.175 = phi double [ %i.cd, %.thread ], [ %i.bq, %bb.ac ], [ %i.bx, %bb.af ], [ %i.cb, %bb.ag ], [ %i.ab, %bb.m ], [ %i.ai, %bb.p ], [ %i.am, %bb.q ], [ %i.ao, %.thread.i ]
  ret double %.175
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef double @_Z8lm_enormiPKd(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = sitofp i32 %0 to double
  %i.b = fdiv double f0x5FEFFFFFFFFFFFFF, %i.a
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.076 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.1, %bb.k ] ; 8 uses
  %.06075 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.161, %bb.k ] ; 8 uses
  %.06274 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.163, %bb.k ] ; 6 uses
  %.06473 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.165, %bb.k ] ; 6 uses
  %.06672 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.167, %bb.k ] ; 6 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.e = load double, ptr %i.d, align 8, !tbaa !10 ; 4 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e) ; 10 uses
  %i.g = fcmp ogt double %i.f, f0x2000000000000000
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.h = fcmp olt double %i.f, %i.b
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %.06473)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.j = fcmp ogt double %i.f, %.06075
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = fdiv double %.06075, %i.f                ; 2 uses
  %i.l = fmul double %.06672, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.k, double 1.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.n = fdiv double %i.f, %.06075                ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %.06672)
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %i.p = fcmp ogt double %i.f, %.076
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = fdiv double %.076, %i.f                  ; 2 uses
  %i.r = fmul double %.06274, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.q, double 1.000000e+00)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = fcmp une double %i.e, 0.000000e+00
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = fdiv double %i.f, %.076                  ; 2 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %.06274)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.i, %bb.j, %bb.h
  %.167 = phi double [ %.06672, %bb.c ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ %.06672, %bb.h ], [ %.06672, %bb.j ], [ %.06672, %bb.i ] ; 3 uses
  %.165 = phi double [ %i.i, %bb.c ], [ %.06473, %bb.e ], [ %.06473, %bb.f ], [ %.06473, %bb.h ], [ %.06473, %bb.j ], [ %.06473, %bb.i ] ; 7 uses
  %.163 = phi double [ %.06274, %bb.c ], [ %.06274, %bb.e ], [ %.06274, %bb.f ], [ %i.s, %bb.h ], [ %i.v, %bb.j ], [ %.06274, %bb.i ] ; 4 uses
  %.161 = phi double [ %.06075, %bb.c ], [ %i.f, %bb.e ], [ %.06075, %bb.f ], [ %.06075, %bb.h ], [ %.06075, %bb.j ], [ %.06075, %bb.i ] ; 4 uses
  %.1 = phi double [ %.076, %bb.c ], [ %.076, %bb.e ], [ %.076, %bb.f ], [ %i.f, %bb.h ], [ %.076, %bb.j ], [ %.076, %bb.i ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.k
  %i.w = fcmp une double %.167, 0.000000e+00
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.x = fdiv double %.165, %.161
  %i.y = fdiv double %i.x, %.161
  %i.z = fadd double %.167, %i.y
  %i.aa = tail call double @sqrt(double noundef %i.z) #11
  %i.ab = fmul double %.161, %i.aa
  br label %bb.q

bb.m:                                             ; preds = %._crit_edge
  %i.ac = fcmp une double %.165, 0.000000e+00
  br i1 %i.ac, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ad = fcmp ult double %.165, %.1
  br i1 %i.ad, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = fdiv double %.1, %.165
  %i.af = fmul double %.163, %.1
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.af, double 1.000000e+00)
  %i.ah = fmul double %.165, %i.ag
  %i.ai = tail call double @sqrt(double noundef %i.ah) #11
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aj = fdiv double %.165, %.1
  %i.ak = tail call double @llvm.fmuladd.f64(double %.1, double %.163, double %i.aj)
  %i.al = fmul double %.1, %i.ak
  %i.am = tail call double @sqrt(double noundef %i.al) #11
  br label %bb.q

.thread:                                          ; preds = %bb.a, %bb.m
  %.062.lcssa8995 = phi double [ %.163, %bb.m ], [ 0.000000e+00, %bb.a ]
  %.0.lcssa9094 = phi double [ %.1, %bb.m ], [ 0.000000e+00, %bb.a ]
  %i.an = tail call double @sqrt(double noundef %.062.lcssa8995) #11
  %i.ao = fmul double %.0.lcssa9094, %i.an
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.p, %bb.o, %bb.l
  %.069 = phi double [ %i.ab, %bb.l ], [ %i.ai, %bb.o ], [ %i.am, %bb.p ], [ %i.ao, %.thread ]
  ret double %.069
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !146, !147}
!13 = distinct !{!13, !11, !147, !146}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11, !146, !147}
!18 = distinct !{!18, !11, !146}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, i1 false, !"LVerDomain"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !11, !146, !147}
!28 = distinct !{!28, !11, !146}
!29 = distinct !{!29, !11, !146, !147}
!30 = distinct !{!30, !11, !147, !146}
!31 = distinct !{!31, !152}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !11, !146, !147}
!37 = distinct !{!37, !11, !146}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11, !146, !147}
!41 = distinct !{!41, !11, !146, !147}
!42 = distinct !{!42, !11, !147, !146}
!43 = distinct !{!43, !11, !147, !146}
!44 = distinct !{!44, !152}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, i1 false, !"LVerDomain"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !11, !146, !147}
!50 = distinct !{!50, !11, !146}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !152}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11, !146, !147}
!56 = distinct !{!56, !11, !147, !146}
!57 = distinct !{!57, !11, !146, !147}
!58 = distinct !{!58, !11, !147, !146}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11, !146, !147}
!61 = distinct !{!61, !11, !147, !146}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, i1 false, !"LVerDomain"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !11, !146, !147}
!68 = distinct !{!68, !11, !146}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !152}
!71 = distinct !{!71, !11, !146, !147}
!72 = distinct !{!72, !11, !147, !146}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !152}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !152}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11, !146, !147}
!81 = distinct !{!81, !11, !147, !146}
!82 = distinct !{!82, !11, !146, !147}
!83 = distinct !{!83, !152}
!84 = distinct !{!84, !11, !146}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, i1 false, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !11, !146, !147}
!90 = distinct !{!90, !11, !146}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !152}
!98 = distinct !{!98, !11, !146, !147}
!99 = distinct !{!99, !11, !147, !146}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, i1 false, !"LVerDomain"}
!103 = distinct !{!103, !102}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !102}
!106 = distinct !{!106, !11, !146, !147}
!107 = distinct !{!107, !11, !146}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, i1 false, !"LVerDomain"}
!110 = distinct !{!110, !109}
!111 = distinct !{!111, !109}
!112 = distinct !{!112, !109}
!113 = distinct !{!113, !11, !146, !147}
!114 = distinct !{!114, !11, !146}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !11, !146, !147}
!117 = distinct !{!117, !11, !147, !146}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !11}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11, !146, !147}
!122 = distinct !{!122, !11, !147, !146}
!123 = distinct !{!123, !11, !146, !147}
!124 = distinct !{!124, !11, !147, !146}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = !{!"any pointer", !5, i64 0}
!130 = !{!"p1 _ZTS8_IO_FILE", !129, i64 0}
!131 = !{!"_ZTS17lm_control_struct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !6, i64 44, !130, i64 48, !6, i64 56, !6, i64 60, !6, i64 64}
!132 = !{!131, !6, i64 40}
!133 = !{!131, !9, i64 24}
!134 = !{!131, !6, i64 60}
!135 = !{!131, !130, i64 48}
!136 = !{!"_ZTS16lm_status_struct", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!137 = !{!136, !6, i64 12}
!138 = !{!136, !6, i64 16}
!139 = !{!136, !6, i64 8}
!140 = !{!130, !130, i64 0}
!141 = !{!131, !9, i64 0}
!142 = !{!131, !9, i64 8}
!143 = !{!131, !9, i64 16}
!144 = !{!131, !9, i64 32}
!145 = !{!131, !6, i64 44}
!146 = !{!"llvm.loop.isvectorized", i32 1}
!147 = !{!"llvm.loop.unroll.runtime.disable"}
!148 = !{!131, !6, i64 56}
!149 = !{!6, !6, i64 0}
!150 = !{!25}
!151 = !{!26}
!152 = !{!"llvm.loop.unroll.disable"}
!153 = !{!34}
!154 = !{!35}
!155 = !{!47}
!156 = !{!48}
!157 = !{!65}
!158 = !{!66}
!159 = !{!87}
!160 = !{!88}
!161 = !{!103}
!162 = !{!104}
!163 = !{!105}
!164 = !{!104, !103}
!165 = !{!110}
!166 = !{!111}
!167 = !{!112}
!168 = !{!111, !110}
!169 = !{!136, !9, i64 0}
!170 = distinct !{!170, !11}
end_hunk_2
