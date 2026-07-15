inline.NumInlined: 58
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16OpenColorIO_v2_513GetM44InverseEPfPKf:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread
  %.0 = phi i1 [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ], [ true, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_516GetM44M44ProductEPfPKfS2_(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.sroa.049.0.copyload = load float, ptr %1, align 4
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.753.0.copyload = load float, ptr %.sroa.753.0..sroa_idx, align 4
  %.sroa.1157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.1157.0.copyload = load float, ptr %.sroa.1157.0..sroa_idx, align 4
  %.sroa.1561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.1561.0.copyload = load float, ptr %.sroa.1561.0..sroa_idx, align 4
  %.sroa.1965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.1965.0.copyload = load float, ptr %.sroa.1965.0..sroa_idx, align 4
  %.sroa.2369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.2369.0.copyload = load float, ptr %.sroa.2369.0..sroa_idx, align 4
  %.sroa.2773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2773.0.copyload = load float, ptr %.sroa.2773.0..sroa_idx, align 4
  %.sroa.3177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.3177.0.copyload = load float, ptr %.sroa.3177.0..sroa_idx, align 4
  %.sroa.3581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.3581.0.copyload = load float, ptr %.sroa.3581.0..sroa_idx, align 4
  %.sroa.3985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.3985.0.copyload = load float, ptr %.sroa.3985.0..sroa_idx, align 4
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.4389.0.copyload = load float, ptr %.sroa.4389.0..sroa_idx, align 4
  %.sroa.4793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.4793.0.copyload = load float, ptr %.sroa.4793.0..sroa_idx, align 4
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.5197.0.copyload = load float, ptr %.sroa.5197.0..sroa_idx, align 4
  %.sroa.55101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.55101.0.copyload = load float, ptr %.sroa.55101.0..sroa_idx, align 4
  %.sroa.59105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.59105.0.copyload = load float, ptr %.sroa.59105.0..sroa_idx, align 4
  %.sroa.63109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.63109.0.copyload = load float, ptr %.sroa.63109.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.a = load <4 x float>, ptr %2, align 4        ; 4 uses
  %i.b = load <4 x float>, ptr %.sroa.19.0..sroa_idx, align 4 ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.35.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %.sroa.51.0..sroa_idx, align 4 ; 4 uses
  %i.e = insertelement <4 x float> poison, float %.sroa.753.0.copyload, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %i.g = fmul <4 x float> %i.f, %i.b
  %i.h = insertelement <4 x float> poison, float %.sroa.049.0.copyload, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.a, <4 x float> %i.g)
  %i.k = insertelement <4 x float> poison, float %.sroa.1157.0.copyload, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.c, <4 x float> %i.j)
  %i.n = insertelement <4 x float> poison, float %.sroa.1561.0.copyload, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.d, <4 x float> %i.m)
  store <4 x float> %i.p, ptr %0, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = insertelement <4 x float> poison, float %.sroa.2369.0.copyload, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = fmul <4 x float> %i.s, %i.b
  %i.u = insertelement <4 x float> poison, float %.sroa.1965.0.copyload, i64 0
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.a, <4 x float> %i.t)
  %i.x = insertelement <4 x float> poison, float %.sroa.2773.0.copyload, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.c, <4 x float> %i.w)
  %i.aa = insertelement <4 x float> poison, float %.sroa.3177.0.copyload, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.d, <4 x float> %i.z)
  store <4 x float> %i.ac, ptr %i.q, align 4, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = insertelement <4 x float> poison, float %.sroa.3985.0.copyload, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = fmul <4 x float> %i.af, %i.b
  %i.ah = insertelement <4 x float> poison, float %.sroa.3581.0.copyload, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.a, <4 x float> %i.ag)
  %i.ak = insertelement <4 x float> poison, float %.sroa.4389.0.copyload, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.c, <4 x float> %i.aj)
  %i.an = insertelement <4 x float> poison, float %.sroa.4793.0.copyload, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.d, <4 x float> %i.am)
  store <4 x float> %i.ap, ptr %i.ad, align 4, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = insertelement <4 x float> poison, float %.sroa.55101.0.copyload, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = fmul <4 x float> %i.as, %i.b
  %i.au = insertelement <4 x float> poison, float %.sroa.5197.0.copyload, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.a, <4 x float> %i.at)
  %i.ax = insertelement <4 x float> poison, float %.sroa.59105.0.copyload, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.c, <4 x float> %i.aw)
  %i.ba = insertelement <4 x float> poison, float %.sroa.63109.0.copyload, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.d, <4 x float> %i.az)
  store <4 x float> %i.bc, ptr %i.aq, align 4, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_513GetMxbCombineEPfS0_PKfS2_S2_S2_(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.1127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.1529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.017.0.copyload = load float, ptr %3, align 4
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.418.0.copyload = load float, ptr %.sroa.418.0..sroa_idx, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.519.0.copyload = load float, ptr %.sroa.519.0..sroa_idx, align 4
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.620.0.copyload = load float, ptr %.sroa.620.0..sroa_idx, align 4
  %i.a = load <4 x float>, ptr %2, align 4        ; 4 uses
  %i.b = load <4 x float>, ptr %.sroa.725.0..sroa_idx, align 4 ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.1127.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %.sroa.1529.0..sroa_idx, align 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load <16 x float>, ptr %4, align 4       ; 20 uses
  %i.i = load <4 x float>, ptr %5, align 4
  %i.j = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.k = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.l = fmul <4 x float> %i.b, %i.k
  %i.m = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.n = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> zeroinitializer
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.a, <4 x float> %i.l)
  %i.p = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.q = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.r = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.c, <4 x float> %i.o)
  %i.s = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.t = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.d, <4 x float> %i.r)
  store <4 x float> %i.u, ptr %0, align 4, !tbaa !9
  %i.v = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.w = fmul <4 x float> %i.b, %i.v
  %i.x = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.a, <4 x float> %i.w)
  %i.z = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.c, <4 x float> %i.y)
  %i.ab = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.d, <4 x float> %i.aa)
  store <4 x float> %i.ac, ptr %i.e, align 4, !tbaa !9
  %i.ad = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.ae = fmul <4 x float> %i.b, %i.ad
  %i.af = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.a, <4 x float> %i.ae)
  %i.ah = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.c, <4 x float> %i.ag)
  %i.aj = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.d, <4 x float> %i.ai)
  store <4 x float> %i.ak, ptr %i.f, align 4, !tbaa !9
  %i.al = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.am = fmul <4 x float> %i.b, %i.al
  %i.an = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.a, <4 x float> %i.am)
  %i.ap = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.c, <4 x float> %i.ao)
  %i.ar = shufflevector <16 x float> %i.h, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> %i.d, <4 x float> %i.aq)
  store <4 x float> %i.as, ptr %i.g, align 4, !tbaa !9
  %i.at = insertelement <4 x float> poison, float %.sroa.418.0.copyload, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  %i.av = fmul <4 x float> %i.au, %i.j
  %i.aw = insertelement <4 x float> poison, float %.sroa.017.0.copyload, i64 0
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.ax, <4 x float> %i.av)
  %i.az = insertelement <4 x float> poison, float %.sroa.519.0.copyload, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.ba, <4 x float> %i.ay)
  %i.bc = insertelement <4 x float> poison, float %.sroa.620.0.copyload, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %i.bd, <4 x float> %i.bb)
  %i.bf = fadd <4 x float> %i.be, %i.i
  store <4 x float> %i.bf, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513GetMxbInverseEPfS0_PKfS2_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  %.sroa.0.0.copyload = load float, ptr %3, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4
  %i.b = call noundef zeroext i1 @_ZN16OpenColorIO_v2_513GetM44InverseEPfPKf(ptr noundef %0, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.b, label %.preheader.preheader.a, label %4

.preheader.preheader.a:                           ; preds = %bb.a
  %i.c = fneg float %.sroa.0.0.copyload           ; 4 uses
  %i.d = fneg float %.sroa.6.0.copyload           ; 4 uses
  %i.e = fneg float %.sroa.9.0.copyload           ; 4 uses
  %i.f = fneg float %.sroa.12.0.copyload          ; 4 uses
  %i.g = load float, ptr %0, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !9
  %i.j = fmul float %i.i, %i.d
  %i.k = tail call float @llvm.fmuladd.f32(float %i.g, float %i.c, float %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !9
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float %i.e, float %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !9
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.f, float %i.n)
  store float %i.q, ptr %1, align 4, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !9
  %i.v = fmul float %i.u, %i.d
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.c, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !9
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.e, float %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !9
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.f, float %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ac, ptr %i.ad, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !9
  %i.ai = fmul float %i.ah, %i.d
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.c, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load float, ptr %i.ak, align 4, !tbaa !9
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.e, float %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ao = load float, ptr %i.an, align 4, !tbaa !9
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.f, float %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ap, ptr %i.aq, align 4, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load float, ptr %i.ar, align 4, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load float, ptr %i.at, align 4, !tbaa !9
  %i.av = fmul float %i.au, %i.d
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.as, float %i.c, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !9
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.e, float %i.aw)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !9
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.f, float %i.az)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.bc, ptr %i.bd, align 4, !tbaa !9
  br label %4

