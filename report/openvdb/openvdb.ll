Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZNK7openvdb5v13_04math9AffineMap15hasUniformScaleEv:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.am, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9116)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !1104, !noalias !9116
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load double, ptr %i.i, align 8, !tbaa !1104, !noalias !9116
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load double, ptr %i.k, align 8, !tbaa !1104, !noalias !9116
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = load double, ptr %i.m, align 8, !tbaa !1104, !noalias !9116
  %i.o = load double, ptr %2, align 8, !tbaa !1104, !noalias !9116 ; 2 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9116 ; 2 uses
  %i.q = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9116 ; 2 uses
  %i.r = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9116
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9116
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s
  %i.w = insertelement <2 x double> poison, double %i.o, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.r, <2 x double> %i.v)
  %i.z = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9116
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.z, <2 x double> %i.y)
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !1104, !noalias !9116
  %i.ae = fadd <2 x double> %i.ac, %i.ad
  %i.af = fmul double %i.p, %i.j
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.o, double %i.h, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double %i.ag)
  %i.ai = fadd double %i.n, %i.ah
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !1104, !alias.scope !9116
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !1104, !alias.scope !9116
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap15applyInverseMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9119)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load double, ptr %i.g, align 8, !tbaa !1104, !noalias !9119
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.j = load double, ptr %i.i, align 8, !tbaa !1104, !noalias !9119
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.l = load double, ptr %i.k, align 8, !tbaa !1104, !noalias !9119
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.n = load double, ptr %i.m, align 8, !tbaa !1104, !noalias !9119
  %i.o = load double, ptr %2, align 8, !tbaa !1104, !noalias !9119 ; 2 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9119 ; 2 uses
  %i.q = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9119 ; 2 uses
  %i.r = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9119
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9119
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s
  %i.w = insertelement <2 x double> poison, double %i.o, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.r, <2 x double> %i.v)
  %i.z = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9119
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.z, <2 x double> %i.y)
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !1104, !noalias !9119
  %i.ae = fadd <2 x double> %i.ac, %i.ad
  %i.af = fmul double %i.p, %i.j
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.o, double %i.h, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double %i.ag)
  %i.ai = fadd double %i.n, %i.ah
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !1104, !alias.scope !9119
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !1104, !alias.scope !9119
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyIJTERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9122)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9122
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9122
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.k = load double, ptr %i.j, align 8, !tbaa !1104, !noalias !9122
  %i.l = load double, ptr %2, align 8, !tbaa !1104, !noalias !9122 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9122 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9122 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9122
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9122
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9122
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !1104, !alias.scope !9122
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !1104, !alias.scope !9122
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyIJTERKNS1_4Vec3IdEES6_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9127)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9128)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9129
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9129
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.k = load double, ptr %i.j, align 8, !tbaa !1104, !noalias !9129
  %i.l = load double, ptr %2, align 8, !tbaa !1104, !noalias !9129 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9129 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9129 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9129
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9129
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9129
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !1104, !alias.scope !9129
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !1104, !alias.scope !9129
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyIJCERKNS1_4Mat3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9136 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9136 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9136 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.921.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9136 ; 4 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !1104, !noalias !9136 ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9136 ; 4 uses
  %3 = load <2 x double>, ptr %i.l, align 8
  %i.r = load <3 x double>, ptr %2, align 8, !tbaa !1104, !noalias !9137 ; 3 uses
  %4 = load <2 x double>, ptr %i.m, align 8
  %i.s = load <3 x double>, ptr %i.j, align 8, !tbaa !1104, !noalias !9137 ; 3 uses
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <3 x i32> zeroinitializer
  %i.u = fmul <3 x double> %i.t, %i.s
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> zeroinitializer
  %i.w = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.r, <3 x double> %i.u)
  %5 = load <2 x double>, ptr %i.n, align 8
  %i.x = load <3 x double>, ptr %i.k, align 8, !tbaa !1104, !noalias !9137 ; 3 uses
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> %i.x, <3 x double> %i.w) ; 6 uses
  %i.aa = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.p, %i.aa
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.o, <2 x double> %i.ab)
  %i.ae = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.q, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !1104, !alias.scope !9138
  %i.ag = extractelement <3 x double> %i.z, i64 1
  %i.ah = fmul double %i.g, %i.ag
  %i.ai = extractelement <3 x double> %i.z, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.e, double %i.ah)
  %i.ak = extractelement <3 x double> %i.z, i64 2
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.i, double %i.aj)
  store double %i.al, ptr %.sroa.921.0..sroa_idx, align 8, !tbaa !1104, !alias.scope !9138
  %i.am = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.an = insertelement <2 x double> %i.am, double %i.g, i64 1 ; 4 uses
  %i.ao = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.an, %i.ao
  %i.aq = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ar = insertelement <2 x double> %i.aq, double %i.e, i64 1 ; 4 uses
  %i.as = shufflevector <3 x double> %i.r, <3 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.as, <2 x double> %i.ap)
  %i.au = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %i.i, i64 1 ; 4 uses
  %i.aw = shufflevector <3 x double> %i.x, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.aw, <2 x double> %i.at) ; 3 uses
  %i.ay = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.an, %i.ay
  %i.ba = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ba, <2 x double> %i.az)
  %i.bc = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bc, <2 x double> %i.bb) ; 3 uses
  %i.be = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bf = fmul <2 x double> %i.an, %i.be
  %i.bg = shufflevector <3 x double> %i.r, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.bg, <2 x double> %i.bf)
  %i.bi = shufflevector <3 x double> %i.x, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bi, <2 x double> %i.bh) ; 3 uses
  %i.bk = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.p, %i.bk
  %i.bm = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.o, <2 x double> %i.bl)
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.q, <2 x double> %i.bn)
  store <2 x double> %i.bp, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1104, !alias.scope !9138
  %i.bq = insertelement <2 x double> %i.am, double %i.g, i64 0
  %i.br = fmul <2 x double> %i.bq, %i.bd
  %i.bs = insertelement <2 x double> %i.aq, double %i.e, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> %i.au, double %i.i, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.bt)
  store <2 x double> %i.bv, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !1104, !alias.scope !9138
  %i.bw = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.an, %i.bw
  %i.by = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ar, <2 x double> %i.bx)
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.av, <2 x double> %i.bz)
  store <2 x double> %i.cb, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !1104, !alias.scope !9138
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyIJCERKNS1_4Mat3IdEERKNS1_4Vec3IdEESA_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9147)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9148 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9148 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9148 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9148 ; 4 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !1104, !noalias !9148 ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9148 ; 4 uses
  %5 = load <2 x double>, ptr %i.l, align 8
  %i.r = load <3 x double>, ptr %2, align 8, !tbaa !1104, !noalias !9149 ; 3 uses
  %6 = load <2 x double>, ptr %i.m, align 8
  %i.s = load <3 x double>, ptr %i.j, align 8, !tbaa !1104, !noalias !9149 ; 3 uses
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <3 x i32> zeroinitializer
  %i.u = fmul <3 x double> %i.t, %i.s
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> zeroinitializer
  %i.w = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.r, <3 x double> %i.u)
  %7 = load <2 x double>, ptr %i.n, align 8
  %i.x = load <3 x double>, ptr %i.k, align 8, !tbaa !1104, !noalias !9149 ; 3 uses
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> %i.x, <3 x double> %i.w) ; 6 uses
  %i.aa = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.p, %i.aa
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.o, <2 x double> %i.ab)
  %i.ae = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.q, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !1104, !alias.scope !9150
  %i.ag = extractelement <3 x double> %i.z, i64 1
  %i.ah = fmul double %i.g, %i.ag
  %i.ai = extractelement <3 x double> %i.z, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.e, double %i.ah)
  %i.ak = extractelement <3 x double> %i.z, i64 2
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.i, double %i.aj)
  store double %i.al, ptr %.sroa.921.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9150
  %i.am = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.an = insertelement <2 x double> %i.am, double %i.g, i64 1 ; 4 uses
  %i.ao = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.an, %i.ao
  %i.aq = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ar = insertelement <2 x double> %i.aq, double %i.e, i64 1 ; 4 uses
  %i.as = shufflevector <3 x double> %i.r, <3 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.as, <2 x double> %i.ap)
  %i.au = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %i.i, i64 1 ; 4 uses
  %i.aw = shufflevector <3 x double> %i.x, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.aw, <2 x double> %i.at) ; 3 uses
  %i.ay = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.an, %i.ay
  %i.ba = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ba, <2 x double> %i.az)
  %i.bc = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bc, <2 x double> %i.bb) ; 3 uses
  %i.be = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bf = fmul <2 x double> %i.an, %i.be
  %i.bg = shufflevector <3 x double> %i.r, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.bg, <2 x double> %i.bf)
  %i.bi = shufflevector <3 x double> %i.x, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bi, <2 x double> %i.bh) ; 3 uses
  %i.bk = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.p, %i.bk
  %i.bm = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.o, <2 x double> %i.bl)
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.q, <2 x double> %i.bn)
  store <2 x double> %i.bp, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9150
  %i.bq = insertelement <2 x double> %i.am, double %i.g, i64 0
  %i.br = fmul <2 x double> %i.bq, %i.bd
  %i.bs = insertelement <2 x double> %i.aq, double %i.e, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> %i.au, double %i.i, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.bt)
  store <2 x double> %i.bv, ptr %.sroa.18.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9150
  %i.bw = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.an, %i.bw
  %i.by = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ar, <2 x double> %i.bx)
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.av, <2 x double> %i.bz)
  store <2 x double> %i.cb, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math9AffineMap11determinantEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load double, ptr %i.a, align 8, !tbaa !1200
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math9AffineMap11determinantERKNS1_4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load double, ptr %i.a, align 8, !tbaa !1200
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap9voxelSizeEv(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap9voxelSizeERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math9AffineMap4readERSi(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 noundef 128) ; 0 uses
  tail call void @_ZN7openvdb5v13_04math9AffineMap18updateAccelerationEv(ptr noundef nonnull align 8 dereferenceable(376) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap5writeERSo(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 noundef 128) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.18, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNK7openvdb5v13_04math3MatILj4EdE3strB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i32 noundef 0)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.c = load ptr, ptr %4, align 8, !tbaa !1127
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1125
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1113
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1147 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #33
          to label %.noexc15 unwind label %bb.o

.noexc15:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !1153
  %.not.i1.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 67
  %i.p = load i8, ptr %i.o, align 1, !tbaa !1126
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.l)
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %bb.e
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !1113
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.o, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc16, %bb.d
  %.0.i.i.i = phi i8 [ %i.p, %bb.d ], [ %i.t, %.noexc16 ]
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext %.0.i.i.i)
          to label %.noexc18 unwind label %bb.o

