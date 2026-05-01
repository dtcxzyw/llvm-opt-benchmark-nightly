inline.NumInlined: 6400
inline.NumDeleted: 1723
begin_hunk_0_@_ZN11OpenImageIO4v3_1L14slope_gradientIfL_ZNS0_L11centraldiffEEEEvRKNS0_8ImageBufERKNS2_8IteratorIffEEPfS9_S9_:.peel.begin
; Function Attrs: mustprogress uwtable
define internal void @_ZN11OpenImageIO4v3_1L15normal_gradientILb1EEEvRKNS0_8ImageBufERKNS2_8IteratorIffEEPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(126) %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2, ptr noundef writeonly captures(none) initializes((0, 4)) %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4) #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1134
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L15normal_gradientILb1EEEvRKNS0_8ImageBufERKNS2_8IteratorIffEEPfS9_S9_:bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1135
  call void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 0, ptr nonnull %i.a, i64 3, i32 noundef 1)
  store float -1.000000e+00, ptr %2, align 4, !tbaa !187
  %5 = load float, ptr %i.a, align 4, !tbaa !187
  %6 = fneg float %5
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %8 = load float, ptr %7, align 4, !tbaa !187    ; 2 uses
  %9 = fdiv float %6, %8
  store float %9, ptr %3, align 4, !tbaa !187
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %11 = load float, ptr %10, align 4, !tbaa !187
  %12 = fneg float %11
  %13 = fdiv float %12, %8
  store float %13, ptr %4, align 4, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L15normal_gradientILb1EEEvRKNS0_8ImageBufERKNS2_8IteratorIffEEPfS9_S9_:bb.a
; Function Attrs: mustprogress uwtable
define internal void @_ZN11OpenImageIO4v3_1L15normal_gradientILb0EEEvRKNS0_8ImageBufERKNS2_8IteratorIffEEPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(126) %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2, ptr noundef writeonly captures(none) initializes((0, 4)) %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4) #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1134
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1135
  call void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 0, ptr nonnull %i.a, i64 3, i32 noundef 1)
  %5 = load float, ptr %i.a, align 4, !tbaa !187
  %6 = fadd float %5, -5.000000e-01
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !187
  %i.h = fadd float %i.g, -5.000000e-01
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %8 = load float, ptr %7, align 4, !tbaa !187
  %9 = fadd float %8, -5.000000e-01               ; 2 uses
  store float -1.000000e+00, ptr %2, align 4, !tbaa !187
  %10 = fneg float %6
  %11 = fdiv float %10, %9
  store float %11, ptr %3, align 4, !tbaa !187
  %12 = fneg float %i.h
  %13 = fdiv float %12, %9
  store float %13, ptr %4, align 4, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}
end_hunk_2
