Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZNK7openvdb5v13_04math4Mat4IdE6invertERS3_d:bb.a
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
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load <2 x double>, ptr %i.b, align 8, !tbaa !1104 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !1104 ; 5 uses
  %i.g = load double, ptr %i.a, align 8, !tbaa !1104 ; 5 uses
  %i.h = load <2 x double>, ptr %i.c, align 8, !tbaa !1104 ; 7 uses
  %i.i = fneg <2 x double> %i.h
  %i.j = shufflevector <2 x double> %i.d, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.k = fmul <2 x double> %i.j, %i.i
  %i.l = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.m = insertelement <2 x double> %i.l, double %i.g, i64 0
  %i.n = shufflevector <2 x double> %i.d, <2 x double> %i.h, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.n, <2 x double> %i.k) ; 2 uses
  %i.p = load <2 x double>, ptr %0, align 8, !tbaa !1104 ; 7 uses
  %i.q = insertelement <2 x double> %i.p, double %i.g, i64 0
  %i.r = fneg <2 x double> %i.d
  %i.s = shufflevector <2 x double> %i.o, <2 x double> %i.r, <2 x i32> <i32 3, i32 1>
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x double> %i.h, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.v, <2 x double> %i.t) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !1104 ; 3 uses
  %i.z = extractelement <2 x double> %i.w, i64 0
  %i.aa = extractelement <2 x double> %i.w, i64 1
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.y, double %i.z, double %i.aa)
  %i.ac = tail call noundef double @llvm.fabs.f64(double %i.ab)
  %i.ad = fadd double %i.ac, -1.000000e+00
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp ule double %i.ae, 1.000000e-15
  br i1 %i.af, label %bb.b, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !1104
  %i.ai = extractelement <2 x double> %i.d, i64 1 ; 2 uses
  %i.aj = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 3, i32 1>
  %i.ak = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <2 x double> %i.p, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.al)
  %1 = insertelement <2 x double> poison, double %i.y, i64 0 ; 2 uses
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = shufflevector <2 x double> %1, <2 x double> %i.d, <2 x i32> <i32 0, i32 2>
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> %3, <2 x double> %i.ao) ; 2 uses
  %5 = extractelement <2 x double> %i.h, i64 0    ; 2 uses
  %6 = fmul double %5, %i.ah
  %7 = extractelement <2 x double> %i.p, i64 0
  %8 = tail call double @llvm.fmuladd.f64(double %7, double %i.ai, double %6)
  %i.ap = extractelement <2 x double> %i.h, i64 1 ; 3 uses
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.y, double %i.ap, double %8) ; 2 uses
  %9 = fmul double %i.g, %i.g
  %10 = extractelement <2 x double> %i.f, i64 0   ; 3 uses
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %9)
  %12 = extractelement <2 x double> %i.d, i64 0   ; 2 uses
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %11)
  %14 = fmul double %i.g, %5
  %foldExtExtBinop = fmul <2 x double> %i.h, %i.h
  %i.ar = tail call double @llvm.fmuladd.f64(double %10, double %i.ai, double %14)
  %15 = insertelement <2 x double> poison, double %i.ar, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> %i.n, <2 x double> %16) ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 1
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.at)
  %i.av = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity acquire, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.c, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, !prof !1187

bb.c:                                             ; preds = %bb.b
  %i.ax = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #26
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !1104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !1104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !1104
  %i.ay = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #26
  br label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit

_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit:   ; preds = %bb.b, %bb.c, %bb.d
  %i.az = load double, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !1104
  %17 = extractelement <2 x double> %4, i64 0
  %i.ba = fsub double %17, %i.az
  %i.bb = tail call noundef double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp ule double %i.bb, 1.000000e-08
  br i1 %i.bc, label %bb.e, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.e:                                             ; preds = %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit
  %i.bd = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), align 8, !tbaa !1104
  %i.be = extractelement <2 x double> %4, i64 1   ; 2 uses
  %i.bf = fsub double %i.be, %i.bd
  %i.bg = tail call noundef double @llvm.fabs.f64(double %i.bf)
  %i.bh = fcmp ule double %i.bg, 1.000000e-08
  br i1 %i.bh, label %bb.f, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 16), align 8, !tbaa !1104
  %i.bj = fsub double %i.aq, %i.bi
  %i.bk = tail call noundef double @llvm.fabs.f64(double %i.bj)
  %i.bl = fcmp ule double %i.bk, 1.000000e-08
  br i1 %i.bl, label %bb.g, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.g:                                             ; preds = %bb.f
  %i.bm = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 24), align 8, !tbaa !1104
  %i.bn = fsub double %i.be, %i.bm
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp ule double %i.bo, 1.000000e-08
  br i1 %i.bp, label %bb.h, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.h:                                             ; preds = %bb.g
  %i.bq = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !1104
  %i.br = fsub double %13, %i.bq
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.bt = fcmp ule double %i.bs, 1.000000e-08
  br i1 %i.bt, label %bb.i, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.i:                                             ; preds = %bb.h
  %i.bu = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !1104
  %i.bv = extractelement <2 x double> %i.as, i64 0 ; 2 uses
  %i.bw = fsub double %i.bv, %i.bu
  %i.bx = tail call noundef double @llvm.fabs.f64(double %i.bw)
  %i.by = fcmp ule double %i.bx, 1.000000e-08
  br i1 %i.by, label %bb.j, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 48), align 8, !tbaa !1104
  %i.ca = fsub double %i.aq, %i.bz
  %i.cb = tail call noundef double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp ule double %i.cb, 1.000000e-08
  br i1 %i.cc, label %bb.k, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.k:                                             ; preds = %bb.j
  %i.cd = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 56), align 8, !tbaa !1104
  %i.ce = fsub double %i.bv, %i.cd
  %i.cf = tail call noundef double @llvm.fabs.f64(double %i.ce)
  %i.cg = fcmp ule double %i.cf, 1.000000e-08
  br i1 %i.cg, label %bb.l, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.l:                                             ; preds = %bb.k
  %i.ch = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !1104
  %i.ci = fsub double %i.au, %i.ch
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ule double %i.cj, 1.000000e-08
  br label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit:   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit ], [ %i.ck, %bb.l ]
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
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04math10UnitaryMapC2ERKNS1_4Mat4IdEE:bb.a

