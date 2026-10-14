Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/PotentialFlow?download=true
inline.NumInlined: 97346
inline.NumDeleted: 30608
loop-unroll.NumCompletelyUnrolled: 352
loop-unroll.NumRuntimeUnrolled: 294
loop-unroll.NumUnrolled: 1395
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7524)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !886, !noalias !7524
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load double, ptr %i.i, align 8, !tbaa !886, !noalias !7524
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load double, ptr %i.k, align 8, !tbaa !886, !noalias !7524
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = load double, ptr %i.m, align 8, !tbaa !886, !noalias !7524
  %i.o = load double, ptr %2, align 8, !tbaa !886, !noalias !7524 ; 2 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !886, !noalias !7524 ; 2 uses
  %i.q = load double, ptr %i.d, align 8, !tbaa !886, !noalias !7524 ; 2 uses
  %i.r = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !7524
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !7524
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s
  %i.w = insertelement <2 x double> poison, double %i.o, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.r, <2 x double> %i.v)
  %i.z = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !7524
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.z, <2 x double> %i.y)
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !886, !noalias !7524
  %i.ae = fadd <2 x double> %i.ac, %i.ad
  %i.af = fmul double %i.p, %i.j
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.o, double %i.h, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double %i.ag)
  %i.ai = fadd double %i.n, %i.ah
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !886, !alias.scope !7524
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !886, !alias.scope !7524
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap15applyInverseMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7527)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load double, ptr %i.g, align 8, !tbaa !886, !noalias !7527
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.j = load double, ptr %i.i, align 8, !tbaa !886, !noalias !7527
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.l = load double, ptr %i.k, align 8, !tbaa !886, !noalias !7527
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.n = load double, ptr %i.m, align 8, !tbaa !886, !noalias !7527
  %i.o = load double, ptr %2, align 8, !tbaa !886, !noalias !7527 ; 2 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !886, !noalias !7527 ; 2 uses
  %i.q = load double, ptr %i.d, align 8, !tbaa !886, !noalias !7527 ; 2 uses
  %i.r = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !7527
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !7527
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s
  %i.w = insertelement <2 x double> poison, double %i.o, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.r, <2 x double> %i.v)
  %i.z = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !7527
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.z, <2 x double> %i.y)
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !886, !noalias !7527
  %i.ae = fadd <2 x double> %i.ac, %i.ad
  %i.af = fmul double %i.p, %i.j
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.o, double %i.h, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double %i.ag)
  %i.ai = fadd double %i.n, %i.ah
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !886, !alias.scope !7527
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !886, !alias.scope !7527
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyIJTERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7530)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !7530
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.i = load double, ptr %i.h, align 8, !tbaa !886, !noalias !7530
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.k = load double, ptr %i.j, align 8, !tbaa !886, !noalias !7530
  %i.l = load double, ptr %2, align 8, !tbaa !886, !noalias !7530 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !886, !noalias !7530 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !886, !noalias !7530 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !7530
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !7530
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !7530
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !886, !alias.scope !7530
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !886, !alias.scope !7530
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyIJTERKNS1_4Vec3IdEES6_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7535)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7536)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !7537
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.i = load double, ptr %i.h, align 8, !tbaa !886, !noalias !7537
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.k = load double, ptr %i.j, align 8, !tbaa !886, !noalias !7537
  %i.l = load double, ptr %2, align 8, !tbaa !886, !noalias !7537 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !886, !noalias !7537 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !886, !noalias !7537 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !7537
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !7537
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !7537
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !886, !alias.scope !7537
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !886, !alias.scope !7537
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyIJCERKNS1_4Mat3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load double, ptr %i.d, align 8, !tbaa !886, !noalias !7544 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !7544 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.i = load double, ptr %i.h, align 8, !tbaa !886, !noalias !7544 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.921.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !7544 ; 4 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !886, !noalias !7544 ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !7544 ; 4 uses
  %3 = load <2 x double>, ptr %i.l, align 8
  %i.r = load <3 x double>, ptr %2, align 8, !tbaa !886, !noalias !7545 ; 3 uses
  %4 = load <2 x double>, ptr %i.m, align 8
  %i.s = load <3 x double>, ptr %i.j, align 8, !tbaa !886, !noalias !7545 ; 3 uses
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <3 x i32> zeroinitializer
  %i.u = fmul <3 x double> %i.t, %i.s
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> zeroinitializer
  %i.w = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.r, <3 x double> %i.u)
  %5 = load <2 x double>, ptr %i.n, align 8
  %i.x = load <3 x double>, ptr %i.k, align 8, !tbaa !886, !noalias !7545 ; 3 uses
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> %i.x, <3 x double> %i.w) ; 6 uses
  %i.aa = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.p, %i.aa
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.o, <2 x double> %i.ab)
  %i.ae = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.q, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !886, !alias.scope !7546
  %i.ag = extractelement <3 x double> %i.z, i64 1
  %i.ah = fmul double %i.g, %i.ag
  %i.ai = extractelement <3 x double> %i.z, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.e, double %i.ah)
  %i.ak = extractelement <3 x double> %i.z, i64 2
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.i, double %i.aj)
  store double %i.al, ptr %.sroa.921.0..sroa_idx, align 8, !tbaa !886, !alias.scope !7546
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
  store <2 x double> %i.bp, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !886, !alias.scope !7546
  %i.bq = insertelement <2 x double> %i.am, double %i.g, i64 0
  %i.br = fmul <2 x double> %i.bq, %i.bd
  %i.bs = insertelement <2 x double> %i.aq, double %i.e, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> %i.au, double %i.i, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.bt)
  store <2 x double> %i.bv, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !886, !alias.scope !7546
  %i.bw = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.an, %i.bw
  %i.by = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ar, <2 x double> %i.bx)
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.av, <2 x double> %i.bz)
  store <2 x double> %i.cb, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !886, !alias.scope !7546
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap8applyIJCERKNS1_4Mat3IdEERKNS1_4Vec3IdEESA_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7555)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load double, ptr %i.d, align 8, !tbaa !886, !noalias !7556 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !7556 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.i = load double, ptr %i.h, align 8, !tbaa !886, !noalias !7556 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !7556 ; 4 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !886, !noalias !7556 ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !7556 ; 4 uses
  %5 = load <2 x double>, ptr %i.l, align 8
  %i.r = load <3 x double>, ptr %2, align 8, !tbaa !886, !noalias !7557 ; 3 uses
  %6 = load <2 x double>, ptr %i.m, align 8
  %i.s = load <3 x double>, ptr %i.j, align 8, !tbaa !886, !noalias !7557 ; 3 uses
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <3 x i32> zeroinitializer
  %i.u = fmul <3 x double> %i.t, %i.s
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> zeroinitializer
  %i.w = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.r, <3 x double> %i.u)
  %7 = load <2 x double>, ptr %i.n, align 8
  %i.x = load <3 x double>, ptr %i.k, align 8, !tbaa !886, !noalias !7557 ; 3 uses
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> %i.x, <3 x double> %i.w) ; 6 uses
  %i.aa = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.p, %i.aa
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.o, <2 x double> %i.ab)
  %i.ae = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.q, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !886, !alias.scope !7558
  %i.ag = extractelement <3 x double> %i.z, i64 1
  %i.ah = fmul double %i.g, %i.ag
  %i.ai = extractelement <3 x double> %i.z, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.e, double %i.ah)
  %i.ak = extractelement <3 x double> %i.z, i64 2
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.i, double %i.aj)
  store double %i.al, ptr %.sroa.921.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !7558
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
  store <2 x double> %i.bp, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !7558
  %i.bq = insertelement <2 x double> %i.am, double %i.g, i64 0
  %i.br = fmul <2 x double> %i.bq, %i.bd
  %i.bs = insertelement <2 x double> %i.aq, double %i.e, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> %i.au, double %i.i, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.bt)
  store <2 x double> %i.bv, ptr %.sroa.18.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !7558
  %i.bw = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.an, %i.bw
  %i.by = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ar, <2 x double> %i.bx)
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.av, <2 x double> %i.bz)
  store <2 x double> %i.cb, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !7558
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math9AffineMap11determinantEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load double, ptr %i.a, align 8, !tbaa !1250
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math9AffineMap11determinantERKNS1_4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load double, ptr %i.a, align 8, !tbaa !1250
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap9voxelSizeEv(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap9voxelSizeERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #7 comdat align 2 {
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
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNK7openvdb5v13_04math3MatILj4EdE3strB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i32 noundef 0)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.c = load ptr, ptr %4, align 8, !tbaa !909
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !907
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !895
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !929  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc15 unwind label %bb.o

.noexc15:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !935
  %.not.i1.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 67
  %i.p = load i8, ptr %i.o, align 1, !tbaa !908
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.l)
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %bb.e
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !895
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.o, !inline_history !49

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc16, %bb.d
  %.0.i.i.i = phi i8 [ %i.p, %bb.d ], [ %i.t, %.noexc16 ]
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext %.0.i.i.i)
          to label %.noexc18 unwind label %bb.o

.noexc18:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.o ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc18
  %i.w = load ptr, ptr %4, align 8, !tbaa !909    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !908
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.18, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNK7openvdb5v13_04math5TupleILi3EdE3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ad = load ptr, ptr %2, align 8, !tbaa !909
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !907
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.ah = load ptr, ptr %2, align 8, !tbaa !909   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !908
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %2, align 8, !tbaa !909   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !893  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !897
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !898
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !895
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !11
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !895
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !11
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !908
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !913
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !946

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math4Mat4IdE9preRotateENS1_4AxisEd(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, double noundef %2) local_unnamed_addr #7 comdat align 2 {
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
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !886 ; 2 uses
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !886 ; 2 uses
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
  store <2 x double> %i.s, ptr %i.e, align 8, !tbaa !886
  store <2 x double> %i.o, ptr %i.d, align 8, !tbaa !886
  %i.t = load <2 x double>, ptr %i.f, align 8, !tbaa !886 ; 2 uses
  %i.u = load <2 x double>, ptr %i.g, align 8, !tbaa !886 ; 2 uses
  %i.v = fmul <2 x double> %i.k, %i.u
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.t, <2 x double> %i.v)
  %i.x = fmul <2 x double> %i.n, %i.u
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.t, <2 x double> %i.x)
  store <2 x double> %i.y, ptr %i.g, align 8, !tbaa !886
  store <2 x double> %i.w, ptr %i.f, align 8, !tbaa !886
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ac = load <2 x double>, ptr %0, align 8, !tbaa !886 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.z, align 8, !tbaa !886 ; 2 uses
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
  store <2 x double> %i.an, ptr %i.z, align 8, !tbaa !886
  store <2 x double> %i.aj, ptr %0, align 8, !tbaa !886
  %i.ao = load <2 x double>, ptr %i.aa, align 8, !tbaa !886 ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ab, align 8, !tbaa !886 ; 2 uses
  %i.aq = fmul <2 x double> %i.ap, %i.af
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ao, <2 x double> %i.aq)
  %i.as = fmul <2 x double> %i.ai, %i.ap
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ao, <2 x double> %i.as)
  store <2 x double> %i.at, ptr %i.ab, align 8, !tbaa !886
  store <2 x double> %i.ar, ptr %i.aa, align 8, !tbaa !886
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = load <2 x double>, ptr %0, align 8, !tbaa !886 ; 2 uses
  %i.ay = load <2 x double>, ptr %i.au, align 8, !tbaa !886 ; 2 uses
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
  store <2 x double> %i.bi, ptr %i.au, align 8, !tbaa !886
  store <2 x double> %i.be, ptr %0, align 8, !tbaa !886
  %i.bj = load <2 x double>, ptr %i.av, align 8, !tbaa !886 ; 2 uses
  %i.bk = load <2 x double>, ptr %i.aw, align 8, !tbaa !886 ; 2 uses
  %i.bl = fmul <2 x double> %i.ba, %i.bk
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bj, <2 x double> %i.bl)
  %i.bn = fmul <2 x double> %i.bd, %i.bk
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bj, <2 x double> %i.bn)
  store <2 x double> %i.bo, ptr %i.aw, align 8, !tbaa !886
  store <2 x double> %i.bm, ptr %i.av, align 8, !tbaa !886
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #20

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
  %i.j = load <2 x double>, ptr %0, align 8, !tbaa !886 ; 4 uses
  %i.k = load <2 x double>, ptr %i.c, align 8, !tbaa !886 ; 3 uses
  %i.l = fmul <2 x double> %i.k, zeroinitializer  ; 2 uses
  %i.m = fadd <2 x double> %i.j, %i.l
  %i.n = load <2 x double>, ptr %i.d, align 8, !tbaa !886 ; 4 uses
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> zeroinitializer, <2 x double> %i.m)
  %i.p = load <2 x double>, ptr %i.e, align 8, !tbaa !886 ; 4 uses
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> zeroinitializer, <2 x double> %i.o)
  %i.r = load <2 x double>, ptr %i.f, align 8, !tbaa !886 ; 4 uses
  %i.s = load <2 x double>, ptr %i.g, align 8, !tbaa !886 ; 3 uses
  %i.t = fmul <2 x double> %i.s, zeroinitializer  ; 2 uses
  %i.u = fadd <2 x double> %i.r, %i.t
  %i.v = load <2 x double>, ptr %i.h, align 8, !tbaa !886 ; 4 uses
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> zeroinitializer, <2 x double> %i.u)
  %i.x = load <2 x double>, ptr %i.i, align 8, !tbaa !886 ; 4 uses
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
  %i.al = load double, ptr %i.b, align 8, !tbaa !886
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
  %i.p = load double, ptr %1, align 8, !tbaa !886
  %i.q = load double, ptr %i.a, align 8, !tbaa !886
  %i.r = fmul double %.sroa.4.0.copyload, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.copyload, double %i.p, double %i.r)
  %i.t = load double, ptr %i.b, align 8, !tbaa !886
  %i.u = tail call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload, double %i.t, double %i.s)
  %i.v = load double, ptr %i.c, align 8, !tbaa !886
  %i.w = tail call double @llvm.fmuladd.f64(double %.sroa.6.0.copyload, double %i.v, double %i.u)
  store double %i.w, ptr %0, align 8, !tbaa !886
  %i.x = load double, ptr %i.d, align 8, !tbaa !886
  %i.y = load double, ptr %i.e, align 8, !tbaa !886
  %i.z = fmul double %.sroa.4.0.copyload, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.copyload, double %i.x, double %i.z)
  %i.ab = load double, ptr %i.f, align 8, !tbaa !886
  %i.ac = tail call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload, double %i.ab, double %i.aa)
  %i.ad = load double, ptr %i.g, align 8, !tbaa !886
  %i.ae = tail call double @llvm.fmuladd.f64(double %.sroa.6.0.copyload, double %i.ad, double %i.ac)
  store double %i.ae, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !886
  %i.af = load double, ptr %i.h, align 8, !tbaa !886
  %i.ag = load double, ptr %i.i, align 8, !tbaa !886
  %i.ah = fmul double %.sroa.4.0.copyload, %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.copyload, double %i.af, double %i.ah)
  %i.aj = load double, ptr %i.j, align 8, !tbaa !886
  %i.ak = tail call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload, double %i.aj, double %i.ai)
  %i.al = load double, ptr %i.k, align 8, !tbaa !886
  %i.am = tail call double @llvm.fmuladd.f64(double %.sroa.6.0.copyload, double %i.al, double %i.ak)
  store double %i.am, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !886
  %i.an = load double, ptr %i.l, align 8, !tbaa !886
  %i.ao = load double, ptr %i.m, align 8, !tbaa !886
  %i.ap = fmul double %.sroa.4.0.copyload, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.copyload, double %i.an, double %i.ap)
  %i.ar = load double, ptr %i.n, align 8, !tbaa !886
  %i.as = tail call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload, double %i.ar, double %i.aq)
  %i.at = load double, ptr %i.o, align 8, !tbaa !886
  %i.au = tail call double @llvm.fmuladd.f64(double %.sroa.6.0.copyload, double %i.at, double %i.as)
  store double %i.au, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !886
  %i.av = load double, ptr %1, align 8, !tbaa !886
  %i.aw = load double, ptr %i.a, align 8, !tbaa !886
  %i.ax = fmul double %.sroa.8.0.copyload, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %.sroa.7.0.copyload, double %i.av, double %i.ax)
  %i.az = load double, ptr %i.b, align 8, !tbaa !886
  %i.ba = tail call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %i.az, double %i.ay)
  %i.bb = load double, ptr %i.c, align 8, !tbaa !886
  %i.bc = tail call double @llvm.fmuladd.f64(double %.sroa.10.0.copyload, double %i.bb, double %i.ba)
  store double %i.bc, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !886
  %i.bd = load double, ptr %i.d, align 8, !tbaa !886
  %i.be = load double, ptr %i.e, align 8, !tbaa !886
  %i.bf = fmul double %.sroa.8.0.copyload, %i.be
  %i.bg = tail call double @llvm.fmuladd.f64(double %.sroa.7.0.copyload, double %i.bd, double %i.bf)
  %i.bh = load double, ptr %i.f, align 8, !tbaa !886
  %i.bi = tail call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %i.bh, double %i.bg)
  %i.bj = load double, ptr %i.g, align 8, !tbaa !886
  %i.bk = tail call double @llvm.fmuladd.f64(double %.sroa.10.0.copyload, double %i.bj, double %i.bi)
  store double %i.bk, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !886
  %i.bl = load double, ptr %i.h, align 8, !tbaa !886
  %i.bm = load double, ptr %i.i, align 8, !tbaa !886
  %i.bn = fmul double %.sroa.8.0.copyload, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %.sroa.7.0.copyload, double %i.bl, double %i.bn)
  %i.bp = load double, ptr %i.j, align 8, !tbaa !886
  %i.bq = tail call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %i.bp, double %i.bo)
  %i.br = load double, ptr %i.k, align 8, !tbaa !886
  %i.bs = tail call double @llvm.fmuladd.f64(double %.sroa.10.0.copyload, double %i.br, double %i.bq)
  store double %i.bs, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !886
  %i.bt = load double, ptr %i.l, align 8, !tbaa !886
  %i.bu = load double, ptr %i.m, align 8, !tbaa !886
  %i.bv = fmul double %.sroa.8.0.copyload, %i.bu
  %i.bw = tail call double @llvm.fmuladd.f64(double %.sroa.7.0.copyload, double %i.bt, double %i.bv)
  %i.bx = load double, ptr %i.n, align 8, !tbaa !886
  %i.by = tail call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %i.bx, double %i.bw)
  %i.bz = load double, ptr %i.o, align 8, !tbaa !886
  %i.ca = tail call double @llvm.fmuladd.f64(double %.sroa.10.0.copyload, double %i.bz, double %i.by)
  store double %i.ca, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !886
  %i.cb = load double, ptr %1, align 8, !tbaa !886
  %i.cc = load double, ptr %i.a, align 8, !tbaa !886
  %i.cd = fmul double %.sroa.12.0.copyload, %i.cc
  %i.ce = tail call double @llvm.fmuladd.f64(double %.sroa.11.0.copyload, double %i.cb, double %i.cd)
  %i.cf = load double, ptr %i.b, align 8, !tbaa !886
  %i.cg = tail call double @llvm.fmuladd.f64(double %.sroa.13.0.copyload, double %i.cf, double %i.ce)
  %i.ch = load double, ptr %i.c, align 8, !tbaa !886
  %i.ci = tail call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload, double %i.ch, double %i.cg)
  store double %i.ci, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !886
  %i.cj = load double, ptr %i.d, align 8, !tbaa !886
  %i.ck = load double, ptr %i.e, align 8, !tbaa !886
  %i.cl = fmul double %.sroa.12.0.copyload, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %.sroa.11.0.copyload, double %i.cj, double %i.cl)
  %i.cn = load double, ptr %i.f, align 8, !tbaa !886
  %i.co = tail call double @llvm.fmuladd.f64(double %.sroa.13.0.copyload, double %i.cn, double %i.cm)
  %i.cp = load double, ptr %i.g, align 8, !tbaa !886
  %i.cq = tail call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload, double %i.cp, double %i.co)
  store double %i.cq, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !886
  %i.cr = load double, ptr %i.h, align 8, !tbaa !886
  %i.cs = load double, ptr %i.i, align 8, !tbaa !886
  %i.ct = fmul double %.sroa.12.0.copyload, %i.cs
  %i.cu = tail call double @llvm.fmuladd.f64(double %.sroa.11.0.copyload, double %i.cr, double %i.ct)
  %i.cv = load double, ptr %i.j, align 8, !tbaa !886
  %i.cw = tail call double @llvm.fmuladd.f64(double %.sroa.13.0.copyload, double %i.cv, double %i.cu)
  %i.cx = load double, ptr %i.k, align 8, !tbaa !886
  %i.cy = tail call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload, double %i.cx, double %i.cw)
  store double %i.cy, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !886
  %i.cz = load double, ptr %i.l, align 8, !tbaa !886
  %i.da = load double, ptr %i.m, align 8, !tbaa !886
  %i.db = fmul double %.sroa.12.0.copyload, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %.sroa.11.0.copyload, double %i.cz, double %i.db)
  %i.dd = load double, ptr %i.n, align 8, !tbaa !886
  %i.de = tail call double @llvm.fmuladd.f64(double %.sroa.13.0.copyload, double %i.dd, double %i.dc)
  %i.df = load double, ptr %i.o, align 8, !tbaa !886
  %i.dg = tail call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload, double %i.df, double %i.de)
  store double %i.dg, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !886
  %i.dh = load double, ptr %1, align 8, !tbaa !886
  %i.di = load double, ptr %i.a, align 8, !tbaa !886
  %i.dj = fmul double %.sroa.16.0.copyload, %i.di
  %i.dk = tail call double @llvm.fmuladd.f64(double %.sroa.15.0.copyload, double %i.dh, double %i.dj)
  %i.dl = load double, ptr %i.b, align 8, !tbaa !886
  %i.dm = tail call double @llvm.fmuladd.f64(double %.sroa.17.0.copyload, double %i.dl, double %i.dk)
  %i.dn = load double, ptr %i.c, align 8, !tbaa !886
  %i.do = tail call double @llvm.fmuladd.f64(double %.sroa.18.0.copyload, double %i.dn, double %i.dm)
  store double %i.do, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !886
  %i.dp = load double, ptr %i.d, align 8, !tbaa !886
  %i.dq = load double, ptr %i.e, align 8, !tbaa !886
  %i.dr = fmul double %.sroa.16.0.copyload, %i.dq
  %i.ds = tail call double @llvm.fmuladd.f64(double %.sroa.15.0.copyload, double %i.dp, double %i.dr)
  %i.dt = load double, ptr %i.f, align 8, !tbaa !886
  %i.du = tail call double @llvm.fmuladd.f64(double %.sroa.17.0.copyload, double %i.dt, double %i.ds)
  %i.dv = load double, ptr %i.g, align 8, !tbaa !886
  %i.dw = tail call double @llvm.fmuladd.f64(double %.sroa.18.0.copyload, double %i.dv, double %i.du)
  store double %i.dw, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !886
  %i.dx = load double, ptr %i.h, align 8, !tbaa !886
  %i.dy = load double, ptr %i.i, align 8, !tbaa !886
  %i.dz = fmul double %.sroa.16.0.copyload, %i.dy
  %i.ea = tail call double @llvm.fmuladd.f64(double %.sroa.15.0.copyload, double %i.dx, double %i.dz)
  %i.eb = load double, ptr %i.j, align 8, !tbaa !886
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE:bb.a
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !984
  %i.c = load i32, ptr %2, align 8, !tbaa !982
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !983
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !1361   ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !1360  ; 2 uses
  %.not4.i = icmp eq i8 %i.l, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i8 %i.l, -1
  store i8 %i.m, ptr %i.k, align 4, !tbaa !1360
  store i64 0, ptr %0, align 8, !tbaa !1361
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1348
  %i.v = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16663 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.v, align 64, !tbaa !895
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = load i32, ptr %i.o, align 64, !tbaa !982 ; 2 uses
  store i32 %i.y, ptr %i.x, align 64, !tbaa !982
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !983 ; 2 uses
  %i.ab = sub i32 %i.y, %i.aa
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  store i32 %i.ad, ptr %i.o, align 64, !tbaa !982
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !983
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.af = load i64, ptr %i.q, align 8, !tbaa !984
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !984
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !5990
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  store ptr null, ptr %i.ah, align 32, !tbaa !5992
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !1361
  %i.ak = lshr i64 %i.aj, 1                       ; 2 uses
  store i64 %i.ak, ptr %i.s, align 8, !tbaa !1361
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1361
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i32 2, ptr %i.al, align 16, !tbaa !1359
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  %i.an = load i8, ptr %i.t, align 4, !tbaa !1360
  store i8 %i.an, ptr %i.am, align 4, !tbaa !1360
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.ap = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !1362
  %i.aq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16664 ; 6 uses
  %i.ar = load ptr, ptr %i.u, align 32, !tbaa !1376
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !1366
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !1367
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.au, ptr %i.at, align 8, !tbaa !1362
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.av, align 8, !tbaa !1378
  store ptr %i.aq, ptr %i.u, align 32, !tbaa !5992
  store ptr %i.aq, ptr %i.ah, align 32, !tbaa !5992
  %i.aw = load ptr, ptr %3, align 8, !tbaa !1379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.aw), !inline_history !16664
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !984
  %i.ay = load i32, ptr %2, align 8, !tbaa !982
  %i.az = load i32, ptr %i.d, align 4, !tbaa !983
  %i.ba = sub i32 %i.ay, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bd = load i64, ptr %0, align 8, !tbaa !1361  ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !16665

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bd, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i8, ptr %i.n, align 4, !tbaa !1360 ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bf, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = add i8 %i.bf, -1
  store i8 %i.bg, ptr %i.n, align 4, !tbaa !1360
  store i64 0, ptr %0, align 8, !tbaa !1361
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.394", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !984
  %i.c = load i32, ptr %2, align 8, !tbaa !982    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !983  ; 4 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !1360
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ult i32 %i.e, %i.c
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !5212 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5247, !noalias !16685 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1321, !noalias !16685
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.s = zext i32 %i.e to i64
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64
  %scevgep81 = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %indvar78 = phi i32 [ %indvar.next79, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.t = add i32 %i.e, %indvar78
  %i.u = mul i32 %i.t, 7
  %i.v = zext i32 %i.u to i64
  %i.w = mul i64 %indvars.iv.i.i.i.i.i.i, 7
  %i.x = and i64 %i.w, 4294967295
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %i.x ; 7 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !913 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %i.aa to i64 ; 6 uses
  %min.iters.check86 = icmp ult i32 %i.aa, 4
  br i1 %min.iters.check86, label %scalar.ph85.preheader, label %vector.memcheck77

vector.memcheck77:                                ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ac = add nuw nsw i64 %wide.trip.count.i.i.i.i.i.i.i, %i.v
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %scevgep80 = getelementptr i8, ptr %i.o, i64 %i.ad
  %bound082 = icmp ult ptr %i.y, %scevgep81
  %bound183 = icmp ult ptr %i.r, %scevgep80
  %found.conflict84 = and i1 %bound082, %bound183
  br i1 %found.conflict84, label %scalar.ph85.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck77
  %n.vec88 = and i64 %wide.trip.count.i.i.i.i.i.i.i, 2147483644 ; 3 uses
  %6 = load <2 x double>, ptr %i.r, align 8
  %broadcast.splat94 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index90 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load91 = load <2 x double>, ptr %i.ae, align 8, !tbaa !886, !alias.scope !16686, !noalias !16687
  %wide.load92 = load <2 x double>, ptr %i.af, align 8, !tbaa !886, !alias.scope !16686, !noalias !16687
  %i.ag = fmul <2 x double> %broadcast.splat94, %wide.load91
  %i.ah = fmul <2 x double> %broadcast.splat94, %wide.load92
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !886, !alias.scope !16686, !noalias !16687
  store <2 x double> %i.ah, ptr %i.af, align 8, !tbaa !886, !alias.scope !16686, !noalias !16687
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.ai, label %middle.block96, label %vector.body89, !llvm.loop !16671

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %n.vec88, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %cmp.n97, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, label %scalar.ph85.preheader

scalar.ph85.preheader:                            ; preds = %vector.memcheck77, %.lr.ph.i.i.i.i.i.i.i, %middle.block96
  %indvars.iv.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck77 ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %n.vec88, %middle.block96 ] ; 3 uses
  %xtraiter100 = and i64 %wide.trip.count.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol

