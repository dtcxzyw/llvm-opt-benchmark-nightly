inline.NumInlined: 5129
inline.NumDeleted: 1476
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffff:bb.a
  %i.iw = fmul float %i.iv, 1.000000e+02
  %i.ix = fptosi float %i.iw to i32               ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.m, ptr %19, align 8, !tbaa !594
  %i.iz = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 3, ptr %i.iz, align 8, !tbaa !596
  store i32 -2147483648, ptr %20, align 8, !tbaa !337
  %i.ja = getelementptr inbounds nuw i8, ptr %20, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ja, i8 0, i64 28, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %22, i64 4
  %wide.trip.count181 = zext nneg i32 %i.fo to i64
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffff:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #3
  store <2 x float> splat (float 6.500000e-01), ptr %i.m, align 8, !tbaa !26
  store float 6.500000e-01, ptr %i.iy, align 8, !tbaa !26
  %i.ks = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo10render_boxERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.ko, i32 noundef %i.kp, i32 noundef %i.kq, i32 noundef %i.kr, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %19, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %20, i32 noundef 0)
          to label %bb.ah unwind label %bb.aj     ; 0 uses

end_hunk_1