bb.y:                                             ; preds = %_ZN7openvdb5v13_04math14hasTranslationIdEEbRKNS1_4Mat4IT_EE.exit.thread
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn15 = phi { ptr, i32 } [ %i.bw, %bb.aa ], [ %i.bv, %bb.z ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %bb.ab ], [ %i.bu, %bb.y ]
  %.5 = extractvalue { ptr, i32 } %.pn15.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bx = call ptr @__cxa_begin_catch(ptr %.5) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.by = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.by, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.ar unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %8, align 8, !tbaa !1127  ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bl
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.ae
  %i.cc = load i64, ptr %i.bl, align 8, !tbaa !1126
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.aq

_ZN7openvdb5v13_04math14hasTranslationIdEEbRKNS1_4Mat4IT_EE.exit: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 24, i1 false), !tbaa !1104
  %scevgep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %scevgep.1.i, i64 24, i1 false), !tbaa !1104
  %scevgep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %scevgep.2.i, i64 24, i1 false), !tbaa !1104
  %i.cg = call noundef zeroext i1 @_ZN7openvdb5v13_04math9isUnitaryINS1_4Mat3IdEEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(72) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br i1 %i.cg, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %_ZN7openvdb5v13_04math14hasTranslationIdEEbRKNS1_4Mat4IT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.ch, ptr %12, align 8, !tbaa !1122
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !1125
  store i8 0, ptr %i.ch, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.68, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.ck = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %14) #26 ; 0 uses
  %i.cl = load ptr, ptr %14, align 8, !tbaa !1127 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.ah
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !1126
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.an