.noexc18:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.o ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc18
  %i.w = load ptr, ptr %4, align 8, !tbaa !1127   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !1126
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.19, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNK7openvdb5v13_04math5TupleILi3EdE3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ad = load ptr, ptr %2, align 8, !tbaa !1127
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1125
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.ah = load ptr, ptr %2, align 8, !tbaa !1127  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !1126
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %2, align 8, !tbaa !1127  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !1183

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math4Mat4IdE9preRotateENS1_4AxisEd(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, double noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = tail call double @cos(double noundef %2) #26 ; 3 uses
  %i.b = tail call double @sin(double noundef %2) #26 ; 4 uses
  %i.c = fneg double %i.b                         ; 3 uses
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !1104 ; 2 uses
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !1104 ; 2 uses
  %i.j = insertelement <2 x double> poison, double %i.b, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.i
  %i.m = insertelement <2 x double> poison, double %i.a, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.h, <2 x double> %i.l)
  %i.p = fmul <2 x double> %i.n, %i.i
  %i.q = insertelement <2 x double> poison, double %i.c, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.h, <2 x double> %i.p)
  store <2 x double> %i.s, ptr %i.e, align 8, !tbaa !1104
  store <2 x double> %i.o, ptr %i.d, align 8, !tbaa !1104
  %i.t = load <2 x double>, ptr %i.f, align 8, !tbaa !1104 ; 2 uses
  %i.u = load <2 x double>, ptr %i.g, align 8, !tbaa !1104 ; 2 uses
  %i.v = fmul <2 x double> %i.k, %i.u
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.t, <2 x double> %i.v)
  %i.x = fmul <2 x double> %i.n, %i.u
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.t, <2 x double> %i.x)
  store <2 x double> %i.y, ptr %i.g, align 8, !tbaa !1104
  store <2 x double> %i.w, ptr %i.f, align 8, !tbaa !1104
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ac = load <2 x double>, ptr %0, align 8, !tbaa !1104 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.z, align 8, !tbaa !1104 ; 2 uses
  %i.ae = insertelement <2 x double> poison, double %i.c, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul <2 x double> %i.ad, %i.af
  %i.ah = insertelement <2 x double> poison, double %i.a, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ac, <2 x double> %i.ag)
  %i.ak = fmul <2 x double> %i.ai, %i.ad
  %i.al = insertelement <2 x double> poison, double %i.b, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ac, <2 x double> %i.ak)
  store <2 x double> %i.an, ptr %i.z, align 8, !tbaa !1104
  store <2 x double> %i.aj, ptr %0, align 8, !tbaa !1104
  %i.ao = load <2 x double>, ptr %i.aa, align 8, !tbaa !1104 ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ab, align 8, !tbaa !1104 ; 2 uses
  %i.aq = fmul <2 x double> %i.ap, %i.af
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ao, <2 x double> %i.aq)
  %i.as = fmul <2 x double> %i.ai, %i.ap
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ao, <2 x double> %i.as)
  store <2 x double> %i.at, ptr %i.ab, align 8, !tbaa !1104
  store <2 x double> %i.ar, ptr %i.aa, align 8, !tbaa !1104
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = load <2 x double>, ptr %0, align 8, !tbaa !1104 ; 2 uses
  %i.ay = load <2 x double>, ptr %i.au, align 8, !tbaa !1104 ; 2 uses
  %i.az = insertelement <2 x double> poison, double %i.b, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = fmul <2 x double> %i.ba, %i.ay
  %i.bc = insertelement <2 x double> poison, double %i.a, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.ax, <2 x double> %i.bb)
  %i.bf = fmul <2 x double> %i.bd, %i.ay
  %i.bg = insertelement <2 x double> poison, double %i.c, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.ax, <2 x double> %i.bf)
  store <2 x double> %i.bi, ptr %i.au, align 8, !tbaa !1104
  store <2 x double> %i.be, ptr %0, align 8, !tbaa !1104
  %i.bj = load <2 x double>, ptr %i.av, align 8, !tbaa !1104 ; 2 uses
  %i.bk = load <2 x double>, ptr %i.aw, align 8, !tbaa !1104 ; 2 uses
  %i.bl = fmul <2 x double> %i.ba, %i.bk
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bj, <2 x double> %i.bl)
  %i.bn = fmul <2 x double> %i.bd, %i.bk
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bj, <2 x double> %i.bn)
  store <2 x double> %i.bo, ptr %i.aw, align 8, !tbaa !1104
  store <2 x double> %i.bm, ptr %i.av, align 8, !tbaa !1104
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !9225
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !1126
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !1131 ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !1131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !1113
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !9225
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math4Mat4IdE12preTranslateIdEEvRKNS1_4Vec3IT_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load <2 x double>, ptr %0, align 8, !tbaa !1104 ; 4 uses
  %i.k = load <2 x double>, ptr %i.c, align 8, !tbaa !1104 ; 3 uses
  %i.l = fmul <2 x double> %i.k, zeroinitializer  ; 2 uses
  %i.m = fadd <2 x double> %i.j, %i.l
  %i.n = load <2 x double>, ptr %i.d, align 8, !tbaa !1104 ; 4 uses
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> zeroinitializer, <2 x double> %i.m)
  %i.p = load <2 x double>, ptr %i.e, align 8, !tbaa !1104 ; 4 uses
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> zeroinitializer, <2 x double> %i.o)
  %i.r = load <2 x double>, ptr %i.f, align 8, !tbaa !1104 ; 4 uses
  %i.s = load <2 x double>, ptr %i.g, align 8, !tbaa !1104 ; 3 uses
  %i.t = fmul <2 x double> %i.s, zeroinitializer  ; 2 uses
  %i.u = fadd <2 x double> %i.r, %i.t
  %i.v = load <2 x double>, ptr %i.h, align 8, !tbaa !1104 ; 4 uses
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> zeroinitializer, <2 x double> %i.u)
  %i.x = load <2 x double>, ptr %i.i, align 8, !tbaa !1104 ; 4 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> zeroinitializer, <2 x double> %i.w)
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> zeroinitializer, <2 x double> %i.k)
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> zeroinitializer, <2 x double> %i.z)
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> zeroinitializer, <2 x double> %i.aa)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> zeroinitializer, <2 x double> %i.s)
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> zeroinitializer, <2 x double> %i.ac)
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> zeroinitializer, <2 x double> %i.ad)
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> zeroinitializer, <2 x double> %i.l)
  %i.ag = fadd <2 x double> %i.n, %i.af
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> zeroinitializer, <2 x double> %i.ag)
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> zeroinitializer, <2 x double> %i.t)
  %i.aj = fadd <2 x double> %i.v, %i.ai
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> zeroinitializer, <2 x double> %i.aj)
  %2 = load <2 x double>, ptr %1, align 8
  %3 = load <2 x double>, ptr %i.a, align 8
  %i.al = load double, ptr %i.b, align 8, !tbaa !1104
  %i.am = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = fmul <2 x double> %i.am, %i.k
  %i.ao = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.j, <2 x double> %i.an)
  %i.aq = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.n, <2 x double> %i.ap)
  %i.at = fadd <2 x double> %i.p, %i.as
  store <2 x double> %i.q, ptr %0, align 8
  %i.au = fmul <2 x double> %i.am, %i.s
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.r, <2 x double> %i.au)
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.v, <2 x double> %i.av)
  %i.ax = fadd <2 x double> %i.x, %i.aw
  store <2 x double> %i.y, ptr %i.f, align 8
  store <2 x double> %i.ab, ptr %i.c, align 8
  store <2 x double> %i.ae, ptr %i.g, align 8
  store <2 x double> %i.ah, ptr %i.d, align 8
  store <2 x double> %i.ak, ptr %i.h, align 8
  store <2 x double> %i.at, ptr %i.e, align 8
  store <2 x double> %i.ax, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZN7openvdb5v13_04math4Mat4IdEmLIdEERKS3_RKNS2_IT_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load double, ptr %0, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.11.0.copyload = load double, ptr %.sroa.11.0..sroa_idx, align 8 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.12.0.copyload = load double, ptr %.sroa.12.0..sroa_idx, align 8 ; 4 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 8 ; 4 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.14.0.copyload = load double, ptr %.sroa.14.0..sroa_idx, align 8 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.15.0.copyload = load double, ptr %.sroa.15.0..sroa_idx, align 8 ; 4 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.16.0.copyload = load double, ptr %.sroa.16.0..sroa_idx, align 8 ; 4 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.17.0.copyload = load double, ptr %.sroa.17.0..sroa_idx, align 8 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.sroa.18.0.copyload = load double, ptr %.sroa.18.0..sroa_idx, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.p = load double, ptr %1, align 8, !tbaa !1104
  %i.q = load double, ptr %i.a, align 8, !tbaa !1104
  %i.r = fmul double %.sroa.4.0.copyload, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.copyload, double %i.p, double %i.r)
  %i.t = load double, ptr %i.b, align 8, !tbaa !1104
  %i.u = tail call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload, double %i.t, double %i.s)
  %i.v = load double, ptr %i.c, align 8, !tbaa !1104
  %i.w = tail call double @llvm.fmuladd.f64(double %.sroa.6.0.copyload, double %i.v, double %i.u)
  store double %i.w, ptr %0, align 8, !tbaa !1104
  %i.x = load double, ptr %i.d, align 8, !tbaa !1104
  %i.y = load double, ptr %i.e, align 8, !tbaa !1104
  %i.z = fmul double %.sroa.4.0.copyload, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.copyload, double %i.x, double %i.z)
  %i.ab = load double, ptr %i.f, align 8, !tbaa !1104
  %i.ac = tail call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload, double %i.ab, double %i.aa)
  %i.ad = load double, ptr %i.g, align 8, !tbaa !1104
  %i.ae = tail call double @llvm.fmuladd.f64(double %.sroa.6.0.copyload, double %i.ad, double %i.ac)
  store double %i.ae, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1104
  %i.af = load double, ptr %i.h, align 8, !tbaa !1104
  %i.ag = load double, ptr %i.i, align 8, !tbaa !1104
  %i.ah = fmul double %.sroa.4.0.copyload, %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.copyload, double %i.af, double %i.ah)
  %i.aj = load double, ptr %i.j, align 8, !tbaa !1104
  %i.ak = tail call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload, double %i.aj, double %i.ai)
  %i.al = load double, ptr %i.k, align 8, !tbaa !1104
  %i.am = tail call double @llvm.fmuladd.f64(double %.sroa.6.0.copyload, double %i.al, double %i.ak)
  store double %i.am, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1104
  %i.an = load double, ptr %i.l, align 8, !tbaa !1104
  %i.ao = load double, ptr %i.m, align 8, !tbaa !1104
  %i.ap = fmul double %.sroa.4.0.copyload, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.copyload, double %i.an, double %i.ap)
  %i.ar = load double, ptr %i.n, align 8, !tbaa !1104
  %i.as = tail call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload, double %i.ar, double %i.aq)
  %i.at = load double, ptr %i.o, align 8, !tbaa !1104
  %i.au = tail call double @llvm.fmuladd.f64(double %.sroa.6.0.copyload, double %i.at, double %i.as)
  store double %i.au, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !1104
  %i.av = load double, ptr %1, align 8, !tbaa !1104
  %i.aw = load double, ptr %i.a, align 8, !tbaa !1104
  %i.ax = fmul double %.sroa.8.0.copyload, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %.sroa.7.0.copyload, double %i.av, double %i.ax)
  %i.az = load double, ptr %i.b, align 8, !tbaa !1104
  %i.ba = tail call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %i.az, double %i.ay)
  %i.bb = load double, ptr %i.c, align 8, !tbaa !1104
  %i.bc = tail call double @llvm.fmuladd.f64(double %.sroa.10.0.copyload, double %i.bb, double %i.ba)
  store double %i.bc, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1104
  %i.bd = load double, ptr %i.d, align 8, !tbaa !1104
  %i.be = load double, ptr %i.e, align 8, !tbaa !1104
  %i.bf = fmul double %.sroa.8.0.copyload, %i.be
  %i.bg = tail call double @llvm.fmuladd.f64(double %.sroa.7.0.copyload, double %i.bd, double %i.bf)
  %i.bh = load double, ptr %i.f, align 8, !tbaa !1104
  %i.bi = tail call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %i.bh, double %i.bg)
  %i.bj = load double, ptr %i.g, align 8, !tbaa !1104
  %i.bk = tail call double @llvm.fmuladd.f64(double %.sroa.10.0.copyload, double %i.bj, double %i.bi)
  store double %i.bk, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !1104
  %i.bl = load double, ptr %i.h, align 8, !tbaa !1104
  %i.bm = load double, ptr %i.i, align 8, !tbaa !1104
  %i.bn = fmul double %.sroa.8.0.copyload, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %.sroa.7.0.copyload, double %i.bl, double %i.bn)
  %i.bp = load double, ptr %i.j, align 8, !tbaa !1104
  %i.bq = tail call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %i.bp, double %i.bo)
  %i.br = load double, ptr %i.k, align 8, !tbaa !1104
  %i.bs = tail call double @llvm.fmuladd.f64(double %.sroa.10.0.copyload, double %i.br, double %i.bq)
  store double %i.bs, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1104
  %i.bt = load double, ptr %i.l, align 8, !tbaa !1104
  %i.bu = load double, ptr %i.m, align 8, !tbaa !1104
  %i.bv = fmul double %.sroa.8.0.copyload, %i.bu
  %i.bw = tail call double @llvm.fmuladd.f64(double %.sroa.7.0.copyload, double %i.bt, double %i.bv)
  %i.bx = load double, ptr %i.n, align 8, !tbaa !1104
  %i.by = tail call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %i.bx, double %i.bw)
  %i.bz = load double, ptr %i.o, align 8, !tbaa !1104
  %i.ca = tail call double @llvm.fmuladd.f64(double %.sroa.10.0.copyload, double %i.bz, double %i.by)
  store double %i.ca, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !1104
  %i.cb = load double, ptr %1, align 8, !tbaa !1104
  %i.cc = load double, ptr %i.a, align 8, !tbaa !1104
  %i.cd = fmul double %.sroa.12.0.copyload, %i.cc
  %i.ce = tail call double @llvm.fmuladd.f64(double %.sroa.11.0.copyload, double %i.cb, double %i.cd)
  %i.cf = load double, ptr %i.b, align 8, !tbaa !1104
  %i.cg = tail call double @llvm.fmuladd.f64(double %.sroa.13.0.copyload, double %i.cf, double %i.ce)
  %i.ch = load double, ptr %i.c, align 8, !tbaa !1104
  %i.ci = tail call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload, double %i.ch, double %i.cg)
  store double %i.ci, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !1104
  %i.cj = load double, ptr %i.d, align 8, !tbaa !1104
  %i.ck = load double, ptr %i.e, align 8, !tbaa !1104
  %i.cl = fmul double %.sroa.12.0.copyload, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %.sroa.11.0.copyload, double %i.cj, double %i.cl)
  %i.cn = load double, ptr %i.f, align 8, !tbaa !1104
  %i.co = tail call double @llvm.fmuladd.f64(double %.sroa.13.0.copyload, double %i.cn, double %i.cm)
  %i.cp = load double, ptr %i.g, align 8, !tbaa !1104
  %i.cq = tail call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload, double %i.cp, double %i.co)
  store double %i.cq, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1104
  %i.cr = load double, ptr %i.h, align 8, !tbaa !1104
  %i.cs = load double, ptr %i.i, align 8, !tbaa !1104
  %i.ct = fmul double %.sroa.12.0.copyload, %i.cs
  %i.cu = tail call double @llvm.fmuladd.f64(double %.sroa.11.0.copyload, double %i.cr, double %i.ct)
  %i.cv = load double, ptr %i.j, align 8, !tbaa !1104
  %i.cw = tail call double @llvm.fmuladd.f64(double %.sroa.13.0.copyload, double %i.cv, double %i.cu)
  %i.cx = load double, ptr %i.k, align 8, !tbaa !1104
  %i.cy = tail call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload, double %i.cx, double %i.cw)
  store double %i.cy, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1104
  %i.cz = load double, ptr %i.l, align 8, !tbaa !1104
  %i.da = load double, ptr %i.m, align 8, !tbaa !1104
  %i.db = fmul double %.sroa.12.0.copyload, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %.sroa.11.0.copyload, double %i.cz, double %i.db)
  %i.dd = load double, ptr %i.n, align 8, !tbaa !1104
  %i.de = tail call double @llvm.fmuladd.f64(double %.sroa.13.0.copyload, double %i.dd, double %i.dc)
  %i.df = load double, ptr %i.o, align 8, !tbaa !1104
  %i.dg = tail call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload, double %i.df, double %i.de)
  store double %i.dg, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !1104
  %i.dh = load double, ptr %1, align 8, !tbaa !1104
  %i.di = load double, ptr %i.a, align 8, !tbaa !1104
  %i.dj = fmul double %.sroa.16.0.copyload, %i.di
  %i.dk = tail call double @llvm.fmuladd.f64(double %.sroa.15.0.copyload, double %i.dh, double %i.dj)
  %i.dl = load double, ptr %i.b, align 8, !tbaa !1104
  %i.dm = tail call double @llvm.fmuladd.f64(double %.sroa.17.0.copyload, double %i.dl, double %i.dk)
  %i.dn = load double, ptr %i.c, align 8, !tbaa !1104
  %i.do = tail call double @llvm.fmuladd.f64(double %.sroa.18.0.copyload, double %i.dn, double %i.dm)
  store double %i.do, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !1104
  %i.dp = load double, ptr %i.d, align 8, !tbaa !1104
  %i.dq = load double, ptr %i.e, align 8, !tbaa !1104
  %i.dr = fmul double %.sroa.16.0.copyload, %i.dq
  %i.ds = tail call double @llvm.fmuladd.f64(double %.sroa.15.0.copyload, double %i.dp, double %i.dr)
  %i.dt = load double, ptr %i.f, align 8, !tbaa !1104
  %i.du = tail call double @llvm.fmuladd.f64(double %.sroa.17.0.copyload, double %i.dt, double %i.ds)
  %i.dv = load double, ptr %i.g, align 8, !tbaa !1104
  %i.dw = tail call double @llvm.fmuladd.f64(double %.sroa.18.0.copyload, double %i.dv, double %i.du)
  store double %i.dw, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !1104
  %i.dx = load double, ptr %i.h, align 8, !tbaa !1104
  %i.dy = load double, ptr %i.i, align 8, !tbaa !1104
  %i.dz = fmul double %.sroa.16.0.copyload, %i.dy
  %i.ea = tail call double @llvm.fmuladd.f64(double %.sroa.15.0.copyload, double %i.dx, double %i.dz)
  %i.eb = load double, ptr %i.j, align 8, !tbaa !1104
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_04math10UnitaryMap15hasUniformScaleEv:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap8applyMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9525)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9526)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !1104, !noalias !9527
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load double, ptr %i.i, align 8, !tbaa !1104, !noalias !9527
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load double, ptr %i.k, align 8, !tbaa !1104, !noalias !9527
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = load double, ptr %i.m, align 8, !tbaa !1104, !noalias !9527
  %i.o = load double, ptr %2, align 8, !tbaa !1104, !noalias !9527 ; 2 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9527 ; 2 uses
  %i.q = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9527 ; 2 uses
  %i.r = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9527
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9527
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s
  %i.w = insertelement <2 x double> poison, double %i.o, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.r, <2 x double> %i.v)
  %i.z = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9527
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.z, <2 x double> %i.y)
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !1104, !noalias !9527
  %i.ae = fadd <2 x double> %i.ac, %i.ad
  %i.af = fmul double %i.p, %i.j
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.o, double %i.h, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double %i.ag)
  %i.ai = fadd double %i.n, %i.ah
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !1104, !alias.scope !9527
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !1104, !alias.scope !9527
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap15applyInverseMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9532)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9533)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load double, ptr %i.g, align 8, !tbaa !1104, !noalias !9534
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.j = load double, ptr %i.i, align 8, !tbaa !1104, !noalias !9534
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.l = load double, ptr %i.k, align 8, !tbaa !1104, !noalias !9534
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.n = load double, ptr %i.m, align 8, !tbaa !1104, !noalias !9534
  %i.o = load double, ptr %2, align 8, !tbaa !1104, !noalias !9534 ; 2 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9534 ; 2 uses
  %i.q = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9534 ; 2 uses
  %i.r = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9534
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9534
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s
  %i.w = insertelement <2 x double> poison, double %i.o, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.r, <2 x double> %i.v)
  %i.z = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9534
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.z, <2 x double> %i.y)
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !1104, !noalias !9534
  %i.ae = fadd <2 x double> %i.ac, %i.ad
  %i.af = fmul double %i.p, %i.j
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.o, double %i.h, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double %i.ag)
  %i.ai = fadd double %i.n, %i.ah
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !1104, !alias.scope !9534
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !1104, !alias.scope !9534
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap8applyIJTERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9539)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9540)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9541
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9541
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.k = load double, ptr %i.j, align 8, !tbaa !1104, !noalias !9541
  %i.l = load double, ptr %2, align 8, !tbaa !1104, !noalias !9541 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9541 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9541 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9541
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9541
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9541
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !1104, !alias.scope !9541
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !1104, !alias.scope !9541
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap8applyIJTERKNS1_4Vec3IdEES6_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9549)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9550)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9551
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9551
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.k = load double, ptr %i.j, align 8, !tbaa !1104, !noalias !9551
  %i.l = load double, ptr %2, align 8, !tbaa !1104, !noalias !9551 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9551 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9551 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9551
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9551
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9551
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !1104, !alias.scope !9551
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !1104, !alias.scope !9551
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap8applyIJCERKNS1_4Mat3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9560)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.e = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9561 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9561 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9561 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9561 ; 4 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !1104, !noalias !9561 ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9561 ; 4 uses
  %3 = load <2 x double>, ptr %i.l, align 8
  %i.r = load <3 x double>, ptr %2, align 8, !tbaa !1104, !noalias !9562 ; 3 uses
  %4 = load <2 x double>, ptr %i.m, align 8
  %i.s = load <3 x double>, ptr %i.j, align 8, !tbaa !1104, !noalias !9562 ; 3 uses
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <3 x i32> zeroinitializer
  %i.u = fmul <3 x double> %i.t, %i.s
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> zeroinitializer
  %i.w = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.r, <3 x double> %i.u)
  %5 = load <2 x double>, ptr %i.n, align 8
  %i.x = load <3 x double>, ptr %i.k, align 8, !tbaa !1104, !noalias !9562 ; 3 uses
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> %i.x, <3 x double> %i.w) ; 6 uses
  %i.aa = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.p, %i.aa
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.o, <2 x double> %i.ab)
  %i.ae = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.q, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !1104, !alias.scope !9563
  %i.ag = extractelement <3 x double> %i.z, i64 1
  %i.ah = fmul double %i.g, %i.ag
  %i.ai = extractelement <3 x double> %i.z, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.e, double %i.ah)
  %i.ak = extractelement <3 x double> %i.z, i64 2
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.i, double %i.aj)
  store double %i.al, ptr %.sroa.921.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9563
  %i.am = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.an = insertelement <2 x double> %i.am, double %i.g, i64 1 ; 4 uses
  %i.ao = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.an, %i.ao
  %i.aq = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ar = insertelement <2 x double> %i.aq, double %i.e, i64 1 ; 4 uses
  %i.as = shufflevector <3 x double> %i.r, <3 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.as, <2 x double> %i.ap)
  %i.au = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %i.i, i64 1 ; 4 uses
  %i.aw = shufflevector <3 x double> %i.x, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.aw, <2 x double> %i.at) ; 3 uses
  %i.ay = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.an, %i.ay
  %i.ba = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ba, <2 x double> %i.az)
  %i.bc = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bc, <2 x double> %i.bb) ; 3 uses
  %i.be = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bf = fmul <2 x double> %i.an, %i.be
  %i.bg = shufflevector <3 x double> %i.r, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.bg, <2 x double> %i.bf)
  %i.bi = shufflevector <3 x double> %i.x, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bi, <2 x double> %i.bh) ; 3 uses
  %i.bk = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.p, %i.bk
  %i.bm = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.o, <2 x double> %i.bl)
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.q, <2 x double> %i.bn)
  store <2 x double> %i.bp, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9563
  %i.bq = insertelement <2 x double> %i.am, double %i.g, i64 0
  %i.br = fmul <2 x double> %i.bq, %i.bd
  %i.bs = insertelement <2 x double> %i.aq, double %i.e, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> %i.au, double %i.i, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.bt)
  store <2 x double> %i.bv, ptr %.sroa.18.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9563
  %i.bw = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.an, %i.bw
  %i.by = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ar, <2 x double> %i.bx)
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.av, <2 x double> %i.bz)
  store <2 x double> %i.cb, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9563
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap8applyIJCERKNS1_4Mat3IdEERKNS1_4Vec3IdEESA_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9575)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.e = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9576 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9576 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9576 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.921.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9576 ; 4 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !1104, !noalias !9576 ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9576 ; 4 uses
  %5 = load <2 x double>, ptr %i.l, align 8
  %i.r = load <3 x double>, ptr %2, align 8, !tbaa !1104, !noalias !9577 ; 3 uses
  %6 = load <2 x double>, ptr %i.m, align 8
  %i.s = load <3 x double>, ptr %i.j, align 8, !tbaa !1104, !noalias !9577 ; 3 uses
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <3 x i32> zeroinitializer
  %i.u = fmul <3 x double> %i.t, %i.s
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> zeroinitializer
  %i.w = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.r, <3 x double> %i.u)
  %7 = load <2 x double>, ptr %i.n, align 8
  %i.x = load <3 x double>, ptr %i.k, align 8, !tbaa !1104, !noalias !9577 ; 3 uses
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> %i.x, <3 x double> %i.w) ; 6 uses
  %i.aa = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.p, %i.aa
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.o, <2 x double> %i.ab)
  %i.ae = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.q, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !1104, !alias.scope !9578
  %i.ag = extractelement <3 x double> %i.z, i64 1
  %i.ah = fmul double %i.g, %i.ag
  %i.ai = extractelement <3 x double> %i.z, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.e, double %i.ah)
  %i.ak = extractelement <3 x double> %i.z, i64 2
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.i, double %i.aj)
  store double %i.al, ptr %.sroa.921.0..sroa_idx.i.i, align 8, !tbaa !1104, !alias.scope !9578
  %i.am = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.an = insertelement <2 x double> %i.am, double %i.g, i64 1 ; 4 uses
  %i.ao = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.an, %i.ao
  %i.aq = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ar = insertelement <2 x double> %i.aq, double %i.e, i64 1 ; 4 uses
  %i.as = shufflevector <3 x double> %i.r, <3 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.as, <2 x double> %i.ap)
  %i.au = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %i.i, i64 1 ; 4 uses
  %i.aw = shufflevector <3 x double> %i.x, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.aw, <2 x double> %i.at) ; 3 uses
  %i.ay = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.an, %i.ay
  %i.ba = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ba, <2 x double> %i.az)
  %i.bc = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bc, <2 x double> %i.bb) ; 3 uses
  %i.be = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bf = fmul <2 x double> %i.an, %i.be
  %i.bg = shufflevector <3 x double> %i.r, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.bg, <2 x double> %i.bf)
  %i.bi = shufflevector <3 x double> %i.x, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bi, <2 x double> %i.bh) ; 3 uses
  %i.bk = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.p, %i.bk
  %i.bm = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.o, <2 x double> %i.bl)
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.q, <2 x double> %i.bn)
  store <2 x double> %i.bp, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !tbaa !1104, !alias.scope !9578
  %i.bq = insertelement <2 x double> %i.am, double %i.g, i64 0
  %i.br = fmul <2 x double> %i.bq, %i.bd
  %i.bs = insertelement <2 x double> %i.aq, double %i.e, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> %i.au, double %i.i, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.bt)
  store <2 x double> %i.bv, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !tbaa !1104, !alias.scope !9578
  %i.bw = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.an, %i.bw
  %i.by = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ar, <2 x double> %i.bx)
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.av, <2 x double> %i.bz)
  store <2 x double> %i.cb, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !1104, !alias.scope !9578
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math10UnitaryMap11determinantEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load double, ptr %i.a, align 8, !tbaa !1200
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math10UnitaryMap11determinantERKNS1_4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load double, ptr %i.a, align 8, !tbaa !1200
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap9voxelSizeEv(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap9voxelSizeERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math10UnitaryMap4readERSi(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef 128) ; 0 uses
  tail call void @_ZN7openvdb5v13_04math9AffineMap18updateAccelerationEv(ptr noundef nonnull align 8 dereferenceable(376) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap5writeERSo(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 noundef 128) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNK7openvdb5v13_04math9AffineMap3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(376) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !1127
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1125
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %3, align 8, !tbaa !1127   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !1126
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !9583)
  call void @llvm.experimental.noalias.scope.decl(metadata !9584)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !1122, !alias.scope !9585
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !1125, !alias.scope !9585
  store i8 0, ptr %i.k, align 8, !tbaa !1126, !alias.scope !9585
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1177, !noalias !9585 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !9585 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1178, !noalias !9585 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !1127, !alias.scope !9585 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !1126, !alias.scope !9585
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #35
  br label %.body

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %2, align 8, !tbaa !1113
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !1113
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !1113
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1127 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !1126
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !1113
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.g:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !1127  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04math10UnitaryMapC2ERKNS1_4Mat4IdEE:bb.a
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
  %.sroa.0 = alloca [9 x double], align 16        ; 42 uses
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
  %.sroa.0.48..sroa_idx167 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  store <2 x double> %i.g, ptr %.sroa.0.48..sroa_idx167, align 16, !tbaa !1104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.64..sroa_idx172 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  store double %i.i, ptr %.sroa.0.64..sroa_idx172, align 16, !tbaa !1104
  %i.j = load double, ptr %0, align 8, !tbaa !1104
  %.sroa.0.0..sroa.0.0.104 = load double, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.8..sroa_idx144 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8. = load double, ptr %.sroa.0.8..sroa_idx144, align 8, !tbaa !1104
  %.sroa.0.16..sroa_idx149 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16. = load double, ptr %.sroa.0.16..sroa_idx149, align 16, !tbaa !1104
  %scevgep.164 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %1 = load <2 x double>, ptr %scevgep.164, align 8
  %i.k = shufflevector <2 x double> %1, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load double, ptr %i.l, align 8, !tbaa !1104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !1104
  %i.p = insertelement <4 x double> %i.k, double %i.m, i64 1
  %i.q = shufflevector <2 x double> %i.o, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.r = shufflevector <4 x double> %i.p, <4 x double> %i.q, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load double, ptr %i.t, align 8, !tbaa !1104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load double, ptr %i.v, align 8, !tbaa !1104
  %i.x = load <2 x double>, ptr %i.s, align 8, !tbaa !1104
  %i.y = insertelement <4 x double> poison, double %i.u, i64 2
  %i.z = insertelement <4 x double> %i.y, double %i.w, i64 3
  %i.aa = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ab = shufflevector <4 x double> %i.aa, <4 x double> %i.z, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.64..sroa_idx173 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  store double %i.ad, ptr %.sroa.0.64..sroa_idx173, align 16, !tbaa !1104
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !1104
  %scevgep.283 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load <2 x double>, ptr %scevgep.283, align 8, !tbaa !1104
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load <2 x double>, ptr %i.ah, align 8, !tbaa !1104
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %2 = load <2 x double>, ptr %i.aj, align 8
  %i.ak = shufflevector <2 x double> %2, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load double, ptr %i.al, align 8, !tbaa !1104
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load <2 x double>, ptr %i.an, align 8, !tbaa !1104
  %i.ap = insertelement <4 x double> %i.ak, double %i.am, i64 1
  %i.aq = shufflevector <2 x double> %i.ao, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x double> %i.ap, <4 x double> %i.aq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.at = load double, ptr %i.as, align 8, !tbaa !1104 ; 3 uses
  %.sroa.0.64..sroa_idx174 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  store double %i.at, ptr %.sroa.0.64..sroa_idx174, align 16, !tbaa !1104
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !1104
  %scevgep.3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load <2 x double>, ptr %scevgep.3, align 8, !tbaa !1104
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = fneg double %i.at
  %i.bd = fneg double %i.af
  %.sroa.0.24..sroa_idx154 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.118 = load <2 x double>, ptr %.sroa.0.24..sroa_idx154, align 8, !tbaa !1104 ; 3 uses
  store <4 x double> %i.r, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.24..sroa_idx155 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.120 = load double, ptr %.sroa.0.24..sroa_idx155, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.0..sroa.0.0. = load <2 x double>, ptr %.sroa.0, align 16, !tbaa !1104 ; 2 uses
  %.sroa.0.16..sroa_idx150 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.112 = load double, ptr %.sroa.0.16..sroa_idx150, align 16, !tbaa !1104
  store <2 x double> %i.ag, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.16..sroa_idx148 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <2 x double> %i.ai, ptr %.sroa.0.16..sroa_idx148, align 16, !tbaa !1104
  %.sroa.0.0..sroa.0.0.105 = load double, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.8..sroa_idx145 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8.107 = load double, ptr %.sroa.0.8..sroa_idx145, align 8, !tbaa !1104
  %.sroa.0.16..sroa_idx151 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.114 = load double, ptr %.sroa.0.16..sroa_idx151, align 16, !tbaa !1104
  store <2 x double> %i.aw, ptr %.sroa.0, align 16, !tbaa !1104
  %3 = load <2 x double>, ptr %i.ax, align 8
  %i.be = shufflevector <2 x double> %3, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bf = load double, ptr %i.ay, align 8, !tbaa !1104
  %i.bg = load <2 x double>, ptr %i.az, align 8, !tbaa !1104
  %i.bh = insertelement <4 x double> %i.be, double %i.bf, i64 1
  %i.bi = shufflevector <2 x double> %i.bg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x double> %i.bh, <4 x double> %i.bi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bk = load <2 x double>, ptr %i.ba, align 8, !tbaa !1104
  %i.bl = load double, ptr %i.bb, align 8, !tbaa !1104
  %.sroa.0.64..sroa_idx175 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  store double %i.bl, ptr %.sroa.0.64..sroa_idx175, align 16, !tbaa !1104
  %i.bm = shufflevector <2 x double> %.sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.24..sroa.0.24.118, <2 x i32> <i32 1, i32 3>
  %i.bn = shufflevector <2 x double> %.sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.24..sroa.0.24.118, <2 x i32> <i32 0, i32 2>
  %.sroa.0.48..sroa_idx166 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.134 = load <2 x double>, ptr %.sroa.0.48..sroa_idx166, align 16, !tbaa !1104 ; 4 uses
  %.sroa.0.32..sroa_idx161 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.128 = load <2 x double>, ptr %.sroa.0.32..sroa_idx161, align 16, !tbaa !1104 ; 2 uses
  %.sroa.0.32..sroa_idx157 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  store <4 x double> %i.ab, ptr %.sroa.0.32..sroa_idx157, align 16, !tbaa !1104
  %.sroa.0.32..sroa_idx160 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.126 = load <2 x double>, ptr %.sroa.0.32..sroa_idx160, align 16, !tbaa !1104 ; 3 uses
  %.sroa.0.48..sroa_idx165 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.132 = load <2 x double>, ptr %.sroa.0.48..sroa_idx165, align 16, !tbaa !1104 ; 3 uses
  %.sroa.0.56..sroa_idx171 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.56..sroa.0.56.140 = load double, ptr %.sroa.0.56..sroa_idx171, align 8, !tbaa !1104
  %.sroa.0.32..sroa_idx158 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  store <4 x double> %i.ar, ptr %.sroa.0.32..sroa_idx158, align 16, !tbaa !1104
  %.sroa.0.40..sroa_idx163 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %.sroa.0.40..sroa.0.40. = load double, ptr %.sroa.0.40..sroa_idx163, align 8, !tbaa !1104
  %.sroa.0.32..sroa_idx159 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32. = load <2 x double>, ptr %.sroa.0.32..sroa_idx159, align 16, !tbaa !1104
  %.sroa.0.48..sroa_idx164 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48. = load <2 x double>, ptr %.sroa.0.48..sroa_idx164, align 16, !tbaa !1104 ; 3 uses
  %.sroa.0.24..sroa_idx153 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24. = load <2 x double>, ptr %.sroa.0.24..sroa_idx153, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.16..sroa_idx147 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <4 x double> %i.bj, ptr %.sroa.0.16..sroa_idx147, align 16, !tbaa !1104
  %.sroa.0.48..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  store <2 x double> %i.bk, ptr %.sroa.0.48..sroa_idx168, align 16, !tbaa !1104
  %i.bo = fneg <2 x double> %.sroa.0.48..sroa.0.48.
  %i.bp = fmul <2 x double> %.sroa.0.32..sroa.0.32., %i.bo
  %i.bq = shufflevector <2 x double> %.sroa.0.48..sroa.0.48., <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = insertelement <2 x double> %i.bq, double %i.at, i64 1
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.24..sroa.0.24., <2 x double> %i.br, <2 x double> %i.bp) ; 2 uses
  %i.bt = extractelement <2 x double> %.sroa.0.24..sroa.0.24., i64 0
  %i.bu = fmul double %i.bt, %i.bc
  %i.bv = extractelement <2 x double> %.sroa.0.48..sroa.0.48., i64 0
  %i.bw = tail call double @llvm.fmuladd.f64(double %.sroa.0.40..sroa.0.40., double %i.bv, double %i.bu)
  %i.bx = fmul double %.sroa.0.8..sroa.0.8.107, %i.bw
  %i.by = extractelement <2 x double> %i.bs, i64 1
  %i.bz = tail call double @llvm.fmuladd.f64(double %.sroa.0.0..sroa.0.0.105, double %i.by, double %i.bx)
  %i.ca = extractelement <2 x double> %i.bs, i64 0
  %i.cb = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.114, double %i.ca, double %i.bz)
  %i.cc = extractelement <2 x double> %.sroa.0.48..sroa.0.48.132, i64 0
  %i.cd = fneg double %i.cc
  %i.ce = extractelement <2 x double> %.sroa.0.32..sroa.0.32.126, i64 0
  %i.cf = fmul double %i.ce, %i.cd
  %i.cg = tail call double @llvm.fmuladd.f64(double %.sroa.0.24..sroa.0.24.120, double %.sroa.0.56..sroa.0.56.140, double %i.cf)
  %i.ch = shufflevector <2 x double> %.sroa.0.48..sroa.0.48.132, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x double> %i.ch, double %i.ad, i64 1 ; 2 uses
  %i.cj = fneg <2 x double> %i.ci
  %i.ck = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.126, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cl = insertelement <2 x double> %i.ck, double %.sroa.0.24..sroa.0.24.120, i64 1
  %i.cm = fmul <2 x double> %i.cl, %i.cj
  %i.cn = shufflevector <2 x double> %i.ci, <2 x double> %.sroa.0.48..sroa.0.48.132, <2 x i32> <i32 1, i32 2>
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.126, <2 x double> %i.cn, <2 x double> %i.cm) ; 2 uses
  %i.cp = fneg <2 x double> %.sroa.0.48..sroa.0.48.134
  %i.cq = shufflevector <2 x double> %i.co, <2 x double> %i.cp, <2 x i32> <i32 1, i32 2>
  %i.cr = fmul <2 x double> %i.bm, %i.cq
  %i.cs = shufflevector <2 x double> %i.co, <2 x double> %.sroa.0.48..sroa.0.48.134, <2 x i32> <i32 0, i32 3>
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.cs, <2 x double> %i.cr) ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0
  %i.cv = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.112, double %i.cg, double %i.cu)
  %i.cw = shufflevector <2 x double> %.sroa.0.48..sroa.0.48.134, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cx = insertelement <2 x double> %i.cw, double %i.i, i64 1 ; 2 uses
  %i.cy = fneg <2 x double> %i.cx
  %i.cz = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.128, <2 x double> %.sroa.0.24..sroa.0.24.118, <2 x i32> <i32 1, i32 2>
  %i.da = fmul <2 x double> %i.cz, %i.cy
  %i.db = shufflevector <2 x double> %i.cx, <2 x double> %.sroa.0.48..sroa.0.48.134, <2 x i32> <i32 1, i32 2>
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.128, <2 x double> %i.db, <2 x double> %i.da) ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 1
  %i.de = fmul double %.sroa.0.8..sroa.0.8., %i.dd
  %i.df = extractelement <2 x double> %i.dc, i64 0
  %i.dg = tail call double @llvm.fmuladd.f64(double %.sroa.0.0..sroa.0.0.104, double %i.df, double %i.de)
  %i.dh = extractelement <2 x double> %i.ct, i64 1
  %i.di = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16., double %i.dh, double %i.dg)
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.j, double %i.di, double 0.000000e+00)
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.cv, double %i.dj)
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.av, double %i.cb, double %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !1104
  %i.do = fneg double %i.dn
  %.sroa.0.48..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.138 = load double, ptr %.sroa.0.48..sroa_idx169, align 16, !tbaa !1104 ; 2 uses
  %.sroa.0.24..sroa_idx156 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.122 = load double, ptr %.sroa.0.24..sroa_idx156, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.32..sroa_idx162 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.130 = load <2 x double>, ptr %.sroa.0.32..sroa_idx162, align 16, !tbaa !1104 ; 3 uses
  %.sroa.0.56..sroa_idx170 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.56..sroa.0.56. = load <2 x double>, ptr %.sroa.0.56..sroa_idx170, align 8, !tbaa !1104 ; 3 uses
  %i.dp = fneg <2 x double> %.sroa.0.56..sroa.0.56.
  %i.dq = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dr = insertelement <2 x double> %i.dq, double %.sroa.0.24..sroa.0.24.122, i64 1
  %i.ds = fmul <2 x double> %i.dr, %i.dp
  %i.dt = shufflevector <2 x double> %.sroa.0.56..sroa.0.56., <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.du = insertelement <2 x double> %i.dt, double %.sroa.0.48..sroa.0.48.138, i64 1
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> %i.du, <2 x double> %i.ds) ; 2 uses
  %i.dw = fneg double %.sroa.0.48..sroa.0.48.138
  %.sroa.0.0..sroa.0.0.103 = load <2 x double>, ptr %.sroa.0, align 16, !tbaa !1104 ; 2 uses
  %i.dx = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.dy = insertelement <2 x double> %.sroa.0.0..sroa.0.0.103, double %i.dw, i64 0
  %i.dz = fmul <2 x double> %i.dx, %i.dy
  %i.ea = shufflevector <2 x double> %.sroa.0.0..sroa.0.0.103, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.eb = insertelement <2 x double> %i.ea, double %.sroa.0.24..sroa.0.24.122, i64 0
  %i.ec = shufflevector <2 x double> %.sroa.0.56..sroa.0.56., <2 x double> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.ec, <2 x double> %i.dz) ; 2 uses
  %.sroa.0.16..sroa_idx152 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.116 = load double, ptr %.sroa.0.16..sroa_idx152, align 16, !tbaa !1104
  %i.ee = extractelement <2 x double> %i.ed, i64 0
  %i.ef = extractelement <2 x double> %i.ed, i64 1
  %i.eg = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.116, double %i.ee, double %i.ef)
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.do, double %i.eg, double %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret double %i.eh
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
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04math19NonlinearFrustumMap4initEv:bb.a
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
  %i.bk = load <2 x double>, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bm = load <2 x double>, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !1104, !noalias !9688 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.by = load double, ptr %i.bx, align 8, !tbaa !1104, !noalias !9688
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !1104, !noalias !9688
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.cf = insertelement <2 x double> poison, double %i.bo, i64 0 ; 2 uses
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x double> %i.bm, double %i.ca, i64 1 ; 2 uses
  %i.ck = fmul <2 x double> %i.cj, zeroinitializer ; 2 uses
  %i.cl = insertelement <2 x double> %i.bk, double %i.by, i64 1 ; 3 uses
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> zeroinitializer, <2 x double> %i.ck) ; 4 uses
  %i.cn = fadd <2 x double> %i.cl, %i.ck          ; 2 uses
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> zeroinitializer, <2 x double> %i.co)
  %i.cq = fadd <2 x double> %i.ci, %i.cp          ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = shufflevector <2 x double> %i.cn, <2 x double> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> zeroinitializer, <2 x double> %i.ct)
  %i.cv = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fadd <2 x double> %i.cw, %i.cu          ; 2 uses
  %i.cy = extractelement <2 x double> %i.cq, i64 0
  %i.cz = extractelement <2 x double> %i.cq, i64 1 ; 3 uses
  %i.da = fsub double %i.cy, %i.cz                ; 2 uses
  %i.db = extractelement <2 x double> %i.cx, i64 0
  %i.dc = extractelement <2 x double> %i.cx, i64 1 ; 3 uses
  %i.dd = fsub double %i.db, %i.dc                ; 2 uses
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> zeroinitializer, <2 x double> %i.cj)
  %i.df = insertelement <2 x double> %i.cf, double %i.cc, i64 1
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> zeroinitializer, <2 x double> %i.de) ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 0
  %i.di = fadd double %i.dh, %i.bq
  %i.dj = extractelement <2 x double> %i.dg, i64 1
  %i.dk = fadd double %i.ce, %i.dj
  %i.dl = fsub double %i.di, %i.cz                ; 2 uses
  %i.dm = load double, ptr %i.br, align 8, !tbaa !1104, !noalias !9688 ; 2 uses
  %4 = load <2 x double>, ptr %i.bs, align 8
  %i.dn = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %i.dn, <double 0.000000e+00, double 1.000000e+00> ; 2 uses
  %i.dp = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> zeroinitializer, <2 x double> %i.do) ; 2 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 0 ; 2 uses
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.bu, double 0.000000e+00, double %i.ds)
  %i.du = fadd double %i.bw, %i.dt                ; 2 uses
  %i.dv = extractelement <2 x double> %i.do, i64 0
  %i.dw = fadd double %i.dm, %i.dv
  %i.dx = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ea = insertelement <2 x double> %i.dz, double %i.dw, i64 1
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> zeroinitializer, <2 x double> %i.ea)
  %i.ec = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fadd <2 x double> %i.ed, %i.eb
  %i.ef = insertelement <2 x double> poison, double %i.du, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fsub <2 x double> %i.ee, %i.eg          ; 2 uses
  %i.ei = fsub double %i.dk, %i.dc                ; 2 uses
  %i.ej = extractelement <2 x double> %i.cm, i64 0
  %i.ek = fadd double %i.bo, %i.ej
  %i.el = fadd double %i.bq, %i.ek
  %i.em = fadd double %i.bu, %i.ds
  %i.en = fadd double %i.bw, %i.em
  %i.eo = extractelement <2 x double> %i.cm, i64 1
  %i.ep = fadd double %i.cc, %i.eo
  %i.eq = fadd double %i.ce, %i.ep
  %i.er = fsub double %i.el, %i.cz                ; 2 uses
  %i.es = fsub double %i.en, %i.du                ; 2 uses
  %i.et = fsub double %i.eq, %i.dc                ; 2 uses
  %i.eu = extractelement <2 x double> %i.eh, i64 0 ; 2 uses
  %i.ev = extractelement <2 x double> %i.eh, i64 1 ; 2 uses
  %i.ew = fmul double %i.ev, %i.eu
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dl, double %i.ew)
  %i.ey = tail call noundef double @llvm.fmuladd.f64(double %i.dd, double %i.ei, double %i.ex)
  %i.ez = tail call noundef double @llvm.fabs.f64(double %i.ey)
  %i.fa = fcmp ule double %i.ez, f0x3E7AD7F29ABCAF48
  br i1 %i.fa, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.fb = fmul double %i.eu, %i.es
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.er, double %i.fb)
  %i.fd = tail call noundef double @llvm.fmuladd.f64(double %i.ei, double %i.et, double %i.fc)
  %i.fe = tail call noundef double @llvm.fabs.f64(double %i.fd)
  %i.ff = fcmp ule double %i.fe, f0x3E7AD7F29ABCAF48
  br i1 %i.ff, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.fg = fmul double %i.es, %i.ev
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.er, double %i.da, double %i.fg)
  %i.fi = tail call noundef double @llvm.fmuladd.f64(double %i.et, double %i.dd, double %i.fh)
  %i.fj = tail call noundef double @llvm.fabs.f64(double %i.fi)
  %i.fk = fcmp ule double %i.fj, f0x3E7AD7F29ABCAF48
  br i1 %i.fk, label %bb.p, label %.sink.split

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
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyIJTERKNS1_4Vec3IdEES6_:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6) #26 ; 0 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !1127  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !1126
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ag, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.af, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ai = call ptr @__cxa_begin_catch(ptr %.1) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.aj, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.o unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %4, align 8, !tbaa !1127  ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.w
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.k
  %i.an = load i64, ptr %i.w, align 8, !tbaa !1126
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.ak

