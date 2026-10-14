Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfAcesFile?download=true
inline.NumInlined: 91
inline.NumDeleted: 25
begin_hunk_0_@_ZN7Imf_3_414AcesOutputFile14setFrameBufferEPKNS_4RgbaEmm:bb.a
}

declare void @_ZN7Imf_3_414RgbaOutputFile14setFrameBufferEPKNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414AcesOutputFile11writePixelsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  tail call void @_ZN7Imf_3_414RgbaOutputFile11writePixelsEi(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %1)
  ret void
}

declare void @_ZN7Imf_3_414RgbaOutputFile11writePixelsEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7Imf_3_414AcesOutputFile15currentScanLineEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call noundef i32 @_ZNK7Imf_3_414RgbaOutputFile15currentScanLineEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret i32 %i.d
}

declare noundef i32 @_ZNK7Imf_3_414RgbaOutputFile15currentScanLineEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414AcesOutputFile6headerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414RgbaOutputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret ptr %i.d
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414RgbaOutputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_414AcesOutputFile13displayWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_414RgbaOutputFile13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret ptr %i.d
}

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_414RgbaOutputFile13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_414AcesOutputFile10dataWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_414RgbaOutputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret ptr %i.d
}

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_414RgbaOutputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK7Imf_3_414AcesOutputFile16pixelAspectRatioEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call noundef float @_ZNK7Imf_3_414RgbaOutputFile16pixelAspectRatioEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret float %i.d
}

declare noundef float @_ZNK7Imf_3_414RgbaOutputFile16pixelAspectRatioEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK7Imf_3_414AcesOutputFile18screenWindowCenterEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Vec2") align 4 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  tail call void @_ZNK7Imf_3_414RgbaOutputFile18screenWindowCenterEv(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2") align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void
}

declare void @_ZNK7Imf_3_414RgbaOutputFile18screenWindowCenterEv(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2") align 4, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK7Imf_3_414AcesOutputFile17screenWindowWidthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call noundef float @_ZNK7Imf_3_414RgbaOutputFile17screenWindowWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret float %i.d
}

declare noundef float @_ZNK7Imf_3_414RgbaOutputFile17screenWindowWidthEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7Imf_3_414AcesOutputFile9lineOrderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call noundef i32 @_ZNK7Imf_3_414RgbaOutputFile9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret i32 %i.d
}

declare noundef i32 @_ZNK7Imf_3_414RgbaOutputFile9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7Imf_3_414AcesOutputFile11compressionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call noundef i32 @_ZNK7Imf_3_414RgbaOutputFile11compressionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret i32 %i.d
}

declare noundef i32 @_ZNK7Imf_3_414RgbaOutputFile11compressionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7Imf_3_414AcesOutputFile8channelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call noundef i32 @_ZNK7Imf_3_414RgbaOutputFile8channelsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret i32 %i.d
}

declare noundef i32 @_ZNK7Imf_3_414RgbaOutputFile8channelsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414AcesOutputFile18updatePreviewImageEPKNS_11PreviewRgbaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  tail call void @_ZN7Imf_3_414RgbaOutputFile18updatePreviewImageEPKNS_11PreviewRgbaE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef %1)
  ret void
}