bb.ai:                                            ; preds = %bb.af
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.aj:                                            ; preds = %bb.ag
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.al

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn14 = phi { ptr, i32 } [ %i.cs, %bb.ak ], [ %i.cr, %bb.aj ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %bb.al ], [ %i.cq, %bb.ai ]
  %.7 = extractvalue { ptr, i32 } %.pn14.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ct = call ptr @__cxa_begin_catch(ptr %.7) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cu = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %12) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.cu, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.ar unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %12, align 8, !tbaa !1127 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ch
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ao
  %i.cy = load i64, ptr %i.ch, align 8, !tbaa !1126
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math14hasTranslationIdEEbRKNS1_4Mat4IT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @_ZN7openvdb5v13_04math9AffineMapC2ERKNS1_4Mat4IdEE(ptr noundef nonnull align 8 dereferenceable(376) %15, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.db, ptr noundef nonnull align 8 dereferenceable(128) %i.da, i64 128, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dd, ptr noundef nonnull align 8 dereferenceable(128) %i.dc, i64 128, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 264
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.df, ptr noundef nonnull align 8 dereferenceable(72) %i.de, i64 72, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 336
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !1200
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 344
  store double %i.dh, ptr %i.di, align 8, !tbaa !1200
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 344
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 368
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !1201, !range !1154, !noundef !1155
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 %i.dm, ptr %i.dn, align 8, !tbaa !1201
  %i.do = getelementptr inbounds nuw i8, ptr %15, i64 369
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !1202, !range !1154, !noundef !1155
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 377
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !1202
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  ret void

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn16.pn = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  resume { ptr, i32 } %.pn16.pn

bb.ar:                                            ; preds = %bb.an, %bb.ad, %bb.t, %bb.j
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math4Mat4IdE3detEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #6 comdat align 2 {
.split.us.3.3:
  %.sroa.0 = alloca [8 x double], align 16        ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !1104
  store <2 x double> %i.b, ptr %.sroa.0, align 16, !tbaa !1104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load <5 x double>, ptr %i.c, align 8, !tbaa !1104
  %i.e = shufflevector <5 x double> %i.d, <5 x double> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %.sroa.0.16..sroa_idx146 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <4 x double> %i.e, ptr %.sroa.0.16..sroa_idx146, align 16, !tbaa !1104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !1104
  %.sroa.0.48..sroa_idx167.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  store <2 x double> %i.g, ptr %.sroa.0.48..sroa_idx167.a, align 16, !tbaa !1104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104
  %i.j = load double, ptr %0, align 8, !tbaa !1104
  %.sroa.0.0..sroa.0.0.104.a = load double, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.8..sroa_idx144 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8. = load double, ptr %.sroa.0.8..sroa_idx144, align 8, !tbaa !1104
  %.sroa.0.16..sroa_idx149.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16. = load double, ptr %.sroa.0.16..sroa_idx149.a, align 16, !tbaa !1104
  %scevgep.164 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <2 x double>, ptr %scevgep.164, align 8
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !1104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !1104
  %i.q = insertelement <4 x double> %i.l, double %i.n, i64 1
  %i.r = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.s = shufflevector <4 x double> %i.q, <4 x double> %i.r, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load double, ptr %i.u, align 8, !tbaa !1104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load double, ptr %i.w, align 8, !tbaa !1104
  %i.y = load <2 x double>, ptr %i.t, align 8, !tbaa !1104
  %i.z = insertelement <4 x double> poison, double %i.v, i64 2
  %i.aa = insertelement <4 x double> %i.z, double %i.x, i64 3
  %i.ab = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x double> %i.ab, <4 x double> %i.aa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !1104
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !1104
  %scevgep.283 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load <2 x double>, ptr %scevgep.283, align 8, !tbaa !1104
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load <2 x double>, ptr %i.ai, align 8, !tbaa !1104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load double, ptr %i.ak, align 8, !tbaa !1104
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load double, ptr %i.am, align 8, !tbaa !1104
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load <2 x double>, ptr %i.ao, align 8, !tbaa !1104
  %i.aq = insertelement <4 x double> poison, double %i.al, i64 0
  %i.ar = insertelement <4 x double> %i.aq, double %i.an, i64 1
  %i.as = shufflevector <2 x double> %i.ap, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x double> %i.ar, <4 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load double, ptr %i.au, align 8, !tbaa !1104 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !1104
  %scevgep.3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load <2 x double>, ptr %scevgep.3, align 8, !tbaa !1104
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = fneg double %i.av
  %i.bf = fneg double %i.ag
  %.sroa.0.24..sroa_idx154 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.118 = load <2 x double>, ptr %.sroa.0.24..sroa_idx154, align 8, !tbaa !1104 ; 3 uses
  store <4 x double> %i.s, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.24..sroa_idx155.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.120 = load double, ptr %.sroa.0.24..sroa_idx155.a, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.0..sroa.0.0. = load <2 x double>, ptr %.sroa.0, align 16, !tbaa !1104 ; 2 uses
  %.sroa.0.16..sroa_idx150.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.112 = load double, ptr %.sroa.0.16..sroa_idx150.a, align 16, !tbaa !1104
  store <2 x double> %i.ah, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.16..sroa_idx148 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <2 x double> %i.aj, ptr %.sroa.0.16..sroa_idx148, align 16, !tbaa !1104
  %.sroa.0.0..sroa.0.0.105.a = load double, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.8..sroa_idx145 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8.107 = load double, ptr %.sroa.0.8..sroa_idx145, align 8, !tbaa !1104
  %.sroa.0.16..sroa_idx151 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.114 = load double, ptr %.sroa.0.16..sroa_idx151, align 16, !tbaa !1104
  store <2 x double> %i.ay, ptr %.sroa.0, align 16, !tbaa !1104
  %i.bg = load double, ptr %i.az, align 8, !tbaa !1104
  %i.bh = load double, ptr %i.ba, align 8, !tbaa !1104
  %i.bi = load <2 x double>, ptr %i.bb, align 8, !tbaa !1104
  %i.bj = insertelement <4 x double> poison, double %i.bg, i64 0
  %i.bk = insertelement <4 x double> %i.bj, double %i.bh, i64 1
  %i.bl = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bm = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bn = load <2 x double>, ptr %i.bc, align 8, !tbaa !1104
  %i.bo = load double, ptr %i.bd, align 8, !tbaa !1104 ; 2 uses
  %i.bp = shufflevector <2 x double> %.sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.24..sroa.0.24.118, <2 x i32> <i32 1, i32 3>
  %i.bq = shufflevector <2 x double> %.sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.24..sroa.0.24.118, <2 x i32> <i32 0, i32 2>
  %.sroa.0.48..sroa_idx166 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.134 = load <2 x double>, ptr %.sroa.0.48..sroa_idx166, align 16, !tbaa !1104 ; 4 uses
  %.sroa.0.32..sroa_idx161.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.128.a = load <2 x double>, ptr %.sroa.0.32..sroa_idx161.a, align 16, !tbaa !1104 ; 2 uses
  %.sroa.0.32..sroa_idx157 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  store <4 x double> %i.ac, ptr %.sroa.0.32..sroa_idx157, align 16, !tbaa !1104
  %.sroa.0.32..sroa_idx160.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.126 = load <2 x double>, ptr %.sroa.0.32..sroa_idx160.a, align 16, !tbaa !1104 ; 3 uses
  %.sroa.0.48..sroa_idx165 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.132 = load <2 x double>, ptr %.sroa.0.48..sroa_idx165, align 16, !tbaa !1104 ; 3 uses
  %.sroa.0.56..sroa_idx171 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.56..sroa.0.56.140 = load double, ptr %.sroa.0.56..sroa_idx171, align 8, !tbaa !1104
  %.sroa.0.32..sroa_idx158 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  store <4 x double> %i.at, ptr %.sroa.0.32..sroa_idx158, align 16, !tbaa !1104
  %.sroa.0.40..sroa_idx163 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %.sroa.0.40..sroa.0.40..a = load double, ptr %.sroa.0.40..sroa_idx163, align 8, !tbaa !1104
  %.sroa.0.32..sroa_idx159 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32. = load <2 x double>, ptr %.sroa.0.32..sroa_idx159, align 16, !tbaa !1104
  %.sroa.0.48..sroa_idx164 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48. = load <2 x double>, ptr %.sroa.0.48..sroa_idx164, align 16, !tbaa !1104 ; 3 uses
  %.sroa.0.24..sroa_idx153 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24. = load <2 x double>, ptr %.sroa.0.24..sroa_idx153, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.16..sroa_idx147 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <4 x double> %i.bm, ptr %.sroa.0.16..sroa_idx147, align 16, !tbaa !1104
  %.sroa.0.48..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  store <2 x double> %i.bn, ptr %.sroa.0.48..sroa_idx168, align 16, !tbaa !1104
  %i.br = fneg <2 x double> %.sroa.0.48..sroa.0.48.
  %i.bs = fmul <2 x double> %.sroa.0.32..sroa.0.32., %i.br
  %i.bt = shufflevector <2 x double> %.sroa.0.48..sroa.0.48., <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = insertelement <2 x double> %i.bt, double %i.av, i64 1
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.24..sroa.0.24., <2 x double> %i.bu, <2 x double> %i.bs) ; 2 uses
  %i.bw = extractelement <2 x double> %.sroa.0.24..sroa.0.24., i64 0
  %i.bx = fmul double %i.bw, %i.be
  %i.by = extractelement <2 x double> %.sroa.0.48..sroa.0.48., i64 0
  %i.bz = tail call double @llvm.fmuladd.f64(double %.sroa.0.40..sroa.0.40..a, double %i.by, double %i.bx)
  %i.ca = fmul double %.sroa.0.8..sroa.0.8.107, %i.bz
  %i.cb = extractelement <2 x double> %i.bv, i64 1
  %i.cc = tail call double @llvm.fmuladd.f64(double %.sroa.0.0..sroa.0.0.105.a, double %i.cb, double %i.ca)
  %i.cd = extractelement <2 x double> %i.bv, i64 0
  %i.ce = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.114, double %i.cd, double %i.cc)
  %i.cf = extractelement <2 x double> %.sroa.0.48..sroa.0.48.132, i64 0
  %i.cg = fneg double %i.cf
  %i.ch = extractelement <2 x double> %.sroa.0.32..sroa.0.32.126, i64 0
  %i.ci = fmul double %i.ch, %i.cg
  %i.cj = tail call double @llvm.fmuladd.f64(double %.sroa.0.24..sroa.0.24.120, double %.sroa.0.56..sroa.0.56.140, double %i.ci)
  %i.ck = shufflevector <2 x double> %.sroa.0.48..sroa.0.48.132, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cl = insertelement <2 x double> %i.ck, double %i.ae, i64 1 ; 2 uses
  %i.cm = fneg <2 x double> %i.cl
  %i.cn = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.126, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x double> %i.cn, double %.sroa.0.24..sroa.0.24.120, i64 1
  %i.cp = fmul <2 x double> %i.co, %i.cm
  %i.cq = shufflevector <2 x double> %i.cl, <2 x double> %.sroa.0.48..sroa.0.48.132, <2 x i32> <i32 1, i32 2>
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.126, <2 x double> %i.cq, <2 x double> %i.cp) ; 2 uses
  %i.cs = fneg <2 x double> %.sroa.0.48..sroa.0.48.134
  %i.ct = shufflevector <2 x double> %i.cr, <2 x double> %i.cs, <2 x i32> <i32 1, i32 2>
  %i.cu = fmul <2 x double> %i.bp, %i.ct
  %i.cv = shufflevector <2 x double> %i.cr, <2 x double> %.sroa.0.48..sroa.0.48.134, <2 x i32> <i32 0, i32 3>
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.cv, <2 x double> %i.cu) ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.112, double %i.cj, double %i.cx)
  %i.cz = shufflevector <2 x double> %.sroa.0.48..sroa.0.48.134, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x double> %i.cz, double %i.i, i64 1 ; 2 uses
  %i.db = fneg <2 x double> %i.da
  %i.dc = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.128.a, <2 x double> %.sroa.0.24..sroa.0.24.118, <2 x i32> <i32 1, i32 2>
  %i.dd = fmul <2 x double> %i.dc, %i.db
  %i.de = shufflevector <2 x double> %i.da, <2 x double> %.sroa.0.48..sroa.0.48.134, <2 x i32> <i32 1, i32 2>
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.128.a, <2 x double> %i.de, <2 x double> %i.dd) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 1
  %i.dh = fmul double %.sroa.0.8..sroa.0.8., %i.dg
  %i.di = extractelement <2 x double> %i.df, i64 0
  %i.dj = tail call double @llvm.fmuladd.f64(double %.sroa.0.0..sroa.0.0.104.a, double %i.di, double %i.dh)
  %i.dk = extractelement <2 x double> %i.cw, i64 1
  %i.dl = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16., double %i.dk, double %i.dj)
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.j, double %i.dl, double 0.000000e+00)
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.cy, double %i.dm)
  %i.do = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ce, double %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !1104
  %i.dr = fneg double %i.dq
  %.sroa.0.48..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %.sroa.0.48..sroa.0.48.138 = load double, ptr %.sroa.0.48..sroa_idx169, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.24..sroa_idx156 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.24..sroa.0.24.122.a = load double, ptr %.sroa.0.24..sroa_idx156, align 8, !tbaa !1104
  %.sroa.0.32..sroa_idx162 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.32..sroa.0.32.130 = load <2 x double>, ptr %.sroa.0.32..sroa_idx162, align 16, !tbaa !1104 ; 2 uses
  %1 = fneg double %.sroa.0.24..sroa.0.24.122.a
  %2 = fmul double %.sroa.0.48..sroa.0.48.138, %1
  %.sroa.0.32..sroa_idx164 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.132 = load double, ptr %.sroa.0.32..sroa_idx164, align 16, !tbaa !1104
  %.sroa.0.24..sroa_idx157 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.122 = load <2 x double>, ptr %.sroa.0.24..sroa_idx157, align 8, !tbaa !1104 ; 2 uses
  %3 = tail call double @llvm.fmuladd.f64(double %.sroa.0.32..sroa.0.32.132, double %i.bo, double %2)
  %4 = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ds = insertelement <2 x double> %4, double %i.bo, i64 0
  %5 = fneg <2 x double> %i.ds
  %6 = fmul <2 x double> %.sroa.0.24..sroa.0.24.122, %5
  %7 = shufflevector <2 x double> %.sroa.0.24..sroa.0.24.122, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %8 = insertelement <2 x double> %7, double %.sroa.0.48..sroa.0.48.138, i64 0
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> %6) ; 2 uses
  %.sroa.0.0..sroa.0.0.105 = load double, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.8..sroa_idx147 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8.109 = load double, ptr %.sroa.0.8..sroa_idx147, align 8, !tbaa !1104
  %10 = extractelement <2 x double> %9, i64 0
  %11 = fmul double %.sroa.0.8..sroa.0.8.109, %10
  %12 = tail call double @llvm.fmuladd.f64(double %.sroa.0.0..sroa.0.0.105, double %3, double %11)
  %.sroa.0.16..sroa_idx154 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.118 = load double, ptr %.sroa.0.16..sroa_idx154, align 16, !tbaa !1104
  %i.dt = extractelement <2 x double> %9, i64 1
  %i.du = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.118, double %i.dt, double %12)
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.du, double %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret double %i.dv
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_017typelist_internal13TSForEachImplINS0_11RegisterMapENS0_4math15UniformScaleMapEJNS4_14TranslationMapENS4_17ScaleTranslateMapENS4_24UniformScaleTranslateMapENS4_19NonlinearFrustumMapEEEEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !1122, !alias.scope !9667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.27, i64 15, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 15, ptr %i.b, align 8, !tbaa !1125, !alias.scope !9667
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 0, ptr %i.c, align 1, !tbaa !1126, !alias.scope !9667
  invoke void @_ZN7openvdb5v13_04math11MapRegistry11registerMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrINS1_7MapBaseEEvE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZN7openvdb5v13_04math15UniformScaleMap6createEv)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !1127   ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZN7openvdb5v13_011RegisterMapINS0_4math15UniformScaleMapEEclEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !1126
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %_ZN7openvdb5v13_011RegisterMapINS0_4math15UniformScaleMapEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !1127   ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !1126
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

