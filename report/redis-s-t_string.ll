begin_hunk_0
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; [#uses=1 type=ptr]
  %25 = load ptr, ptr %24, align 8, !tbaa !95     ; [#uses=2 type=ptr]
  %.not61 = icmp eq ptr %25, null                 ; [#uses=3 type=i1]
  %.pre = load i32, ptr %3, align 8, !tbaa !93    ; [#uses=7 type=i32]
  br i1 %.not61, label %getExpireMillisecondsOrReply.exit.thread, label %26

26:                                               ; preds = %23
end_hunk_0
begin_hunk_1
  br label %39

39:                                               ; preds = %37, %36
  %40 = and i32 %.pre, 12                         ; [#uses=1 type=i32]
  %or.cond20.i = icmp eq i32 %40, 0               ; [#uses=1 type=i1]
  br i1 %or.cond20.i, label %getExpireMillisecondsOrReply.exit.thread, label %thread-pre-split.i

end_hunk_1
begin_hunk_2
  br label %getExpireMillisecondsOrReply.exit

getExpireMillisecondsOrReply.exit.thread:         ; preds = %39, %thread-pre-split.i, %23
  %45 = and i32 %.pre, 3                          ; [#uses=1 type=i32]
  %.not63 = icmp ne i32 %45, 0                    ; [#uses=1 type=i1]
  %46 = load i64, ptr %2, align 8                 ; [#uses=2 type=i64]
  %.not6475 = icmp sgt i64 %46, 0                 ; [#uses=1 type=i1]
end_hunk_2
begin_hunk_3

.lr.ph:                                           ; preds = %getExpireMillisecondsOrReply.exit.thread
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; [#uses=4 type=ptr]
  %48 = trunc i32 %.pre to i1                     ; [#uses=1 type=i1]
  %49 = and i32 %.pre, 2                          ; [#uses=1 type=i32]
  %50 = icmp eq i32 %49, 0                        ; [#uses=2 type=i1]
  br i1 %48, label %.lr.ph.split, label %.lr.ph.split.us

end_hunk_3
begin_hunk_4
  br i1 %50, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %.lr.ph.split.us.split.us ], [ 0, %.lr.ph.split.us ] ; [#uses=2 type=i64]
  %51 = load ptr, ptr %47, align 8, !tbaa !44     ; [#uses=1 type=ptr]
  %52 = load ptr, ptr %5, align 8, !tbaa !15      ; [#uses=1 type=ptr]
  %.idx108 = shl nuw nsw i64 %indvars.iv91, 4     ; [#uses=1 type=i64]
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %.idx108 ; [#uses=1 type=ptr]
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 16 ; [#uses=1 type=ptr]
  %55 = load ptr, ptr %54, align 8, !tbaa !40     ; [#uses=1 type=ptr]
  %56 = call ptr @lookupKeyWrite(ptr noundef %51, ptr noundef %55) #11 ; [#uses=0 type=ptr]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; [#uses=2 type=i64]
  %57 = load i64, ptr %2, align 8, !tbaa !90      ; [#uses=2 type=i64]
  %.not64.us.us = icmp sgt i64 %57, %indvars.iv.next92 ; [#uses=1 type=i1]
  br i1 %.not64.us.us, label %.lr.ph.split.us.split.us, label %.critedge71, !llvm.loop !113

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %64
end_hunk_4
begin_hunk_5
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 16 ; [#uses=1 type=ptr]
  %62 = load ptr, ptr %61, align 8, !tbaa !40     ; [#uses=1 type=ptr]
  %63 = call ptr @lookupKeyWrite(ptr noundef %58, ptr noundef %62) #11 ; [#uses=1 type=ptr]
  %.not84 = icmp eq ptr %63, null                 ; [#uses=1 type=i1]
  br i1 %.not84, label %.critedge, label %64

64:                                               ; preds = %.lr.ph.split.us.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; [#uses=2 type=i64]
end_hunk_5
begin_hunk_6
  br i1 %50, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %72
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %72 ], [ 0, %.lr.ph.split ] ; [#uses=2 type=i64]
  %66 = load ptr, ptr %47, align 8, !tbaa !44     ; [#uses=1 type=ptr]
  %67 = load ptr, ptr %5, align 8, !tbaa !15      ; [#uses=1 type=ptr]
  %.idx109 = shl nuw nsw i64 %indvars.iv94, 4     ; [#uses=1 type=i64]
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 %.idx109 ; [#uses=1 type=ptr]
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 16 ; [#uses=1 type=ptr]
  %70 = load ptr, ptr %69, align 8, !tbaa !40     ; [#uses=1 type=ptr]
  %71 = call ptr @lookupKeyWrite(ptr noundef %66, ptr noundef %70) #11 ; [#uses=1 type=ptr]
  %.not86 = icmp eq ptr %71, null                 ; [#uses=1 type=i1]
  br i1 %.not86, label %72, label %.critedge

72:                                               ; preds = %.lr.ph.split.split.us
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; [#uses=2 type=i64]
  %73 = load i64, ptr %2, align 8, !tbaa !90      ; [#uses=2 type=i64]
  %.not64.us78 = icmp sgt i64 %73, %indvars.iv.next95 ; [#uses=1 type=i1]
  br i1 %.not64.us78, label %.lr.ph.split.split.us, label %.critedge71, !llvm.loop !113

.lr.ph.split.split:                               ; preds = %.lr.ph.split
end_hunk_6
begin_hunk_7
  br i1 %81, label %.lr.ph83, label %._crit_edge

.lr.ph83:                                         ; preds = %.critedge71
  %82 = and i32 %.pre, 16                         ; [#uses=2 type=i32]
  %.not67 = icmp ne i32 %82, 0                    ; [#uses=1 type=i1]
  %.lobit = lshr exact i32 %82, 4                 ; [#uses=1 type=i32]
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; [#uses=4 type=ptr]
end_hunk_7
begin_hunk_8

._crit_edge:                                      ; preds = %115, %.critedge71
  %84 = phi i64 [ %80, %.critedge71 ], [ %122, %115 ] ; [#uses=2 type=i64]
  %85 = and i32 %.pre, 128                        ; [#uses=1 type=i32]
  %.not66 = icmp ne i32 %85, 0                    ; [#uses=1 type=i1]
  %or.cond74.not = or i1 %.not61, %.not66         ; [#uses=1 type=i1]
  br i1 %or.cond74.not, label %135, label %124

86:                                               ; preds = %.lr.ph83, %115
  %indvars.iv97 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next98, %115 ] ; [#uses=2 type=i64]
  %87 = shl nuw nsw i64 %indvars.iv97, 1          ; [#uses=2 type=i64]
  %88 = add nuw nsw i64 %87, 2                    ; [#uses=4 type=i64]
  %89 = add nuw nsw i64 %87, 3                    ; [#uses=3 type=i64]
  %90 = load ptr, ptr %5, align 8, !tbaa !15      ; [#uses=1 type=ptr]
end_hunk_8
begin_hunk_9
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 72 ; [#uses=1 type=ptr]
  %121 = load i32, ptr %120, align 8, !tbaa !70   ; [#uses=1 type=i32]
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef %118, i32 noundef %121) #11
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; [#uses=2 type=i64]
  %122 = load i64, ptr %2, align 8, !tbaa !90     ; [#uses=2 type=i64]
  %123 = icmp sgt i64 %122, %indvars.iv.next98    ; [#uses=1 type=i1]
  br i1 %123, label %86, label %._crit_edge, !llvm.loop !114

124:                                              ; preds = %._crit_edge
  %125 = and i32 %.pre, 64                        ; [#uses=1 type=i32]
  %126 = icmp eq i32 %125, 0                      ; [#uses=1 type=i1]
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; [#uses=1 type=ptr]
  %128 = load i32, ptr %127, align 8              ; [#uses=3 type=i32]
end_hunk_9
begin_hunk_10
  %134 = add nuw nsw i32 %128, 1                  ; [#uses=1 type=i32]
  call void @rewriteClientCommandArgument(ptr noundef nonnull %0, i32 noundef %134, ptr noundef %132) #11
  call void @decrRefCount(ptr noundef %132) #11
  %.pre100 = load i64, ptr %2, align 8, !tbaa !90 ; [#uses=1 type=i64]
  br label %135

135:                                              ; preds = %130, %124, %._crit_edge
  %136 = phi i64 [ %.pre100, %130 ], [ %84, %124 ], [ %84, %._crit_edge ] ; [#uses=1 type=i64]
  %137 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !47 ; [#uses=1 type=i64]
  %138 = add nsw i64 %137, %136                   ; [#uses=1 type=i64]
  store i64 %138, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !47
end_hunk_10