scalar.ph85.prol:                                 ; preds = %scalar.ph85.preheader, %scalar.ph85.prol
  %indvars.iv.i.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %scalar.ph85.prol ], [ %indvars.iv.i.i.i.i.i.i.i.ph, %scalar.ph85.preheader ] ; 2 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %scalar.ph85.prol ], [ 0, %scalar.ph85.preheader ]
  %i.aj = load double, ptr %i.r, align 8, !tbaa !886
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i.prol ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !886
  %i.am = fmul double %i.aj, %i.al
  store double %i.am, ptr %i.ak, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol, !llvm.loop !16672

scalar.ph85.prol.loopexit:                        ; preds = %scalar.ph85.prol, %scalar.ph85.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.i.ph, %scalar.ph85.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %scalar.ph85.prol ]
  %i.an = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, label %scalar.ph85

scalar.ph85:                                      ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.3, %scalar.ph85 ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %scalar.ph85.prol.loopexit ] ; 5 uses
  %i.ap = load double, ptr %i.r, align 8, !tbaa !886
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !886
  %i.as = fmul double %i.ap, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !886
  %i.at = load double, ptr %i.r, align 8, !tbaa !886
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !886
  %i.ax = fmul double %i.at, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !886
  %i.ay = load double, ptr %i.r, align 8, !tbaa !886
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !886
  %i.bc = fmul double %i.ay, %i.bb
  store double %i.bc, ptr %i.ba, align 8, !tbaa !886
  %i.bd = load double, ptr %i.r, align 8, !tbaa !886
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !886
  %i.bh = fmul double %i.bd, %i.bg
  store double %i.bh, ptr %i.bf, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, label %scalar.ph85, !llvm.loop !16673

_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i: ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85, %middle.block96, %bb.d
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  %indvar.next79 = add i32 %indvar78, 1
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %bb.d, !llvm.loop !16674

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.bi, align 1, !tbaa !908
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1417
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.e
  %i.bp = phi i8 [ %i.ow, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.e ] ; 3 uses
  %i.bq = phi i8 [ %i.ox, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.e ] ; 13 uses
  %i.br = phi i8 [ %i.oy, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.e ] ; 9 uses
  %i.bs = load i8, ptr %i.i, align 4, !tbaa !1360 ; 10 uses
  %i.bt = icmp ult i8 %i.bq, 8
  br i1 %i.bt, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.phi.trans.insert.i = zext i8 %i.br to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !908
  %i.bu = icmp ult i8 %.pre.i, %i.bs
  br i1 %i.bu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %bb.v
  %i.bv = icmp ult i8 %i.kf, %i.bs
  br i1 %i.bv, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.g
  %i.bw = zext nneg i8 %i.jt to i64               ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bw ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !984
  %i.ca = load i32, ptr %i.bx, align 8, !tbaa !982
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !983
  %i.cd = sub i32 %i.ca, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp ult i64 %i.bz, %i.ce
  br i1 %i.cf, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bw ; 2 uses
  %i.ch = add i8 %i.br, 2
  %i.ci = and i8 %i.ch, 7                         ; 5 uses
  %i.cj = zext nneg i8 %i.ci to i64               ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.cj ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !1417
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !982 ; 2 uses
  store i32 %i.cl, ptr %i.bx, align 8, !tbaa !982
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !983 ; 2 uses
  %i.co = sub i32 %i.cl, %i.cn
  %i.cp = lshr i32 %i.co, 1
  %i.cq = add i32 %i.cp, %i.cn                    ; 2 uses
  store i32 %i.cq, ptr %i.ck, align 8, !tbaa !982
  store i32 %i.cq, ptr %i.cb, align 4, !tbaa !983
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !984
  store i64 %i.cs, ptr %i.by, align 8, !tbaa !984
  %i.ct = load i8, ptr %i.cg, align 1, !tbaa !908
  %i.cu = add i8 %i.ct, 1                         ; 3 uses
  store i8 %i.cu, ptr %i.cg, align 1, !tbaa !908
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cj
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !908
  %i.cw = add nuw nsw i8 %i.bq, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.cw, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.i, !llvm.loop !76

bb.i:                                             ; preds = %bb.h
  %i.cx = icmp ult i8 %i.cu, %i.bs
  br i1 %i.cx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.i
  %i.cy = zext nneg i8 %i.ci to i64               ; 2 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.cy ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !984
  %i.dc = load i32, ptr %i.cz, align 8, !tbaa !982
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !983
  %i.df = sub i32 %i.dc, %i.de
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp ult i64 %i.db, %i.dg
  br i1 %i.dh, label %bb.j, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cy ; 2 uses
  %i.dj = add i8 %i.br, 3
  %i.dk = and i8 %i.dj, 7                         ; 5 uses
  %i.dl = zext nneg i8 %i.dk to i64               ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.dl ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !1417
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !982 ; 2 uses
  store i32 %i.dn, ptr %i.cz, align 8, !tbaa !982
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !983 ; 2 uses
  %i.dq = sub i32 %i.dn, %i.dp
  %i.dr = lshr i32 %i.dq, 1
  %i.ds = add i32 %i.dr, %i.dp                    ; 2 uses
  store i32 %i.ds, ptr %i.dm, align 8, !tbaa !982
  store i32 %i.ds, ptr %i.dd, align 4, !tbaa !983
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !984
  store i64 %i.du, ptr %i.da, align 8, !tbaa !984
  %i.dv = load i8, ptr %i.di, align 1, !tbaa !908
  %i.dw = add i8 %i.dv, 1                         ; 3 uses
  store i8 %i.dw, ptr %i.di, align 1, !tbaa !908
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.dl
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !908
  %i.dy = add nuw nsw i8 %i.bq, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.dy, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.k, !llvm.loop !76

bb.k:                                             ; preds = %bb.j
  %i.dz = icmp ult i8 %i.dw, %i.bs
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.jh = zext i8 %i.br to i64                    ; 2 uses
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.jh ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !984
  %i.jl = load i32, ptr %i.ji, align 8, !tbaa !982
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 4 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !983
  %i.jo = sub i32 %i.jl, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = icmp ult i64 %i.jk, %i.jp
  br i1 %i.jq, label %bb.v, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.v:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.jh ; 2 uses
  %i.js = add nuw i8 %i.br, 1
  %i.jt = and i8 %i.js, 7                         ; 5 uses
  %i.ju = zext nneg i8 %i.jt to i64               ; 2 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.ju ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jv, ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i64 16, i1 false), !tbaa.struct !1417
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !982 ; 2 uses
  store i32 %i.jw, ptr %i.ji, align 8, !tbaa !982
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !983 ; 2 uses
  %i.jz = sub i32 %i.jw, %i.jy
  %i.ka = lshr i32 %i.jz, 1
  %i.kb = add i32 %i.ka, %i.jy                    ; 2 uses
  store i32 %i.kb, ptr %i.jv, align 8, !tbaa !982
  store i32 %i.kb, ptr %i.jm, align 4, !tbaa !983
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !984
  store i64 %i.kd, ptr %i.jj, align 8, !tbaa !984
  %i.ke = load i8, ptr %i.jr, align 1, !tbaa !908
  %i.kf = add i8 %i.ke, 1                         ; 3 uses
  store i8 %i.kf, ptr %i.jr, align 1, !tbaa !908
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ju
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !908
  %i.kh = add nuw nsw i8 %i.bq, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.kh, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.g, !llvm.loop !76

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.g, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.u, %.lr.ph.i, %bb.f
  %i.ki = phi i8 [ %i.bq, %bb.f ], [ %i.bq, %.lr.ph.i ], [ %i.bq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.kh, %bb.g ], [ %i.kh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cw, %bb.i ], [ %i.cw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dy, %bb.k ], [ %i.dy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.fa, %bb.m ], [ %i.fa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.gc, %bb.o ], [ %i.gc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.he, %bb.q ], [ %i.he, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.ig, %bb.s ], [ %i.ig, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.jg, %bb.u ] ; 6 uses
  %i.kj = phi i8 [ %i.br, %bb.f ], [ %i.br, %.lr.ph.i ], [ %i.br, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.jt, %bb.g ], [ %i.jt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.ci, %bb.i ], [ %i.ci, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dk, %bb.k ], [ %i.dk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.em, %bb.m ], [ %i.em, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fo, %bb.o ], [ %i.fo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gq, %bb.q ], [ %i.gq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hs, %bb.s ], [ %i.hs, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.el, %bb.u ] ; 6 uses
  %i.kk = load ptr, ptr %i.bk, align 32, !tbaa !5992
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load atomic i8, ptr %i.kl monotonic, align 1, !range !972, !noundef !1253
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.v
  %.lcssa = phi i8 [ %i.jt, %bb.v ], [ %i.ci, %bb.h ], [ %i.dk, %bb.j ], [ %i.em, %bb.l ], [ %i.fo, %bb.n ], [ %i.gq, %bb.p ], [ %i.hs, %bb.r ], [ %i.el, %bb.t ] ; 2 uses
  %i.ko = load ptr, ptr %i.bk, align 32, !tbaa !5992
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load atomic i8, ptr %i.kp monotonic, align 1, !range !972, !noundef !1253
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %.thread73, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread73:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.ks = add i8 %i.bs, 1
  store i8 %i.ks, ptr %i.i, align 4, !tbaa !1360
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kt = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.ku = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.ki, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.kt to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kv = add i8 %i.bs, 1                         ; 2 uses
  store i8 %i.kv, ptr %i.i, align 4, !tbaa !1360
  %i.kw = icmp ugt i8 %i.ki, 1
  br i1 %i.kw, label %.noexc, label %bb.x

.noexc:                                           ; preds = %.thread73, %bb.w
  %i.kx = phi i8 [ 8, %.thread73 ], [ %i.ki, %bb.w ]
  %i.ky = phi i8 [ %.lcssa, %.thread73 ], [ %i.kj, %bb.w ]
  %i.kz = zext nneg i8 %i.bp to i64               ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1348
  %i.lc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16675 ; 10 uses
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.le, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.lc, align 64, !tbaa !895
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.lf, ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i64 16, i1 false), !tbaa.struct !1417
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.lg, ptr noundef nonnull align 16 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !5990
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 96 ; 2 uses
  store ptr null, ptr %i.lh, align 32, !tbaa !5992
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 104
  %i.lj = load i64, ptr %i.bn, align 8, !tbaa !1361
  %i.lk = lshr i64 %i.lj, 1                       ; 2 uses
  store i64 %i.lk, ptr %i.bn, align 8, !tbaa !1361
  store i64 %i.lk, ptr %i.li, align 8, !tbaa !1361
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lc, i64 112
  store i32 2, ptr %i.ll, align 16, !tbaa !1359
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 116
  %i.ln = load i8, ptr %i.bo, align 4, !tbaa !1360
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  %i.lp = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.lp, ptr %i.lo, align 8, !tbaa !1362
  %i.lq = sub i8 %i.ln, %i.lb
  store i8 %i.lq, ptr %i.lm, align 4, !tbaa !1360
  %i.lr = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16675 ; 6 uses
  %i.ls = load ptr, ptr %i.bk, align 32, !tbaa !1376
  store ptr %i.ls, ptr %i.lr, align 8, !tbaa !1366
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i32 2, ptr %i.lt, align 8, !tbaa !1367
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lv = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.lv, ptr %i.lu, align 8, !tbaa !1362
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  store i8 0, ptr %i.lw, align 8, !tbaa !1378
  store ptr %i.lr, ptr %i.bk, align 32, !tbaa !5992
  store ptr %i.lr, ptr %i.lh, align 32, !tbaa !5992
  %i.lx = load ptr, ptr %3, align 8, !tbaa !1379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.lc, ptr noundef nonnull align 8 dereferenceable(128) %i.lx), !inline_history !16675
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ly = add i8 %i.kx, -1
  %i.lz = add nuw nsw i8 %i.bp, 1
  %i.ma = and i8 %i.lz, 7
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.x:                                             ; preds = %bb.w
  %i.mb = zext i8 %i.kj to i64                    ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !908
  %i.me = icmp ult i8 %i.md, %i.kv
  br i1 %i.me, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.x
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.mb ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !984
  %i.mi = load i32, ptr %i.mf, align 8, !tbaa !982
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !983
  %i.ml = sub i32 %i.mi, %i.mk
  %i.mm = zext i32 %i.ml to i64
  %i.mn = icmp ult i64 %i.mh, %i.mm
  br i1 %i.mn, label %thread-pre-split33, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %i.mo = phi i8 [ %i.kt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kj, %bb.x ], [ %i.kj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mp = phi i8 [ %i.ku, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.ki, %bb.x ], [ %i.ki, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.mb, %bb.x ], [ %i.mb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.pre-phi ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !983 ; 3 uses
  %i.mt = load i32, ptr %i.mq, align 8, !tbaa !982 ; 2 uses
  %i.mu = icmp ult i32 %i.ms, %i.mt
  br i1 %i.mu, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.mv = load ptr, ptr %i.bl, align 16, !tbaa !5212 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !5247, !noalias !16688 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !1321, !noalias !16688
  %i.na = zext i32 %i.ms to i64
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.mt to i64
  br label %bb.y

bb.y:                                             ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i.i15
  %indvar = phi i32 [ %indvar.next, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18 ], [ 0, %.lr.ph.i.i.i.i.i.i15 ] ; 2 uses
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i19, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18 ], [ %i.na, %.lr.ph.i.i.i.i.i.i15 ] ; 3 uses
  %i.nb = add i32 %i.ms, %indvar
  %i.nc = mul i32 %i.nb, 7
  %i.nd = zext i32 %i.nc to i64
  %i.ne = mul i64 %indvars.iv.i.i.i.i.i.i17, 7
  %i.nf = and i64 %i.ne, 4294967295
  %i.ng = getelementptr [8 x i8], ptr %i.mx, i64 %i.nf ; 7 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.i.i.i.i.i.i17
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !913 ; 3 uses
  %i.nj = icmp sgt i32 %i.ni, 0
  br i1 %i.nj, label %.lr.ph.i.i.i.i.i.i.i21, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i21:                           ; preds = %bb.y
  %wide.trip.count.i.i.i.i.i.i.i22 = zext nneg i32 %i.ni to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ni, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i21
  %i.nk = add nuw nsw i64 %wide.trip.count.i.i.i.i.i.i.i22, %i.nd
  %i.nl = shl nuw nsw i64 %i.nk, 3
  %scevgep = getelementptr i8, ptr %i.mx, i64 %i.nl
  %bound0 = icmp ult ptr %i.ng, %i.bk
  %bound1 = icmp ult ptr %i.bm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i.i.i22, 2147483644 ; 3 uses
  %7 = load <2 x double>, ptr %i.bm, align 8
  %broadcast.splat = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %index ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.nm, align 8, !tbaa !886, !alias.scope !16689, !noalias !16690
  %wide.load76 = load <2 x double>, ptr %i.nn, align 8, !tbaa !886, !alias.scope !16689, !noalias !16690
  %i.no = fmul <2 x double> %broadcast.splat, %wide.load
  %i.np = fmul <2 x double> %broadcast.splat, %wide.load76
  store <2 x double> %i.no, ptr %i.nm, align 8, !tbaa !886, !alias.scope !16689, !noalias !16690
  store <2 x double> %i.np, ptr %i.nn, align 8, !tbaa !886, !alias.scope !16689, !noalias !16690
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nq = icmp eq i64 %index.next, %n.vec
  br i1 %i.nq, label %middle.block, label %vector.body, !llvm.loop !16681

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i.i.i.i22
  br i1 %cmp.n, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i21, %middle.block
  %indvars.iv.i.i.i.i.i.i.i23.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i21 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i.i.i22, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.i.i.i23.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i24.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i.i.i23.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.nr = load double, ptr %i.bm, align 8, !tbaa !886
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i.i.i.i23.prol ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !886
  %i.nu = fmul double %i.nr, %i.nt
  store double %i.nu, ptr %i.ns, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.i24.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i23.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !16682

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.i.i23.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.i23.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i24.prol, %scalar.ph.prol ]
  %i.nv = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i23.ph, %wide.trip.count.i.i.i.i.i.i.i22
  %i.nw = icmp ugt i64 %i.nv, -4
  br i1 %i.nw, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i.i.i.i23 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i24.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.i.i.i23.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.nx = load double, ptr %i.bm, align 8, !tbaa !886
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i.i.i.i23 ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !886
  %i.oa = fmul double %i.nx, %i.nz
  store double %i.oa, ptr %i.ny, align 8, !tbaa !886
  %i.ob = load double, ptr %i.bm, align 8, !tbaa !886
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %i.oe = load double, ptr %i.od, align 8, !tbaa !886
  %i.of = fmul double %i.ob, %i.oe
  store double %i.of, ptr %i.od, align 8, !tbaa !886
  %i.og = load double, ptr %i.bm, align 8, !tbaa !886
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16 ; 2 uses
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !886
  %i.ok = fmul double %i.og, %i.oj
  store double %i.ok, ptr %i.oi, align 8, !tbaa !886
  %i.ol = load double, ptr %i.bm, align 8, !tbaa !886
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 24 ; 2 uses
  %i.oo = load double, ptr %i.on, align 8, !tbaa !886
  %i.op = fmul double %i.ol, %i.oo
  store double %i.op, ptr %i.on, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.i24.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i23, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i24.3, %wide.trip.count.i.i.i.i.i.i.i22
  br i1 %exitcond.not.i.i.i.i.i.i.i25.3, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, label %scalar.ph, !llvm.loop !16683

