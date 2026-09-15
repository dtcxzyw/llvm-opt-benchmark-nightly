Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZNK7openvdb5v13_04math4Mat4IdE6invertERS3_d:bb.a
  store <2 x double> %i.ge, ptr %i.ga, align 8, !tbaa !1104
  br label %.loopexit.2174

.loopexit.2174:                                   ; preds = %.preheader.2172, %.loopexit.1171
  %invariant.gep132.1 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gg = load double, ptr %invariant.gep132.1, align 8, !tbaa !1104 ; 2 uses
  %i.gh = fcmp oeq double %i.gg, 0.000000e+00
  br i1 %i.gh, label %.loopexit.1, label %.preheader.1

.thread:                                          ; preds = %._crit_edge, %.loopexit.2
  %.398 = phi i1 [ %i.eo, %.loopexit.2 ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i1 %.398
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, double noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !1104
  %i.b = load double, ptr %1, align 8, !tbaa !1104
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp ule double %i.d, %2
  br i1 %i.e, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.f, align 8, !tbaa !1104
  %i.i = load double, ptr %i.g, align 8, !tbaa !1104
  %i.j = fsub double %i.h, %i.i
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp ule double %i.k, %2
  br i1 %i.l, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load double, ptr %i.m, align 8, !tbaa !1104
  %i.p = load double, ptr %i.n, align 8, !tbaa !1104
  %i.q = fsub double %i.o, %i.p
  %i.r = tail call noundef double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ule double %i.r, %2
  br i1 %i.s, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load double, ptr %i.t, align 8, !tbaa !1104
  %i.w = load double, ptr %i.u, align 8, !tbaa !1104
  %i.x = fsub double %i.v, %i.w
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ule double %i.y, %2
  br i1 %i.z, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !1104
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !1104
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.ae)
  %i.ag = fcmp ule double %i.af, %2
  br i1 %i.ag, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !1104
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !1104
  %i.al = fsub double %i.aj, %i.ak
  %i.am = tail call noundef double @llvm.fabs.f64(double %i.al)
  %i.an = fcmp ule double %i.am, %2
  br i1 %i.an, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !1104
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !1104
  %i.as = fsub double %i.aq, %i.ar
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp ule double %i.at, %2
  br i1 %i.au, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load double, ptr %i.av, align 8, !tbaa !1104
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !1104
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ule double %i.ba, %2
  br i1 %i.bb, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = load double, ptr %i.bc, align 8, !tbaa !1104
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !1104
  %i.bg = fsub double %i.be, %i.bf
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ule double %i.bh, %2
  br i1 %i.bi, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !1104
  %i.bm = load double, ptr %i.bk, align 8, !tbaa !1104
  %i.bn = fsub double %i.bl, %i.bm
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp ule double %i.bo, %2
  br i1 %i.bp, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !1104
  %i.bt = load double, ptr %i.br, align 8, !tbaa !1104
  %i.bu = fsub double %i.bs, %i.bt
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp ule double %i.bv, %2
  br i1 %i.bw, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !1104
  %i.ca = load double, ptr %i.by, align 8, !tbaa !1104
  %i.cb = fsub double %i.bz, %i.ca
  %i.cc = tail call noundef double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp ule double %i.cc, %2
  br i1 %i.cd, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !1104
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !1104
  %i.ci = fsub double %i.cg, %i.ch
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ule double %i.cj, %2
  br i1 %i.ck, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !1104
  %i.co = load double, ptr %i.cm, align 8, !tbaa !1104
  %i.cp = fsub double %i.cn, %i.co
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp ule double %i.cq, %2
  br i1 %i.cr, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !1104
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !1104
  %i.cw = fsub double %i.cu, %i.cv
  %i.cx = tail call noundef double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp ule double %i.cx, %2
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.db = load double, ptr %i.cz, align 8, !tbaa !1104
  %i.dc = load double, ptr %i.da, align 8, !tbaa !1104
  %i.dd = fsub double %i.db, %i.dc
  %i.de = tail call noundef double @llvm.fabs.f64(double %i.dd)
  %i.df = fcmp ule double %i.de, %2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.b ], [ %i.df, %bb.p ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.m ]
  ret i1 %.lcssa
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04math9isUnitaryINS1_4Mat3IdEEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !1104 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !1104 ; 6 uses
  %i.g = load <2 x double>, ptr %i.b, align 8, !tbaa !1104 ; 7 uses
  %i.h = fneg <2 x double> %i.g
  %1 = load <2 x double>, ptr %i.a, align 8, !tbaa !1104 ; 6 uses
  %2 = shufflevector <2 x double> %1, <2 x double> %i.f, <2 x i32> <i32 1, i32 2>
  %3 = fmul <2 x double> %2, %i.h
  %4 = shufflevector <2 x double> %i.g, <2 x double> %i.d, <2 x i32> <i32 1, i32 2>
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1, <2 x double> %4, <2 x double> %3) ; 2 uses
  %i.j = load <2 x double>, ptr %0, align 8, !tbaa !1104 ; 8 uses
  %5 = shufflevector <2 x double> %1, <2 x double> %i.j, <2 x i32> <i32 0, i32 3>
  %i.k = fneg <2 x double> %i.d
  %6 = shufflevector <2 x double> %i.k, <2 x double> %i.i, <2 x i32> <i32 0, i32 3>
  %i.l = fmul <2 x double> %5, %6
  %i.m = shufflevector <2 x double> %i.f, <2 x double> %i.j, <2 x i32> <i32 0, i32 2>
  %i.n = shufflevector <2 x double> %i.g, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.n, <2 x double> %i.l) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !1104 ; 5 uses
  %i.r = extractelement <2 x double> %i.o, i64 0
  %i.s = extractelement <2 x double> %i.o, i64 1
  %i.t = tail call noundef double @llvm.fmuladd.f64(double %i.q, double %i.r, double %i.s)
  %i.u = tail call noundef double @llvm.fabs.f64(double %i.t)
  %i.v = fadd double %i.u, -1.000000e+00
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp ule double %i.w, 1.000000e-15
  br i1 %i.x, label %bb.b, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.b:                                             ; preds = %bb.a
  %7 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %8 = shufflevector <2 x double> %i.j, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.z = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = fmul <2 x double> %8, %i.z
  %i.ab = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = shufflevector <2 x double> %i.j, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ac, <2 x double> %i.aa) ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.ae)
  %i.ag = extractelement <2 x double> %i.ad, i64 1
  %9 = extractelement <2 x double> %1, i64 1      ; 4 uses
  %10 = tail call double @llvm.fmuladd.f64(double %i.q, double %9, double %i.ag) ; 2 uses
  %shift = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.g, %shift
  %11 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %12 = extractelement <2 x double> %i.j, i64 0
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %i.y, double %11)
  %i.ah = extractelement <2 x double> %i.g, i64 1 ; 4 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.q, double %i.ah, double %13) ; 2 uses
  %14 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = shufflevector <2 x double> %1, <2 x double> %i.d, <2 x i32> <i32 0, i32 3>
  %16 = fmul <2 x double> %14, %15
  %17 = shufflevector <2 x double> %i.f, <2 x double> %i.d, <2 x i32> <i32 0, i32 2>
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %17, <2 x double> %16) ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  %20 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %19)
  %i.aj = extractelement <2 x double> %18, i64 1
  %i.ak = tail call double @llvm.fmuladd.f64(double %9, double %i.ah, double %i.aj) ; 2 uses
  %foldExtExtBinop10 = fmul <2 x double> %i.g, %i.g
  %21 = extractelement <2 x double> %foldExtExtBinop10, i64 0
  %22 = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %21)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %22)
  %i.am = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity acquire, align 8
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.c, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, !prof !1187