bb.l:                                             ; preds = %bb.a
  %i.ap = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero acquire, align 8
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit, !prof !1187

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #26
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero, i8 0, i64 72, i1 false)
  %i.as = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #26
  br label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit

_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit:       ; preds = %bb.l, %bb.m, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.au = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.av = insertelement <2 x double> %i.au, double %i.s, i64 0
  %i.aw = fdiv <2 x double> %i.r, %i.av           ; 3 uses
  %i.ax = fsub double %.sroa.0.0.copyload, %i.b
  %i.ay = fsub double %i.ax, %i.i
  %i.az = extractelement <2 x double> %i.aw, i64 0
  %i.ba = fmul double %i.ay, %i.az
  %i.bb = load double, ptr %i.k, align 8, !tbaa !1283
  %i.bc = fdiv double 1.000000e+00, %i.bb         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.bg = load <2 x double>, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !1104 ; 2 uses
  %i.bj = fneg double %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !1104
  %i.bm = fmul double %i.bi, %i.bc
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = fsub double %.sroa.7.0.copyload, %i.d
  %i.bq = extractelement <2 x double> %i.aw, i64 1
  %i.br = fmul double %i.s, %i.bq                 ; 2 uses
  %i.bs = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 1 ; 2 uses
  %i.bu = fsub <2 x double> %i.bt, %i.o
  %i.bv = fmul <2 x double> %i.bt, %i.o
  %i.bw = shufflevector <2 x double> %i.bu, <2 x double> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.bx = fmul <2 x double> %i.bw, %i.aw          ; 2 uses
  %i.by = load <2 x double>, ptr %i.at, align 8, !tbaa !1104
  %i.bz = load <2 x double>, ptr %i.bd, align 8, !tbaa !1104 ; 2 uses
  %i.ca = fneg <2 x double> %i.bz                 ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cd = load <2 x double>, ptr %i.be, align 8, !tbaa !1104
  %i.ce = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x double> %i.bz, %i.cf
  %i.ch = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ci = insertelement <2 x double> %i.ch, double %i.ba, i64 0
  %i.cj = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ck = fmul <2 x double> %i.ci, %i.cj          ; 3 uses
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x double> %i.cl, %i.ca
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.by, <2 x double> %i.cm)
  %i.co = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x double> %i.co, %i.ca
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cd, <2 x double> %i.cp)
  %i.cr = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.ck, %i.cs
  %i.cu = insertelement <2 x double> %i.bg, double %i.bl, i64 1
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cu, <2 x double> %i.ct) ; 2 uses
  %i.cw = load double, ptr %2, align 8, !tbaa !1104 ; 2 uses
  %i.cx = load double, ptr %i.bn, align 8, !tbaa !1104 ; 2 uses
  %i.cy = load double, ptr %i.bo, align 8, !tbaa !1104 ; 2 uses
  %i.cz = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x double> %i.da, %i.cq
  %i.dc = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.cn, <2 x double> %i.db)
  %i.df = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.cg, <2 x double> %i.de)
  store <2 x double> %i.dh, ptr %0, align 8, !tbaa !1104
  %i.di = extractelement <2 x double> %i.cv, i64 1
  %i.dj = fmul double %i.cx, %i.di
  %i.dk = extractelement <2 x double> %i.cv, i64 0
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.dk, double %i.dj)
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.bm, double %i.dl)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.dm, ptr %i.dn, align 8, !tbaa !1104
  ret void