_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.y
  %indvars.iv.next.i.i.i.i.i.i19 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i20 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i19, %wide.trip.count.i.i.i.i.i.i16
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not.i.i.i.i.i.i20, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26, label %bb.y, !llvm.loop !16674

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26: ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.oq = add i8 %i.mp, -1
  %i.or = add nuw i8 %i.mo, 7
  %i.os = and i8 %i.or, 7
  br label %thread-pre-split33

thread-pre-split33:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26
  %i.ot = phi i8 [ %i.oq, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26 ], [ %i.ki, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ou = phi i8 [ %i.os, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26 ], [ %i.kj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.ov = icmp eq i8 %i.ot, 0
  br i1 %i.ov, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split33
  %i.ow = phi i8 [ %i.ma, %.noexc ], [ %i.bp, %thread-pre-split33 ]
  %i.ox = phi i8 [ %i.ly, %.noexc ], [ %i.ot, %thread-pre-split33 ]
  %i.oy = phi i8 [ %i.ky, %.noexc ], [ %i.ou, %thread-pre-split33 ]
  %i.oz = load ptr, ptr %3, align 8, !tbaa !1379  ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 15
  %i.pb = load atomic i8, ptr %i.pa monotonic, align 1
  %i.pc = icmp eq i8 %i.pb, -1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8
  %.0.i.i = select i1 %i.pc, ptr %i.pe, ptr %i.oz
  %i.pf = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.pf, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32, label %bb.f, !llvm.loop !16684

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32: ; preds = %thread-pre-split33, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1344
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1345
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !908
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !983
  %i.g = load i32, ptr %0, align 8, !tbaa !982
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !1348
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !895
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1417
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !5993
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr null, ptr %i.l, align 32, !tbaa !5995
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 0, ptr %i.p, align 16, !tbaa !1359
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i8 5, ptr %i.q, align 4, !tbaa !1360
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !1361
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.u = load i64, ptr %3, align 8, !tbaa !1362
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1366
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !1367
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !1370
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !1018
  store ptr %4, ptr %i.l, align 32, !tbaa !5995
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
end_hunk_3
begin_hunk_4_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !984
  %i.c = load i32, ptr %2, align 8, !tbaa !982
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !983
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !1361   ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !1360  ; 2 uses
  %.not4.i = icmp eq i8 %i.l, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i8 %i.l, -1
  store i8 %i.m, ptr %i.k, align 4, !tbaa !1360
  store i64 0, ptr %0, align 8, !tbaa !1361
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1348
  %i.v = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16691 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.v, align 64, !tbaa !895
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = load i32, ptr %i.o, align 64, !tbaa !982 ; 2 uses
  store i32 %i.y, ptr %i.x, align 64, !tbaa !982
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !983 ; 2 uses
  %i.ab = sub i32 %i.y, %i.aa
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  store i32 %i.ad, ptr %i.o, align 64, !tbaa !982
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !983
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.af = load i64, ptr %i.q, align 8, !tbaa !984
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !984
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !5993
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  store ptr null, ptr %i.ah, align 32, !tbaa !5995
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !1361
  %i.ak = lshr i64 %i.aj, 1                       ; 2 uses
  store i64 %i.ak, ptr %i.s, align 8, !tbaa !1361
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1361
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i32 2, ptr %i.al, align 16, !tbaa !1359
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  %i.an = load i8, ptr %i.t, align 4, !tbaa !1360
  store i8 %i.an, ptr %i.am, align 4, !tbaa !1360
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.ap = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !1362
  %i.aq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16692 ; 6 uses
  %i.ar = load ptr, ptr %i.u, align 32, !tbaa !1376
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !1366
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !1367
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.au, ptr %i.at, align 8, !tbaa !1362
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.av, align 8, !tbaa !1378
  store ptr %i.aq, ptr %i.u, align 32, !tbaa !5995
  store ptr %i.aq, ptr %i.ah, align 32, !tbaa !5995
  %i.aw = load ptr, ptr %3, align 8, !tbaa !1379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.aw), !inline_history !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !984
  %i.ay = load i32, ptr %2, align 8, !tbaa !982
  %i.az = load i32, ptr %i.d, align 4, !tbaa !983
  %i.ba = sub i32 %i.ay, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bd = load i64, ptr %0, align 8, !tbaa !1361  ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !16693

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bd, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i8, ptr %i.n, align 4, !tbaa !1360 ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bf, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = add i8 %i.bf, -1
  store i8 %i.bg, ptr %i.n, align 4, !tbaa !1360
  store i64 0, ptr %0, align 8, !tbaa !1361
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.394", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !984
  %i.c = load i32, ptr %2, align 8, !tbaa !982    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !983  ; 3 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !1360
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ult i32 %i.e, %i.c
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.n = load ptr, ptr %i.l, align 16, !tbaa !5218 ; 8 uses
  %i.o = zext i32 %i.e to i64                     ; 6 uses
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64 ; 5 uses
  %i.p = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %i.o ; 3 uses
  %min.iters.check78 = icmp ult i64 %i.p, 8
  br i1 %min.iters.check78, label %scalar.ph77.preheader, label %vector.memcheck79

vector.memcheck79:                                ; preds = %.lr.ph.i.i.i.i.i.i
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = getelementptr nuw i8, ptr %i.n, i64 %i.q
  %i.s = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i.i, 3
  %i.t = getelementptr i8, ptr %i.n, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %bound080 = icmp ult ptr %i.r, %i.u
  %bound181 = icmp ult ptr %i.m, %i.t
  %found.conflict82 = and i1 %bound080, %bound181
  br i1 %found.conflict82, label %scalar.ph77.preheader, label %vector.ph83

vector.ph83:                                      ; preds = %vector.memcheck79
  %n.vec84 = and i64 %i.p, -4                     ; 3 uses
  %i.v = add nsw i64 %n.vec84, %i.o
  %6 = load <2 x double>, ptr %i.m, align 8
  %broadcast.splat90 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep99 = getelementptr [8 x i8], ptr %i.n, i64 %i.o
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next91, %vector.body85 ] ; 2 uses
  %gep100 = getelementptr [8 x i8], ptr %invariant.gep99, i64 %index86 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %gep100, i64 16 ; 2 uses
  %wide.load87 = load <2 x double>, ptr %gep100, align 8, !tbaa !886, !alias.scope !16708, !noalias !16709
  %wide.load88 = load <2 x double>, ptr %i.w, align 8, !tbaa !886, !alias.scope !16708, !noalias !16709
  %i.x = fmul <2 x double> %broadcast.splat90, %wide.load87
  %i.y = fmul <2 x double> %broadcast.splat90, %wide.load88
  store <2 x double> %i.x, ptr %gep100, align 8, !tbaa !886, !alias.scope !16708, !noalias !16709
  store <2 x double> %i.y, ptr %i.w, align 8, !tbaa !886, !alias.scope !16708, !noalias !16709
  %index.next91 = add nuw i64 %index86, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.z, label %middle.block92, label %vector.body85, !llvm.loop !16697

middle.block92:                                   ; preds = %vector.body85
  %cmp.n93 = icmp eq i64 %i.p, %n.vec84
  br i1 %cmp.n93, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph77.preheader

scalar.ph77.preheader:                            ; preds = %vector.memcheck79, %.lr.ph.i.i.i.i.i.i, %middle.block92
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ %i.o, %vector.memcheck79 ], [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %middle.block92 ] ; 4 uses
  %i.aa = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %indvars.iv.i.i.i.i.i.i.ph
  %xtraiter96 = and i64 %i.aa, 3                  ; 2 uses
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %scalar.ph77.prol.loopexit, label %scalar.ph77.prol

scalar.ph77.prol:                                 ; preds = %scalar.ph77.preheader, %scalar.ph77.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph77.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph77.preheader ] ; 2 uses
  %prol.iter98 = phi i64 [ %prol.iter98.next, %scalar.ph77.prol ], [ 0, %scalar.ph77.preheader ]
  %i.ab = load double, ptr %i.m, align 8, !tbaa !5219
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i.i.prol ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !886
  %i.ae = fmul double %i.ab, %i.ad
  store double %i.ae, ptr %i.ac, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter98.next = add i64 %prol.iter98, 1     ; 2 uses
  %prol.iter98.cmp.not = icmp eq i64 %prol.iter98.next, %xtraiter96
  br i1 %prol.iter98.cmp.not, label %scalar.ph77.prol.loopexit, label %scalar.ph77.prol, !llvm.loop !16698

scalar.ph77.prol.loopexit:                        ; preds = %scalar.ph77.prol, %scalar.ph77.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph77.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph77.prol ]
  %i.af = sub nsw i64 %indvars.iv.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph77

scalar.ph77:                                      ; preds = %scalar.ph77.prol.loopexit, %scalar.ph77
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.3, %scalar.ph77 ], [ %indvars.iv.i.i.i.i.i.i.unr, %scalar.ph77.prol.loopexit ] ; 5 uses
  %i.ah = load double, ptr %i.m, align 8, !tbaa !5219
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !886
  %i.ak = fmul double %i.ah, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !886
  %i.al = load double, ptr %i.m, align 8, !tbaa !5219
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !886
  %i.ap = fmul double %i.al, %i.ao
  store double %i.ap, ptr %i.an, align 8, !tbaa !886
  %i.aq = load double, ptr %i.m, align 8, !tbaa !5219
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !886
  %i.au = fmul double %i.aq, %i.at
  store double %i.au, ptr %i.as, align 8, !tbaa !886
  %i.av = load double, ptr %i.m, align 8, !tbaa !5219
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !886
  %i.az = fmul double %i.av, %i.ay
  store double %i.az, ptr %i.ax, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph77, !llvm.loop !16699

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.ba, align 1, !tbaa !908
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1417
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.d
  %i.bh = phi i8 [ %i.od, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.d ] ; 3 uses
  %i.bi = phi i8 [ %i.oe, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.d ] ; 13 uses
  %i.bj = phi i8 [ %i.of, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.d ] ; 9 uses
  %i.bk = load i8, ptr %i.i, align 4, !tbaa !1360 ; 10 uses
  %i.bl = icmp ult i8 %i.bi, 8
  br i1 %i.bl, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.phi.trans.insert.i = zext i8 %i.bj to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !908
  %i.bm = icmp ult i8 %.pre.i, %i.bk
  br i1 %i.bm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.f:                                             ; preds = %bb.u
  %i.bn = icmp ult i8 %i.jx, %i.bk
  br i1 %i.bn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.f
  %i.bo = zext nneg i8 %i.jl to i64               ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bo ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !984
  %i.bs = load i32, ptr %i.bp, align 8, !tbaa !982
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !983
  %i.bv = sub i32 %i.bs, %i.bu
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp ult i64 %i.br, %i.bw
  br i1 %i.bx, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bo ; 2 uses
  %i.bz = add i8 %i.bj, 2
  %i.ca = and i8 %i.bz, 7                         ; 5 uses
  %i.cb = zext nneg i8 %i.ca to i64               ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.cb ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !1417
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !982 ; 2 uses
  store i32 %i.cd, ptr %i.bp, align 8, !tbaa !982
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !983 ; 2 uses
  %i.cg = sub i32 %i.cd, %i.cf
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = add i32 %i.ch, %i.cf                    ; 2 uses
  store i32 %i.ci, ptr %i.cc, align 8, !tbaa !982
  store i32 %i.ci, ptr %i.bt, align 4, !tbaa !983
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !984
  store i64 %i.ck, ptr %i.bq, align 8, !tbaa !984
  %i.cl = load i8, ptr %i.by, align 1, !tbaa !908
  %i.cm = add i8 %i.cl, 1                         ; 3 uses
  store i8 %i.cm, ptr %i.by, align 1, !tbaa !908
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cb
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !908
  %i.co = add nuw nsw i8 %i.bi, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.co, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.h, !llvm.loop !76

bb.h:                                             ; preds = %bb.g
  %i.cp = icmp ult i8 %i.cm, %i.bk
  br i1 %i.cp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.h
  %i.cq = zext nneg i8 %i.ca to i64               ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.cq ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !984
  %i.cu = load i32, ptr %i.cr, align 8, !tbaa !982
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !983
  %i.cx = sub i32 %i.cu, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %i.cz = icmp ult i64 %i.ct, %i.cy
  br i1 %i.cz, label %bb.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.i:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.da = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cq ; 2 uses
  %i.db = add i8 %i.bj, 3
  %i.dc = and i8 %i.db, 7                         ; 5 uses
  %i.dd = zext nneg i8 %i.dc to i64               ; 2 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.dd ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !tbaa.struct !1417
  %i.df = load i32, ptr %i.de, align 8, !tbaa !982 ; 2 uses
  store i32 %i.df, ptr %i.cr, align 8, !tbaa !982
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !983 ; 2 uses
  %i.di = sub i32 %i.df, %i.dh
  %i.dj = lshr i32 %i.di, 1
  %i.dk = add i32 %i.dj, %i.dh                    ; 2 uses
  store i32 %i.dk, ptr %i.de, align 8, !tbaa !982
  store i32 %i.dk, ptr %i.cv, align 4, !tbaa !983
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !984
  store i64 %i.dm, ptr %i.cs, align 8, !tbaa !984
  %i.dn = load i8, ptr %i.da, align 1, !tbaa !908
  %i.do = add i8 %i.dn, 1                         ; 3 uses
  store i8 %i.do, ptr %i.da, align 1, !tbaa !908
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.dd
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !908
  %i.dq = add nuw nsw i8 %i.bi, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.dq, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.j, !llvm.loop !76

bb.j:                                             ; preds = %bb.i
  %i.dr = icmp ult i8 %i.do, %i.bk
  br i1 %i.dr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.j
  %i.ds = zext nneg i8 %i.dc to i64               ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !983 ; 2 uses
  %i.iq = sub i32 %i.in, %i.ip
  %i.ir = lshr i32 %i.iq, 1
  %i.is = add i32 %i.ir, %i.ip                    ; 2 uses
  store i32 %i.is, ptr %i.im, align 8, !tbaa !982
  store i32 %i.is, ptr %i.if, align 4, !tbaa !983
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !984
  store i64 %i.iu, ptr %i.ic, align 8, !tbaa !984
  %i.iv = load i8, ptr %i.ik, align 1, !tbaa !908
  %i.iw = add i8 %i.iv, 1                         ; 2 uses
  store i8 %i.iw, ptr %i.ik, align 1, !tbaa !908
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.il
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !908
  %exitcond.not.i.7 = icmp eq i8 %i.bi, 0
  br i1 %exitcond.not.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.t, !llvm.loop !76

bb.t:                                             ; preds = %bb.s
  %i.iy = or disjoint i8 %i.bi, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.iz = zext i8 %i.bj to i64                    ; 2 uses
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.iz ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !984
  %i.jd = load i32, ptr %i.ja, align 8, !tbaa !982
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !983
  %i.jg = sub i32 %i.jd, %i.jf
  %i.jh = zext i32 %i.jg to i64
  %i.ji = icmp ult i64 %i.jc, %i.jh
  br i1 %i.ji, label %bb.u, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.u:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.iz ; 2 uses
  %i.jk = add nuw i8 %i.bj, 1
  %i.jl = and i8 %i.jk, 7                         ; 5 uses
  %i.jm = zext nneg i8 %i.jl to i64               ; 2 uses
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.jm ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i64 16, i1 false), !tbaa.struct !1417
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !982 ; 2 uses
  store i32 %i.jo, ptr %i.ja, align 8, !tbaa !982
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !983 ; 2 uses
  %i.jr = sub i32 %i.jo, %i.jq
  %i.js = lshr i32 %i.jr, 1
  %i.jt = add i32 %i.js, %i.jq                    ; 2 uses
  store i32 %i.jt, ptr %i.jn, align 8, !tbaa !982
  store i32 %i.jt, ptr %i.je, align 4, !tbaa !983
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !984
  store i64 %i.jv, ptr %i.jb, align 8, !tbaa !984
  %i.jw = load i8, ptr %i.jj, align 1, !tbaa !908
  %i.jx = add i8 %i.jw, 1                         ; 3 uses
  store i8 %i.jx, ptr %i.jj, align 1, !tbaa !908
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.jm
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !908
  %i.jz = add nuw nsw i8 %i.bi, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.jz, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !76

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.f, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.h, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.l, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.n, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.p, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.r, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.t, %.lr.ph.i, %bb.e
  %i.ka = phi i8 [ %i.bi, %bb.e ], [ %i.bi, %.lr.ph.i ], [ %i.bi, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.jz, %bb.f ], [ %i.jz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.co, %bb.h ], [ %i.co, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dq, %bb.j ], [ %i.dq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.es, %bb.l ], [ %i.es, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fu, %bb.n ], [ %i.fu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gw, %bb.p ], [ %i.gw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hy, %bb.r ], [ %i.hy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.iy, %bb.t ] ; 6 uses
  %i.kb = phi i8 [ %i.bj, %bb.e ], [ %i.bj, %.lr.ph.i ], [ %i.bj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.jl, %bb.f ], [ %i.jl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.ca, %bb.h ], [ %i.ca, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dc, %bb.j ], [ %i.dc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.ee, %bb.l ], [ %i.ee, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fg, %bb.n ], [ %i.fg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gi, %bb.p ], [ %i.gi, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hk, %bb.r ], [ %i.hk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ed, %bb.t ] ; 6 uses
  %i.kc = load ptr, ptr %i.bc, align 32, !tbaa !5995
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load atomic i8, ptr %i.kd monotonic, align 1, !range !972, !noundef !1253
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.v, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.u
  %.lcssa = phi i8 [ %i.jl, %bb.u ], [ %i.ca, %bb.g ], [ %i.dc, %bb.i ], [ %i.ee, %bb.k ], [ %i.fg, %bb.m ], [ %i.gi, %bb.o ], [ %i.hk, %bb.q ], [ %i.ed, %bb.s ] ; 2 uses
  %i.kg = load ptr, ptr %i.bc, align 32, !tbaa !5995
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load atomic i8, ptr %i.kh monotonic, align 1, !range !972, !noundef !1253
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %.thread65, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread65:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.kk = add i8 %i.bk, 1
  store i8 %i.kk, ptr %i.i, align 4, !tbaa !1360
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kl = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.km = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.ka, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.kl to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.v:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kn = add i8 %i.bk, 1                         ; 2 uses
  store i8 %i.kn, ptr %i.i, align 4, !tbaa !1360
  %i.ko = icmp ugt i8 %i.ka, 1
  br i1 %i.ko, label %.noexc, label %bb.w