declare void @_ZN7Imf_3_414RgbaOutputFile18updatePreviewImageEPKNS_11PreviewRgbaE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7Imf_3_413AcesInputFile4DataC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(108) initializes((0, 41), (44, 108)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %0, i8 0, i64 41, i1 false)
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.c, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7Imf_3_413AcesInputFile4DataD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(108) dereferenceable(108) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_413AcesInputFile4Data19initColorConversionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(108) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Imath_3_2::Vec2", align 8   ; 5 uses
  %2 = alloca %"class.Imath_3_2::Vec2", align 8   ; 5 uses
  %3 = alloca %"class.Imath_3_2::Vec2", align 8   ; 5 uses
  %4 = alloca %"class.Imath_3_2::Vec2", align 8   ; 5 uses
  %5 = alloca %"struct.Imf_3_4::Chromaticities", align 16 ; 16 uses
  %6 = alloca %"class.Imath_3_2::Vec2", align 8   ; 4 uses
  %7 = alloca %"class.Imath_3_2::Vec2", align 8   ; 4 uses
  %8 = alloca %"class.Imath_3_2::Vec2", align 8   ; 4 uses
  %9 = alloca %"class.Imath_3_2::Vec2", align 8   ; 4 uses
  %10 = alloca %"struct.Imf_3_4::Chromaticities", align 16 ; 7 uses
  %11 = alloca %"class.Imath_3_2::Matrix44", align 16 ; 19 uses
  %12 = alloca %"class.Imath_3_2::Matrix44", align 16 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_413RgbaInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store <2 x float> <float 6.400000e-01, float 3.300000e-01>, ptr %6, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store <2 x float> <float 3.000000e-01, float 6.000000e-01>, ptr %7, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %8, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  store <2 x float> <float 3.127000e-01, float 3.290000e-01>, ptr %9, align 8, !tbaa !10
  call void @_ZN7Imf_3_414ChromaticitiesC1ERKN9Imath_3_24Vec2IfEES5_S5_S5_(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.c = call noundef zeroext i1 @_ZN7Imf_3_417hasChromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !48
  %.phi.trans.insert102 = getelementptr inbounds nuw i8, ptr %5, i64 28
  %.pre103 = load float, ptr %.phi.trans.insert102, align 4, !tbaa !49
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN7Imf_3_414chromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.b) ; 2 uses
  %i.e = load <4 x float>, ptr %i.d, align 4, !tbaa !10
  store <4 x float> %i.e, ptr %5, align 16, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load <4 x float>, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  store <4 x float> %i.h, ptr %i.f, align 16, !tbaa !10
  %i.i = extractelement <4 x float> %i.h, i64 2
  %i.j = extractelement <4 x float> %i.h, i64 3
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi float [ %.pre103, %._crit_edge ], [ %i.j, %bb.b ]
  %i.l = phi float [ %.pre, %._crit_edge ], [ %i.i, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.o = call noundef zeroext i1 @_ZN7Imf_3_417hasAdoptedNeutralERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN7Imf_3_414adoptedNeutralERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !10 ; 3 uses
  store <2 x float> %i.q, ptr %i.m, align 8, !tbaa !10
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = extractelement <2 x float> %i.q, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.098.0 = phi float [ %i.r, %bb.d ], [ %i.l, %bb.c ]
  %.sroa.6100.0 = phi float [ %i.s, %bb.d ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.t = load atomic i8, ptr @_ZGVZN7Imf_3_418acesChromaticitiesEvE7acesChr acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZN7Imf_3_418acesChromaticitiesEv.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7Imf_3_418acesChromaticitiesEvE7acesChr) #12
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_ZN7Imf_3_418acesChromaticitiesEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store <2 x float> <float 7.347000e-01, float 2.653000e-01>, ptr %1, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %2, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store <2 x float> <float f0x38D1B717, float -7.700000e-02>, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store <2 x float> <float 3.216800e-01, float 3.376700e-01>, ptr %4, align 8, !tbaa !10
  invoke void @_ZN7Imf_3_414ChromaticitiesC1ERKN9Imath_3_24Vec2IfEES5_S5_S5_(ptr noundef nonnull align 4 dereferenceable(32) @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.w = call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7Imf_3_418acesChromaticitiesEvE7acesChr) #12
  br label %_ZN7Imf_3_418acesChromaticitiesEv.exit

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7Imf_3_418acesChromaticitiesEvE7acesChr) #12
  resume { ptr, i32 } %i.x