bb.o:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyIJCERKNS1_4Mat3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9737)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.e = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9738 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.g = load double, ptr %i.f, align 8, !tbaa !1104, !noalias !9738 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104, !noalias !9738 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9738 ; 4 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !1104, !noalias !9738 ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9738 ; 4 uses
  %3 = load <2 x double>, ptr %i.l, align 8
  %i.r = load <3 x double>, ptr %2, align 8, !tbaa !1104, !noalias !9739 ; 3 uses
  %4 = load <2 x double>, ptr %i.m, align 8
  %i.s = load <3 x double>, ptr %i.j, align 8, !tbaa !1104, !noalias !9739 ; 3 uses
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <3 x i32> zeroinitializer
  %i.u = fmul <3 x double> %i.t, %i.s
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> zeroinitializer
  %i.w = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.r, <3 x double> %i.u)
  %5 = load <2 x double>, ptr %i.n, align 8
  %i.x = load <3 x double>, ptr %i.k, align 8, !tbaa !1104, !noalias !9739 ; 3 uses
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> %i.x, <3 x double> %i.w) ; 6 uses
  %i.aa = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.p, %i.aa
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.o, <2 x double> %i.ab)
  %i.ae = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.q, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !1104, !alias.scope !9740
  %i.ag = extractelement <3 x double> %i.z, i64 1
  %i.ah = fmul double %i.g, %i.ag
  %i.ai = extractelement <3 x double> %i.z, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.e, double %i.ah)
  %i.ak = extractelement <3 x double> %i.z, i64 2
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.i, double %i.aj)
  store double %i.al, ptr %.sroa.921.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9740
  %i.am = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.an = insertelement <2 x double> %i.am, double %i.g, i64 1 ; 4 uses
  %i.ao = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.an, %i.ao
  %i.aq = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ar = insertelement <2 x double> %i.aq, double %i.e, i64 1 ; 4 uses
  %i.as = shufflevector <3 x double> %i.r, <3 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.as, <2 x double> %i.ap)
  %i.au = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %i.i, i64 1 ; 4 uses
  %i.aw = shufflevector <3 x double> %i.x, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.aw, <2 x double> %i.at) ; 3 uses
  %i.ay = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.an, %i.ay
  %i.ba = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ba, <2 x double> %i.az)
  %i.bc = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bc, <2 x double> %i.bb) ; 3 uses
  %i.be = shufflevector <3 x double> %i.s, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bf = fmul <2 x double> %i.an, %i.be
  %i.bg = shufflevector <3 x double> %i.r, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.bg, <2 x double> %i.bf)
  %i.bi = shufflevector <3 x double> %i.x, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bi, <2 x double> %i.bh) ; 3 uses
  %i.bk = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.p, %i.bk
  %i.bm = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.o, <2 x double> %i.bl)
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.q, <2 x double> %i.bn)
  store <2 x double> %i.bp, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9740
  %i.bq = insertelement <2 x double> %i.am, double %i.g, i64 0
  %i.br = fmul <2 x double> %i.bq, %i.bd
  %i.bs = insertelement <2 x double> %i.aq, double %i.e, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> %i.au, double %i.i, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.bt)
  store <2 x double> %i.bv, ptr %.sroa.18.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9740
  %i.bw = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.an, %i.bw
  %i.by = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ar, <2 x double> %i.bx)
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.av, <2 x double> %i.bz)
  store <2 x double> %i.cb, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !1104, !alias.scope !9740
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyIJCERKNS1_4Mat3IdEERKNS1_4Vec3IdEESA_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.sroa.6 = alloca [4 x double], align 16        ; 11 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.12.0.copyload = load double, ptr %.sroa.12.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9745
  %i.d = fsub double %.sroa.12.0.copyload, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.f = load <2 x double>, ptr %4, align 8
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9745
  %i.h = fsub <2 x double> %i.f, %i.g
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9746
  %i.j = fsub <2 x double> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !1283, !noalias !9746
  %i.m = fmul double %i.d, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.o = load double, ptr %i.n, align 8, !tbaa !1284, !noalias !9746 ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.m, double 1.000000e+00) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.r = load double, ptr %i.q, align 8, !tbaa !1285, !noalias !9746 ; 2 uses
  %i.s = fdiv double %i.p, %i.r
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.j, %i.u             ; 5 uses
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.p)
  %i.x = fcmp ule double %i.w, 1.000000e-15
  br i1 %i.x, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !1122
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !1125
  store i8 0, ptr %i.y, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.71, i64 noundef 81)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7) #26 ; 0 uses
  %i.ac = load ptr, ptr %7, align 8, !tbaa !1127  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !1126
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.ai, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.ah, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ak = call ptr @__cxa_begin_catch(ptr %.1) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.al, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.u unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %5, align 8, !tbaa !1127  ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.y
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.k
  %i.ap = load i64, ptr %i.y, align 8, !tbaa !1126
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.am

bb.l:                                             ; preds = %bb.a
  %i.ar = fdiv double 1.000000e+00, %i.p          ; 3 uses
  %i.as = fmul double %i.r, %i.ar                 ; 2 uses
  %i.at = fmul double %i.o, %i.as
  %i.au = fmul double %i.ar, %i.at                ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.aw = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit, !prof !1187

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #26
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero, i8 0, i64 72, i1 false)
  %i.az = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #26
  br label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit

_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit:       ; preds = %bb.l, %bb.m, %bb.n
  %i.ba = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104, !prof !1187

bb.o:                                             ; preds = %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #26
  %.not.i103 = icmp eq i32 %i.bc, 0
  br i1 %.not.i103, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero, i8 0, i64 72, i1 false)
  %i.bd = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE4zeroEvE5sZero) #26
  br label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104

_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104:    ; preds = %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit, %bb.o, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !1104 ; 11 uses
  %i.bh = load <2 x double>, ptr %i.av, align 8, !tbaa !1104 ; 5 uses
