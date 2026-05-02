inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@pyurandom:bb.a
  br i1 %.b.i, label %.loopexit, label %.split149.i

.split149.i:                                      ; preds = %bb.e
  %i.e = xor i32 %2, 1                            ; 6 uses
  %i.f = tail call ptr @__errno_location() #7     ; 9 uses
  %5 = trunc nuw i32 %3 to i1
  br i1 %5, label %.lr.ph.split.us.split.split.us.split.us.us.us.i, label %bb.g

.split.us.split.us.us.us.i:                       ; preds = %bb.f, %.lr.ph.split.us.split.split.us.split.us.us.us.i
  %.us-phi128.us.us.i = phi i64 [ %i.j, %.lr.ph.split.us.split.split.us.split.us.us.us.i ], [ %i.l, %bb.f ] ; 2 uses
end_hunk_0
begin_hunk_1_@pyurandom:bb.a
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.split.us.split.split.us.split.us.us.us.i, label %py_getrandom.exit, !llvm.loop !14

.lr.ph.split.us.split.split.us.split.us.us.us.i:  ; preds = %.split149.i, %.split.us.split.us.us.us.i
  %.026.ph158.us.us.i = phi ptr [ %i.g, %.split.us.split.us.us.us.i ], [ %0, %.split149.i ] ; 3 uses
  %.027.ph150.us.us.i = phi i64 [ %i.h, %.split.us.split.us.us.us.i ], [ %1, %.split149.i ] ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %6 = tail call ptr @PyEval_SaveThread() #6
  %i.j = tail call i64 @getrandom(ptr noundef %.026.ph158.us.us.i, i64 noundef %.027.ph150.us.us.i, i32 noundef %i.e) #6 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %6) #6
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph147.us.us.i, label %.split.us.split.us.us.us.i

bb.f:                                             ; preds = %.lr.ph.split.us.split.split.split.us.us.i
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %7 = tail call ptr @PyEval_SaveThread() #6
  %i.l = tail call i64 @getrandom(ptr noundef %.026.ph158.us.us.i, i64 noundef %.027.ph150.us.us.i, i32 noundef %i.e) #6 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %7) #6
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph147.us.us.i, label %.split.us.split.us.us.us.i

.lr.ph147.us.us.i:                                ; preds = %.lr.ph.split.us.split.split.us.split.us.us.us.i, %bb.f
  %i.n = load i32, ptr %i.f, align 4, !tbaa !7
  switch i32 %i.n, label %.split44.us.i [
    i32 38, label %.split41.us.i
    i32 1, label %.split41.us.i
    i32 4, label %.lr.ph.split.us.split.split.split.us.us.i
  ]

.lr.ph.split.us.split.split.split.us.us.i:        ; preds = %.lr.ph147.us.us.i
  %8 = tail call i32 @PyErr_CheckSignals() #6
  %.not.us.us.us.i = icmp eq i32 %8, 0
  br i1 %.not.us.us.us.i, label %bb.f, label %py_getrandom.exit

bb.g:                                             ; preds = %.split149.i
  %9 = trunc nuw i32 %2 to i1
  br i1 %9, label %.lr.ph.split.split.us.split.us.us.i, label %.lr.ph.split.split.split.us.i

.split.split.us.us.i:                             ; preds = %bb.h, %.lr.ph.split.split.us.split.us.us.i
  %.us-phi82.us.i = phi i64 [ %i.r, %.lr.ph.split.split.us.split.us.us.i ], [ %i.t, %bb.h ] ; 2 uses
end_hunk_1
begin_hunk_2_@pyurandom:bb.a
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.split.split.us.split.us.us.i, label %py_getrandom.exit, !llvm.loop !14

.lr.ph.split.split.us.split.us.us.i:              ; preds = %bb.g, %.split.split.us.us.i
  %.026.ph158.us183.i = phi ptr [ %i.o, %.split.split.us.us.i ], [ %0, %bb.g ] ; 3 uses
  %.027.ph150.us184.i = phi i64 [ %i.p, %.split.split.us.us.i ], [ %1, %bb.g ] ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %i.r = tail call i64 @getrandom(ptr noundef %.026.ph158.us183.i, i64 noundef %.027.ph150.us184.i, i32 noundef %i.e) #6 ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph99.us.i, label %.split.split.us.us.i

