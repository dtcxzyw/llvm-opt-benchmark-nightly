Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/tmerc?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL10destructorP8PJconstsi:bb.a
bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL19tmerc_spherical_inv5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load double, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  %i.d = fdiv double %0, %i.c
  %i.e = tail call double @exp(double noundef %i.d) #9 ; 3 uses
  %i.f = fcmp oeq double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %.sroa.020.0.copyload = load double, ptr %3, align 8, !tbaa !58
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = fdiv double 1.000000e+00, %i.e
  %i.i = fsub double %i.e, %i.h
  %i.j = fmul double %i.i, 5.000000e-01           ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.l = load double, ptr %i.k, align 8, !tbaa !47
  %i.m = fdiv double %1, %i.c
  %i.n = fadd double %i.m, %i.l                   ; 2 uses
  %i.o = tail call double @cos(double noundef %i.n) #9 ; 4 uses
  %i.p = fneg double %i.o
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.j, i64 1 ; 2 uses
  %i.s = insertelement <2 x double> %i.r, double %i.o, i64 0
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.s, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.u = extractelement <2 x double> %i.t, i64 0
  %i.v = extractelement <2 x double> %i.t, i64 1
  %i.w = fdiv double %i.u, %i.v
  %i.x = tail call double @sqrt(double noundef %i.w) #9
  %i.y = tail call double @asin(double noundef %i.x) #9
  %i.z = tail call double @llvm.copysign.f64(double %i.y, double %i.n) ; 2 uses
  %i.aa = fcmp une double %i.j, 0.000000e+00
  %i.ab = fcmp une double %i.o, 0.000000e+00
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call double @atan2(double noundef %i.j, double noundef %i.o) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.020.0 = phi double [ %.sroa.020.0.copyload, %bb.b ], [ %i.ac, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.sroa.3.0 = phi double [ %.sroa.3.0.copyload, %bb.b ], [ %i.z, %bb.d ], [ %i.z, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.020.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL19tmerc_spherical_fwd5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = tail call double @cos(double noundef %1) #9 ; 3 uses
  %i.d = tail call double @sin(double noundef %0) #9
  %i.e = fmul double %i.c, %i.d                   ; 5 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e)
  %i.g = fadd double %i.f, -1.000000e+00
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp ugt double %i.h, 1.000000e-10
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !53
  %i.m = fadd double %i.e, 1.000000e+00
  %i.n = fsub double 1.000000e+00, %i.e
  %i.o = fdiv double %i.m, %i.n
  %i.p = tail call double @log(double noundef %i.o) #9
  %i.q = fmul double %i.l, %i.p                   ; 2 uses
  %i.r = fcmp oeq double %i.c, 1.000000e+00
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call double @llvm.fabs.f64(double %0)
  %or.cond = fcmp ogt double %i.s, f0x3FF921FB54442D18
  %. = select i1 %or.cond, double f0x400921FB54442D18, double 0.000000e+00
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.t = tail call double @cos(double noundef %0) #9
  %i.u = fmul double %i.c, %i.t
  %i.v = fneg double %i.e
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.e, double 1.000000e+00)
  %i.x = tail call double @sqrt(double noundef %i.w) #9
  %i.y = fdiv double %i.u, %i.x                   ; 3 uses
  %i.z = tail call double @llvm.fabs.f64(double %i.y) ; 2 uses
  %i.aa = fcmp ult double %i.z, 1.000000e+00
  br i1 %i.aa, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = fadd double %i.z, -1.000000e+00
  %i.ac = fcmp ogt double %i.ab, 1.000000e-10
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ae = tail call double @acos(double noundef %i.y) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.h
  %.sroa.3.0 = phi double [ %., %bb.d ], [ %i.ae, %bb.h ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %i.af = fcmp olt double %1, 0.000000e+00
  %i.ag = fneg double %.sroa.3.0
  %.sroa.3.1 = select i1 %i.af, double %i.ag, double %.sroa.3.0
  %i.ah = load double, ptr %i.b, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !47
  %i.ak = fsub double %.sroa.3.1, %i.aj
  %i.al = fmul double %i.ah, %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.b
  %.sroa.3.2 = phi double [ 0.000000e+00, %bb.b ], [ %i.al, %bb.i ], [ %i.y, %bb.g ]
  %.sroa.022.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.q, %bb.i ], [ %i.q, %bb.g ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.022.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.2, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL12approx_e_inv5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 488 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !48
  %i.g = fdiv double %1, %i.f
  %i.h = fadd double %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = tail call noundef double @_Z11pj_inv_mlfndPKd(double noundef %i.h, ptr noundef %i.j) ; 4 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp ult double %i.l, f0x3FF921FB54442D18
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp olt double %1, 0.000000e+00
  %i.o = select i1 %i.n, double f0xBFF921FB54442D18, double f0x3FF921FB54442D18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = tail call double @sin(double noundef %i.k) #9 ; 3 uses
  %i.q = tail call double @cos(double noundef %i.k) #9 ; 5 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ogt double %i.r, 1.000000e-10
  %i.t = fdiv double %i.p, %i.q
  %i.u = select i1 %i.s, double %i.t, double 0.000000e+00 ; 2 uses
  %i.v = load double, ptr %i.b, align 8, !tbaa !54
  %i.w = fmul double %i.q, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.y = load double, ptr %i.x, align 8, !tbaa !46 ; 2 uses
  %i.z = fneg double %i.p
  %i.aa = fsub double 1.000000e+00, %i.y
  %i.ab = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.q, i64 1
  %i.ad = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.w, i64 1
  %i.af = fmul <2 x double> %i.ac, %i.ae          ; 5 uses
  %i.ag = extractelement <2 x double> %i.af, i64 1 ; 4 uses
  %i.ah = insertelement <2 x double> <double poison, double -9.000000e+00>, double %i.p, i64 0
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> <double 1.000000e+00, double 3.000000e+00>) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0 ; 2 uses
  %i.ak = tail call double @sqrt(double noundef %i.aj) #9
  %i.al = fmul double %0, %i.ak
  %i.am = load double, ptr %i.e, align 8, !tbaa !48
  %i.an = fdiv double %i.al, %i.am                ; 3 uses
  %i.ao = fmul double %i.u, %i.aj
  %i.ap = fmul double %i.an, %i.an                ; 6 uses
  %i.aq = shufflevector <2 x double> %i.ai, <2 x double> %i.af, <2 x i32> <i32 1, i32 3>
  %i.ar = fmul double %i.ap, f0xBF92492492492492
  %i.as = fmul double %i.ap, f0xBFA1111111111111
  %i.at = insertelement <2 x double> poison, double %i.ap, i64 0 ; 2 uses
  %i.au = insertelement <2 x double> %i.at, double %i.u, i64 1 ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double f0xBFB5555555555555, i64 0
  %i.aw = fmul <2 x double> %i.au, %i.av          ; 5 uses
  %i.ax = shufflevector <2 x double> <double poison, double -4.000000e+00>, <2 x double> %i.aw, <2 x i32> <i32 3, i32 1>
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.aq, <2 x double> <double 5.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.az = extractelement <2 x double> %i.ay, i64 0
  %i.ba = extractelement <2 x double> %i.ay, i64 1
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ba, double %i.az)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ag, double -2.520000e+02, double 9.000000e+01)
  %i.bd = extractelement <2 x double> %i.aw, i64 1 ; 7 uses
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double 4.500000e+01, double %i.bc)
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.be, double 6.100000e+01)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.ag, double 4.600000e+01, double %i.bf)
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bd, double 1.575000e+03, double 4.095000e+03)
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bh, double 3.633000e+03)
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bi, double 1.385000e+03)
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.bj, double %i.bg)
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.as, double %i.bk, double %i.bb)
  %i.bm = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.bl, i64 0
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.bm, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %i.af, %i.bn
  %i.bo = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bd, double 2.400000e+01, double 2.800000e+01)
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.ag, double 8.000000e+00, double %i.bp)
  %3 = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %4 = insertelement <2 x double> <double poison, double 7.200000e+02>, double %i.bq, i64 0
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> %4, <2 x double> <double 5.000000e+00, double 1.320000e+03>) ; 2 uses
  %i.br = shufflevector <2 x double> %i.af, <2 x double> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.bs = insertelement <2 x double> %5, double 6.000000e+00, i64 0
  %6 = insertelement <2 x double> %5, double 6.620000e+02, i64 1
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bs, <2 x double> %6) ; 2 uses
  %8 = extractelement <2 x double> %7, i64 1
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bd, double %8, double 6.100000e+01)
  %i.bu = fmul double %i.ap, f0xBF98618618618618
  %i.bv = extractelement <2 x double> %7, i64 0
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bt, double %i.bv)
  %i.bx = fmul double %i.ap, -5.000000e-02
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bw, double %i.bo)
  %i.bz = fmul double %i.ap, f0xBFC5555555555555
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.by, double 1.000000e+00)
  %i.cb = insertelement <2 x double> %i.at, double %i.an, i64 1
  %i.cc = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.ca, i64 1
  %i.ce = fmul <2 x double> %i.cb, %i.cd
  %i.cf = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.q, i64 1
  %i.ch = fdiv <2 x double> %i.ce, %i.cg          ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0
  %i.cj = fmul double %i.ci, -5.000000e-01
  %i.ck = extractelement <2 x double> %i.bn, i64 0
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.ck, double %i.k)
  %i.cm = extractelement <2 x double> %i.ch, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0 = phi double [ %i.o, %bb.b ], [ %i.cl, %bb.c ]
  %.sroa.053.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.cm, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.053.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.4.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL12approx_e_fwd5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %or.cond = fcmp ogt double %i.a, f0x3FF921FB54442D18
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.b, i32 noundef 2050)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = tail call double @sin(double noundef %1) #9 ; 5 uses
  %i.f = tail call double @cos(double noundef %1) #9 ; 6 uses
  %i.g = tail call double @llvm.fabs.f64(double %i.f)
  %i.h = fcmp ogt double %i.g, 1.000000e-10
  %i.i = fdiv double %i.e, %i.f
  %i.j = select i1 %i.h, double %i.i, double 0.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.l = load double, ptr %i.k, align 8, !tbaa !46
  %i.m = fneg double %i.e
  %i.n = fmul double %i.l, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.e, double 1.000000e+00)
  %i.p = tail call double @sqrt(double noundef %i.o) #9
  %i.q = load double, ptr %i.d, align 8, !tbaa !54
  %i.r = fmul double %i.f, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.t = load double, ptr %i.s, align 8, !tbaa !48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.w = tail call noundef double @_Z7pj_mlfndddPKd(double noundef %1, double noundef %i.e, double noundef %i.f, ptr noundef %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !53
  %i.z = fsub double %i.w, %i.y
  %i.aa = fmul double %0, %i.f                    ; 2 uses
  %i.ab = fdiv double %i.aa, %i.p                 ; 2 uses
  %i.ac = fmul double %i.ab, %i.t
  %i.ad = fmul double %i.e, %i.ab
  %i.ae = insertelement <2 x double> poison, double %0, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.aa, i64 1 ; 2 uses
  %i.ag = insertelement <2 x double> %i.af, double %i.ad, i64 0
  %i.ah = fmul <2 x double> %i.af, %i.ag          ; 2 uses
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.aj = insertelement <2 x double> %i.ai, double %i.j, i64 1 ; 2 uses
  %i.ak = insertelement <2 x double> %i.aj, double f0x3F92492492492492, i64 0
  %i.al = fmul <2 x double> %i.aj, %i.ak          ; 5 uses
  %i.am = extractelement <2 x double> %i.al, i64 1 ; 3 uses
  %i.an = fsub double 1.000000e+00, %i.am
  %i.ao = fmul <2 x double> %i.ah, <double 5.000000e-01, double f0x3FC5555555555555>
  %i.ap = fmul <2 x double> %i.ai, <double f0x3FB5555555555555, double 5.000000e-02>
  %i.aq = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ar = fsub <2 x double> <double 1.790000e+02, double 5.000000e+00>, %i.aq ; 2 uses
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = fmul <2 x double> %i.ai, <double f0x3FA1111111111111, double f0x3F98618618618618>
  %i.au = fadd <2 x double> %i.aq, <double -1.800000e+01, double -5.800000e+01> ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.am, double %i.av, double 5.000000e+00)
  %i.ax = insertelement <2 x double> %i.as, double %i.aw, i64 1
  %i.ay = shufflevector <2 x double> <double poison, double -3.300000e+02>, <2 x double> %i.au, <2 x i32> <i32 3, i32 1>
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ay, <2 x double> <double 6.100000e+01, double 2.700000e+02>) ; 2 uses
  %i.ba = fmul double %i.f, %i.r                  ; 3 uses
  %i.bb = fadd double %i.an, %i.ba
  %i.bc = insertelement <2 x double> %i.al, double %i.ba, i64 0
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> <double 4.000000e+00, double -5.800000e+01>, <2 x double> <double 9.000000e+00, double 1.400000e+01>)
  %i.be = insertelement <2 x double> poison, double %i.ba, i64 0 ; 2 uses
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bd, <2 x double> %i.ax)
  %i.bh = fsub double 5.430000e+02, %i.am
  %i.bi = insertelement <2 x double> %i.be, double %i.bh, i64 1
  %i.bj = shufflevector <2 x double> %i.az, <2 x double> %i.al, <2 x i32> <i32 1, i32 3>
  %i.bk = insertelement <2 x double> %i.az, double -3.111000e+03, i64 1
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bj, <2 x double> %i.bk) ; 2 uses
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> %i.ar, <2 x i32> <i32 1, i32 2>
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.bm, <2 x double> <double 1.385000e+03, double -4.790000e+02>)
  %i.bo = insertelement <2 x double> %i.bl, double 6.100000e+01, i64 1
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.bn, <2 x double> %i.bo)
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.bp, <2 x double> %i.bg)
  %i.br = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bb, i64 1
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.bq, <2 x double> %i.br)
  %i.bt = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.z, i64 0
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.bs, <2 x double> %i.bt)
  %i.bv = insertelement <2 x double> poison, double %i.t, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.ac, i64 1
  %i.bx = fmul <2 x double> %i.bw, %i.bu
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.by = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.bx, %bb.c ] ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bz, 0
  %i.ca = extractelement <2 x double> %i.by, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ca, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL11exact_e_inv5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %i.e = fdiv double %0, %i.d                     ; 3 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e)
  %i.g = fcmp ugt double %i.f, f0x4004FCB69A64EDC9
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !57
  %i.j = fsub double %1, %i.i
  %i.k = fdiv double %i.j, %i.d                   ; 2 uses
  %i.l = fmul double %i.k, 2.000000e+00           ; 2 uses
  %i.m = tail call double @sin(double noundef %i.l) #9 ; 2 uses
  %i.n = tail call double @cos(double noundef %i.l) #9 ; 2 uses
  %i.o = fmul nnan double %i.e, 2.000000e+00
  %i.p = tail call double @exp(double noundef %i.o) #9 ; 2 uses
  %i.q = fdiv double 5.000000e-01, %i.p           ; 2 uses
  %i.r = fneg double %i.q
  %i.s = insertelement <2 x double> poison, double %i.p, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = insertelement <2 x double> poison, double %i.r, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.q, i64 1
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> splat (double 5.000000e-01), <2 x double> %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.y = extractelement <2 x double> %i.w, i64 1
  %i.z = extractelement <2 x double> %i.w, i64 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !58 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !58
  %i.ae = insertelement <2 x double> poison, double %i.m, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.n, i64 1
  %i.ag = fmul <2 x double> %i.af, <double -2.000000e+00, double 2.000000e+00>
  %i.ah = fmul <2 x double> %i.ag, %i.w           ; 4 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0 ; 5 uses
  %i.aj = fneg double %i.ai                       ; 5 uses
  %i.ak = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.al, %i.ah
  %i.an = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ao = insertelement <2 x double> %i.an, double %i.aj, i64 1
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> zeroinitializer, <2 x double> %i.am) ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 1
  %i.ar = fadd double %i.ad, %i.aq                ; 3 uses
  %i.as = fneg double %i.ab
  %i.at = extractelement <2 x double> %i.ah, i64 1 ; 8 uses
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.ar, double %i.as)
  %i.av = extractelement <2 x double> %i.ap, i64 0 ; 3 uses
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.av, double %i.au)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !58
  %i.az = fadd double %i.ay, %i.aw                ; 3 uses
  %i.ba = fmul double %i.ai, %i.ar
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ba) ; 3 uses
  %i.bc = fneg double %i.ar
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.at, double %i.az, double %i.bc)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.bb, double %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !58
  %i.bh = fadd double %i.bg, %i.be                ; 3 uses
  %i.bi = fneg double %i.av
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.az, double %i.bi)
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.at, double %i.bb, double %i.bj) ; 3 uses
  %i.bl = fneg double %i.az
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.at, double %i.bh, double %i.bl)
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.bk, double %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !58
  %i.bq = fadd double %i.bp, %i.bn                ; 2 uses
end_hunk_0