4:                                                ; preds = %bb.a, %.preheader.preheader.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_511HalfsDifferEN9Imath_3_14halfES1_i(i16 %0, i16 %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = icmp ult i16 %0, 32767
  %i.c = add nuw nsw i32 %i.a, 32768
  %i.d = sub nuw nsw i32 65536, %i.a
  %i.e = select i1 %i.b, i32 %i.c, i32 %i.d       ; 3 uses
  %i.f = zext i16 %1 to i32                       ; 2 uses
  %i.g = icmp ult i16 %1, 32767
  %i.h = add nuw nsw i32 %i.f, 32768
  %i.i = sub nuw nsw i32 65536, %i.f
  %i.j = select i1 %i.g, i32 %i.h, i32 %i.i       ; 3 uses
  %i.k = and i16 %0, 31744
  %i.l = icmp eq i16 %i.k, 31744
  %i.m = and i16 %0, 1023
  %i.n = icmp ne i16 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  %i.p = and i16 %1, 31744                        ; 2 uses
  %i.q = and i16 %1, 1023                         ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ne i16 %i.p, 31744
  %i.s = icmp eq i16 %i.q, 0
  %.not15 = or i1 %i.r, %i.s
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.t = icmp eq i16 %i.p, 31744
  %i.u = icmp ne i16 %i.q, 0
  %i.v = and i1 %i.t, %i.u
  br i1 %i.v, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = and i16 %0, 32767
  %i.x = icmp eq i16 %i.w, 31744
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ne i32 %i.e, %i.j
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.z = and i16 %1, 32767
  %i.aa = icmp eq i16 %i.z, 31744
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp ne i32 %i.e, %i.j
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = sub nsw i32 %i.j, %i.e
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = icmp sgt i32 %i.ad, %2
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.e, %bb.b
  %.0 = phi i1 [ %.not15, %bb.b ], [ %i.ae, %bb.h ], [ %i.y, %bb.e ], [ %i.ab, %bb.g ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = distinct !{!11, !8}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !5, i64 0}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS14imath_half_uif", !22, i64 0}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!5, !5, i64 0}
end_hunk_0