.noexc:                                           ; preds = %.thread65, %bb.v
  %i.kp = phi i8 [ 8, %.thread65 ], [ %i.ka, %bb.v ]
  %i.kq = phi i8 [ %.lcssa, %.thread65 ], [ %i.kb, %bb.v ]
  %i.kr = zext nneg i8 %i.bh to i64               ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1348
  %i.ku = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16700 ; 10 uses
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.kr
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kw, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.ku, align 64, !tbaa !895
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.kx, ptr noundef nonnull align 8 dereferenceable(16) %i.kv, i64 16, i1 false), !tbaa.struct !1417
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ky, ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !5993
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 96 ; 2 uses
  store ptr null, ptr %i.kz, align 32, !tbaa !5995
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 104
  %i.lb = load i64, ptr %i.bf, align 8, !tbaa !1361
  %i.lc = lshr i64 %i.lb, 1                       ; 2 uses
  store i64 %i.lc, ptr %i.bf, align 8, !tbaa !1361
  store i64 %i.lc, ptr %i.la, align 8, !tbaa !1361
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 112
  store i32 2, ptr %i.ld, align 16, !tbaa !1359
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 116
  %i.lf = load i8, ptr %i.bg, align 4, !tbaa !1360
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 120
  %i.lh = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.lh, ptr %i.lg, align 8, !tbaa !1362
  %i.li = sub i8 %i.lf, %i.kt
  store i8 %i.li, ptr %i.le, align 4, !tbaa !1360
  %i.lj = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16700 ; 6 uses
  %i.lk = load ptr, ptr %i.bc, align 32, !tbaa !1376
  store ptr %i.lk, ptr %i.lj, align 8, !tbaa !1366
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i32 2, ptr %i.ll, align 8, !tbaa !1367
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ln = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !1362
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  store i8 0, ptr %i.lo, align 8, !tbaa !1378
  store ptr %i.lj, ptr %i.bc, align 32, !tbaa !5995
  store ptr %i.lj, ptr %i.kz, align 32, !tbaa !5995
  %i.lp = load ptr, ptr %3, align 8, !tbaa !1379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.ku, ptr noundef nonnull align 8 dereferenceable(128) %i.lp), !inline_history !16700
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.lq = add i8 %i.kp, -1
  %i.lr = add nuw nsw i8 %i.bh, 1
  %i.ls = and i8 %i.lr, 7
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.w:                                             ; preds = %bb.v
  %i.lt = zext i8 %i.kb to i64                    ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !908
  %i.lw = icmp ult i8 %i.lv, %i.kn
  br i1 %i.lw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.w
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.lt ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !984
  %i.ma = load i32, ptr %i.lx, align 8, !tbaa !982
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !983
  %i.md = sub i32 %i.ma, %i.mc
  %i.me = zext i32 %i.md to i64
  %i.mf = icmp ult i64 %i.lz, %i.me
  br i1 %i.mf, label %thread-pre-split27, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.w, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %i.mg = phi i8 [ %i.kl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kb, %bb.w ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mh = phi i8 [ %i.km, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.ka, %bb.w ], [ %i.ka, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.lt, %bb.w ], [ %i.lt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.pre-phi ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !983 ; 2 uses
  %i.ml = load i32, ptr %i.mi, align 8, !tbaa !982 ; 2 uses
  %i.mm = icmp ult i32 %i.mk, %i.ml
  br i1 %i.mm, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.mn = load ptr, ptr %i.bd, align 16, !tbaa !5218 ; 8 uses
  %i.mo = zext i32 %i.mk to i64                   ; 6 uses
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.ml to i64 ; 5 uses
  %i.mp = sub nsw i64 %wide.trip.count.i.i.i.i.i.i16, %i.mo ; 3 uses
  %min.iters.check = icmp ult i64 %i.mp, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i15
  %i.mq = shl nuw nsw i64 %i.mo, 3
  %scevgep = getelementptr nuw i8, ptr %i.mn, i64 %i.mq
  %i.mr = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i.i16, 3
  %scevgep68 = getelementptr i8, ptr %i.mn, i64 %i.mr
  %bound0 = icmp ult ptr %scevgep, %i.bc
  %bound1 = icmp ult ptr %i.be, %scevgep68
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mp, -4                      ; 3 uses
  %i.ms = add nsw i64 %n.vec, %i.mo
  %7 = load <2 x double>, ptr %i.be, align 8
  %broadcast.splat = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.mn, i64 %i.mo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !886, !alias.scope !16710, !noalias !16711
  %wide.load69 = load <2 x double>, ptr %i.mt, align 8, !tbaa !886, !alias.scope !16710, !noalias !16711
  %i.mu = fmul <2 x double> %broadcast.splat, %wide.load
  %i.mv = fmul <2 x double> %broadcast.splat, %wide.load69
  store <2 x double> %i.mu, ptr %gep, align 8, !tbaa !886, !alias.scope !16710, !noalias !16711
  store <2 x double> %i.mv, ptr %i.mt, align 8, !tbaa !886, !alias.scope !16710, !noalias !16711
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mw = icmp eq i64 %index.next, %n.vec
  br i1 %i.mw, label %middle.block, label %vector.body, !llvm.loop !16704

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mp, %n.vec
  br i1 %cmp.n, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i15, %middle.block
  %indvars.iv.i.i.i.i.i.i17.ph = phi i64 [ %i.mo, %vector.memcheck ], [ %i.mo, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ms, %middle.block ] ; 4 uses
  %i.mx = sub nsw i64 %wide.trip.count.i.i.i.i.i.i16, %indvars.iv.i.i.i.i.i.i17.ph
  %xtraiter = and i64 %i.mx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.i.i17.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i18.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i.i17.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.my = load double, ptr %i.be, align 8, !tbaa !5219
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i.i.i.i.i17.prol ; 2 uses
  %i.na = load double, ptr %i.mz, align 8, !tbaa !886
  %i.nb = fmul double %i.my, %i.na
  store double %i.nb, ptr %i.mz, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i18.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !16705

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.i17.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i17.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.i18.prol, %scalar.ph.prol ]
  %i.nc = sub nsw i64 %indvars.iv.i.i.i.i.i.i17.ph, %wide.trip.count.i.i.i.i.i.i16
  %i.nd = icmp ugt i64 %i.nc, -4
  br i1 %i.nd, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i18.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.i.i17.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ne = load double, ptr %i.be, align 8, !tbaa !5219
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i.i.i.i.i17 ; 2 uses
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !886
  %i.nh = fmul double %i.ne, %i.ng
  store double %i.nh, ptr %i.nf, align 8, !tbaa !886
  %i.ni = load double, ptr %i.be, align 8, !tbaa !5219
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i.i.i.i.i17
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !886
  %i.nm = fmul double %i.ni, %i.nl
  store double %i.nm, ptr %i.nk, align 8, !tbaa !886
  %i.nn = load double, ptr %i.be, align 8, !tbaa !5219
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i.i.i.i.i17
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16 ; 2 uses
  %i.nq = load double, ptr %i.np, align 8, !tbaa !886
  %i.nr = fmul double %i.nn, %i.nq
  store double %i.nr, ptr %i.np, align 8, !tbaa !886
  %i.ns = load double, ptr %i.be, align 8, !tbaa !5219
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i.i.i.i.i17
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24 ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !886
  %i.nw = fmul double %i.ns, %i.nv
  store double %i.nw, ptr %i.nu, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i18.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i19.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i18.3, %wide.trip.count.i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i.i19.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20, label %scalar.ph, !llvm.loop !16706

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.nx = add i8 %i.mh, -1
  %i.ny = add nuw i8 %i.mg, 7
  %i.nz = and i8 %i.ny, 7
  br label %thread-pre-split27

thread-pre-split27:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20
  %i.oa = phi i8 [ %i.nx, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20 ], [ %i.ka, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ob = phi i8 [ %i.nz, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20 ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.oc = icmp eq i8 %i.oa, 0
  br i1 %i.oc, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit26, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split27
  %i.od = phi i8 [ %i.ls, %.noexc ], [ %i.bh, %thread-pre-split27 ]
  %i.oe = phi i8 [ %i.lq, %.noexc ], [ %i.oa, %thread-pre-split27 ]
  %i.of = phi i8 [ %i.kq, %.noexc ], [ %i.ob, %thread-pre-split27 ]
  %i.og = load ptr, ptr %3, align 8, !tbaa !1379  ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 15
  %i.oi = load atomic i8, ptr %i.oh monotonic, align 1
  %i.oj = icmp eq i8 %i.oi, -1
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8
  %.0.i.i = select i1 %i.oj, ptr %i.ol, ptr %i.og
  %i.om = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.om, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit26, label %bb.e, !llvm.loop !16707

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit26: ; preds = %thread-pre-split27, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %scalar.ph77.prol.loopexit, %scalar.ph77, %middle.block92, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1344
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1345
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !908
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !983
  %i.g = load i32, ptr %0, align 8, !tbaa !982
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !1348
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !895
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1417
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !5993
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr null, ptr %i.l, align 32, !tbaa !5997
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 0, ptr %i.p, align 16, !tbaa !1359
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i8 5, ptr %i.q, align 4, !tbaa !1360
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !1361
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.u = load i64, ptr %3, align 8, !tbaa !1362
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1366
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !1367
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !1370
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !1018
  store ptr %4, ptr %i.l, align 32, !tbaa !5997
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
end_hunk_5
begin_hunk_6_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !886
  %i.az = fadd double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv42.i.i.i.i.i.i
  store double %i.az, ptr %i.ba, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next43.i.i.i.i.i.i
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !886
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next43.i.i.i.i.i.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !886
  %i.bf = fadd double %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next43.i.i.i.i.i.i
  store double %i.bf, ptr %i.bg, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 2 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next43.i.i.i.i.i.i.1
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !886
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next43.i.i.i.i.i.i.1
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !886
  %i.bl = fadd double %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next43.i.i.i.i.i.i.1
  store double %i.bl, ptr %i.bm, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 3 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next43.i.i.i.i.i.i.2
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !886
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next43.i.i.i.i.i.i.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !886
  %i.br = fadd double %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next43.i.i.i.i.i.i.2
  store double %i.br, ptr %i.bs, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond46.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next43.i.i.i.i.i.i.3, %wide.trip.count45.i.i.i.i.i.i
  br i1 %exitcond46.not.i.i.i.i.i.i.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph221, !llvm.loop !16819

bb.e:                                             ; preds = %bb.c
  %i.bt = fcmp oeq double %i.l, -1.000000e+00
  %i.bu = icmp ult i32 %i.e, %i.c                 ; 2 uses
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.bu, label %.lr.ph31.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph31.i.i.i.i.i.i:                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !5266 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.by = load ptr, ptr %i.bx, align 32, !tbaa !5267 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !5268 ; 7 uses
  %i.cb = zext i32 %i.e to i64                    ; 5 uses
  %wide.trip.count40.i.i.i.i.i.i = zext i32 %i.c to i64 ; 4 uses
  %i.cc = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i, %i.cb ; 3 uses
  %min.iters.check204 = icmp ult i64 %i.cc, 10
  br i1 %min.iters.check204, label %scalar.ph203.preheader, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph31.i.i.i.i.i.i
  %i.cd = ptrtoaddr ptr %i.ca to i64              ; 2 uses
  %i.ce = ptrtoaddr ptr %i.by to i64
  %i.cf = ptrtoaddr ptr %i.bw to i64
  %i.cg = sub i64 %i.cf, %i.cd
  %diff.check200 = icmp ugt i64 %i.cg, -32
  %i.ch = sub i64 %i.ce, %i.cd
  %diff.check201 = icmp ugt i64 %i.ch, -32
  %conflict.rdx202 = or i1 %diff.check200, %diff.check201
  br i1 %conflict.rdx202, label %scalar.ph203.preheader, label %vector.ph205

vector.ph205:                                     ; preds = %vector.memcheck199
  %n.vec206 = and i64 %i.cc, -4                   ; 3 uses
  %i.ci = add nsw i64 %n.vec206, %i.cb
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next213, %vector.body207 ] ; 2 uses
  %i.cj = add nuw i64 %index208, %i.cb            ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load209 = load <2 x double>, ptr %i.ck, align 8, !tbaa !886
  %wide.load210 = load <2 x double>, ptr %i.cl, align 8, !tbaa !886
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cj ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load211 = load <2 x double>, ptr %i.cm, align 8, !tbaa !886
  %wide.load212 = load <2 x double>, ptr %i.cn, align 8, !tbaa !886
  %i.co = fsub <2 x double> %wide.load211, %wide.load209
  %i.cp = fsub <2 x double> %wide.load212, %wide.load210
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cj ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <2 x double> %i.co, ptr %i.cq, align 8, !tbaa !886
  store <2 x double> %i.cp, ptr %i.cr, align 8, !tbaa !886
  %index.next213 = add nuw i64 %index208, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next213, %n.vec206
  br i1 %i.cs, label %middle.block214, label %vector.body207, !llvm.loop !16820

middle.block214:                                  ; preds = %vector.body207
  %cmp.n215 = icmp eq i64 %i.cc, %n.vec206
  br i1 %cmp.n215, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph203.preheader

scalar.ph203.preheader:                           ; preds = %vector.memcheck199, %.lr.ph31.i.i.i.i.i.i, %middle.block214
  %indvars.iv37.i.i.i.i.i.i.ph = phi i64 [ %i.cb, %vector.memcheck199 ], [ %i.cb, %.lr.ph31.i.i.i.i.i.i ], [ %i.ci, %middle.block214 ] ; 4 uses
  %i.ct = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i, %indvars.iv37.i.i.i.i.i.i.ph
  %xtraiter248 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol

scalar.ph203.prol:                                ; preds = %scalar.ph203.preheader, %scalar.ph203.prol
  %indvars.iv37.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i.prol, %scalar.ph203.prol ], [ %indvars.iv37.i.i.i.i.i.i.ph, %scalar.ph203.preheader ] ; 4 uses
  %prol.iter250 = phi i64 [ %prol.iter250.next, %scalar.ph203.prol ], [ 0, %scalar.ph203.preheader ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv37.i.i.i.i.i.i.prol
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !886
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv37.i.i.i.i.i.i.prol
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !886
  %i.cy = fsub double %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv37.i.i.i.i.i.i.prol
  store double %i.cy, ptr %i.cz, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter250.next = add i64 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol, !llvm.loop !16821

scalar.ph203.prol.loopexit:                       ; preds = %scalar.ph203.prol, %scalar.ph203.preheader
  %indvars.iv37.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv37.i.i.i.i.i.i.ph, %scalar.ph203.preheader ], [ %indvars.iv.next38.i.i.i.i.i.i.prol, %scalar.ph203.prol ]
  %i.da = sub nsw i64 %indvars.iv37.i.i.i.i.i.i.ph, %wide.trip.count40.i.i.i.i.i.i
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph203

scalar.ph203:                                     ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203
  %indvars.iv37.i.i.i.i.i.i = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i.3, %scalar.ph203 ], [ %indvars.iv37.i.i.i.i.i.i.unr, %scalar.ph203.prol.loopexit ] ; 7 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv37.i.i.i.i.i.i
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !886
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv37.i.i.i.i.i.i
  %i.df = load double, ptr %i.de, align 8, !tbaa !886
  %i.dg = fsub double %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv37.i.i.i.i.i.i
  store double %i.dg, ptr %i.dh, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 1 ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.i.i.i.i.i
  %i.dj = load double, ptr %i.di, align 8, !tbaa !886
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next38.i.i.i.i.i.i
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !886
  %i.dm = fsub double %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next38.i.i.i.i.i.i
  store double %i.dm, ptr %i.dn, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 2 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.i.i.i.i.i.1
  %i.dp = load double, ptr %i.do, align 8, !tbaa !886
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next38.i.i.i.i.i.i.1
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !886
  %i.ds = fsub double %i.dr, %i.dp
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next38.i.i.i.i.i.i.1
  store double %i.ds, ptr %i.dt, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 3 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.i.i.i.i.i.2
  %i.dv = load double, ptr %i.du, align 8, !tbaa !886
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next38.i.i.i.i.i.i.2
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !886
  %i.dy = fsub double %i.dx, %i.dv
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next38.i.i.i.i.i.i.2
  store double %i.dy, ptr %i.dz, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond41.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next38.i.i.i.i.i.i.3, %wide.trip.count40.i.i.i.i.i.i
  br i1 %exitcond41.not.i.i.i.i.i.i.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph203, !llvm.loop !16822

bb.g:                                             ; preds = %bb.e
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !5266 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ed = load ptr, ptr %i.ec, align 32, !tbaa !5267 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !5268 ; 6 uses
  %i.eg = zext i32 %i.e to i64                    ; 6 uses
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64 ; 5 uses
  %i.eh = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %i.eg ; 3 uses
  %min.iters.check172 = icmp ult i64 %i.eh, 14
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ei = shl nuw nsw i64 %i.eg, 3                ; 3 uses
  %i.ej = getelementptr nuw i8, ptr %i.ef, i64 %i.ei ; 3 uses
  %i.ek = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i.i, 3 ; 3 uses
  %i.el = getelementptr i8, ptr %i.ef, i64 %i.ek  ; 3 uses
  %i.em = getelementptr nuw i8, ptr %i.eb, i64 %i.ei
  %i.en = getelementptr i8, ptr %i.eb, i64 %i.ek
  %i.eo = getelementptr nuw i8, ptr %i.ed, i64 %i.ei
  %i.ep = getelementptr i8, ptr %i.ed, i64 %i.ek
  %bound0174 = icmp ult ptr %i.ej, %i.ea
  %bound1175 = icmp ult ptr %i.k, %i.el
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0177 = icmp ult ptr %i.ej, %i.en
  %bound1178 = icmp ult ptr %i.em, %i.el
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %found.conflict176, %found.conflict179
  %bound0181 = icmp ult ptr %i.ej, %i.ep
  %bound1182 = icmp ult ptr %i.eo, %i.el
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  br i1 %conflict.rdx184, label %scalar.ph171.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck173
  %n.vec186 = and i64 %i.eh, -4                   ; 3 uses
  %i.eq = add nsw i64 %n.vec186, %i.eg
  %6 = load <2 x double>, ptr %i.k, align 16
  %broadcast.splat194 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next195, %vector.body187 ] ; 2 uses
  %i.er = add nuw i64 %index188, %i.eg            ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load189 = load <2 x double>, ptr %i.es, align 8, !tbaa !886, !alias.scope !16845
  %wide.load190 = load <2 x double>, ptr %i.et, align 8, !tbaa !886, !alias.scope !16845
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.er ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load191 = load <2 x double>, ptr %i.eu, align 8, !tbaa !886, !alias.scope !16846
  %wide.load192 = load <2 x double>, ptr %i.ev, align 8, !tbaa !886, !alias.scope !16846
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat194, <2 x double> %wide.load189, <2 x double> %wide.load191)
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat194, <2 x double> %wide.load190, <2 x double> %wide.load192)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.er ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <2 x double> %i.ew, ptr %i.ey, align 8, !tbaa !886, !alias.scope !16847, !noalias !16848
  store <2 x double> %i.ex, ptr %i.ez, align 8, !tbaa !886, !alias.scope !16847, !noalias !16848
  %index.next195 = add nuw i64 %index188, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.fa, label %middle.block196, label %vector.body187, !llvm.loop !16828

middle.block196:                                  ; preds = %vector.body187
  %cmp.n197 = icmp eq i64 %i.eh, %n.vec186
  br i1 %cmp.n197, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %vector.memcheck173, %.lr.ph.i.i.i.i.i.i, %middle.block196
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ %i.eg, %vector.memcheck173 ], [ %i.eg, %.lr.ph.i.i.i.i.i.i ], [ %i.eq, %middle.block196 ] ; 7 uses
  %i.fb = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %indvars.iv.i.i.i.i.i.i.ph
  %xtraiter245 = and i64 %i.fb, 1
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %scalar.ph171.prol.loopexit, label %scalar.ph171.prol

scalar.ph171.prol:                                ; preds = %scalar.ph171.preheader
  %i.fc = load double, ptr %i.k, align 16, !tbaa !5265
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i.i.i.i.i.ph
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !886
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i.i.i.i.ph
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !886
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fe, double %i.fg)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i.i.i.i.ph
  store double %i.fh, ptr %i.fi, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.ph, 1
  br label %scalar.ph171.prol.loopexit

scalar.ph171.prol.loopexit:                       ; preds = %scalar.ph171.prol, %scalar.ph171.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph171.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph171.prol ]
  %i.fj = add nsw i64 %wide.trip.count.i.i.i.i.i.i, -1
  %i.fk = icmp eq i64 %indvars.iv.i.i.i.i.i.i.ph, %i.fj
  br i1 %i.fk, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph171

scalar.ph171:                                     ; preds = %scalar.ph171.prol.loopexit, %scalar.ph171
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %scalar.ph171 ], [ %indvars.iv.i.i.i.i.i.i.unr, %scalar.ph171.prol.loopexit ] ; 5 uses
  %i.fl = load double, ptr %i.k, align 16, !tbaa !5265
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i.i.i.i.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !886
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i.i.i.i
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !886
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fn, double %i.fp)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i.i.i.i
  store double %i.fq, ptr %i.fr, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 3 uses
  %i.fs = load double, ptr %i.k, align 16, !tbaa !5265
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !886
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !886
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.fu, double %i.fw)
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i.i.i.i.i
  store double %i.fx, ptr %i.fy, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.1, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph171, !llvm.loop !16829

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.fz, align 1, !tbaa !908
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1417
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 132
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.h
  %i.gi = phi i8 [ %i.xv, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.h ] ; 3 uses
  %i.gj = phi i8 [ %i.xw, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.h ] ; 13 uses
  %i.gk = phi i8 [ %i.xx, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.h ] ; 9 uses
  %i.gl = load i8, ptr %i.i, align 4, !tbaa !1360 ; 10 uses
  %i.gm = icmp ult i8 %i.gj, 8
  br i1 %i.gm, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.i
  %.phi.trans.insert.i = zext i8 %i.gk to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !908
  %i.gn = icmp ult i8 %.pre.i, %i.gl
  br i1 %i.gn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %bb.y
  %i.go = icmp ult i8 %i.oy, %i.gl
  br i1 %i.go, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.j
  %i.gp = zext nneg i8 %i.om to i64               ; 2 uses
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.gp ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !984
  %i.gt = load i32, ptr %i.gq, align 8, !tbaa !982
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !983
  %i.gw = sub i32 %i.gt, %i.gv
  %i.gx = zext i32 %i.gw to i64
  %i.gy = icmp ult i64 %i.gs, %i.gx
  br i1 %i.gy, label %bb.k, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.k:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gp ; 2 uses
  %i.ha = add i8 %i.gk, 2
  %i.hb = and i8 %i.ha, 7                         ; 5 uses
  %i.hc = zext nneg i8 %i.hb to i64               ; 2 uses
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.hc ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false), !tbaa.struct !1417
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !982 ; 2 uses
  store i32 %i.he, ptr %i.gq, align 8, !tbaa !982
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !983 ; 2 uses
  %i.hh = sub i32 %i.he, %i.hg
  %i.hi = lshr i32 %i.hh, 1
  %i.hj = add i32 %i.hi, %i.hg                    ; 2 uses
  store i32 %i.hj, ptr %i.hd, align 8, !tbaa !982
  store i32 %i.hj, ptr %i.gu, align 4, !tbaa !983
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !984
  store i64 %i.hl, ptr %i.gr, align 8, !tbaa !984
  %i.hm = load i8, ptr %i.gz, align 1, !tbaa !908
  %i.hn = add i8 %i.hm, 1                         ; 3 uses
  store i8 %i.hn, ptr %i.gz, align 1, !tbaa !908
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.hc
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !908
  %i.hp = add nuw nsw i8 %i.gj, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.hp, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.l, !llvm.loop !76

