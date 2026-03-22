begin_hunk_0
  ret i64 %3
}

; [#uses=98]
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

end_hunk_0
begin_hunk_1
  br label %41

41:                                               ; preds = %28, %34, %24, %35
  %42 = load i64, ptr %5, align 8, !tbaa !98      ; [#uses=3 type=i64]
  %43 = and i64 %42, 2                            ; [#uses=1 type=i64]
  %.not.i = icmp ne i64 %43, 0                    ; [#uses=4 type=i1]
  %44 = and i64 %42, 5                            ; [#uses=1 type=i64]
  %or.cond.i = icmp eq i64 %44, 1                 ; [#uses=1 type=i1]
  %or.cond = or i1 %.not.i, %or.cond.i            ; [#uses=1 type=i1]
  %.pre = load i64, ptr %0, align 8, !tbaa !71    ; [#uses=1 type=i64]
  %.not66 = icmp eq i64 %.pre, -1                 ; [#uses=3 type=i1]
  br i1 %or.cond, label %getClientType.exit.thread, label %getClientType.exit

getClientType.exit:                               ; preds = %41
  br i1 %.not66, label %.thread98, label %88

getClientType.exit.thread:                        ; preds = %41
  %45 = and i64 %42, 18014398509481984            ; [#uses=1 type=i64]
  %.not57 = icmp eq i64 %45, 0                    ; [#uses=2 type=i1]
  %.str.13..str.11 = select i1 %.not57, ptr @.str.13, ptr @.str.11 ; [#uses=1 type=ptr]
  %.str.12..str.10 = select i1 %.not57, ptr @.str.12, ptr @.str.10 ; [#uses=1 type=ptr]
end_hunk_1
begin_hunk_2
; [#uses=0]
; Function Attrs: nounwind uwtable
define dso_local void @addReplyBulkSds(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16                ; [#uses=8 type=ptr]
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=3 type=ptr]
  %5 = load i64, ptr %4, align 8, !tbaa !98       ; [#uses=7 type=i64]
  %6 = and i64 %5, 134217984                      ; [#uses=1 type=i64]
end_hunk_2
begin_hunk_3

47:                                               ; preds = %2, %27, %43, %clientHasPendingReplies.exit.i, %18, %34, %37, %40, %24
  %48 = getelementptr i8, ptr %1, i64 -1          ; [#uses=2 type=ptr]
  %.val.i = load i8, ptr %48, align 1, !tbaa !17  ; [#uses=3 type=i8]
  %49 = and i8 %.val.i, 7                         ; [#uses=1 type=i8]
  switch i8 %49, label %.thread [
    i8 0, label %sdslen.exit.thread
    i8 1, label %53
    i8 2, label %57
    i8 3, label %61
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  br label %70

sdslen.exit.thread:                               ; preds = %47
  %50 = lshr i8 %.val.i, 3                        ; [#uses=1 type=i8]
  %51 = zext nneg i8 %50 to i64                   ; [#uses=1 type=i64]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %52 = icmp ult i8 %.val.i, 80                   ; [#uses=1 type=i1]
  %.24 = select i1 %52, i64 4, i64 5              ; [#uses=1 type=i64]
  br label %70

53:                                               ; preds = %47
  %54 = getelementptr inbounds i8, ptr %1, i64 -3 ; [#uses=1 type=ptr]
end_hunk_4
begin_hunk_5
  %67 = load i64, ptr %66, align 1, !tbaa !20     ; [#uses=1 type=i64]
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %53, %57, %61, %65
  %.0.i9 = phi i64 [ %67, %65 ], [ %64, %61 ], [ %56, %53 ], [ %60, %57 ] ; [#uses=4 type=i64]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %68 = icmp ult i64 %.0.i9, 32                   ; [#uses=1 type=i1]
  %69 = icmp slt i64 %.0.i9, 10                   ; [#uses=1 type=i1]
  %. = select i1 %69, i64 4, i64 5                ; [#uses=1 type=i64]
  br i1 %68, label %70, label %76

70:                                               ; preds = %sdslen.exit.thread, %sdslen.exit, %.thread
  %71 = phi i64 [ 4, %.thread ], [ %., %sdslen.exit ], [ %.24, %sdslen.exit.thread ] ; [#uses=1 type=i64]
  %.0.i91821 = phi i64 [ 0, %.thread ], [ %.0.i9, %sdslen.exit ], [ %51, %sdslen.exit.thread ] ; [#uses=1 type=i64]
  %72 = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81152), i64 %.0.i91821 ; [#uses=1 type=ptr]
  %73 = load ptr, ptr %72, align 8, !tbaa !170    ; [#uses=1 type=ptr]
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 8 ; [#uses=1 type=ptr]
end_hunk_5
begin_hunk_6
76:                                               ; preds = %sdslen.exit
  store i8 36, ptr %3, align 16, !tbaa !17
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; [#uses=1 type=ptr]
  %78 = call i32 @ll2string(ptr noundef nonnull %77, i64 noundef 127, i64 noundef %.0.i9) #30 ; [#uses=2 type=i32]
  %79 = sext i32 %78 to i64                       ; [#uses=1 type=i64]
  %80 = getelementptr i8, ptr %3, i64 %79         ; [#uses=2 type=ptr]
  %81 = getelementptr i8, ptr %80, i64 1          ; [#uses=1 type=ptr]
end_hunk_6
begin_hunk_7
authRequired.exit:                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 352 ; [#uses=1 type=ptr]
  %9 = load i32, ptr %8, align 8, !tbaa !74       ; [#uses=1 type=i32]
  %.not5.i.not = icmp eq i32 %9, 0                ; [#uses=1 type=i1]
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6512), align 8 ; [#uses=1 type=i32]
  %spec.select = select i1 %.not5.i.not, i32 1, i32 %10 ; [#uses=1 type=i32]
  br label %11
end_hunk_7
begin_hunk_8
define internal fastcc void @releaseBufReferences(ptr noundef captures(address_is_null) %0, ptr noundef captures(address) %1, i64 noundef %2) unnamed_addr #0 {
  %.not = icmp eq ptr %0, null                    ; [#uses=1 type=i1]
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; [#uses=2 type=ptr]
  %.not2332 = icmp eq i64 %2, 0                   ; [#uses=2 type=i1]
  br i1 %.not, label %.thread, label %5

5:                                                ; preds = %3
  br i1 %.not2332, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %3
  br i1 %.not2332, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph:                                           ; preds = %5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 25 ; [#uses=1 type=ptr]
  %7 = load i8, ptr %6, align 1, !tbaa !83        ; [#uses=1 type=i8]
  %.not35 = icmp eq i8 %7, 0                      ; [#uses=1 type=i1]
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; [#uses=3 type=ptr]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 188 ; [#uses=2 type=ptr]
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; [#uses=3 type=ptr]
  br i1 %.not35, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.thread, %.lr.ph
  br label %.lr.ph.split
end_hunk_8
begin_hunk_9
define internal fastcc ptr @processSentDataInEncodedBuffer(ptr noundef captures(address_is_null) %0, ptr noundef captures(address, ret: address, provenance) %1, ptr noundef readnone captures(address) %2, ptr noundef captures(none) %3, ptr noundef nonnull captures(none) %4) unnamed_addr #0 {
  %.not = icmp eq ptr %0, null                    ; [#uses=1 type=i1]
  %6 = icmp ult ptr %1, %2                        ; [#uses=2 type=i1]
  br i1 %.not, label %.thread108, label %7

7:                                                ; preds = %5
  br i1 %6, label %.lr.ph, label %.critedge

.thread108:                                       ; preds = %5
  br i1 %6, label %.lr.ph.split.preheader, label %.critedge

.lr.ph:                                           ; preds = %7
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 25 ; [#uses=1 type=ptr]
  %9 = load i8, ptr %8, align 1, !tbaa !83        ; [#uses=1 type=i8]
  %.not126 = icmp eq i8 %9, 0                     ; [#uses=1 type=i1]
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; [#uses=3 type=ptr]
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 188 ; [#uses=2 type=ptr]
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; [#uses=3 type=ptr]
  br i1 %.not126, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.thread108, %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %73
end_hunk_9
begin_hunk_10
  %131 = icmp ult ptr %130, %2                    ; [#uses=1 type=i1]
  br i1 %131, label %.lr.ph.split, label %.critedge, !llvm.loop !387

.critedge:                                        ; preds = %.lr.ph.split.us, %73, %.lr.ph.split, %127, %.thread108, %7
  %.046.lcssa = phi ptr [ %1, %7 ], [ %1, %.thread108 ], [ %.04667, %.lr.ph.split ], [ %130, %127 ], [ %.04667.us, %.lr.ph.split.us ], [ %76, %73 ] ; [#uses=2 type=ptr]
  %132 = icmp eq ptr %.046.lcssa, %2              ; [#uses=1 type=i1]
  %133 = select i1 %132, ptr null, ptr %.046.lcssa ; [#uses=1 type=ptr]
  br label %.thread58
end_hunk_10
