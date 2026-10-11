Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed4?download=true
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1

; Function Attrs: nounwind uwtable
define void @dlaed4_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef initializes((0, 4)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 11 uses
  %i.b = alloca double, align 8                   ; 9 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca [3 x double], align 16            ; 11 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca double, align 8                   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.g = getelementptr inbounds i8, ptr %4, i64 -8 ; 101 uses
  %i.h = getelementptr inbounds i8, ptr %3, i64 -8 ; 72 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 -8 ; 43 uses
  store i32 0, ptr %7, align 4, !tbaa !84
  %i.j = load i32, ptr %0, align 4, !tbaa !84
  switch i32 %i.j, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = load double, ptr %2, align 8, !tbaa !86
  %i.l = load double, ptr %5, align 8, !tbaa !86
  %i.m = load double, ptr %3, align 8, !tbaa !86  ; 2 uses
  %i.n = fmul double %i.l, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.m, double %i.k)
  store double %i.o, ptr %6, align 8, !tbaa !86
  store double 1.000000e+00, ptr %4, align 8, !tbaa !86
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @dlaed5_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #6
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.p = tail call double @dlamch_(ptr noundef nonnull @.str) #6 ; 4 uses
  %i.q = load double, ptr %5, align 8, !tbaa !86  ; 2 uses
  %i.r = fdiv double 1.000000e+00, %i.q           ; 16 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !84     ; 25 uses
  %i.t = load i32, ptr %0, align 4, !tbaa !84     ; 9 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %bb.d
  %i.v = add i32 %i.s, -1                         ; 2 uses
  %i.w = fmul double %i.q, 5.000000e-01           ; 12 uses
  %.not13141456 = icmp slt i32 %i.s, 1
  br i1 %.not13141456, label %._crit_edge1466, label %iter.check2043

iter.check2043:                                   ; preds = %bb.e
  %i.x = zext nneg i32 %i.s to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.x ; 8 uses
  %i.z = add nuw i32 %i.s, 1
  %wide.trip.count1629 = zext i32 %i.z to i64     ; 3 uses
  %i.aa = zext nneg i32 %i.s to i64               ; 5 uses
  %min.iters.check2016 = icmp ult i32 %i.s, 4
  br i1 %min.iters.check2016, label %vec.epilog.scalar.ph2044.preheader, label %vector.memcheck2017

vector.memcheck2017:                              ; preds = %iter.check2043
  %i.ab = shl nuw nsw i64 %wide.trip.count1629, 3
  %i.ac = add nsw i64 %i.ab, -8                   ; 2 uses
  %i.ad = getelementptr i8, ptr %4, i64 %i.ac     ; 2 uses
  %i.ae = shl nuw nsw i64 %i.x, 3
  %i.af = getelementptr i8, ptr %2, i64 %i.ae
  %i.ag = getelementptr i8, ptr %2, i64 %i.ac
  %bound02018.a = icmp ult ptr %4, %i.af
  %bound12019.a = icmp ult ptr %i.y, %i.ad
  %found.conflict2020.a = and i1 %bound02018.a, %bound12019.a
  %bound02021 = icmp ult ptr %4, %i.ag
  %bound12022 = icmp ult ptr %2, %i.ad
  %found.conflict2023 = and i1 %bound02021, %bound12022
  %conflict.rdx2024 = or i1 %found.conflict2020.a, %found.conflict2023
  br i1 %conflict.rdx2024, label %vec.epilog.scalar.ph2044.preheader, label %vector.main.loop.iter.check2025

vector.main.loop.iter.check2025:                  ; preds = %vector.memcheck2017
  %min.iters.check2026 = icmp ult i32 %i.s, 16
  br i1 %min.iters.check2026, label %vec.epilog.ph2047, label %vector.ph2027

vector.ph2027:                                    ; preds = %vector.main.loop.iter.check2025
  %i.ah = and i64 %i.aa, 12
  %n.vec2028 = and i64 %i.aa, 2147483632          ; 4 uses
  %i.ai = or disjoint i64 %n.vec2028, 1
  %i.aj = load double, ptr %i.y, align 8, !tbaa !86, !alias.scope !87
  %broadcast.splatinsert2037 = insertelement <4 x double> poison, double %i.aj, i64 0
  %broadcast.splat2038 = shufflevector <4 x double> %broadcast.splatinsert2037, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2029 = insertelement <4 x double> poison, double %i.w, i64 0
  %broadcast.splat2030 = shufflevector <4 x double> %broadcast.splatinsert2029, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2031

vector.body2031:                                  ; preds = %vector.ph2027, %vector.body2031
  %index2032 = phi i64 [ 0, %vector.ph2027 ], [ %index.next2039, %vector.body2031 ] ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %2, i64 %index2032 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %wide.load2033.a = load <4 x double>, ptr %i.ak, align 8, !tbaa !86, !alias.scope !88
  %wide.load2034 = load <4 x double>, ptr %i.al, align 8, !tbaa !86, !alias.scope !88
  %wide.load2035 = load <4 x double>, ptr %i.am, align 8, !tbaa !86, !alias.scope !88
  %wide.load2036 = load <4 x double>, ptr %i.an, align 8, !tbaa !86, !alias.scope !88
  %i.ao = fsub <4 x double> %wide.load2033.a, %broadcast.splat2038
  %i.ap = fsub <4 x double> %wide.load2034, %broadcast.splat2038
  %i.aq = fsub <4 x double> %wide.load2035, %broadcast.splat2038
  %i.ar = fsub <4 x double> %wide.load2036, %broadcast.splat2038
  %i.as = fsub <4 x double> %i.ao, %broadcast.splat2030
  %i.at = fsub <4 x double> %i.ap, %broadcast.splat2030
  %i.au = fsub <4 x double> %i.aq, %broadcast.splat2030
  %i.av = fsub <4 x double> %i.ar, %broadcast.splat2030
  %i.aw = getelementptr [8 x i8], ptr %4, i64 %index2032 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  store <4 x double> %i.as, ptr %i.aw, align 8, !tbaa !86, !alias.scope !89, !noalias !90
  store <4 x double> %i.at, ptr %i.ax, align 8, !tbaa !86, !alias.scope !89, !noalias !90
  store <4 x double> %i.au, ptr %i.ay, align 8, !tbaa !86, !alias.scope !89, !noalias !90
  store <4 x double> %i.av, ptr %i.az, align 8, !tbaa !86, !alias.scope !89, !noalias !90
  %index.next2039 = add nuw i64 %index2032, 16    ; 2 uses
  %i.ba = icmp eq i64 %index.next2039, %n.vec2028
  br i1 %i.ba, label %middle.block2040, label %vector.body2031, !llvm.loop !12

middle.block2040:                                 ; preds = %vector.body2031
  %cmp.n2041 = icmp eq i64 %n.vec2028, %i.aa
  br i1 %cmp.n2041, label %._crit_edge1460, label %vec.epilog.iter.check2045

vec.epilog.iter.check2045:                        ; preds = %middle.block2040
  %min.epilog.iters.check2046 = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check2046, label %vec.epilog.scalar.ph2044.preheader, label %vec.epilog.ph2047, !prof !94

vec.epilog.ph2047:                                ; preds = %vector.main.loop.iter.check2025, %vec.epilog.iter.check2045
  %vec.epilog.resume.val2042 = phi i64 [ %n.vec2028, %vec.epilog.iter.check2045 ], [ 0, %vector.main.loop.iter.check2025 ]
  %n.vec2048 = and i64 %i.aa, 2147483644          ; 3 uses
  %i.bb = or disjoint i64 %n.vec2048, 1
  %i.bc = load double, ptr %i.y, align 8, !tbaa !86, !alias.scope !87
  %broadcast.splatinsert2054 = insertelement <4 x double> poison, double %i.bc, i64 0
  %broadcast.splat2055 = shufflevector <4 x double> %broadcast.splatinsert2054, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2049 = insertelement <4 x double> poison, double %i.w, i64 0
  %broadcast.splat2050 = shufflevector <4 x double> %broadcast.splatinsert2049, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body2051

vec.epilog.vector.body2051:                       ; preds = %vec.epilog.vector.body2051, %vec.epilog.ph2047
  %index2052 = phi i64 [ %vec.epilog.resume.val2042, %vec.epilog.ph2047 ], [ %index.next2056, %vec.epilog.vector.body2051 ] ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %2, i64 %index2052
  %wide.load2053 = load <4 x double>, ptr %i.bd, align 8, !tbaa !86, !alias.scope !88
  %i.be = fsub <4 x double> %wide.load2053, %broadcast.splat2055
  %i.bf = fsub <4 x double> %i.be, %broadcast.splat2050
  %i.bg = getelementptr [8 x i8], ptr %4, i64 %index2052
  store <4 x double> %i.bf, ptr %i.bg, align 8, !tbaa !86, !alias.scope !89, !noalias !90
  %index.next2056 = add nuw i64 %index2052, 4     ; 2 uses
  %i.bh = icmp eq i64 %index.next2056, %n.vec2048
  br i1 %i.bh, label %vec.epilog.middle.block2057, label %vec.epilog.vector.body2051, !llvm.loop !13

vec.epilog.middle.block2057:                      ; preds = %vec.epilog.vector.body2051
  %cmp.n2058 = icmp eq i64 %n.vec2048, %i.aa
  br i1 %cmp.n2058, label %._crit_edge1460, label %vec.epilog.scalar.ph2044.preheader

