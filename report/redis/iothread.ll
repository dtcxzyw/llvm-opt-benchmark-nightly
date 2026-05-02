inline.NumInlined: 30
inline.NumDeleted: 9
begin_hunk_0_@processClientsFromIOThread:bb.a
  br label %sendPendingClientsToIOThreadIfNeeded.exit

sendPendingClientsToIOThreadIfNeeded.exit:        ; preds = %bb.af, %bb.t, %bb.q, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %isClientMustHandledByMainThread.exit.thread, %bb.w, %isClientMustHandledByMainThread.exit.thread81, %bb.n
  %.1 = phi ptr [ %i.am, %bb.n ], [ null, %bb.am ], [ %i.am, %isClientMustHandledByMainThread.exit.thread81 ], [ %i.am, %bb.w ], [ %i.am, %isClientMustHandledByMainThread.exit.thread ], [ null, %bb.ai ], [ %i.am, %bb.t ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.al ], [ %i.am, %bb.q ], [ %i.am, %bb.af ] ; 3 uses
  %i.dv = load i8, ptr %0, align 64, !tbaa !99    ; 2 uses
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %i.dw
end_hunk_0
