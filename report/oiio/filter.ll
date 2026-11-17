Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/filter?download=true
inline.NumInlined: 371
inline.NumDeleted: 99
begin_hunk_0_@_ZNK11OpenImageIO4v3_122FilterBlackmanHarris1DclEf:bb.a
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float -1.168000e-02, float %i.n)
  br label %_ZN11OpenImageIO4v3_122FilterBlackmanHarris1D4bh1dEf.exit

_ZN11OpenImageIO4v3_122FilterBlackmanHarris1D4bh1dEf.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_122FilterBlackmanHarris1D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !268 {
bb.a:
  store ptr @.str.6, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 15, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112FilterSinc1DD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !guid !269 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_112FilterSinc1DclEf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #3 align 2 !guid !270 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !175
  %i.c = tail call float @llvm.fabs.f32(float %1) ; 3 uses
  %i.d = fcmp ogt float %i.c, %i.b
  br i1 %i.d, label %_ZN11OpenImageIO4v3_112FilterSinc1D6sinc1dEff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp olt float %i.c, f0x38D1B717
  br i1 %i.e, label %_ZN11OpenImageIO4v3_112FilterSinc1D6sinc1dEff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fmul float %i.c, f0x40490FDB             ; 2 uses
  %i.g = tail call float @llvm.sin.f32(float %i.f)
  %i.h = fdiv float %i.g, %i.f
  br label %_ZN11OpenImageIO4v3_112FilterSinc1D6sinc1dEff.exit

_ZN11OpenImageIO4v3_112FilterSinc1D6sinc1dEff.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi float [ 0.000000e+00, %bb.a ], [ %i.h, %bb.c ], [ 1.000000e+00, %bb.b ]
  ret float %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_112FilterSinc1D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !271 {
bb.a:
  store ptr @.str.7, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_117FilterLanczos3_1DD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !guid !272 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_117FilterLanczos3_1DclEf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #3 align 2 !guid !273 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !177
  %i.c = fmul float %1, %i.b                      ; 3 uses
  %i.d = tail call float @llvm.fabs.f32(float %i.c) ; 3 uses
  %i.e = fcmp ogt float %i.d, 3.000000e+00
  br i1 %i.e, label %_ZN11OpenImageIO4v3_117FilterLanczos3_1D8lanczos3Ef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp olt float %i.d, f0x38D1B717
  br i1 %i.f, label %_ZN11OpenImageIO4v3_117FilterLanczos3_1D8lanczos3Ef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = fmul float %i.d, f0x3EAAAAAB
  %i.h = fmul float %i.g, f0x40490FDB
  %i.i = tail call float @llvm.sin.f32(float %i.h) ; 4 uses
  %i.j = fmul float %i.i, -4.000000e+00
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.i, float 3.000000e+00)
  %i.l = fmul float %i.i, %i.k
  %i.m = fmul float %i.c, %i.c
  %i.n = fmul float %i.m, f0x411DE9E7
  %i.o = fdiv float 3.000000e+00, %i.n
  %i.p = fmul float %i.o, %i.i
  %i.q = fmul float %i.p, %i.l
  br label %_ZN11OpenImageIO4v3_117FilterLanczos3_1D8lanczos3Ef.exit

_ZN11OpenImageIO4v3_117FilterLanczos3_1D8lanczos3Ef.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi float [ %i.q, %bb.c ], [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ]
  ret float %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_117FilterLanczos3_1D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !274 {
bb.a:
  store ptr @.str.8, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_116FilterMitchell1DD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !guid !275 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_116FilterMitchell1DclEf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #3 align 2 !guid !276 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !179
  %i.c = fmul float %1, %i.b
  %i.d = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  br i1 %i.e, label %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fmul float %i.d, 2.000000e+00            ; 6 uses
  %i.g = fmul float %i.f, %i.f                    ; 4 uses
  %i.h = fcmp ult float %i.f, 1.000000e+00
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fmul nnan float %i.f, f0xC0155555
  %i.j = fmul nnan float %i.g, 1.200000e+01
  %i.k = tail call float @llvm.fmuladd.f32(float %i.i, float %i.g, float %i.j)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.f, float -2.000000e+01, float %i.k)
  %i.m = fadd float %i.l, f0x412AAAAB
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = fmul float %i.f, 7.000000e+00
  %i.o = fmul float %i.g, -1.200000e+01
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.g, float %i.o)
  %i.q = fadd float %i.p, f0x40AAAAAB
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in.i = phi float [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %.0.i = fmul float %.0.in.i, f0x3E2AAAAB
  br label %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit

_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit: ; preds = %bb.a, %bb.e
  %.1.i = phi float [ %.0.i, %bb.e ], [ 0.000000e+00, %bb.a ]
  ret float %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_116FilterMitchell1D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !277 {
bb.a:
  store ptr @.str.11, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_115FilterBSpline1DD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !guid !278 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_115FilterBSpline1DclEf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #3 align 2 !guid !279 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !181
  %i.c = fmul float %1, %i.b
  %i.d = tail call float @llvm.fabs.f32(float %i.c) ; 4 uses
  %i.e = fcmp ugt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fsub float 1.000000e+00, %i.d            ; 3 uses
  %i.g = fmul nnan float %i.f, 5.000000e-01
  %i.h = fsub float 1.000000e+00, %i.f
  %i.i = tail call float @llvm.fmuladd.f32(float %i.f, float %i.h, float 1.000000e+00)
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.i, float f0x3E2AAAAB)
  br label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

bb.c:                                             ; preds = %bb.a
  %i.k = fcmp olt float %i.d, 2.000000e+00
  br i1 %i.k, label %bb.d, label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

bb.d:                                             ; preds = %bb.c
  %i.l = fsub float 2.000000e+00, %i.d            ; 3 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = fmul float %i.l, %i.m
  %i.o = fdiv float %i.n, 6.000000e+00
  br label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi float [ %i.j, %bb.b ], [ %i.o, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_115FilterBSpline1D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !280 {
bb.a:
  store ptr @.str.12, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_113FilterCubic1DD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #4 align 2 !guid !281 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_113FilterCubic1DclEf(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %1) unnamed_addr #3 align 2 !guid !282 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 8, !tbaa !184
  %i.c = fmul float %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !183 ; 3 uses
  %i.f = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.000000e+00
  br i1 %i.g, label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fmul float %i.f, 2.000000e+00            ; 7 uses
  %i.i = fcmp ult float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fadd nnan float %i.h, -5.000000e+00
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.j, float 8.000000e+00)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.k, float -4.000000e+00)
  %i.m = fmul float %i.e, %i.l
  br label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit

bb.d:                                             ; preds = %bb.b
  %i.n = fmul float %i.h, %i.h
  %i.o = fadd float %i.e, 2.000000e+00
  %i.p = fadd float %i.e, 3.000000e+00
  %i.q = fneg float %i.p
  %i.r = tail call float @llvm.fmuladd.f32(float %i.o, float %i.h, float %i.q)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.n, float %i.r, float 1.000000e+00)
  br label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit

