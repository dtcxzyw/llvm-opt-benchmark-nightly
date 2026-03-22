begin_hunk_0

.lr.ph:                                           ; preds = %1
  %10 = icmp eq i64 %3, %6                        ; [#uses=1 type=i1]
  br i1 %10, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %47
  %11 = phi i32 [ %49, %47 ], [ %8, %.lr.ph ]     ; [#uses=1 type=i32]
end_hunk_0
begin_hunk_1

78:                                               ; preds = %sdslen.exit
  %79 = load i8, ptr %55, align 1, !tbaa !110     ; [#uses=1 type=i8]
  %80 = icmp ne i8 %79, 42                        ; [#uses=1 type=i1]
  %81 = zext i1 %80 to i32                        ; [#uses=1 type=i32]
  br label %sdslen.exit.thread

end_hunk_1
begin_hunk_2
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; [#uses=2 type=ptr]
  %142 = load ptr, ptr %141, align 8, !tbaa !102  ; [#uses=1 type=ptr]
  store ptr %142, ptr %140, align 8, !tbaa !167
  %or.cond11 = select i1 %16, i1 %134, i1 false   ; [#uses=1 type=i1]
  %143 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8 ; [#uses=1 type=i32]
  %144 = icmp ne i32 %143, 0                      ; [#uses=1 type=i1]
  %or.cond13 = select i1 %or.cond11, i1 %144, i1 false ; [#uses=1 type=i1]
end_hunk_2
begin_hunk_3
  br i1 %16, label %.split384.us.preheader, label %.split384

.split384.us.preheader:                           ; preds = %.thread, %146
  %.0225448 = phi i32 [ %145, %.thread ], [ -1, %146 ] ; [#uses=1 type=i32]
  br label %.split384.us

.split384.us:                                     ; preds = %.split384.us.preheader, %150
end_hunk_3
begin_hunk_4
  %.0.us = phi i64 [ %149, %150 ], [ %2, %.split384.us.preheader ] ; [#uses=1 type=i64]
  %147 = load ptr, ptr %141, align 8, !tbaa !102  ; [#uses=1 type=ptr]
  %148 = load ptr, ptr %147, align 8, !tbaa !49   ; [#uses=1 type=ptr]
  %149 = call i64 @kvstoreScan(ptr noundef %148, i64 noundef %.0.us, i32 noundef %.0225448, ptr noundef nonnull @scanCallback, ptr noundef nonnull @scanShouldSkipDict, ptr noundef nonnull %5) #21 ; [#uses=4 type=i64]
  %.not259.us = icmp eq i64 %149, 0               ; [#uses=1 type=i1]
  %.not260.us = icmp eq i64 %.0226.us, 0          ; [#uses=1 type=i1]
  %or.cond274.us = select i1 %.not259.us, i1 true, i1 %.not260.us ; [#uses=1 type=i1]
end_hunk_4
begin_hunk_5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; [#uses=6 type=ptr]
  %7 = load ptr, ptr %6, align 8, !tbaa !102      ; [#uses=5 type=ptr]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 72 ; [#uses=1 type=ptr]
  %9 = load i32, ptr %8, align 8, !tbaa !92       ; [#uses=9 type=i32]
  store i32 %9, ptr %2, align 4, !tbaa !9
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; [#uses=3 type=ptr]
  %11 = load i32, ptr %10, align 8, !tbaa !135    ; [#uses=3 type=i32]
  %12 = icmp sgt i32 %11, 3                       ; [#uses=1 type=i1]
end_hunk_5
begin_hunk_6

.lr.ph:                                           ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; [#uses=2 type=ptr]
  %14 = icmp sgt i32 %9, -1                       ; [#uses=1 type=i1]
  %15 = zext nneg i32 %9 to i64                   ; [#uses=1 type=i64]
  br i1 %14, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %selectDb.exit116.us
  %16 = phi i32 [ %44, %selectDb.exit116.us ], [ %9, %.lr.ph ] ; [#uses=1 type=i32]
  %17 = phi i32 [ %45, %selectDb.exit116.us ], [ %11, %.lr.ph ] ; [#uses=2 type=i32]
  %.0126.us = phi ptr [ %.2.us, %selectDb.exit116.us ], [ %7, %.lr.ph ] ; [#uses=1 type=ptr]
  %.091125.us = phi i32 [ %46, %selectDb.exit116.us ], [ 3, %.lr.ph ] ; [#uses=4 type=i32]
end_hunk_6
begin_hunk_7
  br i1 %47, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !195

.lr.ph.split:                                     ; preds = %.lr.ph, %selectDb.exit116
  %48 = phi i32 [ %80, %selectDb.exit116 ], [ %9, %.lr.ph ] ; [#uses=1 type=i32]
  %49 = phi i32 [ %82, %selectDb.exit116 ], [ %11, %.lr.ph ] ; [#uses=1 type=i32]
  %.0126 = phi ptr [ %.2, %selectDb.exit116 ], [ %7, %.lr.ph ] ; [#uses=1 type=ptr]
  %.091125 = phi i32 [ %81, %selectDb.exit116 ], [ 3, %.lr.ph ] ; [#uses=4 type=i32]
end_hunk_7
begin_hunk_8
  %75 = getelementptr inbounds nuw [96 x i8], ptr %73, i64 %74 ; [#uses=3 type=ptr]
  store ptr %75, ptr %6, align 8, !tbaa !102
  %76 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4 ; [#uses=1 type=i32]
  %.not.i113 = icmp slt i32 %9, %76               ; [#uses=1 type=i1]
  br i1 %.not.i113, label %77, label %selectDb.exit116

77:                                               ; preds = %72
end_hunk_8
begin_hunk_9
  br i1 %83, label %.lr.ph.split, label %._crit_edge, !llvm.loop !195

._crit_edge:                                      ; preds = %selectDb.exit116.us, %selectDb.exit116, %1
  %84 = phi i32 [ %9, %1 ], [ %80, %selectDb.exit116 ], [ %44, %selectDb.exit116.us ] ; [#uses=2 type=i32]
  %.094.lcssa = phi i32 [ 0, %1 ], [ %.296, %selectDb.exit116 ], [ %.296.us, %selectDb.exit116.us ] ; [#uses=1 type=i32]
  %.0.lcssa = phi ptr [ %7, %1 ], [ %.2, %selectDb.exit116 ], [ %.2.us, %selectDb.exit116.us ] ; [#uses=9 type=ptr]
  %85 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !108 ; [#uses=1 type=i32]
end_hunk_9
begin_hunk_10
  br i1 %86, label %87, label %91

87:                                               ; preds = %._crit_edge
  %88 = icmp ne i32 %9, 0                         ; [#uses=1 type=i1]
  %89 = icmp ne i32 %84, 0                        ; [#uses=1 type=i1]
  %or.cond3 = select i1 %88, i1 true, i1 %89      ; [#uses=1 type=i1]
  br i1 %or.cond3, label %90, label %91
end_hunk_10
begin_hunk_11
  %103 = load ptr, ptr %102, align 8, !tbaa !64   ; [#uses=1 type=ptr]
  %104 = call i32 @sdscmp(ptr noundef %101, ptr noundef %103) #21 ; [#uses=1 type=i32]
  %105 = icmp eq i32 %104, 0                      ; [#uses=1 type=i1]
  br i1 %105, label %106, label %._crit_edge135

._crit_edge135:                                   ; preds = %99
  %.pre136 = load i32, ptr %2, align 4            ; [#uses=1 type=i32]
  br label %108

106:                                              ; preds = %99
end_hunk_11
begin_hunk_12
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %107) #21
  br label %.critedge

108:                                              ; preds = %._crit_edge135, %91
  %109 = phi i32 [ %.pre136, %._crit_edge135 ], [ %84, %91 ] ; [#uses=1 type=i32]
  %110 = icmp ne i32 %9, 0                        ; [#uses=1 type=i1]
  %111 = icmp ne i32 %109, 0                      ; [#uses=1 type=i1]
  %or.cond5 = select i1 %110, i1 true, i1 %111    ; [#uses=1 type=i1]
  br i1 %or.cond5, label %112, label %115
end_hunk_12
begin_hunk_13
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.043 = phi i32 [ 2, %.preheader.lr.ph ], [ %.pre-phi, %.loopexit ] ; [#uses=3 type=i32]
  %.02742 = phi i32 [ 0, %.preheader.lr.ph ], [ %.128, %.loopexit ] ; [#uses=3 type=i32]
  %34 = sext i32 %.043 to i64                     ; [#uses=1 type=i64]
  %35 = getelementptr inbounds [8 x i8], ptr %1, i64 %34 ; [#uses=1 type=ptr]
  %36 = load ptr, ptr %35, align 8, !tbaa !103    ; [#uses=1 type=ptr]
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8 ; [#uses=1 type=ptr]
  %38 = load ptr, ptr %37, align 8, !tbaa !64     ; [#uses=6 type=ptr]
  %39 = add nsw i32 %.043, 1                      ; [#uses=5 type=i32]
  %40 = icmp slt i32 %39, %2                      ; [#uses=1 type=i1]
  %41 = tail call i32 @strcasecmp(ptr noundef %38, ptr noundef nonnull @.str.73) #25 ; [#uses=1 type=i32]
  %.not33.us = icmp eq i32 %41, 0                 ; [#uses=2 type=i1]
end_hunk_13
begin_hunk_14
  %.us-phi = phi ptr [ getelementptr inbounds nuw (i8, ptr @__const.sortGetKeys.skiplist, i64 32), %.preheader.split.us.2 ], [ @__const.sortGetKeys.skiplist, %.preheader.split.us.preheader ], [ getelementptr inbounds nuw (i8, ptr @__const.sortGetKeys.skiplist, i64 16), %.preheader.split.us.1 ], [ @__const.sortGetKeys.skiplist, %.preheader.split.preheader ], [ getelementptr inbounds nuw (i8, ptr @__const.sortGetKeys.skiplist, i64 16), %.preheader.split.1 ], [ getelementptr inbounds nuw (i8, ptr @__const.sortGetKeys.skiplist, i64 32), %.preheader.split.2 ] ; [#uses=1 type=ptr]
  %46 = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8 ; [#uses=1 type=ptr]
  %47 = load i32, ptr %46, align 8, !tbaa !252    ; [#uses=1 type=i32]
  %48 = add nsw i32 %47, %.043                    ; [#uses=1 type=i32]
  %.pre = add nsw i32 %48, 1                      ; [#uses=1 type=i32]
  br label %.loopexit

end_hunk_14
begin_hunk_15
  br i1 %.not, label %12, label %14

12:                                               ; preds = %.lr.ph
  %13 = add nsw i32 %.04361, 1                    ; [#uses=1 type=i32]
  br label %26

14:                                               ; preds = %.lr.ph
end_hunk_15
begin_hunk_16
  br i1 %.not47, label %16, label %18

16:                                               ; preds = %14
  %17 = add nsw i32 %.04361, 1                    ; [#uses=1 type=i32]
  br label %26

18:                                               ; preds = %14
end_hunk_16
begin_hunk_17
  br i1 %.not48, label %20, label %22

20:                                               ; preds = %18
  %21 = add nsw i32 %.04361, 2                    ; [#uses=1 type=i32]
  br label %26

22:                                               ; preds = %18
end_hunk_17
begin_hunk_18

26:                                               ; preds = %16, %22, %20, %12
  %.245.ph = phi i32 [ %13, %12 ], [ %17, %16 ], [ %21, %20 ], [ %.04361, %22 ] ; [#uses=1 type=i32]
  %27 = add nsw i32 %.245.ph, 1                   ; [#uses=2 type=i32]
  %28 = icmp slt i32 %27, %2                      ; [#uses=1 type=i1]
  br i1 %28, label %.lr.ph, label %.loopexit, !llvm.loop !259

end_hunk_18
