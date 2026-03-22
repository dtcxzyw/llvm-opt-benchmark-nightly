begin_hunk_0
; Function Attrs: nounwind uwtable
define dso_local void @blockClient(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=2 type=ptr]
  %4 = load i64, ptr %3, align 8, !tbaa !45       ; [#uses=3 type=i64]
  %5 = and i64 %4, 2                              ; [#uses=1 type=i64]
  %.not15 = icmp eq i64 %5, 0                     ; [#uses=1 type=i1]
  br i1 %.not15, label %switch.edge, label %switch.early.test

switch.early.test:                                ; preds = %2
  switch i32 %1, label %.critedge [
end_hunk_0
begin_hunk_1
  unreachable

switch.edge:                                      ; preds = %switch.early.test, %2, %switch.early.test, %switch.early.test, %switch.early.test
  %6 = or i64 %4, 16                              ; [#uses=1 type=i64]
  store i64 %6, ptr %3, align 8, !tbaa !45
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; [#uses=1 type=ptr]
  store i32 %1, ptr %7, align 8, !tbaa !13
  %8 = and i64 %4, 134217728                      ; [#uses=1 type=i64]
  %.not = icmp eq i64 %8, 0                       ; [#uses=1 type=i1]
  br i1 %.not, label %9, label %12

end_hunk_1
begin_hunk_2
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 616 ; [#uses=4 type=ptr]
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; [#uses=5 type=ptr]
  %.not48 = icmp eq i32 %5, 0                     ; [#uses=1 type=i1]
  %wide.trip.count61 = zext nneg i32 %3 to i64    ; [#uses=2 type=i64]
  br i1 %.not48, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %42
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %42 ], [ 0, %.lr.ph ] ; [#uses=2 type=i64]
  %17 = load ptr, ptr %15, align 8, !tbaa !40     ; [#uses=1 type=ptr]
  %18 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv58 ; [#uses=4 type=ptr]
  %19 = load ptr, ptr %18, align 8, !tbaa !115    ; [#uses=1 type=ptr]
  %20 = call ptr @dictAddRaw(ptr noundef %17, ptr noundef %19, ptr noundef null) #5 ; [#uses=2 type=ptr]
  %.not46.us = icmp eq ptr %20, null              ; [#uses=1 type=i1]
end_hunk_2
begin_hunk_3
  br label %42

42:                                               ; preds = %37, %.lr.ph.split.us
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; [#uses=2 type=i64]
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61 ; [#uses=1 type=i1]
  br i1 %exitcond62.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !119

.lr.ph.split:                                     ; preds = %.lr.ph, %78
  %indvars.iv = phi i64 [ %indvars.iv.next, %78 ], [ 0, %.lr.ph ] ; [#uses=2 type=i64]
end_hunk_3
begin_hunk_4

78:                                               ; preds = %75, %73, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; [#uses=2 type=i64]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count61 ; [#uses=1 type=i1]
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !119

._crit_edge:                                      ; preds = %78, %42, %13
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 608 ; [#uses=1 type=ptr]
  store i32 %5, ptr %79, align 8, !tbaa !43
  %.not45 = icmp eq i32 %1, 4                     ; [#uses=1 type=i1]
  %80 = load i64, ptr %8, align 8, !tbaa !45      ; [#uses=6 type=i64]
  br i1 %.not45, label %.split, label %.split40

.split:                                           ; preds = %._crit_edge
  %81 = or i64 %80, 16                            ; [#uses=1 type=i64]
  store i64 %81, ptr %8, align 8, !tbaa !45
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; [#uses=1 type=ptr]
  store i32 4, ptr %82, align 8, !tbaa !13
  %83 = and i64 %80, 134217728                    ; [#uses=1 type=i64]
  %.not.i = icmp eq i64 %83, 0                    ; [#uses=1 type=i1]
  br i1 %.not.i, label %84, label %blockClient.exit

end_hunk_4
begin_hunk_5
  br label %101

.split40:                                         ; preds = %._crit_edge
  %89 = or i64 %80, 1073741824                    ; [#uses=1 type=i64]
  store i64 %89, ptr %8, align 8, !tbaa !45
  %90 = and i64 %80, 2                            ; [#uses=1 type=i64]
  %.not15.i50 = icmp eq i64 %90, 0                ; [#uses=1 type=i1]
  br i1 %.not15.i50, label %switch.edge.i52, label %switch.early.test.i51

switch.early.test.i51:                            ; preds = %.split40
  switch i32 %1, label %.critedge.i [
    i32 10, label %switch.edge.i52
    i32 7, label %switch.edge.i52
    i32 8, label %switch.edge.i52
  ]

.critedge.i:                                      ; preds = %switch.early.test.i51
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80) #5
  call void @abort() #6
  unreachable

switch.edge.i52:                                  ; preds = %switch.early.test.i51, %switch.early.test.i51, %switch.early.test.i51, %.split40
  %91 = or i64 %80, 1073741840                    ; [#uses=1 type=i64]
  store i64 %91, ptr %8, align 8, !tbaa !45
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; [#uses=1 type=ptr]
  store i32 %1, ptr %92, align 8, !tbaa !13
  %93 = and i64 %80, 134217728                    ; [#uses=1 type=i64]
  %.not.i53 = icmp eq i64 %93, 0                  ; [#uses=1 type=i1]
  br i1 %.not.i53, label %94, label %blockClient.exit54

94:                                               ; preds = %switch.edge.i52
  %95 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46 ; [#uses=1 type=i32]
  %96 = add i32 %95, 1                            ; [#uses=1 type=i32]
  store i32 %96, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  br label %blockClient.exit54

blockClient.exit54:                               ; preds = %switch.edge.i52, %94
  %97 = sext i32 %1 to i64                        ; [#uses=1 type=i64]
  %98 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 7824), i64 %97 ; [#uses=2 type=ptr]
  %99 = load i32, ptr %98, align 4, !tbaa !9      ; [#uses=1 type=i32]
end_hunk_5
begin_hunk_6
  store i32 %100, ptr %98, align 4, !tbaa !9
  br label %101

101:                                              ; preds = %blockClient.exit, %blockClient.exit54
  call void @addClientToTimeoutTable(ptr noundef nonnull %0) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret void
end_hunk_6
begin_hunk_7
  %9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7696), align 8, !tbaa !121 ; [#uses=1 type=ptr]
  %10 = tail call ptr @listAddNodeHead(ptr noundef %9, ptr noundef %0) #5 ; [#uses=0 type=ptr]
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=2 type=ptr]
  %12 = load i64, ptr %11, align 8, !tbaa !45     ; [#uses=3 type=i64]
  %13 = and i64 %12, 2                            ; [#uses=1 type=i64]
  %.not15.i = icmp eq i64 %13, 0                  ; [#uses=1 type=i1]
  br i1 %.not15.i, label %switch.edge.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %4
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80) #5
end_hunk_7
begin_hunk_8
  unreachable

switch.edge.i:                                    ; preds = %4
  %14 = or i64 %12, 16                            ; [#uses=1 type=i64]
  store i64 %14, ptr %11, align 8, !tbaa !45
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; [#uses=1 type=ptr]
  store i32 2, ptr %15, align 8, !tbaa !13
  %16 = and i64 %12, 134217728                    ; [#uses=1 type=i64]
  %.not.i = icmp eq i64 %16, 0                    ; [#uses=1 type=i1]
  br i1 %.not.i, label %17, label %blockClient.exit

end_hunk_8
begin_hunk_9
  %11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7696), align 8, !tbaa !121 ; [#uses=1 type=ptr]
  %12 = tail call ptr @listAddNodeHead(ptr noundef %11, ptr noundef %0) #5 ; [#uses=0 type=ptr]
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=2 type=ptr]
  %14 = load i64, ptr %13, align 8, !tbaa !45     ; [#uses=3 type=i64]
  %15 = and i64 %14, 2                            ; [#uses=1 type=i64]
  %.not15.i = icmp eq i64 %15, 0                  ; [#uses=1 type=i1]
  br i1 %.not15.i, label %switch.edge.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %5
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80) #5
end_hunk_9
begin_hunk_10
  unreachable

switch.edge.i:                                    ; preds = %5
  %16 = or i64 %14, 16                            ; [#uses=1 type=i64]
  store i64 %16, ptr %13, align 8, !tbaa !45
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; [#uses=1 type=ptr]
  store i32 3, ptr %17, align 8, !tbaa !13
  %18 = and i64 %14, 134217728                    ; [#uses=1 type=i64]
  %.not.i = icmp eq i64 %18, 0                    ; [#uses=1 type=i1]
  br i1 %.not.i, label %19, label %blockClient.exit

end_hunk_10
begin_hunk_11
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 600 ; [#uses=1 type=ptr]
  store i64 0, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=4 type=ptr]
  %8 = load i64, ptr %7, align 8, !tbaa !45       ; [#uses=2 type=i64]
  %9 = or i64 %8, 16                              ; [#uses=1 type=i64]
  store i64 %9, ptr %7, align 8, !tbaa !45
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; [#uses=1 type=ptr]
  store i32 %1, ptr %10, align 8, !tbaa !13
  %11 = and i64 %8, 134217728                     ; [#uses=1 type=i64]
  %.not.i = icmp eq i64 %11, 0                    ; [#uses=1 type=i1]
  br i1 %.not.i, label %12, label %blockClient.exit

end_hunk_11
begin_hunk_12
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 600 ; [#uses=1 type=ptr]
  store i64 0, ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=4 type=ptr]
  %4 = load i64, ptr %3, align 8, !tbaa !45       ; [#uses=2 type=i64]
  %5 = or i64 %4, 16                              ; [#uses=1 type=i64]
  store i64 %5, ptr %3, align 8, !tbaa !45
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; [#uses=1 type=ptr]
  store i32 7, ptr %6, align 8, !tbaa !13
  %7 = and i64 %4, 134217728                      ; [#uses=1 type=i64]
  %.not.i.i = icmp eq i64 %7, 0                   ; [#uses=1 type=i1]
  br i1 %.not.i.i, label %8, label %blockPostponeClientWithType.exit

end_hunk_12
begin_hunk_13
; Function Attrs: nounwind uwtable
define dso_local void @blockClientShutdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=2 type=ptr]
  %3 = load i64, ptr %2, align 8, !tbaa !45       ; [#uses=3 type=i64]
  %4 = and i64 %3, 2                              ; [#uses=1 type=i64]
  %.not15.i = icmp eq i64 %4, 0                   ; [#uses=1 type=i1]
  br i1 %.not15.i, label %switch.edge.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %1
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80) #5
end_hunk_13
begin_hunk_14
  unreachable

switch.edge.i:                                    ; preds = %1
  %5 = or i64 %3, 16                              ; [#uses=1 type=i64]
  store i64 %5, ptr %2, align 8, !tbaa !45
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; [#uses=1 type=ptr]
  store i32 9, ptr %6, align 8, !tbaa !13
  %7 = and i64 %3, 134217728                      ; [#uses=1 type=i64]
  %.not.i = icmp eq i64 %7, 0                     ; [#uses=1 type=i1]
  br i1 %.not.i, label %8, label %blockClient.exit

end_hunk_14
