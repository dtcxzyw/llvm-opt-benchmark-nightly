inline.NumInlined: 42
begin_hunk_0_@main:bb.a
  store float %i.by, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.ca, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.cc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  %0 = tail call i64 @clock() #12
  tail call void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.info)
  %i.cd = tail call i64 @clock() #12
  %1 = sitofp i64 %0 to float
  %i.ce = sitofp i64 %i.cd to float
  %2 = insertelement <2 x float> poison, float %i.ce, i64 0
  %3 = insertelement <2 x float> %2, float %1, i64 1
  %4 = fdiv <2 x float> %3, splat (float 1.000000e+06) ; 2 uses
  %shift = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %4, %shift
  %5 = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %5, ptr @atime, align 16, !tbaa !11
  %i.cf = tail call i64 @clock() #12
  br label %bb.c

end_hunk_0