_ZN7openvdb5v13_011RegisterMapINS0_4math15UniformScaleMapEEclEv.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !1122, !alias.scope !9668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.m, ptr noundef nonnull align 1 dereferenceable(14) @.str.28, i64 14, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.n, align 8, !tbaa !1125, !alias.scope !9668
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 0, ptr %i.o, align 2, !tbaa !1126, !alias.scope !9668
  invoke void @_ZN7openvdb5v13_04math11MapRegistry11registerMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrINS1_7MapBaseEEvE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @_ZN7openvdb5v13_04math14TranslationMap6createEv)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN7openvdb5v13_011RegisterMapINS0_4math15UniformScaleMapEEclEv.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !1127   ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZN7openvdb5v13_017typelist_internal13TSForEachImplINS0_11RegisterMapENS0_4math14TranslationMapEJNS4_17ScaleTranslateMapENS4_24UniformScaleTranslateMapENS4_19NonlinearFrustumMapEEEEvv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.m, align 8, !tbaa !1126
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #35
  br label %_ZN7openvdb5v13_017typelist_internal13TSForEachImplINS0_11RegisterMapENS0_4math14TranslationMapEJNS4_17ScaleTranslateMapENS4_24UniformScaleTranslateMapENS4_19NonlinearFrustumMapEEEEvv.exit

