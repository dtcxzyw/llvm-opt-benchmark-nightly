begin_hunk_0

38:                                               ; preds = %35
  %39 = load i8, ptr %36, align 1, !tbaa !13
  %40 = icmp eq i8 %39, 94
  %41 = getelementptr inbounds nuw i8, ptr %.0165, i64 2
  %42 = add nsw i32 %.0170, -2
  br i1 %40, label %.thread239, label %43
end_hunk_0
begin_hunk_1
  br i1 %.not20, label %27, label %.critedge

27:                                               ; preds = %22, %16
  %28 = phi double [ %23, %22 ], [ %17, %16 ]     ; 2 uses
  %29 = load i32, ptr %6, align 4, !tbaa !9
  switch i32 %29, label %.critedge22 [
    i32 22, label %.critedge22.thread
end_hunk_1
begin_hunk_2
  ], !prof !50

30:                                               ; preds = %27
  %or.cond23 = call i1 @llvm.is.fpclass.f64(double %28, i32 615)
  br i1 %or.cond23, label %.critedge22.thread, label %.critedge, !prof !51

.critedge22:                                      ; preds = %27
  %.old = fcmp uno double %28, 0.000000e+00
  br i1 %.old, label %.critedge22.thread, label %.critedge, !prof !52

.critedge22.thread:                               ; preds = %30, %27, %.critedge22
end_hunk_2