vec.epilog.scalar.ph2044.preheader:               ; preds = %iter.check2043, %vector.memcheck2017, %vec.epilog.iter.check2045, %vec.epilog.middle.block2057
  %indvars.iv1626.ph = phi i64 [ 1, %iter.check2043 ], [ 1, %vector.memcheck2017 ], [ %i.ai, %vec.epilog.iter.check2045 ], [ %i.bb, %vec.epilog.middle.block2057 ] ; 4 uses
  %i.bi = sub nsw i64 %wide.trip.count1629, %indvars.iv1626.ph
  %i.bj = zext nneg i32 %i.s to i64
  %i.bk = sub nsw i64 %i.bj, %indvars.iv1626.ph
  %xtraiter2255.a = and i64 %i.bi, 3              ; 2 uses
  %lcmp.mod2256.not = icmp eq i64 %xtraiter2255.a, 0
  br i1 %lcmp.mod2256.not, label %vec.epilog.scalar.ph2044.prol.loopexit, label %vec.epilog.scalar.ph2044.prol

vec.epilog.scalar.ph2044.prol:                    ; preds = %vec.epilog.scalar.ph2044.preheader, %vec.epilog.scalar.ph2044.prol
  %indvars.iv1626.prol = phi i64 [ %indvars.iv.next1627.prol, %vec.epilog.scalar.ph2044.prol ], [ %indvars.iv1626.ph, %vec.epilog.scalar.ph2044.preheader ] ; 3 uses
  %prol.iter2257 = phi i64 [ %prol.iter2257.next, %vec.epilog.scalar.ph2044.prol ], [ 0, %vec.epilog.scalar.ph2044.preheader ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1626.prol
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !86
  %i.bn = load double, ptr %i.y, align 8, !tbaa !86
  %i.bo = fsub double %i.bm, %i.bn
  %i.bp = fsub double %i.bo, %i.w
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv1626.prol
  store double %i.bp, ptr %i.bq, align 8, !tbaa !86
  %indvars.iv.next1627.prol = add nuw nsw i64 %indvars.iv1626.prol, 1 ; 2 uses
  %prol.iter2257.next = add i64 %prol.iter2257, 1 ; 2 uses
  %prol.iter2257.cmp.not = icmp eq i64 %prol.iter2257.next, %xtraiter2255.a
  br i1 %prol.iter2257.cmp.not, label %vec.epilog.scalar.ph2044.prol.loopexit, label %vec.epilog.scalar.ph2044.prol, !llvm.loop !14

vec.epilog.scalar.ph2044.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2044.prol, %vec.epilog.scalar.ph2044.preheader
  %indvars.iv1626.unr = phi i64 [ %indvars.iv1626.ph, %vec.epilog.scalar.ph2044.preheader ], [ %indvars.iv.next1627.prol, %vec.epilog.scalar.ph2044.prol ]
  %i.br = icmp ult i64 %i.bk, 3
  br i1 %i.br, label %._crit_edge1460, label %vec.epilog.scalar.ph2044

vec.epilog.scalar.ph2044:                         ; preds = %vec.epilog.scalar.ph2044.prol.loopexit, %vec.epilog.scalar.ph2044
  %indvars.iv1626 = phi i64 [ %indvars.iv.next1627.3, %vec.epilog.scalar.ph2044 ], [ %indvars.iv1626.unr, %vec.epilog.scalar.ph2044.prol.loopexit ] ; 7 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1626
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !86
  %i.bu = load double, ptr %i.y, align 8, !tbaa !86
  %i.bv = fsub double %i.bt, %i.bu
  %i.bw = fsub double %i.bv, %i.w
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv1626
  store double %i.bw, ptr %i.bx, align 8, !tbaa !86
  %i.by = getelementptr [8 x i8], ptr %2, i64 %indvars.iv1626
  %i.bz = load double, ptr %i.by, align 8, !tbaa !86
  %i.ca = load double, ptr %i.y, align 8, !tbaa !86
  %i.cb = fsub double %i.bz, %i.ca
  %i.cc = fsub double %i.cb, %i.w
  %i.cd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1626
  store double %i.cc, ptr %i.cd, align 8, !tbaa !86
end_hunk_0
begin_hunk_1_@dlaed4_:bb.a
  %i.aqs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next1593.1
  %i.aqt = load double, ptr %i.aqs, align 8, !tbaa !86
  %i.aqu = fdiv double %i.aqr, %i.aqt             ; 3 uses
  %i.aqv = tail call double @llvm.fmuladd.f64(double %i.aqr, double %i.aqu, double %i.aqn) ; 2 uses
  %i.aqw = tail call double @llvm.fmuladd.f64(double %i.aqu, double %i.aqu, double %i.aqo)
  %i.aqx = fadd double %i.aqp, %i.aqv
  %indvars.iv.next1593.2 = add nuw nsw i64 %indvars.iv1592, 3 ; 2 uses
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1593.2
  %i.aqz = load double, ptr %i.aqy, align 8, !tbaa !86 ; 2 uses
  %i.ara = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next1593.2
  %i.arb = load double, ptr %i.ara, align 8, !tbaa !86
  %i.arc = fdiv double %i.aqz, %i.arb             ; 3 uses
  %i.ard = tail call double @llvm.fmuladd.f64(double %i.aqz, double %i.arc, double %i.aqv) ; 4 uses
  %i.are = tail call double @llvm.fmuladd.f64(double %i.arc, double %i.arc, double %i.aqw) ; 3 uses
  %i.arf = fadd double %i.aqx, %i.ard             ; 3 uses
  %indvars.iv.next1593.3 = add nuw nsw i64 %indvars.iv1592, 4 ; 2 uses
  %niter2233.next.3 = add i64 %niter2233, 4       ; 2 uses
  %niter2233.ncmp.3 = icmp eq i64 %niter2233.next.3, %unroll_iter2232
  br i1 %niter2233.ncmp.3, label %._crit_edge1373.loopexit.unr-lcssa, label %.lr.ph1372, !llvm.loop !67

._crit_edge1373.loopexit.unr-lcssa:               ; preds = %.lr.ph1372
  %lcmp.mod2227.not = icmp eq i64 %xtraiter2225, 0
  br i1 %lcmp.mod2227.not, label %._crit_edge1373, label %.lr.ph1372.epil.preheader

.lr.ph1372.epil.preheader:                        ; preds = %._crit_edge1373.loopexit.unr-lcssa, %.lr.ph1372.preheader
  %indvars.iv1592.epil.init = phi i64 [ 1, %.lr.ph1372.preheader ], [ %indvars.iv.next1593.3, %._crit_edge1373.loopexit.unr-lcssa ]
  %.51370.epil.init = phi double [ 0.000000e+00, %.lr.ph1372.preheader ], [ %i.ard, %._crit_edge1373.loopexit.unr-lcssa ]
  %.411911369.epil.init = phi double [ 0.000000e+00, %.lr.ph1372.preheader ], [ %i.arf, %._crit_edge1373.loopexit.unr-lcssa ]
  %.412361367.epil.init = phi double [ 0.000000e+00, %.lr.ph1372.preheader ], [ %i.are, %._crit_edge1373.loopexit.unr-lcssa ]
  %lcmp.mod2231 = icmp ne i64 %xtraiter2225, 0
  tail call void @llvm.assume(i1 %lcmp.mod2231)
  br label %.lr.ph1372.epil

.lr.ph1372.epil:                                  ; preds = %.lr.ph1372.epil, %.lr.ph1372.epil.preheader
  %indvars.iv1592.epil = phi i64 [ %indvars.iv1592.epil.init, %.lr.ph1372.epil.preheader ], [ %indvars.iv.next1593.epil, %.lr.ph1372.epil ] ; 3 uses
  %.51370.epil = phi double [ %.51370.epil.init, %.lr.ph1372.epil.preheader ], [ %i.arl, %.lr.ph1372.epil ]
  %.411911369.epil = phi double [ %.411911369.epil.init, %.lr.ph1372.epil.preheader ], [ %i.arn, %.lr.ph1372.epil ]
  %.412361367.epil = phi double [ %.412361367.epil.init, %.lr.ph1372.epil.preheader ], [ %i.arm, %.lr.ph1372.epil ]
  %epil.iter2226 = phi i64 [ 0, %.lr.ph1372.epil.preheader ], [ %epil.iter2226.next, %.lr.ph1372.epil ]
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1592.epil
  %i.arh = load double, ptr %i.arg, align 8, !tbaa !86 ; 2 uses
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv1592.epil
  %i.arj = load double, ptr %i.ari, align 8, !tbaa !86
  %i.ark = fdiv double %i.arh, %i.arj             ; 3 uses
  %i.arl = tail call double @llvm.fmuladd.f64(double %i.arh, double %i.ark, double %.51370.epil) ; 3 uses
  %i.arm = tail call double @llvm.fmuladd.f64(double %i.ark, double %i.ark, double %.412361367.epil) ; 2 uses
  %i.arn = fadd double %.411911369.epil, %i.arl   ; 2 uses
  %indvars.iv.next1593.epil = add nuw nsw i64 %indvars.iv1592.epil, 1
  %epil.iter2226.next = add i64 %epil.iter2226, 1 ; 2 uses
  %epil.iter2226.cmp.not = icmp eq i64 %epil.iter2226.next, %xtraiter2225
  br i1 %epil.iter2226.cmp.not, label %._crit_edge1373, label %.lr.ph1372.epil, !llvm.loop !68

._crit_edge1373:                                  ; preds = %._crit_edge1373.loopexit.unr-lcssa, %.lr.ph1372.epil, %bb.aq
  %.41236.lcssa = phi double [ 0.000000e+00, %bb.aq ], [ %i.are, %._crit_edge1373.loopexit.unr-lcssa ], [ %i.arm, %.lr.ph1372.epil ] ; 3 uses
  %.41191.lcssa = phi double [ 0.000000e+00, %bb.aq ], [ %i.arf, %._crit_edge1373.loopexit.unr-lcssa ], [ %i.arn, %.lr.ph1372.epil ] ; 3 uses
  %.5.lcssa = phi double [ 0.000000e+00, %bb.aq ], [ %i.ard, %._crit_edge1373.loopexit.unr-lcssa ], [ %i.arl, %.lr.ph1372.epil ] ; 3 uses
  %i.aro = fcmp oge double %.41191.lcssa, 0.000000e+00
  %i.arp = fneg double %.41191.lcssa
  %i.arq = select i1 %i.aro, double %.41191.lcssa, double %i.arp ; 3 uses
  %.not1288.not1377 = icmp sgt i32 %i.apt, %.01197
  br i1 %.not1288.not1377, label %.lr.ph1383.preheader, label %._crit_edge1373.._crit_edge1384_crit_edge

._crit_edge1373.._crit_edge1384_crit_edge:        ; preds = %._crit_edge1373
  %.pre1677 = sext i32 %.01197 to i64
  br label %._crit_edge1384

.lr.ph1383.preheader:                             ; preds = %._crit_edge1373
  %i.arr = sext i32 %i.apt to i64                 ; 4 uses
  %i.ars = sext i32 %.01197 to i64                ; 5 uses
  %i.art = sub nsw i64 %i.arr, %i.ars
  %xtraiter2234.a = and i64 %i.art, 3             ; 2 uses
  %lcmp.mod2235.not = icmp eq i64 %xtraiter2234.a, 0
  br i1 %lcmp.mod2235.not, label %.lr.ph1383.prol.loopexit, label %.lr.ph1383.prol

.lr.ph1383.prol:                                  ; preds = %.lr.ph1383.preheader, %.lr.ph1383.prol
  %indvars.iv1597.prol = phi i64 [ %indvars.iv.next1598.prol, %.lr.ph1383.prol ], [ %i.arr, %.lr.ph1383.preheader ] ; 3 uses
  %.111831381.prol = phi double [ %i.arz, %.lr.ph1383.prol ], [ 0.000000e+00, %.lr.ph1383.preheader ]
  %.511921380.prol = phi double [ %i.asb, %.lr.ph1383.prol ], [ %i.arq, %.lr.ph1383.preheader ]
  %.112431378.prol = phi double [ %i.asa, %.lr.ph1383.prol ], [ 0.000000e+00, %.lr.ph1383.preheader ]
  %prol.iter2236 = phi i64 [ %prol.iter2236.next, %.lr.ph1383.prol ], [ 0, %.lr.ph1383.preheader ]
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv1597.prol
  %i.arv = load double, ptr %i.aru, align 8, !tbaa !86 ; 2 uses
  %i.arw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv1597.prol
  %i.arx = load double, ptr %i.arw, align 8, !tbaa !86
  %i.ary = fdiv double %i.arv, %i.arx             ; 3 uses
  %i.arz = tail call double @llvm.fmuladd.f64(double %i.arv, double %i.ary, double %.111831381.prol) ; 4 uses
  %i.asa = tail call double @llvm.fmuladd.f64(double %i.ary, double %i.ary, double %.112431378.prol) ; 3 uses
  %i.asb = fadd double %.511921380.prol, %i.arz   ; 3 uses
  %indvars.iv.next1598.prol = add nsw i64 %indvars.iv1597.prol, -1 ; 2 uses
  %prol.iter2236.next = add i64 %prol.iter2236, 1 ; 2 uses
  %prol.iter2236.cmp.not = icmp eq i64 %prol.iter2236.next, %xtraiter2234.a
  br i1 %prol.iter2236.cmp.not, label %.lr.ph1383.prol.loopexit, label %.lr.ph1383.prol, !llvm.loop !69

.lr.ph1383.prol.loopexit:                         ; preds = %.lr.ph1383.prol, %.lr.ph1383.preheader
  %indvars.iv1597.unr = phi i64 [ %i.arr, %.lr.ph1383.preheader ], [ %indvars.iv.next1598.prol, %.lr.ph1383.prol ]
  %.111831381.unr = phi double [ 0.000000e+00, %.lr.ph1383.preheader ], [ %i.arz, %.lr.ph1383.prol ]
  %.511921380.unr = phi double [ %i.arq, %.lr.ph1383.preheader ], [ %i.asb, %.lr.ph1383.prol ]
  %.112431378.unr = phi double [ 0.000000e+00, %.lr.ph1383.preheader ], [ %i.asa, %.lr.ph1383.prol ]
  %.lcssa2206.unr = phi double [ poison, %.lr.ph1383.preheader ], [ %i.arz, %.lr.ph1383.prol ]
  %.lcssa2205.unr = phi double [ poison, %.lr.ph1383.preheader ], [ %i.asa, %.lr.ph1383.prol ]
  %.lcssa2204.unr = phi double [ poison, %.lr.ph1383.preheader ], [ %i.asb, %.lr.ph1383.prol ]
  %i.asc = sub nsw i64 %i.ars, %i.arr
  %i.asd = icmp ugt i64 %i.asc, -4
  br i1 %i.asd, label %._crit_edge1384, label %.lr.ph1383

.lr.ph1383:                                       ; preds = %.lr.ph1383.prol.loopexit, %.lr.ph1383
  %indvars.iv1597.a = phi i64 [ %indvars.iv.next1598.3, %.lr.ph1383 ], [ %indvars.iv1597.unr, %.lr.ph1383.prol.loopexit ] ; 6 uses
  %.111831381 = phi double [ %i.ath, %.lr.ph1383 ], [ %.111831381.unr, %.lr.ph1383.prol.loopexit ]
  %.511921380 = phi double [ %i.atj, %.lr.ph1383 ], [ %.511921380.unr, %.lr.ph1383.prol.loopexit ]
  %.112431378 = phi double [ %i.ati, %.lr.ph1383 ], [ %.112431378.unr, %.lr.ph1383.prol.loopexit ]
  %i.ase = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv1597.a
  %i.asf = load double, ptr %i.ase, align 8, !tbaa !86 ; 2 uses
  %i.asg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv1597.a
  %i.ash = load double, ptr %i.asg, align 8, !tbaa !86
  %i.asi = fdiv double %i.asf, %i.ash             ; 3 uses
  %i.asj = tail call double @llvm.fmuladd.f64(double %i.asf, double %i.asi, double %.111831381) ; 2 uses
  %i.ask = tail call double @llvm.fmuladd.f64(double %i.asi, double %i.asi, double %.112431378)
  %i.asl = fadd double %.511921380, %i.asj
  %indvars.iv.next1598.a = add nsw i64 %indvars.iv1597.a, -1 ; 2 uses
  %i.asm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next1598.a
  %i.asn = load double, ptr %i.asm, align 8, !tbaa !86 ; 2 uses
  %i.aso = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next1598.a
  %i.asp = load double, ptr %i.aso, align 8, !tbaa !86
  %i.asq = fdiv double %i.asn, %i.asp             ; 3 uses
  %i.asr = tail call double @llvm.fmuladd.f64(double %i.asn, double %i.asq, double %i.asj) ; 2 uses
  %i.ass = tail call double @llvm.fmuladd.f64(double %i.asq, double %i.asq, double %i.ask)
  %i.ast = fadd double %i.asl, %i.asr
  %indvars.iv.next1598.1 = add nsw i64 %indvars.iv1597.a, -2 ; 2 uses
  %i.asu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next1598.1
  %i.asv = load double, ptr %i.asu, align 8, !tbaa !86 ; 2 uses
  %i.asw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next1598.1
  %i.asx = load double, ptr %i.asw, align 8, !tbaa !86
  %i.asy = fdiv double %i.asv, %i.asx             ; 3 uses
  %i.asz = tail call double @llvm.fmuladd.f64(double %i.asv, double %i.asy, double %i.asr) ; 2 uses
  %i.ata = tail call double @llvm.fmuladd.f64(double %i.asy, double %i.asy, double %i.ass)
  %i.atb = fadd double %i.ast, %i.asz
  %indvars.iv.next1598.2 = add nsw i64 %indvars.iv1597.a, -3 ; 2 uses
  %i.atc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next1598.2
  %i.atd = load double, ptr %i.atc, align 8, !tbaa !86 ; 2 uses
  %i.ate = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.next1598.2
  %i.atf = load double, ptr %i.ate, align 8, !tbaa !86
  %i.atg = fdiv double %i.atd, %i.atf             ; 3 uses
  %i.ath = tail call double @llvm.fmuladd.f64(double %i.atd, double %i.atg, double %i.asz) ; 3 uses
  %i.ati = tail call double @llvm.fmuladd.f64(double %i.atg, double %i.atg, double %i.ata) ; 2 uses
  %i.atj = fadd double %i.atb, %i.ath             ; 2 uses
  %indvars.iv.next1598.3 = add nsw i64 %indvars.iv1597.a, -4 ; 2 uses
  %.not1288.not.3 = icmp sgt i64 %indvars.iv.next1598.3, %i.ars
  br i1 %.not1288.not.3, label %.lr.ph1383, label %._crit_edge1384, !llvm.loop !70

._crit_edge1384:                                  ; preds = %.lr.ph1383.prol.loopexit, %.lr.ph1383, %._crit_edge1373.._crit_edge1384_crit_edge
  %.pre-phi1678 = phi i64 [ %.pre1677, %._crit_edge1373.._crit_edge1384_crit_edge ], [ %i.ars, %.lr.ph1383 ], [ %i.ars, %.lr.ph1383.prol.loopexit ] ; 4 uses
  %.11243.lcssa = phi double [ 0.000000e+00, %._crit_edge1373.._crit_edge1384_crit_edge ], [ %.lcssa2205.unr, %.lr.ph1383.prol.loopexit ], [ %i.ati, %.lr.ph1383 ] ; 3 uses
  %.51192.lcssa = phi double [ %i.arq, %._crit_edge1373.._crit_edge1384_crit_edge ], [ %.lcssa2204.unr, %.lr.ph1383.prol.loopexit ], [ %i.atj, %.lr.ph1383 ]
  %.11183.lcssa = phi double [ 0.000000e+00, %._crit_edge1373.._crit_edge1384_crit_edge ], [ %.lcssa2206.unr, %.lr.ph1383.prol.loopexit ], [ %i.ath, %.lr.ph1383 ] ; 3 uses
  %i.atk = fadd double %i.r, %.11183.lcssa
  %i.atl = fadd double %.5.lcssa, %i.atk          ; 3 uses
  %i.atm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre-phi1678 ; 3 uses
  %i.atn = load double, ptr %i.atm, align 8, !tbaa !86 ; 4 uses
  %i.ato = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.pre-phi1678 ; 3 uses
  %i.atp = load double, ptr %i.ato, align 8, !tbaa !86
  %i.atq = fdiv double %i.atn, %i.atp             ; 3 uses
  %i.atr = fadd double %.41236.lcssa, %.11243.lcssa ; 5 uses
  %i.ats = tail call double @llvm.fmuladd.f64(double %i.atq, double %i.atq, double %i.atr) ; 5 uses
  %i.att = fmul double %i.atn, %i.atq             ; 4 uses
  %i.atu = fadd double %i.atl, %i.att             ; 10 uses
  store double %i.atu, ptr %i.b, align 8, !tbaa !86
  %i.atv = fsub double %.11183.lcssa, %.5.lcssa
  %i.atw = tail call double @llvm.fmuladd.f64(double %i.atv, double 8.000000e+00, double %.51192.lcssa)
  %i.atx = tail call double @llvm.fmuladd.f64(double %i.r, double 2.000000e+00, double %i.atw)
  %i.aty = fcmp oge double %i.att, 0.000000e+00
  %i.atz = fneg double %i.att
  %i.aua = select i1 %i.aty, double %i.att, double %i.atz
  %i.aub = tail call double @llvm.fmuladd.f64(double %i.aua, double 3.000000e+00, double %i.atx)
  %i.auc = fcmp oge double %.6118017251729, 0.000000e+00
  %i.aud = fneg double %.6118017251729
  %i.aue = select i1 %i.auc, double %.6118017251729, double %i.aud
  %i.auf = tail call double @llvm.fmuladd.f64(double %i.aue, double %i.ats, double %i.aub)
  %i.aug = tail call double @llvm.fabs.f64(double %i.atu)
  %i.auh = fmul double %i.p, %i.auf
  %i.aui = fcmp ugt double %i.aug, %i.auh
  br i1 %i.aui, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge1384
  br i1 %i.ahz, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.auj = sext i32 %i.apu to i64
  %i.auk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.auj
  %i.aul = load double, ptr %i.auk, align 8, !tbaa !86
  %i.aum = fadd double %.6118017251729, %i.aul
  store double %i.aum, ptr %6, align 8, !tbaa !86
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  %i.aun = load double, ptr %i.zf, align 8, !tbaa !86
  %i.auo = fadd double %.6118017251729, %i.aun
  store double %i.auo, ptr %6, align 8, !tbaa !86
  br label %.loopexit

bb.au:                                            ; preds = %._crit_edge1384
  %8 = icmp eq i32 %.01197, %i.apt
  %9 = icmp eq i32 %.01197, 1
  %10 = fcmp ule double %i.atl, 0.000000e+00
  %11 = fcmp uge double %i.atl, 0.000000e+00
  %.01198.v = select i1 %i.ahz, i1 %10, i1 %11
  %or.cond1331.not.not1336 = or i1 %9, %8
  %narrow.not = select i1 %or.cond1331.not.not1336, i1 true, i1 %.01198.v ; 2 uses
  %i.aup = fcmp ugt double %i.atu, 0.000000e+00   ; 2 uses
  %i.auq = fcmp oge double %.4121517201733, %.6118017251729
  %i.aur = fcmp ugt double %.4120717221731, %.6118017251729
  %i.aus = select i1 %i.aup, i1 true, i1 %i.auq
  %.51216 = select i1 %i.aus, double %.4121517201733, double %.6118017251729 ; 3 uses
  %i.aut = select i1 %i.aup, i1 %i.aur, i1 false
  %.51208 = select i1 %i.aut, double %.6118017251729, double %.4120717221731 ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !84
  br i1 %narrow.not, label %bb.av, label %bb.bh

bb.av:                                            ; preds = %bb.au
  br i1 %i.ahz, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.auu = sext i32 %i.apu to i64                 ; 4 uses
  %i.auv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.auu
  %i.auw = load double, ptr %i.auv, align 8, !tbaa !86
  %i.aux = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.auu
  %i.auy = load double, ptr %i.aux, align 8, !tbaa !86 ; 2 uses
  %i.auz = fdiv double %i.auw, %i.auy             ; 2 uses
  %i.ava = load double, ptr %i.ahv, align 8, !tbaa !86 ; 2 uses
  %i.avb = fneg double %i.ava
  %i.avc = tail call double @llvm.fmuladd.f64(double %i.avb, double %i.ats, double %i.atu)
  %i.avd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.auu
  %i.ave = load double, ptr %i.avd, align 8, !tbaa !86
  %i.avf = load double, ptr %i.zf, align 8, !tbaa !86
  %i.avg = fsub double %i.ave, %i.avf
  %i.avh = fmul double %i.auz, %i.auz
  %i.avi = fneg double %i.avg
  %i.avj = tail call double @llvm.fmuladd.f64(double %i.avi, double %i.avh, double %i.avc)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.avk = load double, ptr %i.ahs, align 8, !tbaa !86
  %i.avl = load double, ptr %i.ahv, align 8, !tbaa !86 ; 2 uses
  %i.avm = fdiv double %i.avk, %i.avl             ; 2 uses
  %i.avn = sext i32 %i.apu to i64                 ; 3 uses
  %i.avo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.avn
  %i.avp = load double, ptr %i.avo, align 8, !tbaa !86 ; 2 uses
  %i.avq = fneg double %i.avp
  %i.avr = tail call double @llvm.fmuladd.f64(double %i.avq, double %i.ats, double %i.atu)
  %i.avs = load double, ptr %i.zf, align 8, !tbaa !86
  %i.avt = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.avn
  %i.avu = load double, ptr %i.avt, align 8, !tbaa !86
  %i.avv = fsub double %i.avs, %i.avu
  %i.avw = fmul double %i.avm, %i.avm
  %i.avx = fneg double %i.avv
  %i.avy = tail call double @llvm.fmuladd.f64(double %i.avx, double %i.avw, double %i.avr)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.avz = phi double [ %i.avl, %bb.ax ], [ %i.ava, %bb.aw ] ; 4 uses
  %i.awa = phi double [ %i.avp, %bb.ax ], [ %i.auy, %bb.aw ] ; 4 uses
  %.pre-phi = phi i64 [ %i.avn, %bb.ax ], [ %i.auu, %bb.aw ]
  %storemerge = phi double [ %i.avy, %bb.ax ], [ %i.avj, %bb.aw ] ; 4 uses
  %i.awb = fadd double %i.awa, %i.avz
  %i.awc = fmul double %i.awa, %i.avz             ; 2 uses
  %i.awd = fneg double %i.ats
  %i.awe = fmul double %i.awc, %i.awd
  %i.awf = tail call double @llvm.fmuladd.f64(double %i.awb, double %i.atu, double %i.awe) ; 9 uses
  %i.awg = fmul double %i.atu, %i.awc             ; 4 uses
  %i.awh = fcmp oeq double %storemerge, 0.000000e+00
  br i1 %i.awh, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.awi = fcmp oeq double %i.awf, 0.000000e+00
  br i1 %i.awi, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ahz, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.awj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre-phi
  %i.awk = load double, ptr %i.awj, align 8, !tbaa !86 ; 2 uses
  %i.awl = fmul double %i.avz, %i.avz
  %i.awm = fmul double %i.atr, %i.awl
  %i.awn = tail call double @llvm.fmuladd.f64(double %i.awk, double %i.awk, double %i.awm)
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.awo = load double, ptr %i.ahs, align 8, !tbaa !86 ; 2 uses
  %i.awp = fmul double %i.awa, %i.awa
  %i.awq = fmul double %i.atr, %i.awp
  %i.awr = tail call double @llvm.fmuladd.f64(double %i.awo, double %i.awo, double %i.awq)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.az
  %.01230 = phi double [ %i.awn, %bb.bb ], [ %i.awr, %bb.bc ], [ %i.awf, %bb.az ]
  %i.aws = fdiv double %i.awg, %.01230            ; 2 uses
  store double %i.aws, ptr %i.f, align 8, !tbaa !86
  br label %bb.bl

bb.be:                                            ; preds = %bb.ay
  %i.awt = fcmp ugt double %i.awf, 0.000000e+00
  br i1 %i.awt, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.awu = fmul double %i.awg, 4.000000e+00
  %i.awv = fneg double %storemerge
  %i.aww = fmul double %i.awu, %i.awv
  %i.awx = tail call double @llvm.fmuladd.f64(double %i.awf, double %i.awf, double %i.aww) ; 3 uses
  %i.awy = fcmp oge double %i.awx, 0.000000e+00
  %i.awz = fneg double %i.awx
  %i.axa = select i1 %i.awy, double %i.awx, double %i.awz
  %i.axb = tail call double @sqrt(double noundef %i.axa) #6
  %i.axc = fsub double %i.awf, %i.axb
  %i.axd = fmul double %storemerge, 2.000000e+00
  %i.axe = fdiv double %i.axc, %i.axd             ; 2 uses
  store double %i.axe, ptr %i.f, align 8, !tbaa !86
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.axf = fmul double %i.awg, 2.000000e+00
  %i.axg = fmul double %i.awg, 4.000000e+00
  %i.axh = fneg double %storemerge
  %i.axi = fmul double %i.axg, %i.axh
  %i.axj = tail call double @llvm.fmuladd.f64(double %i.awf, double %i.awf, double %i.axi) ; 3 uses
  %i.axk = fcmp oge double %i.axj, 0.000000e+00
  %i.axl = fneg double %i.axj
  %i.axm = select i1 %i.axk, double %i.axj, double %i.axl
  %i.axn = tail call double @sqrt(double noundef %i.axm) #6
  %i.axo = fadd double %i.awf, %i.axn
  %i.axp = fdiv double %i.axf, %i.axo             ; 2 uses
  store double %i.axp, ptr %i.f, align 8, !tbaa !86
  br label %bb.bl

bb.bh:                                            ; preds = %bb.au
  %i.axq = fadd double %i.r, %.5.lcssa
  %i.axr = fadd double %i.axq, %.11183.lcssa      ; 2 uses
  br i1 %i.ahz, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.axs = sext i32 %i.apv to i64                 ; 4 uses
  %i.axt = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.axs
  %i.axu = load double, ptr %i.axt, align 8, !tbaa !86 ; 3 uses
  %i.axv = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.axs
  %i.axw = load double, ptr %i.axv, align 8, !tbaa !86
  %i.axx = fdiv double %i.axu, %i.axw             ; 2 uses
  %i.axy = fmul double %i.axx, %i.axx             ; 2 uses
  %i.axz = sext i32 %i.apw to i64                 ; 2 uses
  %i.aya = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.axz
  %i.ayb = load double, ptr %i.aya, align 8, !tbaa !86 ; 3 uses
  %i.ayc = fneg double %i.ayb
  %i.ayd = tail call double @llvm.fmuladd.f64(double %i.ayc, double %i.atr, double %i.axr)
  %i.aye = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.axs
  %i.ayf = load double, ptr %i.aye, align 8, !tbaa !86
  %i.ayg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.axz
  %i.ayh = load double, ptr %i.ayg, align 8, !tbaa !86
  %i.ayi = fsub double %i.ayf, %i.ayh
  %i.ayj = fneg double %i.ayi
  %i.ayk = tail call double @llvm.fmuladd.f64(double %i.ayj, double %i.axy, double %i.ayd)
  %i.ayl = fmul double %i.axu, %i.axu
  %i.aym = fmul double %i.ayb, %i.ayb
  %i.ayn = fsub double %.41236.lcssa, %i.axy
  %i.ayo = fadd double %.11243.lcssa, %i.ayn
  %i.ayp = fmul double %i.aym, %i.ayo
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ayq = sext i32 %i.apw to i64                 ; 3 uses
  %i.ayr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ayq
  %i.ays = load double, ptr %i.ayr, align 8, !tbaa !86 ; 3 uses
  %i.ayt = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ayq
  %i.ayu = load double, ptr %i.ayt, align 8, !tbaa !86
  %i.ayv = fdiv double %i.ays, %i.ayu             ; 2 uses
  %i.ayw = fmul double %i.ayv, %i.ayv             ; 2 uses
  %i.ayx = sext i32 %i.apv to i64                 ; 3 uses
  %i.ayy = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ayx
  %i.ayz = load double, ptr %i.ayy, align 8, !tbaa !86 ; 3 uses
  %i.aza = fneg double %i.ayz
  %i.azb = tail call double @llvm.fmuladd.f64(double %i.aza, double %i.atr, double %i.axr)
  %i.azc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ayq
  %i.azd = load double, ptr %i.azc, align 8, !tbaa !86
  %i.aze = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ayx
  %i.azf = load double, ptr %i.aze, align 8, !tbaa !86
  %i.azg = fsub double %i.azd, %i.azf
  %i.azh = fneg double %i.azg
  %i.azi = tail call double @llvm.fmuladd.f64(double %i.azh, double %i.ayw, double %i.azb)
  %i.azj = fmul double %i.ayz, %i.ayz
  %i.azk = fsub double %.11243.lcssa, %i.ayw
  %i.azl = fadd double %.41236.lcssa, %i.azk
  %i.azm = fmul double %i.azj, %i.azl
  %i.azn = fmul double %i.ays, %i.ays
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pre-phi1676 = phi i64 [ %i.ayx, %bb.bj ], [ %i.axs, %bb.bi ]
  %.sink1668 = phi double [ %i.azi, %bb.bj ], [ %i.ayk, %bb.bi ]
  %.sink1667 = phi double [ %i.azm, %bb.bj ], [ %i.ayl, %bb.bi ]
  %.sink = phi double [ %i.azn, %bb.bj ], [ %i.ayp, %bb.bi ]
  store double %.sink1668, ptr %i.a, align 8, !tbaa !86
  store double %.sink1667, ptr %i.d, align 16, !tbaa !86
  %i.azo = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store double %.sink, ptr %i.azo, align 16, !tbaa !86
  %i.azp = fmul double %i.atn, %i.atn
  %i.azq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.azp, ptr %i.azq, align 8, !tbaa !86
  %i.azr = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.pre-phi1676
  call void @dlaed6_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.azr, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull %7) #6
  %i.azs = load i32, ptr %7, align 4, !tbaa !84
  %.not1294 = icmp eq i32 %i.azs, 0
  br i1 %.not1294, label %._crit_edge1669.a, label %.loopexit

