Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 204
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 953
begin_hunk_0_@_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj:bb.a
  %i.yv = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.yw = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.yx = fsub double %storemerge35213, %i.yw
  %i.yy = fmul double %i.yv, %i.yx
  %i.yz = fadd double %i.yy, 5.000000e-01
  %i.za = tail call noundef double @llvm.floor.f64(double %i.yz)
  %i.zb = fptoui double %i.za to i32
  %i.zc = zext i32 %i.zb to i64
  %i.zd = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.zc ; 2 uses
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !1192
  %i.zg = fcmp ogt double %i.ye, %i.zf
  br i1 %i.zg, label %bb.bh, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit64

bb.bh:                                            ; preds = %bb.bg
  store double %i.ye, ptr %i.ze, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit64

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit64: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i63, %bb.bg, %bb.bh
  %i.zh = fadd double %storemerge35213, %i.b      ; 2 uses
  %i.zi = fcmp ugt double %i.zh, %i.j
  br i1 %i.zi, label %._crit_edge216, label %bb.bd, !llvm.loop !9624

_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd.exit:   ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit, %._crit_edge216, %._crit_edge219
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv(ptr noundef nonnull align 8 dereferenceable(664) %0) local_unnamed_addr #3 comdat align 2 {
_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit:
  %1 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 6 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 6 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load <1 x double>, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load double, ptr %i.d, align 8, !tbaa !1192, !noalias !9630 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.h = load <2 x double>, ptr %i.c, align 8, !tbaa !1192, !noalias !9630 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.h, %i.h
  %i.i = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.j = extractelement <2 x double> %i.h, i64 0  ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.i)
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.k) ; 2 uses
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ule double %i.m, 1.000000e-15
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.l)
  %i.o = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.h, %i.p
  %i.r = insertelement <2 x i1> poison, i1 %i.n, i64 0
  %i.s = shufflevector <2 x i1> %i.r, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.t = select <2 x i1> %i.s, <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double> %i.q
  %i.u = shufflevector <1 x double> %i.b, <1 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.t             ; 2 uses
  %i.w = load <2 x double>, ptr %i.f, align 8
  %i.x = fsub <2 x double> %i.w, %i.v             ; 2 uses
  store <2 x double> %i.x, ptr %1, align 16, !tbaa !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.y = load <2 x double>, ptr %i.g, align 8
  %i.z = fadd <2 x double> %i.y, %i.v             ; 2 uses
  store <2 x double> %i.z, ptr %2, align 16, !tbaa !1192
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3113 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !1192
  %i.ae = load <2 x double>, ptr %i.ab, align 8, !tbaa !1192
  %i.af = fneg <2 x double> %i.ae                 ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = fsub double %i.ag, %i.ad                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !1192
  %i.ak = extractelement <2 x double> %i.af, i64 1
  %i.al = fsub double %i.ak, %i.aj                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !3113 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !1192 ; 3 uses
  %i.aq = fneg double %i.ap                       ; 3 uses
  %i.ar = load double, ptr %i.an, align 8, !tbaa !1192 ; 4 uses
  store double %i.aq, ptr %3, align 8, !tbaa !1192
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store double %i.ar, ptr %i.as, align 8, !tbaa !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.av = load double, ptr %i.au, align 8, !tbaa !1192 ; 3 uses
  %i.aw = fneg double %i.av                       ; 3 uses
  %i.ax = load double, ptr %i.at, align 8, !tbaa !1192 ; 4 uses
  store double %i.aw, ptr %4, align 8, !tbaa !1192
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store double %i.ax, ptr %i.ay, align 8, !tbaa !1192
  %i.az = fmul double %i.al, %i.ar
  %i.ba = tail call noundef double @llvm.fmuladd.f64(double %i.aq, double %i.ah, double %i.az)
  %i.bb = fcmp ogt double %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit
  store double %i.ap, ptr %3, align 8, !tbaa !1192
  %i.bc = fneg double %i.ar                       ; 2 uses
  store double %i.bc, ptr %i.as, align 8, !tbaa !1192
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit
  %i.bd = phi double [ %i.bc, %bb.a ], [ %i.ar, %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit ] ; 3 uses
  %i.be = phi double [ %i.ap, %bb.a ], [ %i.aq, %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit ] ; 3 uses
  %i.bf = fmul double %i.al, %i.ax
  %i.bg = tail call noundef double @llvm.fmuladd.f64(double %i.aw, double %i.ah, double %i.bf)
  %i.bh = fcmp ogt double %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double %i.av, ptr %4, align 8, !tbaa !1192
  %i.bi = fneg double %i.ax                       ; 2 uses
  store double %i.bi, ptr %i.ay, align 8, !tbaa !1192
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bj = phi double [ %i.bi, %bb.c ], [ %i.ax, %bb.b ] ; 3 uses
  %i.bk = phi double [ %i.av, %bb.c ], [ %i.aw, %bb.b ] ; 3 uses
  %i.bl = fmul double %i.bd, %i.bd
  %i.bm = tail call noundef double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bl)
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp ule double %i.bn, 1.000000e-15
  br i1 %i.bo, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = fsub <2 x double> %i.z, %i.x            ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 1
  %i.br = fmul double %i.bq, %i.bd
  %i.bs = extractelement <2 x double> %i.bp, i64 0
  %i.bt = tail call noundef double @llvm.fmuladd.f64(double %i.be, double %i.bs, double %i.br)
  %i.bu = fcmp olt double %i.bt, 0.000000e+00
  %. = select i1 %i.bu, ptr %1, ptr %2
  call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24intersectWithXYHalfSpaceERKNS0_4math4Vec2IdEESN_(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bv = fmul double %i.bj, %i.bj
  %i.bw = call noundef double @llvm.fmuladd.f64(double %i.bk, double %i.bk, double %i.bv)
  %i.bx = call double @llvm.fabs.f64(double %i.bw)
  %i.by = fcmp ule double %i.bx, 1.000000e-15
  br i1 %i.by, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = load <2 x double>, ptr %2, align 16
  %i.ca = load <2 x double>, ptr %1, align 16, !tbaa !1192
  %i.cb = fsub <2 x double> %i.bz, %i.ca          ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 1
  %i.cd = fmul double %i.bj, %i.cc
  %i.ce = extractelement <2 x double> %i.cb, i64 0
  %i.cf = call noundef double @llvm.fmuladd.f64(double %i.bk, double %i.ce, double %i.cd)
  %i.cg = fcmp olt double %i.cf, 0.000000e+00
  %.1 = select i1 %i.cg, ptr %1, ptr %2
  call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24intersectWithXYHalfSpaceERKNS0_4math4Vec2IdEESN_(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE20intersectWithXYStripEv(ptr noundef nonnull align 8 dereferenceable(664) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 4 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 4 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 4 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 4 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3846, !range !788, !noundef !789
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit

_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit:  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3113 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !1192 ; 7 uses
  %i.j = fneg double %i.i                         ; 2 uses
  %i.k = load double, ptr %i.g, align 8, !tbaa !1192 ; 4 uses
  %i.l = fmul double %i.k, %i.k
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.p = load double, ptr %i.o, align 8, !tbaa !3844 ; 2 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.l) ; 2 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ule double %i.r, 1.000000e-15
  %9 = insertelement <2 x double> poison, double %i.q, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fadd <2 x double> %10, <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %i.t = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %11) ; 3 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fdiv <2 x double> %i.n, %i.u
  %i.w = insertelement <2 x i1> poison, i1 %i.s, i64 0
  %i.x = shufflevector <2 x i1> %i.w, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.y = select <2 x i1> %i.x, <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double> %i.v ; 12 uses
  %12 = extractelement <2 x double> %11, i64 1
  %i.z = tail call double @llvm.fabs.f64(double %12)
  %i.aa = fcmp ule double %i.z, 1.000000e-15      ; 2 uses
  %i.ab = extractelement <2 x double> %i.t, i64 1
  %i.ac = fdiv double %i.k, %i.ab
  %.sroa.795.0 = select i1 %i.aa, double 0.000000e+00, double %i.ac
  %i.ad = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.j, i64 0
  %i.ae = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.af = fdiv <2 x double> %i.ad, %i.ae
  %i.ag = insertelement <2 x i1> poison, i1 %i.aa, i64 0
  %i.ah = shufflevector <2 x i1> %i.ag, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ai = select <2 x i1> %i.ah, <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double> %i.af
  %i.aj = fmul double %i.p, %.sroa.795.0          ; 3 uses
  %i.ak = insertelement <2 x double> poison, double %i.p, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.al, %i.ai          ; 3 uses
  %i.an = tail call double @llvm.fabs.f64(double %i.i)
  %i.ao = fcmp ule double %i.an, 1.000000e-15
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit
  %i.ap = tail call noundef double @llvm.fabs.f64(double %i.aj)
  br label %bb.e

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit
  %i.aq = fcmp ogt double %i.i, 0.000000e+00
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = fneg double %i.aj
  %i.as = fneg <2 x double> %i.am
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.9.0 = phi double [ %i.ap, %bb.b ], [ %i.ar, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %i.at = phi <2 x double> [ %i.am, %bb.b ], [ %i.as, %bb.d ], [ %i.am, %bb.c ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %.sroa.891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.av = load <2 x double>, ptr %i.au, align 8   ; 6 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0 ; 7 uses
  %.sroa.891.0.copyload = load double, ptr %.sroa.891.0..sroa_idx, align 8 ; 6 uses
  %.sroa.1392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %.sroa.1392.0.copyload = load double, ptr %.sroa.1392.0..sroa_idx, align 8 ; 6 uses
  %foldExtExtBinop = fsub <2 x double> %i.av, %i.at ; 2 uses
  %i.ax = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ay = fsub double %.sroa.891.0.copyload, %.sroa.9.0 ; 3 uses
  %i.az = extractelement <2 x double> %i.at, i64 1 ; 2 uses
  %i.ba = fsub double %.sroa.1392.0.copyload, %i.az ; 3 uses
  %foldExtExtBinop154 = fadd <2 x double> %i.at, %i.av
  %i.bb = extractelement <2 x double> %foldExtExtBinop154, i64 0 ; 3 uses
  %i.bc = fadd double %.sroa.9.0, %.sroa.891.0.copyload ; 3 uses
  %i.bd = fadd double %i.az, %.sroa.1392.0.copyload ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bf = load double, ptr %i.be, align 8, !tbaa !1192 ; 2 uses
  %i.bg = tail call double @llvm.fabs.f64(double %i.bf)
  %i.bh = fcmp ule double %i.bg, 1.000000e-15
  br i1 %i.bh, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bi = load double, ptr %i.e, align 8, !tbaa !1192 ; 4 uses
  %i.bj = load double, ptr %i.f, align 8, !tbaa !1192 ; 4 uses
  %i.bk = fcmp olt double %i.bi, %i.aw
  %i.bl = select i1 %i.bk, double %i.bi, double %i.aw ; 2 uses
  %i.bm = fcmp olt double %i.bj, %i.bl
  %.sroa.speculated72 = select i1 %i.bm, double %i.bj, double %i.bl
  %i.bn = fcmp olt double %i.aw, %i.bi
  %i.bo = select i1 %i.bn, double %i.bi, double %i.aw ; 2 uses
  %i.bp = fcmp olt double %i.bo, %i.bj
  %.sroa.speculated66 = select i1 %i.bp, double %i.bj, double %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !3113 ; 7 uses
  %foldExtExtBinop156 = fsub <2 x double> %foldExtExtBinop, %i.av
  %i.bs = extractelement <2 x double> %foldExtExtBinop156, i64 0 ; 2 uses
  %i.bt = fsub double %i.ay, %.sroa.891.0.copyload ; 2 uses
  %i.bu = fsub double %i.ba, %.sroa.1392.0.copyload ; 2 uses
  %i.bv = load double, ptr %i.br, align 8, !tbaa !1192 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !1192 ; 2 uses
  %i.by = fmul double %i.bt, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bs, double %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !1192 ; 2 uses
  %i.cc = tail call noundef double @llvm.fmuladd.f64(double %i.cb, double %i.bu, double %i.bz)
  %i.cd = fcmp ugt double %i.cc, 1.250000e-01
  br i1 %i.cd, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit

_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit: ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !1192
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !1192
  %i.ci = fmul double %i.bt, %i.ch
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.bs, double %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !1192
  %i.cm = tail call noundef double @llvm.fmuladd.f64(double %i.cl, double %i.bu, double %i.cj)
  %i.cn = fcmp ugt double %i.cm, 1.250000e-01
  br i1 %i.cn, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread, label %bb.g

_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread: ; preds = %bb.f, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.co = extractelement <2 x double> %i.y, i64 0
  %i.cp = fcmp olt double %i.co, 0.000000e+00
  %i.cq = fneg <2 x double> %i.y
  %i.cr = insertelement <2 x i1> poison, i1 %i.cp, i64 0
  %i.cs = shufflevector <2 x i1> %i.cr, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ct = select <2 x i1> %i.cs, <2 x double> %i.y, <2 x double> %i.cq
  store <2 x double> %i.ct, ptr %1, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store double %.sroa.speculated72, ptr %2, align 8, !tbaa !1192
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double 0.000000e+00, ptr %i.cu, align 8, !tbaa !1192
  call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24intersectWithXYHalfSpaceERKNS0_4math4Vec2IdEESN_(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.pre144 = load ptr, ptr %i.bq, align 8, !tbaa !3113 ; 4 uses
  %.pre145 = load double, ptr %i.au, align 8, !tbaa !1192, !noalias !9635
  %.pre146 = load double, ptr %.sroa.891.0..sroa_idx, align 8, !tbaa !1192, !noalias !9635
  %.pre147 = load double, ptr %.sroa.1392.0..sroa_idx, align 8, !tbaa !1192, !noalias !9635
  %.pre148 = load double, ptr %.pre144, align 8, !tbaa !1192
  %.phi.trans.insert149 = getelementptr inbounds nuw i8, ptr %.pre144, i64 8
  %.pre150 = load double, ptr %.phi.trans.insert149, align 8, !tbaa !1192
  %.phi.trans.insert151 = getelementptr inbounds nuw i8, ptr %.pre144, i64 16
  %.pre152 = load double, ptr %.phi.trans.insert151, align 8, !tbaa !1192
  br label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit
  %i.cv = phi double [ %.pre152, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread ], [ %i.cb, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit ]
  %i.cw = phi double [ %.pre150, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread ], [ %i.bx, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit ]
  %i.cx = phi double [ %.pre148, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread ], [ %i.bv, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit ]
  %i.cy = phi double [ %.pre147, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread ], [ %.sroa.1392.0.copyload, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit ]
  %i.cz = phi double [ %.pre146, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread ], [ %.sroa.891.0.copyload, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit ]
  %i.da = phi double [ %.pre145, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread ], [ %i.aw, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit ]
  %i.db = phi ptr [ %.pre144, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit.thread ], [ %i.br, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit ] ; 3 uses
  %i.dc = fsub double %i.bb, %i.da                ; 2 uses
  %i.dd = fsub double %i.bc, %i.cz                ; 2 uses
  %i.de = fsub double %i.bd, %i.cy                ; 2 uses
  %i.df = fmul double %i.dd, %i.cw
  %i.dg = call double @llvm.fmuladd.f64(double %i.cx, double %i.dc, double %i.df)
  %i.dh = call noundef double @llvm.fmuladd.f64(double %i.cv, double %i.de, double %i.dg)
  %i.di = fcmp ugt double %i.dh, 1.250000e-01
  br i1 %i.di, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit35.thread, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit35

_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit35: ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !1192
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !1192
  %i.dn = fmul double %i.dd, %i.dm
  %i.do = call double @llvm.fmuladd.f64(double %i.dk, double %i.dc, double %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !1192
  %i.dr = call noundef double @llvm.fmuladd.f64(double %i.dq, double %i.de, double %i.do)
  %i.ds = fcmp ugt double %i.dr, 1.250000e-01
  br i1 %i.ds, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit35.thread, label %bb.j

_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit35.thread: ; preds = %bb.g, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE7inWedgeERKNS0_4math4Vec3IdEE.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.dt = extractelement <2 x double> %i.y, i64 0
  %i.du = fcmp ogt double %i.dt, 0.000000e+00
  %i.dv = fneg <2 x double> %i.y
  %i.dw = insertelement <2 x i1> poison, i1 %i.du, i64 0
  %i.dx = shufflevector <2 x i1> %i.dw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dy = select <2 x i1> %i.dx, <2 x double> %i.y, <2 x double> %i.dv
  store <2 x double> %i.dy, ptr %3, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store double %.sroa.speculated66, ptr %4, align 8, !tbaa !1192
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double 0.000000e+00, ptr %i.dz, align 8, !tbaa !1192
  call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24intersectWithXYHalfSpaceERKNS0_4math4Vec2IdEESN_(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !3858
  %i.ec = fneg double %i.eb
  %i.ed = fdiv double %i.ec, %i.bf                ; 2 uses
  %i.ee = load <2 x double>, ptr %i.e, align 8, !tbaa !1192 ; 2 uses
  %i.ef = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = shufflevector <2 x double> %i.av, <2 x double> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.ei = shufflevector <2 x double> %i.av, <2 x double> %i.ee, <2 x i32> <i32 1, i32 3>
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eh, <2 x double> %i.ei) ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.el = load double, ptr %i.ek, align 8, !tbaa !1192
  %i.em = load double, ptr %i.f, align 8, !tbaa !1192
  %i.en = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.em, double %i.el) ; 4 uses
  %i.eo = extractelement <2 x double> %i.ej, i64 0 ; 4 uses
  %i.ep = extractelement <2 x double> %i.ej, i64 1 ; 4 uses
  %i.eq = fcmp olt double %i.ep, %i.eo
  %i.er = select i1 %i.eq, double %i.ep, double %i.eo ; 2 uses
  %i.es = fcmp olt double %i.en, %i.er
  %.sroa.speculated61 = select i1 %i.es, double %i.en, double %i.er
  %i.et = fcmp olt double %i.eo, %i.ep
  %i.eu = select i1 %i.et, double %i.ep, double %i.eo ; 2 uses
  %i.ev = fcmp olt double %i.eu, %i.en
  %.sroa.speculated = select i1 %i.ev, double %i.en, double %i.eu
  %i.ew = fcmp ole double %i.i, 0.000000e+00      ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !3113 ; 7 uses
end_hunk_0
