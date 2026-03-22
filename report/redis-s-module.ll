begin_hunk_0
7:                                                ; preds = %2
  %8 = tail call ptr @__errno_location() #40      ; [#uses=1 type=ptr]
  store i32 22, ptr %8, align 4, !tbaa !9
  br label %39

9:                                                ; preds = %2
  %10 = load i8, ptr %1, align 1, !tbaa !73       ; [#uses=2 type=i8]
  %11 = icmp eq i8 %10, 0                         ; [#uses=1 type=i1]
  br i1 %11, label %25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %9, %21
  %12 = phi i8 [ %24, %21 ], [ %10, %9 ]          ; [#uses=4 type=i8]
  %.03444.i = phi i64 [ %22, %21 ], [ 0, %9 ]     ; [#uses=1 type=i64]
  %13 = and i8 %12, -33                           ; [#uses=1 type=i8]
  %14 = add i8 %13, -65                           ; [#uses=1 type=i8]
  %or.cond36.i = icmp ult i8 %14, 26              ; [#uses=1 type=i1]
  %15 = add i8 %12, -48                           ; [#uses=1 type=i8]
  %or.cond8.i = icmp ult i8 %15, 10               ; [#uses=1 type=i1]
  %or.cond.i = or i1 %or.cond8.i, %or.cond36.i    ; [#uses=1 type=i1]
  br i1 %or.cond.i, label %21, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %12, label %16 [
    i8 95, label %21
    i8 45, label %21
  ]

16:                                               ; preds = %switch.early.test.i
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %18 = icmp sgt i32 %17, 3                       ; [#uses=1 type=i1]
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = sext i8 %12 to i32                        ; [#uses=1 type=i32]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.153, i32 noundef %20, ptr noundef nonnull %1) #35
  br label %25

21:                                               ; preds = %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %22 = add i64 %.03444.i, 1                      ; [#uses=2 type=i64]
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 %22 ; [#uses=1 type=ptr]
  %24 = load i8, ptr %23, align 1, !tbaa !73      ; [#uses=2 type=i8]
  %.not.i = icmp eq i8 %24, 0                     ; [#uses=1 type=i1]
  br i1 %.not.i, label %moduleVerifyResourceName.exit, label %.lr.ph.i, !llvm.loop !192

25:                                               ; preds = %9, %19, %16
  %26 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 22, ptr %26, align 4, !tbaa !9
  br label %39

moduleVerifyResourceName.exit:                    ; preds = %21
  %27 = tail call i64 @ACLGetCommandCategoryFlagByName(ptr noundef nonnull %1) #35 ; [#uses=1 type=i64]
  %.not5 = icmp eq i64 %27, 0                     ; [#uses=1 type=i1]
  br i1 %.not5, label %30, label %28

28:                                               ; preds = %moduleVerifyResourceName.exit
  %29 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 16, ptr %29, align 4, !tbaa !9
  br label %39

30:                                               ; preds = %moduleVerifyResourceName.exit
  %31 = tail call i32 @ACLAddCommandCategory(ptr noundef nonnull %1, i64 noundef 0) #35 ; [#uses=1 type=i32]
  %.not6 = icmp eq i32 %31, 0                     ; [#uses=1 type=i1]
  br i1 %.not6, label %37, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %3, align 8, !tbaa !106     ; [#uses=1 type=ptr]
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 144 ; [#uses=2 type=ptr]
  %35 = load i64, ptr %34, align 8, !tbaa !193    ; [#uses=1 type=i64]
  %36 = add i64 %35, 1                            ; [#uses=1 type=i64]
  store i64 %36, ptr %34, align 8, !tbaa !193
  br label %39

37:                                               ; preds = %30
  %38 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 12, ptr %38, align 4, !tbaa !9
  br label %39

39:                                               ; preds = %37, %32, %28, %25, %7
  %.0 = phi i32 [ 1, %25 ], [ 1, %28 ], [ 0, %32 ], [ 1, %37 ], [ 1, %7 ] ; [#uses=1 type=i32]
  ret i32 %.0
}

end_hunk_0
begin_hunk_1
; [#uses=0]
; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @moduleVerifyResourceName(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !73        ; [#uses=2 type=i8]
  %3 = icmp eq i8 %2, 0                           ; [#uses=1 type=i1]
  br i1 %3, label %.thread40, label %.lr.ph

.lr.ph:                                           ; preds = %1, %13
  %4 = phi i8 [ %16, %13 ], [ %2, %1 ]            ; [#uses=4 type=i8]
  %.03444 = phi i64 [ %14, %13 ], [ 0, %1 ]       ; [#uses=1 type=i64]
  %5 = and i8 %4, -33                             ; [#uses=1 type=i8]
  %6 = add i8 %5, -65                             ; [#uses=1 type=i8]
  %or.cond36 = icmp ult i8 %6, 26                 ; [#uses=1 type=i1]
  %7 = add i8 %4, -48                             ; [#uses=1 type=i8]
  %or.cond8 = icmp ult i8 %7, 10                  ; [#uses=1 type=i1]
  %or.cond = or i1 %or.cond8, %or.cond36          ; [#uses=1 type=i1]
  br i1 %or.cond, label %13, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph
  switch i8 %4, label %8 [
    i8 95, label %13
    i8 45, label %13
  ]

8:                                                ; preds = %switch.early.test
  %9 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %10 = icmp sgt i32 %9, 3                        ; [#uses=1 type=i1]
  br i1 %10, label %.thread40, label %11

11:                                               ; preds = %8
  %12 = sext i8 %4 to i32                         ; [#uses=1 type=i32]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.153, i32 noundef %12, ptr noundef nonnull %0) #35
  br label %.thread40

13:                                               ; preds = %.lr.ph, %switch.early.test, %switch.early.test
  %14 = add i64 %.03444, 1                        ; [#uses=2 type=i64]
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %14 ; [#uses=1 type=ptr]
  %16 = load i8, ptr %15, align 1, !tbaa !73      ; [#uses=2 type=i8]
  %.not = icmp eq i8 %16, 0                       ; [#uses=1 type=i1]
  br i1 %.not, label %.thread40, label %.lr.ph, !llvm.loop !192

.thread40:                                        ; preds = %13, %11, %8, %1
  %.3 = phi i32 [ 1, %1 ], [ 1, %11 ], [ 1, %8 ], [ 0, %13 ] ; [#uses=1 type=i32]
  ret i32 %.3
}

end_hunk_1
begin_hunk_2
  br i1 %16, label %126, label %17

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8                ; [#uses=6 type=i64]
  %19 = trunc i64 %18 to i32                      ; [#uses=1 type=i32]
  %20 = and i32 %19, 15                           ; [#uses=2 type=i32]
  switch i32 %20, label %126 [
    i32 2, label %21
end_hunk_2
begin_hunk_3
  ]

21:                                               ; preds = %17
  %22 = and i64 %18, 240                          ; [#uses=1 type=i64]
  %23 = icmp eq i64 %22, 32                       ; [#uses=1 type=i1]
  br i1 %23, label %24, label %40

end_hunk_3
begin_hunk_4
  br label %40

27:                                               ; preds = %17
  %28 = and i64 %18, 240                          ; [#uses=1 type=i64]
  %29 = icmp eq i64 %28, 32                       ; [#uses=1 type=i1]
  br i1 %29, label %30, label %40

end_hunk_4
begin_hunk_5
  br label %40

33:                                               ; preds = %17
  %34 = and i64 %18, 240                          ; [#uses=1 type=i64]
  %35 = icmp eq i64 %34, 112                      ; [#uses=1 type=i1]
  br i1 %35, label %36, label %40

end_hunk_5
begin_hunk_6
  br label %126

59:                                               ; preds = %52
  %60 = and i64 %18, 15                           ; [#uses=1 type=i64]
  %61 = icmp eq i64 %60, 4                        ; [#uses=1 type=i1]
  %62 = and i64 %18, 255                          ; [#uses=1 type=i64]
  %63 = icmp eq i64 %62, 196                      ; [#uses=1 type=i1]
  br i1 %61, label %64, label %66

end_hunk_6
begin_hunk_7
define dso_local range(i32 0, 2) i32 @moduleVerifyUnprefixedName(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !73        ; [#uses=1 type=i8]
  %4 = icmp eq i8 %3, 0                           ; [#uses=1 type=i1]
  br i1 %4, label %45, label %5

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !166
  %6 = load i8, ptr %0, align 1, !tbaa !73        ; [#uses=2 type=i8]
  %.not79 = icmp eq i8 %6, 0                      ; [#uses=1 type=i1]
  br i1 %.not79, label %._crit_edge.thread, label %.outer

.outer:                                           ; preds = %5, %.thread
  %.ph = phi i1 [ false, %.thread ], [ true, %5 ] ; [#uses=1 type=i1]
  %.ph94 = phi i8 [ %40, %.thread ], [ %6, %5 ]   ; [#uses=1 type=i8]
  %.05282.ph = phi i64 [ %38, %.thread ], [ 0, %5 ] ; [#uses=1 type=i64]
  br label %7

7:                                                ; preds = %.outer, %33
  %8 = phi i8 [ %36, %33 ], [ %.ph94, %.outer ]   ; [#uses=5 type=i8]
  %.05282 = phi i64 [ %34, %33 ], [ %.05282.ph, %.outer ] ; [#uses=3 type=i64]
  %.05381 = phi i32 [ %.255, %33 ], [ 0, %.outer ] ; [#uses=3 type=i32]
  %.05780 = phi i32 [ %.259, %33 ], [ 0, %.outer ] ; [#uses=3 type=i32]
  %9 = icmp eq i8 %8, 124                         ; [#uses=1 type=i1]
  %or.cond = and i1 %9, %.ph                      ; [#uses=1 type=i1]
  br i1 %or.cond, label %10, label %15

10:                                               ; preds = %7
  %.not63 = icmp eq i32 %.05381, 0                ; [#uses=1 type=i1]
  br i1 %.not63, label %11, label %.thread

11:                                               ; preds = %10
  %12 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %13 = icmp sgt i32 %12, 3                       ; [#uses=1 type=i1]
  br i1 %13, label %45, label %14

14:                                               ; preds = %11
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.154, ptr noundef nonnull %0) #35
  br label %45

15:                                               ; preds = %7
  %16 = and i8 %8, -33                            ; [#uses=1 type=i8]
  %17 = add i8 %16, -65                           ; [#uses=1 type=i8]
  %or.cond65 = icmp ult i8 %17, 26                ; [#uses=1 type=i1]
  %18 = add i8 %8, -48                            ; [#uses=1 type=i8]
  %or.cond12 = icmp ult i8 %18, 10                ; [#uses=1 type=i1]
  %or.cond72 = or i1 %or.cond12, %or.cond65       ; [#uses=1 type=i1]
  br i1 %or.cond72, label %19, label %switch.early.test

switch.early.test:                                ; preds = %15
  switch i8 %8, label %28 [
    i8 95, label %19
    i8 45, label %19
    i8 46, label %21
  ]

19:                                               ; preds = %switch.early.test, %switch.early.test, %15
  %20 = add nsw i32 %.05381, 1                    ; [#uses=1 type=i32]
  br label %33

21:                                               ; preds = %switch.early.test
  %22 = add nsw i32 %.05780, 1                    ; [#uses=1 type=i32]
  %23 = icmp sgt i32 %.05780, 0                   ; [#uses=1 type=i1]
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %26 = icmp sgt i32 %25, 3                       ; [#uses=1 type=i1]
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.155, ptr noundef nonnull %0) #35
  br label %45

28:                                               ; preds = %switch.early.test
  %29 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %30 = icmp sgt i32 %29, 3                       ; [#uses=1 type=i1]
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = sext i8 %8 to i32                         ; [#uses=1 type=i32]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.156, i32 noundef %32, ptr noundef nonnull %0) #35
  br label %45

33:                                               ; preds = %19, %21
  %.259 = phi i32 [ %22, %21 ], [ %.05780, %19 ]  ; [#uses=1 type=i32]
  %.255 = phi i32 [ %.05381, %21 ], [ %20, %19 ]  ; [#uses=2 type=i32]
  %34 = add i64 %.05282, 1                        ; [#uses=2 type=i64]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 %34 ; [#uses=1 type=ptr]
  %36 = load i8, ptr %35, align 1, !tbaa !73      ; [#uses=2 type=i8]
  %.not = icmp eq i8 %36, 0                       ; [#uses=1 type=i1]
  br i1 %.not, label %._crit_edge, label %7, !llvm.loop !677

.thread:                                          ; preds = %10
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 %.05282 ; [#uses=1 type=ptr]
  store ptr %37, ptr %1, align 8, !tbaa !166
  %38 = add i64 %.05282, 1                        ; [#uses=2 type=i64]
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 %38 ; [#uses=1 type=ptr]
  %40 = load i8, ptr %39, align 1, !tbaa !73      ; [#uses=2 type=i8]
  %.not90 = icmp eq i8 %40, 0                     ; [#uses=1 type=i1]
  br i1 %.not90, label %._crit_edge.thread, label %.outer, !llvm.loop !677

._crit_edge:                                      ; preds = %33
  %41 = icmp eq i32 %.255, 0                      ; [#uses=1 type=i1]
  br i1 %41, label %._crit_edge.thread, label %45

._crit_edge.thread:                               ; preds = %.thread, %5, %._crit_edge
  %42 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %43 = icmp sgt i32 %42, 3                       ; [#uses=1 type=i1]
  br i1 %43, label %45, label %44

44:                                               ; preds = %._crit_edge.thread
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.157, ptr noundef nonnull %0) #35
  br label %45

45:                                               ; preds = %28, %24, %11, %14, %27, %31, %._crit_edge.thread, %44, %._crit_edge, %2
  %.4 = phi i32 [ 1, %2 ], [ 1, %44 ], [ 0, %._crit_edge ], [ 1, %._crit_edge.thread ], [ 1, %31 ], [ 1, %27 ], [ 1, %14 ], [ 1, %11 ], [ 1, %24 ], [ 1, %28 ] ; [#uses=1 type=i32]
  ret i32 %.4
}

end_hunk_7
begin_hunk_8
  br i1 %.not2437, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1
  %9 = and i32 %7, 1                              ; [#uses=1 type=i32]
  %.not = icmp eq i32 %9, 0                       ; [#uses=1 type=i1]
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

end_hunk_8
begin_hunk_9
9:                                                ; preds = %4
  %10 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 16, ptr %10, align 4, !tbaa !9
  br label %83

11:                                               ; preds = %4
  %12 = zext i32 %2 to i64                        ; [#uses=3 type=i64]
end_hunk_9
begin_hunk_10
  tail call void @serverLogRaw(i32 noundef 3, ptr noundef nonnull %.str.152.sink.i) #35
  %19 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 22, ptr %19, align 4, !tbaa !9
  br label %83

20:                                               ; preds = %16
  %21 = and i32 %2, 512                           ; [#uses=1 type=i32]
end_hunk_10
begin_hunk_11
.thread:                                          ; preds = %45, %48
  %.124.ph = phi i32 [ %50, %48 ], [ %46, %45 ]   ; [#uses=1 type=i32]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %76

51:                                               ; preds = %22
  %52 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 22, ptr %52, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %83

53:                                               ; preds = %20
  %54 = load i8, ptr %1, align 1, !tbaa !73       ; [#uses=2 type=i8]
  %55 = icmp eq i8 %54, 0                         ; [#uses=1 type=i1]
  br i1 %55, label %69, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %53, %65
  %56 = phi i8 [ %68, %65 ], [ %54, %53 ]         ; [#uses=4 type=i8]
  %.03444.i = phi i64 [ %66, %65 ], [ 0, %53 ]    ; [#uses=1 type=i64]
  %57 = and i8 %56, -33                           ; [#uses=1 type=i8]
  %58 = add i8 %57, -65                           ; [#uses=1 type=i8]
  %or.cond36.i = icmp ult i8 %58, 26              ; [#uses=1 type=i1]
  %59 = add i8 %56, -48                           ; [#uses=1 type=i8]
  %or.cond8.i = icmp ult i8 %59, 10               ; [#uses=1 type=i1]
  %or.cond.i35 = or i1 %or.cond8.i, %or.cond36.i  ; [#uses=1 type=i1]
  br i1 %or.cond.i35, label %65, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %56, label %60 [
    i8 95, label %65
    i8 45, label %65
  ]

60:                                               ; preds = %switch.early.test.i
  %61 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %62 = icmp sgt i32 %61, 3                       ; [#uses=1 type=i1]
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = sext i8 %56 to i32                        ; [#uses=1 type=i32]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.153, i32 noundef %64, ptr noundef nonnull %1) #35
  br label %69

65:                                               ; preds = %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %66 = add i64 %.03444.i, 1                      ; [#uses=2 type=i64]
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 %66 ; [#uses=1 type=ptr]
  %68 = load i8, ptr %67, align 1, !tbaa !73      ; [#uses=2 type=i8]
  %.not.i36 = icmp eq i8 %68, 0                   ; [#uses=1 type=i1]
  br i1 %.not.i36, label %moduleVerifyResourceName.exit, label %.lr.ph.i, !llvm.loop !192

69:                                               ; preds = %53, %63, %60
  %70 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 22, ptr %70, align 4, !tbaa !9
  br label %83

moduleVerifyResourceName.exit:                    ; preds = %65
  %71 = tail call ptr @sdsempty() #35             ; [#uses=1 type=ptr]
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=1 type=ptr]
  %73 = load ptr, ptr %72, align 8, !tbaa !107    ; [#uses=1 type=ptr]
  %74 = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %71, ptr noundef nonnull @.str.160, ptr noundef %73, ptr noundef nonnull %1) #35 ; [#uses=2 type=ptr]
  %75 = tail call i32 @configExists(ptr noundef %74) #35 ; [#uses=1 type=i32]
  tail call void @sdsfree(ptr noundef %74) #35
  br label %76

76:                                               ; preds = %.thread, %moduleVerifyResourceName.exit
  %.225 = phi i32 [ %.124.ph, %.thread ], [ %75, %moduleVerifyResourceName.exit ] ; [#uses=1 type=i32]
  %.not34 = icmp eq i32 %.225, 0                  ; [#uses=1 type=i1]
  br i1 %.not34, label %83, label %77

77:                                               ; preds = %76
  %78 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %79 = icmp sgt i32 %78, 3                       ; [#uses=1 type=i1]
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.162, ptr noundef %1) #35
  br label %81

81:                                               ; preds = %77, %80
  %82 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 114, ptr %82, align 4, !tbaa !9
  br label %83

83:                                               ; preds = %51, %69, %81, %76, %18, %9
  %.2 = phi i32 [ 1, %18 ], [ 1, %9 ], [ 1, %81 ], [ 1, %69 ], [ 1, %51 ], [ 0, %76 ] ; [#uses=1 type=i32]
  ret i32 %.2
}

end_hunk_11
begin_hunk_12
  br label %moduleGetFreeEffort.exit

moduleGetFreeEffort.exit:                         ; preds = %19, %29
  %.0.i = phi i64 [ %25, %19 ], [ %32, %29 ]      ; [#uses=2 type=i64]
  %.not20 = icmp eq i64 %.0.i, 0                  ; [#uses=1 type=i1]
  %spec.select = select i1 %.not20, i64 -1, i64 %.0.i ; [#uses=1 type=i64]
  br label %moduleGetFreeEffort.exit.thread

moduleGetFreeEffort.exit.thread:                  ; preds = %moduleGetFreeEffort.exit, %26
end_hunk_12