_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi float [ %i.s, %bb.d ], [ %i.m, %bb.c ], [ 0.000000e+00, %bb.a ]
  ret float %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_113FilterCubic1D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(20) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !283 {
bb.a:
  store ptr @.str.14, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112FilterKeys1DD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !guid !284 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_112FilterKeys1D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !285 {
bb.a:
  store ptr @.str.15, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_113FilterSimon1DD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !guid !286 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_113FilterSimon1D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !287 {
bb.a:
  store ptr @.str.16, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_18Filter1DD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #4 align 2 !guid !288 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_114FilterRifman1DD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !guid !289 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_114FilterRifman1D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !290 {
bb.a:
  store ptr @.str.17, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_111FilterBox2DD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !guid !291 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_111FilterBox2D9separableEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !guid !292 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_111FilterBox2DclEff(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2) unnamed_addr #4 align 2 !guid !293 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !189
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = fcmp ugt float %i.a, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call float @llvm.fabs.f32(float %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !190
  %i.i = fmul float %i.h, 5.000000e-01
  %i.j = fcmp ole float %i.f, %i.i
  %i.k = select i1 %i.j, float 1.000000e+00, float 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi float [ 0.000000e+00, %bb.a ], [ %i.k, %bb.b ]
  ret float %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_111FilterBox2D5xfiltEf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #4 align 2 !guid !294 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !189
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = fcmp ole float %i.a, %i.d
  %i.f = select i1 %i.e, float 1.000000e+00, float 0.000000e+00
  ret float %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_111FilterBox2D5yfiltEf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #4 align 2 !guid !295 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !190
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = fcmp ole float %i.a, %i.d
  %i.f = select i1 %i.e, float 1.000000e+00, float 0.000000e+00
  ret float %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_111FilterBox2D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !296 {
bb.a:
  store ptr @.str, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK11OpenImageIO4v3_18Filter2D9separableEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !guid !297 {
bb.a:
  ret i1 false
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_116FilterMitchell2DclEff:bb.a
  %i.c = fmul float %1, %i.b
  %i.d = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  br i1 %i.e, label %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fmul float %i.d, 2.000000e+00            ; 6 uses
  %i.g = fmul float %i.f, %i.f                    ; 4 uses
  %i.h = fcmp ult float %i.f, 1.000000e+00
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fmul nnan float %i.f, f0xC0155555
  %i.j = fmul nnan float %i.g, 1.200000e+01
  %i.k = tail call float @llvm.fmuladd.f32(float %i.i, float %i.g, float %i.j)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.f, float -2.000000e+01, float %i.k)
  %i.m = fadd float %i.l, f0x412AAAAB
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = fmul float %i.f, 7.000000e+00
  %i.o = fmul float %i.g, -1.200000e+01
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.g, float %i.o)
  %i.q = fadd float %i.p, f0x40AAAAAB
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in.i = phi float [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %.0.i = fmul float %.0.in.i, f0x3E2AAAAB
  br label %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit

_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit: ; preds = %bb.a, %bb.e
  %.1.i = phi float [ %.0.i, %bb.e ], [ 0.000000e+00, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !217
  %i.t = fmul float %2, %i.s
  %i.u = tail call float @llvm.fabs.f32(float %i.t) ; 2 uses
  %i.v = fcmp ogt float %i.u, 1.000000e+00
  br i1 %i.v, label %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit6, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit
  %i.w = fmul float %i.u, 2.000000e+00            ; 6 uses
  %i.x = fmul float %i.w, %i.w                    ; 4 uses
  %i.y = fcmp ult float %i.w, 1.000000e+00
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = fmul nnan float %i.w, f0xC0155555
  %i.aa = fmul nnan float %i.x, 1.200000e+01
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.z, float %i.x, float %i.aa)
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.w, float -2.000000e+01, float %i.ab)
  %i.ad = fadd float %i.ac, f0x412AAAAB
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = fmul float %i.w, 7.000000e+00
  %i.af = fmul float %i.x, -1.200000e+01
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.x, float %i.af)
  %i.ah = fadd float %i.ag, f0x40AAAAAB
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.in.i3 = phi float [ %i.ad, %bb.g ], [ %i.ah, %bb.h ]
  %.0.i4 = fmul float %.0.in.i3, f0x3E2AAAAB
  br label %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit6

_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit6: ; preds = %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit, %bb.i
  %.1.i5 = phi float [ %.0.i4, %bb.i ], [ 0.000000e+00, %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit ]
  %i.ai = fmul float %.1.i, %.1.i5
  ret float %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_116FilterMitchell2D5xfiltEf(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) unnamed_addr #4 align 2 !guid !353 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 8, !tbaa !216
  %i.c = fmul float %1, %i.b
  %i.d = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  br i1 %i.e, label %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fmul float %i.d, 2.000000e+00            ; 6 uses
  %i.g = fmul float %i.f, %i.f                    ; 4 uses
  %i.h = fcmp ult float %i.f, 1.000000e+00
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fmul nnan float %i.f, f0xC0155555
  %i.j = fmul nnan float %i.g, 1.200000e+01
  %i.k = tail call float @llvm.fmuladd.f32(float %i.i, float %i.g, float %i.j)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.f, float -2.000000e+01, float %i.k)
  %i.m = fadd float %i.l, f0x412AAAAB
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = fmul float %i.f, 7.000000e+00
  %i.o = fmul float %i.g, -1.200000e+01
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.g, float %i.o)
  %i.q = fadd float %i.p, f0x40AAAAAB
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in.i = phi float [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %.0.i = fmul float %.0.in.i, f0x3E2AAAAB
  br label %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit

_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit: ; preds = %bb.a, %bb.e
  %.1.i = phi float [ %.0.i, %bb.e ], [ 0.000000e+00, %bb.a ]
  ret float %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_116FilterMitchell2D5yfiltEf(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) unnamed_addr #4 align 2 !guid !354 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load float, ptr %i.a, align 4, !tbaa !217
  %i.c = fmul float %1, %i.b
  %i.d = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  br i1 %i.e, label %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fmul float %i.d, 2.000000e+00            ; 6 uses
  %i.g = fmul float %i.f, %i.f                    ; 4 uses
  %i.h = fcmp ult float %i.f, 1.000000e+00
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fmul nnan float %i.f, f0xC0155555
  %i.j = fmul nnan float %i.g, 1.200000e+01
  %i.k = tail call float @llvm.fmuladd.f32(float %i.i, float %i.g, float %i.j)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.f, float -2.000000e+01, float %i.k)
  %i.m = fadd float %i.l, f0x412AAAAB
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = fmul float %i.f, 7.000000e+00
  %i.o = fmul float %i.g, -1.200000e+01
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.g, float %i.o)
  %i.q = fadd float %i.p, f0x40AAAAAB
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in.i = phi float [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %.0.i = fmul float %.0.in.i, f0x3E2AAAAB
  br label %_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit

_ZN11OpenImageIO4v3_116FilterMitchell1D10mitchell1dEf.exit: ; preds = %bb.a, %bb.e
  %.1.i = phi float [ %.0.i, %bb.e ], [ 0.000000e+00, %bb.a ]
  ret float %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_116FilterMitchell2D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !355 {
bb.a:
  store ptr @.str.11, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_115FilterBSpline2DD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !guid !356 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_115FilterBSpline2D9separableEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !guid !357 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_115FilterBSpline2DclEff(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1, float noundef %2) unnamed_addr #3 align 2 !guid !358 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 8, !tbaa !219
  %i.c = fmul float %1, %i.b
  %i.d = tail call float @llvm.fabs.f32(float %i.c) ; 4 uses
  %i.e = fcmp ugt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fsub float 1.000000e+00, %i.d            ; 3 uses
  %i.g = fmul nnan float %i.f, 5.000000e-01
  %i.h = fsub float 1.000000e+00, %i.f
  %i.i = tail call float @llvm.fmuladd.f32(float %i.f, float %i.h, float 1.000000e+00)
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.i, float f0x3E2AAAAB)
  br label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

bb.c:                                             ; preds = %bb.a
  %i.k = fcmp olt float %i.d, 2.000000e+00
  br i1 %i.k, label %bb.d, label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

bb.d:                                             ; preds = %bb.c
  %i.l = fsub float 2.000000e+00, %i.d            ; 3 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = fmul float %i.l, %i.m
  %i.o = fdiv float %i.n, 6.000000e+00
  br label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi float [ %i.j, %bb.b ], [ %i.o, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !220
  %i.r = fmul float %2, %i.q
  %i.s = tail call float @llvm.fabs.f32(float %i.r) ; 4 uses
  %i.t = fcmp ugt float %i.s, 1.000000e+00
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit
  %i.u = fsub float 1.000000e+00, %i.s            ; 3 uses
  %i.v = fmul nnan float %i.u, 5.000000e-01
  %i.w = fsub float 1.000000e+00, %i.u
  %i.x = tail call float @llvm.fmuladd.f32(float %i.u, float %i.w, float 1.000000e+00)
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.x, float f0x3E2AAAAB)
  br label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit4

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit
  %i.z = fcmp olt float %i.s, 2.000000e+00
  br i1 %i.z, label %bb.g, label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit4

bb.g:                                             ; preds = %bb.f
  %i.aa = fsub float 2.000000e+00, %i.s           ; 3 uses
  %i.ab = fmul float %i.aa, %i.aa
  %i.ac = fmul float %i.aa, %i.ab
  %i.ad = fdiv float %i.ac, 6.000000e+00
  br label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit4

_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit4: ; preds = %bb.e, %bb.f, %bb.g
  %.0.i3 = phi float [ %i.y, %bb.e ], [ %i.ad, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.ae = fmul float %.0.i, %.0.i3
  ret float %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_115FilterBSpline2D5xfiltEf(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) unnamed_addr #3 align 2 !guid !359 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 8, !tbaa !219
  %i.c = fmul float %1, %i.b
  %i.d = tail call float @llvm.fabs.f32(float %i.c) ; 4 uses
  %i.e = fcmp ugt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fsub float 1.000000e+00, %i.d            ; 3 uses
  %i.g = fmul nnan float %i.f, 5.000000e-01
  %i.h = fsub float 1.000000e+00, %i.f
  %i.i = tail call float @llvm.fmuladd.f32(float %i.f, float %i.h, float 1.000000e+00)
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.i, float f0x3E2AAAAB)
  br label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

bb.c:                                             ; preds = %bb.a
  %i.k = fcmp olt float %i.d, 2.000000e+00
  br i1 %i.k, label %bb.d, label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

bb.d:                                             ; preds = %bb.c
  %i.l = fsub float 2.000000e+00, %i.d            ; 3 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = fmul float %i.l, %i.m
  %i.o = fdiv float %i.n, 6.000000e+00
  br label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi float [ %i.j, %bb.b ], [ %i.o, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_115FilterBSpline2D5yfiltEf(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) unnamed_addr #3 align 2 !guid !360 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load float, ptr %i.a, align 4, !tbaa !220
  %i.c = fmul float %1, %i.b
  %i.d = tail call float @llvm.fabs.f32(float %i.c) ; 4 uses
  %i.e = fcmp ugt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fsub float 1.000000e+00, %i.d            ; 3 uses
  %i.g = fmul nnan float %i.f, 5.000000e-01
  %i.h = fsub float 1.000000e+00, %i.f
  %i.i = tail call float @llvm.fmuladd.f32(float %i.f, float %i.h, float 1.000000e+00)
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.i, float f0x3E2AAAAB)
  br label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

bb.c:                                             ; preds = %bb.a
  %i.k = fcmp olt float %i.d, 2.000000e+00
  br i1 %i.k, label %bb.d, label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

bb.d:                                             ; preds = %bb.c
  %i.l = fsub float 2.000000e+00, %i.d            ; 3 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = fmul float %i.l, %i.m
  %i.o = fdiv float %i.n, 6.000000e+00
  br label %_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit

_ZN11OpenImageIO4v3_115FilterBSpline1D9bspline1dEf.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi float [ %i.j, %bb.b ], [ %i.o, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_115FilterBSpline2D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !361 {
bb.a:
  store ptr @.str.12, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112FilterDisk2DD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !guid !362 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_112FilterDisk2DclEff(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2) unnamed_addr #4 align 2 !guid !363 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x float>, ptr %i.a, align 8, !tbaa !143
  %i.c = fmul <2 x float> %i.b, splat (float 5.000000e-01)
  %i.d = insertelement <2 x float> poison, float %1, i64 0
  %i.e = insertelement <2 x float> %i.d, float %2, i64 1
  %i.f = fdiv <2 x float> %i.e, %i.c              ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.f, %i.f
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.h = extractelement <2 x float> %i.f, i64 0   ; 2 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.g)
  %i.j = fcmp olt float %i.i, 1.000000e+00
  %i.k = select i1 %i.j, float 1.000000e+00, float 0.000000e+00
  ret float %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_112FilterDisk2D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !364 {
bb.a:
  store ptr @.str.20, ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_113FilterCubic2DD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #4 align 2 !guid !365 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_113FilterCubic2D9separableEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #4 align 2 !guid !366 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_113FilterCubic2DclEff(ptr noundef nonnull align 8 dereferenceable(28) %0, float noundef %1, float noundef %2) unnamed_addr #4 align 2 !guid !367 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load float, ptr %i.a, align 4, !tbaa !221
  %i.c = fmul float %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load float, ptr %i.d, align 8, !tbaa !192 ; 6 uses
  %i.f = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.000000e+00
  br i1 %i.g, label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fmul float %i.f, 2.000000e+00            ; 7 uses
  %i.i = fcmp ult float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fadd nnan float %i.h, -5.000000e+00
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.j, float 8.000000e+00)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.k, float -4.000000e+00)
  %i.m = fmul float %i.e, %i.l
  br label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit

bb.d:                                             ; preds = %bb.b
  %i.n = fmul float %i.h, %i.h
  %i.o = fadd float %i.e, 2.000000e+00
  %i.p = fadd float %i.e, 3.000000e+00
  %i.q = fneg float %i.p
  %i.r = tail call float @llvm.fmuladd.f32(float %i.o, float %i.h, float %i.q)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.n, float %i.r, float 1.000000e+00)
  br label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit

_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi float [ %i.s, %bb.d ], [ %i.m, %bb.c ], [ 0.000000e+00, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load float, ptr %i.t, align 8, !tbaa !222
  %i.v = fmul float %2, %i.u
  %i.w = tail call float @llvm.fabs.f32(float %i.v) ; 2 uses
  %i.x = fcmp ogt float %i.w, 1.000000e+00
  br i1 %i.x, label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit4, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit
  %i.y = fmul float %i.w, 2.000000e+00            ; 7 uses
  %i.z = fcmp ult float %i.y, 1.000000e+00
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = fadd nnan float %i.y, -5.000000e+00
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.y, float %i.aa, float 8.000000e+00)
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ab, float -4.000000e+00)
  %i.ad = fmul float %i.e, %i.ac
  br label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit4

bb.g:                                             ; preds = %bb.e
  %i.ae = fmul float %i.y, %i.y
  %i.af = fadd float %i.e, 2.000000e+00
  %i.ag = fadd float %i.e, 3.000000e+00
  %i.ah = fneg float %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.af, float %i.y, float %i.ah)
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ai, float 1.000000e+00)
  br label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit4

_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit4: ; preds = %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit, %bb.f, %bb.g
  %.0.i3 = phi float [ %i.aj, %bb.g ], [ %i.ad, %bb.f ], [ 0.000000e+00, %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit ]
  %i.ak = fmul float %.0.i, %.0.i3
  ret float %i.ak
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_113FilterCubic2D5xfiltEf(ptr noundef nonnull align 8 dereferenceable(28) %0, float noundef %1) unnamed_addr #4 align 2 !guid !368 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load float, ptr %i.a, align 4, !tbaa !221
  %i.c = fmul float %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load float, ptr %i.d, align 8, !tbaa !192 ; 3 uses
  %i.f = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.000000e+00
  br i1 %i.g, label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fmul float %i.f, 2.000000e+00            ; 7 uses
  %i.i = fcmp ult float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fadd nnan float %i.h, -5.000000e+00
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.j, float 8.000000e+00)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.k, float -4.000000e+00)
  %i.m = fmul float %i.e, %i.l
  br label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit

bb.d:                                             ; preds = %bb.b
  %i.n = fmul float %i.h, %i.h
  %i.o = fadd float %i.e, 2.000000e+00
  %i.p = fadd float %i.e, 3.000000e+00
  %i.q = fneg float %i.p
  %i.r = tail call float @llvm.fmuladd.f32(float %i.o, float %i.h, float %i.q)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.n, float %i.r, float 1.000000e+00)
  br label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit

_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi float [ %i.s, %bb.d ], [ %i.m, %bb.c ], [ 0.000000e+00, %bb.a ]
  ret float %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_113FilterCubic2D5yfiltEf(ptr noundef nonnull align 8 dereferenceable(28) %0, float noundef %1) unnamed_addr #4 align 2 !guid !369 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !222
  %i.c = fmul float %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load float, ptr %i.d, align 8, !tbaa !192 ; 3 uses
  %i.f = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.000000e+00
  br i1 %i.g, label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fmul float %i.f, 2.000000e+00            ; 7 uses
  %i.i = fcmp ult float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fadd nnan float %i.h, -5.000000e+00
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.j, float 8.000000e+00)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.k, float -4.000000e+00)
  %i.m = fmul float %i.e, %i.l
  br label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit

bb.d:                                             ; preds = %bb.b
  %i.n = fmul float %i.h, %i.h
  %i.o = fadd float %i.e, 2.000000e+00
  %i.p = fadd float %i.e, 3.000000e+00
end_hunk_1
