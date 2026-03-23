begin_hunk_0

66:                                               ; preds = %.critedge
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %68 = load i64, ptr %67, align 8, !tbaa !111
  %.fr379 = freeze i64 %68                        ; 2 uses
  %69 = and i64 %.fr379, 4503599627370496
  %.not244 = icmp eq i64 %69, 0
  br i1 %.not244, label %70, label %mustObeyClient.exit.thread

end_hunk_0
begin_hunk_1
  br i1 %72, label %mustObeyClient.exit.thread, label %mustObeyClient.exit

mustObeyClient.exit:                              ; preds = %70
  %73 = and i64 %.fr379, 2
  %.not245 = icmp eq i64 %73, 0
  %spec.select = select i1 %.not245, ptr null, ptr %.0222351
  br label %mustObeyClient.exit.thread
end_hunk_1
begin_hunk_2
._crit_edge:                                      ; preds = %120
  %.pre = load ptr, ptr %13, align 8, !tbaa !524  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %.pre386 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !533
  br label %123

123:                                              ; preds = %._crit_edge, %116
  %124 = phi ptr [ %.pre386, %._crit_edge ], [ %118, %116 ]
  %125 = phi ptr [ %.pre, %._crit_edge ], [ %90, %116 ]
  %126 = icmp eq ptr %124, @moduleCommand
  br i1 %126, label %127, label %137
end_hunk_2
begin_hunk_3
  %128 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2472), align 8, !tbaa !560
  %129 = call i32 @allowProtectedAction(i32 noundef %128, ptr noundef nonnull %0) #42
  %.not250 = icmp eq i32 %129, 0
  br i1 %.not250, label %130, label %._crit_edge392

._crit_edge392:                                   ; preds = %127
  %.pre387.pre = load ptr, ptr %13, align 8, !tbaa !524
  br label %137

130:                                              ; preds = %127, %120
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br label %rejectCommand.exit

137:                                              ; preds = %._crit_edge392, %123, %commandCheckArity.exit
  %.pre387 = phi ptr [ %.pre387.pre, %._crit_edge392 ], [ %125, %123 ], [ %90, %commandCheckArity.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br label %.thread347

.thread347:                                       ; preds = %.thread, %137
  %138 = phi ptr [ %14, %.thread ], [ %.pre387, %137 ] ; 2 uses
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 112
  %140 = load i64, ptr %139, align 8, !tbaa !493  ; 3 uses
  %141 = getelementptr inbounds nuw i8, ptr %138, i64 96
end_hunk_4
begin_hunk_5

.thread365:                                       ; preds = %332
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  %.pre388 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8
  %334 = icmp ne i32 %.pre388, 0
  br label %mustObeyClient.exit340.thread

335:                                              ; preds = %332, %321
end_hunk_5
begin_hunk_6
  %387 = icmp eq i32 %386, 0
  %388 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 224), align 8
  %389 = icmp eq i32 %388, 0
  %.not382 = select i1 %387, i1 %389, i1 false
  br i1 %.not382, label %390, label %400

390:                                              ; preds = %385
  %391 = call i32 @performEvictions() #42
end_hunk_6
begin_hunk_7
  br i1 %.not287, label %..thread376_crit_edge, label %470

..thread376_crit_edge:                            ; preds = %463
  %.pre389 = load i64, ptr %273, align 8, !tbaa !111
  br label %.thread376

470:                                              ; preds = %463
end_hunk_7
begin_hunk_8
  br label %.thread369

.thread376:                                       ; preds = %..thread376_crit_edge, %457
  %475 = phi i64 [ %.pre389, %..thread376_crit_edge ], [ %458, %457 ]
  %476 = and i64 %475, 262144
  %.not288 = icmp eq i64 %476, 0
  br i1 %.not288, label %493, label %477
end_hunk_8
begin_hunk_9
  %546 = call i32 @isPausedActions(i32 noundef 1) #42
  %547 = icmp ne i32 %546, 0
  %or.cond34 = select i1 %547, i1 %230, i1 false
  br i1 %or.cond34, label %548, label %._crit_edge390

._crit_edge390:                                   ; preds = %545
  %.pre391 = load i64, ptr %273, align 8, !tbaa !111
  br label %549

548:                                              ; preds = %545, %543
  call void @blockPostponeClient(ptr noundef nonnull %0) #42
  br label %.thread369

549:                                              ; preds = %._crit_edge390, %541
  %550 = phi i64 [ %.pre391, %._crit_edge390 ], [ %539, %541 ]
  %551 = and i64 %550, 8
  %.not305 = icmp eq i64 %551, 0
  br i1 %.not305, label %558, label %552
end_hunk_9
begin_hunk_10
  %564 = icmp eq i32 %563, 0
  %565 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 224), align 8
  %566 = icmp eq i32 %565, 0
  %.not385 = select i1 %564, i1 %566, i1 false
  br i1 %.not385, label %567, label %.thread369

567:                                              ; preds = %562
  call void @handleClientsBlockedOnKeys() #42
end_hunk_10
begin_hunk_11

sdslen.exit:                                      ; preds = %7, %10, %14, %18, %22
  %.0.i7 = phi i64 [ %24, %22 ], [ %9, %7 ], [ %13, %10 ], [ %17, %14 ], [ %21, %18 ]
  %.0.i7.fr = freeze i64 %.0.i7
  %25 = icmp eq i64 %.0.i7.fr, 0
  br i1 %25, label %sdslen.exit.thread, label %26

sdslen.exit.thread:                               ; preds = %4, %sdslen.exit
end_hunk_11