bb.l:                                             ; preds = %bb.k
  %i.hq = icmp ult i8 %i.hn, %i.gl
  br i1 %i.hq, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.l
  %i.hr = zext nneg i8 %i.hb to i64               ; 2 uses
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.hr ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !984
  %i.hv = load i32, ptr %i.hs, align 8, !tbaa !982
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !983
  %i.hy = sub i32 %i.hv, %i.hx
  %i.hz = zext i32 %i.hy to i64
  %i.ia = icmp ult i64 %i.hu, %i.hz
  br i1 %i.ia, label %bb.m, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.m:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.hr ; 2 uses
  %i.ic = add i8 %i.gk, 3
  %i.id = and i8 %i.ic, 7                         ; 5 uses
  %i.ie = zext nneg i8 %i.id to i64               ; 2 uses
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.ie ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false), !tbaa.struct !1417
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !982 ; 2 uses
  store i32 %i.ig, ptr %i.hs, align 8, !tbaa !982
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !983 ; 2 uses
  %i.ij = sub i32 %i.ig, %i.ii
  %i.ik = lshr i32 %i.ij, 1
  %i.il = add i32 %i.ik, %i.ii                    ; 2 uses
  store i32 %i.il, ptr %i.if, align 8, !tbaa !982
  store i32 %i.il, ptr %i.hw, align 4, !tbaa !983
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !984
  store i64 %i.in, ptr %i.ht, align 8, !tbaa !984
  %i.io = load i8, ptr %i.ib, align 1, !tbaa !908
  %i.ip = add i8 %i.io, 1                         ; 3 uses
  store i8 %i.ip, ptr %i.ib, align 1, !tbaa !908
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ie
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !908
  %i.ir = add nuw nsw i8 %i.gj, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.ir, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.n, !llvm.loop !76

bb.n:                                             ; preds = %bb.m
  %i.is = icmp ult i8 %i.ip, %i.gl
  br i1 %i.is, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.n
end_hunk_6
begin_hunk_7_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv42.i.i.i.i.i.i27
  %i.sv = load double, ptr %i.su, align 8, !tbaa !886
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv42.i.i.i.i.i.i27
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !886
  %i.sy = fadd double %i.sv, %i.sx
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv42.i.i.i.i.i.i27
  store double %i.sy, ptr %i.sz, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i28 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 1 ; 3 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next43.i.i.i.i.i.i28
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !886
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next43.i.i.i.i.i.i28
  %i.td = load double, ptr %i.tc, align 8, !tbaa !886
  %i.te = fadd double %i.tb, %i.td
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv.next43.i.i.i.i.i.i28
  store double %i.te, ptr %i.tf, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i28.1 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 2 ; 3 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next43.i.i.i.i.i.i28.1
  %i.th = load double, ptr %i.tg, align 8, !tbaa !886
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next43.i.i.i.i.i.i28.1
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !886
  %i.tk = fadd double %i.th, %i.tj
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv.next43.i.i.i.i.i.i28.1
  store double %i.tk, ptr %i.tl, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i28.2 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 3 ; 3 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next43.i.i.i.i.i.i28.2
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !886
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next43.i.i.i.i.i.i28.2
  %i.tp = load double, ptr %i.to, align 8, !tbaa !886
  %i.tq = fadd double %i.tn, %i.tp
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv.next43.i.i.i.i.i.i28.2
  store double %i.tq, ptr %i.tr, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i28.3 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond46.not.i.i.i.i.i.i29.3 = icmp eq i64 %indvars.iv.next43.i.i.i.i.i.i28.3, %wide.trip.count45.i.i.i.i.i.i26
  br i1 %exitcond46.not.i.i.i.i.i.i29.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph, !llvm.loop !16833

bb.ac:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.ts = fcmp oeq double %i.rk, -1.000000e+00
  %i.tt = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !983 ; 3 uses
  %i.tv = load i32, ptr %i.rj, align 8, !tbaa !982 ; 3 uses
  %i.tw = icmp ult i32 %i.tu, %i.tv               ; 2 uses
  br i1 %i.ts, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.tw, label %.lr.ph31.i.i.i.i.i.i20, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30

.lr.ph31.i.i.i.i.i.i20:                           ; preds = %bb.ad
  %i.tx = load ptr, ptr %i.gd, align 8, !tbaa !5266 ; 7 uses
  %i.ty = load ptr, ptr %i.ge, align 32, !tbaa !5267 ; 7 uses
  %i.tz = load ptr, ptr %i.gf, align 8, !tbaa !5268 ; 7 uses
  %i.ua = zext i32 %i.tu to i64                   ; 5 uses
  %wide.trip.count40.i.i.i.i.i.i21 = zext i32 %i.tv to i64 ; 4 uses
  %i.ub = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i21, %i.ua ; 3 uses
  %min.iters.check112 = icmp ult i64 %i.ub, 6
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %.lr.ph31.i.i.i.i.i.i20
  %i.uc = ptrtoaddr ptr %i.tz to i64              ; 2 uses
  %i.ud = ptrtoaddr ptr %i.ty to i64
  %i.ue = ptrtoaddr ptr %i.tx to i64
  %i.uf = sub i64 %i.ue, %i.uc
  %diff.check108 = icmp ugt i64 %i.uf, -32
  %i.ug = sub i64 %i.ud, %i.uc
  %diff.check109 = icmp ugt i64 %i.ug, -32
  %conflict.rdx110 = or i1 %diff.check108, %diff.check109
  br i1 %conflict.rdx110, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck107
  %n.vec114 = and i64 %i.ub, -4                   ; 3 uses
  %i.uh = add nsw i64 %n.vec114, %i.ua
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.ui = add nuw i64 %index116, %i.ua            ; 3 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.ui ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %wide.load117 = load <2 x double>, ptr %i.uj, align 8, !tbaa !886
  %wide.load118 = load <2 x double>, ptr %i.uk, align 8, !tbaa !886
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %i.ui ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %wide.load119 = load <2 x double>, ptr %i.ul, align 8, !tbaa !886
  %wide.load120 = load <2 x double>, ptr %i.um, align 8, !tbaa !886
  %i.un = fsub <2 x double> %wide.load119, %wide.load117
  %i.uo = fsub <2 x double> %wide.load120, %wide.load118
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.ui ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  store <2 x double> %i.un, ptr %i.up, align 8, !tbaa !886
  store <2 x double> %i.uo, ptr %i.uq, align 8, !tbaa !886
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.ur = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ur, label %middle.block122, label %vector.body115, !llvm.loop !16834

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.ub, %n.vec114
  br i1 %cmp.n123, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %vector.memcheck107, %.lr.ph31.i.i.i.i.i.i20, %middle.block122
  %indvars.iv37.i.i.i.i.i.i22.ph = phi i64 [ %i.ua, %vector.memcheck107 ], [ %i.ua, %.lr.ph31.i.i.i.i.i.i20 ], [ %i.uh, %middle.block122 ] ; 4 uses
  %i.us = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i21, %indvars.iv37.i.i.i.i.i.i22.ph
  %xtraiter240 = and i64 %i.us, 3                 ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %scalar.ph111.prol.loopexit, label %scalar.ph111.prol

scalar.ph111.prol:                                ; preds = %scalar.ph111.preheader, %scalar.ph111.prol
  %indvars.iv37.i.i.i.i.i.i22.prol = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i23.prol, %scalar.ph111.prol ], [ %indvars.iv37.i.i.i.i.i.i22.ph, %scalar.ph111.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph111.prol ], [ 0, %scalar.ph111.preheader ]
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv37.i.i.i.i.i.i22.prol
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !886
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv37.i.i.i.i.i.i22.prol
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !886
  %i.ux = fsub double %i.uw, %i.uu
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv37.i.i.i.i.i.i22.prol
  store double %i.ux, ptr %i.uy, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i23.prol = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter240
  br i1 %prol.iter.cmp.not, label %scalar.ph111.prol.loopexit, label %scalar.ph111.prol, !llvm.loop !16835

scalar.ph111.prol.loopexit:                       ; preds = %scalar.ph111.prol, %scalar.ph111.preheader
  %indvars.iv37.i.i.i.i.i.i22.unr = phi i64 [ %indvars.iv37.i.i.i.i.i.i22.ph, %scalar.ph111.preheader ], [ %indvars.iv.next38.i.i.i.i.i.i23.prol, %scalar.ph111.prol ]
  %i.uz = sub nsw i64 %indvars.iv37.i.i.i.i.i.i22.ph, %wide.trip.count40.i.i.i.i.i.i21
  %i.va = icmp ugt i64 %i.uz, -4
  br i1 %i.va, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph111

scalar.ph111:                                     ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111
  %indvars.iv37.i.i.i.i.i.i22 = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i23.3, %scalar.ph111 ], [ %indvars.iv37.i.i.i.i.i.i22.unr, %scalar.ph111.prol.loopexit ] ; 7 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv37.i.i.i.i.i.i22
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !886
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv37.i.i.i.i.i.i22
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !886
  %i.vf = fsub double %i.ve, %i.vc
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv37.i.i.i.i.i.i22
  store double %i.vf, ptr %i.vg, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i23 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 1 ; 3 uses
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next38.i.i.i.i.i.i23
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !886
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next38.i.i.i.i.i.i23
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !886
  %i.vl = fsub double %i.vk, %i.vi
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.next38.i.i.i.i.i.i23
  store double %i.vl, ptr %i.vm, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i23.1 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 2 ; 3 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next38.i.i.i.i.i.i23.1
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !886
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next38.i.i.i.i.i.i23.1
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !886
  %i.vr = fsub double %i.vq, %i.vo
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.next38.i.i.i.i.i.i23.1
  store double %i.vr, ptr %i.vs, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i23.2 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 3 ; 3 uses
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next38.i.i.i.i.i.i23.2
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !886
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next38.i.i.i.i.i.i23.2
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !886
  %i.vx = fsub double %i.vw, %i.vu
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.next38.i.i.i.i.i.i23.2
  store double %i.vx, ptr %i.vy, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i23.3 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 4 ; 2 uses
  %exitcond41.not.i.i.i.i.i.i24.3 = icmp eq i64 %indvars.iv.next38.i.i.i.i.i.i23.3, %wide.trip.count40.i.i.i.i.i.i21
  br i1 %exitcond41.not.i.i.i.i.i.i24.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph111, !llvm.loop !16836

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.tw, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30

.lr.ph.i.i.i.i.i.i15:                             ; preds = %bb.ae
  %i.vz = load ptr, ptr %i.gd, align 8, !tbaa !5266 ; 6 uses
  %i.wa = load ptr, ptr %i.ge, align 32, !tbaa !5267 ; 6 uses
  %i.wb = load ptr, ptr %i.gf, align 8, !tbaa !5268 ; 6 uses
  %i.wc = zext i32 %i.tu to i64                   ; 6 uses
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.tv to i64 ; 5 uses
  %i.wd = sub nsw i64 %wide.trip.count.i.i.i.i.i.i16, %i.wc ; 3 uses
  %min.iters.check140 = icmp ult i64 %i.wd, 6
  br i1 %min.iters.check140, label %scalar.ph139.preheader, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph.i.i.i.i.i.i15
  %i.we = shl nuw nsw i64 %i.wc, 3                ; 3 uses
  %scevgep = getelementptr nuw i8, ptr %i.wb, i64 %i.we ; 3 uses
  %i.wf = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i.i16, 3 ; 3 uses
  %scevgep126 = getelementptr i8, ptr %i.wb, i64 %i.wf ; 3 uses
  %scevgep127 = getelementptr nuw i8, ptr %i.vz, i64 %i.we
  %scevgep128 = getelementptr i8, ptr %i.vz, i64 %i.wf
  %scevgep129 = getelementptr nuw i8, ptr %i.wa, i64 %i.we
  %scevgep130 = getelementptr i8, ptr %i.wa, i64 %i.wf
  %bound0 = icmp ult ptr %scevgep, %i.gd
  %bound1 = icmp ult ptr %i.gc, %scevgep126
  %found.conflict = and i1 %bound0, %bound1
  %bound0131 = icmp ult ptr %scevgep, %scevgep128
  %bound1132 = icmp ult ptr %scevgep127, %scevgep126
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %found.conflict, %found.conflict133
  %bound0135 = icmp ult ptr %scevgep, %scevgep130
  %bound1136 = icmp ult ptr %scevgep129, %scevgep126
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  br i1 %conflict.rdx138, label %scalar.ph139.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck125
  %n.vec142 = and i64 %i.wd, -4                   ; 3 uses
  %i.wg = add nsw i64 %n.vec142, %i.wc
  %7 = load <2 x double>, ptr %i.gc, align 16
  %broadcast.splat = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.wh = add nuw i64 %index144, %i.wc            ; 3 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %i.wh ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %wide.load145 = load <2 x double>, ptr %i.wi, align 8, !tbaa !886, !alias.scope !16849
  %wide.load146 = load <2 x double>, ptr %i.wj, align 8, !tbaa !886, !alias.scope !16849
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.wh ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %wide.load147 = load <2 x double>, ptr %i.wk, align 8, !tbaa !886, !alias.scope !16850
  %wide.load148 = load <2 x double>, ptr %i.wl, align 8, !tbaa !886, !alias.scope !16850
  %i.wm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load145, <2 x double> %wide.load147)
  %i.wn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load146, <2 x double> %wide.load148)
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %i.wh ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  store <2 x double> %i.wm, ptr %i.wo, align 8, !tbaa !886, !alias.scope !16851, !noalias !16852
  store <2 x double> %i.wn, ptr %i.wp, align 8, !tbaa !886, !alias.scope !16851, !noalias !16852
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.wq = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.wq, label %middle.block150, label %vector.body143, !llvm.loop !16842

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.wd, %n.vec142
  br i1 %cmp.n151, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %vector.memcheck125, %.lr.ph.i.i.i.i.i.i15, %middle.block150
  %indvars.iv.i.i.i.i.i.i17.ph = phi i64 [ %i.wc, %vector.memcheck125 ], [ %i.wc, %.lr.ph.i.i.i.i.i.i15 ], [ %i.wg, %middle.block150 ] ; 7 uses
  %i.wr = sub nsw i64 %wide.trip.count.i.i.i.i.i.i16, %indvars.iv.i.i.i.i.i.i17.ph
  %xtraiter = and i64 %i.wr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph139.prol.loopexit, label %scalar.ph139.prol

scalar.ph139.prol:                                ; preds = %scalar.ph139.preheader
  %i.ws = load double, ptr %i.gc, align 16, !tbaa !5265
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv.i.i.i.i.i.i17.ph
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !886
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv.i.i.i.i.i.i17.ph
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !886
  %i.wx = call double @llvm.fmuladd.f64(double %i.ws, double %i.wu, double %i.ww)
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %indvars.iv.i.i.i.i.i.i17.ph
  store double %i.wx, ptr %i.wy, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i18.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17.ph, 1
  br label %scalar.ph139.prol.loopexit

scalar.ph139.prol.loopexit:                       ; preds = %scalar.ph139.prol, %scalar.ph139.preheader
  %indvars.iv.i.i.i.i.i.i17.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i17.ph, %scalar.ph139.preheader ], [ %indvars.iv.next.i.i.i.i.i.i18.prol, %scalar.ph139.prol ]
  %i.wz = add nsw i64 %wide.trip.count.i.i.i.i.i.i16, -1
  %i.xa = icmp eq i64 %indvars.iv.i.i.i.i.i.i17.ph, %i.wz
  br i1 %i.xa, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph139

scalar.ph139:                                     ; preds = %scalar.ph139.prol.loopexit, %scalar.ph139
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i18.1, %scalar.ph139 ], [ %indvars.iv.i.i.i.i.i.i17.unr, %scalar.ph139.prol.loopexit ] ; 5 uses
  %i.xb = load double, ptr %i.gc, align 16, !tbaa !5265
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv.i.i.i.i.i.i17
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !886
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv.i.i.i.i.i.i17
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !886
  %i.xg = call double @llvm.fmuladd.f64(double %i.xb, double %i.xd, double %i.xf)
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %indvars.iv.i.i.i.i.i.i17
  store double %i.xg, ptr %i.xh, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i18 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 3 uses
  %i.xi = load double, ptr %i.gc, align 16, !tbaa !5265
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !886
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !886
  %i.xn = call double @llvm.fmuladd.f64(double %i.xi, double %i.xk, double %i.xm)
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %indvars.iv.next.i.i.i.i.i.i18
  store double %i.xn, ptr %i.xo, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i18.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i19.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i18.1, %wide.trip.count.i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i.i19.1, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph139, !llvm.loop !16843

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30: ; preds = %scalar.ph139.prol.loopexit, %scalar.ph139, %scalar.ph111.prol.loopexit, %scalar.ph111, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block150, %middle.block122, %middle.block, %bb.ae, %bb.ad, %bb.ab
  %i.xp = add i8 %i.ri, -1
  %i.xq = add i8 %i.rh, 7
  %i.xr = and i8 %i.xq, 7
  br label %thread-pre-split37

thread-pre-split37:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30
  %i.xs = phi i8 [ %i.xp, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30 ], [ %i.pb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.xt = phi i8 [ %i.xr, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30 ], [ %i.pc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.xu = icmp eq i8 %i.xs, 0
  br i1 %i.xu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split37
  %i.xv = phi i8 [ %i.qt, %.noexc ], [ %i.gi, %thread-pre-split37 ]
  %i.xw = phi i8 [ %i.qr, %.noexc ], [ %i.xs, %thread-pre-split37 ]
  %i.xx = phi i8 [ %i.pr, %.noexc ], [ %i.xt, %thread-pre-split37 ]
  %i.xy = load ptr, ptr %3, align 8, !tbaa !1379  ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 15
  %i.ya = load atomic i8, ptr %i.xz monotonic, align 1
  %i.yb = icmp eq i8 %i.ya, -1
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %i.yd = load ptr, ptr %i.yc, align 8
  %.0.i.i = select i1 %i.yb, ptr %i.yd, ptr %i.xy
  %i.ye = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ye, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %bb.i, !llvm.loop !16844

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36: ; preds = %thread-pre-split37, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %scalar.ph171.prol.loopexit, %scalar.ph171, %scalar.ph203.prol.loopexit, %scalar.ph203, %scalar.ph221.prol.loopexit, %scalar.ph221, %middle.block196, %middle.block214, %middle.block232, %bb.g, %bb.f, %bb.d, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_012RuntimeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !895
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !909  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !908
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33, !inline_history !1241
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !1241
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1344
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1345
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !908
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !983
  %i.g = load i32, ptr %0, align 8, !tbaa !982
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !1348
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !895
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1417
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !6032
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr null, ptr %i.l, align 16, !tbaa !6034
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 0, ptr %i.p, align 64, !tbaa !1359
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i8 5, ptr %i.q, align 4, !tbaa !1360
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !1361
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.u = load i64, ptr %3, align 8, !tbaa !1362
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1366
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !1367
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !1370
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !1018
  store ptr %4, ptr %i.l, align 16, !tbaa !6034
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
end_hunk_7
begin_hunk_8_@_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EE4nextEj:bb.a
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
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !1303
  %i.x = icmp ne i32 %.118.i.i.i.i, 32768
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !6157
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !6158 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.ac) #34 ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !6158
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.promoted.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.ab
  br i1 %.not2.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ah, %bb.h ], [ %.promoted.i.i.i.i, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1144
  %.not1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not1.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ae) #34 ; 3 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !6158
  %.not.i.i.i.i3 = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i3, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !732

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
  %i.c = load i32, ptr %2, align 4, !tbaa !913
  %i.d = load i32, ptr %i.b, align 8, !tbaa !913
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !913
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !913
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !913
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !913
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1140 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !913  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !913 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !913
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !1416 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !723

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !913 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !913 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !913
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
  %i.au = load double, ptr %3, align 8, !tbaa !886
  store double %i.au, ptr %6, align 8, !tbaa !6063
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !6064
  br label %.critedge.i66

