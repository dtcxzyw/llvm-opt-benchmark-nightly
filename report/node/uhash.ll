inline.NumInlined: 47
inline.NumDeleted: 11
begin_hunk_0_@uhash_setResizePolicy_78:bb.a
  store i32 0, ptr %i.a, align 4
  %i.b = shl nsw i32 %1, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr @_ZL25RESIZE_POLICY_RATIO_TABLE, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %2 = load i32, ptr %i.f, align 4
  %3 = sitofp i32 %2 to float
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %4 = load <2 x float>, ptr %i.d, align 8        ; 2 uses
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %5, ptr %i.e, align 8
  %6 = insertelement <2 x float> poison, float %3, i64 0
  %7 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %8 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fmul <2 x float> %7, %8
  %10 = fptosi <2 x float> %9 to <2 x i32>
  store <2 x i32> %10, ptr %i.g, align 8
  call fastcc void @_ZL13_uhash_rehashP10UHashtableP10UErrorCode(ptr noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
end_hunk_0