end_hunk_5
begin_hunk_6_@_ZNK7openvdb5v13_04math19NonlinearFrustumMap9postScaleERKNS1_4Vec3IdEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #35
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn9 = phi { ptr, i32 } [ %i.m, %bb.o ], [ %.pn10, %bb.p ]
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap9postShearEdNS1_4AxisES3_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, double noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(520) ptr @_Znwm(i64 noundef 520) #32 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load double, ptr %i.b, align 8, !tbaa !1278
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load double, ptr %i.d, align 8, !tbaa !1274
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZNK7openvdb5v13_04math9AffineMap9postShearEdNS1_4AxisES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(376) %i.f, double noundef %2, i32 noundef %3, i32 noundef %4)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN7openvdb5v13_04math19NonlinearFrustumMapC2ERKNS1_4BBoxINS1_4Vec3IdEEEEddRKSt10shared_ptrINS1_7MapBaseEE(ptr noundef nonnull align 8 dereferenceable(520) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.g, double noundef %i.c, double noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.c unwind label %.thread13

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %0, align 8, !tbaa !1110
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !1111
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.h unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = call ptr @__cxa_begin_catch(ptr %i.k) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #35
  invoke void @__cxa_rethrow() #33
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #34
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 1, ptr %i.p, align 8, !tbaa !1115
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 1, ptr %i.q, align 4, !tbaa !1116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.i, align 8, !tbaa !1113
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.a, ptr %i.r, align 8, !tbaa !1277
  store ptr %i.i, ptr %i.h, align 8, !tbaa !1111
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1111 ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !1115
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !1116
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !1113
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !28
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !1113
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !28
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !1126
  %.not.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !1131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

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
  %i.l = load double, ptr %2, align 8, !tbaa !1104, !noalias !9788 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9788 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9788 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9788
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9788
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9788
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
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
  %4 = load <2 x double>, ptr %i.g, align 8
  %i.h = load <2 x double>, ptr %i.f, align 8, !tbaa !1104 ; 3 uses
  %i.i = extractelement <2 x double> %i.h, i64 1  ; 2 uses
  %i.j = fmul double %i.d, %i.i
  %i.k = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.l = insertelement <2 x double> %i.k, double %i.j, i64 0
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.l, <2 x double> <double 1.000000e+00, double -0.000000e+00>)
  %i.n = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !1104 ; 2 uses
  %i.r = fmul double %i.i, %i.q                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9796)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9797)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load double, ptr %i.v, align 8, !tbaa !1104, !noalias !9798
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.y = load double, ptr %i.x, align 8, !tbaa !1104, !noalias !9798
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1104, !noalias !9798
  %i.ab = load <2 x double>, ptr %3, align 8
  %i.ac = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9795
  %i.ad = fsub <2 x double> %i.ab, %i.ac
  %i.ae = load <2 x double>, ptr %i.e, align 8, !tbaa !1104
  %i.af = fsub <2 x double> %i.ad, %i.ae
  %i.ag = load <2 x double>, ptr %2, align 8, !tbaa !1104
  %i.ah = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fmul <2 x double> %i.af, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.ai, %i.ak
  %i.am = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ag, <2 x double> %i.al) ; 4 uses
  %i.ao = load <2 x double>, ptr %i.s, align 8, !tbaa !1104, !noalias !9798
  %i.ap = load <2 x double>, ptr %i.t, align 8, !tbaa !1104, !noalias !9798
  %i.aq = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x double> %i.aq, %i.ap
  %i.as = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.ao, <2 x double> %i.ar)
  %i.au = load <2 x double>, ptr %i.u, align 8, !tbaa !1104, !noalias !9798
  %i.av = insertelement <2 x double> poison, double %i.r, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.au, <2 x double> %i.at)
  %i.ay = extractelement <2 x double> %i.an, i64 1
  %i.az = fmul double %i.ay, %i.y
  %i.ba = extractelement <2 x double> %i.an, i64 0
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.w, double %i.az)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.r, double %i.aa, double %i.bb)
  store <2 x double> %i.ax, ptr %0, align 8, !tbaa !1104, !alias.scope !9798
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bc, ptr %i.bd, align 8, !tbaa !1104, !alias.scope !9798
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
  %i.l = load double, ptr %2, align 8, !tbaa !1104, !noalias !9805 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9805 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9805 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9805
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !1104, !noalias !9805
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9805
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
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
  %4 = load <2 x double>, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.n = load double, ptr %i.m, align 8, !tbaa !1104, !noalias !9813
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.p = load double, ptr %i.o, align 8, !tbaa !1104, !noalias !9813
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.r = load double, ptr %i.q, align 8, !tbaa !1104, !noalias !9813
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load <2 x double>, ptr %3, align 8
  %i.u = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9812
  %i.v = fsub <2 x double> %i.t, %i.u
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !1104
  %i.x = fsub <2 x double> %i.v, %i.w
  %i.y = load <2 x double>, ptr %i.f, align 8, !tbaa !1104 ; 4 uses
  %i.z = extractelement <2 x double> %i.y, i64 1  ; 2 uses
  %i.aa = fmul double %i.d, %i.z
  %i.ab = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ac = insertelement <2 x double> %i.ab, double %i.aa, i64 0
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.ac, <2 x double> <double 1.000000e+00, double -0.000000e+00>)
  %i.ae = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x double> %i.ad, %i.ae          ; 2 uses
  %i.ag = load double, ptr %2, align 8, !tbaa !1104, !noalias !9813 ; 2 uses
  %i.ah = load double, ptr %i.i, align 8, !tbaa !1104, !noalias !9813 ; 2 uses
  %i.ai = load double, ptr %i.k, align 8, !tbaa !1104, !noalias !9813 ; 2 uses
  %i.aj = load <2 x double>, ptr %i.h, align 8, !tbaa !1104, !noalias !9813
  %i.ak = load <2 x double>, ptr %i.j, align 8, !tbaa !1104, !noalias !9813
  %i.al = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.am, %i.ak
  %i.ao = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.aj, <2 x double> %i.an)
  %i.ar = load <2 x double>, ptr %i.l, align 8, !tbaa !1104, !noalias !9813
  %i.as = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.ar, <2 x double> %i.aq)
  %i.av = fmul double %i.ah, %i.p
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.n, double %i.av)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.r, double %i.aw) ; 2 uses
  %i.ay = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x double> %i.x, %i.ay
  %i.ba = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x double> %i.az, %i.bb
  %i.bd = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.be = fdiv <2 x double> %i.bc, %i.bd
  %i.bf = fsub <2 x double> %i.au, %i.be
  %i.bg = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fdiv <2 x double> %i.bf, %i.bg
  store <2 x double> %i.bh, ptr %0, align 8, !tbaa !1104
  %i.bi = fdiv double %i.ax, %i.z
  store double %i.bi, ptr %i.s, align 8, !tbaa !1104
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
  %i.o = load double, ptr %2, align 8, !tbaa !1104, !noalias !9816 ; 2 uses
  %i.p = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9816 ; 2 uses
  %i.q = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9816 ; 2 uses
  %i.r = load double, ptr %i.e, align 8, !tbaa !1104, !noalias !9816 ; 2 uses
  %i.s = load <2 x double>, ptr %i.f, align 8, !tbaa !1104, !noalias !9816 ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.q, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x double> %i.p, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = fmul <2 x double> %i.u, %i.v
  %i.x = shufflevector <2 x double> %i.p, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.y = insertelement <2 x double> poison, double %i.o, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.z, <2 x double> %i.w)
  %i.ab = insertelement <2 x double> %i.d, double %i.h, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ad, <2 x double> %i.aa)
  %i.af = fmul double %i.q, %i.l
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.j, double %i.o, double %i.af)
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
  %4 = load <2 x double>, ptr %i.aa, align 8
  %i.ab = load <2 x double>, ptr %i.z, align 8, !tbaa !1104 ; 3 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  %i.ad = fmul double %i.q, %i.ac
  %i.ae = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 0
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.af, <2 x double> <double 1.000000e+00, double -0.000000e+00>)
  %i.ah = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.ag, %i.ah          ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 1 ; 2 uses
  %i.ak = fmul double %i.u, %i.aj
  %i.al = fmul double %i.y, %i.aj
  %i.am = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9821 ; 2 uses
  %i.an = load double, ptr %i.d, align 8, !tbaa !1104, !noalias !9821 ; 2 uses
  %i.ao = load <2 x double>, ptr %i.e, align 8, !tbaa !1104, !noalias !9821 ; 2 uses
  %i.ap = shufflevector <2 x double> %i.am, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.aq = shufflevector <2 x double> %i.am, <2 x double> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.ar = insertelement <2 x double> %i.c, double %i.g, i64 1
  %i.as = insertelement <2 x double> poison, double %i.an, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = load <2 x double>, ptr %i.h, align 8, !tbaa !1104, !noalias !9821 ; 2 uses
  %i.aw = load <2 x double>, ptr %2, align 8, !tbaa !1104, !noalias !9821 ; 4 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = fmul <2 x double> %i.ax, %i.ap
  %i.az = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.az, <2 x double> %i.ay)
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.at, <2 x double> %i.ba) ; 3 uses
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> %i.aw, <2 x i32> <i32 3, i32 1>
  %i.bd = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.be = insertelement <2 x double> %i.bd, double %i.al, i64 1
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = insertelement <2 x double> %i.av, double %i.ak, i64 1
  %i.bh = shufflevector <2 x double> %i.aw, <2 x double> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bh, <2 x double> %i.bf) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.j, double %i.an, double %i.bj)
  %i.bl = fmul <2 x double> %i.bb, %i.au
  %i.bm = extractelement <2 x double> %i.bi, i64 1
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.bk, double %i.bm)
  store <2 x double> %i.bl, ptr %0, align 8, !tbaa !1104
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bn, ptr %i.bo, align 8, !tbaa !1104
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

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.z, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !1125 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  switch i64 %i.aa, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !1126
  store i8 %i.ac, ptr %i.w, align 1, !tbaa !1126
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !1125 ; 2 uses
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !1125
  %i.ae = load ptr, ptr %2, align 8, !tbaa !1127
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store i8 0, ptr %i.af, align 1, !tbaa !1126
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !1127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.y, ptr %2, align 8, !tbaa !1127
  %i.ag = load <2 x i64>, ptr %i.e, align 8, !tbaa !1126
  store <2 x i64> %i.ag, ptr %i.b, align 8, !tbaa !1126
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !1126
  store ptr %i.y, ptr %2, align 8, !tbaa !1127
  %i.ai = load <2 x i64>, ptr %i.e, align 8, !tbaa !1126
  store <2 x i64> %i.ai, ptr %i.b, align 8, !tbaa !1126
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.w, ptr %4, align 8, !tbaa !1127
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !1126
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.d, ptr %4, align 8, !tbaa !1127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.aj = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.w, %bb.i ], [ %i.d, %bb.j ]
  store i64 0, ptr %i.e, align 8, !tbaa !1125
  store i8 0, ptr %i.aj, align 1, !tbaa !1126
  %i.ak = load ptr, ptr %4, align 8, !tbaa !1127  ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.d
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.am = load i64, ptr %i.d, align 8, !tbaa !1126
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !1113
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !1113
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.at, align 8, !tbaa !1113
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1127 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EE4nextEj:bb.a
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.f, %bb.d ], [ %i.s, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.r, %.critedge.loopexit.i.i.i.i ]
  %i.t = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.u = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.b, %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ 32768, %bb.b ], [ %i.e, %bb.c ], [ %i.w, %.critedge.i.i.i.i ], [ 32768, %.lr.ph.i.i.i.i.preheader ], [ 32768, %.lr.ph.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !1360
  %i.x = icmp ne i32 %.118.i.i.i.i, 32768
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !2218
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !2219 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.ac) #36 ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !2219
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.promoted.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.ab
  br i1 %.not2.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ah, %bb.h ], [ %.promoted.i.i.i.i, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2113
  %.not1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not1.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ae) #36 ; 3 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !2219
  %.not.i.i.i.i3 = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i3, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !161

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i2
  %i.ai = phi ptr [ %i.ab, %bb.h ], [ %i.ae, %.lr.ph.i.i.i.i2 ]
  %i.aj = icmp ne ptr %i.ai, %i.ab
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, %bb.g, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit
  %i.ak = phi i1 [ %i.x, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit ], [ false, %bb.a ], [ %i.aj, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i ], [ false, %bb.g ]
  ret i1 %i.ak
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 8 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %2, align 4, !tbaa !1131
  %i.d = load i32, ptr %i.b, align 8, !tbaa !1131
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1131
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1131
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1131
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1131
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = and i32 %i.e, -4096                      ; 13 uses
  %i.q = and i32 %i.j, -4096                      ; 13 uses
  %i.r = and i32 %i.o, -4096                      ; 7 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1301 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1131 ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1131 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1131
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !158

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !1131 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1131 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !1131
  %i.as = icmp slt i32 %i.r, %i.ar
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %.not37 = icmp eq i32 %1, 3
  br i1 %.not37, label %.lr.ph.i.i.i.i51, label %vector.ph107

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.b
  %.not3783 = icmp eq i32 %1, 3
  br i1 %.not3783, label %.thread, label %vector.ph107

.thread:                                          ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.at = zext i1 %4 to i8
  %i.au = load double, ptr %3, align 8, !tbaa !1104
  store double %i.au, ptr %6, align 8, !tbaa !2169
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !2170
  br label %.critedge.i66

vector.ph107:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #32 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %i.k, align 4, !tbaa !1131
  %i.az = load <2 x i32>, ptr %2, align 4, !tbaa !1131
  %i.ba = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ay, i64 2
  %i.bb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = and <4 x i32> %i.bc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bd, ptr %i.ax, align 8, !tbaa !1131
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = load <2 x double>, ptr %i.be, align 8
  %broadcast.splat109 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next112.3, %vector.body110 ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %broadcast.splat109, ptr %i.bf, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat109, ptr %i.bg, align 8, !tbaa !1126
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store <2 x double> %broadcast.splat109, ptr %i.bi, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat109, ptr %i.bj, align 8, !tbaa !1126
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store <2 x double> %broadcast.splat109, ptr %i.bl, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat109, ptr %i.bm, align 8, !tbaa !1126
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <2 x double> %broadcast.splat109, ptr %i.bo, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat109, ptr %i.bp, align 8, !tbaa !1126
  %index.next112.3 = add nuw nsw i64 %index111, 16 ; 2 uses
  %i.bq = icmp eq i64 %index.next112.3, 32768
  br i1 %i.bq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body110, !llvm.loop !11260

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body110
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !1301 ; 2 uses
  %.not12.i.i.i.i39 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i.i.i39, label %.critedge.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %.014.i.i.i.i41 = phi ptr [ %.1.i.i.i.i47, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.br, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i42 = phi ptr [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !1131 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !1131 ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i32 %i.bx, %i.q
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !1131
  %i.cc = icmp slt i32 %i.cb, %i.r
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.k, %.lr.ph.i.i.i.i40
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.l, %bb.j
  %.sink.i.i.i.i45 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ]
  %.19.i.i.i.i46 = phi ptr [ %.0813.i.i.i.i42, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ %.014.i.i.i.i41, %bb.l ], [ %.014.i.i.i.i41, %bb.j ], [ %.014.i.i.i.i41, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 %.sink.i.i.i.i45
  %.1.i.i.i.i47 = load ptr, ptr %i.cd, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i47, null
  br i1 %.not.i.i.i.i48, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i40, !llvm.loop !158

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %i.ce = icmp eq ptr %.19.i.i.i.i46, %i.u
  br i1 %i.ce, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !1131 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !1131 ; 2 uses
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp sgt i32 %i.q, %i.ck
  br i1 %i.cm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !1131
  %i.cp = icmp slt i32 %i.r, %i.co
  br i1 %i.cp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i46, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i46, %bb.m ], [ %.19.i.i.i.i46, %bb.o ]
  %i.cq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  br label %bb.af

.lr.ph.i.i.i.i51:                                 ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.cr = zext i1 %4 to i8
  %i.cs = load double, ptr %3, align 8, !tbaa !1104
  store double %i.cs, ptr %6, align 8, !tbaa !2169
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.cr, ptr %i.ct, align 8, !tbaa !2170
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, %.lr.ph.i.i.i.i51
  %.014.i.i.i.i52 = phi ptr [ %i.t, %.lr.ph.i.i.i.i51 ], [ %.1.i.i.i.i58, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ] ; 7 uses
  %.0813.i.i.i.i53 = phi ptr [ %i.u, %.lr.ph.i.i.i.i51 ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !1131 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.p
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp sgt i32 %i.cv, %i.p
  br i1 %i.cx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !1131 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.q
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = icmp sgt i32 %i.cz, %i.q
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54: ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 40
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !1131
  %i.de = icmp slt i32 %i.dd, %i.r
  br i1 %i.de, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.t, %bb.r
  %.sink.i.i.i.i56 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ]
  %.19.i.i.i.i57 = phi ptr [ %.0813.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ %.014.i.i.i.i52, %bb.t ], [ %.014.i.i.i.i52, %bb.r ], [ %.014.i.i.i.i52, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ] ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 %.sink.i.i.i.i56
  %.1.i.i.i.i58 = load ptr, ptr %i.df, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.1.i.i.i.i58, null
  br i1 %.not.i.i.i.i59, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60, label %bb.q, !llvm.loop !158

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55
  %i.dg = icmp eq ptr %.19.i.i.i.i57, %i.u
  br i1 %i.dg, label %.critedge.i66, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !1131 ; 2 uses
  %i.dj = icmp slt i32 %i.p, %i.di
  br i1 %i.dj, label %.critedge.i66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp sgt i32 %i.p, %i.di
  br i1 %i.dk, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !1131 ; 2 uses
  %i.dn = icmp slt i32 %i.q, %i.dm
  br i1 %i.dn, label %.critedge.i66, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = icmp sgt i32 %i.q, %i.dm
  br i1 %i.do, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61: ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 40
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !1131
  %i.dr = icmp slt i32 %i.r, %i.dq
  br i1 %i.dr, label %.critedge.i66, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i66:                                    ; preds = %.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %bb.w, %bb.u, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %.08.lcssa.i.i.i20.i67 = phi ptr [ %i.u, %.thread ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61 ], [ %.19.i.i.i.i57, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60 ], [ %.19.i.i.i.i57, %bb.u ], [ %.19.i.i.i.i57, %bb.w ]
  %i.ds = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i67, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(9) %6) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.v, %bb.x, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %.critedge.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.af

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 5 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !2113 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS6_8LeafNodeIdLj3EEEE11NodeReducerINS5_5tools14count_internal10MemUsageOpINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE:bb.a
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.am)
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.f, %bb.a, %bb.h, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [3 x i32], align 8                ; 11 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1113
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.i)
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef 8) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !1113
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  tail call void @_ZN7openvdb5v13_02io25setGridBackgroundValuePtrERSt8ios_basePKv(ptr noundef nonnull align 8 dereferenceable(216) %i.o, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !1131
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !1131
  %i.s = icmp ne i32 %i.r, 0                      ; 2 uses
  %i.t = load i32, ptr %i.b, align 4              ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %or.cond.not = select i1 %i.s, i1 true, i1 %i.u ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  br i1 %i.s, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

.preheader.loopexit:                              ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !1131
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.b
  %i.ac = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.t, %bb.b ]
  %.not48 = icmp eq i32 %i.ac, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %vector.ph