vector.ph107:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %i.k, align 4, !tbaa !913
  %i.az = load <2 x i32>, ptr %2, align 4, !tbaa !913
  %i.ba = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ay, i64 2
  %i.bb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = and <4 x i32> %i.bc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bd, ptr %i.ax, align 8, !tbaa !913
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = load <2 x double>, ptr %i.be, align 8
  %broadcast.splat109 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next112.3, %vector.body110 ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %broadcast.splat109, ptr %i.bf, align 8, !tbaa !908
  store <2 x double> %broadcast.splat109, ptr %i.bg, align 8, !tbaa !908
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store <2 x double> %broadcast.splat109, ptr %i.bi, align 8, !tbaa !908
  store <2 x double> %broadcast.splat109, ptr %i.bj, align 8, !tbaa !908
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store <2 x double> %broadcast.splat109, ptr %i.bl, align 8, !tbaa !908
  store <2 x double> %broadcast.splat109, ptr %i.bm, align 8, !tbaa !908
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <2 x double> %broadcast.splat109, ptr %i.bo, align 8, !tbaa !908
  store <2 x double> %broadcast.splat109, ptr %i.bp, align 8, !tbaa !908
  %index.next112.3 = add nuw nsw i64 %index111, 16 ; 2 uses
  %i.bq = icmp eq i64 %index.next112.3, 32768
  br i1 %i.bq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body110, !llvm.loop !17108

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body110
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !1140 ; 2 uses
  %.not12.i.i.i.i39 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i.i.i39, label %.critedge.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %.014.i.i.i.i41 = phi ptr [ %.1.i.i.i.i47, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.br, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i42 = phi ptr [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !913 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !913 ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i32 %i.bx, %i.q
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !913
  %i.cc = icmp slt i32 %i.cb, %i.r
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.k, %.lr.ph.i.i.i.i40
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.l, %bb.j
  %.sink.i.i.i.i45 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ]
  %.19.i.i.i.i46 = phi ptr [ %.0813.i.i.i.i42, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ %.014.i.i.i.i41, %bb.l ], [ %.014.i.i.i.i41, %bb.j ], [ %.014.i.i.i.i41, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 %.sink.i.i.i.i45
  %.1.i.i.i.i47 = load ptr, ptr %i.cd, align 8, !tbaa !1416 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i47, null
  br i1 %.not.i.i.i.i48, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i40, !llvm.loop !723

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %i.ce = icmp eq ptr %.19.i.i.i.i46, %i.u
  br i1 %i.ce, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !913 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !913 ; 2 uses
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp sgt i32 %i.q, %i.ck
  br i1 %i.cm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !913
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
  %i.cs = load double, ptr %3, align 8, !tbaa !886
  store double %i.cs, ptr %6, align 8, !tbaa !6063
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.cr, ptr %i.ct, align 8, !tbaa !6064
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, %.lr.ph.i.i.i.i51
  %.014.i.i.i.i52 = phi ptr [ %i.t, %.lr.ph.i.i.i.i51 ], [ %.1.i.i.i.i58, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ] ; 7 uses
  %.0813.i.i.i.i53 = phi ptr [ %i.u, %.lr.ph.i.i.i.i51 ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !913 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.p
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp sgt i32 %i.cv, %i.p
  br i1 %i.cx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !913 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.q
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = icmp sgt i32 %i.cz, %i.q
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54: ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 40
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !913
  %i.de = icmp slt i32 %i.dd, %i.r
  br i1 %i.de, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.t, %bb.r
  %.sink.i.i.i.i56 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ]
  %.19.i.i.i.i57 = phi ptr [ %.0813.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ %.014.i.i.i.i52, %bb.t ], [ %.014.i.i.i.i52, %bb.r ], [ %.014.i.i.i.i52, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ] ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 %.sink.i.i.i.i56
  %.1.i.i.i.i58 = load ptr, ptr %i.df, align 8, !tbaa !1416 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.1.i.i.i.i58, null
  br i1 %.not.i.i.i.i59, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60, label %bb.q, !llvm.loop !723

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55
  %i.dg = icmp eq ptr %.19.i.i.i.i57, %i.u
  br i1 %i.dg, label %.critedge.i66, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !913 ; 2 uses
  %i.dj = icmp slt i32 %i.p, %i.di
  br i1 %i.dj, label %.critedge.i66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp sgt i32 %i.p, %i.di
  br i1 %i.dk, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !913 ; 2 uses
  %i.dn = icmp slt i32 %i.q, %i.dm
  br i1 %i.dn, label %.critedge.i66, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = icmp sgt i32 %i.q, %i.dm
  br i1 %i.do, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61: ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 40
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !913
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
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1144 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS6_8LeafNodeIdLj3EEEE11NodeReducerINS5_5tools14count_internal10MemUsageOpINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE:bb.a
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
  %i.f = load ptr, ptr %1, align 8, !tbaa !895
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.i)
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef 8) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !895
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  tail call void @_ZN7openvdb5v13_02io25setGridBackgroundValuePtrERSt8ios_basePKv(ptr noundef nonnull align 8 dereferenceable(216) %i.o, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !913
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !913
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
  %.pre = load i32, ptr %i.b, align 4, !tbaa !913
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
  %i.am = load i32, ptr %i.c, align 8, !tbaa !913 ; 5 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !913
  %i.an = load i32, ptr %i.w, align 4, !tbaa !913 ; 5 uses
  store i32 %i.an, ptr %i.v, align 4, !tbaa !913
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !913 ; 3 uses
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !913
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ap = load i8, ptr %i.e, align 1, !tbaa !950, !range !972, !noundef !1253
  %i.aq = load double, ptr %i.d, align 8, !tbaa !886
  store double %i.aq, ptr %4, align 8, !tbaa !6063
  store i8 %i.ap, ptr %i.z, align 8, !tbaa !6064
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !1140 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ar, %bb.c ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ab, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 4, !tbaa !913 ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.am
  br i1 %i.au, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = icmp sgt i32 %i.at, %i.am
  br i1 %i.av, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !913 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.an
  br i1 %i.ay, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = icmp sgt i32 %i.ax, %i.an
  br i1 %i.az, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !913
  %i.bc = icmp slt i32 %i.bb, %i.ao
  br i1 %i.bc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.f, %bb.d
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.f ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.f ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !1416 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !723

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.be = icmp eq ptr %.19.i.i.i.i, %i.ab
  br i1 %i.be, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !913 ; 2 uses
  %i.bh = icmp slt i32 %i.am, %i.bg
  br i1 %i.bh, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp sgt i32 %i.am, %i.bg
  br i1 %i.bi, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !913 ; 2 uses
  %i.bl = icmp slt i32 %i.an, %i.bk
  br i1 %i.bl, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp sgt i32 %i.an, %i.bk
  br i1 %i.bm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !913
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
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !913
  %i.bt = icmp ult i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %.preheader.loopexit, !llvm.loop !17768

._crit_edge:                                      ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.r

vector.ph:                                        ; preds = %.lr.ph47, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02446 = phi i32 [ 0, %.lr.ph47 ], [ %i.ds, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.bu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.bv = load i32, ptr %i.ae, align 8, !tbaa !913
  %i.bw = load <2 x i32>, ptr %i.c, align 8, !tbaa !913
  %i.bx = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, i8 0, i64 270336, i1 false)
  %i.bz = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.bv, i64 2
  %i.ca = shufflevector <2 x i32> %i.bw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cc = and <4 x i32> %i.cb, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.cc, ptr %i.by, align 8, !tbaa !913
  %6 = load <2 x double>, ptr %i.j, align 8
  %broadcast.splat = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cd, align 8, !tbaa !908
  store <2 x double> %broadcast.splat, ptr %i.ce, align 8, !tbaa !908
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store <2 x double> %broadcast.splat, ptr %i.cg, align 8, !tbaa !908
  store <2 x double> %broadcast.splat, ptr %i.ch, align 8, !tbaa !908
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  store <2 x double> %broadcast.splat, ptr %i.cj, align 8, !tbaa !908
  store <2 x double> %broadcast.splat, ptr %i.ck, align 8, !tbaa !908
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  store <2 x double> %broadcast.splat, ptr %i.cm, align 8, !tbaa !908
  store <2 x double> %broadcast.splat, ptr %i.cn, align 8, !tbaa !908
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.co = icmp eq i64 %index.next.3, 32768
  br i1 %i.co, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !17769

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !913 ; 5 uses
  store i32 %i.cp, ptr %5, align 4, !tbaa !913
  %i.cq = load i32, ptr %i.ad, align 4, !tbaa !913 ; 5 uses
  store i32 %i.cq, ptr %i.af, align 4, !tbaa !913
  %i.cr = load i32, ptr %i.ae, align 8, !tbaa !913 ; 3 uses
  store i32 %i.cr, ptr %i.ag, align 4, !tbaa !913
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !1140 ; 2 uses
  %.not12.i.i.i.i26 = icmp eq ptr %i.cs, null
  br i1 %.not12.i.i.i.i26, label %.critedge.i42, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %.014.i.i.i.i28 = phi ptr [ %.1.i.i.i.i34, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i29 = phi ptr [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !913 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %i.cp
  br i1 %i.cv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.cw = icmp sgt i32 %i.cu, %i.cp
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !913 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.cq
  br i1 %i.cz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = icmp sgt i32 %i.cy, %i.cq
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30: ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 40
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !913
  %i.dd = icmp slt i32 %i.dc, %i.cr
  br i1 %i.dd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.l, %.lr.ph.i.i.i.i27
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.m, %bb.k
  %.sink.i.i.i.i32 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ 16, %bb.m ], [ 16, %bb.k ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ]
  %.19.i.i.i.i33 = phi ptr [ %.0813.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ %.014.i.i.i.i28, %bb.m ], [ %.014.i.i.i.i28, %bb.k ], [ %.014.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 %.sink.i.i.i.i32
  %.1.i.i.i.i34 = load ptr, ptr %i.de, align 8, !tbaa !1416 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %.1.i.i.i.i34, null
  br i1 %.not.i.i.i.i35, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, label %.lr.ph.i.i.i.i27, !llvm.loop !723

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %i.df = icmp eq ptr %.19.i.i.i.i33, %i.ai
  br i1 %i.df, label %.critedge.i42, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36
  %i.dg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 32
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !913 ; 2 uses
  %i.di = icmp slt i32 %i.cp, %i.dh
  br i1 %i.di, label %.critedge.i42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp sgt i32 %i.cp, %i.dh
  br i1 %i.dj, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 36
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !913 ; 2 uses
  %i.dm = icmp slt i32 %i.cq, %i.dl
  br i1 %i.dm, label %.critedge.i42, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = icmp sgt i32 %i.cq, %i.dl
  br i1 %i.dn, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37: ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 40
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !913
  %i.dq = icmp slt i32 %i.cr, %i.dp
  br i1 %i.dq, label %.critedge.i42, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i42:                                    ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %bb.p, %bb.n, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i43 = phi ptr [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37 ], [ %.19.i.i.i.i33, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36 ], [ %.19.i.i.i.i33, %bb.n ], [ %.19.i.i.i.i33, %bb.p ]
  %i.dr = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i43, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.bx) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.o, %bb.q, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %.critedge.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ds = add nuw i32 %.02446, 1                  ; 2 uses
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !913
  %i.du = icmp ult i32 %i.ds, %i.dt
  br i1 %i.du, label %vector.ph, label %._crit_edge, !llvm.loop !17770

bb.r:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %or.cond.not
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !895
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !895
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.h)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !895
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
  %i.o = load double, ptr %i.n, align 8, !tbaa !886
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 10 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.q, i64 noundef 4096) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i64 noundef 4096) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !895
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
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !973
  %wide.load202 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !973
  %i.ac = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load202)
  %i.ae = trunc nuw nsw <2 x i64> %i.ac to <2 x i32>
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = add <2 x i32> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i32> %vec.phi201, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 512
  br i1 %i.ai, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit, label %vector.body, !llvm.loop !17771

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ah, %i.ag
  %i.aj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.ak = sub i32 32768, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit
  %i.al = phi i32 [ %i.ak, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit ], [ 32768, %bb.c ] ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #30 ; 5 uses
  invoke void @_ZN7openvdb5v13_02io20readCompressedValuesIdNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ao, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i1 noundef zeroext %2)
          to label %bb.e unwind label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56

end_hunk_9
begin_hunk_10_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4fillERKNS0_4math9CoordBBoxERKdb:bb.a
  %i.y = phi i32 [ %i.ai, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 6 uses
  %i.z = phi i32 [ %i.aj, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %i.aa = phi i32 [ %i.ak, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ab = phi i32 [ %i.al, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ac = phi i32 [ %i.am, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %.0230 = phi i32 [ %i.an, %._crit_edge227 ], [ %i.a, %.lr.ph231.split.preheader ] ; 9 uses
  %.sroa.0162.0229 = phi i64 [ %.sroa.0162.1.lcssa, %._crit_edge227 ], [ 0, %.lr.ph231.split.preheader ] ; 4 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !913 ; 2 uses
  %.not42222 = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not42222, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph231.split
  %i.ae = and i32 %.0230, -4096                   ; 2 uses
  %i.af = load i32, ptr %i.j, align 4, !tbaa !913
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
  %.pre257 = load i32, ptr %i.b, align 4, !tbaa !913
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
  br i1 %.not.not, label %.lr.ph231.split, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.thread, !llvm.loop !17899

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %bb.c
  %i.ao = phi i32 [ %i.at, %bb.c ], [ %i.y, %.lr.ph226.split.preheader ]
  %i.ap = phi i32 [ %i.au, %bb.c ], [ %i.z, %.lr.ph226.split.preheader ]
  %i.aq = phi i32 [ %i.av, %bb.c ], [ %i.aa, %.lr.ph226.split.preheader ] ; 3 uses
  %.037224 = phi i32 [ %i.aw, %bb.c ], [ %i.ad, %.lr.ph226.split.preheader ] ; 8 uses
  %.sroa.0162.1223 = phi i64 [ %.sroa.0162.2.lcssa, %bb.c ], [ %.sroa.0162.0229, %.lr.ph226.split.preheader ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !913 ; 2 uses
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
  %.pre = load i32, ptr %i.g, align 4, !tbaa !913 ; 2 uses
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
  br i1 %.not42.not, label %.lr.ph226.split, label %._crit_edge227.loopexit, !llvm.loop !17900

bb.d:                                             ; preds = %.lr.ph, %bb.dk
  %i.ax = phi i32 [ %i.aq, %.lr.ph ], [ %i.rf, %bb.dk ]
  %.038218 = phi i32 [ %i.ar, %.lr.ph ], [ %i.re, %bb.dk ] ; 8 uses
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !913
  %i.az = sub nsw i32 %.0230, %i.ay               ; 2 uses
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !913
  %i.bb = sub nsw i32 %.037224, %i.ba             ; 2 uses
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !913
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
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !913
  %i.bo = icmp slt i32 %i.bn, %i.bh
  br i1 %i.bo, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !913
  %i.bq = icmp slt i32 %i.bp, %i.bi
  %i.br = icmp slt i32 %i.ax, %i.bj
  %or.cond189 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond189, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.bm

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.d
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !1140 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.bs, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !913 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.be
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = icmp sgt i32 %i.bu, %i.be
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !913 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bf
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp sgt i32 %i.by, %i.bf
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !913
  %i.cd = icmp slt i32 %i.cc, %i.bg
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !1416 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !723

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.cf, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !913 ; 2 uses
  %i.ci = icmp slt i32 %i.be, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp sgt i32 %i.be, %i.ch
  br i1 %i.cj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !913 ; 2 uses
  %i.cm = icmp slt i32 %i.bf, %i.cl
  br i1 %i.cm, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = icmp sgt i32 %i.bf, %i.cl
  br i1 %i.cn, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !913
  %i.cq = icmp slt i32 %i.bg, %i.cp
  br i1 %i.cq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.l, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cr = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.ct = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.cs, align 8, !tbaa !913
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 270340
  store i32 %i.as, ptr %i.cu, align 4, !tbaa !913
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 270344
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !913
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 270348
  store i32 0, ptr %i.cw, align 4, !tbaa !6067
  %5 = load <2 x double>, ptr %i.r, align 8
  %broadcast.splat = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cx, align 8, !tbaa !908
  store <2 x double> %broadcast.splat, ptr %i.cy, align 8, !tbaa !908
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store <2 x double> %broadcast.splat, ptr %i.da, align 8, !tbaa !908
  store <2 x double> %broadcast.splat, ptr %i.db, align 8, !tbaa !908
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dd, align 8, !tbaa !908
  store <2 x double> %broadcast.splat, ptr %i.de, align 8, !tbaa !908
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dg, align 8, !tbaa !908
  store <2 x double> %broadcast.splat, ptr %i.dh, align 8, !tbaa !908
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next.3, 32768
  br i1 %i.di, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !17901

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !1140 ; 2 uses
  %.not12.i.i.i.i46 = icmp eq ptr %i.dj, null
  br i1 %.not12.i.i.i.i46, label %.critedge.i, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %.014.i.i.i.i48 = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.dj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i49 = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 32
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !913 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.be
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dn = icmp sgt i32 %i.dl, %i.be
  br i1 %i.dn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !913 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.bf
  br i1 %i.dq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp sgt i32 %i.dp, %i.bf
  br i1 %i.dr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !913
  %i.du = icmp slt i32 %i.dt, %i.bg
  br i1 %i.du, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.o, %.lr.ph.i.i.i.i47
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.p, %bb.n
  %.sink.i.i.i.i52 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ]
  %.19.i.i.i.i53 = phi ptr [ %.0813.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ %.014.i.i.i.i48, %bb.p ], [ %.014.i.i.i.i48, %bb.n ], [ %.014.i.i.i.i48, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ] ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 %.sink.i.i.i.i52
  %.1.i.i.i.i54 = load ptr, ptr %i.dv, align 8, !tbaa !1416 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i47, !llvm.loop !723

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %i.dw = icmp eq ptr %.19.i.i.i.i53, %i.t
  br i1 %i.dw, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !913 ; 2 uses
  %i.dz = icmp slt i32 %i.be, %i.dy
  br i1 %i.dz, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp sgt i32 %i.be, %i.dy
  br i1 %i.ea, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !913 ; 2 uses
  %i.ed = icmp slt i32 %i.bf, %i.ec
  br i1 %i.ed, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp sgt i32 %i.bf, %i.ec
  br i1 %i.ee, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 40
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !913
  %i.eh = icmp slt i32 %i.bg, %i.eg
  br i1 %i.eh, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.s, %bb.q, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i53, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i53, %bb.q ], [ %.19.i.i.i.i53, %bb.s ]
  %i.ei = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  %.sroa.0145.sroa.0.0.insert.ext = zext i32 %i.be to i64
  %.sroa.0145.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0145.sroa.0.0.insert.ext
  store i64 %.sroa.0145.sroa.0.0.insert.insert, ptr %i.ej, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 40 ; 2 uses
  store i32 %i.bg, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !908
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.cr, ptr %i.ek, align 8, !tbaa !1144
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !6063
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store i8 0, ptr %i.em, align 8, !tbaa !6064
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
  %i.es = load i32, ptr %i.ej, align 8, !tbaa !913 ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !913 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = icmp sgt i32 %i.es, %i.et
  br i1 %i.ev, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !913 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !913 ; 2 uses
  %i.fa = icmp slt i32 %i.ex, %i.ez
  br i1 %i.fa, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = icmp sgt i32 %i.ex, %i.ez
  br i1 %i.fb, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !913
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !913
  %i.ff = icmp slt i32 %i.fc, %i.fe
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fg = phi i1 [ false, %bb.z ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ %i.ff, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #26
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !1288
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.u, align 8, !tbaa !1288
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i
  %.lcssa353.sink = phi ptr [ %i.lt, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.ei, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.mu, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.fj, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa353.sink, i64 noundef 72) #33
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ab:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 72) #33
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.m, %bb.k, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1144 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ac, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.fo = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !6064, !range !972, !noundef !1253
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.fo, i8 0, i64 270336, i1 false)
  %i.ft = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.fs, align 8, !tbaa !913
end_hunk_10
begin_hunk_11_@_ZNK7openvdb5v13_04math10UnitaryMap7isEqualERKNS1_7MapBaseE:bb.a
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !19436
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !904, !alias.scope !19439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.d, ptr noundef nonnull align 1 dereferenceable(10) @.str.119, i64 10, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.e, align 8, !tbaa !907, !alias.scope !19439
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.f, align 2, !tbaa !908, !alias.scope !19439
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !907  ; 2 uses
  %i.i = icmp eq i64 %i.h, 10
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !909 ; 4 uses
  br i1 %i.i, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %.pre.i.i, align 1
  %i.k = load i64, ptr %i.d, align 1
  %i.l = xor i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %.pre.i.i, i64 8
  %i.n = getelementptr i8, ptr %i.d, i64 8
  %i.o = load i16, ptr %i.m, align 1
  %i.p = load i16, ptr %i.n, align 1
  %i.q = zext i16 %i.o to i64
  %i.r = zext i16 %i.p to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = or i64 %i.l, %i.s
  %i.u = icmp ne i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.x = phi i1 [ false, %bb.a ], [ %i.w, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %.pre.i.i, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.aa = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_10UnitaryMapEEEbv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !908
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.i, i64 noundef %i.ac) #33
  br label %_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_10UnitaryMapEEEbv.exit.i

_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_10UnitaryMapEEEbv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %i.x, label %bb.c, label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_10UnitaryMapEEEbRKT_RKS2_.exit

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_10UnitaryMapEEEbv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = call noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, double noundef 1.000000e-08)
  br i1 %i.af, label %bb.d, label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_10UnitaryMapEEEbRKT_RKS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ai = call noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d(ptr noundef nonnull align 8 dereferenceable(128) %i.ag, ptr noundef nonnull align 8 dereferenceable(128) %i.ah, double noundef 1.000000e-08)
  br label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_10UnitaryMapEEEbRKT_RKS2_.exit

_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_10UnitaryMapEEEbRKT_RKS2_.exit: ; preds = %_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_10UnitaryMapEEEbv.exit.i, %bb.c, %bb.d
  %i.aj = phi i1 [ false, %_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_10UnitaryMapEEEbv.exit.i ], [ false, %bb.c ], [ %i.ai, %bb.d ]
  ret i1 %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math10UnitaryMap8isLinearEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math10UnitaryMap15hasUniformScaleEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap8applyMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19444)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19445)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !886, !noalias !19446
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load double, ptr %i.i, align 8, !tbaa !886, !noalias !19446
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load double, ptr %i.k, align 8, !tbaa !886, !noalias !19446
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = load double, ptr %i.m, align 8, !tbaa !886, !noalias !19446
  %i.o = load double, ptr %2, align 8, !tbaa !886, !noalias !19446 ; 2 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !886, !noalias !19446 ; 2 uses
  %i.q = load double, ptr %i.d, align 8, !tbaa !886, !noalias !19446 ; 2 uses
  %i.r = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19446
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !19446
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s
  %i.w = insertelement <2 x double> poison, double %i.o, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.r, <2 x double> %i.v)
  %i.z = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !19446
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.z, <2 x double> %i.y)
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !886, !noalias !19446
  %i.ae = fadd <2 x double> %i.ac, %i.ad
  %i.af = fmul double %i.p, %i.j
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.o, double %i.h, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double %i.ag)
  %i.ai = fadd double %i.n, %i.ah
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !886, !alias.scope !19446
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !886, !alias.scope !19446
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap15applyInverseMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19451)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19452)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load double, ptr %i.g, align 8, !tbaa !886, !noalias !19453
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.j = load double, ptr %i.i, align 8, !tbaa !886, !noalias !19453
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.l = load double, ptr %i.k, align 8, !tbaa !886, !noalias !19453
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.n = load double, ptr %i.m, align 8, !tbaa !886, !noalias !19453
  %i.o = load double, ptr %2, align 8, !tbaa !886, !noalias !19453 ; 2 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !886, !noalias !19453 ; 2 uses
  %i.q = load double, ptr %i.d, align 8, !tbaa !886, !noalias !19453 ; 2 uses
  %i.r = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19453
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !19453
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s
  %i.w = insertelement <2 x double> poison, double %i.o, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.r, <2 x double> %i.v)
  %i.z = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !19453
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.z, <2 x double> %i.y)
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !886, !noalias !19453
  %i.ae = fadd <2 x double> %i.ac, %i.ad
  %i.af = fmul double %i.p, %i.j
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.o, double %i.h, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double %i.ag)
  %i.ai = fadd double %i.n, %i.ah
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !886, !alias.scope !19453
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !886, !alias.scope !19453
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap8applyIJCERKNS1_4Mat3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19462)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.e = load double, ptr %i.d, align 8, !tbaa !886, !noalias !19463 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !19463 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.i = load double, ptr %i.h, align 8, !tbaa !886, !noalias !19463 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19463 ; 4 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !886, !noalias !19463 ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !19463 ; 4 uses
  %3 = load <2 x double>, ptr %i.l, align 8
  %i.r = load <3 x double>, ptr %2, align 8, !tbaa !886, !noalias !19464 ; 3 uses
  %4 = load <2 x double>, ptr %i.m, align 8
  %i.s = load <3 x double>, ptr %i.j, align 8, !tbaa !886, !noalias !19464 ; 3 uses
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <3 x i32> zeroinitializer
  %i.u = fmul <3 x double> %i.t, %i.s
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> zeroinitializer
  %i.w = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.r, <3 x double> %i.u)
  %5 = load <2 x double>, ptr %i.n, align 8
  %i.x = load <3 x double>, ptr %i.k, align 8, !tbaa !886, !noalias !19464 ; 3 uses
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> %i.x, <3 x double> %i.w) ; 6 uses
  %i.aa = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.p, %i.aa
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.o, <2 x double> %i.ab)
  %i.ae = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.q, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !886, !alias.scope !19465
  %i.ag = extractelement <3 x double> %i.z, i64 1
  %i.ah = fmul double %i.g, %i.ag
  %i.ai = extractelement <3 x double> %i.z, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.e, double %i.ah)
  %i.ak = extractelement <3 x double> %i.z, i64 2
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.i, double %i.aj)
  store double %i.al, ptr %.sroa.921.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !19465
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
  store <2 x double> %i.bp, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !19465
  %i.bq = insertelement <2 x double> %i.am, double %i.g, i64 0
  %i.br = fmul <2 x double> %i.bq, %i.bd
  %i.bs = insertelement <2 x double> %i.aq, double %i.e, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> %i.au, double %i.i, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.bt)
  store <2 x double> %i.bv, ptr %.sroa.18.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !19465
  %i.bw = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.an, %i.bw
  %i.by = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ar, <2 x double> %i.bx)
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.av, <2 x double> %i.bz)
  store <2 x double> %i.cb, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !19465
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap8applyIJCERKNS1_4Mat3IdEERKNS1_4Vec3IdEESA_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19477)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.e = load double, ptr %i.d, align 8, !tbaa !886, !noalias !19478 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !19478 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.i = load double, ptr %i.h, align 8, !tbaa !886, !noalias !19478 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.921.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19478 ; 4 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !886, !noalias !19478 ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !19478 ; 4 uses
  %5 = load <2 x double>, ptr %i.l, align 8
  %i.r = load <3 x double>, ptr %2, align 8, !tbaa !886, !noalias !19479 ; 3 uses
  %6 = load <2 x double>, ptr %i.m, align 8
  %i.s = load <3 x double>, ptr %i.j, align 8, !tbaa !886, !noalias !19479 ; 3 uses
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <3 x i32> zeroinitializer
  %i.u = fmul <3 x double> %i.t, %i.s
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> zeroinitializer
  %i.w = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.r, <3 x double> %i.u)
  %7 = load <2 x double>, ptr %i.n, align 8
  %i.x = load <3 x double>, ptr %i.k, align 8, !tbaa !886, !noalias !19479 ; 3 uses
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> %i.x, <3 x double> %i.w) ; 6 uses
  %i.aa = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.p, %i.aa
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.o, <2 x double> %i.ab)
  %i.ae = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.q, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !886, !alias.scope !19480
  %i.ag = extractelement <3 x double> %i.z, i64 1
  %i.ah = fmul double %i.g, %i.ag
  %i.ai = extractelement <3 x double> %i.z, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.e, double %i.ah)
  %i.ak = extractelement <3 x double> %i.z, i64 2
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.i, double %i.aj)
  store double %i.al, ptr %.sroa.921.0..sroa_idx.i.i, align 8, !tbaa !886, !alias.scope !19480
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
  store <2 x double> %i.bp, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !tbaa !886, !alias.scope !19480
  %i.bq = insertelement <2 x double> %i.am, double %i.g, i64 0
  %i.br = fmul <2 x double> %i.bq, %i.bd
  %i.bs = insertelement <2 x double> %i.aq, double %i.e, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> %i.au, double %i.i, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.bt)
  store <2 x double> %i.bv, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !tbaa !886, !alias.scope !19480
  %i.bw = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.an, %i.bw
  %i.by = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ar, <2 x double> %i.bx)
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.av, <2 x double> %i.bz)
  store <2 x double> %i.cb, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !886, !alias.scope !19480
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math10UnitaryMap11determinantEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load double, ptr %i.a, align 8, !tbaa !1250
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math10UnitaryMap11determinantERKNS1_4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load double, ptr %i.a, align 8, !tbaa !1250
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap9voxelSizeEv(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math10UnitaryMap9voxelSizeERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #7 comdat align 2 {
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
  %i.b = load ptr, ptr %3, align 8, !tbaa !909
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !907
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %3, align 8, !tbaa !909    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !908
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !19485)
  call void @llvm.experimental.noalias.scope.decl(metadata !19486)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !904, !alias.scope !19487
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !907, !alias.scope !19487
  store i8 0, ptr %i.k, align 8, !tbaa !908, !alias.scope !19487
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1229, !noalias !19487 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !19487 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1230, !noalias !19487 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !909, !alias.scope !19487 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !908, !alias.scope !19487
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #33
  br label %.body

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %2, align 8, !tbaa !895
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !895
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !895
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !909 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !908
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !895
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
  %i.at = load ptr, ptr %3, align 8, !tbaa !909   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN7openvdb5v13_04math10UnitaryMapC2ERKNS1_4Mat4IdEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bx = call ptr @__cxa_begin_catch(ptr %.5) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.by = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.by, align 8, !tbaa !895
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #31
          to label %bb.ar unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %8, align 8, !tbaa !909   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bl
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.ae
  %i.cc = load i64, ptr %i.bl, align 8, !tbaa !908
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.aq

