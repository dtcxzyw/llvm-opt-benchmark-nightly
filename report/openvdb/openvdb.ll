Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZNK7openvdb5v13_04math19NonlinearFrustumMap9postShearEdNS1_4AxisES3_:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.n, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !1183

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.thread:                                          ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.thread13:                                        ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.e
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.q

bb.p:                                             ; preds = %.thread13, %.thread
  %.pn12 = phi { ptr, i32 } [ %i.aj, %.thread ], [ %i.ak, %.thread13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #35
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn11 = phi { ptr, i32 } [ %i.m, %bb.o ], [ %.pn12, %bb.p ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap13applyJacobianERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9786)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9787)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9788
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9788
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load double, ptr %i.j, align 8, !tbaa !1104, !noalias !9788
  %i.l = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9788 ; 2 uses
  %i.m = load double, ptr %2, align 8, !tbaa !1104, !noalias !9788 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9788 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9788
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9788
  %i.q = insertelement <2 x double> poison, double %i.l, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.m, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9788
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.l, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.m, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !1104, !alias.scope !9788
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !1104, !alias.scope !9788
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap13applyJacobianERKNS1_4Vec3IdEES6_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9795
  %i.d = fsub double %.sroa.13.0.copyload, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.h = load <2 x double>, ptr %i.g, align 8
  %i.i = load <2 x double>, ptr %i.f, align 8, !tbaa !1104 ; 3 uses
  %i.j = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.k = fmul double %i.d, %i.j
  %i.l = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.m = insertelement <2 x double> %i.l, double %i.k, i64 0
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.m, <2 x double> <double 1.000000e+00, double -0.000000e+00>)
  %i.o = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fdiv <2 x double> %i.n, %i.o             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !1104 ; 2 uses
  %i.s = fmul double %i.j, %i.r                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9796)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9797)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load double, ptr %i.w, align 8, !tbaa !1104, !noalias !9798
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.z = load double, ptr %i.y, align 8, !tbaa !1104, !noalias !9798
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !1104, !noalias !9798
  %i.ac = load <2 x double>, ptr %3, align 8
  %i.ad = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9795
  %i.ae = fsub <2 x double> %i.ac, %i.ad
  %i.af = load <2 x double>, ptr %i.e, align 8, !tbaa !1104
  %i.ag = fsub <2 x double> %i.ae, %i.af
  %i.ah = load <2 x double>, ptr %2, align 8, !tbaa !1104
  %i.ai = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = fmul <2 x double> %i.ag, %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.r, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.aj, %i.al
  %i.an = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.ah, <2 x double> %i.am) ; 4 uses
  %i.ap = load <2 x double>, ptr %i.t, align 8, !tbaa !1104, !noalias !9798
  %i.aq = load <2 x double>, ptr %i.u, align 8, !tbaa !1104, !noalias !9798
  %i.ar = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x double> %i.ar, %i.aq
  %i.at = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.ap, <2 x double> %i.as)
  %i.av = load <2 x double>, ptr %i.v, align 8, !tbaa !1104, !noalias !9798
  %i.aw = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.av, <2 x double> %i.au)
  %i.az = extractelement <2 x double> %i.ao, i64 1
  %i.ba = fmul double %i.az, %i.z
  %i.bb = extractelement <2 x double> %i.ao, i64 0
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.x, double %i.ba)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ab, double %i.bc)
  store <2 x double> %i.ay, ptr %0, align 8, !tbaa !1104, !alias.scope !9798
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bd, ptr %i.be, align 8, !tbaa !1104, !alias.scope !9798
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap20applyInverseJacobianERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9803)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9804)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9805
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9805
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.k = load double, ptr %i.j, align 8, !tbaa !1104, !noalias !9805
  %i.l = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9805 ; 2 uses
  %i.m = load double, ptr %2, align 8, !tbaa !1104, !noalias !9805 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9805 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9805
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9805
  %i.q = insertelement <2 x double> poison, double %i.l, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.m, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9805
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.l, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.m, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !1104, !alias.scope !9805
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !1104, !alias.scope !9805
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap20applyInverseJacobianERKNS1_4Vec3IdEES6_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9812
  %i.d = fsub double %.sroa.13.0.copyload, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.h = load <2 x double>, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.o = load double, ptr %i.n, align 8, !tbaa !1104, !noalias !9813
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load double, ptr %i.p, align 8, !tbaa !1104, !noalias !9813
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.s = load double, ptr %i.r, align 8, !tbaa !1104, !noalias !9813
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load <2 x double>, ptr %3, align 8
  %i.v = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9812
  %i.w = fsub <2 x double> %i.u, %i.v
  %i.x = load <2 x double>, ptr %i.e, align 8, !tbaa !1104
  %i.y = fsub <2 x double> %i.w, %i.x
  %4 = load <2 x double>, ptr %i.f, align 8, !tbaa !1104 ; 4 uses
  %5 = extractelement <2 x double> %4, i64 1      ; 2 uses
  %i.z = fmul double %i.d, %5
  %6 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.aa = insertelement <2 x double> %6, double %i.z, i64 0
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %i.aa, <2 x double> <double 1.000000e+00, double -0.000000e+00>)
  %i.ab = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %7, %i.ab             ; 2 uses
  %i.ad = load double, ptr %i.j, align 8, !tbaa !1104, !noalias !9813 ; 2 uses
  %i.ae = load double, ptr %2, align 8, !tbaa !1104, !noalias !9813 ; 2 uses
  %i.af = load double, ptr %i.l, align 8, !tbaa !1104, !noalias !9813 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.i, align 8, !tbaa !1104, !noalias !9813
  %i.ah = load <2 x double>, ptr %i.k, align 8, !tbaa !1104, !noalias !9813
  %i.ai = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.aj, %i.ah
  %i.al = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ag, <2 x double> %i.ak)
  %i.ao = load <2 x double>, ptr %i.m, align 8, !tbaa !1104, !noalias !9813
  %i.ap = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ao, <2 x double> %i.an)
  %i.as = fmul double %i.ad, %i.q
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.o, double %i.as)
  %i.au = tail call double @llvm.fmuladd.f64(double %i.af, double %i.s, double %i.at) ; 2 uses
  %8 = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.av = fmul <2 x double> %i.y, %8
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %i.av, %i.ax
  %9 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fdiv <2 x double> %i.ay, %9
  %i.ba = fsub <2 x double> %i.ar, %i.az
  %10 = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x double> %i.ba, %10
  store <2 x double> %i.bb, ptr %0, align 8, !tbaa !1104
  %i.bc = fdiv double %i.au, %5
  store double %i.bc, ptr %i.t, align 8, !tbaa !1104
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap7applyJTERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9816)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load <2 x double>, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = load double, ptr %i.g, align 8, !tbaa !1104, !noalias !9816
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = load double, ptr %i.i, align 8, !tbaa !1104, !noalias !9816
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.l = load double, ptr %i.k, align 8, !tbaa !1104, !noalias !9816
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.n = load double, ptr %i.m, align 8, !tbaa !1104, !noalias !9816
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9816 ; 2 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9816 ; 2 uses
  %i.q = load double, ptr %2, align 8, !tbaa !1104, !noalias !9816 ; 2 uses
  %i.r = load double, ptr %i.e, align 8, !tbaa !1104, !noalias !9816 ; 2 uses
  %i.s = load <2 x double>, ptr %i.f, align 8, !tbaa !1104, !noalias !9816 ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x double> %i.o, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = fmul <2 x double> %i.u, %i.v
  %i.x = shufflevector <2 x double> %i.o, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.y = insertelement <2 x double> poison, double %i.q, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.z, <2 x double> %i.w)
  %i.ab = insertelement <2 x double> %i.d, double %i.h, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ad, <2 x double> %i.aa)
  %i.af = fmul double %i.p, %i.l
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.j, double %i.q, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.n, double %i.r, double %i.ag)
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !1104, !alias.scope !9816
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ah, ptr %i.ai, align 8, !tbaa !1104, !alias.scope !9816
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap7applyJTERKNS1_4Vec3IdEES6_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load <2 x double>, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9821
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = load double, ptr %i.i, align 8, !tbaa !1104, !noalias !9821
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x double>, ptr %3, align 8
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !1104, !noalias !9822
  %i.n = fsub <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !1104, !noalias !9822
  %i.q = fsub double %.sroa.13.0.copyload, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.s = load double, ptr %i.r, align 8, !tbaa !1281
  %i.t = extractelement <2 x double> %i.n, i64 0
  %i.u = fsub double %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.w = load double, ptr %i.v, align 8, !tbaa !1282
  %i.x = extractelement <2 x double> %i.n, i64 1
  %i.y = fsub double %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.ab = load <2 x double>, ptr %i.aa, align 8
  %i.ac = load <2 x double>, ptr %i.z, align 8, !tbaa !1104 ; 3 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 1 ; 2 uses
  %i.ae = fmul double %i.q, %i.ad
  %i.af = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 0
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ag, <2 x double> <double 1.000000e+00, double -0.000000e+00>)
  %i.ai = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fdiv <2 x double> %i.ah, %i.ai          ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 1 ; 2 uses
  %i.al = fmul double %i.u, %i.ak
  %i.am = fmul double %i.y, %i.ak
  %i.an = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9821 ; 2 uses
  %i.ao = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9821 ; 2 uses
  %i.ap = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9821 ; 2 uses
  %i.aq = shufflevector <2 x double> %i.an, <2 x double> %i.ap, <2 x i32> <i32 1, i32 3>
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.as = insertelement <2 x double> %i.c, double %i.g, i64 1
  %i.at = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = load <2 x double>, ptr %i.h, align 8, !tbaa !1104, !noalias !9821 ; 2 uses
  %i.ax = load <2 x double>, ptr %2, align 8, !tbaa !1104, !noalias !9821 ; 4 uses
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x double> %i.ay, %i.aq
  %i.ba = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ba, <2 x double> %i.az)
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.au, <2 x double> %i.bb) ; 3 uses
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> %i.ax, <2 x i32> <i32 3, i32 1>
  %i.be = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bf = insertelement <2 x double> %i.be, double %i.am, i64 1
  %i.bg = fmul <2 x double> %i.bd, %i.bf
  %i.bh = insertelement <2 x double> %i.aw, double %i.al, i64 1
  %i.bi = shufflevector <2 x double> %i.ax, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bi, <2 x double> %i.bg) ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.j, double %i.ao, double %i.bk)
  %i.bm = fmul <2 x double> %i.bc, %i.av
  %i.bn = extractelement <2 x double> %i.bj, i64 1
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.bl, double %i.bn)
  store <2 x double> %i.bm, ptr %0, align 8, !tbaa !1104
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bo, ptr %i.bp, align 8, !tbaa !1104
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap10inverseMapEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !1122
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !1125
  store i8 0, ptr %i.a, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.79, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !9827)
  call void @llvm.experimental.noalias.scope.decl(metadata !9828)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !1122, !alias.scope !9829
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 0, ptr %i.e, align 8, !tbaa !1125, !alias.scope !9829
  store i8 0, ptr %i.d, align 8, !tbaa !1126, !alias.scope !9829
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1177, !noalias !9829 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !9829 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1178, !noalias !9829 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = load ptr, ptr %4, align 8, !tbaa !1127, !alias.scope !9829 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.d, align 8, !tbaa !1126, !alias.scope !9829
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #35
  br label %.body

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.w = load ptr, ptr %2, align 8, !tbaa !1127   ; 6 uses
  %i.x = icmp eq ptr %i.w, %i.a
  %i.y = load ptr, ptr %4, align 8, !tbaa !1127   ; 5 uses
  %i.z = icmp eq ptr %i.y, %i.d                   ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

end_hunk_0
