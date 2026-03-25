begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %22 = alloca [32 x i32], align 16               ; 5 uses
  %23 = alloca [2 x i32], align 8                 ; 8 uses
  %24 = alloca [2 x i64], align 16                ; 7 uses
  %25 = alloca %struct.VP8LHashChain, align 8     ; 16 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %88, label %26

end_hunk_1
begin_hunk_2

.thread:                                          ; preds = %GetBackwardReferencesLowEffort.exit, %26
  %83 = tail call i32 @WebPEncodingSetError(ptr noundef %11, i32 noundef 1) #12
  br label %1381

GetBackwardReferencesLowEffort.exit.thread:       ; preds = %VP8LRefsCursorInit.exit.i.i, %28, %GetBackwardReferencesLowEffort.exit
  %84 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %85 = load ptr, ptr %84, align 8, !tbaa !8
  %86 = icmp eq ptr %85, %29
  br i1 %86, label %87, label %1377

87:                                               ; preds = %GetBackwardReferencesLowEffort.exit.thread
  store ptr %29, ptr %84, align 8, !tbaa !8
  br label %1377

88:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #12
end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #12
  br label %1377

.critedge:                                        ; preds = %186, %852, %343, %CalculateBestCacheSize.exit.i, %1301, %1181, %BackwardRefsWithLocalCache.exit.thread.i, %BackwardRefsClone.exit.i, %BackwardRefsClone.exit196.i, %88
  %1374 = load ptr, ptr %25, align 8, !tbaa !30
  call void @WebPSafeFree(ptr noundef %1374) #12
  %1375 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 0, ptr %1375, align 8, !tbaa !33
  store ptr null, ptr %25, align 8, !tbaa !30
  call void @VP8LFreeHistogram(ptr noundef %92) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #12
  %1376 = call i32 @WebPEncodingSetError(ptr noundef %11, i32 noundef 1) #12
  br label %1381

1377:                                             ; preds = %87, %GetBackwardReferencesLowEffort.exit.thread, %GetBackwardReferences.exit
  %1378 = load i32, ptr %13, align 4, !tbaa !3
  %1379 = add nsw i32 %1378, %12
  %1380 = call i32 @WebPReportProgress(ptr noundef %11, i32 noundef %1379, ptr noundef nonnull %13) #12
  br label %1381

1381:                                             ; preds = %.thread, %1377, %.critedge
  %.1 = phi i32 [ %1380, %1377 ], [ %83, %.thread ], [ %1376, %.critedge ]
  ret i32 %.1
}

end_hunk_3