._crit_edge1669.a:                                ; preds = %bb.bk
  %.pre = load double, ptr %i.b, align 8, !tbaa !86
  %.pre1670.a = load double, ptr %i.f, align 8, !tbaa !86
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge1669.a, %bb.bd, %bb.bg, %bb.bf
  %i.azt = phi double [ %.pre1670.a, %._crit_edge1669.a ], [ %i.aws, %bb.bd ], [ %i.axp, %bb.bg ], [ %i.axe, %bb.bf ] ; 2 uses
  %i.azu = phi double [ %.pre, %._crit_edge1669.a ], [ %i.atu, %bb.bd ], [ %i.atu, %bb.bg ], [ %i.atu, %bb.bf ] ; 9 uses
  %i.azv = fmul double %i.azu, %i.azt
  %i.azw = fcmp ult double %i.azv, 0.000000e+00
  br i1 %i.azw, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.azx = fneg double %i.azu
  %i.azy = fdiv double %i.azx, %i.ats             ; 2 uses
  store double %i.azy, ptr %i.f, align 8, !tbaa !86
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.azz = phi double [ %i.azy, %bb.bm ], [ %i.azt, %bb.bl ] ; 2 uses
  %i.baa = fadd double %.6118017251729, %i.azz    ; 2 uses
  %i.bab = fcmp ogt double %i.baa, %.51208
  %i.bac = fcmp olt double %i.baa, %.51216
  %or.cond1327 = select i1 %i.bab, i1 true, i1 %i.bac
  br i1 %or.cond1327, label %.sink.split, label %bb.bo