bb.c:                                             ; preds = %bb.b
  %i.ao = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #26
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !1104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !1104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !1104
  %i.ap = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #26
  br label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit

_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit:   ; preds = %bb.b, %bb.c, %bb.d
  %i.aq = load double, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !1104
  %i.ar = fsub double %i.af, %i.aq
  %i.as = tail call noundef double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp ule double %i.as, 1.000000e-08
  br i1 %i.at, label %bb.e, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.e:                                             ; preds = %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit
  %i.au = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), align 8, !tbaa !1104
  %i.av = fsub double %10, %i.au
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp ule double %i.aw, 1.000000e-08
  br i1 %i.ax, label %bb.f, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.f:                                             ; preds = %bb.e
  %i.ay = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 16), align 8, !tbaa !1104
  %i.az = fsub double %i.ai, %i.ay
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ule double %i.ba, 1.000000e-08
  br i1 %i.bb, label %bb.g, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.g:                                             ; preds = %bb.f
  %i.bc = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 24), align 8, !tbaa !1104
  %i.bd = fsub double %10, %i.bc
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp ule double %i.be, 1.000000e-08
  br i1 %i.bf, label %bb.h, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.h:                                             ; preds = %bb.g
  %i.bg = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !1104
  %i.bh = fsub double %20, %i.bg
  %i.bi = tail call noundef double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp ule double %i.bi, 1.000000e-08
  br i1 %i.bj, label %bb.i, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.i:                                             ; preds = %bb.h
  %i.bk = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !1104
  %i.bl = fsub double %i.ak, %i.bk
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bl)
  %i.bn = fcmp ule double %i.bm, 1.000000e-08
  br i1 %i.bn, label %bb.j, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.j:                                             ; preds = %bb.i
  %i.bo = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 48), align 8, !tbaa !1104
  %i.bp = fsub double %i.ai, %i.bo
  %i.bq = tail call noundef double @llvm.fabs.f64(double %i.bp)
  %i.br = fcmp ule double %i.bq, 1.000000e-08
  br i1 %i.br, label %bb.k, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 56), align 8, !tbaa !1104
  %i.bt = fsub double %i.ak, %i.bs
  %i.bu = tail call noundef double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp ule double %i.bu, 1.000000e-08
  br i1 %i.bv, label %bb.l, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.l:                                             ; preds = %bb.k
  %i.bw = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !1104
  %i.bx = fsub double %i.al, %i.bw
  %i.by = tail call noundef double @llvm.fabs.f64(double %i.bx)
  %i.bz = fcmp ule double %i.by, 1.000000e-08
  br label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit:   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit ], [ %i.bz, %bb.l ]
  ret i1 %.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math3MatILj4EdE3strB5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1122
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  store i64 0, ptr %i.b, align 8, !tbaa !1125
  store i8 0, ptr %i.a, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !1122
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !1125
  store i8 0, ptr %i.c, align 8, !tbaa !1126
  %i.e = add i32 %2, 1
  %i.f = zext i32 %i.e to i64
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef %i.f, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !1125
  %i.i = icmp eq i64 %i.h, 4611686018427387903
  br i1 %i.i, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !1125
  %i.n = icmp eq i64 %i.m, 4611686018427387903
  br i1 %i.n, label %.invoke96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit35
  %i.o = icmp eq i64 %i.ck, 4611686018427387903
  br i1 %i.o, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i24