_ZN7openvdb5v13_04math14hasTranslationIdEEbRKNS1_4Mat4IT_EE.exit: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 24, i1 false), !tbaa !886
  %scevgep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %scevgep.1.i, i64 24, i1 false), !tbaa !886
  %scevgep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %scevgep.2.i, i64 24, i1 false), !tbaa !886
  %i.cg = call noundef zeroext i1 @_ZN7openvdb5v13_04math9isUnitaryINS1_4Mat3IdEEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(72) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br i1 %i.cg, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %_ZN7openvdb5v13_04math14hasTranslationIdEEbRKNS1_4Mat4IT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.ch, ptr %12, align 8, !tbaa !904
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !907
  store i8 0, ptr %i.ch, align 8, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.124, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.ck = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %14) #26 ; 0 uses
  %i.cl = load ptr, ptr %14, align 8, !tbaa !909  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.ah
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !908
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #33
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
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %12) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.cu, align 8, !tbaa !895
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #31
          to label %bb.ar unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %12, align 8, !tbaa !909  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ch
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ao
  %i.cy = load i64, ptr %i.ch, align 8, !tbaa !908
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #33
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
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !1250
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 344
  store double %i.dh, ptr %i.di, align 8, !tbaa !1250
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 344
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 368
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !1251, !range !972, !noundef !1253
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 %i.dm, ptr %i.dn, align 8, !tbaa !1251
  %i.do = getelementptr inbounds nuw i8, ptr %15, i64 369
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !1252, !range !972, !noundef !1253
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 377
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !1252
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  ret void

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn16.pn = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  resume { ptr, i32 } %.pn16.pn

bb.ar:                                            ; preds = %bb.an, %bb.ad, %bb.t, %bb.j
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math4Mat4IdE3detEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #7 comdat align 2 {
.split.us.3.3:
  %.sroa.0 = alloca [9 x double], align 16        ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !886
  store <2 x double> %i.b, ptr %.sroa.0, align 16, !tbaa !886
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load <5 x double>, ptr %i.c, align 8, !tbaa !886
  %i.e = shufflevector <5 x double> %i.d, <5 x double> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %.sroa.0.16..sroa_idx146 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <4 x double> %i.e, ptr %.sroa.0.16..sroa_idx146, align 16, !tbaa !886
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !886
  %.sroa.0.48..sroa_idx167 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  store <2 x double> %i.g, ptr %.sroa.0.48..sroa_idx167, align 16, !tbaa !886
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load double, ptr %i.h, align 8, !tbaa !886 ; 2 uses
  %.sroa.0.64..sroa_idx172 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  store double %i.i, ptr %.sroa.0.64..sroa_idx172, align 16, !tbaa !886
  %i.j = load double, ptr %0, align 8, !tbaa !886
  %.sroa.0.0..sroa.0.0.104 = load double, ptr %.sroa.0, align 16, !tbaa !886
  %.sroa.0.8..sroa_idx144 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8. = load double, ptr %.sroa.0.8..sroa_idx144, align 8, !tbaa !886
  %.sroa.0.16..sroa_idx149 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16. = load double, ptr %.sroa.0.16..sroa_idx149, align 16, !tbaa !886
  %scevgep.164 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %1 = load <2 x double>, ptr %scevgep.164, align 8
  %i.k = shufflevector <2 x double> %1, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load double, ptr %i.l, align 8, !tbaa !886
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !886
  %i.p = insertelement <4 x double> %i.k, double %i.m, i64 1
  %i.q = shufflevector <2 x double> %i.o, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.r = shufflevector <4 x double> %i.p, <4 x double> %i.q, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load double, ptr %i.t, align 8, !tbaa !886
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load double, ptr %i.v, align 8, !tbaa !886
  %i.x = load <2 x double>, ptr %i.s, align 8, !tbaa !886
  %i.y = insertelement <4 x double> poison, double %i.u, i64 2
  %i.z = insertelement <4 x double> %i.y, double %i.w, i64 3
  %i.aa = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ab = shufflevector <4 x double> %i.aa, <4 x double> %i.z, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !886 ; 2 uses
  %.sroa.0.64..sroa_idx173 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  store double %i.ad, ptr %.sroa.0.64..sroa_idx173, align 16, !tbaa !886
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !886
  %scevgep.283 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load <2 x double>, ptr %scevgep.283, align 8, !tbaa !886
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load <2 x double>, ptr %i.ah, align 8, !tbaa !886
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %2 = load <2 x double>, ptr %i.aj, align 8
  %i.ak = shufflevector <2 x double> %2, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load double, ptr %i.al, align 8, !tbaa !886
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load <2 x double>, ptr %i.an, align 8, !tbaa !886
  %i.ap = insertelement <4 x double> %i.ak, double %i.am, i64 1
  %i.aq = shufflevector <2 x double> %i.ao, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x double> %i.ap, <4 x double> %i.aq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.at = load double, ptr %i.as, align 8, !tbaa !886 ; 3 uses
  %.sroa.0.64..sroa_idx174 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  store double %i.at, ptr %.sroa.0.64..sroa_idx174, align 16, !tbaa !886
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !886
  %scevgep.3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load <2 x double>, ptr %scevgep.3, align 8, !tbaa !886
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = fneg double %i.at
  %i.bd = fneg double %i.af
  %.sroa.0.24..sroa_idx154 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.118 = load <2 x double>, ptr %.sroa.0.24..sroa_idx154, align 8, !tbaa !886 ; 3 uses
  store <4 x double> %i.r, ptr %.sroa.0, align 16, !tbaa !886
  %.sroa.0.24..sroa_idx155 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.120 = load double, ptr %.sroa.0.24..sroa_idx155, align 8, !tbaa !886 ; 2 uses
  %.sroa.0.0..sroa.0.0. = load <2 x double>, ptr %.sroa.0, align 16, !tbaa !886 ; 2 uses
  %.sroa.0.16..sroa_idx150 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.112 = load double, ptr %.sroa.0.16..sroa_idx150, align 16, !tbaa !886
  store <2 x double> %i.ag, ptr %.sroa.0, align 16, !tbaa !886
  %.sroa.0.16..sroa_idx148 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <2 x double> %i.ai, ptr %.sroa.0.16..sroa_idx148, align 16, !tbaa !886
  %.sroa.0.0..sroa.0.0.105 = load double, ptr %.sroa.0, align 16, !tbaa !886
  %.sroa.0.8..sroa_idx145 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8.107 = load double, ptr %.sroa.0.8..sroa_idx145, align 8, !tbaa !886
  %.sroa.0.16..sroa_idx151 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.114 = load double, ptr %.sroa.0.16..sroa_idx151, align 16, !tbaa !886
  store <2 x double> %i.aw, ptr %.sroa.0, align 16, !tbaa !886
  %3 = load <2 x double>, ptr %i.ax, align 8
  %i.be = shufflevector <2 x double> %3, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bf = load double, ptr %i.ay, align 8, !tbaa !886
  %i.bg = load <2 x double>, ptr %i.az, align 8, !tbaa !886
  %i.bh = insertelement <4 x double> %i.be, double %i.bf, i64 1
  %i.bi = shufflevector <2 x double> %i.bg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x double> %i.bh, <4 x double> %i.bi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bk = load <2 x double>, ptr %i.ba, align 8, !tbaa !886
  %i.bl = load double, ptr %i.bb, align 8, !tbaa !886
  %.sroa.0.64..sroa_idx175 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  store double %i.bl, ptr %.sroa.0.64..sroa_idx175, align 16, !tbaa !886
  %i.bm = shufflevector <2 x double> %.sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.24..sroa.0.24.118, <2 x i32> <i32 1, i32 3>
  %i.bn = shufflevector <2 x double> %.sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.24..sroa.0.24.118, <2 x i32> <i32 0, i32 2>
  %.sroa.0.48..sroa_idx166 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.134 = load <2 x double>, ptr %.sroa.0.48..sroa_idx166, align 16, !tbaa !886 ; 4 uses
  %.sroa.0.32..sroa_idx161 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.128 = load <2 x double>, ptr %.sroa.0.32..sroa_idx161, align 16, !tbaa !886 ; 2 uses
  %.sroa.0.32..sroa_idx157 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  store <4 x double> %i.ab, ptr %.sroa.0.32..sroa_idx157, align 16, !tbaa !886
  %.sroa.0.32..sroa_idx160 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.126 = load <2 x double>, ptr %.sroa.0.32..sroa_idx160, align 16, !tbaa !886 ; 3 uses
  %.sroa.0.48..sroa_idx165 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.132 = load <2 x double>, ptr %.sroa.0.48..sroa_idx165, align 16, !tbaa !886 ; 3 uses
  %.sroa.0.56..sroa_idx171 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.56..sroa.0.56.140 = load double, ptr %.sroa.0.56..sroa_idx171, align 8, !tbaa !886
  %.sroa.0.32..sroa_idx158 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  store <4 x double> %i.ar, ptr %.sroa.0.32..sroa_idx158, align 16, !tbaa !886
  %.sroa.0.40..sroa_idx163 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %.sroa.0.40..sroa.0.40. = load double, ptr %.sroa.0.40..sroa_idx163, align 8, !tbaa !886
  %.sroa.0.32..sroa_idx159 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32. = load <2 x double>, ptr %.sroa.0.32..sroa_idx159, align 16, !tbaa !886
  %.sroa.0.48..sroa_idx164 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48. = load <2 x double>, ptr %.sroa.0.48..sroa_idx164, align 16, !tbaa !886 ; 3 uses
  %.sroa.0.24..sroa_idx153 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24. = load <2 x double>, ptr %.sroa.0.24..sroa_idx153, align 8, !tbaa !886 ; 2 uses
  %.sroa.0.16..sroa_idx147 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <4 x double> %i.bj, ptr %.sroa.0.16..sroa_idx147, align 16, !tbaa !886
  %.sroa.0.48..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  store <2 x double> %i.bk, ptr %.sroa.0.48..sroa_idx168, align 16, !tbaa !886
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
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !886
  %i.do = fneg double %i.dn
  %.sroa.0.48..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.138 = load double, ptr %.sroa.0.48..sroa_idx169, align 16, !tbaa !886 ; 2 uses
  %.sroa.0.24..sroa_idx156 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.122 = load double, ptr %.sroa.0.24..sroa_idx156, align 8, !tbaa !886 ; 2 uses
  %.sroa.0.32..sroa_idx162 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.130 = load <2 x double>, ptr %.sroa.0.32..sroa_idx162, align 16, !tbaa !886 ; 3 uses
  %.sroa.0.56..sroa_idx170 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.56..sroa.0.56. = load <2 x double>, ptr %.sroa.0.56..sroa_idx170, align 8, !tbaa !886 ; 3 uses
  %i.dp = fneg <2 x double> %.sroa.0.56..sroa.0.56.
  %i.dq = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dr = insertelement <2 x double> %i.dq, double %.sroa.0.24..sroa.0.24.122, i64 1
  %i.ds = fmul <2 x double> %i.dr, %i.dp
  %i.dt = shufflevector <2 x double> %.sroa.0.56..sroa.0.56., <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.du = insertelement <2 x double> %i.dt, double %.sroa.0.48..sroa.0.48.138, i64 1
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> %i.du, <2 x double> %i.ds) ; 2 uses
  %i.dw = fneg double %.sroa.0.48..sroa.0.48.138
  %.sroa.0.0..sroa.0.0.103 = load <2 x double>, ptr %.sroa.0, align 16, !tbaa !886 ; 2 uses
  %i.dx = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.dy = insertelement <2 x double> %.sroa.0.0..sroa.0.0.103, double %i.dw, i64 0
  %i.dz = fmul <2 x double> %i.dx, %i.dy
  %i.ea = shufflevector <2 x double> %.sroa.0.0..sroa.0.0.103, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.eb = insertelement <2 x double> %i.ea, double %.sroa.0.24..sroa.0.24.122, i64 0
  %i.ec = shufflevector <2 x double> %.sroa.0.56..sroa.0.56., <2 x double> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.ec, <2 x double> %i.dz) ; 2 uses
  %.sroa.0.16..sroa_idx152 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.116 = load double, ptr %.sroa.0.16..sroa_idx152, align 16, !tbaa !886
  %i.ee = extractelement <2 x double> %i.ed, i64 0
  %i.ef = extractelement <2 x double> %i.ed, i64 1
  %i.eg = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.116, double %i.ee, double %i.ef)
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.do, double %i.eg, double %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret double %i.eh
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_10UnitaryMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEE3runERKSK_RKS19_RS1B_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1344
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1345
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !908
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1220
  %i.g = load i64, ptr %0, align 8, !tbaa !1219
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_10UnitaryMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEE3runERKSK_RKS19_RS1B_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !1348
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 320)
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  invoke void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_10UnitaryMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEEC2ERKSK_RKS19_RS1B_RNS1_22small_object_allocatorE(ptr noundef nonnull align 64 dereferenceable(264) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1366
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !1367
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.j, align 8, !tbaa !1370
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.k, align 8, !tbaa !1018
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  store ptr %4, ptr %i.l, align 8, !tbaa !7105
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_10UnitaryMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEE3runERKSK_RKS19_RS1B_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_10UnitaryMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEE3runERKSK_RKS19_RS1B_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.n = load atomic i8, ptr %i.m monotonic, align 1
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_10UnitaryMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEE3runERKSK_RKS19_RS1B_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #32
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_10UnitaryMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEE3runERKSK_RKS19_RS1B_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #26
end_hunk_12
begin_hunk_13_@_ZN7openvdb5v13_04math19NonlinearFrustumMap4initEv:bb.a
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
  store ptr %i.q, ptr %1, align 8, !tbaa !904
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !907
  store i8 0, ptr %i.q, align 8, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.critedge
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.127, i64 noundef 83)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #26 ; 0 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !909    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !908
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
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
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.ad, align 8, !tbaa !895
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #31
          to label %bb.q unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %1, align 8, !tbaa !909   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.q
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.j
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !908
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.ae

bb.k:                                             ; preds = %bb.a
  %i.aj = fmul nnan <2 x double> %i.h, splat (double 5.000000e-01)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x double> %i.aj, ptr %i.ak, align 8, !tbaa !886
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load double, ptr %i.al, align 8, !tbaa !7153
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fadd double %i.an, -1.000000e+00
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !7154 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 1
  %i.au = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.i, i64 1
  %i.aw = fdiv <2 x double> %i.at, %i.av          ; 2 uses
  store <2 x double> %i.aw, ptr %i.ar, align 8, !tbaa !886
  %foldExtExtBinop = fmul nnan <2 x double> %i.h, %i.h
  %i.ax = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ay = extractelement <2 x double> %i.aw, i64 1
  %i.az = fdiv double %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double %i.az, ptr %i.ba, align 8, !tbaa !7155
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store i8 1, ptr %i.bb, align 8, !tbaa !7147
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
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !886, !noalias !19809 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !886, !noalias !19809 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !886, !noalias !19809 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !886, !noalias !19809 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.by = load double, ptr %i.bx, align 8, !tbaa !886, !noalias !19809
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !886, !noalias !19809
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !886, !noalias !19809 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !886, !noalias !19809 ; 3 uses
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
  %i.dm = load double, ptr %i.br, align 8, !tbaa !886, !noalias !19809 ; 2 uses
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
  store i8 0, ptr %i.bb, align 8, !tbaa !7147
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.o
  ret void

