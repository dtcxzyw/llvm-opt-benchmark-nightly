begin_hunk_0
  br i1 %.not, label %47, label %20

20:                                               ; preds = %5
  %21 = load i8, ptr %2, align 1, !tbaa !14       ; 2 uses
  %22 = and i8 %21, -33
  %23 = add i8 %22, -65
  %or.cond28 = icmp ult i8 %23, 26
  br i1 %or.cond28, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %20
  switch i8 %21, label %.noexc.i [
    i8 95, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread
    i8 58, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit.thread
  ]
end_hunk_0
begin_hunk_1
  br label %89

39:                                               ; preds = %5
  %40 = load i8, ptr %2, align 1, !tbaa !14       ; 8 uses
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !11     ; 4 uses
  %.not54 = icmp eq i64 %42, 0
end_hunk_1
begin_hunk_2

.lr.ph:                                           ; preds = %39
  %43 = load ptr, ptr %1, align 8, !tbaa !16      ; 3 uses
  %44 = add i8 %40, -65
  %45 = icmp ult i8 %44, 26
  br i1 %45, label %.lr.ph.split.us, label %.lr.ph.split

end_hunk_2
begin_hunk_3
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 %.01542.us
  %47 = load i8, ptr %46, align 1, !tbaa !14      ; 3 uses
  %48 = icmp eq i8 %47, 126
  %.old.us = icmp eq i8 %40, %47
  %or.cond = select i1 %48, i1 true, i1 %.old.us
  br i1 %or.cond, label %.thread, label %49

49:                                               ; preds = %.lr.ph.split.us
  %50 = add nuw i64 %.01542.us, 1                 ; 2 uses
  %exitcond65.not = icmp eq i64 %50, %42
  br i1 %exitcond65.not, label %.noexc.i31, label %.lr.ph.split.us, !llvm.loop !44

.lr.ph.split:                                     ; preds = %.lr.ph
  %51 = add i8 %40, -97
  %52 = icmp ult i8 %51, 26
  br i1 %52, label %.lr.ph.split.split.us.preheader, label %switch.early.test

end_hunk_3
begin_hunk_4
  br label %.lr.ph.split.split.us

switch.early.test:                                ; preds = %.lr.ph.split
  switch i8 %40, label %.lr.ph.split.split.preheader [
    i8 95, label %.lr.ph.split.split.us.preheader
    i8 58, label %.lr.ph.split.split.us.preheader
  ]

.lr.ph.split.split.preheader:                     ; preds = %switch.early.test
  %53 = icmp eq i8 %40, 126
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %57
end_hunk_4
begin_hunk_5
  %54 = getelementptr inbounds nuw i8, ptr %43, i64 %.01542.us46
  %55 = load i8, ptr %54, align 1, !tbaa !14      ; 3 uses
  %56 = icmp eq i8 %55, 126
  %.old.us47 = icmp eq i8 %40, %55
  %or.cond53 = select i1 %56, i1 true, i1 %.old.us47
  br i1 %or.cond53, label %.thread, label %57

57:                                               ; preds = %.lr.ph.split.split.us
  %58 = add nuw i64 %.01542.us46, 1               ; 2 uses
  %exitcond64.not = icmp eq i64 %58, %42
  br i1 %exitcond64.not, label %.noexc.i31, label %.lr.ph.split.split.us, !llvm.loop !44

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %67
  %.01542 = phi i64 [ %68, %67 ], [ 0, %.lr.ph.split.split.preheader ] ; 2 uses
end_hunk_5
begin_hunk_6
  br i1 %53, label %.thread, label %67

62:                                               ; preds = %.lr.ph.split.split
  %.old = icmp eq i8 %40, %60
  br i1 %.old, label %.thread, label %67

.thread:                                          ; preds = %62, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit, %.lr.ph.split.split.us, %.lr.ph.split.us
  %.us-phi = phi i8 [ %47, %.lr.ph.split.us ], [ %55, %.lr.ph.split.split.us ], [ 126, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_115IsFirstNameCharEc.exit ], [ %40, %62 ]
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %64 = load i64, ptr %63, align 8, !tbaa !24
  %65 = add i64 %64, 1
end_hunk_6
