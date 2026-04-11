inline.NumInlined: 47
inline.NumDeleted: 11
begin_hunk_0_@uhash_setResizePolicy_78:bb.a
  store i32 0, ptr %i.a, align 4
  %i.b = shl nsw i32 %1, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr @_ZL25RESIZE_POLICY_RATIO_TABLE, i64 %i.c ; 2 uses
  %2 = load float, ptr %i.d, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %2, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %i.d, i64 4
  %3 = load float, ptr %i.f, align 4              ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %3, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %5 = load i32, ptr %i.g, align 4
  %6 = sitofp i32 %5 to float                     ; 2 uses
  %7 = fmul float %2, %6
  %8 = fptosi float %7 to i32
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %8, ptr %9, align 4
  %10 = fmul float %3, %6
  %11 = fptosi float %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %11, ptr %12, align 8
  call fastcc void @_ZL13_uhash_rehashP10UHashtableP10UErrorCode(ptr noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
end_hunk_0