_ZN7Imf_3_418acesChromaticitiesEv.exit:           ; preds = %bb.e, %bb.f, %bb.h
  %i.y = load <4 x float>, ptr @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr, align 16, !tbaa !10 ; 5 uses
  store <4 x float> %i.y, ptr %10, align 16, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aa = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr, i64 16), align 16, !tbaa !10 ; 3 uses
  store <2 x float> %i.aa, ptr %i.z, align 16, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.ad = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr, i64 24), align 8, !tbaa !10 ; 3 uses
  %i.ae = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr, i64 28), align 4, !tbaa !49 ; 2 uses
  %i.af = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  store float %i.af, ptr %i.ab, align 8, !tbaa !48
  store float %i.ae, ptr %i.ac, align 4, !tbaa !49
  %i.ag = load float, ptr %5, align 16, !tbaa !48
  %i.ah = extractelement <4 x float> %i.y, i64 0
  %i.ai = fcmp oeq float %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = extractelement <4 x float> %i.y, i64 1
  %i.am = fcmp oeq float %i.ak, %i.al
  %i.an = select i1 %i.ai, i1 %i.am, i1 false
  br i1 %i.an, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN7Imf_3_418acesChromaticitiesEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !48
  %i.aq = extractelement <4 x float> %i.y, i64 2
  %i.ar = fcmp oeq float %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.at = load float, ptr %i.as, align 4
  %i.au = extractelement <4 x float> %i.y, i64 3
  %i.av = fcmp oeq float %i.at, %i.au
  %i.aw = select i1 %i.ar, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = load float, ptr %i.ax, align 16, !tbaa !48
  %i.az = extractelement <2 x float> %i.aa, i64 0
  %i.ba = fcmp oeq float %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = extractelement <2 x float> %i.aa, i64 1
  %i.be = fcmp oeq float %i.bc, %i.bd
  %i.bf = select i1 %i.ba, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load float, ptr %i.m, align 8, !tbaa !48
  %i.bh = fcmp oeq float %i.bg, %i.af
  %i.bi = load float, ptr %i.n, align 4
  %i.bj = fcmp oeq float %i.bi, %i.ae
  %i.bk = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %_ZN7Imf_3_418acesChromaticitiesEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.bl, align 8, !tbaa !33
  %i.bm = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !34
  %i.bp = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !53
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !35
  %i.bt = insertelement <2 x float> %i.ad, float %.sroa.098.0, i64 1 ; 2 uses
  %i.bu = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bv = insertelement <2 x float> %i.bu, float %.sroa.6100.0, i64 1 ; 3 uses
  %i.bw = fdiv <2 x float> %i.bt, %i.bv           ; 4 uses
  %i.bx = fsub <2 x float> splat (float 1.000000e+00), %i.bt
  %i.by = fsub <2 x float> %i.bx, %i.bv
  %i.bz = fdiv <2 x float> %i.by, %i.bv           ; 4 uses
  %i.ca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> zeroinitializer, <2 x float> zeroinitializer)
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> zeroinitializer, <2 x float> %i.ca)
  %i.cc = fadd <2 x float> %i.cb, splat (float 1.000000e+00) ; 3 uses
  %i.cd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> splat (float 3.890000e-02), <2 x float> splat (float -6.850000e-02))
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> splat (float 1.029600e+00), <2 x float> %i.cd)
  %i.cf = fadd <2 x float> %i.ce, zeroinitializer
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> splat (float f0x3F652546), <2 x float> splat (float 2.664000e-01))
  %i.ch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> splat (float -1.614000e-01), <2 x float> %i.cg)
  %i.ci = fadd <2 x float> %i.ch, zeroinitializer
  %i.cj = fdiv <2 x float> %i.ci, %i.cc           ; 2 uses
  %i.ck = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> splat (float f0xBF400D1B), <2 x float> splat (float 1.713500e+00))
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> splat (float 3.670000e-02), <2 x float> %i.ck)
  %i.cm = fadd <2 x float> %i.cl, zeroinitializer
  %i.cn = fdiv <2 x float> %i.cm, %i.cc           ; 2 uses
  %i.co = fdiv <2 x float> %i.cf, %i.cc           ; 2 uses
  %i.cp = extractelement <2 x float> %i.cj, i64 0
  %i.cq = extractelement <2 x float> %i.cj, i64 1
  %i.cr = fdiv float %i.cp, %i.cq                 ; 3 uses
  %i.cs = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 0, i32 2>
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 1, i32 3>
  %i.cu = fdiv <2 x float> %i.cs, %i.ct           ; 5 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 1
  %i.cw = extractelement <2 x float> %i.cu, i64 0
  %i.cx = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x float> %i.cx, float %i.cr, i64 1
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.da = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> <float 3.890000e-02, float 2.664000e-01, float -6.850000e-02, float -1.614000e-01>, <4 x float> zeroinitializer) ; 2 uses
  %i.db = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.dc = insertelement <4 x float> %i.db, float %i.cr, i64 0
  %i.dd = fmul <4 x float> %i.dc, <float f0x3F652546, float f0x3F400D1B, float 1.713500e+00, float 3.670000e-02> ; 3 uses
  %i.de = extractelement <4 x float> %i.dd, i64 1
  %i.df = fsub float 0.000000e+00, %i.de
  %i.dg = shufflevector <4 x float> %i.dd, <4 x float> %i.da, <4 x i32> <i32 0, i32 2, i32 4, i32 5>
  %i.dh = fadd <4 x float> %i.dg, zeroinitializer ; 4 uses
  %i.di = call float @llvm.fmuladd.f32(float %i.cv, float 1.029600e+00, float 0.000000e+00)
  %i.dj = shufflevector <4 x float> %i.da, <4 x float> %i.dd, <4 x i32> <i32 2, i32 3, i32 7, i32 poison>
  %i.dk = insertelement <4 x float> %i.dj, float %i.di, i64 3
  %i.dl = fadd <4 x float> %i.dk, zeroinitializer ; 4 uses
  %i.dm = fmul float %i.cw, 0.000000e+00
  %i.dn = insertelement <2 x float> %i.cu, float %i.cr, i64 0
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> zeroinitializer, <2 x float> zeroinitializer)
  %i.dp = fadd <2 x float> %i.do, zeroinitializer ; 2 uses
  %i.dq = call float @llvm.fabs.f32(float %i.dm)  ; 2 uses
  %i.dr = fneg float %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @_ZN7Imf_3_48RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Matrix44") align 4 %11, ptr noundef nonnull align 4 dereferenceable(32) %5, float noundef 1.000000e+00)
  %13 = load <4 x float>, ptr %11, align 16
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 4
  %14 = load <4 x float>, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %15 = load <4 x float>, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 12
  %16 = load <4 x float>, ptr %i.du, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %17 = load <4 x float>, ptr %i.dv, align 16
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 20
  %18 = load <4 x float>, ptr %i.dw, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %19 = load <4 x float>, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 28
  %20 = load <4 x float>, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 32
  %21 = load <4 x float>, ptr %i.dz, align 16
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 36
  %22 = load <4 x float>, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 40
  %23 = load <4 x float>, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 44
  %24 = load <4 x float>, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 48
  %25 = load <4 x float>, ptr %i.ed, align 16
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !10, !noalias !54
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !10, !noalias !54
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !10, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @_ZN7Imf_3_48XYZtoRGBERKNS_14ChromaticitiesEf(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Matrix44") align 4 %12, ptr noundef nonnull align 4 dereferenceable(32) %10, float noundef 1.000000e+00)
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.eo = insertelement <4 x float> poison, float %i.df, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = fmul <4 x float> %i.ep, <float 0.000000e+00, float 4.004300e-02, float -1.470540e-01, float 5.183600e-01>
  %i.er = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> <float 0.000000e+00, float -8.529000e-03, float 9.869930e-01, float 4.323050e-01>, <4 x float> %i.eq)
  %i.et = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.eu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> <float 0.000000e+00, float 9.684870e-01, float 1.599630e-01, float 4.929100e-02>, <4 x float> %i.es)
  %i.ev = fadd <4 x float> %i.eu, zeroinitializer ; 4 uses
  %i.ew = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ex = fmul <4 x float> %i.ew, <float 0.000000e+00, float 4.004300e-02, float -1.470540e-01, float 5.183600e-01>
  %i.ey = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> <float 0.000000e+00, float -8.529000e-03, float 9.869930e-01, float 4.323050e-01>, <4 x float> %i.ex)
  %i.fa = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> <float 0.000000e+00, float 9.684870e-01, float 1.599630e-01, float 4.929100e-02>, <4 x float> %i.ez)
  %i.fc = fadd <4 x float> %i.fb, zeroinitializer ; 4 uses
  %i.fd = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fe = fmul <4 x float> %i.fd, <float 0.000000e+00, float 4.004300e-02, float -1.470540e-01, float 5.183600e-01>
  %i.ff = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> <float 0.000000e+00, float -8.529000e-03, float 9.869930e-01, float 4.323050e-01>, <4 x float> %i.fe)
  %i.fh = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> <float 0.000000e+00, float 9.684870e-01, float 1.599630e-01, float 4.929100e-02>, <4 x float> %i.fg)
  %i.fj = fadd <4 x float> %i.fi, zeroinitializer ; 4 uses
  %i.fk = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fl = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.fm = insertelement <4 x float> %i.fl, float %i.dr, i64 1
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> <float 0.000000e+00, float -8.529000e-03, float 9.869930e-01, float 4.323050e-01>, <4 x float> %i.fn)
  %i.fp = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> <float 0.000000e+00, float 9.684870e-01, float 1.599630e-01, float 4.929100e-02>, <4 x float> %i.fo)
  %i.fr = fadd <4 x float> %i.fq, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 4 uses
  %i.fs = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = fmul <4 x float> %i.fc, %i.fs
  %i.fu = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fu, <4 x float> %i.ev, <4 x float> %i.ft)
  %i.fw = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.fj, <4 x float> %i.fv)
  %i.fy = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.fr, <4 x float> %i.fx) ; 4 uses
  %i.ga = load <4 x float>, ptr %12, align 16, !tbaa !10, !noalias !55 ; 4 uses
  %i.gb = load <4 x float>, ptr %i.ek, align 16, !tbaa !10, !noalias !55 ; 4 uses
  %i.gc = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gd = fmul <4 x float> %i.gc, %i.gb
  %i.ge = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ge, <4 x float> %i.ga, <4 x float> %i.gd)
  %i.gg = load <4 x float>, ptr %i.el, align 16, !tbaa !10, !noalias !55 ; 4 uses
  %i.gh = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gh, <4 x float> %i.gg, <4 x float> %i.gf)
  %i.gj = load <4 x float>, ptr %i.em, align 16, !tbaa !10, !noalias !55 ; 4 uses
  %i.gk = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.gj, <4 x float> %i.gi)
  store <4 x float> %i.gl, ptr %i.en, align 4, !tbaa !10
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.gn = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer
  %i.go = fmul <4 x float> %i.fc, %i.gn
  %i.gp = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %i.ev, <4 x float> %i.go)
  %i.gr = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> %i.fj, <4 x float> %i.gq)
  %i.gt = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> %i.fr, <4 x float> %i.gs) ; 4 uses
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gw = fmul <4 x float> %i.gv, %i.gb
  %i.gx = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %i.ga, <4 x float> %i.gw)
  %i.gz = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.gg, <4 x float> %i.gy)
  %i.hb = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> %i.gj, <4 x float> %i.ha)
  store <4 x float> %i.hc, ptr %i.gm, align 4, !tbaa !10
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.he = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hf = fmul <4 x float> %i.fc, %i.he
  %i.hg = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %i.ev, <4 x float> %i.hf)
  %i.hi = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> %i.fj, <4 x float> %i.hh)
  %i.hk = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hk, <4 x float> %i.fr, <4 x float> %i.hj) ; 4 uses
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hn = fmul <4 x float> %i.hm, %i.gb
  %i.ho = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.ga, <4 x float> %i.hn)
  %i.hq = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hq, <4 x float> %i.gg, <4 x float> %i.hp)
  %i.hs = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ht = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hs, <4 x float> %i.gj, <4 x float> %i.hr)
  store <4 x float> %i.ht, ptr %i.hd, align 4, !tbaa !10
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.hv = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hx = fmul <4 x float> %i.fc, %i.hw
  %i.hy = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hy, <4 x float> %i.ev, <4 x float> %i.hx)
  %i.ia = insertelement <4 x float> poison, float %i.eh, i64 0
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ic = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %i.fj, <4 x float> %i.hz)
  %i.id = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> zeroinitializer
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.fr, <4 x float> %i.ic) ; 4 uses
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ih = fmul <4 x float> %i.ig, %i.gb
  %i.ii = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ij = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ii, <4 x float> %i.ga, <4 x float> %i.ih)
  %i.ik = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.il = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ik, <4 x float> %i.gg, <4 x float> %i.ij)
  %i.im = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> zeroinitializer
  %i.in = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> %i.gj, <4 x float> %i.il)
  store <4 x float> %i.in, ptr %i.hu, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_413RgbaInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN7Imf_3_417hasChromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(32) ptr @_ZN7Imf_3_414chromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN7Imf_3_417hasAdoptedNeutralERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(8) ptr @_ZN7Imf_3_414adoptedNeutralERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare void @_ZN7Imf_3_48RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Matrix44") align 4, ptr noundef nonnull align 4 dereferenceable(32), float noundef) local_unnamed_addr #3

