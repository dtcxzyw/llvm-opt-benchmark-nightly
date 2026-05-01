inline.NumInlined: 1370
inline.NumDeleted: 459
begin_hunk_0_@_ZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.aa = call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN9SampleICC13IccTypeReaderE, ptr nonnull @_ZTIN9SampleICC21IccXYZArrayTypeReaderE, i64 0) #31 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  %i.ab = icmp ne ptr %i.r, null
  %i.ac = icmp ne ptr %i.w, null
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.bn = fmul nnan <2 x double> %i.bm, splat (double 0x3EF0000000000000)
  store <2 x double> %i.bn, ptr %i.bh, align 8, !tbaa !174
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  store double 0.000000e+00, ptr %i.bq, align 8, !tbaa !174
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 16
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.by = sitofp <2 x i32> %i.bx to <2 x double>
  %i.bz = fmul nnan <2 x double> %i.by, splat (double 0x3EF0000000000000)
  store <2 x double> %i.bz, ptr %i.bt, align 8, !tbaa !174
  %13 = load <2 x i32>, ptr %i.bo, align 4, !tbaa !3
  %14 = sitofp <2 x i32> %13 to <2 x double>
  %15 = fmul nnan <2 x double> %14, splat (double 0x3EF0000000000000) ; 2 uses
  %16 = extractelement <2 x double> %15, i64 0
  store double %16, ptr %i.bp, align 8, !tbaa !174
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %17 = extractelement <2 x double> %15, i64 1
  store double %17, ptr %i.ca, align 8, !tbaa !174
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i8 0, i64 32, i1 false)
end_hunk_2