bb.c:                                             ; preds = %.lr.ph, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02345 = phi i32 [ 0, %.lr.ph ], [ %i.br, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.aj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.am = load i32, ptr %i.c, align 8, !tbaa !1131 ; 5 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !1131
  %i.an = load i32, ptr %i.w, align 4, !tbaa !1131 ; 5 uses
  store i32 %i.an, ptr %i.v, align 4, !tbaa !1131
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !1131 ; 3 uses
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ap = load i8, ptr %i.e, align 1, !tbaa !1209, !range !1154, !noundef !1155
  %i.aq = load double, ptr %i.d, align 8, !tbaa !1104
  store double %i.aq, ptr %4, align 8, !tbaa !2169
  store i8 %i.ap, ptr %i.z, align 8, !tbaa !2170
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !1301 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ar, %bb.c ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ab, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1131 ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.am
  br i1 %i.au, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = icmp sgt i32 %i.at, %i.am
  br i1 %i.av, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !1131 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.an
  br i1 %i.ay, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = icmp sgt i32 %i.ax, %i.an
  br i1 %i.az, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1131
  %i.bc = icmp slt i32 %i.bb, %i.ao
  br i1 %i.bc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.f, %bb.d
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.f ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.f ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !158

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.be = icmp eq ptr %.19.i.i.i.i, %i.ab
  br i1 %i.be, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1131 ; 2 uses
  %i.bh = icmp slt i32 %i.am, %i.bg
  br i1 %i.bh, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp sgt i32 %i.am, %i.bg
  br i1 %i.bi, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1131 ; 2 uses
  %i.bl = icmp slt i32 %i.an, %i.bk
  br i1 %i.bl, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp sgt i32 %i.an, %i.bk
  br i1 %i.bm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !1131
  %i.bp = icmp slt i32 %i.ao, %i.bo
  br i1 %i.bp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.i, %bb.g, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %bb.c
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.ab, %bb.c ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i, %bb.g ], [ %.19.i.i.i.i, %bb.i ]
  %i.bq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.h, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.br = add nuw i32 %.02345, 1                  ; 2 uses
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !1131
  %i.bt = icmp ult i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %.preheader.loopexit, !llvm.loop !11920

._crit_edge:                                      ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.r

vector.ph:                                        ; preds = %.lr.ph47, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02446 = phi i32 [ 0, %.lr.ph47 ], [ %i.ds, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.bu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.bv = load i32, ptr %i.ae, align 8, !tbaa !1131
  %i.bw = load <2 x i32>, ptr %i.c, align 8, !tbaa !1131
  %i.bx = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #32 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, i8 0, i64 270336, i1 false)
  %i.bz = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.bv, i64 2
  %i.ca = shufflevector <2 x i32> %i.bw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cc = and <4 x i32> %i.cb, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.cc, ptr %i.by, align 8, !tbaa !1131
  %6 = load <2 x double>, ptr %i.j, align 8
  %broadcast.splat = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cd, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.ce, align 8, !tbaa !1126
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store <2 x double> %broadcast.splat, ptr %i.cg, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.ch, align 8, !tbaa !1126
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  store <2 x double> %broadcast.splat, ptr %i.cj, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.ck, align 8, !tbaa !1126
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  store <2 x double> %broadcast.splat, ptr %i.cm, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.cn, align 8, !tbaa !1126
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.co = icmp eq i64 %index.next.3, 32768
  br i1 %i.co, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !11921

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !1131 ; 5 uses
  store i32 %i.cp, ptr %5, align 4, !tbaa !1131
  %i.cq = load i32, ptr %i.ad, align 4, !tbaa !1131 ; 5 uses
  store i32 %i.cq, ptr %i.af, align 4, !tbaa !1131
  %i.cr = load i32, ptr %i.ae, align 8, !tbaa !1131 ; 3 uses
  store i32 %i.cr, ptr %i.ag, align 4, !tbaa !1131
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !1301 ; 2 uses
  %.not12.i.i.i.i26 = icmp eq ptr %i.cs, null
  br i1 %.not12.i.i.i.i26, label %.critedge.i42, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %.014.i.i.i.i28 = phi ptr [ %.1.i.i.i.i34, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i29 = phi ptr [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !1131 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %i.cp
  br i1 %i.cv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.cw = icmp sgt i32 %i.cu, %i.cp
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !1131 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.cq
  br i1 %i.cz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = icmp sgt i32 %i.cy, %i.cq
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30: ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 40
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !1131
  %i.dd = icmp slt i32 %i.dc, %i.cr
  br i1 %i.dd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.l, %.lr.ph.i.i.i.i27
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.m, %bb.k
  %.sink.i.i.i.i32 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ 16, %bb.m ], [ 16, %bb.k ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ]
  %.19.i.i.i.i33 = phi ptr [ %.0813.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ %.014.i.i.i.i28, %bb.m ], [ %.014.i.i.i.i28, %bb.k ], [ %.014.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 %.sink.i.i.i.i32
  %.1.i.i.i.i34 = load ptr, ptr %i.de, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %.1.i.i.i.i34, null
  br i1 %.not.i.i.i.i35, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, label %.lr.ph.i.i.i.i27, !llvm.loop !158

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %i.df = icmp eq ptr %.19.i.i.i.i33, %i.ai
  br i1 %i.df, label %.critedge.i42, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36
  %i.dg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 32
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !1131 ; 2 uses
  %i.di = icmp slt i32 %i.cp, %i.dh
  br i1 %i.di, label %.critedge.i42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp sgt i32 %i.cp, %i.dh
  br i1 %i.dj, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 36
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !1131 ; 2 uses
  %i.dm = icmp slt i32 %i.cq, %i.dl
  br i1 %i.dm, label %.critedge.i42, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = icmp sgt i32 %i.cq, %i.dl
  br i1 %i.dn, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37: ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 40
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !1131
  %i.dq = icmp slt i32 %i.cr, %i.dp
  br i1 %i.dq, label %.critedge.i42, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i42:                                    ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %bb.p, %bb.n, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i43 = phi ptr [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37 ], [ %.19.i.i.i.i33, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36 ], [ %.19.i.i.i.i33, %bb.n ], [ %.19.i.i.i.i33, %bb.p ]
  %i.dr = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i43, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.bx) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.o, %bb.q, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %.critedge.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ds = add nuw i32 %.02446, 1                  ; 2 uses
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !1131
  %i.du = icmp ult i32 %i.ds, %i.dt
  br i1 %i.du, label %vector.ph, label %._crit_edge, !llvm.loop !11922

bb.r:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %or.cond.not
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1113
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !1113
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.h)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !1113
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
  %i.o = load double, ptr %i.n, align 8, !tbaa !1104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 10 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.q, i64 noundef 4096) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i64 noundef 4096) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !1113
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = tail call noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.x)
  %i.z = icmp ult i32 %i.y, 222                   ; 2 uses
  br i1 %i.z, label %vector.body, label %bb.d

vector.body:                                      ; preds = %bb.c, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.c ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ag, %vector.body ], [ zeroinitializer, %bb.c ]
  %vec.phi201 = phi <2 x i32> [ %i.ah, %vector.body ], [ zeroinitializer, %bb.c ]
  %i.aa = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !1156
  %wide.load202 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !1156
  %i.ac = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load202)
  %i.ae = trunc nuw nsw <2 x i64> %i.ac to <2 x i32>
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = add <2 x i32> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i32> %vec.phi201, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 512
  br i1 %i.ai, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit, label %vector.body, !llvm.loop !11923

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ah, %i.ag
  %i.aj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.ak = sub i32 32768, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit
  %i.al = phi i32 [ %i.ak, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit ], [ 32768, %bb.c ] ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #32 ; 5 uses
  invoke void @_ZN7openvdb5v13_02io20readCompressedValuesIdNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ao, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i1 noundef zeroext %2)
          to label %bb.e unwind label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56