.invoke:                                          ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i24: ; preds = %bb.b
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit27 unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.invoke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.invoke96:                                        ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
          to label %.cont97 unwind label %.loopexit.split-lp69

.cont97:                                          ; preds = %.invoke96
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit53
  %indvars.iv98 = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit53 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader ] ; 3 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39 unwind label %.loopexit68 ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit35 unwind label %.loopexit68 ; 0 uses

.loopexit68:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i50
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp69:                             ; preds = %.invoke96
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

split:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %split
  unreachable

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.1
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28
  %i.t = shl nuw nsw i64 %indvars.iv98, 2         ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !1104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @vsnprintf, i64 noundef 328, ptr noundef nonnull @.str.24, double noundef %.pre)
          to label %_ZNSt7__cxx119to_stringEd.exit unwind label %bb.e

_ZNSt7__cxx119to_stringEd.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39
  %i.u = load i64, ptr %i.k, align 8, !tbaa !1125 ; 2 uses
  %i.v = load i64, ptr %i.b, align 8, !tbaa !1125
  %i.w = sub i64 4611686018427387903, %i.v
  %i.x = icmp ult i64 %i.w, %i.u
  br i1 %i.x, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.d:                                             ; preds = %_ZNSt7__cxx119to_stringEd.exit.3, %_ZNSt7__cxx119to_stringEd.exit.2, %_ZNSt7__cxx119to_stringEd.exit.1, %_ZNSt7__cxx119to_stringEd.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
          to label %.noexc41 unwind label %.loopexit.split-lp64

.noexc41:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNSt7__cxx119to_stringEd.exit
  %i.y = load ptr, ptr %4, align 8, !tbaa !1127
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.y, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit63 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !1127  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.l
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !1126
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !1125
  %i.af = and i64 %i.ae, -2
  %i.ag = icmp eq i64 %i.af, 4611686018427387902
  br i1 %i.ag, label %split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.21, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39.1 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !1104
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @vsnprintf, i64 noundef 328, ptr noundef nonnull @.str.24, double noundef %i.ak)
          to label %_ZNSt7__cxx119to_stringEd.exit.1 unwind label %bb.e

