inline.NumInlined: 42
begin_hunk_0_@main:bb.a
  store float %i.by, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.ca, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.cc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  %i.cd = tail call i64 @clock() #12
  %i.ce = sitofp i64 %i.cd to float
  %0 = fdiv float %i.ce, 1.000000e+06
  tail call void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.info)
  %1 = tail call i64 @clock() #12
  %2 = sitofp i64 %1 to float
  %3 = fdiv float %2, 1.000000e+06
  %4 = fsub float %3, %0
  store float %4, ptr @atime, align 16, !tbaa !11
  %i.cf = tail call i64 @clock() #12
  br label %bb.c

end_hunk_0