end_hunk_8
begin_hunk_9_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4fillERKNS0_4math9CoordBBoxERKdb:bb.a
  %i.y = phi i32 [ %i.ai, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 6 uses
  %i.z = phi i32 [ %i.aj, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %i.aa = phi i32 [ %i.ak, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ab = phi i32 [ %i.al, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ac = phi i32 [ %i.am, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %.0230 = phi i32 [ %i.an, %._crit_edge227 ], [ %i.a, %.lr.ph231.split.preheader ] ; 9 uses
  %.sroa.0162.0229 = phi i64 [ %.sroa.0162.1.lcssa, %._crit_edge227 ], [ 0, %.lr.ph231.split.preheader ] ; 4 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !1131 ; 2 uses
  %.not42222 = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not42222, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph231.split
  %i.ae = and i32 %.0230, -4096                   ; 2 uses
  %i.af = load i32, ptr %i.j, align 4, !tbaa !1131
  %i.ag = icmp sgt i32 %i.af, %i.ab
  br i1 %i.ag, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
  %.sroa.0.0.insert.ext.i12.i.i = zext i32 %.0230 to i64
  br label %.lr.ph226.split

.lr.ph226.split.us:                               ; preds = %.lr.ph226
  %.sroa.0162.4.extract.shift.us = lshr i64 %.sroa.0162.0229, 32
  %.sroa.0162.4.extract.trunc.us = trunc nuw i64 %.sroa.0162.4.extract.shift.us to i32
  %.not42.us.not = icmp sle i32 %i.y, %.sroa.0162.4.extract.trunc.us
  call void @llvm.assume(i1 %.not42.us.not)
  br label %._crit_edge227

._crit_edge227.loopexit:                          ; preds = %bb.c
  %.pre257 = load i32, ptr %i.b, align 4, !tbaa !1131
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %.lr.ph226.split.us, %._crit_edge227.loopexit, %.lr.ph231.split
  %i.ah = phi i32 [ %i.x, %.lr.ph231.split ], [ %i.x, %.lr.ph226.split.us ], [ %.pre257, %._crit_edge227.loopexit ] ; 2 uses
  %i.ai = phi i32 [ %i.y, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.at, %._crit_edge227.loopexit ]
  %i.aj = phi i32 [ %i.z, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.au, %._crit_edge227.loopexit ]
  %i.ak = phi i32 [ %i.aa, %.lr.ph231.split ], [ %i.aa, %.lr.ph226.split.us ], [ %i.av, %._crit_edge227.loopexit ]
  %i.al = phi i32 [ %i.ab, %.lr.ph231.split ], [ %i.ab, %.lr.ph226.split.us ], [ %i.av, %._crit_edge227.loopexit ]
  %i.am = phi i32 [ %i.ac, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.au, %._crit_edge227.loopexit ]
  %.sroa.0162.1.lcssa = phi i64 [ %.sroa.0162.0229, %.lr.ph231.split ], [ %.sroa.0162.0229, %.lr.ph226.split.us ], [ %.sroa.0162.2.lcssa, %._crit_edge227.loopexit ] ; 2 uses
  %.sroa.0162.0.extract.trunc = trunc i64 %.sroa.0162.1.lcssa to i32 ; 2 uses
  %i.an = add nsw i32 %.sroa.0162.0.extract.trunc, 1
  %.not.not = icmp sgt i32 %i.ah, %.sroa.0162.0.extract.trunc
  br i1 %.not.not, label %.lr.ph231.split, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.thread, !llvm.loop !12051

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %bb.c
  %i.ao = phi i32 [ %i.at, %bb.c ], [ %i.y, %.lr.ph226.split.preheader ]
  %i.ap = phi i32 [ %i.au, %bb.c ], [ %i.z, %.lr.ph226.split.preheader ]
  %i.aq = phi i32 [ %i.av, %bb.c ], [ %i.aa, %.lr.ph226.split.preheader ] ; 3 uses
  %.037224 = phi i32 [ %i.aw, %bb.c ], [ %i.ad, %.lr.ph226.split.preheader ] ; 8 uses
  %.sroa.0162.1223 = phi i64 [ %.sroa.0162.2.lcssa, %bb.c ], [ %.sroa.0162.0229, %.lr.ph226.split.preheader ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !1131 ; 2 uses
  %.not43217 = icmp sgt i32 %i.ar, %i.aq
  br i1 %.not43217, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph226.split
  %i.as = and i32 %.037224, -4096                 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.dk
  %.sroa.2.0.insert.ext.i.i.le = zext i32 %i.bi to i64
  %.sroa.2.0.insert.shift.i.i.le = shl nuw i64 %.sroa.2.0.insert.ext.i.i.le, 32
  %.sroa.0.0.insert.ext.i.i.le = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i.le = or disjoint i64 %.sroa.2.0.insert.shift.i.i.le, %.sroa.0.0.insert.ext.i.i.le
  %.pre = load i32, ptr %i.g, align 4, !tbaa !1131 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.lr.ph226.split
  %i.at = phi i32 [ %.pre, %._crit_edge ], [ %i.ao, %.lr.ph226.split ] ; 2 uses
  %i.au = phi i32 [ %.pre, %._crit_edge ], [ %i.ap, %.lr.ph226.split ] ; 4 uses
  %i.av = phi i32 [ %i.rf, %._crit_edge ], [ %i.aq, %.lr.ph226.split ] ; 3 uses
  %.sroa.0162.2.lcssa = phi i64 [ %.sroa.0.0.insert.insert.i.i.le, %._crit_edge ], [ %.sroa.0162.1223, %.lr.ph226.split ] ; 3 uses
  %.sroa.0162.4.extract.shift = lshr i64 %.sroa.0162.2.lcssa, 32
  %.sroa.0162.4.extract.trunc = trunc nuw i64 %.sroa.0162.4.extract.shift to i32 ; 2 uses
  %i.aw = add nsw i32 %.sroa.0162.4.extract.trunc, 1
  %.not42.not = icmp sgt i32 %i.au, %.sroa.0162.4.extract.trunc
  br i1 %.not42.not, label %.lr.ph226.split, label %._crit_edge227.loopexit, !llvm.loop !12052

bb.d:                                             ; preds = %.lr.ph, %bb.dk
  %i.ax = phi i32 [ %i.aq, %.lr.ph ], [ %i.rf, %bb.dk ]
  %.038218 = phi i32 [ %i.ar, %.lr.ph ], [ %i.re, %bb.dk ] ; 8 uses
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !1131
  %i.az = sub nsw i32 %.0230, %i.ay               ; 2 uses
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !1131
  %i.bb = sub nsw i32 %.037224, %i.ba             ; 2 uses
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !1131
  %i.bd = sub nsw i32 %.038218, %i.bc             ; 2 uses
  %i.be = and i32 %i.az, -4096                    ; 10 uses
  %i.bf = and i32 %i.bb, -4096                    ; 10 uses
  %i.bg = and i32 %i.bd, -4096                    ; 6 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.bf to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32 ; 2 uses
  %i.bh = or i32 %i.az, 4095                      ; 3 uses
  %i.bi = or i32 %i.bb, 4095                      ; 3 uses
  %i.bj = or i32 %i.bd, 4095                      ; 4 uses
  %i.bk = icmp ne i32 %.0230, %i.be
  %i.bl = icmp ne i32 %.037224, %i.bf
  %or.cond.not193 = or i1 %i.bk, %i.bl
  %i.bm = icmp ne i32 %.038218, %i.bg
  %or.cond188 = select i1 %or.cond.not193, i1 true, i1 %i.bm
  br i1 %or.cond188, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !1131
  %i.bo = icmp slt i32 %i.bn, %i.bh
  br i1 %i.bo, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !1131
  %i.bq = icmp slt i32 %i.bp, %i.bi
  %i.br = icmp slt i32 %i.ax, %i.bj
  %or.cond189 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond189, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.bm

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.d
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !1301 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.bs, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !1131 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.be
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = icmp sgt i32 %i.bu, %i.be
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1131 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bf
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp sgt i32 %i.by, %i.bf
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1131
  %i.cd = icmp slt i32 %i.cc, %i.bg
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !158

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.cf, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !1131 ; 2 uses
  %i.ci = icmp slt i32 %i.be, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp sgt i32 %i.be, %i.ch
  br i1 %i.cj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !1131 ; 2 uses
  %i.cm = icmp slt i32 %i.bf, %i.cl
  br i1 %i.cm, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = icmp sgt i32 %i.bf, %i.cl
  br i1 %i.cn, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !1131
  %i.cq = icmp slt i32 %i.bg, %i.cp
  br i1 %i.cq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.l, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cr = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #32 ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.ct = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.cs, align 8, !tbaa !1131
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 270340
  store i32 %i.as, ptr %i.cu, align 4, !tbaa !1131
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 270344
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !1131
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 270348
  store i32 0, ptr %i.cw, align 4, !tbaa !2165
  %5 = load <2 x double>, ptr %i.r, align 8
  %broadcast.splat = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cx, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.cy, align 8, !tbaa !1126
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store <2 x double> %broadcast.splat, ptr %i.da, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.db, align 8, !tbaa !1126
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dd, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.de, align 8, !tbaa !1126
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dg, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.dh, align 8, !tbaa !1126
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next.3, 32768
  br i1 %i.di, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !12053

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !1301 ; 2 uses
  %.not12.i.i.i.i46 = icmp eq ptr %i.dj, null
  br i1 %.not12.i.i.i.i46, label %.critedge.i, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %.014.i.i.i.i48 = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.dj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i49 = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 32
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !1131 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.be
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dn = icmp sgt i32 %i.dl, %i.be
  br i1 %i.dn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !1131 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.bf
  br i1 %i.dq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp sgt i32 %i.dp, %i.bf
  br i1 %i.dr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !1131
  %i.du = icmp slt i32 %i.dt, %i.bg
  br i1 %i.du, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.o, %.lr.ph.i.i.i.i47
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.p, %bb.n
  %.sink.i.i.i.i52 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ]
  %.19.i.i.i.i53 = phi ptr [ %.0813.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ %.014.i.i.i.i48, %bb.p ], [ %.014.i.i.i.i48, %bb.n ], [ %.014.i.i.i.i48, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ] ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 %.sink.i.i.i.i52
  %.1.i.i.i.i54 = load ptr, ptr %i.dv, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i47, !llvm.loop !158

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %i.dw = icmp eq ptr %.19.i.i.i.i53, %i.t
  br i1 %i.dw, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !1131 ; 2 uses
  %i.dz = icmp slt i32 %i.be, %i.dy
  br i1 %i.dz, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp sgt i32 %i.be, %i.dy
  br i1 %i.ea, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !1131 ; 2 uses
  %i.ed = icmp slt i32 %i.bf, %i.ec
  br i1 %i.ed, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp sgt i32 %i.bf, %i.ec
  br i1 %i.ee, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 40
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !1131
  %i.eh = icmp slt i32 %i.bg, %i.eg
  br i1 %i.eh, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.s, %bb.q, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i53, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i53, %bb.q ], [ %.19.i.i.i.i53, %bb.s ]
  %i.ei = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  %.sroa.0145.sroa.0.0.insert.ext = zext i32 %i.be to i64
  %.sroa.0145.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0145.sroa.0.0.insert.ext
  store i64 %.sroa.0145.sroa.0.0.insert.insert, ptr %i.ej, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 40 ; 2 uses
  store i32 %i.bg, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !1126
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.cr, ptr %i.ek, align 8, !tbaa !2113
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !2169
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store i8 0, ptr %i.em, align 8, !tbaa !2170
  %i.en = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ej)
          to label %bb.u unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.u:                                             ; preds = %.critedge.i
  %i.eo = extractvalue { ptr, ptr } %i.en, 1      ; 6 uses
  %.not.i = icmp eq ptr %i.eo, null
  br i1 %.not.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ep = extractvalue { ptr, ptr } %i.en, 0
  %.not.i.i.i = icmp ne ptr %i.ep, null
  %i.eq = icmp eq ptr %i.eo, %i.t
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.eq
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.es = load i32, ptr %i.ej, align 8, !tbaa !1131 ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !1131 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = icmp sgt i32 %i.es, %i.et
  br i1 %i.ev, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !1131 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !1131 ; 2 uses
  %i.fa = icmp slt i32 %i.ex, %i.ez
  br i1 %i.fa, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = icmp sgt i32 %i.ex, %i.ez
  br i1 %i.fb, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !1131
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !1131
  %i.ff = icmp slt i32 %i.fc, %i.fe
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fg = phi i1 [ false, %bb.z ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ %i.ff, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #26
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !1304
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.u, align 8, !tbaa !1304
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i
  %.lcssa353.sink = phi ptr [ %i.lt, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.ei, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.mu, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.fj, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa353.sink, i64 noundef 72) #35
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ab:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 72) #35
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.m, %bb.k, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !2113 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ac, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.fo = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #32 ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !2170, !range !1154, !noundef !1155
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.fo, i8 0, i64 270336, i1 false)
  %i.ft = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.fs, align 8, !tbaa !1131
end_hunk_9
begin_hunk_10_@_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EE4nextEj:bb.a
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.f, %bb.d ], [ %i.s, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.r, %.critedge.loopexit.i.i.i.i ]
  %i.t = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.u = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE4nextEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE4nextEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.b, %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ 32768, %bb.b ], [ %i.e, %bb.c ], [ %i.w, %.critedge.i.i.i.i ], [ 32768, %.lr.ph.i.i.i.i.preheader ], [ 32768, %.lr.ph.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !1360
  %i.x = icmp ne i32 %.118.i.i.i.i, 32768
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !3458
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !3459 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.ac) #36 ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !3459
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.promoted.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.ab
  br i1 %.not2.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ah, %bb.h ], [ %.promoted.i.i.i.i, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !3354
  %.not1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not1.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ae) #36 ; 3 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !3459
  %.not.i.i.i.i3 = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i3, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !333

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i2
  %i.ai = phi ptr [ %i.ab, %bb.h ], [ %i.ae, %.lr.ph.i.i.i.i2 ]
  %i.aj = icmp ne ptr %i.ai, %i.ab
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, %bb.g, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE4nextEv.exit
  %i.ak = phi i1 [ %i.x, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE4nextEv.exit ], [ false, %bb.a ], [ %i.aj, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i ], [ false, %bb.g ]
  ret i1 %i.ak
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7addTileEjRKNS0_4math5CoordERKlb(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>>::Tile", align 8 ; 8 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %2, align 4, !tbaa !1131
  %i.d = load i32, ptr %i.b, align 8, !tbaa !1131
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1131
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1131
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1131
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1131
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = and i32 %i.e, -4096                      ; 13 uses
  %i.q = and i32 %i.j, -4096                      ; 13 uses
  %i.r = and i32 %i.o, -4096                      ; 7 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1301 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1131 ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1131 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1131
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !330

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !1131 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1131 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !1131
  %i.as = icmp slt i32 %i.r, %i.ar
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %.not37 = icmp eq i32 %1, 3
  br i1 %.not37, label %.lr.ph.i.i.i.i51, label %vector.ph107

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.b
  %.not3783 = icmp eq i32 %1, 3
  br i1 %.not3783, label %.thread, label %vector.ph107

.thread:                                          ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.at = zext i1 %4 to i8
  %i.au = load i64, ptr %3, align 8, !tbaa !1156
  store i64 %i.au, ptr %6, align 8, !tbaa !3410
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !3411
  br label %.critedge.i66

vector.ph107:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #32 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %i.k, align 4, !tbaa !1131
  %i.az = load <2 x i32>, ptr %2, align 4, !tbaa !1131
  %i.ba = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ay, i64 2
  %i.bb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = and <4 x i32> %i.bc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bd, ptr %i.ax, align 8, !tbaa !1131
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = load <2 x i64>, ptr %i.be, align 8
  %broadcast.splat109 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next112.3, %vector.body110 ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x i64> %broadcast.splat109, ptr %i.bf, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat109, ptr %i.bg, align 8, !tbaa !1126
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store <2 x i64> %broadcast.splat109, ptr %i.bi, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat109, ptr %i.bj, align 8, !tbaa !1126
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store <2 x i64> %broadcast.splat109, ptr %i.bl, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat109, ptr %i.bm, align 8, !tbaa !1126
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <2 x i64> %broadcast.splat109, ptr %i.bo, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat109, ptr %i.bp, align 8, !tbaa !1126
  %index.next112.3 = add nuw nsw i64 %index111, 16 ; 2 uses
  %i.bq = icmp eq i64 %index.next112.3, 32768
  br i1 %i.bq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body110, !llvm.loop !13651

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body110
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !1301 ; 2 uses
  %.not12.i.i.i.i39 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i.i.i39, label %.critedge.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %.014.i.i.i.i41 = phi ptr [ %.1.i.i.i.i47, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.br, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i42 = phi ptr [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !1131 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !1131 ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i32 %i.bx, %i.q
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !1131
  %i.cc = icmp slt i32 %i.cb, %i.r
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.k, %.lr.ph.i.i.i.i40
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.l, %bb.j
  %.sink.i.i.i.i45 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ]
  %.19.i.i.i.i46 = phi ptr [ %.0813.i.i.i.i42, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ %.014.i.i.i.i41, %bb.l ], [ %.014.i.i.i.i41, %bb.j ], [ %.014.i.i.i.i41, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 %.sink.i.i.i.i45
  %.1.i.i.i.i47 = load ptr, ptr %i.cd, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i47, null
  br i1 %.not.i.i.i.i48, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i40, !llvm.loop !330

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %i.ce = icmp eq ptr %.19.i.i.i.i46, %i.u
  br i1 %i.ce, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !1131 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !1131 ; 2 uses
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp sgt i32 %i.q, %i.ck
  br i1 %i.cm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !1131
  %i.cp = icmp slt i32 %i.r, %i.co
  br i1 %i.cp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i46, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i46, %bb.m ], [ %.19.i.i.i.i46, %bb.o ]
  %i.cq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE7addTileEjRKNS0_4math5CoordERKlb(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  br label %bb.af

.lr.ph.i.i.i.i51:                                 ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.cr = zext i1 %4 to i8
  %i.cs = load i64, ptr %3, align 8, !tbaa !1156
  store i64 %i.cs, ptr %6, align 8, !tbaa !3410
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.cr, ptr %i.ct, align 8, !tbaa !3411
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, %.lr.ph.i.i.i.i51
  %.014.i.i.i.i52 = phi ptr [ %i.t, %.lr.ph.i.i.i.i51 ], [ %.1.i.i.i.i58, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ] ; 7 uses
  %.0813.i.i.i.i53 = phi ptr [ %i.u, %.lr.ph.i.i.i.i51 ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !1131 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.p
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp sgt i32 %i.cv, %i.p
  br i1 %i.cx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !1131 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.q
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = icmp sgt i32 %i.cz, %i.q
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54: ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 40
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !1131
  %i.de = icmp slt i32 %i.dd, %i.r
  br i1 %i.de, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.t, %bb.r
  %.sink.i.i.i.i56 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ]
  %.19.i.i.i.i57 = phi ptr [ %.0813.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ %.014.i.i.i.i52, %bb.t ], [ %.014.i.i.i.i52, %bb.r ], [ %.014.i.i.i.i52, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ] ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 %.sink.i.i.i.i56
  %.1.i.i.i.i58 = load ptr, ptr %i.df, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.1.i.i.i.i58, null
  br i1 %.not.i.i.i.i59, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60, label %bb.q, !llvm.loop !330

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55
  %i.dg = icmp eq ptr %.19.i.i.i.i57, %i.u
  br i1 %i.dg, label %.critedge.i66, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !1131 ; 2 uses
  %i.dj = icmp slt i32 %i.p, %i.di
  br i1 %i.dj, label %.critedge.i66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp sgt i32 %i.p, %i.di
  br i1 %i.dk, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !1131 ; 2 uses
  %i.dn = icmp slt i32 %i.q, %i.dm
  br i1 %i.dn, label %.critedge.i66, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = icmp sgt i32 %i.q, %i.dm
  br i1 %i.do, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61: ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 40
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !1131
  %i.dr = icmp slt i32 %i.r, %i.dq
  br i1 %i.dr, label %.critedge.i66, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i66:                                    ; preds = %.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %bb.w, %bb.u, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %.08.lcssa.i.i.i20.i67 = phi ptr [ %i.u, %.thread ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61 ], [ %.19.i.i.i.i57, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60 ], [ %.19.i.i.i.i57, %bb.u ], [ %.19.i.i.i.i57, %bb.w ]
  %i.ds = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i67, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(9) %6) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.v, %bb.x, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %.critedge.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.af

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 5 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !3354 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS6_8LeafNodeIlLj3EEEE11NodeReducerINS5_5tools14count_internal10MemUsageOpINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE:bb.a
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.am)
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.f, %bb.a, %bb.h, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [3 x i32], align 8                ; 11 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1113
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.i)
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef 8) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !1113
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  tail call void @_ZN7openvdb5v13_02io25setGridBackgroundValuePtrERSt8ios_basePKv(ptr noundef nonnull align 8 dereferenceable(216) %i.o, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !1131
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !1131
  %i.s = icmp ne i32 %i.r, 0                      ; 2 uses
  %i.t = load i32, ptr %i.b, align 4              ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %or.cond.not = select i1 %i.s, i1 true, i1 %i.u ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  br i1 %i.s, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

.preheader.loopexit:                              ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !1131
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.b
  %i.ac = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.t, %bb.b ]
  %.not48 = icmp eq i32 %i.ac, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %vector.ph

bb.c:                                             ; preds = %.lr.ph, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02345 = phi i32 [ 0, %.lr.ph ], [ %i.br, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.aj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.am = load i32, ptr %i.c, align 8, !tbaa !1131 ; 5 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !1131
  %i.an = load i32, ptr %i.w, align 4, !tbaa !1131 ; 5 uses
  store i32 %i.an, ptr %i.v, align 4, !tbaa !1131
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !1131 ; 3 uses
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ap = load i8, ptr %i.e, align 1, !tbaa !1209, !range !1154, !noundef !1155
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !1156
  store i64 %i.aq, ptr %4, align 8, !tbaa !3410
  store i8 %i.ap, ptr %i.z, align 8, !tbaa !3411
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !1301 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ar, %bb.c ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ab, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1131 ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.am
  br i1 %i.au, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = icmp sgt i32 %i.at, %i.am
  br i1 %i.av, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !1131 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.an
  br i1 %i.ay, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = icmp sgt i32 %i.ax, %i.an
  br i1 %i.az, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1131
  %i.bc = icmp slt i32 %i.bb, %i.ao
  br i1 %i.bc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.f, %bb.d
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.f ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.f ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !330

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.be = icmp eq ptr %.19.i.i.i.i, %i.ab
  br i1 %i.be, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1131 ; 2 uses
  %i.bh = icmp slt i32 %i.am, %i.bg
  br i1 %i.bh, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp sgt i32 %i.am, %i.bg
  br i1 %i.bi, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1131 ; 2 uses
  %i.bl = icmp slt i32 %i.an, %i.bk
  br i1 %i.bl, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp sgt i32 %i.an, %i.bk
  br i1 %i.bm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !1131
  %i.bp = icmp slt i32 %i.ao, %i.bo
  br i1 %i.bp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.i, %bb.g, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %bb.c
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.ab, %bb.c ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i, %bb.g ], [ %.19.i.i.i.i, %bb.i ]
  %i.bq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.h, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.br = add nuw i32 %.02345, 1                  ; 2 uses
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !1131
  %i.bt = icmp ult i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %.preheader.loopexit, !llvm.loop !14311

._crit_edge:                                      ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.r

