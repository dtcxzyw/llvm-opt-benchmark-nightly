begin_hunk_0
  br label %41

41:                                               ; preds = %28, %34, %24, %35
  %42 = load i64, ptr %5, align 8, !tbaa !98
  %.fr102 = freeze i64 %42                        ; 3 uses
  %43 = and i64 %.fr102, 2
  %.not.i = icmp ne i64 %43, 0                    ; 4 uses
  %44 = and i64 %.fr102, 5
  %or.cond.i = icmp eq i64 %44, 1
  %or.cond = or i1 %.not.i, %or.cond.i
  %.pre = load i64, ptr %0, align 8, !tbaa !71
  %.pre.fr = freeze i64 %.pre
  %.not66 = icmp eq i64 %.pre.fr, -1              ; 3 uses
  br i1 %or.cond, label %getClientType.exit.thread, label %getClientType.exit

getClientType.exit:                               ; preds = %41
  br i1 %.not66, label %.thread98, label %88

getClientType.exit.thread:                        ; preds = %41
  %45 = and i64 %.fr102, 18014398509481984
  %.not57 = icmp eq i64 %45, 0                    ; 2 uses
  %.str.13..str.11 = select i1 %.not57, ptr @.str.13, ptr @.str.11
  %.str.12..str.10 = select i1 %.not57, ptr @.str.12, ptr @.str.10
end_hunk_0
begin_hunk_1

; Function Attrs: nounwind uwtable
define dso_local void @addReplyBulkSds(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16                ; 7 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %5 = load i64, ptr %4, align 8, !tbaa !98       ; 7 uses
  %6 = and i64 %5, 134217984
end_hunk_1
begin_hunk_2

_prepareClientToWrite.exit:                       ; preds = %15, %9, %7
  tail call void @sdsfree(ptr noundef %1) #30
  br label %104

47:                                               ; preds = %2, %27, %43, %clientHasPendingReplies.exit.i, %18, %34, %37, %40, %24
  %48 = getelementptr i8, ptr %1, i64 -1          ; 2 uses
  %.val.i = load i8, ptr %48, align 1, !tbaa !17  ; 2 uses
  %49 = and i8 %.val.i, 7
  switch i8 %49, label %.thread [
    i8 0, label %50
    i8 1, label %53
    i8 2, label %57
    i8 3, label %61
    i8 4, label %65
  ]

.thread:                                          ; preds = %47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  br label %70

50:                                               ; preds = %47
  %51 = lshr i8 %.val.i, 3
  %52 = zext nneg i8 %51 to i64
  br label %sdslen.exit

53:                                               ; preds = %47
  %54 = getelementptr inbounds i8, ptr %1, i64 -3
  %55 = load i8, ptr %54, align 1, !tbaa !17
  %56 = zext i8 %55 to i64
  br label %sdslen.exit

57:                                               ; preds = %47
  %58 = getelementptr inbounds i8, ptr %1, i64 -5
  %59 = load i16, ptr %58, align 1, !tbaa !18
  %60 = zext i16 %59 to i64
  br label %sdslen.exit

61:                                               ; preds = %47
  %62 = getelementptr inbounds i8, ptr %1, i64 -9
  %63 = load i32, ptr %62, align 1, !tbaa !9
  %64 = zext i32 %63 to i64
  br label %sdslen.exit

65:                                               ; preds = %47
  %66 = getelementptr inbounds i8, ptr %1, i64 -17
  %67 = load i64, ptr %66, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %50, %53, %57, %61, %65
  %.0.i9 = phi i64 [ %67, %65 ], [ %52, %50 ], [ %56, %53 ], [ %60, %57 ], [ %64, %61 ]
  %.0.i9.fr = freeze i64 %.0.i9                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %68 = icmp ult i64 %.0.i9.fr, 32
  %69 = icmp samesign ult i64 %.0.i9.fr, 10
  %. = select i1 %69, i64 4, i64 5
  br i1 %68, label %70, label %76

70:                                               ; preds = %sdslen.exit, %.thread
  %71 = phi i64 [ 4, %.thread ], [ %., %sdslen.exit ]
  %.0.i91821 = phi i64 [ 0, %.thread ], [ %.0.i9.fr, %sdslen.exit ]
  %72 = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81152), i64 %.0.i91821
  %73 = load ptr, ptr %72, align 8, !tbaa !170
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 8
  %75 = load ptr, ptr %74, align 8, !tbaa !14
  tail call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef %75, i64 noundef %71)
  br label %_addReplyLongLongWithPrefix.exit

