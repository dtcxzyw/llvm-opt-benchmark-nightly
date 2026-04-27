inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3GetToken:bb.a
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !227
  %i.di = and i8 %i.dh, 70
  %.not260319 = icmp eq i8 %i.di, 0
  br i1 %.not260319, label %.loopexit277, label %.lr.ph321.a

.lr.ph321.a:                                      ; preds = %.loopexit278, %.lr.ph321.a
  %.12320 = phi i64 [ %i.dj, %.lr.ph321.a ], [ %.11, %.loopexit278 ]
  store i32 186, ptr %1, align 4, !tbaa !5
  %i.dj = add nsw i64 %.12320, 1                  ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %0, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !227
end_hunk_0
begin_hunk_1_@sessionChangesetNext:bb.a
  br i1 %or.cond, label %.splitthread-pre-split, label %.critedge, !llvm.loop !1695

.critedge.sink.split:                             ; preds = %bb.ai, %bb.aj, %bb.af, %bb.ah, %bb.az
  %.sink = phi i32 [ 236266, %bb.az ], [ 236214, %bb.af ], [ 236214, %bb.ah ], [ 236220, %bb.aj ], [ 236220, %bb.ai ]
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef %.sink, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  store i32 11, ptr %i.d, align 4, !tbaa !1671
  br label %.critedge

.critedge:                                        ; preds = %sessionChangesetNextOne.exit, %sessionChangesetNextOne.exit.thread, %sessionDiscardData.exit.i, %bb.ae, %.critedge.sink.split, %bb.a
  %.4.i8 = phi i32 [ 101, %bb.ae ], [ %i.x, %bb.a ], [ 11, %.critedge.sink.split ], [ %.4.i, %sessionChangesetNextOne.exit ], [ 100, %sessionChangesetNextOne.exit.thread ], [ 101, %sessionDiscardData.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  ret i32 %.4.i8
}
end_hunk_1