bb.q:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMapD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(520) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMapD0Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 520) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap12getAffineMapEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.266") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZNK7openvdb5v13_04math9AffineMap12getAffineMapEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.266") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap4typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19812)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !904, !alias.scope !19812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !19812
  store i64 19, ptr %i.a, align 8, !tbaa !973, !noalias !19812
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !909, !alias.scope !19812
  %i.d = load i64, ptr %i.a, align 8, !tbaa !973, !noalias !19812 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !908, !alias.scope !19812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.125, i64 19, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !907, !alias.scope !19812
  %i.f = load ptr, ptr %0, align 8, !tbaa !909, !alias.scope !19812
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !19812
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
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8isLinearEv(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap15hasUniformScaleEv(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #7 comdat align 2 {
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
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19821
  %i.d = fsub <2 x double> %i.b, %i.c             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !886, !noalias !19821
  %i.g = fsub double %.sroa.9.0.copyload, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.i = load double, ptr %i.h, align 8, !tbaa !7150, !noalias !19822
  %i.j = extractelement <2 x double> %i.d, i64 0
  %i.k = fsub double %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.m = load double, ptr %i.l, align 8, !tbaa !7156, !noalias !19822
  %i.n = extractelement <2 x double> %i.d, i64 1
  %i.o = fsub double %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.q = load double, ptr %i.p, align 8, !tbaa !7151, !noalias !19822
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.s = load double, ptr %i.r, align 8, !tbaa !7157, !noalias !19822
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.u = load double, ptr %i.t, align 8, !tbaa !7152, !noalias !19822
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19823)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19824)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = load double, ptr %i.z, align 8, !tbaa !886, !noalias !19825
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !886, !noalias !19825
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !886, !noalias !19825
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ag = load double, ptr %i.af, align 8, !tbaa !886, !noalias !19825
  %i.ah = fmul double %i.g, %i.q                  ; 3 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ah, double 1.000000e+00)
  %i.aj = fdiv double %i.ai, %i.u                 ; 2 uses
  %i.ak = fmul double %i.k, %i.aj                 ; 2 uses
  %i.al = fmul double %i.o, %i.aj                 ; 2 uses
  %i.am = load <2 x double>, ptr %i.v, align 8, !tbaa !886, !noalias !19825
  %i.an = load <2 x double>, ptr %i.w, align 8, !tbaa !886, !noalias !19825
  %i.ao = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ap, %i.an
  %i.ar = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.am, <2 x double> %i.aq)
  %i.au = load <2 x double>, ptr %i.x, align 8, !tbaa !886, !noalias !19825
  %i.av = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.au, <2 x double> %i.at)
  %i.ay = load <2 x double>, ptr %i.y, align 8, !tbaa !886, !noalias !19825
  %i.az = fadd <2 x double> %i.ay, %i.ax
  %i.ba = fmul double %i.al, %i.ac
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.aa, double %i.ba)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ae, double %i.bb)
  %i.bd = fadd double %i.ag, %i.bc
  store <2 x double> %i.az, ptr %0, align 8, !tbaa !886, !alias.scope !19825
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bd, ptr %i.be, align 8, !tbaa !886, !alias.scope !19825
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
  %i.h = load double, ptr %i.g, align 8, !tbaa !886, !noalias !19834
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = load double, ptr %i.i, align 8, !tbaa !886, !noalias !19834
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.l = load double, ptr %i.k, align 8, !tbaa !886, !noalias !19834
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.n = load double, ptr %i.m, align 8, !tbaa !886, !noalias !19834
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19835)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.p = load <2 x double>, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !886, !noalias !19836
  %i.w = load double, ptr %2, align 8, !tbaa !886, !noalias !19834 ; 2 uses
  %i.x = load double, ptr %i.b, align 8, !tbaa !886, !noalias !19834 ; 2 uses
  %i.y = load double, ptr %i.d, align 8, !tbaa !886, !noalias !19834 ; 2 uses
  %i.z = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19834
  %i.aa = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !19834
  %i.ab = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.ac, %i.aa
  %i.ae = insertelement <2 x double> poison, double %i.w, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.z, <2 x double> %i.ad)
  %i.ah = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !19834
  %i.ai = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ah, <2 x double> %i.ag)
  %i.al = load <2 x double>, ptr %i.f, align 8, !tbaa !886, !noalias !19834
  %i.am = fadd <2 x double> %i.ak, %i.al
  %i.an = fmul double %i.x, %i.j
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.w, double %i.h, double %i.an)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.y, double %i.l, double %i.ao)
  %i.aq = fadd double %i.n, %i.ap                 ; 2 uses
  %i.ar = load <2 x double>, ptr %i.r, align 8, !tbaa !886, !noalias !19835
  %i.as = load double, ptr %i.q, align 8, !tbaa !7157, !noalias !19835
  %i.at = load double, ptr %i.s, align 8, !tbaa !7151, !noalias !19835
  %i.au = tail call double @llvm.fmuladd.f64(double %i.as, double %i.aq, double 1.000000e+00)
  %i.av = insertelement <2 x double> %i.p, double %i.aq, i64 1
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.at, i64 1
  %i.ay = fdiv <2 x double> %i.av, %i.ax          ; 2 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x double> %i.am, %i.az
  %i.bb = fadd <2 x double> %i.ar, %i.ba
  %i.bc = load <2 x double>, ptr %i.t, align 8, !tbaa !886, !noalias !19836
  %i.bd = fadd <2 x double> %i.bb, %i.bc
  %i.be = extractelement <2 x double> %i.ay, i64 1
  %i.bf = fadd double %i.be, %i.v
  store <2 x double> %i.bd, ptr %0, align 8, !alias.scope !19835
  store double %i.bf, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !19835
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyIJTERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19841)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19842)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !19843
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.i = load double, ptr %i.h, align 8, !tbaa !886, !noalias !19843
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.k = load double, ptr %i.j, align 8, !tbaa !886, !noalias !19843
  %i.l = load double, ptr %2, align 8, !tbaa !886, !noalias !19843 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !886, !noalias !19843 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !886, !noalias !19843 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19843
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !19843
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !19843
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !886, !alias.scope !19843
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !886, !alias.scope !19843
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyIJCERKNS1_4Mat3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19852)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.e = load double, ptr %i.d, align 8, !tbaa !886, !noalias !19853 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !19853 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.i = load double, ptr %i.h, align 8, !tbaa !886, !noalias !19853 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19853 ; 4 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !886, !noalias !19853 ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !19853 ; 4 uses
  %3 = load <2 x double>, ptr %i.l, align 8
  %i.r = load <3 x double>, ptr %2, align 8, !tbaa !886, !noalias !19854 ; 3 uses
  %4 = load <2 x double>, ptr %i.m, align 8
  %i.s = load <3 x double>, ptr %i.j, align 8, !tbaa !886, !noalias !19854 ; 3 uses
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <3 x i32> zeroinitializer
  %i.u = fmul <3 x double> %i.t, %i.s
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <3 x i32> zeroinitializer
  %i.w = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.v, <3 x double> %i.r, <3 x double> %i.u)
  %5 = load <2 x double>, ptr %i.n, align 8
  %i.x = load <3 x double>, ptr %i.k, align 8, !tbaa !886, !noalias !19854 ; 3 uses
  %i.y = shufflevector <2 x double> %i.q, <2 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> %i.x, <3 x double> %i.w) ; 6 uses
  %i.aa = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.p, %i.aa
  %i.ac = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.o, <2 x double> %i.ab)
  %i.ae = shufflevector <3 x double> %i.z, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.q, <2 x double> %i.ad)
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !886, !alias.scope !19855
  %i.ag = extractelement <3 x double> %i.z, i64 1
  %i.ah = fmul double %i.g, %i.ag
  %i.ai = extractelement <3 x double> %i.z, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.e, double %i.ah)
  %i.ak = extractelement <3 x double> %i.z, i64 2
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.i, double %i.aj)
  store double %i.al, ptr %.sroa.921.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !19855
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
  store <2 x double> %i.bp, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !19855
  %i.bq = insertelement <2 x double> %i.am, double %i.g, i64 0
  %i.br = fmul <2 x double> %i.bq, %i.bd
  %i.bs = insertelement <2 x double> %i.aq, double %i.e, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> %i.au, double %i.i, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.bt)
  store <2 x double> %i.bv, ptr %.sroa.18.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !19855
  %i.bw = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %i.an, %i.bw
  %i.by = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ar, <2 x double> %i.bx)
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.av, <2 x double> %i.bz)
  store <2 x double> %i.cb, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !886, !alias.scope !19855
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
  %i.c = load double, ptr %i.b, align 8, !tbaa !886, !noalias !19860
  %i.d = fsub double %.sroa.12.0.copyload, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.f = load <2 x double>, ptr %4, align 8
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19860
  %i.h = fsub <2 x double> %i.f, %i.g
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !19861
  %i.j = fsub <2 x double> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !7151, !noalias !19861
  %i.m = fmul double %i.d, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.o = load double, ptr %i.n, align 8, !tbaa !7157, !noalias !19861 ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.m, double 1.000000e+00) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.r = load double, ptr %i.q, align 8, !tbaa !7152, !noalias !19861 ; 2 uses
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
  store ptr %i.y, ptr %5, align 8, !tbaa !904
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !907
  store i8 0, ptr %i.y, align 8, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.126, i64 noundef 81)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7) #26 ; 0 uses
  %i.ac = load ptr, ptr %7, align 8, !tbaa !909   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !908
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #33
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
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.al, align 8, !tbaa !895
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #31
          to label %bb.u unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %5, align 8, !tbaa !909   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.y
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.k
  %i.ap = load i64, ptr %i.y, align 8, !tbaa !908
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #33
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
  br i1 %i.ax, label %bb.m, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit, !prof !1237

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
  br i1 %i.bb, label %bb.o, label %_ZN7openvdb5v13_04math4Mat3IdE4zeroEv.exit104, !prof !1237

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
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !886 ; 11 uses
  %i.bh = load <2 x double>, ptr %i.av, align 8, !tbaa !886 ; 5 uses
end_hunk_13
begin_hunk_14_@_ZNK7openvdb5v13_04math19NonlinearFrustumMap9postScaleERKNS1_4Vec3IdEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #33
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn9 = phi { ptr, i32 } [ %i.m, %bb.o ], [ %.pn10, %bb.p ]
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap9postShearEdNS1_4AxisES3_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, double noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(520) ptr @_Znwm(i64 noundef 520) #30 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load double, ptr %i.b, align 8, !tbaa !7153
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load double, ptr %i.d, align 8, !tbaa !7154
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZNK7openvdb5v13_04math9AffineMap9postShearEdNS1_4AxisES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(376) %i.f, double noundef %2, i32 noundef %3, i32 noundef %4)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN7openvdb5v13_04math19NonlinearFrustumMapC2ERKNS1_4BBoxINS1_4Vec3IdEEEEddRKSt10shared_ptrINS1_7MapBaseEE(ptr noundef nonnull align 8 dereferenceable(520) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.g, double noundef %i.c, double noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.c unwind label %.thread13

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %0, align 8, !tbaa !892
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !893
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.h unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = call ptr @__cxa_begin_catch(ptr %i.k) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #33
  invoke void @__cxa_rethrow() #31
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
  call void @__clang_call_terminate(ptr %i.o) #32
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 1, ptr %i.p, align 8, !tbaa !897
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 1, ptr %i.q, align 4, !tbaa !898
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.i, align 8, !tbaa !895
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.a, ptr %i.r, align 8, !tbaa !7149
  store ptr %i.i, ptr %i.h, align 8, !tbaa !893
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !893  ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !897
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !898
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !895
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !10
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !895
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !10
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !908
  %.not.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !913
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.n, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !946

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
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #33
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn11 = phi { ptr, i32 } [ %i.m, %bb.o ], [ %.pn12, %bb.p ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap13applyJacobianERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19900)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19901)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !19902
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load double, ptr %i.h, align 8, !tbaa !886, !noalias !19902
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load double, ptr %i.j, align 8, !tbaa !886, !noalias !19902
  %i.l = load double, ptr %2, align 8, !tbaa !886, !noalias !19902 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !886, !noalias !19902 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !886, !noalias !19902 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19902
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !19902
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !19902
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !886, !alias.scope !19902
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !886, !alias.scope !19902
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap13applyJacobianERKNS1_4Vec3IdEES6_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !886, !noalias !19909
  %i.d = fsub double %.sroa.13.0.copyload, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 448
  %4 = load <2 x double>, ptr %i.g, align 8
  %i.h = load <2 x double>, ptr %i.f, align 8, !tbaa !886 ; 3 uses
  %i.i = extractelement <2 x double> %i.h, i64 1  ; 2 uses
  %i.j = fmul double %i.d, %i.i
  %i.k = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.l = insertelement <2 x double> %i.k, double %i.j, i64 0
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.l, <2 x double> <double 1.000000e+00, double -0.000000e+00>)
  %i.n = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !886 ; 2 uses
  %i.r = fmul double %i.i, %i.q                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19910)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19911)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load double, ptr %i.v, align 8, !tbaa !886, !noalias !19912
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.y = load double, ptr %i.x, align 8, !tbaa !886, !noalias !19912
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aa = load double, ptr %i.z, align 8, !tbaa !886, !noalias !19912
  %i.ab = load <2 x double>, ptr %3, align 8
  %i.ac = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19909
  %i.ad = fsub <2 x double> %i.ab, %i.ac
  %i.ae = load <2 x double>, ptr %i.e, align 8, !tbaa !886
  %i.af = fsub <2 x double> %i.ad, %i.ae
  %i.ag = load <2 x double>, ptr %2, align 8, !tbaa !886
  %i.ah = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fmul <2 x double> %i.af, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.ai, %i.ak
  %i.am = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ag, <2 x double> %i.al) ; 4 uses
  %i.ao = load <2 x double>, ptr %i.s, align 8, !tbaa !886, !noalias !19912
  %i.ap = load <2 x double>, ptr %i.t, align 8, !tbaa !886, !noalias !19912
  %i.aq = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x double> %i.aq, %i.ap
  %i.as = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.ao, <2 x double> %i.ar)
  %i.au = load <2 x double>, ptr %i.u, align 8, !tbaa !886, !noalias !19912
  %i.av = insertelement <2 x double> poison, double %i.r, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.au, <2 x double> %i.at)
  %i.ay = extractelement <2 x double> %i.an, i64 1
  %i.az = fmul double %i.ay, %i.y
  %i.ba = extractelement <2 x double> %i.an, i64 0
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.w, double %i.az)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.r, double %i.aa, double %i.bb)
  store <2 x double> %i.ax, ptr %0, align 8, !tbaa !886, !alias.scope !19912
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bc, ptr %i.bd, align 8, !tbaa !886, !alias.scope !19912
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap20applyInverseJacobianERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19917)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19918)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !19919
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.i = load double, ptr %i.h, align 8, !tbaa !886, !noalias !19919
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.k = load double, ptr %i.j, align 8, !tbaa !886, !noalias !19919
  %i.l = load double, ptr %2, align 8, !tbaa !886, !noalias !19919 ; 2 uses
  %i.m = load double, ptr %i.b, align 8, !tbaa !886, !noalias !19919 ; 2 uses
  %i.n = load double, ptr %i.d, align 8, !tbaa !886, !noalias !19919 ; 2 uses
  %i.o = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19919
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !886, !noalias !19919
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !19919
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.w, <2 x double> %i.v)
  %i.aa = fmul double %i.m, %i.i
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.l, double %i.g, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.k, double %i.ab)
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !886, !alias.scope !19919
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !886, !alias.scope !19919
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap20applyInverseJacobianERKNS1_4Vec3IdEES6_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !886, !noalias !19926
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
  %i.n = load double, ptr %i.m, align 8, !tbaa !886, !noalias !19927
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.p = load double, ptr %i.o, align 8, !tbaa !886, !noalias !19927
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.r = load double, ptr %i.q, align 8, !tbaa !886, !noalias !19927
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load <2 x double>, ptr %3, align 8
  %i.u = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19926
  %i.v = fsub <2 x double> %i.t, %i.u
  %i.w = load <2 x double>, ptr %i.e, align 8, !tbaa !886
  %i.x = fsub <2 x double> %i.v, %i.w
  %i.y = load <2 x double>, ptr %i.f, align 8, !tbaa !886 ; 4 uses
  %i.z = extractelement <2 x double> %i.y, i64 1  ; 2 uses
  %i.aa = fmul double %i.d, %i.z
  %i.ab = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ac = insertelement <2 x double> %i.ab, double %i.aa, i64 0
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.ac, <2 x double> <double 1.000000e+00, double -0.000000e+00>)
  %i.ae = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x double> %i.ad, %i.ae          ; 2 uses
  %i.ag = load double, ptr %2, align 8, !tbaa !886, !noalias !19927 ; 2 uses
  %i.ah = load double, ptr %i.i, align 8, !tbaa !886, !noalias !19927 ; 2 uses
  %i.ai = load double, ptr %i.k, align 8, !tbaa !886, !noalias !19927 ; 2 uses
  %i.aj = load <2 x double>, ptr %i.h, align 8, !tbaa !886, !noalias !19927
  %i.ak = load <2 x double>, ptr %i.j, align 8, !tbaa !886, !noalias !19927
  %i.al = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.am, %i.ak
  %i.ao = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.aj, <2 x double> %i.an)
  %i.ar = load <2 x double>, ptr %i.l, align 8, !tbaa !886, !noalias !19927
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
  store <2 x double> %i.bh, ptr %0, align 8, !tbaa !886
  %i.bi = fdiv double %i.ax, %i.z
  store double %i.bi, ptr %i.s, align 8, !tbaa !886
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap7applyJTERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19930)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load <2 x double>, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = load double, ptr %i.g, align 8, !tbaa !886, !noalias !19930
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = load double, ptr %i.i, align 8, !tbaa !886, !noalias !19930
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.l = load double, ptr %i.k, align 8, !tbaa !886, !noalias !19930
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.n = load double, ptr %i.m, align 8, !tbaa !886, !noalias !19930
  %i.o = load double, ptr %2, align 8, !tbaa !886, !noalias !19930 ; 2 uses
  %i.p = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19930 ; 2 uses
  %i.q = load double, ptr %i.b, align 8, !tbaa !886, !noalias !19930 ; 2 uses
  %i.r = load double, ptr %i.e, align 8, !tbaa !886, !noalias !19930 ; 2 uses
  %i.s = load <2 x double>, ptr %i.f, align 8, !tbaa !886, !noalias !19930 ; 2 uses
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
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !886, !alias.scope !19930
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ah, ptr %i.ai, align 8, !tbaa !886, !alias.scope !19930
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
  %i.g = load double, ptr %i.f, align 8, !tbaa !886, !noalias !19935
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = load double, ptr %i.i, align 8, !tbaa !886, !noalias !19935
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x double>, ptr %3, align 8
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !886, !noalias !19936
  %i.n = fsub <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !886, !noalias !19936
  %i.q = fsub double %.sroa.13.0.copyload, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.s = load double, ptr %i.r, align 8, !tbaa !7150
  %i.t = extractelement <2 x double> %i.n, i64 0
  %i.u = fsub double %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.w = load double, ptr %i.v, align 8, !tbaa !7156
  %i.x = extractelement <2 x double> %i.n, i64 1
  %i.y = fsub double %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 448
  %4 = load <2 x double>, ptr %i.aa, align 8
  %i.ab = load <2 x double>, ptr %i.z, align 8, !tbaa !886 ; 3 uses
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
  %i.am = load <2 x double>, ptr %i.a, align 8, !tbaa !886, !noalias !19935 ; 2 uses
  %i.an = load double, ptr %i.d, align 8, !tbaa !886, !noalias !19935 ; 2 uses
  %i.ao = load <2 x double>, ptr %i.e, align 8, !tbaa !886, !noalias !19935 ; 2 uses
  %i.ap = shufflevector <2 x double> %i.am, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.aq = shufflevector <2 x double> %i.am, <2 x double> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.ar = insertelement <2 x double> %i.c, double %i.g, i64 1
  %i.as = insertelement <2 x double> poison, double %i.an, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = load <2 x double>, ptr %i.h, align 8, !tbaa !886, !noalias !19935 ; 2 uses
  %i.aw = load <2 x double>, ptr %2, align 8, !tbaa !886, !noalias !19935 ; 4 uses
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
  store <2 x double> %i.bl, ptr %0, align 8, !tbaa !886
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bn, ptr %i.bo, align 8, !tbaa !886
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
  store ptr %i.a, ptr %2, align 8, !tbaa !904
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !907
  store i8 0, ptr %i.a, align 8, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.135, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !19941)
  call void @llvm.experimental.noalias.scope.decl(metadata !19942)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !904, !alias.scope !19943
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 0, ptr %i.e, align 8, !tbaa !907, !alias.scope !19943
  store i8 0, ptr %i.d, align 8, !tbaa !908, !alias.scope !19943
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1229, !noalias !19943 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !19943 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1230, !noalias !19943 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = load ptr, ptr %4, align 8, !tbaa !909, !alias.scope !19943 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.d, align 8, !tbaa !908, !alias.scope !19943
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #33
  br label %.body

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.w = load ptr, ptr %2, align 8, !tbaa !909    ; 6 uses
  %i.x = icmp eq ptr %i.w, %i.a
  %i.y = load ptr, ptr %4, align 8, !tbaa !909    ; 5 uses
  %i.z = icmp eq ptr %i.y, %i.d                   ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.z, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !907 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  switch i64 %i.aa, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !908
  store i8 %i.ac, ptr %i.w, align 1, !tbaa !908
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !907 ; 2 uses
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !907
  %i.ae = load ptr, ptr %2, align 8, !tbaa !909
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store i8 0, ptr %i.af, align 1, !tbaa !908
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !909
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.y, ptr %2, align 8, !tbaa !909
  %i.ag = load <2 x i64>, ptr %i.e, align 8, !tbaa !908
  store <2 x i64> %i.ag, ptr %i.b, align 8, !tbaa !908
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !908
  store ptr %i.y, ptr %2, align 8, !tbaa !909
  %i.ai = load <2 x i64>, ptr %i.e, align 8, !tbaa !908
  store <2 x i64> %i.ai, ptr %i.b, align 8, !tbaa !908
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.w, ptr %4, align 8, !tbaa !909
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !908
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.d, ptr %4, align 8, !tbaa !909
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.aj = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.w, %bb.i ], [ %i.d, %bb.j ]
  store i64 0, ptr %i.e, align 8, !tbaa !907
  store i8 0, ptr %i.aj, align 1, !tbaa !908
  %i.ak = load ptr, ptr %4, align 8, !tbaa !909   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.d
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.am = load i64, ptr %i.d, align 8, !tbaa !908
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !895
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !895
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.at, align 8, !tbaa !895
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !909 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_14