.sink.split:                                      ; preds = %bb.bn
  %i.bad = fcmp olt double %i.azu, 0.000000e+00
  %.51208..51216 = select i1 %i.bad, double %.51208, double %.51216
  %i.bae = fsub double %.51208..51216, %.6118017251729
  %i.baf = fmul double %i.bae, 5.000000e-01       ; 2 uses
  store double %i.baf, ptr %i.f, align 8, !tbaa !86
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split, %bb.bn
  %i.bag = phi double [ %i.azz, %bb.bn ], [ %i.baf, %.sink.split ] ; 4 uses
  %i.bah = load i32, ptr %0, align 4, !tbaa !84   ; 7 uses
  %.not12951388 = icmp slt i32 %i.bah, 1
  br i1 %.not12951388, label %.preheader1338, label %iter.check1959

iter.check1959:                                   ; preds = %bb.bo
  %i.bai = add nuw i32 %i.bah, 1
  %wide.trip.count1603 = zext i32 %i.bai to i64
  %i.baj = zext nneg i32 %i.bah to i64            ; 5 uses
  %min.iters.check1942 = icmp ult i32 %i.bah, 4
  br i1 %min.iters.check1942, label %vec.epilog.scalar.ph1960.preheader, label %vector.main.loop.iter.check1943

