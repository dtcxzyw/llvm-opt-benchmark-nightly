begin_hunk_0
7:                                                ; preds = %2
  %8 = tail call ptr @__errno_location() #40      ; [#uses=1 type=ptr]
  store i32 22, ptr %8, align 4, !tbaa !9
  br label %38

9:                                                ; preds = %2
  %10 = load i8, ptr %1, align 1, !tbaa !73       ; [#uses=1 type=i8]
  %.fr4244.i = freeze i8 %10                      ; [#uses=2 type=i8]
  %11 = icmp eq i8 %.fr4244.i, 0                  ; [#uses=1 type=i1]
  br i1 %11, label %24, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %9, %20
  %.fr4247.i = phi i8 [ %.fr42.i, %20 ], [ %.fr4244.i, %9 ] ; [#uses=4 type=i8]
  %.03446.i = phi i64 [ %21, %20 ], [ 0, %9 ]     ; [#uses=1 type=i64]
  %12 = and i8 %.fr4247.i, -33                    ; [#uses=1 type=i8]
  %13 = add i8 %12, -65                           ; [#uses=1 type=i8]
  %or.cond36.i = icmp ult i8 %13, 26              ; [#uses=1 type=i1]
  %14 = add i8 %.fr4247.i, -48                    ; [#uses=1 type=i8]
  %or.cond8.i = icmp ult i8 %14, 10               ; [#uses=1 type=i1]
  %or.cond.i = or i1 %or.cond8.i, %or.cond36.i    ; [#uses=1 type=i1]
  br i1 %or.cond.i, label %20, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %.fr4247.i, label %15 [
    i8 95, label %20
    i8 45, label %20
  ]

15:                                               ; preds = %switch.early.test.i
  %16 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %17 = icmp sgt i32 %16, 3                       ; [#uses=1 type=i1]
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = sext i8 %.fr4247.i to i32                 ; [#uses=1 type=i32]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.153, i32 noundef %19, ptr noundef nonnull %1) #35
  br label %24

20:                                               ; preds = %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %21 = add i64 %.03446.i, 1                      ; [#uses=2 type=i64]
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %21 ; [#uses=1 type=ptr]
  %23 = load i8, ptr %22, align 1, !tbaa !73      ; [#uses=1 type=i8]
  %.fr42.i = freeze i8 %23                        ; [#uses=2 type=i8]
  %.not.i = icmp eq i8 %.fr42.i, 0                ; [#uses=1 type=i1]
  br i1 %.not.i, label %moduleVerifyResourceName.exit, label %.lr.ph.i, !llvm.loop !192

24:                                               ; preds = %9, %18, %15
  %25 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 22, ptr %25, align 4, !tbaa !9
  br label %38

moduleVerifyResourceName.exit:                    ; preds = %20
  %26 = tail call i64 @ACLGetCommandCategoryFlagByName(ptr noundef nonnull %1) #35 ; [#uses=1 type=i64]
  %.not5 = icmp eq i64 %26, 0                     ; [#uses=1 type=i1]
  br i1 %.not5, label %29, label %27

27:                                               ; preds = %moduleVerifyResourceName.exit
  %28 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 16, ptr %28, align 4, !tbaa !9
  br label %38

29:                                               ; preds = %moduleVerifyResourceName.exit
  %30 = tail call i32 @ACLAddCommandCategory(ptr noundef nonnull %1, i64 noundef 0) #35 ; [#uses=1 type=i32]
  %.not6 = icmp eq i32 %30, 0                     ; [#uses=1 type=i1]
  br i1 %.not6, label %36, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %3, align 8, !tbaa !106     ; [#uses=1 type=ptr]
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 144 ; [#uses=2 type=ptr]
  %34 = load i64, ptr %33, align 8, !tbaa !193    ; [#uses=1 type=i64]
  %35 = add i64 %34, 1                            ; [#uses=1 type=i64]
  store i64 %35, ptr %33, align 8, !tbaa !193
  br label %38

36:                                               ; preds = %29
  %37 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 12, ptr %37, align 4, !tbaa !9
  br label %38

38:                                               ; preds = %36, %31, %27, %24, %7
  %.0 = phi i32 [ 1, %24 ], [ 1, %27 ], [ 0, %31 ], [ 1, %36 ], [ 1, %7 ] ; [#uses=1 type=i32]
  ret i32 %.0
}

end_hunk_0
begin_hunk_1
; [#uses=0]
; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @moduleVerifyResourceName(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !73        ; [#uses=1 type=i8]
  %.fr4244 = freeze i8 %2                         ; [#uses=2 type=i8]
  %3 = icmp eq i8 %.fr4244, 0                     ; [#uses=1 type=i1]
  br i1 %3, label %.thread40, label %.lr.ph

.lr.ph:                                           ; preds = %1, %12
  %.fr4247 = phi i8 [ %.fr42, %12 ], [ %.fr4244, %1 ] ; [#uses=4 type=i8]
  %.03446 = phi i64 [ %13, %12 ], [ 0, %1 ]       ; [#uses=1 type=i64]
  %4 = and i8 %.fr4247, -33                       ; [#uses=1 type=i8]
  %5 = add i8 %4, -65                             ; [#uses=1 type=i8]
  %or.cond36 = icmp ult i8 %5, 26                 ; [#uses=1 type=i1]
  %6 = add i8 %.fr4247, -48                       ; [#uses=1 type=i8]
  %or.cond8 = icmp ult i8 %6, 10                  ; [#uses=1 type=i1]
  %or.cond = or i1 %or.cond8, %or.cond36          ; [#uses=1 type=i1]
  br i1 %or.cond, label %12, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph
  switch i8 %.fr4247, label %7 [
    i8 95, label %12
    i8 45, label %12
  ]

7:                                                ; preds = %switch.early.test
  %8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %9 = icmp sgt i32 %8, 3                         ; [#uses=1 type=i1]
  br i1 %9, label %.thread40, label %10

10:                                               ; preds = %7
  %11 = sext i8 %.fr4247 to i32                   ; [#uses=1 type=i32]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.153, i32 noundef %11, ptr noundef nonnull %0) #35
  br label %.thread40

12:                                               ; preds = %.lr.ph, %switch.early.test, %switch.early.test
  %13 = add i64 %.03446, 1                        ; [#uses=2 type=i64]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13 ; [#uses=1 type=ptr]
  %15 = load i8, ptr %14, align 1, !tbaa !73      ; [#uses=1 type=i8]
  %.fr42 = freeze i8 %15                          ; [#uses=2 type=i8]
  %.not = icmp eq i8 %.fr42, 0                    ; [#uses=1 type=i1]
  br i1 %.not, label %.thread40, label %.lr.ph, !llvm.loop !192

.thread40:                                        ; preds = %12, %10, %7, %1
  %.3 = phi i32 [ 1, %1 ], [ 1, %10 ], [ 1, %7 ], [ 0, %12 ] ; [#uses=1 type=i32]
  ret i32 %.3
}

end_hunk_1
begin_hunk_2
  br i1 %16, label %126, label %17

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8                ; [#uses=1 type=i64]
  %.fr = freeze i64 %18                           ; [#uses=6 type=i64]
  %19 = trunc i64 %.fr to i32                     ; [#uses=1 type=i32]
  %20 = and i32 %19, 15                           ; [#uses=2 type=i32]
  switch i32 %20, label %126 [
    i32 2, label %21
end_hunk_2
begin_hunk_3
  ]

21:                                               ; preds = %17
  %22 = and i64 %.fr, 240                         ; [#uses=1 type=i64]
  %23 = icmp eq i64 %22, 32                       ; [#uses=1 type=i1]
  br i1 %23, label %24, label %40

end_hunk_3
begin_hunk_4
  br label %40

27:                                               ; preds = %17
  %28 = and i64 %.fr, 240                         ; [#uses=1 type=i64]
  %29 = icmp eq i64 %28, 32                       ; [#uses=1 type=i1]
  br i1 %29, label %30, label %40

end_hunk_4
begin_hunk_5
  br label %40

33:                                               ; preds = %17
  %34 = and i64 %.fr, 240                         ; [#uses=1 type=i64]
  %35 = icmp eq i64 %34, 112                      ; [#uses=1 type=i1]
  br i1 %35, label %36, label %40

end_hunk_5
begin_hunk_6
  br label %126

59:                                               ; preds = %52
  %60 = and i64 %.fr, 15                          ; [#uses=1 type=i64]
  %61 = icmp eq i64 %60, 4                        ; [#uses=1 type=i1]
  %62 = and i64 %.fr, 255                         ; [#uses=1 type=i64]
  %63 = icmp eq i64 %62, 196                      ; [#uses=1 type=i1]
  br i1 %61, label %64, label %66

end_hunk_6
begin_hunk_7
define dso_local range(i32 0, 2) i32 @moduleVerifyUnprefixedName(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !73        ; [#uses=1 type=i8]
  %4 = icmp eq i8 %3, 0                           ; [#uses=1 type=i1]
  br i1 %4, label %44, label %5

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !166
  %6 = load i8, ptr %0, align 1, !tbaa !73        ; [#uses=1 type=i8]
  %.fr7280 = freeze i8 %6                         ; [#uses=2 type=i8]
  %.not81 = icmp eq i8 %.fr7280, 0                ; [#uses=1 type=i1]
  br i1 %.not81, label %._crit_edge.thread, label %.outer

.outer:                                           ; preds = %5, %.thread
  %.ph = phi i1 [ false, %.thread ], [ true, %5 ] ; [#uses=1 type=i1]
  %.fr7285.ph = phi i8 [ %.fr7292, %.thread ], [ %.fr7280, %5 ] ; [#uses=1 type=i8]
  %.05284.ph = phi i64 [ %37, %.thread ], [ 0, %5 ] ; [#uses=1 type=i64]
  br label %7

7:                                                ; preds = %.outer, %32
  %.fr7285 = phi i8 [ %.fr72, %32 ], [ %.fr7285.ph, %.outer ] ; [#uses=5 type=i8]
  %.05284 = phi i64 [ %33, %32 ], [ %.05284.ph, %.outer ] ; [#uses=3 type=i64]
  %.05383 = phi i32 [ %.255, %32 ], [ 0, %.outer ] ; [#uses=3 type=i32]
  %.05782 = phi i32 [ %.259, %32 ], [ 0, %.outer ] ; [#uses=3 type=i32]
  %8 = icmp eq i8 %.fr7285, 124                   ; [#uses=1 type=i1]
  %or.cond = and i1 %8, %.ph                      ; [#uses=1 type=i1]
  br i1 %or.cond, label %9, label %14

9:                                                ; preds = %7
  %.not63 = icmp eq i32 %.05383, 0                ; [#uses=1 type=i1]
  br i1 %.not63, label %10, label %.thread

10:                                               ; preds = %9
  %11 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %12 = icmp sgt i32 %11, 3                       ; [#uses=1 type=i1]
  br i1 %12, label %44, label %13

13:                                               ; preds = %10
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.154, ptr noundef nonnull %0) #35
  br label %44

14:                                               ; preds = %7
  %15 = and i8 %.fr7285, -33                      ; [#uses=1 type=i8]
  %16 = add i8 %15, -65                           ; [#uses=1 type=i8]
  %or.cond65 = icmp ult i8 %16, 26                ; [#uses=1 type=i1]
  %17 = add i8 %.fr7285, -48                      ; [#uses=1 type=i8]
  %or.cond12 = icmp ult i8 %17, 10                ; [#uses=1 type=i1]
  %or.cond73 = or i1 %or.cond12, %or.cond65       ; [#uses=1 type=i1]
  br i1 %or.cond73, label %18, label %switch.early.test

switch.early.test:                                ; preds = %14
  switch i8 %.fr7285, label %27 [
    i8 95, label %18
    i8 45, label %18
    i8 46, label %20
  ]

18:                                               ; preds = %switch.early.test, %switch.early.test, %14
  %19 = add nsw i32 %.05383, 1                    ; [#uses=1 type=i32]
  br label %32

20:                                               ; preds = %switch.early.test
  %21 = add nsw i32 %.05782, 1                    ; [#uses=1 type=i32]
  %22 = icmp sgt i32 %.05782, 0                   ; [#uses=1 type=i1]
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %25 = icmp sgt i32 %24, 3                       ; [#uses=1 type=i1]
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.155, ptr noundef nonnull %0) #35
  br label %44

27:                                               ; preds = %switch.early.test
  %28 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %29 = icmp sgt i32 %28, 3                       ; [#uses=1 type=i1]
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = sext i8 %.fr7285 to i32                   ; [#uses=1 type=i32]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.156, i32 noundef %31, ptr noundef nonnull %0) #35
  br label %44

32:                                               ; preds = %18, %20
  %.259 = phi i32 [ %21, %20 ], [ %.05782, %18 ]  ; [#uses=1 type=i32]
  %.255 = phi i32 [ %.05383, %20 ], [ %19, %18 ]  ; [#uses=2 type=i32]
  %33 = add i64 %.05284, 1                        ; [#uses=2 type=i64]
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 %33 ; [#uses=1 type=ptr]
  %35 = load i8, ptr %34, align 1, !tbaa !73      ; [#uses=1 type=i8]
  %.fr72 = freeze i8 %35                          ; [#uses=2 type=i8]
  %.not = icmp eq i8 %.fr72, 0                    ; [#uses=1 type=i1]
  br i1 %.not, label %._crit_edge, label %7, !llvm.loop !677

.thread:                                          ; preds = %9
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 %.05284 ; [#uses=1 type=ptr]
  store ptr %36, ptr %1, align 8, !tbaa !166
  %37 = add i64 %.05284, 1                        ; [#uses=2 type=i64]
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 %37 ; [#uses=1 type=ptr]
  %39 = load i8, ptr %38, align 1, !tbaa !73      ; [#uses=1 type=i8]
  %.fr7292 = freeze i8 %39                        ; [#uses=2 type=i8]
  %.not93 = icmp eq i8 %.fr7292, 0                ; [#uses=1 type=i1]
  br i1 %.not93, label %._crit_edge.thread, label %.outer, !llvm.loop !677

._crit_edge:                                      ; preds = %32
  %40 = icmp eq i32 %.255, 0                      ; [#uses=1 type=i1]
  br i1 %40, label %._crit_edge.thread, label %44

._crit_edge.thread:                               ; preds = %.thread, %5, %._crit_edge
  %41 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %42 = icmp sgt i32 %41, 3                       ; [#uses=1 type=i1]
  br i1 %42, label %44, label %43

43:                                               ; preds = %._crit_edge.thread
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.157, ptr noundef nonnull %0) #35
  br label %44

44:                                               ; preds = %27, %23, %10, %13, %26, %30, %._crit_edge.thread, %43, %._crit_edge, %2
  %.4 = phi i32 [ 1, %2 ], [ 1, %43 ], [ 0, %._crit_edge ], [ 1, %._crit_edge.thread ], [ 1, %30 ], [ 1, %26 ], [ 1, %13 ], [ 1, %10 ], [ 1, %23 ], [ 1, %27 ] ; [#uses=1 type=i32]
  ret i32 %.4
}

end_hunk_7
begin_hunk_8
  br i1 %.not2437, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1
  %.fr41 = freeze i32 %7                          ; [#uses=1 type=i32]
  %9 = and i32 %.fr41, 1                          ; [#uses=1 type=i32]
  %.not = icmp eq i32 %9, 0                       ; [#uses=1 type=i1]
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

end_hunk_8
begin_hunk_9
9:                                                ; preds = %4
  %10 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 16, ptr %10, align 4, !tbaa !9
  br label %82

11:                                               ; preds = %4
  %12 = zext i32 %2 to i64                        ; [#uses=3 type=i64]
end_hunk_9
begin_hunk_10
  tail call void @serverLogRaw(i32 noundef 3, ptr noundef nonnull %.str.152.sink.i) #35
  %19 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 22, ptr %19, align 4, !tbaa !9
  br label %82

20:                                               ; preds = %16
  %21 = and i32 %2, 512                           ; [#uses=1 type=i32]
end_hunk_10
begin_hunk_11
.thread:                                          ; preds = %45, %48
  %.124.ph = phi i32 [ %50, %48 ], [ %46, %45 ]   ; [#uses=1 type=i32]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %75

51:                                               ; preds = %22
  %52 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 22, ptr %52, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %82

53:                                               ; preds = %20
  %54 = load i8, ptr %1, align 1, !tbaa !73       ; [#uses=1 type=i8]
  %.fr4244.i = freeze i8 %54                      ; [#uses=2 type=i8]
  %55 = icmp eq i8 %.fr4244.i, 0                  ; [#uses=1 type=i1]
  br i1 %55, label %68, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %53, %64
  %.fr4247.i = phi i8 [ %.fr42.i, %64 ], [ %.fr4244.i, %53 ] ; [#uses=4 type=i8]
  %.03446.i = phi i64 [ %65, %64 ], [ 0, %53 ]    ; [#uses=1 type=i64]
  %56 = and i8 %.fr4247.i, -33                    ; [#uses=1 type=i8]
  %57 = add i8 %56, -65                           ; [#uses=1 type=i8]
  %or.cond36.i = icmp ult i8 %57, 26              ; [#uses=1 type=i1]
  %58 = add i8 %.fr4247.i, -48                    ; [#uses=1 type=i8]
  %or.cond8.i = icmp ult i8 %58, 10               ; [#uses=1 type=i1]
  %or.cond.i35 = or i1 %or.cond8.i, %or.cond36.i  ; [#uses=1 type=i1]
  br i1 %or.cond.i35, label %64, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %.fr4247.i, label %59 [
    i8 95, label %64
    i8 45, label %64
  ]

59:                                               ; preds = %switch.early.test.i
  %60 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %61 = icmp sgt i32 %60, 3                       ; [#uses=1 type=i1]
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = sext i8 %.fr4247.i to i32                 ; [#uses=1 type=i32]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.153, i32 noundef %63, ptr noundef nonnull %1) #35
  br label %68

64:                                               ; preds = %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %65 = add i64 %.03446.i, 1                      ; [#uses=2 type=i64]
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 %65 ; [#uses=1 type=ptr]
  %67 = load i8, ptr %66, align 1, !tbaa !73      ; [#uses=1 type=i8]
  %.fr42.i = freeze i8 %67                        ; [#uses=2 type=i8]
  %.not.i36 = icmp eq i8 %.fr42.i, 0              ; [#uses=1 type=i1]
  br i1 %.not.i36, label %moduleVerifyResourceName.exit, label %.lr.ph.i, !llvm.loop !192

68:                                               ; preds = %53, %62, %59
  %69 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 22, ptr %69, align 4, !tbaa !9
  br label %82

moduleVerifyResourceName.exit:                    ; preds = %64
  %70 = tail call ptr @sdsempty() #35             ; [#uses=1 type=ptr]
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=1 type=ptr]
  %72 = load ptr, ptr %71, align 8, !tbaa !107    ; [#uses=1 type=ptr]
  %73 = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %70, ptr noundef nonnull @.str.160, ptr noundef %72, ptr noundef nonnull %1) #35 ; [#uses=2 type=ptr]
  %74 = tail call i32 @configExists(ptr noundef %73) #35 ; [#uses=1 type=i32]
  tail call void @sdsfree(ptr noundef %73) #35
  br label %75

75:                                               ; preds = %.thread, %moduleVerifyResourceName.exit
  %.225 = phi i32 [ %.124.ph, %.thread ], [ %74, %moduleVerifyResourceName.exit ] ; [#uses=1 type=i32]
  %.not34 = icmp eq i32 %.225, 0                  ; [#uses=1 type=i1]
  br i1 %.not34, label %82, label %76

76:                                               ; preds = %75
  %77 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105 ; [#uses=1 type=i32]
  %78 = icmp sgt i32 %77, 3                       ; [#uses=1 type=i1]
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.162, ptr noundef %1) #35
  br label %80

80:                                               ; preds = %76, %79
  %81 = tail call ptr @__errno_location() #40     ; [#uses=1 type=ptr]
  store i32 114, ptr %81, align 4, !tbaa !9
  br label %82

82:                                               ; preds = %51, %68, %80, %75, %18, %9
  %.2 = phi i32 [ 1, %18 ], [ 1, %9 ], [ 1, %80 ], [ 1, %68 ], [ 1, %51 ], [ 0, %75 ] ; [#uses=1 type=i32]
  ret i32 %.2
}

end_hunk_11
begin_hunk_12
  br label %moduleGetFreeEffort.exit

moduleGetFreeEffort.exit:                         ; preds = %19, %29
  %.0.i = phi i64 [ %25, %19 ], [ %32, %29 ]      ; [#uses=1 type=i64]
  %.0.i.fr = freeze i64 %.0.i                     ; [#uses=2 type=i64]
  %.not20 = icmp eq i64 %.0.i.fr, 0               ; [#uses=1 type=i1]
  %spec.select = select i1 %.not20, i64 -1, i64 %.0.i.fr ; [#uses=1 type=i64]
  br label %moduleGetFreeEffort.exit.thread

moduleGetFreeEffort.exit.thread:                  ; preds = %moduleGetFreeEffort.exit, %26
end_hunk_12