bb.e:                                             ; preds = %_ZN7openvdb5v13_011RegisterMapINS0_4math15UniformScaleMapEEclEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %0, align 8, !tbaa !1127   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.m
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.m, align 8, !tbaa !1126
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

_ZN7openvdb5v13_017typelist_internal13TSForEachImplINS0_11RegisterMapENS0_4math14TranslationMapEJNS4_17ScaleTranslateMapENS4_24UniformScaleTranslateMapENS4_19NonlinearFrustumMapEEEEvv.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  call void @_ZN7openvdb5v13_04math17ScaleTranslateMap11registerMapEv()
  call void @_ZN7openvdb5v13_04math24UniformScaleTranslateMap11registerMapEv()
  call void @_ZN7openvdb5v13_04math19NonlinearFrustumMap11registerMapEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math8ScaleMap6createEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math8ScaleMapE, i64 16), ptr %i.a, align 8, !tbaa !1113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <2 x double> splat (double 1.000000e+00), ptr %i.b, align 8, !tbaa !1104
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x double> splat (double 1.000000e+00), ptr %i.c, align 8, !tbaa !1104
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x double> splat (double 1.000000e+00), ptr %i.d, align 8, !tbaa !1104
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store <2 x double> splat (double 1.000000e+00), ptr %i.e, align 8, !tbaa !1104
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store <2 x double> splat (double 1.000000e+00), ptr %i.f, align 8, !tbaa !1104
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <2 x double> splat (double 1.000000e+00), ptr %i.g, align 8, !tbaa !1104
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store <2 x double> splat (double 5.000000e-01), ptr %i.h, align 8, !tbaa !1104
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double 5.000000e-01, ptr %i.i, align 8, !tbaa !1104
  store ptr %i.a, ptr %0, align 8, !tbaa !1110
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !1111
  %i.k = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_8ScaleMapEvEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #26 ; 0 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !1113
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #26, !inline_history !6
  invoke void @__cxa_rethrow() #33
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #34
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_8ScaleMapEvEEPT_.exit: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !1115
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 1, ptr %i.v, align 4, !tbaa !1116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math8ScaleMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.k, align 8, !tbaa !1113
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.a, ptr %i.w, align 8, !tbaa !1181
  store ptr %i.k, ptr %i.j, align 8, !tbaa !1111
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math15UniformScaleMap6createEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store <2 x double> splat (double 1.000000e+00), ptr %1, align 16, !tbaa !1104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double 1.000000e+00, ptr %i.b, align 16, !tbaa !1104
  invoke void @_ZN7openvdb5v13_04math8ScaleMapC2ERKNS1_4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math15UniformScaleMapE, i64 16), ptr %i.a, align 8, !tbaa !1113
  store ptr %i.a, ptr %0, align 8, !tbaa !1110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !1111
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_15UniformScaleMapEvEEPT_.exit unwind label %bb.c ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #35
  invoke void @__cxa_rethrow() #33
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04math19NonlinearFrustumMap6createEv:bb.a
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #34
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_19NonlinearFrustumMapEvEEPT_.exit: ; preds = %_ZN7openvdb5v13_04math19NonlinearFrustumMapC2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !1115
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !1116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !1113
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.a, ptr %i.p, align 8, !tbaa !1277
  store ptr %i.g, ptr %i.f, align 8, !tbaa !1111
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #35
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMap4initEv(ptr noundef nonnull align 8 dereferenceable(520) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.881.0.copyload = load double, ptr %.sroa.881.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !1104, !noalias !9686
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.f = load <2 x double>, ptr %i.b, align 8
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9686
  %i.h = fsub <2 x double> %i.f, %i.g             ; 5 uses
  store <2 x double> %i.h, ptr %i.e, align 8, !tbaa !1104
  %i.i = fsub double %.sroa.881.0.copyload, %i.d  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  store double %i.i, ptr %i.j, align 8, !tbaa !9687
  %i.k = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.h)
  %i.l = fcmp ule <2 x double> %i.k, splat (double 1.000000e-15) ; 2 uses
  %i.m = extractelement <2 x i1> %i.l, i64 0
  %i.n = extractelement <2 x i1> %i.l, i64 1
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  %i.o = tail call double @llvm.fabs.f64(double %i.i)
  %i.p = fcmp ule double %i.o, 1.000000e-15
  %or.cond84 = select i1 %or.cond, i1 true, i1 %i.p
  br i1 %or.cond84, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !1122
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !1125
  store i8 0, ptr %i.q, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.critedge
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.70, i64 noundef 83)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #26 ; 0 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !1127   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1126
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.i