_ZNSt7__cxx119to_stringEd.exit.1:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39.1
  %i.al = load i64, ptr %i.k, align 8, !tbaa !1125 ; 2 uses
  %i.am = load i64, ptr %i.b, align 8, !tbaa !1125
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.al
  br i1 %i.ao, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.1: ; preds = %_ZNSt7__cxx119to_stringEd.exit.1
  %i.ap = load ptr, ptr %4, align 8, !tbaa !1127
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ap, i64 noundef %i.al)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.1 unwind label %.loopexit63 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.1
  %i.ar = load ptr, ptr %4, align 8, !tbaa !1127  ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.l
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.1
  %i.at = load i64, ptr %i.l, align 8, !tbaa !1126
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyIJCERKNS1_4Mat3IdEERKNS1_4Vec3IdEESA_:bb.a
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert166 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre167 = load double, ptr %.phi.trans.insert166, align 8, !tbaa !1104 ; 4 uses
  %i.dg = insertelement <2 x double> poison, double %.pre167, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert168 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.pre169 = load double, ptr %.phi.trans.insert168, align 8, !tbaa !1104 ; 4 uses
  %i.di = insertelement <2 x double> poison, double %.pre169, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.pre171 = load double, ptr %.phi.trans.insert170, align 8, !tbaa !1104 ; 4 uses
  %i.dk = insertelement <2 x double> poison, double %.pre171, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 8
  %.sroa.6.8..sroa.6.24. = load <2 x double>, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !1104 ; 9 uses
  %.sroa.6.24..sroa_idx187 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 24
  %.sroa.6.24..sroa.6.40..pre174 = load double, ptr %.sroa.6.24..sroa_idx187, align 8, !tbaa !1104 ; 9 uses
  %.sroa.6.0..sroa.6.16..pre173 = load double, ptr %.sroa.6, align 16, !tbaa !1104 ; 9 uses
  %i.dm = fdiv double 1.000000e+00, %i.bt         ; 2 uses
  %i.dn = fmul double %i.cb, %i.dm                ; 13 uses
  %i.do = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x double> %i.do, %i.bv
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.bw, <2 x double> %i.dp) ; 13 uses
  %i.dr = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x double> %i.bu, %i.ds          ; 13 uses
  %.sroa.0.0.vec.extract = extractelement <2 x double> %i.dq, i64 0 ; 3 uses
  %.sroa.6.8..sroa_idx185 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 8
  %.sroa.6.8..sroa.6.24.181 = load double, ptr %.sroa.6.8..sroa_idx185, align 8, !tbaa !1104 ; 4 uses
  %.sroa.15.48.vec.extract = extractelement <2 x double> %i.dt, i64 0 ; 3 uses
  %i.du = load <2 x double>, ptr %0, align 8, !tbaa !1104
  %i.dv = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dw = fmul <2 x double> %i.dv, %i.dq
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.cv, <2 x double> %i.du)
  %i.dy = insertelement <2 x double> poison, double %.sroa.6.8..sroa.6.24.181, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ea = fmul <2 x double> %i.dz, %i.dq
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.cx, <2 x double> %i.dx)
  %i.ec = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ed = fmul <2 x double> %i.ec, %i.dq
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.cz, <2 x double> %i.eb)
  %i.ef = fmul <2 x double> %i.dv, %.sroa.6.8..sroa.6.24.
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.db, <2 x double> %i.ee)
  %i.eh = fmul <2 x double> %i.dz, %.sroa.6.8..sroa.6.24.
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.dd, <2 x double> %i.eg)
  %i.ej = fmul <2 x double> %i.ec, %.sroa.6.8..sroa.6.24.
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.df, <2 x double> %i.ei)
  %i.el = fmul <2 x double> %i.dv, %i.dt
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.dh, <2 x double> %i.ek)
  %i.en = fmul <2 x double> %i.dz, %i.dt
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.dj, <2 x double> %i.em)
  %i.ep = fmul <2 x double> %i.ec, %i.dt
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.dl, <2 x double> %i.eo)
  store <2 x double> %i.eq, ptr %0, align 8, !tbaa !1104
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted122.2 = load double, ptr %i.er, align 8, !tbaa !1104
  %i.es = fmul double %.sroa.0.0.vec.extract, %.sroa.6.0..sroa.6.16..pre173
  %i.et = tail call double @llvm.fmuladd.f64(double %i.es, double %.pre, double %.promoted122.2)
  %i.eu = fmul double %.sroa.6.8..sroa.6.24.181, %.sroa.6.0..sroa.6.16..pre173
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double %.pre157, double %i.et)
  %i.ew = fmul double %.sroa.15.48.vec.extract, %.sroa.6.0..sroa.6.16..pre173
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ew, double %.pre159, double %i.ev)
  %i.ey = fmul double %.sroa.0.0.vec.extract, %.sroa.6.24..sroa.6.40..pre174
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ey, double %.pre161, double %i.ex)
  %i.fa = fmul double %.sroa.6.8..sroa.6.24.181, %.sroa.6.24..sroa.6.40..pre174
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double %.pre163, double %i.ez)
  %i.fc = fmul double %.sroa.15.48.vec.extract, %.sroa.6.24..sroa.6.40..pre174
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %.pre165, double %i.fb)
  %i.fe = fmul double %.sroa.0.0.vec.extract, %i.dn
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fe, double %.pre167, double %i.fd)
  %i.fg = fmul double %.sroa.6.8..sroa.6.24.181, %i.dn
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double %.pre169, double %i.ff)
  %i.fi = fmul double %.sroa.15.48.vec.extract, %i.dn
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.fi, double %.pre171, double %i.fh)
  store double %i.fj, ptr %i.er, align 8, !tbaa !1104
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.8.vec.extract = extractelement <2 x double> %i.dq, i64 1 ; 3 uses
  %.sroa.6.16..sroa_idx186 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  %.sroa.6.16..sroa.6.32. = load double, ptr %.sroa.6.16..sroa_idx186, align 16, !tbaa !1104 ; 4 uses
  %.sroa.15.56.vec.extract = extractelement <2 x double> %i.dt, i64 1 ; 3 uses
  %i.fl = load <2 x double>, ptr %i.fk, align 8, !tbaa !1104
  %i.fm = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fn = fmul <2 x double> %i.fm, %i.dq
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.cv, <2 x double> %i.fl)
  %i.fp = insertelement <2 x double> poison, double %.sroa.6.16..sroa.6.32., i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fr = fmul <2 x double> %i.fq, %i.dq
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.cx, <2 x double> %i.fo)
  %i.ft = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fu = fmul <2 x double> %i.ft, %i.dq
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.cz, <2 x double> %i.fs)
  %i.fw = fmul <2 x double> %i.fm, %.sroa.6.8..sroa.6.24.
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.db, <2 x double> %i.fv)
  %i.fy = fmul <2 x double> %i.fq, %.sroa.6.8..sroa.6.24.
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.dd, <2 x double> %i.fx)
  %i.ga = fmul <2 x double> %i.ft, %.sroa.6.8..sroa.6.24.
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.df, <2 x double> %i.fz)
  %i.gc = fmul <2 x double> %i.fm, %i.dt
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.dh, <2 x double> %i.gb)
  %i.ge = fmul <2 x double> %i.fq, %i.dt
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.dj, <2 x double> %i.gd)
  %i.gg = fmul <2 x double> %i.ft, %i.dt
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.dl, <2 x double> %i.gf)
  store <2 x double> %i.gh, ptr %i.fk, align 8, !tbaa !1104
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted122.2.1 = load double, ptr %i.gi, align 8, !tbaa !1104
  %i.gj = fmul double %.sroa.0.8.vec.extract, %.sroa.6.0..sroa.6.16..pre173
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.gj, double %.pre, double %.promoted122.2.1)
  %i.gl = fmul double %.sroa.6.16..sroa.6.32., %.sroa.6.0..sroa.6.16..pre173
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gl, double %.pre157, double %i.gk)
  %i.gn = fmul double %.sroa.15.56.vec.extract, %.sroa.6.0..sroa.6.16..pre173
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double %.pre159, double %i.gm)
  %i.gp = fmul double %.sroa.0.8.vec.extract, %.sroa.6.24..sroa.6.40..pre174
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gp, double %.pre161, double %i.go)
  %i.gr = fmul double %.sroa.6.16..sroa.6.32., %.sroa.6.24..sroa.6.40..pre174
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gr, double %.pre163, double %i.gq)
  %i.gt = fmul double %.sroa.15.56.vec.extract, %.sroa.6.24..sroa.6.40..pre174
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.gt, double %.pre165, double %i.gs)
  %i.gv = fmul double %.sroa.0.8.vec.extract, %i.dn
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.gv, double %.pre167, double %i.gu)
  %i.gx = fmul double %.sroa.6.16..sroa.6.32., %i.dn
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gx, double %.pre169, double %i.gw)
  %i.gz = fmul double %.sroa.15.56.vec.extract, %i.dn
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gz, double %.pre171, double %i.gy)
  store double %i.ha, ptr %i.gi, align 8, !tbaa !1104
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.6.0..sroa.6.16. = load double, ptr %.sroa.6, align 16, !tbaa !1104 ; 4 uses
  %.sroa.6.24..sroa_idx188 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 24
  %.sroa.6.24..sroa.6.40. = load double, ptr %.sroa.6.24..sroa_idx188, align 8, !tbaa !1104 ; 4 uses
  %i.hc = load <2 x double>, ptr %i.hb, align 8, !tbaa !1104
  %i.hd = insertelement <2 x double> poison, double %.sroa.6.0..sroa.6.16., i64 0
  %i.he = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hf = fmul <2 x double> %i.he, %i.dq
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.cv, <2 x double> %i.hc)
  %i.hh = insertelement <2 x double> poison, double %.sroa.6.24..sroa.6.40., i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hj = fmul <2 x double> %i.hi, %i.dq
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.cx, <2 x double> %i.hg)
  %i.hl = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hn = fmul <2 x double> %i.hm, %i.dq
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.cz, <2 x double> %i.hk)
  %i.hp = fmul <2 x double> %i.he, %.sroa.6.8..sroa.6.24.
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.db, <2 x double> %i.ho)
  %i.hr = fmul <2 x double> %i.hi, %.sroa.6.8..sroa.6.24.
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.dd, <2 x double> %i.hq)
  %i.ht = fmul <2 x double> %i.hm, %.sroa.6.8..sroa.6.24.
  %i.hu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.df, <2 x double> %i.hs)
  %i.hv = fmul <2 x double> %i.he, %i.dt
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.dh, <2 x double> %i.hu)
  %i.hx = fmul <2 x double> %i.hi, %i.dt
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.dj, <2 x double> %i.hw)
  %i.hz = fmul <2 x double> %i.hm, %i.dt
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.dl, <2 x double> %i.hy)
  store <2 x double> %i.ia, ptr %i.hb, align 8, !tbaa !1104
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted122.2.2 = load double, ptr %i.ib, align 8, !tbaa !1104
  %i.ic = fmul double %.sroa.6.0..sroa.6.16., %.sroa.6.0..sroa.6.16..pre173
  %i.id = tail call double @llvm.fmuladd.f64(double %i.ic, double %.pre, double %.promoted122.2.2)
  %i.ie = fmul double %.sroa.6.24..sroa.6.40., %.sroa.6.0..sroa.6.16..pre173
  %i.if = tail call double @llvm.fmuladd.f64(double %i.ie, double %.pre157, double %i.id)
  %i.ig = fmul double %i.dn, %.sroa.6.0..sroa.6.16..pre173
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ig, double %.pre159, double %i.if)
  %i.ii = fmul double %.sroa.6.0..sroa.6.16., %.sroa.6.24..sroa.6.40..pre174
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.ii, double %.pre161, double %i.ih)
  %i.ik = fmul double %.sroa.6.24..sroa.6.40., %.sroa.6.24..sroa.6.40..pre174
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ik, double %.pre163, double %i.ij)
  %i.im = fmul double %i.dn, %.sroa.6.24..sroa.6.40..pre174
  %i.in = tail call double @llvm.fmuladd.f64(double %i.im, double %.pre165, double %i.il)
  %i.io = fmul double %.sroa.6.0..sroa.6.16., %i.dn
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double %.pre167, double %i.in)
  %i.iq = fmul double %.sroa.6.24..sroa.6.40., %i.dn
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.iq, double %.pre169, double %i.ip)
  %i.is = fmul double %i.dn, %i.dn
  %i.it = tail call double @llvm.fmuladd.f64(double %i.is, double %.pre171, double %i.ir)
  store double %i.it, ptr %i.ib, align 8, !tbaa !1104
  %i.iu = insertelement <2 x double> poison, double %i.bo, i64 0 ; 3 uses
  %i.iv = insertelement <2 x double> %i.iu, double %i.bl, i64 1 ; 2 uses
  %i.iw = insertelement <2 x double> poison, double %i.bl, i64 0 ; 2 uses
  %i.ix = insertelement <2 x double> %i.iw, double %i.bm, i64 1
  %i.iy = fmul <2 x double> %i.iv, %i.ix
  %i.iz = fmul double %i.ar, %i.au                ; 2 uses
  %i.ja = fmul double %i.bl, 2.000000e+00         ; 2 uses
  %i.jb = fmul double %i.ja, %i.bl
  %i.jc = fmul double %i.iz, %i.jb                ; 2 uses
  %i.jd = extractelement <2 x double> %i.v, i64 1
  %i.je = fmul double %i.jd, %i.jc
  %i.jf = insertelement <2 x double> %i.iu, double %i.bm, i64 1
  %i.jg = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.jg, <2 x double> %i.iy)
  %i.ji = fneg <2 x double> %i.jh                 ; 2 uses
  %i.jj = extractelement <2 x double> %i.ji, i64 0
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.au, double %i.je)
  %i.jl = extractelement <2 x double> %i.v, i64 0
  %i.jm = fmul double %i.jl, %i.jc
  %i.jn = extractelement <2 x double> %i.ji, i64 1
  %i.jo = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.au, double %i.jm)
  %i.jp = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.jq = fmul <2 x double> %i.jp, %i.bi
  %i.jr = fmul <2 x double> %i.jp, %i.bh
  %i.js = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> %i.bg, <2 x double> %i.jq)
  %i.ju = fneg <2 x double> %i.jt
  %i.jv = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jx = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jy = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.bg, <2 x double> %i.jr)
  %i.ka = fneg <2 x double> %i.jz
  %i.kb = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %8 = load <2 x double>, ptr %3, align 8, !tbaa !1104 ; 4 uses
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %10 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kc = load <2 x double>, ptr %0, align 8, !tbaa !1104
  %11 = extractelement <2 x double> %8, i64 1
  %12 = extractelement <2 x double> %8, i64 0
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ke = fmul <2 x double> %i.bg, splat (double 2.000000e+00) ; 3 uses
  %i.kf = insertelement <2 x double> %i.js, double %i.bo, i64 0
  %i.kg = fmul <2 x double> %i.bg, %i.kf
  %i.kh = insertelement <2 x double> %i.jp, double %i.bl, i64 0 ; 3 uses
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.kh, <2 x double> %i.kg)
  %i.kj = fneg <2 x double> %i.ki
  %i.kk = fmul <2 x double> %i.ke, %i.kh
  %i.kl = fmul <2 x double> %i.jw, %i.kk          ; 2 uses
  %i.km = fmul <2 x double> %i.jx, %i.kl
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.cd, <2 x double> %i.km)
  %i.ko = insertelement <2 x double> %i.jy, double %i.bm, i64 0
  %i.kp = fmul <2 x double> %i.bg, %i.ko
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.kh, <2 x double> %i.kp)
  %i.kr = fneg <2 x double> %i.kq
  %i.ks = fmul <2 x double> %i.kb, %i.kl
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kr, <2 x double> %i.cd, <2 x double> %i.ks)
  %i.ku = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %i.ku, %i.bg
  %14 = fmul <2 x double> %i.jw, %13              ; 2 uses
  %i.kv = fmul <2 x double> %i.jx, %14
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.cd, <2 x double> %i.kv)
  %i.kw = fmul <2 x double> %i.kb, %14
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ka, <2 x double> %i.cd, <2 x double> %i.kw)
  %i.kx = fmul <2 x double> %15, %9
  %i.ky = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %10, <2 x double> %i.kx)
  %17 = fadd <2 x double> %i.kc, %i.ky
  store <2 x double> %17, ptr %0, align 8, !tbaa !1104
  %i.kz = fmul <2 x double> %i.kn, %9
  %i.la = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %10, <2 x double> %i.kz)
  %i.lb = load <2 x double>, ptr %i.kd, align 8, !tbaa !1104
  %18 = fadd <2 x double> %i.lb, %i.la
  store <2 x double> %18, ptr %i.kd, align 8, !tbaa !1104
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ld = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.le = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lf = insertelement <2 x double> %i.le, double %i.bo, i64 1
  %i.lg = fmul <2 x double> %i.ld, %i.lf
  %i.lh = insertelement <2 x double> %i.ld, double %i.bl, i64 1 ; 3 uses
  %i.li = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.lh, <2 x double> %i.lg)
  %i.lj = fneg <2 x double> %i.li
  %i.lk = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ll = insertelement <2 x double> %i.lk, double %i.bm, i64 1
  %i.lm = fmul <2 x double> %i.ld, %i.ll
  %i.ln = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.lh, <2 x double> %i.lm)
  %i.lo = fneg <2 x double> %i.ln
  %i.lp = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %19 = fmul <2 x double> %i.lp, %i.lh
  %i.lq = fmul <2 x double> %i.jw, %19            ; 2 uses
  %i.lr = fmul <2 x double> %i.jx, %i.lq
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> %i.cd, <2 x double> %i.lr)
  %i.ls = fmul <2 x double> %i.kb, %i.lq
  %i.lt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lo, <2 x double> %i.cd, <2 x double> %i.ls)
  %i.lu = fmul <2 x double> %20, %9
  %i.lv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %10, <2 x double> %i.lu)
  %i.lw = load <2 x double>, ptr %i.lc, align 8, !tbaa !1104
  %21 = fadd <2 x double> %i.lw, %i.lv
  store <2 x double> %21, ptr %i.lc, align 8, !tbaa !1104
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ly = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lz = fmul <2 x double> %i.ly, %i.bi
  %i.ma = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.bg, <2 x double> %i.lz)
  %i.mc = fneg <2 x double> %i.mb
  %i.md = insertelement <2 x double> poison, double %i.ja, i64 0
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mf = fmul <2 x double> %i.me, %i.bg
  %i.mg = fmul <2 x double> %i.jw, %i.mf          ; 2 uses
  %i.mh = fmul <2 x double> %i.jx, %i.mg
  %i.mi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> %i.cd, <2 x double> %i.mh)
  %i.mj = fmul <2 x double> %i.ly, %i.bh
  %i.mk = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.bg, <2 x double> %i.mj)
  %i.mn = fneg <2 x double> %i.mm
  %i.mo = fmul <2 x double> %i.kb, %i.mg
  %i.mp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.cd, <2 x double> %i.mo)
  %i.mq = fmul <2 x double> %i.mi, %9
  %i.mr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> %10, <2 x double> %i.mq)
  %i.ms = load <2 x double>, ptr %i.lx, align 8, !tbaa !1104
  %i.mt = fadd <2 x double> %i.ms, %i.mr
  store <2 x double> %i.mt, ptr %i.lx, align 8, !tbaa !1104
  %i.mu = fmul double %i.jk, %11
  %i.mv = tail call double @llvm.fmuladd.f64(double %i.jo, double %12, double %i.mu)
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !1104
  %i.my = fadd double %i.mx, %i.mv
  store double %i.my, ptr %i.mw, align 8, !tbaa !1104
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math19NonlinearFrustumMap11determinantEv(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load double, ptr %i.a, align 8, !tbaa !1200
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math19NonlinearFrustumMap11determinantERKNS1_4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load double, ptr %i.a, align 8, !tbaa !1284
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !1104
  %i.e = tail call double @llvm.fmuladd.f64(double %i.b, double %i.d, double 1.000000e+00) ; 2 uses
  %i.f = fmul double %i.e, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.h = load double, ptr %i.g, align 8, !tbaa !1279
  %i.i = fmul double %i.h, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.k = load double, ptr %i.j, align 8, !tbaa !1200
  %i.l = fmul double %i.k, %i.i
  ret double %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap9voxelSizeEv(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !1104
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !1104
  %i.f = load <2 x double>, ptr %i.b, align 8, !tbaa !1104
  %i.g = fadd <2 x double> %i.e, %i.f
  %i.h = fmul <2 x double> %i.g, splat (double 5.000000e-01)
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !1104
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.d, ptr %i.i, align 16, !tbaa !1104
  call void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap9voxelSizeERKNS1_4Vec3IdEE(ptr dead_on_unwind writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap9voxelSizeERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9757 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.f = load double, ptr %i.e, align 8, !tbaa !1283, !noalias !9758 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.h = load double, ptr %i.g, align 8, !tbaa !1284, !noalias !9758 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.j = load double, ptr %i.i, align 8, !tbaa !1285, !noalias !9758 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.s = load <2 x double>, ptr %2, align 8, !noalias !9759 ; 3 uses
  %i.t = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9757 ; 3 uses
  %i.u = fsub <2 x double> %i.s, %i.t
  %i.v = load double, ptr %i.o, align 8, !tbaa !1104, !noalias !9760
  %i.w = load <3 x double>, ptr %i.k, align 8, !tbaa !1104, !noalias !9760 ; 6 uses
  %i.x = load double, ptr %i.p, align 8, !tbaa !1104, !noalias !9760
  %i.y = load <3 x double>, ptr %i.l, align 8, !tbaa !1104, !noalias !9760 ; 6 uses
  %i.z = load double, ptr %i.q, align 8, !tbaa !1104, !noalias !9760
  %i.aa = load <3 x double>, ptr %i.m, align 8, !tbaa !1104, !noalias !9760 ; 6 uses
  %i.ab = load double, ptr %i.r, align 8, !tbaa !1104, !noalias !9760
  %i.ac = load <3 x double>, ptr %i.n, align 8, !tbaa !1104, !noalias !9760 ; 6 uses
  %.sroa.9.0.copyload.i = load double, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !9759 ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %.sroa.9.0.copyload.i, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fadd <2 x double> %i.ae, <double -0.000000e+00, double 0.000000e+00>
  %i.ag = insertelement <2 x double> poison, double %i.c, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fsub <2 x double> %i.af, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.f, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.ai, %i.ak          ; 3 uses
  %i.am = insertelement <2 x double> poison, double %i.h, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.al, <2 x double> splat (double 1.000000e+00))
  %i.ap = insertelement <2 x double> poison, double %i.j, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fdiv <2 x double> %i.ao, %i.aq          ; 2 uses
  %i.as = load <2 x double>, ptr %i.d, align 8, !tbaa !1104, !noalias !9758 ; 3 uses
  %i.at = fsub <2 x double> %i.u, %i.as
  %i.au = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x double> %i.at, %i.au          ; 2 uses
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ax = fmul <3 x double> %i.aw, %i.y
  %i.ay = shufflevector <2 x double> %i.av, <2 x double> poison, <3 x i32> zeroinitializer
  %i.az = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ay, <3 x double> %i.w, <3 x double> %i.ax)
  %i.ba = shufflevector <2 x double> %i.al, <2 x double> poison, <3 x i32> zeroinitializer
  %i.bb = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ba, <3 x double> %i.aa, <3 x double> %i.az)
  %i.bc = fadd <3 x double> %i.ac, %i.bb          ; 6 uses
  %i.bd = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fadd <2 x double> %i.bd, <double 1.000000e+00, double 0.000000e+00>
  %i.bf = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = fadd <2 x double> %i.bf, <double 0.000000e+00, double 1.000000e+00>
  %i.bh = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fsub <2 x double> %i.be, %i.bh
  %i.bj = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fsub <2 x double> %i.bg, %i.bj
  %i.bl = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fsub <2 x double> %i.bi, %i.bl          ; 2 uses
  %i.bn = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fsub <2 x double> %i.bk, %i.bn          ; 2 uses
  %i.bp = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bq = fmul <2 x double> %i.bm, %i.bp          ; 3 uses
  %i.br = fmul <2 x double> %i.bo, %i.bp          ; 3 uses
  %i.bs = shufflevector <3 x double> %i.y, <3 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x double> %i.br, %i.bs
  %i.bu = shufflevector <3 x double> %i.w, <3 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bu, <2 x double> %i.bt)
  %i.bw = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.bx = shufflevector <3 x double> %i.aa, <3 x double> poison, <2 x i32> zeroinitializer
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bx, <2 x double> %i.bv)
  %i.bz = shufflevector <3 x double> %i.ac, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fadd <2 x double> %i.bz, %i.by
  %i.cb = shufflevector <3 x double> %i.y, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = fmul <2 x double> %i.br, %i.cb
  %i.cd = shufflevector <3 x double> %i.w, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.cd, <2 x double> %i.cc)
  %i.cf = shufflevector <3 x double> %i.aa, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.cf, <2 x double> %i.ce)
  %i.ch = shufflevector <3 x double> %i.ac, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = fadd <2 x double> %i.ch, %i.cg
  %i.cj = shufflevector <3 x double> %i.y, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ck = fmul <2 x double> %i.br, %i.cj
  %i.cl = shufflevector <3 x double> %i.w, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.cl, <2 x double> %i.ck)
  %i.cn = shufflevector <3 x double> %i.aa, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.cn, <2 x double> %i.cm)
  %i.cp = shufflevector <3 x double> %i.ac, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.cq = fadd <2 x double> %i.cp, %i.co
  %i.cr = shufflevector <3 x double> %i.bc, <3 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fsub <2 x double> %i.ca, %i.cr          ; 2 uses
  %i.ct = shufflevector <3 x double> %i.bc, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cu = fsub <2 x double> %i.ci, %i.ct          ; 2 uses
  %i.cv = shufflevector <3 x double> %i.bc, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.cw = fsub <2 x double> %i.cq, %i.cv          ; 2 uses
  %i.cx = fmul <2 x double> %i.cu, %i.cu
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cs, <2 x double> %i.cx)
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cw, <2 x double> %i.cy)
  %i.da = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cz)
  store <2 x double> %i.da, ptr %0, align 8, !tbaa !1104
  %i.db = fadd double %.sroa.9.0.copyload.i, 1.000000e+00
  %i.dc = fsub double %i.db, %i.c
  %i.dd = fmul double %i.dc, %i.f                 ; 4 uses
  %i.de = tail call double @llvm.fmuladd.f64(double %i.h, double %i.dd, double 1.000000e+00)
  %i.df = fdiv double %i.de, %i.j                 ; 2 uses
  %i.dg = extractelement <2 x double> %i.bm, i64 1
  %i.dh = fmul double %i.dg, %i.df                ; 3 uses
  %i.di = extractelement <2 x double> %i.bo, i64 0
  %i.dj = fmul double %i.di, %i.df                ; 3 uses
  %i.dk = extractelement <3 x double> %i.y, i64 0
  %i.dl = fmul double %i.dj, %i.dk
  %i.dm = extractelement <3 x double> %i.w, i64 0
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dm, double %i.dl)
  %i.do = extractelement <3 x double> %i.aa, i64 0
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.do, double %i.dn)
  %i.dq = extractelement <3 x double> %i.ac, i64 0
  %i.dr = fadd double %i.dq, %i.dp
  %i.ds = fmul double %i.dj, %i.x
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.v, double %i.ds)
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.z, double %i.dt)
  %i.dv = fadd double %i.ab, %i.du
  %i.dw = extractelement <3 x double> %i.y, i64 2
  %i.dx = fmul double %i.dj, %i.dw
  %i.dy = extractelement <3 x double> %i.w, i64 2
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dy, double %i.dx)
  %i.ea = extractelement <3 x double> %i.aa, i64 2
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.ea, double %i.dz)
  %i.ec = extractelement <3 x double> %i.ac, i64 2
  %i.ed = fadd double %i.ec, %i.eb
  %i.ee = extractelement <3 x double> %i.bc, i64 0
  %i.ef = fsub double %i.dr, %i.ee                ; 2 uses
  %i.eg = extractelement <3 x double> %i.bc, i64 1
  %i.eh = fsub double %i.dv, %i.eg                ; 2 uses
  %i.ei = extractelement <3 x double> %i.bc, i64 2
  %i.ej = fsub double %i.ed, %i.ei                ; 2 uses
  %i.ek = fmul double %i.eh, %i.eh
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.ef, double %i.ek)
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.ej, double %i.el)
  %sqrt.i21 = tail call noundef double @llvm.sqrt.f64(double %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %sqrt.i21, ptr %i.en, align 8, !tbaa !1104
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMap4readERSi(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %7 = alloca %"class.std::shared_ptr.3", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1113
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 24) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 24) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef 8) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.l, i64 noundef 8) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !9763
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4), !noalias !9763 ; 0 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !1131, !noalias !9763
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !1122, !alias.scope !9763
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.p, i8 noundef signext 32)
  %i.r = load i32, ptr %i.a, align 4, !tbaa !1131, !noalias !9763 ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_010readStringB5cxx11ERSi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %2, align 8, !tbaa !1127, !alias.scope !9763
  %i.t = zext i32 %i.r to i64
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.s, i64 noundef %i.t)
          to label %_ZN7openvdb5v13_010readStringB5cxx11ERSi.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %2, align 8, !tbaa !1127, !alias.scope !9763 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.q
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.q, align 8, !tbaa !1126, !alias.scope !9763
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn12.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !9763
  br label %common.resume

_ZN7openvdb5v13_010readStringB5cxx11ERSi.exit:    ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !9763
  %i.aa = invoke noundef zeroext i1 @_ZN7openvdb5v13_04math11MapRegistry12isRegisteredERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN7openvdb5v13_010readStringB5cxx11ERSi.exit
  br i1 %i.aa, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !1122
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !1125
  store i8 0, ptr %i.ab, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.72, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.ae = load ptr, ptr %2, align 8, !tbaa !1127
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1125
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ae, i64 noundef %i.ag)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.73, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.aj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #26 ; 0 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !1127  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %i.al, align 8, !tbaa !1126
  %i.ao = add i64 %i.an, 1
end_hunk_1