vector.main.loop.iter.check1943:                  ; preds = %iter.check1959
  %min.iters.check1944 = icmp ult i32 %i.bah, 16
  br i1 %min.iters.check1944, label %vec.epilog.ph1963, label %vector.ph1945

vector.ph1945:                                    ; preds = %vector.main.loop.iter.check1943
end_hunk_1
begin_hunk_2_@dlaed4_:bb.a
  %indvars.iv.next1606.2 = add nuw nsw i64 %indvars.iv1605, 3 ; 2 uses
  %i.bcd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1606.2
  %i.bce = load double, ptr %i.bcd, align 8, !tbaa !86 ; 2 uses
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next1606.2
  %i.bcg = load double, ptr %i.bcf, align 8, !tbaa !86
  %i.bch = fdiv double %i.bce, %i.bcg             ; 3 uses
  %i.bci = call double @llvm.fmuladd.f64(double %i.bce, double %i.bch, double %i.bca) ; 4 uses
  %i.bcj = call double @llvm.fmuladd.f64(double %i.bch, double %i.bch, double %i.bcb) ; 3 uses
  %i.bck = fadd double %i.bcc, %i.bci             ; 3 uses
  %indvars.iv.next1606.3 = add nuw nsw i64 %indvars.iv1605, 4 ; 2 uses
  %niter2245.next.3 = add i64 %niter2245, 4       ; 2 uses
  %niter2245.ncmp.3 = icmp eq i64 %niter2245.next.3, %unroll_iter2244
  br i1 %niter2245.ncmp.3, label %._crit_edge1398.loopexit.unr-lcssa, label %.lr.ph1397, !llvm.loop !74