bb.d:                                             ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.aa, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.z, %bb.d ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ac = call ptr @__cxa_begin_catch(ptr %.1) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.ad, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.q unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %1, align 8, !tbaa !1127  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.q
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.j
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !1126
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.ae

bb.k:                                             ; preds = %bb.a
  %i.aj = fmul nnan <2 x double> %i.h, splat (double 5.000000e-01)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x double> %i.aj, ptr %i.ak, align 8, !tbaa !1104
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load double, ptr %i.al, align 8, !tbaa !1278
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fadd double %i.an, -1.000000e+00
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !1274 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 1
  %i.au = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.i, i64 1
  %i.aw = fdiv <2 x double> %i.at, %i.av          ; 2 uses
  store <2 x double> %i.aw, ptr %i.ar, align 8, !tbaa !1104
  %foldExtExtBinop = fmul nnan <2 x double> %i.h, %i.h
  %i.ax = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ay = extractelement <2 x double> %i.aw, i64 1
  %i.az = fdiv double %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double %i.az, ptr %i.ba, align 8, !tbaa !1279
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store i8 1, ptr %i.bb, align 8, !tbaa !1280
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.064.0.copyload = load double, ptr %i.bc, align 8 ; 2 uses
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.566.0.copyload = load double, ptr %.sroa.566.0..sroa_idx, align 8
  %i.bd = fsub double %.sroa.064.0.copyload, %.sroa.566.0.copyload
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp ule double %i.be, 1.000000e-15
  br i1 %i.bf, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.667.0.copyload = load double, ptr %.sroa.667.0..sroa_idx, align 8
  %i.bg = fsub double %.sroa.064.0.copyload, %.sroa.667.0.copyload
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ule double %i.bh, 1.000000e-15
  br i1 %i.bi, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !1104, !noalias !9688
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !1104, !noalias !9688
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !1104, !noalias !9688 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = load double, ptr %i.br, align 8, !tbaa !1104, !noalias !9688 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = load double, ptr %i.by, align 8, !tbaa !1104, !noalias !9688
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !1104, !noalias !9688
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.cg = insertelement <2 x double> poison, double %i.bo, i64 0 ; 2 uses
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cb, i64 1 ; 2 uses
  %i.cm = fmul <2 x double> %i.cl, zeroinitializer ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.bz, i64 1 ; 3 uses
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> zeroinitializer, <2 x double> %i.cm) ; 4 uses
  %i.cq = fadd <2 x double> %i.co, %i.cm          ; 2 uses
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> zeroinitializer, <2 x double> %i.cr)
  %i.ct = fadd <2 x double> %i.cj, %i.cs          ; 2 uses
  %i.cu = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <2 x double> %i.cq, <2 x double> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> zeroinitializer, <2 x double> %i.cw)
  %i.cy = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fadd <2 x double> %i.cz, %i.cx          ; 2 uses
  %i.db = extractelement <2 x double> %i.ct, i64 0
  %i.dc = extractelement <2 x double> %i.ct, i64 1 ; 3 uses
  %i.dd = fsub double %i.db, %i.dc                ; 2 uses
  %i.de = extractelement <2 x double> %i.da, i64 0
  %i.df = extractelement <2 x double> %i.da, i64 1 ; 3 uses
  %i.dg = fsub double %i.de, %i.df                ; 2 uses
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> zeroinitializer, <2 x double> %i.cl)
  %4 = insertelement <2 x double> %i.cg, double %i.cd, i64 1
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> zeroinitializer, <2 x double> %i.dh) ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = fadd double %6, %i.bq
  %8 = extractelement <2 x double> %5, i64 1
  %9 = fadd double %i.cf, %8
  %10 = fsub double %7, %i.dc                     ; 2 uses
  %11 = load double, ptr %i.bt, align 8, !tbaa !1104, !noalias !9688
  %12 = insertelement <2 x double> poison, double %11, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x double> %13, <double 0.000000e+00, double 1.000000e+00> ; 2 uses
  %15 = insertelement <2 x double> poison, double %i.bs, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> zeroinitializer, <2 x double> %14) ; 2 uses
  %18 = extractelement <2 x double> %17, i64 0    ; 2 uses
  %19 = tail call double @llvm.fmuladd.f64(double %i.bv, double 0.000000e+00, double %18)
  %20 = fadd double %i.bx, %19                    ; 2 uses
  %21 = extractelement <2 x double> %14, i64 0
  %22 = fadd double %i.bs, %21
  %23 = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.di = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x double> %i.dj, double %22, i64 1
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> zeroinitializer, <2 x double> %i.dk)
  %i.dm = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fadd <2 x double> %i.dn, %i.dl
  %i.dp = insertelement <2 x double> poison, double %20, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fsub <2 x double> %i.do, %i.dq          ; 2 uses
  %i.ds = fsub double %9, %i.df                   ; 2 uses
  %i.dt = extractelement <2 x double> %i.cp, i64 0
  %i.du = fadd double %i.bo, %i.dt
  %i.dv = fadd double %i.bq, %i.du
  %i.dw = fadd double %i.bv, %18
  %i.dx = fadd double %i.bx, %i.dw
  %i.dy = extractelement <2 x double> %i.cp, i64 1
  %i.dz = fadd double %i.cd, %i.dy
  %i.ea = fadd double %i.cf, %i.dz
  %i.eb = fsub double %i.dv, %i.dc                ; 2 uses
  %i.ec = fsub double %i.dx, %20                  ; 2 uses
  %i.ed = fsub double %i.ea, %i.df                ; 2 uses
  %i.ee = extractelement <2 x double> %i.dr, i64 0 ; 2 uses
  %i.ef = extractelement <2 x double> %i.dr, i64 1 ; 2 uses
  %i.eg = fmul double %i.ef, %i.ee
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.dd, double %10, double %i.eg)
  %i.ei = tail call noundef double @llvm.fmuladd.f64(double %i.dg, double %i.ds, double %i.eh)
  %i.ej = tail call noundef double @llvm.fabs.f64(double %i.ei)
  %i.ek = fcmp ule double %i.ej, f0x3E7AD7F29ABCAF48
  br i1 %i.ek, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.el = fmul double %i.ee, %i.ec
  %i.em = tail call double @llvm.fmuladd.f64(double %10, double %i.eb, double %i.el)
  %i.en = tail call noundef double @llvm.fmuladd.f64(double %i.ds, double %i.ed, double %i.em)
  %i.eo = tail call noundef double @llvm.fabs.f64(double %i.en)
  %i.ep = fcmp ule double %i.eo, f0x3E7AD7F29ABCAF48
  br i1 %i.ep, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.eq = fmul double %i.ec, %i.ef
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.dd, double %i.eq)
  %i.es = tail call noundef double @llvm.fmuladd.f64(double %i.ed, double %i.dg, double %i.er)
  %i.et = tail call noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = fcmp ule double %i.et, f0x3E7AD7F29ABCAF48
  br i1 %i.eu, label %bb.p, label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  store i8 0, ptr %i.bb, align 8, !tbaa !1280
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.o
  ret void