vector.ph:                                        ; preds = %.lr.ph47, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02446 = phi i32 [ 0, %.lr.ph47 ], [ %i.ds, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.bu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.bv = load i32, ptr %i.ae, align 8, !tbaa !1131
  %i.bw = load <2 x i32>, ptr %i.c, align 8, !tbaa !1131
  %i.bx = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #32 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, i8 0, i64 270336, i1 false)
  %i.bz = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.bv, i64 2
  %i.ca = shufflevector <2 x i32> %i.bw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cc = and <4 x i32> %i.cb, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.cc, ptr %i.by, align 8, !tbaa !1131
  %6 = load <2 x i64>, ptr %i.j, align 8
  %broadcast.splat = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.cd, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.ce, align 8, !tbaa !1126
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.cg, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.ch, align 8, !tbaa !1126
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.cj, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.ck, align 8, !tbaa !1126
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.cm, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.cn, align 8, !tbaa !1126
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.co = icmp eq i64 %index.next.3, 32768
  br i1 %i.co, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit, label %vector.body, !llvm.loop !14312

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !1131 ; 5 uses
  store i32 %i.cp, ptr %5, align 4, !tbaa !1131
  %i.cq = load i32, ptr %i.ad, align 4, !tbaa !1131 ; 5 uses
  store i32 %i.cq, ptr %i.af, align 4, !tbaa !1131
  %i.cr = load i32, ptr %i.ae, align 8, !tbaa !1131 ; 3 uses
  store i32 %i.cr, ptr %i.ag, align 4, !tbaa !1131
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !1301 ; 2 uses
  %.not12.i.i.i.i26 = icmp eq ptr %i.cs, null
  br i1 %.not12.i.i.i.i26, label %.critedge.i42, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %.014.i.i.i.i28 = phi ptr [ %.1.i.i.i.i34, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i29 = phi ptr [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !1131 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %i.cp
  br i1 %i.cv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.cw = icmp sgt i32 %i.cu, %i.cp
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !1131 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.cq
  br i1 %i.cz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = icmp sgt i32 %i.cy, %i.cq
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30: ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 40
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !1131
  %i.dd = icmp slt i32 %i.dc, %i.cr
  br i1 %i.dd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.l, %.lr.ph.i.i.i.i27
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.m, %bb.k
  %.sink.i.i.i.i32 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ 16, %bb.m ], [ 16, %bb.k ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ]
  %.19.i.i.i.i33 = phi ptr [ %.0813.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ %.014.i.i.i.i28, %bb.m ], [ %.014.i.i.i.i28, %bb.k ], [ %.014.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 %.sink.i.i.i.i32
  %.1.i.i.i.i34 = load ptr, ptr %i.de, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %.1.i.i.i.i34, null
  br i1 %.not.i.i.i.i35, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, label %.lr.ph.i.i.i.i27, !llvm.loop !330

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %i.df = icmp eq ptr %.19.i.i.i.i33, %i.ai
  br i1 %i.df, label %.critedge.i42, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36
  %i.dg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 32
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !1131 ; 2 uses
  %i.di = icmp slt i32 %i.cp, %i.dh
  br i1 %i.di, label %.critedge.i42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp sgt i32 %i.cp, %i.dh
  br i1 %i.dj, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 36
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !1131 ; 2 uses
  %i.dm = icmp slt i32 %i.cq, %i.dl
  br i1 %i.dm, label %.critedge.i42, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = icmp sgt i32 %i.cq, %i.dl
  br i1 %i.dn, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37: ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 40
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !1131
  %i.dq = icmp slt i32 %i.cr, %i.dp
  br i1 %i.dq, label %.critedge.i42, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i42:                                    ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %bb.p, %bb.n, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i43 = phi ptr [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37 ], [ %.19.i.i.i.i33, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36 ], [ %.19.i.i.i.i33, %bb.n ], [ %.19.i.i.i.i33, %bb.p ]
  %i.dr = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i43, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.bx) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.o, %bb.q, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %.critedge.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ds = add nuw i32 %.02446, 1                  ; 2 uses
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !1131
  %i.du = icmp ult i32 %i.ds, %i.dt
  br i1 %i.du, label %vector.ph, label %._crit_edge, !llvm.loop !14313

bb.r:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %or.cond.not
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1113
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !1113
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.h)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !1113
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1156
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 10 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.q, i64 noundef 4096) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i64 noundef 4096) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !1113
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = tail call noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.x)
  %i.z = icmp ult i32 %i.y, 222                   ; 2 uses
  br i1 %i.z, label %vector.body, label %bb.d

vector.body:                                      ; preds = %bb.c, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.c ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ag, %vector.body ], [ zeroinitializer, %bb.c ]
  %vec.phi201 = phi <2 x i32> [ %i.ah, %vector.body ], [ zeroinitializer, %bb.c ]
  %i.aa = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !1156
  %wide.load202 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !1156
  %i.ac = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load202)
  %i.ae = trunc nuw nsw <2 x i64> %i.ac to <2 x i32>
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = add <2 x i32> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i32> %vec.phi201, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 512
  br i1 %i.ai, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit, label %vector.body, !llvm.loop !14314

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ah, %i.ag
  %i.aj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.ak = sub i32 32768, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit
  %i.al = phi i32 [ %i.ak, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit ], [ 32768, %bb.c ] ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #32 ; 5 uses
  invoke void @_ZN7openvdb5v13_02io20readCompressedValuesIlNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ao, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i1 noundef zeroext %2)
          to label %bb.e unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit56

end_hunk_11
begin_hunk_12_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE4fillERKNS0_4math9CoordBBoxERKlb:bb.a
  %i.y = phi i32 [ %i.ai, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 6 uses
  %i.z = phi i32 [ %i.aj, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %i.aa = phi i32 [ %i.ak, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ab = phi i32 [ %i.al, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ac = phi i32 [ %i.am, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %.0230 = phi i32 [ %i.an, %._crit_edge227 ], [ %i.a, %.lr.ph231.split.preheader ] ; 9 uses
  %.sroa.0162.0229 = phi i64 [ %.sroa.0162.1.lcssa, %._crit_edge227 ], [ 0, %.lr.ph231.split.preheader ] ; 4 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !1131 ; 2 uses
  %.not42222 = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not42222, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph231.split
  %i.ae = and i32 %.0230, -4096                   ; 2 uses
  %i.af = load i32, ptr %i.j, align 4, !tbaa !1131
  %i.ag = icmp sgt i32 %i.af, %i.ab
  br i1 %i.ag, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
  %.sroa.0.0.insert.ext.i12.i.i = zext i32 %.0230 to i64
  br label %.lr.ph226.split

.lr.ph226.split.us:                               ; preds = %.lr.ph226
  %.sroa.0162.4.extract.shift.us = lshr i64 %.sroa.0162.0229, 32
  %.sroa.0162.4.extract.trunc.us = trunc nuw i64 %.sroa.0162.4.extract.shift.us to i32
  %.not42.us.not = icmp sle i32 %i.y, %.sroa.0162.4.extract.trunc.us
  call void @llvm.assume(i1 %.not42.us.not)
  br label %._crit_edge227

._crit_edge227.loopexit:                          ; preds = %bb.c
  %.pre257 = load i32, ptr %i.b, align 4, !tbaa !1131
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %.lr.ph226.split.us, %._crit_edge227.loopexit, %.lr.ph231.split
  %i.ah = phi i32 [ %i.x, %.lr.ph231.split ], [ %i.x, %.lr.ph226.split.us ], [ %.pre257, %._crit_edge227.loopexit ] ; 2 uses
  %i.ai = phi i32 [ %i.y, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.at, %._crit_edge227.loopexit ]
  %i.aj = phi i32 [ %i.z, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.au, %._crit_edge227.loopexit ]
  %i.ak = phi i32 [ %i.aa, %.lr.ph231.split ], [ %i.aa, %.lr.ph226.split.us ], [ %i.av, %._crit_edge227.loopexit ]
  %i.al = phi i32 [ %i.ab, %.lr.ph231.split ], [ %i.ab, %.lr.ph226.split.us ], [ %i.av, %._crit_edge227.loopexit ]
  %i.am = phi i32 [ %i.ac, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.au, %._crit_edge227.loopexit ]
  %.sroa.0162.1.lcssa = phi i64 [ %.sroa.0162.0229, %.lr.ph231.split ], [ %.sroa.0162.0229, %.lr.ph226.split.us ], [ %.sroa.0162.2.lcssa, %._crit_edge227.loopexit ] ; 2 uses
  %.sroa.0162.0.extract.trunc = trunc i64 %.sroa.0162.1.lcssa to i32 ; 2 uses
  %i.an = add nsw i32 %.sroa.0162.0.extract.trunc, 1
  %.not.not = icmp sgt i32 %i.ah, %.sroa.0162.0.extract.trunc
  br i1 %.not.not, label %.lr.ph231.split, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.thread, !llvm.loop !14441

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %bb.c
  %i.ao = phi i32 [ %i.at, %bb.c ], [ %i.y, %.lr.ph226.split.preheader ]
  %i.ap = phi i32 [ %i.au, %bb.c ], [ %i.z, %.lr.ph226.split.preheader ]
  %i.aq = phi i32 [ %i.av, %bb.c ], [ %i.aa, %.lr.ph226.split.preheader ] ; 3 uses
  %.037224 = phi i32 [ %i.aw, %bb.c ], [ %i.ad, %.lr.ph226.split.preheader ] ; 8 uses
  %.sroa.0162.1223 = phi i64 [ %.sroa.0162.2.lcssa, %bb.c ], [ %.sroa.0162.0229, %.lr.ph226.split.preheader ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !1131 ; 2 uses
  %.not43217 = icmp sgt i32 %i.ar, %i.aq
  br i1 %.not43217, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph226.split
  %i.as = and i32 %.037224, -4096                 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.dk
  %.sroa.2.0.insert.ext.i.i.le = zext i32 %i.bi to i64
  %.sroa.2.0.insert.shift.i.i.le = shl nuw i64 %.sroa.2.0.insert.ext.i.i.le, 32
  %.sroa.0.0.insert.ext.i.i.le = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i.le = or disjoint i64 %.sroa.2.0.insert.shift.i.i.le, %.sroa.0.0.insert.ext.i.i.le
  %.pre = load i32, ptr %i.g, align 4, !tbaa !1131 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.lr.ph226.split
  %i.at = phi i32 [ %.pre, %._crit_edge ], [ %i.ao, %.lr.ph226.split ] ; 2 uses
  %i.au = phi i32 [ %.pre, %._crit_edge ], [ %i.ap, %.lr.ph226.split ] ; 4 uses
  %i.av = phi i32 [ %i.rf, %._crit_edge ], [ %i.aq, %.lr.ph226.split ] ; 3 uses
  %.sroa.0162.2.lcssa = phi i64 [ %.sroa.0.0.insert.insert.i.i.le, %._crit_edge ], [ %.sroa.0162.1223, %.lr.ph226.split ] ; 3 uses
  %.sroa.0162.4.extract.shift = lshr i64 %.sroa.0162.2.lcssa, 32
  %.sroa.0162.4.extract.trunc = trunc nuw i64 %.sroa.0162.4.extract.shift to i32 ; 2 uses
  %i.aw = add nsw i32 %.sroa.0162.4.extract.trunc, 1
  %.not42.not = icmp sgt i32 %i.au, %.sroa.0162.4.extract.trunc
  br i1 %.not42.not, label %.lr.ph226.split, label %._crit_edge227.loopexit, !llvm.loop !14442

bb.d:                                             ; preds = %.lr.ph, %bb.dk
  %i.ax = phi i32 [ %i.aq, %.lr.ph ], [ %i.rf, %bb.dk ]
  %.038218 = phi i32 [ %i.ar, %.lr.ph ], [ %i.re, %bb.dk ] ; 8 uses
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !1131
  %i.az = sub nsw i32 %.0230, %i.ay               ; 2 uses
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !1131
  %i.bb = sub nsw i32 %.037224, %i.ba             ; 2 uses
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !1131
  %i.bd = sub nsw i32 %.038218, %i.bc             ; 2 uses
  %i.be = and i32 %i.az, -4096                    ; 10 uses
  %i.bf = and i32 %i.bb, -4096                    ; 10 uses
  %i.bg = and i32 %i.bd, -4096                    ; 6 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.bf to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32 ; 2 uses
  %i.bh = or i32 %i.az, 4095                      ; 3 uses
  %i.bi = or i32 %i.bb, 4095                      ; 3 uses
  %i.bj = or i32 %i.bd, 4095                      ; 4 uses
  %i.bk = icmp ne i32 %.0230, %i.be
  %i.bl = icmp ne i32 %.037224, %i.bf
  %or.cond.not193 = or i1 %i.bk, %i.bl
  %i.bm = icmp ne i32 %.038218, %i.bg
  %or.cond188 = select i1 %or.cond.not193, i1 true, i1 %i.bm
  br i1 %or.cond188, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !1131
  %i.bo = icmp slt i32 %i.bn, %i.bh
  br i1 %i.bo, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !1131
  %i.bq = icmp slt i32 %i.bp, %i.bi
  %i.br = icmp slt i32 %i.ax, %i.bj
  %or.cond189 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond189, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.bm

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.d
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !1301 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.bs, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !1131 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.be
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = icmp sgt i32 %i.bu, %i.be
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1131 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bf
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp sgt i32 %i.by, %i.bf
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1131
  %i.cd = icmp slt i32 %i.cc, %i.bg
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !330

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.cf, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !1131 ; 2 uses
  %i.ci = icmp slt i32 %i.be, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp sgt i32 %i.be, %i.ch
  br i1 %i.cj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !1131 ; 2 uses
  %i.cm = icmp slt i32 %i.bf, %i.cl
  br i1 %i.cm, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = icmp sgt i32 %i.bf, %i.cl
  br i1 %i.cn, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !1131
  %i.cq = icmp slt i32 %i.bg, %i.cp
  br i1 %i.cq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.l, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cr = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #32 ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.ct = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.cs, align 8, !tbaa !1131
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 270340
  store i32 %i.as, ptr %i.cu, align 4, !tbaa !1131
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 270344
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !1131
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 270348
  store i32 0, ptr %i.cw, align 4, !tbaa !3406
  %5 = load <2 x i64>, ptr %i.r, align 8
  %broadcast.splat = shufflevector <2 x i64> %5, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.cx, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.cy, align 8, !tbaa !1126
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.da, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.db, align 8, !tbaa !1126
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.dd, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.de, align 8, !tbaa !1126
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.dg, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.dh, align 8, !tbaa !1126
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next.3, 32768
  br i1 %i.di, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body, !llvm.loop !14443

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !1301 ; 2 uses
  %.not12.i.i.i.i46 = icmp eq ptr %i.dj, null
  br i1 %.not12.i.i.i.i46, label %.critedge.i, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %.014.i.i.i.i48 = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.dj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i49 = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 32
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !1131 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.be
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dn = icmp sgt i32 %i.dl, %i.be
  br i1 %i.dn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !1131 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.bf
  br i1 %i.dq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp sgt i32 %i.dp, %i.bf
  br i1 %i.dr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !1131
  %i.du = icmp slt i32 %i.dt, %i.bg
  br i1 %i.du, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.o, %.lr.ph.i.i.i.i47
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.p, %bb.n
  %.sink.i.i.i.i52 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ]
  %.19.i.i.i.i53 = phi ptr [ %.0813.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ %.014.i.i.i.i48, %bb.p ], [ %.014.i.i.i.i48, %bb.n ], [ %.014.i.i.i.i48, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ] ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 %.sink.i.i.i.i52
  %.1.i.i.i.i54 = load ptr, ptr %i.dv, align 8, !tbaa !1488 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i47, !llvm.loop !330

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %i.dw = icmp eq ptr %.19.i.i.i.i53, %i.t
  br i1 %i.dw, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !1131 ; 2 uses
  %i.dz = icmp slt i32 %i.be, %i.dy
  br i1 %i.dz, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp sgt i32 %i.be, %i.dy
  br i1 %i.ea, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !1131 ; 2 uses
  %i.ed = icmp slt i32 %i.bf, %i.ec
  br i1 %i.ed, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp sgt i32 %i.bf, %i.ec
  br i1 %i.ee, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 40
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !1131
  %i.eh = icmp slt i32 %i.bg, %i.eg
  br i1 %i.eh, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.s, %bb.q, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i53, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i53, %bb.q ], [ %.19.i.i.i.i53, %bb.s ]
  %i.ei = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  %.sroa.0145.sroa.0.0.insert.ext = zext i32 %i.be to i64
  %.sroa.0145.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0145.sroa.0.0.insert.ext
  store i64 %.sroa.0145.sroa.0.0.insert.insert, ptr %i.ej, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 40 ; 2 uses
  store i32 %i.bg, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !1126
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.cr, ptr %i.ek, align 8, !tbaa !3354
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  store i64 0, ptr %i.el, align 8, !tbaa !3410
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store i8 0, ptr %i.em, align 8, !tbaa !3411
  %i.en = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ej)
          to label %bb.u unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.u:                                             ; preds = %.critedge.i
  %i.eo = extractvalue { ptr, ptr } %i.en, 1      ; 6 uses
  %.not.i = icmp eq ptr %i.eo, null
  br i1 %.not.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ep = extractvalue { ptr, ptr } %i.en, 0
  %.not.i.i.i = icmp ne ptr %i.ep, null
  %i.eq = icmp eq ptr %i.eo, %i.t
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.eq
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.es = load i32, ptr %i.ej, align 8, !tbaa !1131 ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !1131 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = icmp sgt i32 %i.es, %i.et
  br i1 %i.ev, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !1131 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !1131 ; 2 uses
  %i.fa = icmp slt i32 %i.ex, %i.ez
  br i1 %i.fa, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = icmp sgt i32 %i.ex, %i.ez
  br i1 %i.fb, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !1131
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !1131
  %i.ff = icmp slt i32 %i.fc, %i.fe
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fg = phi i1 [ false, %bb.z ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ %i.ff, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #26
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !1304
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.u, align 8, !tbaa !1304
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i
  %.lcssa353.sink = phi ptr [ %i.lt, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.ei, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.mu, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.fj, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa353.sink, i64 noundef 72) #35
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ab:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 72) #35
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.m, %bb.k, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !3354 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ac, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.fo = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #32 ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !3411, !range !1154, !noundef !1155
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.fo, i8 0, i64 270336, i1 false)
  %i.ft = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.fs, align 8, !tbaa !1131
end_hunk_12