._crit_edge1398.loopexit.unr-lcssa:               ; preds = %.lr.ph1397
  %lcmp.mod2239.not = icmp eq i64 %xtraiter2237, 0
  br i1 %lcmp.mod2239.not, label %._crit_edge1398, label %.lr.ph1397.epil.preheader

.lr.ph1397.epil.preheader:                        ; preds = %._crit_edge1398.loopexit.unr-lcssa, %.lr.ph1397.preheader
  %indvars.iv1605.epil.init = phi i64 [ 1, %.lr.ph1397.preheader ], [ %indvars.iv.next1606.3, %._crit_edge1398.loopexit.unr-lcssa ]
  %.61396.epil.init = phi double [ 0.000000e+00, %.lr.ph1397.preheader ], [ %i.bci, %._crit_edge1398.loopexit.unr-lcssa ]
  %.611931395.epil.init = phi double [ 0.000000e+00, %.lr.ph1397.preheader ], [ %i.bck, %._crit_edge1398.loopexit.unr-lcssa ]
  %.512371393.epil.init = phi double [ 0.000000e+00, %.lr.ph1397.preheader ], [ %i.bcj, %._crit_edge1398.loopexit.unr-lcssa ]
  %lcmp.mod2243 = icmp ne i64 %xtraiter2237, 0
  call void @llvm.assume(i1 %lcmp.mod2243)
  br label %.lr.ph1397.epil

.lr.ph1397.epil:                                  ; preds = %.lr.ph1397.epil, %.lr.ph1397.epil.preheader
  %indvars.iv1605.epil = phi i64 [ %indvars.iv1605.epil.init, %.lr.ph1397.epil.preheader ], [ %indvars.iv.next1606.epil, %.lr.ph1397.epil ] ; 3 uses
  %.61396.epil = phi double [ %.61396.epil.init, %.lr.ph1397.epil.preheader ], [ %i.bcq, %.lr.ph1397.epil ]
  %.611931395.epil = phi double [ %.611931395.epil.init, %.lr.ph1397.epil.preheader ], [ %i.bcs, %.lr.ph1397.epil ]
  %.512371393.epil = phi double [ %.512371393.epil.init, %.lr.ph1397.epil.preheader ], [ %i.bcr, %.lr.ph1397.epil ]
  %epil.iter2238 = phi i64 [ 0, %.lr.ph1397.epil.preheader ], [ %epil.iter2238.next, %.lr.ph1397.epil ]
  %i.bcl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1605.epil
  %i.bcm = load double, ptr %i.bcl, align 8, !tbaa !86 ; 2 uses
  %i.bcn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv1605.epil
  %i.bco = load double, ptr %i.bcn, align 8, !tbaa !86
  %i.bcp = fdiv double %i.bcm, %i.bco             ; 3 uses
  %i.bcq = call double @llvm.fmuladd.f64(double %i.bcm, double %i.bcp, double %.61396.epil) ; 3 uses
  %i.bcr = call double @llvm.fmuladd.f64(double %i.bcp, double %i.bcp, double %.512371393.epil) ; 2 uses
  %i.bcs = fadd double %.611931395.epil, %i.bcq   ; 2 uses
  %indvars.iv.next1606.epil = add nuw nsw i64 %indvars.iv1605.epil, 1
  %epil.iter2238.next = add i64 %epil.iter2238, 1 ; 2 uses
  %epil.iter2238.cmp.not = icmp eq i64 %epil.iter2238.next, %xtraiter2237
  br i1 %epil.iter2238.cmp.not, label %._crit_edge1398, label %.lr.ph1397.epil, !llvm.loop !75

._crit_edge1398:                                  ; preds = %._crit_edge1398.loopexit.unr-lcssa, %.lr.ph1397.epil, %.preheader1338
  %.51237.lcssa = phi double [ 0.000000e+00, %.preheader1338 ], [ %i.bcj, %._crit_edge1398.loopexit.unr-lcssa ], [ %i.bcr, %.lr.ph1397.epil ] ; 2 uses
  %.61193.lcssa = phi double [ 0.000000e+00, %.preheader1338 ], [ %i.bck, %._crit_edge1398.loopexit.unr-lcssa ], [ %i.bcs, %.lr.ph1397.epil ] ; 3 uses
  %.6.lcssa = phi double [ 0.000000e+00, %.preheader1338 ], [ %i.bci, %._crit_edge1398.loopexit.unr-lcssa ], [ %i.bcq, %.lr.ph1397.epil ] ; 3 uses
  %i.bct = fcmp oge double %.61193.lcssa, 0.000000e+00
  %i.bcu = fneg double %.61193.lcssa
  %i.bcv = select i1 %i.bct, double %.61193.lcssa, double %i.bcu ; 2 uses
  %.not1297.not1402 = icmp sgt i32 %i.bah, %.01197
  br i1 %.not1297.not1402, label %.lr.ph1408.preheader, label %._crit_edge1409

.lr.ph1408.preheader:                             ; preds = %._crit_edge1398
  %i.bcw = sext i32 %i.bah to i64
  br label %.lr.ph1408

.lr.ph1408:                                       ; preds = %.lr.ph1408.preheader, %.lr.ph1408
  %indvars.iv1610.a = phi i64 [ %i.bcw, %.lr.ph1408.preheader ], [ %indvars.iv.next1611.a, %.lr.ph1408 ] ; 3 uses
  %.211841406 = phi double [ 0.000000e+00, %.lr.ph1408.preheader ], [ %i.bdc, %.lr.ph1408 ]
  %.711941405 = phi double [ %i.bcv, %.lr.ph1408.preheader ], [ %i.bde, %.lr.ph1408 ]
  %.212441403 = phi double [ 0.000000e+00, %.lr.ph1408.preheader ], [ %i.bdd, %.lr.ph1408 ]
  %i.bcx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv1610.a
  %i.bcy = load double, ptr %i.bcx, align 8, !tbaa !86 ; 2 uses
  %i.bcz = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv1610.a
  %i.bda = load double, ptr %i.bcz, align 8, !tbaa !86
  %i.bdb = fdiv double %i.bcy, %i.bda             ; 3 uses
  %i.bdc = call double @llvm.fmuladd.f64(double %i.bcy, double %i.bdb, double %.211841406) ; 3 uses
  %i.bdd = call double @llvm.fmuladd.f64(double %i.bdb, double %i.bdb, double %.212441403) ; 2 uses
  %i.bde = fadd double %.711941405, %i.bdc        ; 2 uses
  %indvars.iv.next1611.a = add nsw i64 %indvars.iv1610.a, -1 ; 2 uses
  %.not1297.not = icmp sgt i64 %indvars.iv.next1611.a, %.pre-phi1678
  br i1 %.not1297.not, label %.lr.ph1408, label %._crit_edge1409, !llvm.loop !76

._crit_edge1409:                                  ; preds = %.lr.ph1408, %._crit_edge1398
  %.21244.lcssa = phi double [ 0.000000e+00, %._crit_edge1398 ], [ %i.bdd, %.lr.ph1408 ] ; 2 uses
  %.71194.lcssa = phi double [ %i.bcv, %._crit_edge1398 ], [ %i.bde, %.lr.ph1408 ]
  %.21184.lcssa = phi double [ 0.000000e+00, %._crit_edge1398 ], [ %i.bdc, %.lr.ph1408 ] ; 3 uses
  %i.bdf = load double, ptr %i.atm, align 8, !tbaa !86 ; 3 uses
  %i.bdg = load double, ptr %i.ato, align 8, !tbaa !86 ; 2 uses
  %i.bdh = fdiv double %i.bdf, %i.bdg             ; 3 uses
  %i.bdi = fadd double %.51237.lcssa, %.21244.lcssa
  %i.bdj = call double @llvm.fmuladd.f64(double %i.bdh, double %i.bdh, double %i.bdi) ; 2 uses
  %i.bdk = fmul double %i.bdf, %i.bdh             ; 4 uses
  %i.bdl = fadd double %i.r, %.21184.lcssa
  %i.bdm = fadd double %.6.lcssa, %i.bdl
  %i.bdn = fadd double %i.bdm, %i.bdk             ; 4 uses
  store double %i.bdn, ptr %i.b, align 8, !tbaa !86
  %i.bdo = fsub double %.21184.lcssa, %.6.lcssa
  %i.bdp = call double @llvm.fmuladd.f64(double %i.bdo, double 8.000000e+00, double %.71194.lcssa)
  %i.bdq = call double @llvm.fmuladd.f64(double %i.r, double 2.000000e+00, double %i.bdp)
  %i.bdr = fcmp oge double %i.bdk, 0.000000e+00
  %i.bds = fneg double %i.bdk
  %i.bdt = select i1 %i.bdr, double %i.bdk, double %i.bds
  %i.bdu = call double @llvm.fmuladd.f64(double %i.bdt, double 3.000000e+00, double %i.bdq)
  %i.bdv = fadd double %.6118017251729, %i.bag    ; 5 uses
  %i.bdw = fcmp oge double %i.bdv, 0.000000e+00
  %i.bdx = fneg double %i.bdv
  %i.bdy = select i1 %i.bdw, double %i.bdv, double %i.bdx
  %i.bdz = call double @llvm.fmuladd.f64(double %i.bdy, double %i.bdj, double %i.bdu)
  %i.bea = load i32, ptr %i.e, align 4, !tbaa !84 ; 2 uses
  %.not1298 = icmp eq i32 %i.bea, 0
  br i1 %.not1298, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge1409
  %i.beb = fneg double %i.bdn
  %i.bec = fcmp oge double %i.azu, 0.000000e+00
  %i.bed = fneg double %i.azu
  %i.bee = select i1 %i.bec, double %i.azu, double %i.bed
  %i.bef = fdiv double %i.bee, 1.000000e+01
  %i.beg = fcmp olt double %i.bef, %i.beb
  br label %bb.br