bb.q:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMapD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMapD0Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 520) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap12getAffineMapEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZNK7openvdb5v13_04math9AffineMap12getAffineMapEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap4typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9691)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !1122, !alias.scope !9691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !9691
  store i64 19, ptr %i.a, align 8, !tbaa !1156, !noalias !9691
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1127, !alias.scope !9691
  %i.d = load i64, ptr %i.a, align 8, !tbaa !1156, !noalias !9691 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !1126, !alias.scope !9691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.69, i64 19, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !1125, !alias.scope !9691
  %i.f = load ptr, ptr %0, align 8, !tbaa !1127, !alias.scope !9691
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !9691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap7isEqualERKNS1_7MapBaseE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_19NonlinearFrustumMapEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.a, label %bb.b, label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_19NonlinearFrustumMapEEEbRKT_RKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMapeqERKS2_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(520) %1)
  br label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_19NonlinearFrustumMapEEEbRKT_RKS2_.exit

_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_19NonlinearFrustumMapEEEbRKT_RKS2_.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8isLinearEv(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap15hasUniformScaleEv(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x double>, ptr %2, align 8
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9700
  %i.d = fsub <2 x double> %i.b, %i.c             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !1104, !noalias !9700
  %i.g = fsub double %.sroa.9.0.copyload, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.i = load double, ptr %i.h, align 8, !tbaa !1281, !noalias !9701
  %i.j = extractelement <2 x double> %i.d, i64 0
  %i.k = fsub double %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.m = load double, ptr %i.l, align 8, !tbaa !1282, !noalias !9701
  %i.n = extractelement <2 x double> %i.d, i64 1
  %i.o = fsub double %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.q = load double, ptr %i.p, align 8, !tbaa !1283, !noalias !9701
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.s = load double, ptr %i.r, align 8, !tbaa !1284, !noalias !9701
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.u = load double, ptr %i.t, align 8, !tbaa !1285, !noalias !9701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9702)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9703)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1104, !noalias !9704
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !1104, !noalias !9704
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !1104, !noalias !9704
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ag = load double, ptr %i.af, align 8, !tbaa !1104, !noalias !9704
  %i.ah = fmul double %i.g, %i.q                  ; 3 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ah, double 1.000000e+00)
  %i.aj = fdiv double %i.ai, %i.u                 ; 2 uses
  %i.ak = fmul double %i.k, %i.aj                 ; 2 uses
  %i.al = fmul double %i.o, %i.aj                 ; 2 uses
  %i.am = load <2 x double>, ptr %i.v, align 8, !tbaa !1104, !noalias !9704
  %i.an = load <2 x double>, ptr %i.w, align 8, !tbaa !1104, !noalias !9704
  %i.ao = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ap, %i.an
  %i.ar = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.am, <2 x double> %i.aq)
  %i.au = load <2 x double>, ptr %i.x, align 8, !tbaa !1104, !noalias !9704
  %i.av = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.au, <2 x double> %i.at)
  %i.ay = load <2 x double>, ptr %i.y, align 8, !tbaa !1104, !noalias !9704
  %i.az = fadd <2 x double> %i.ay, %i.ax
  %i.ba = fmul double %i.al, %i.ac
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.aa, double %i.ba)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ae, double %i.bb)
  %i.bd = fadd double %i.ag, %i.bc
  store <2 x double> %i.az, ptr %0, align 8, !tbaa !1104, !alias.scope !9704
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bd, ptr %i.be, align 8, !tbaa !1104, !alias.scope !9704
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap15applyInverseMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.h = load double, ptr %i.g, align 8, !tbaa !1104, !noalias !9713
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = load double, ptr %i.i, align 8, !tbaa !1104, !noalias !9713
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.l = load double, ptr %i.k, align 8, !tbaa !1104, !noalias !9713
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.n = load double, ptr %i.m, align 8, !tbaa !1104, !noalias !9713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9714)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.p = load <2 x double>, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !1104, !noalias !9715
  %i.w = load double, ptr %2, align 8, !tbaa !1104, !noalias !9713 ; 2 uses
  %i.x = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9713 ; 2 uses
  %i.y = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9713 ; 2 uses
  %i.z = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9713
  %i.aa = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9713
  %i.ab = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.ac, %i.aa
  %i.ae = insertelement <2 x double> poison, double %i.w, i64 0
end_hunk_2
