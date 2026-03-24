begin_hunk_0
  br label %41

41:                                               ; preds = %28, %34, %24, %35
  %42 = load i64, ptr %5, align 8, !tbaa !98      ; 3 uses
  %43 = and i64 %42, 2
  %.not.i = icmp ne i64 %43, 0                    ; 4 uses
  %44 = and i64 %42, 5
  %or.cond.i = icmp eq i64 %44, 1
  %or.cond = or i1 %.not.i, %or.cond.i
  %.pre = load i64, ptr %0, align 8, !tbaa !71
  %.not66 = icmp eq i64 %.pre, -1                 ; 3 uses
  br i1 %or.cond, label %getClientType.exit.thread, label %getClientType.exit

getClientType.exit:                               ; preds = %41
  br i1 %.not66, label %.thread98, label %88

getClientType.exit.thread:                        ; preds = %41
  %45 = and i64 %42, 18014398509481984
  %.not57 = icmp eq i64 %45, 0                    ; 2 uses
  %.str.13..str.11 = select i1 %.not57, ptr @.str.13, ptr @.str.11
  %.str.12..str.10 = select i1 %.not57, ptr @.str.12, ptr @.str.10
end_hunk_0
begin_hunk_1

; Function Attrs: nounwind uwtable
define dso_local void @addReplyBulkSds(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16                ; 8 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %5 = load i64, ptr %4, align 8, !tbaa !98       ; 7 uses
  %6 = and i64 %5, 134217984
end_hunk_1
begin_hunk_2

_prepareClientToWrite.exit:                       ; preds = %15, %9, %7
  tail call void @sdsfree(ptr noundef %1) #30
  br label %105

47:                                               ; preds = %2, %27, %43, %clientHasPendingReplies.exit.i, %18, %34, %37, %40, %24
  %48 = getelementptr i8, ptr %1, i64 -1          ; 2 uses
  %.val.i = load i8, ptr %48, align 1, !tbaa !17  ; 3 uses
  %49 = and i8 %.val.i, 7
  switch i8 %49, label %.thread [
    i8 0, label %50
    i8 1, label %54
    i8 2, label %58
    i8 3, label %62
    i8 4, label %66
  ]

.thread:                                          ; preds = %47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  br label %71

50:                                               ; preds = %47
  %51 = lshr i8 %.val.i, 3
  %52 = zext nneg i8 %51 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %53 = icmp ult i8 %.val.i, 80
  %.24 = select i1 %53, i64 4, i64 5
  br label %71

54:                                               ; preds = %47
  %55 = getelementptr inbounds i8, ptr %1, i64 -3
  %56 = load i8, ptr %55, align 1, !tbaa !17
  %57 = zext i8 %56 to i64
  br label %sdslen.exit

58:                                               ; preds = %47
  %59 = getelementptr inbounds i8, ptr %1, i64 -5
  %60 = load i16, ptr %59, align 1, !tbaa !18
  %61 = zext i16 %60 to i64
  br label %sdslen.exit

62:                                               ; preds = %47
  %63 = getelementptr inbounds i8, ptr %1, i64 -9
  %64 = load i32, ptr %63, align 1, !tbaa !9
  %65 = zext i32 %64 to i64
  br label %sdslen.exit

66:                                               ; preds = %47
  %67 = getelementptr inbounds i8, ptr %1, i64 -17
  %68 = load i64, ptr %67, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %54, %58, %62, %66
  %.0.i9 = phi i64 [ %68, %66 ], [ %65, %62 ], [ %57, %54 ], [ %61, %58 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %69 = icmp ult i64 %.0.i9, 32
  %70 = icmp slt i64 %.0.i9, 10
  %. = select i1 %70, i64 4, i64 5
  br i1 %69, label %71, label %77

71:                                               ; preds = %50, %sdslen.exit, %.thread
  %72 = phi i64 [ 4, %.thread ], [ %., %sdslen.exit ], [ %.24, %50 ]
  %.0.i91821 = phi i64 [ 0, %.thread ], [ %.0.i9, %sdslen.exit ], [ %52, %50 ]
  %73 = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81152), i64 %.0.i91821
  %74 = load ptr, ptr %73, align 8, !tbaa !170
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %76 = load ptr, ptr %75, align 8, !tbaa !14
  tail call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef %76, i64 noundef %72)
  br label %_addReplyLongLongWithPrefix.exit