bb.bq:                                            ; preds = %._crit_edge1409
  %i.beh = fcmp oge double %i.azu, 0.000000e+00
  %i.bei = fneg double %i.azu
  %i.bej = select i1 %i.beh, double %i.azu, double %i.bei
  %i.bek = fdiv double %i.bej, 1.000000e+01
  %i.bel = fcmp ogt double %i.bdn, %i.bek
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.01200.in = phi i1 [ %i.beg, %bb.bp ], [ %i.bel, %bb.bq ]
  %storemerge1299.in1440 = load i32, ptr %i.c, align 4, !tbaa !84 ; 2 uses
  %storemerge12991441 = add nsw i32 %storemerge1299.in1440, 1
  store i32 %storemerge12991441, ptr %i.c, align 4, !tbaa !84
  %i.bem = icmp slt i32 %storemerge1299.in1440, 30
  br i1 %i.bem, label %.lr.ph1453, label %._crit_edge1454

.lr.ph1453:                                       ; preds = %bb.br
  %.01200 = zext i1 %.01200.in to i32
  %i.ben = sext i32 %i.apv to i64                 ; 3 uses
  %i.beo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ben ; 4 uses
  %i.bep = sext i32 %i.apw to i64                 ; 3 uses
  %i.beq = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bep ; 3 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bes = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ben
  %i.bet = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ben ; 2 uses
  %i.beu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bep ; 2 uses
  %i.bev = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bep
  %wide.trip.count1621 = zext i32 %.01197 to i64
  %i.bew = add nsw i64 %wide.trip.count1621, -1   ; 2 uses
  %xtraiter2246 = and i64 %i.bew, 3               ; 3 uses
  %i.bex = add nsw i32 %.01197, -2
  %i.bey = icmp ult i32 %i.bex, 3
  %unroll_iter2253 = and i64 %i.bew, -4
  %lcmp.mod2248.not = icmp eq i64 %xtraiter2246, 0
  %lcmp.mod2252 = icmp ne i64 %xtraiter2246, 0
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1453, %bb.cz
  %i.bez = phi double [ %i.bdg, %.lr.ph1453 ], [ %i.bou, %bb.cz ]
  %i.bfa = phi double [ %i.bdf, %.lr.ph1453 ], [ %i.bot, %bb.cz ]
  %i.bfb = phi double [ %i.bdn, %.lr.ph1453 ], [ %i.bpb, %bb.cz ] ; 10 uses
  %.71451 = phi double [ %.6.lcssa, %.lr.ph1453 ], [ %.8.lcssa, %bb.cz ]
  %.711811450 = phi double [ %i.bdv, %.lr.ph1453 ], [ %i.bms, %bb.cz ] ; 9 uses
  %.311851449 = phi double [ %.21184.lcssa, %.lr.ph1453 ], [ %.41186.lcssa, %bb.cz ]
  %.811951448 = phi double [ %i.bdz, %.lr.ph1453 ], [ %i.bpm, %bb.cz ]
  %.011961447 = phi double [ %i.bdj, %.lr.ph1453 ], [ %i.box, %bb.cz ] ; 4 uses
  %.112011446 = phi i32 [ %.01200, %.lr.ph1453 ], [ %.21202, %bb.cz ] ; 5 uses
  %.612091445 = phi double [ %.51208, %.lr.ph1453 ], [ %.71210, %bb.cz ] ; 2 uses
  %.612171444 = phi double [ %.51216, %.lr.ph1453 ], [ %.71218, %bb.cz ] ; 2 uses
  %.612381443 = phi double [ %.51237.lcssa, %.lr.ph1453 ], [ %.91241.lcssa, %bb.cz ] ; 9 uses
  %.312451442 = phi double [ %.21244.lcssa, %.lr.ph1453 ], [ %.61248.lcssa, %bb.cz ] ; 9 uses
  %i.bfc = call double @llvm.fabs.f64(double %i.bfb)
  %i.bfd = fmul double %i.p, %.811951448
  %i.bfe = fcmp ugt double %i.bfc, %i.bfd
  br i1 %i.bfe, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.bff = load i32, ptr %i.e, align 4, !tbaa !84
  %.not1312 = icmp eq i32 %i.bff, 0
  br i1 %.not1312, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.bfg = load i32, ptr %1, align 4, !tbaa !84
  %i.bfh = sext i32 %i.bfg to i64
  %i.bfi = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bfh
  %i.bfj = load double, ptr %i.bfi, align 8, !tbaa !86
  %i.bfk = fadd double %.711811450, %i.bfj
  store double %i.bfk, ptr %6, align 8, !tbaa !86
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bt
  %i.bfl = load double, ptr %i.zf, align 8, !tbaa !86
  %i.bfm = fadd double %.711811450, %i.bfl
  store double %i.bfm, ptr %6, align 8, !tbaa !86
  br label %.loopexit

bb.bw:                                            ; preds = %bb.bs
  %i.bfn = fcmp ugt double %i.bfb, 0.000000e+00   ; 2 uses
  %i.bfo = fcmp oge double %.612171444, %.711811450
  %i.bfp = fcmp ugt double %.612091445, %.711811450
  %i.bfq = select i1 %i.bfn, i1 true, i1 %i.bfo
  %.71218 = select i1 %i.bfq, double %.612171444, double %.711811450 ; 3 uses
  %i.bfr = select i1 %i.bfn, i1 %i.bfp, i1 false
  %.71210 = select i1 %i.bfr, double %.711811450, double %.612091445 ; 3 uses
  br i1 %narrow.not, label %bb.bx, label %bb.cn

