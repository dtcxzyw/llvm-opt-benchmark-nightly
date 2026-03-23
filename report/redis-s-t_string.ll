begin_hunk_0
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %25 = load ptr, ptr %24, align 8, !tbaa !95     ; 2 uses
  %.not61 = icmp eq ptr %25, null                 ; 3 uses
  %.pre = load i32, ptr %3, align 8, !tbaa !93    ; 7 uses
  br i1 %.not61, label %getExpireMillisecondsOrReply.exit.thread, label %26

26:                                               ; preds = %23
end_hunk_0
begin_hunk_1
  br label %39

39:                                               ; preds = %37, %36
  %40 = and i32 %.pre, 12
  %or.cond20.i = icmp eq i32 %40, 0
  br i1 %or.cond20.i, label %getExpireMillisecondsOrReply.exit.thread, label %thread-pre-split.i

end_hunk_1
begin_hunk_2
  br label %getExpireMillisecondsOrReply.exit

getExpireMillisecondsOrReply.exit.thread:         ; preds = %39, %thread-pre-split.i, %23
  %45 = and i32 %.pre, 3
  %.not63 = icmp ne i32 %45, 0
  %46 = load i64, ptr %2, align 8                 ; 2 uses
  %.not6475 = icmp sgt i64 %46, 0
end_hunk_2
begin_hunk_3

.lr.ph:                                           ; preds = %getExpireMillisecondsOrReply.exit.thread
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %48 = trunc i32 %.pre to i1
  %49 = and i32 %.pre, 2
  %50 = icmp eq i32 %49, 0                        ; 2 uses
  br i1 %48, label %.lr.ph.split, label %.lr.ph.split.us

end_hunk_3
begin_hunk_4
  br i1 %50, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %.lr.ph.split.us.split.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %51 = load ptr, ptr %47, align 8, !tbaa !44
  %52 = load ptr, ptr %5, align 8, !tbaa !15
  %.idx108 = shl nuw nsw i64 %indvars.iv91, 4
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %.idx108
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %55 = load ptr, ptr %54, align 8, !tbaa !40
  %56 = call ptr @lookupKeyWrite(ptr noundef %51, ptr noundef %55) #11
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %57 = load i64, ptr %2, align 8, !tbaa !90      ; 2 uses
  %.not64.us.us = icmp sgt i64 %57, %indvars.iv.next92
  br i1 %.not64.us.us, label %.lr.ph.split.us.split.us, label %.critedge71, !llvm.loop !113

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %64
end_hunk_4
begin_hunk_5
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 16
  %62 = load ptr, ptr %61, align 8, !tbaa !40
  %63 = call ptr @lookupKeyWrite(ptr noundef %58, ptr noundef %62) #11
  %.not84 = icmp eq ptr %63, null
  br i1 %.not84, label %.critedge, label %64

64:                                               ; preds = %.lr.ph.split.us.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_5
begin_hunk_6
  br i1 %50, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %72
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %72 ], [ 0, %.lr.ph.split ] ; 2 uses
  %66 = load ptr, ptr %47, align 8, !tbaa !44
  %67 = load ptr, ptr %5, align 8, !tbaa !15
  %.idx109 = shl nuw nsw i64 %indvars.iv94, 4
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 %.idx109
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 16
  %70 = load ptr, ptr %69, align 8, !tbaa !40
  %71 = call ptr @lookupKeyWrite(ptr noundef %66, ptr noundef %70) #11
  %.not86 = icmp eq ptr %71, null
  br i1 %.not86, label %72, label %.critedge

72:                                               ; preds = %.lr.ph.split.split.us
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %73 = load i64, ptr %2, align 8, !tbaa !90      ; 2 uses
  %.not64.us78 = icmp sgt i64 %73, %indvars.iv.next95
  br i1 %.not64.us78, label %.lr.ph.split.split.us, label %.critedge71, !llvm.loop !113

.lr.ph.split.split:                               ; preds = %.lr.ph.split
end_hunk_6
begin_hunk_7
  br i1 %81, label %.lr.ph83, label %._crit_edge

.lr.ph83:                                         ; preds = %.critedge71
  %82 = and i32 %.pre, 16                         ; 2 uses
  %.not67 = icmp ne i32 %82, 0
  %.lobit = lshr exact i32 %82, 4
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
end_hunk_7
begin_hunk_8

._crit_edge:                                      ; preds = %115, %.critedge71
  %84 = phi i64 [ %80, %.critedge71 ], [ %122, %115 ] ; 2 uses
  %85 = and i32 %.pre, 128
  %.not66 = icmp ne i32 %85, 0
  %or.cond74.not = or i1 %.not61, %.not66
  br i1 %or.cond74.not, label %135, label %124

86:                                               ; preds = %.lr.ph83, %115
  %indvars.iv97 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next98, %115 ] ; 2 uses
  %87 = shl nuw nsw i64 %indvars.iv97, 1          ; 2 uses
  %88 = add nuw nsw i64 %87, 2                    ; 4 uses
  %89 = add nuw nsw i64 %87, 3                    ; 3 uses
  %90 = load ptr, ptr %5, align 8, !tbaa !15
end_hunk_8
begin_hunk_9
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 72
  %121 = load i32, ptr %120, align 8, !tbaa !70
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef %118, i32 noundef %121) #11
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %122 = load i64, ptr %2, align 8, !tbaa !90     ; 2 uses
  %123 = icmp sgt i64 %122, %indvars.iv.next98
  br i1 %123, label %86, label %._crit_edge, !llvm.loop !114

124:                                              ; preds = %._crit_edge
  %125 = and i32 %.pre, 64
  %126 = icmp eq i32 %125, 0
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %128 = load i32, ptr %127, align 8              ; 3 uses
end_hunk_9
begin_hunk_10
  %134 = add nuw nsw i32 %128, 1
  call void @rewriteClientCommandArgument(ptr noundef nonnull %0, i32 noundef %134, ptr noundef %132) #11
  call void @decrRefCount(ptr noundef %132) #11
  %.pre100 = load i64, ptr %2, align 8, !tbaa !90
  br label %135

135:                                              ; preds = %130, %124, %._crit_edge
  %136 = phi i64 [ %.pre100, %130 ], [ %84, %124 ], [ %84, %._crit_edge ]
  %137 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !47
  %138 = add nsw i64 %137, %136
  store i64 %138, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !47
end_hunk_10