76:                                               ; preds = %sdslen.exit
  store i8 36, ptr %3, align 16, !tbaa !17
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %78 = call i32 @ll2string(ptr noundef nonnull %77, i64 noundef 127, i64 noundef %.0.i9.fr) #30 ; 2 uses
  %79 = sext i32 %78 to i64
  %80 = getelementptr i8, ptr %3, i64 %79         ; 2 uses
  %81 = getelementptr i8, ptr %80, i64 1
  store i8 13, ptr %81, align 1, !tbaa !17
  %82 = getelementptr i8, ptr %80, i64 2
  store i8 10, ptr %82, align 1, !tbaa !17
  %83 = add nsw i32 %78, 3
  %84 = sext i32 %83 to i64
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef %84)
  br label %_addReplyLongLongWithPrefix.exit

_addReplyLongLongWithPrefix.exit:                 ; preds = %70, %76
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.val.i11 = load i8, ptr %48, align 1, !tbaa !17 ; 2 uses
  %85 = and i8 %.val.i11, 7
  switch i8 %85, label %sdslen.exit13 [
    i8 0, label %86
    i8 1, label %89
    i8 2, label %93
    i8 3, label %97
    i8 4, label %101
  ]

86:                                               ; preds = %_addReplyLongLongWithPrefix.exit
  %87 = lshr i8 %.val.i11, 3
  %88 = zext nneg i8 %87 to i64
  br label %sdslen.exit13

89:                                               ; preds = %_addReplyLongLongWithPrefix.exit
  %90 = getelementptr inbounds i8, ptr %1, i64 -3
  %91 = load i8, ptr %90, align 1, !tbaa !17
  %92 = zext i8 %91 to i64
  br label %sdslen.exit13

93:                                               ; preds = %_addReplyLongLongWithPrefix.exit
  %94 = getelementptr inbounds i8, ptr %1, i64 -5
  %95 = load i16, ptr %94, align 1, !tbaa !18
  %96 = zext i16 %95 to i64
  br label %sdslen.exit13

97:                                               ; preds = %_addReplyLongLongWithPrefix.exit
  %98 = getelementptr inbounds i8, ptr %1, i64 -9
  %99 = load i32, ptr %98, align 1, !tbaa !9
  %100 = zext i32 %99 to i64
  br label %sdslen.exit13

101:                                              ; preds = %_addReplyLongLongWithPrefix.exit
  %102 = getelementptr inbounds i8, ptr %1, i64 -17
  %103 = load i64, ptr %102, align 1, !tbaa !20
  br label %sdslen.exit13

sdslen.exit13:                                    ; preds = %_addReplyLongLongWithPrefix.exit, %86, %89, %93, %97, %101
  %.0.i12 = phi i64 [ %103, %101 ], [ %88, %86 ], [ %92, %89 ], [ %96, %93 ], [ %100, %97 ], [ 0, %_addReplyLongLongWithPrefix.exit ]
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %.0.i12)
  call void @sdsfree(ptr noundef nonnull %1) #30
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef 2)
  br label %104

104:                                              ; preds = %sdslen.exit13, %_prepareClientToWrite.exit
  ret void
}

end_hunk_2
begin_hunk_3
authRequired.exit:                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %.fr = freeze i32 %9
  %.not5.i.not = icmp eq i32 %.fr, 0
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6512), align 8
  %spec.select = select i1 %.not5.i.not, i32 1, i32 %10
  br label %11
end_hunk_3
begin_hunk_4
.lr.ph:                                           ; preds = %5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %7 = load i8, ptr %6, align 1, !tbaa !83
  %.fr24 = freeze i8 %7
  %.not39 = icmp eq i8 %.fr24, 0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %.not39, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.thread, %.lr.ph
  br label %.lr.ph.split
end_hunk_4
begin_hunk_5
.lr.ph:                                           ; preds = %7
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %9 = load i8, ptr %8, align 1, !tbaa !83
  %.fr77 = freeze i8 %9
  %.not130 = icmp eq i8 %.fr77, 0
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %.not130, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.thread109, %.lr.ph
  br label %.lr.ph.split
end_hunk_5