bb.bx:                                            ; preds = %bb.bw
  %.not1301 = icmp eq i32 %.112011446, 0          ; 2 uses
  br i1 %.not1301, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.bfs = load i32, ptr %i.e, align 4, !tbaa !84
  %.not1302 = icmp eq i32 %i.bfs, 0
  br i1 %.not1302, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.bft = load i32, ptr %1, align 4, !tbaa !84
  %i.bfu = sext i32 %i.bft to i64                 ; 4 uses
  %i.bfv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bfu
  %i.bfw = load double, ptr %i.bfv, align 8, !tbaa !86
  %i.bfx = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bfu
  %i.bfy = load double, ptr %i.bfx, align 8, !tbaa !86 ; 2 uses
  %i.bfz = fdiv double %i.bfw, %i.bfy             ; 2 uses
  %i.bga = load double, ptr %i.ahv, align 8, !tbaa !86 ; 2 uses
  %i.bgb = fneg double %i.bga
  %i.bgc = call double @llvm.fmuladd.f64(double %i.bgb, double %.011961447, double %i.bfb)
  %i.bgd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bfu
  %i.bge = load double, ptr %i.bgd, align 8, !tbaa !86
  %i.bgf = load double, ptr %i.zf, align 8, !tbaa !86
  %i.bgg = fsub double %i.bge, %i.bgf
  %i.bgh = fmul double %i.bfz, %i.bfz
  %i.bgi = fneg double %i.bgg
  %i.bgj = call double @llvm.fmuladd.f64(double %i.bgi, double %i.bgh, double %i.bgc) ; 2 uses
  store double %i.bgj, ptr %i.a, align 8, !tbaa !86
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.bgk = load double, ptr %i.ahs, align 8, !tbaa !86
  %i.bgl = load double, ptr %i.ahv, align 8, !tbaa !86 ; 2 uses
  %i.bgm = fdiv double %i.bgk, %i.bgl             ; 2 uses
  %i.bgn = load i32, ptr %1, align 4, !tbaa !84
  %i.bgo = sext i32 %i.bgn to i64                 ; 3 uses
  %i.bgp = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bgo
  %i.bgq = load double, ptr %i.bgp, align 8, !tbaa !86 ; 2 uses
  %i.bgr = fneg double %i.bgq
  %i.bgs = call double @llvm.fmuladd.f64(double %i.bgr, double %.011961447, double %i.bfb)
  %i.bgt = load double, ptr %i.zf, align 8, !tbaa !86
  %i.bgu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bgo
  %i.bgv = load double, ptr %i.bgu, align 8, !tbaa !86
  %i.bgw = fsub double %i.bgt, %i.bgv
  %i.bgx = fmul double %i.bgm, %i.bgm
  %i.bgy = fneg double %i.bgw
  %i.bgz = call double @llvm.fmuladd.f64(double %i.bgy, double %i.bgx, double %i.bgs) ; 2 uses
  store double %i.bgz, ptr %i.a, align 8, !tbaa !86
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx
  %i.bha = fdiv double %i.bfa, %i.bez             ; 4 uses
  %i.bhb = load i32, ptr %i.e, align 4, !tbaa !84 ; 2 uses
  %.not1303 = icmp eq i32 %i.bhb, 0               ; 2 uses
  %i.bhc = call double @llvm.fmuladd.f64(double %i.bha, double %i.bha, double %.612381443)
  %i.bhd = call double @llvm.fmuladd.f64(double %i.bha, double %i.bha, double %.312451442)
  %.41246 = select i1 %.not1303, double %i.bhd, double %.312451442 ; 2 uses
  %.71239 = select i1 %.not1303, double %.612381443, double %i.bhc ; 2 uses
  %i.bhe = load i32, ptr %1, align 4, !tbaa !84
  %i.bhf = sext i32 %i.bhe to i64                 ; 2 uses
  %i.bhg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bhf
  %i.bhh = load double, ptr %i.bhg, align 8, !tbaa !86 ; 2 uses
  %i.bhi = fneg double %i.bhh
  %i.bhj = call double @llvm.fmuladd.f64(double %i.bhi, double %.71239, double %i.bfb)
  %i.bhk = load double, ptr %i.ahv, align 8, !tbaa !86 ; 2 uses
  %i.bhl = fneg double %i.bhk
  %i.bhm = call double @llvm.fmuladd.f64(double %i.bhl, double %.41246, double %i.bhj) ; 2 uses
  store double %i.bhm, ptr %i.a, align 8, !tbaa !86
  %i.bhn = icmp eq i32 %i.bhb, 0
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.ca, %bb.cb
  %.not1304 = phi i1 [ false, %bb.bz ], [ true, %bb.ca ], [ %i.bhn, %bb.cb ]
  %i.bho = phi double [ %i.bgj, %bb.bz ], [ %i.bgz, %bb.ca ], [ %i.bhm, %bb.cb ] ; 4 uses
  %i.bhp = phi double [ %i.bga, %bb.bz ], [ %i.bgl, %bb.ca ], [ %i.bhk, %bb.cb ] ; 6 uses
  %i.bhq = phi double [ %i.bfy, %bb.bz ], [ %i.bgq, %bb.ca ], [ %i.bhh, %bb.cb ] ; 6 uses
  %.pre-phi1671 = phi i64 [ %i.bfu, %bb.bz ], [ %i.bgo, %bb.ca ], [ %i.bhf, %bb.cb ]
  %.51247 = phi double [ %.312451442, %bb.bz ], [ %.312451442, %bb.ca ], [ %.41246, %bb.cb ] ; 3 uses
  %.81240 = phi double [ %.612381443, %bb.bz ], [ %.612381443, %bb.ca ], [ %.71239, %bb.cb ] ; 3 uses
  %i.bhr = fadd double %i.bhq, %i.bhp
  %i.bhs = fmul double %i.bhq, %i.bhp             ; 2 uses
  %i.bht = fneg double %.011961447
  %i.bhu = fmul double %i.bhs, %i.bht
  %i.bhv = call double @llvm.fmuladd.f64(double %i.bhr, double %i.bfb, double %i.bhu) ; 9 uses
  %i.bhw = fmul double %i.bfb, %i.bhs             ; 4 uses
  %i.bhx = fcmp oeq double %i.bho, 0.000000e+00
  br i1 %i.bhx, label %bb.cd, label %bb.ck

bb.cd:                                            ; preds = %bb.cc
  %i.bhy = fcmp oeq double %i.bhv, 0.000000e+00
  br i1 %i.bhy, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not1301, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  br i1 %.not1304, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.bhz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre-phi1671
  %i.bia = load double, ptr %i.bhz, align 8, !tbaa !86 ; 2 uses
  %i.bib = fmul double %i.bhp, %i.bhp
  %i.bic = fadd double %.51247, %.81240
  %i.bid = fmul double %i.bic, %i.bib
  %i.bie = call double @llvm.fmuladd.f64(double %i.bia, double %i.bia, double %i.bid)
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  %i.bif = load double, ptr %i.ahs, align 8, !tbaa !86 ; 2 uses
  %i.big = fmul double %i.bhq, %i.bhq
  %i.bih = fadd double %.51247, %.81240
  %i.bii = fmul double %i.bih, %i.big
  %i.bij = call double @llvm.fmuladd.f64(double %i.bif, double %i.bif, double %i.bii)
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ce
  %i.bik = fmul double %i.bhq, %i.bhq
  %i.bil = fmul double %i.bhp, %i.bhp
  %i.bim = fmul double %.51247, %i.bil
  %i.bin = call double @llvm.fmuladd.f64(double %i.bik, double %.81240, double %i.bim)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cd
  %.11231 = phi double [ %i.bin, %bb.ci ], [ %i.bie, %bb.cg ], [ %i.bij, %bb.ch ], [ %i.bhv, %bb.cd ]
  %i.bio = fdiv double %i.bhw, %.11231            ; 2 uses
  store double %i.bio, ptr %i.f, align 8, !tbaa !86
  br label %bb.ct

bb.ck:                                            ; preds = %bb.cc
  %i.bip = fcmp ugt double %i.bhv, 0.000000e+00
  br i1 %i.bip, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.biq = fmul double %i.bhw, 4.000000e+00
  %i.bir = fneg double %i.bho
  %i.bis = fmul double %i.biq, %i.bir
  %i.bit = call double @llvm.fmuladd.f64(double %i.bhv, double %i.bhv, double %i.bis) ; 3 uses
  %i.biu = fcmp oge double %i.bit, 0.000000e+00
  %i.biv = fneg double %i.bit
  %i.biw = select i1 %i.biu, double %i.bit, double %i.biv
  %i.bix = call double @sqrt(double noundef %i.biw) #6
  %i.biy = fsub double %i.bhv, %i.bix
  %i.biz = fmul double %i.bho, 2.000000e+00
  %i.bja = fdiv double %i.biy, %i.biz             ; 2 uses
  store double %i.bja, ptr %i.f, align 8, !tbaa !86
  br label %bb.ct

bb.cm:                                            ; preds = %bb.ck
  %i.bjb = fmul double %i.bhw, 2.000000e+00
  %i.bjc = fmul double %i.bhw, 4.000000e+00
  %i.bjd = fneg double %i.bho
  %i.bje = fmul double %i.bjc, %i.bjd
  %i.bjf = call double @llvm.fmuladd.f64(double %i.bhv, double %i.bhv, double %i.bje) ; 3 uses
  %i.bjg = fcmp oge double %i.bjf, 0.000000e+00
  %i.bjh = fneg double %i.bjf
  %i.bji = select i1 %i.bjg, double %i.bjf, double %i.bjh
  %i.bjj = call double @sqrt(double noundef %i.bji) #6
  %i.bjk = fadd double %i.bhv, %i.bjj
  %i.bjl = fdiv double %i.bjb, %i.bjk             ; 2 uses
  store double %i.bjl, ptr %i.f, align 8, !tbaa !86
  br label %bb.ct

bb.cn:                                            ; preds = %bb.bw
  %i.bjm = fadd double %i.r, %.71451
  %i.bjn = fadd double %.311851449, %i.bjm        ; 3 uses
  %.not1305 = icmp eq i32 %.112011446, 0
  br i1 %.not1305, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.bjo = load double, ptr %i.beo, align 8, !tbaa !86 ; 3 uses
  %i.bjp = fneg double %i.bjo
  %i.bjq = call double @llvm.fmuladd.f64(double %i.bjp, double %.612381443, double %i.bjn)
  %i.bjr = load double, ptr %i.beq, align 8, !tbaa !86 ; 3 uses
  %i.bjs = fneg double %i.bjr
  %i.bjt = call double @llvm.fmuladd.f64(double %i.bjs, double %.312451442, double %i.bjq)
  store double %i.bjt, ptr %i.a, align 8, !tbaa !86
  %i.bju = fmul double %i.bjo, %i.bjo
  %i.bjv = fmul double %.612381443, %i.bju
  store double %i.bjv, ptr %i.d, align 16, !tbaa !86
  %i.bjw = fmul double %i.bjr, %i.bjr
  %i.bjx = fmul double %.312451442, %i.bjw
  br label %bb.cs

bb.cp:                                            ; preds = %bb.cn
  %i.bjy = load i32, ptr %i.e, align 4, !tbaa !84
  %.not1306 = icmp eq i32 %i.bjy, 0
  %i.bjz = fadd double %.312451442, %.612381443   ; 2 uses
  br i1 %.not1306, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.bka = load double, ptr %i.bes, align 8, !tbaa !86 ; 3 uses
  %i.bkb = load double, ptr %i.beo, align 8, !tbaa !86
  %i.bkc = fdiv double %i.bka, %i.bkb             ; 2 uses
  %i.bkd = fmul double %i.bkc, %i.bkc             ; 2 uses
  %i.bke = load double, ptr %i.beq, align 8, !tbaa !86 ; 3 uses
  %i.bkf = fneg double %i.bke
  %i.bkg = call double @llvm.fmuladd.f64(double %i.bkf, double %i.bjz, double %i.bjn)
  %i.bkh = load double, ptr %i.bet, align 8, !tbaa !86
  %i.bki = load double, ptr %i.beu, align 8, !tbaa !86
end_hunk_2