77:                                               ; preds = %sdslen.exit
  store i8 36, ptr %3, align 16, !tbaa !17
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %79 = call i32 @ll2string(ptr noundef nonnull %78, i64 noundef 127, i64 noundef %.0.i9) #30 ; 2 uses
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, ptr %3, i64 %80         ; 2 uses
  %82 = getelementptr i8, ptr %81, i64 1
  store i8 13, ptr %82, align 1, !tbaa !17
  %83 = getelementptr i8, ptr %81, i64 2
  store i8 10, ptr %83, align 1, !tbaa !17
  %84 = add nsw i32 %79, 3
  %85 = sext i32 %84 to i64
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef %85)
  br label %_addReplyLongLongWithPrefix.exit

_addReplyLongLongWithPrefix.exit:                 ; preds = %71, %77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.val.i11 = load i8, ptr %48, align 1, !tbaa !17 ; 2 uses
  %86 = and i8 %.val.i11, 7
  switch i8 %86, label %sdslen.exit13 [
    i8 0, label %87
    i8 1, label %90
    i8 2, label %94
    i8 3, label %98
    i8 4, label %102
  ]

87:                                               ; preds = %_addReplyLongLongWithPrefix.exit
  %88 = lshr i8 %.val.i11, 3
  %89 = zext nneg i8 %88 to i64
  br label %sdslen.exit13

90:                                               ; preds = %_addReplyLongLongWithPrefix.exit
  %91 = getelementptr inbounds i8, ptr %1, i64 -3
  %92 = load i8, ptr %91, align 1, !tbaa !17
  %93 = zext i8 %92 to i64
  br label %sdslen.exit13

94:                                               ; preds = %_addReplyLongLongWithPrefix.exit
  %95 = getelementptr inbounds i8, ptr %1, i64 -5
  %96 = load i16, ptr %95, align 1, !tbaa !18
  %97 = zext i16 %96 to i64
  br label %sdslen.exit13

98:                                               ; preds = %_addReplyLongLongWithPrefix.exit
  %99 = getelementptr inbounds i8, ptr %1, i64 -9
  %100 = load i32, ptr %99, align 1, !tbaa !9
  %101 = zext i32 %100 to i64
  br label %sdslen.exit13

102:                                              ; preds = %_addReplyLongLongWithPrefix.exit
  %103 = getelementptr inbounds i8, ptr %1, i64 -17
  %104 = load i64, ptr %103, align 1, !tbaa !20
  br label %sdslen.exit13

sdslen.exit13:                                    ; preds = %_addReplyLongLongWithPrefix.exit, %87, %90, %94, %98, %102
  %.0.i12 = phi i64 [ %104, %102 ], [ %89, %87 ], [ %93, %90 ], [ %97, %94 ], [ %101, %98 ], [ 0, %_addReplyLongLongWithPrefix.exit ]
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %.0.i12)
  call void @sdsfree(ptr noundef nonnull %1) #30
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef 2)
  br label %105

105:                                              ; preds = %sdslen.exit13, %_prepareClientToWrite.exit
  ret void
}

end_hunk_2
begin_hunk_3
authRequired.exit:                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %.not5.i.not = icmp eq i32 %9, 0
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6512), align 8
  %spec.select = select i1 %.not5.i.not, i32 1, i32 %10
  br label %11
end_hunk_3
begin_hunk_4
.lr.ph:                                           ; preds = %5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %7 = load i8, ptr %6, align 1, !tbaa !83
  %.not35 = icmp eq i8 %7, 0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %.not35, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.thread, %.lr.ph
  br label %.lr.ph.split
end_hunk_4
begin_hunk_5
.lr.ph:                                           ; preds = %7
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %9 = load i8, ptr %8, align 1, !tbaa !83
  %.not126 = icmp eq i8 %9, 0
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %.not126, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.thread109, %.lr.ph
  br label %.lr.ph.split
end_hunk_5