bb.h:                                             ; preds = %.lr.ph99.us.i
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %i.t = tail call i64 @getrandom(ptr noundef %.026.ph158.us183.i, i64 noundef %.027.ph150.us184.i, i32 noundef %i.e) #6 ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph99.us.i, label %.split.split.us.us.i

.lr.ph99.us.i:                                    ; preds = %.lr.ph.split.split.us.split.us.us.i, %bb.h
  %i.v = load i32, ptr %i.f, align 4, !tbaa !7
  switch i32 %i.v, label %py_getrandom.exit [
    i32 38, label %.split41.us.i
    i32 1, label %.split41.us.i
    i32 4, label %bb.h
  ]

.lr.ph.split.split.split.us.i:                    ; preds = %bb.g, %.split.split.i
  %.026.ph158.i = phi ptr [ %i.ad, %.split.split.i ], [ %0, %bb.g ] ; 3 uses
  %.027.ph150.i = phi i64 [ %i.ae, %.split.split.i ], [ %1, %bb.g ] ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %i.w = tail call i64 @getrandom(ptr noundef %.026.ph158.i, i64 noundef %.027.ph150.i, i32 noundef %i.e) #6 ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph80.i, label %.split.split.i

bb.i:                                             ; preds = %.lr.ph80.i
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %i.y = tail call i64 @getrandom(ptr noundef %.026.ph158.i, i64 noundef %.027.ph150.i, i32 noundef %i.e) #6 ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph80.i, label %.split.split.i

.lr.ph80.i:                                       ; preds = %.lr.ph.split.split.split.us.i, %bb.i
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !7
  switch i32 %i.aa, label %py_getrandom.exit [
    i32 38, label %.split41.us.i
    i32 1, label %.split41.us.i
    i32 11, label %.loopexit
    i32 4, label %bb.i
  ]

.split41.us.i:                                    ; preds = %.lr.ph80.i, %.lr.ph80.i, %.lr.ph99.us.i, %.lr.ph99.us.i, %.lr.ph147.us.us.i, %.lr.ph147.us.us.i
  store i1 true, ptr @py_getrandom.getrandom_works, align 4
  br label %.loopexit

.split44.us.i:                                    ; preds = %.lr.ph147.us.us.i
  %i.ab = load ptr, ptr @PyExc_OSError, align 8, !tbaa !11
  %i.ac = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.ab) #6 ; 0 uses
  br label %py_getrandom.exit
end_hunk_2
begin_hunk_3_@pyurandom:bb.a
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.split.split.split.us.i, label %py_getrandom.exit, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph80.i, %bb.e, %.split41.us.i
  %.not.i14 = icmp eq i32 %3, 0
  br i1 %.not.i14, label %bb.ab, label %bb.j

end_hunk_3
begin_hunk_4_@pyurandom:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %py_getrandom.exit

py_getrandom.exit:                                ; preds = %.split.split.i, %.lr.ph80.i, %.split.split.us.us.i, %.lr.ph99.us.i, %.split.us.split.us.us.us.i, %.lr.ph.split.us.split.split.split.us.us.i, %.critedge50.i, %bb.af, %.critedge.thread.i, %bb.ab, %bb.aa, %.split44.us.i, %bb.d, %bb.b, %bb.c
  %.0 = phi i32 [ -1, %.split44.us.i ], [ -1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.af ], [ -1, %bb.c ], [ 0, %.split.split.us.us.i ], [ -1, %.lr.ph99.us.i ], [ -1, %.lr.ph80.i ], [ -1, %bb.ab ], [ -1, %.critedge50.i ], [ -1, %.critedge.thread.i ], [ 0, %bb.aa ], [ -1, %.lr.ph.split.us.split.split.split.us.us.i ], [ 0, %.split.us.split.us.us.us.i ], [ 0, %.split.split.i ]
  ret i32 %.0
}

end_hunk_4