declare void @_ZN7Imf_3_48XYZtoRGBERKNS_14ChromaticitiesEf(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Matrix44") align 4, ptr noundef nonnull align 4 dereferenceable(32), float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_413AcesInputFileC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7Imf_3_413AcesInputFileE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #13 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.b, i8 0, i64 41, i1 false)
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !10
  store ptr %i.b, ptr %i.a, align 8, !tbaa !38
  %i.j = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13 ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !26
  invoke void @_ZN7Imf_3_413RgbaInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %i.k, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !32
  tail call void @_ZN7Imf_3_413AcesInputFile4Data19initColorConversionEv(ptr noundef nonnull align 8 dereferenceable(108) %i.l)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 64) #15
  resume { ptr, i32 } %i.m
}

declare void @_ZN7Imf_3_413RgbaInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_413AcesInputFileC2ERNS_7IStreamEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7Imf_3_413AcesInputFileE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #13 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.b, i8 0, i64 41, i1 false)
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !10
  store ptr %i.b, ptr %i.a, align 8, !tbaa !38
  %i.j = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13 ; 3 uses
  invoke void @_ZN7Imf_3_413RgbaInputFileC1ERNS_7IStreamEi(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !32
  tail call void @_ZN7Imf_3_413AcesInputFile4Data19initColorConversionEv(ptr noundef nonnull align 8 dereferenceable(108) %i.k)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 64) #15
  resume { ptr, i32 } %i.l
}

declare void @_ZN7Imf_3_413RgbaInputFileC1ERNS_7IStreamEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7Imf_3_413AcesInputFileD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7Imf_3_413AcesInputFileE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN7Imf_3_413AcesInputFile4DataD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.d) #12, !inline_history !56
  br label %_ZN7Imf_3_413AcesInputFile4DataD2Ev.exit

_ZN7Imf_3_413AcesInputFile4DataD2Ev.exit:         ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 112) #15
  br label %bb.d

bb.d:                                             ; preds = %_ZN7Imf_3_413AcesInputFile4DataD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7Imf_3_413AcesInputFileD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7Imf_3_413AcesInputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_413AcesInputFile14setFrameBufferEPNS_4RgbaEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  tail call void @_ZN7Imf_3_413RgbaInputFile14setFrameBufferEPNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %3, ptr %i.g, align 8, !tbaa !41
  ret void
}

declare void @_ZN7Imf_3_413RgbaInputFile14setFrameBufferEPNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_413AcesInputFile10readPixelsEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  tail call void @_ZN7Imf_3_413RgbaInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef %1, i32 noundef %2)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !38   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !33, !range !61, !noundef !62
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.loopexit.split

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
end_hunk_0
