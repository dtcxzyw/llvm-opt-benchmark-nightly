inline.NumInlined: 55
inline.NumDeleted: 9
begin_hunk_0_@_Py_RemoteDebug_StopAllThreads:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %seize_thread.exit.thread60
  %.02975 = phi i64 [ %i.cq, %seize_thread.exit.thread60 ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !123
  %i.ax = shl i64 %.02975, 2
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.ax
end_hunk_0
begin_hunk_1_@_Py_RemoteDebug_StopAllThreads:bb.a

split.a:                                          ; preds = %bb.p
  %.02975.lcssa139 = phi i64 [ %.02975, %bb.p ]
  %.lcssa131.ph = phi i32 [ %i.ay, %bb.p ]
  %.lcssa.ph = phi ptr [ %i.bb, %bb.p ]
  %.ph = phi i32 [ %i.bg, %bb.p ]
  br label %bb.q

._crit_edge:                                      ; preds = %bb.m
  %.02975.lcssa142 = phi i64 [ %.02975, %bb.m ]
  %.02975.lcssa138 = phi i64 [ %.02975, %bb.m ]   ; 0 uses
  %split138 = phi i32 [ %i.ay, %bb.m ]
  %split139 = phi ptr [ %i.bb, %bb.m ]
  %split140 = phi i32 [ %i.bc, %bb.m ]
  br label %bb.q

bb.q:                                             ; preds = %split.a, %._crit_edge
  %.02975.lcssa = phi i64 [ %.02975.lcssa142, %._crit_edge ], [ %.02975.lcssa139, %split.a ] ; 2 uses
  %.lcssa131 = phi i32 [ %split138, %._crit_edge ], [ %.lcssa131.ph, %split.a ]
  %.lcssa = phi ptr [ %split139, %._crit_edge ], [ %.lcssa.ph, %split.a ]
  %i.bi = phi i32 [ %split140, %._crit_edge ], [ %.ph, %split.a ]
  %.not.i37 = icmp eq i64 %.02975.lcssa, 0
  br i1 %.not.i37, label %detach_threads.exit, label %.lr.ph.i38.preheader

end_hunk_1
begin_hunk_2_@_Py_RemoteDebug_StopAllThreads:bb.a
  br i1 %.not, label %bb.t, label %.lr.ph.i41.preheader

.lr.ph.i41.preheader:                             ; preds = %bb.s
  %.02975.lcssa150 = phi i64 [ %.02975, %bb.s ]
  %.lcssa132 = phi i32 [ %i.ay, %bb.s ]
  %.lcssa129 = phi ptr [ %i.bu, %bb.s ]
  br label %.lr.ph.i41
end_hunk_2
begin_hunk_3_@_Py_RemoteDebug_StopAllThreads:bb.a
  %i.by = load i32, ptr %scevgep145, align 4, !tbaa !6
  %i.bz = call i64 (i32, ...) @ptrace(i32 noundef 17, i32 noundef %i.by, ptr noundef null, ptr noundef null) #10 ; 0 uses
  %lsr.iv.next = add i64 %lsr.iv, 1               ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %.02975.lcssa150, %lsr.iv.next
  br i1 %exitcond.not.i43, label %detach_threads.exit45, label %.lr.ph.i41, !llvm.loop !124

detach_threads.exit45:                            ; preds = %.lr.ph.i41
end_hunk_3
begin_hunk_4_@_Py_RemoteDebug_StopAllThreads:bb.a
  ]

.lr.ph.i47.preheader:                             ; preds = %bb.u
  %.02975.lcssa158 = phi i64 [ %.02975, %bb.u ]
  %.lcssa133 = phi i32 [ %i.ay, %bb.u ]
  %.lcssa130 = phi ptr [ %i.cg, %bb.u ]
  br label %.lr.ph.i47
end_hunk_4
begin_hunk_5_@_Py_RemoteDebug_StopAllThreads:bb.a
  %i.ck = load i32, ptr %scevgep149, align 4, !tbaa !6
  %i.cl = call i64 (i32, ...) @ptrace(i32 noundef 17, i32 noundef %i.ck, ptr noundef null, ptr noundef null) #10 ; 0 uses
  %lsr.iv.next147 = add i64 %lsr.iv146, 1         ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %.02975.lcssa158, %lsr.iv.next147
  br i1 %exitcond.not.i49, label %seize_thread.exit, label %.lr.ph.i47, !llvm.loop !124

seize_thread.exit.thread63:                       ; preds = %bb.u, %bb.u, %bb.t
end_hunk_5
