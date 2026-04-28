inline.NumInlined: 5153
inline.NumDeleted: 1482
begin_hunk_0_@_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf:_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN11OpenImageIO4v3_124compute_ellipse_samplingEffffRfS1_S1_PfS2_bf(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9, float noundef %10) local_unnamed_addr #24 {
bb.a:
  %sincos.i = tail call { float, float } @llvm.sincos.f32(float %1) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  store float %sin.i, ptr %5, align 4, !tbaa !26
  %i.a = fsub float %2, %3
  %i.b = fmul float %i.a, 2.000000e+00            ; 3 uses
  %i.c = fmul float %cos.i, %i.b
  store float %i.c, ptr %4, align 4, !tbaa !26
  %i.d = load float, ptr %5, align 4, !tbaa !26
  %i.e = fmul float %i.b, %i.d
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffff:bb.a
bb.z:                                             ; preds = %bb.y
  %i.hl = load float, ptr %i.d, align 4, !tbaa !26
  %i.hm = fmul float %i.hl, 1.000000e+02          ; 2 uses
  %i.hn = load float, ptr %i.f, align 4, !tbaa !26
  %sincos = call { float, float } @llvm.sincos.f32(float %i.hn) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.ho = fmul float %i.hm, %cos
  %i.hp = fptosi float %i.ho to i32
  %i.hq = add nsw i32 %i.hp, 128
  %i.hr = fmul float %i.hm, %sin
  %i.hs = fptosi float %i.hr to i32
  %i.ht = sub nsw i32 128, %i.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #3
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffff:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #3
  %i.hy = load float, ptr %i.e, align 4, !tbaa !26
  %i.hz = fmul float %i.hy, 1.000000e+02          ; 2 uses
  %i.ia = load float, ptr %i.f, align 4, !tbaa !26
  %sincos117 = call { float, float } @llvm.sincos.f32(float %i.ia) ; 2 uses
  %sin118 = extractvalue { float, float } %sincos117, 0
  %cos119 = extractvalue { float, float } %sincos117, 1
  %i.ib = fneg float %sin118
  %i.ic = fmul float %i.hz, %i.ib
  %i.id = fptosi float %i.ic to i32
  %i.ie = add nsw i32 %i.id, 128
  %i.if = fmul float %i.hz, %cos119
  %i.ig = fptosi float %i.if to i32
  %i.ih = sub nsw i32 128, %i.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #3
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_112ImageBufAlgo4fillERNS0_8ImageBufENS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span.195") align 8, i1 noundef zeroext, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo10render_boxERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span.195") align 8, i1 noundef zeroext, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf5writeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescES5_PFbPvfES7_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, i64, ptr noundef dead_on_return, ptr noundef, ptr noundef) local_unnamed_addr #9
end_hunk_3
begin_hunk_4_@llvm.threadlocal.address.p0
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

end_hunk_4
