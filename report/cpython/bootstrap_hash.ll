inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@pyurandom:bb.a
  br i1 %.b.i, label %.loopexit, label %.split149.i

.split149.i:                                      ; preds = %bb.e
  %i.e = xor i32 %2, 1                            ; 8 uses
  %i.f = tail call ptr @__errno_location() #7     ; 12 uses
  %.not.i = icmp eq i32 %3, 0
  %5 = or i32 %3, %2
  %.not196.i = icmp eq i32 %5, 0                  ; 2 uses
  br i1 %.not.i, label %.split149.split.us.i, label %.split149.split.i

.split149.split.us.i:                             ; preds = %.split149.i
  br i1 %.not196.i, label %.lr.ph.split.us.split.split.split.us.us.i, label %.lr.ph.split.us.split.split.us.split.us.us.us.i

.split.us.split.us.us.us.i:                       ; preds = %bb.f, %.lr.ph.split.us.split.split.us.split.us.us.us.i
  %.us-phi128.us.us.i = phi i64 [ %i.j, %.lr.ph.split.us.split.split.us.split.us.us.us.i ], [ %i.l, %bb.f ] ; 2 uses
end_hunk_0
begin_hunk_1_@pyurandom:bb.a
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.split.us.split.split.us.split.us.us.us.i, label %py_getrandom.exit, !llvm.loop !14

.lr.ph.split.us.split.split.us.split.us.us.us.i:  ; preds = %.split149.split.us.i, %.split.us.split.us.us.us.i
  %.026.ph158.us.us.i = phi ptr [ %i.g, %.split.us.split.us.us.us.i ], [ %0, %.split149.split.us.i ] ; 3 uses
  %.027.ph150.us.us.i = phi i64 [ %i.h, %.split.us.split.us.us.us.i ], [ %1, %.split149.split.us.i ] ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %i.j = tail call i64 @getrandom(ptr noundef %.026.ph158.us.us.i, i64 noundef %.027.ph150.us.us.i, i32 noundef %i.e) #6 ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph147.us.us.i, label %.split.us.split.us.us.us.i

bb.f:                                             ; preds = %.lr.ph147.us.us.i
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %i.l = tail call i64 @getrandom(ptr noundef %.026.ph158.us.us.i, i64 noundef %.027.ph150.us.us.i, i32 noundef %i.e) #6 ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph147.us.us.i, label %.split.us.split.us.us.us.i

.lr.ph147.us.us.i:                                ; preds = %.lr.ph.split.us.split.split.us.split.us.us.us.i, %bb.f
  %i.n = load i32, ptr %i.f, align 4, !tbaa !7
  switch i32 %i.n, label %py_getrandom.exit [
    i32 38, label %.split41.us.i
    i32 1, label %.split41.us.i
    i32 4, label %bb.f
  ]

.split.us.split.us170.i:                          ; preds = %bb.g, %.lr.ph.split.us.split.split.split.us.us.i
  %.us-phi105.us.i = phi i64 [ %9, %.lr.ph.split.us.split.split.split.us.us.i ], [ %11, %bb.g ] ; 2 uses
  %6 = getelementptr i8, ptr %.026.ph158.us.i, i64 %.us-phi105.us.i
  %7 = sub nsw i64 %.027.ph150.us.i, %.us-phi105.us.i ; 2 uses
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %.lr.ph.split.us.split.split.split.us.us.i, label %py_getrandom.exit, !llvm.loop !14

.lr.ph.split.us.split.split.split.us.us.i:        ; preds = %.split149.split.us.i, %.split.us.split.us170.i
  %.026.ph158.us.i = phi ptr [ %6, %.split.us.split.us170.i ], [ %0, %.split149.split.us.i ] ; 3 uses
  %.027.ph150.us.i = phi i64 [ %7, %.split.us.split.us170.i ], [ %1, %.split149.split.us.i ] ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %9 = tail call i64 @getrandom(ptr noundef %.026.ph158.us.i, i64 noundef %.027.ph150.us.i, i32 noundef %i.e) #6 ; 2 uses
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %.lr.ph126.us.i, label %.split.us.split.us170.i

bb.g:                                             ; preds = %.lr.ph126.us.i
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %11 = tail call i64 @getrandom(ptr noundef %.026.ph158.us.i, i64 noundef %.027.ph150.us.i, i32 noundef %i.e) #6 ; 2 uses
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %.lr.ph126.us.i, label %.split.us.split.us170.i

.lr.ph126.us.i:                                   ; preds = %.lr.ph.split.us.split.split.split.us.us.i, %bb.g
  %13 = load i32, ptr %i.f, align 4, !tbaa !7
  switch i32 %13, label %py_getrandom.exit [
    i32 38, label %.split41.us.i
    i32 1, label %.split41.us.i
    i32 11, label %.loopexit
    i32 4, label %bb.g
  ]

.split149.split.i:                                ; preds = %.split149.i
  br i1 %.not196.i, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.us.split.us.us.i

.split.split.us.us.i:                             ; preds = %bb.h, %.lr.ph.split.split.us.split.us.us.i
  %.us-phi82.us.i = phi i64 [ %i.r, %.lr.ph.split.split.us.split.us.us.i ], [ %i.t, %bb.h ] ; 2 uses
end_hunk_1
begin_hunk_2_@pyurandom:bb.a
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.split.split.us.split.us.us.i, label %py_getrandom.exit, !llvm.loop !14

.lr.ph.split.split.us.split.us.us.i:              ; preds = %.split149.split.i, %.split.split.us.us.i
  %.026.ph158.us183.i = phi ptr [ %i.o, %.split.split.us.us.i ], [ %0, %.split149.split.i ] ; 3 uses
  %.027.ph150.us184.i = phi i64 [ %i.p, %.split.split.us.us.i ], [ %1, %.split149.split.i ] ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %14 = tail call ptr @PyEval_SaveThread() #6
  %i.r = tail call i64 @getrandom(ptr noundef %.026.ph158.us183.i, i64 noundef %.027.ph150.us184.i, i32 noundef %i.e) #6 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %14) #6
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph99.us.i, label %.split.split.us.us.i

bb.h:                                             ; preds = %16
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %15 = tail call ptr @PyEval_SaveThread() #6
  %i.t = tail call i64 @getrandom(ptr noundef %.026.ph158.us183.i, i64 noundef %.027.ph150.us184.i, i32 noundef %i.e) #6 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %15) #6
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph99.us.i, label %.split.split.us.us.i

.lr.ph99.us.i:                                    ; preds = %.lr.ph.split.split.us.split.us.us.i, %bb.h
  %i.v = load i32, ptr %i.f, align 4, !tbaa !7
  switch i32 %i.v, label %.split44.us.i [
    i32 38, label %.split41.us.i
    i32 1, label %.split41.us.i
    i32 4, label %16
  ]

16:                                               ; preds = %.lr.ph99.us.i
  %17 = tail call i32 @PyErr_CheckSignals() #6
  %.not30.us49.us.us.i = icmp eq i32 %17, 0
  br i1 %.not30.us49.us.us.i, label %bb.h, label %py_getrandom.exit

.lr.ph.split.split.split.us.i:                    ; preds = %.split149.split.i, %.split.split.i
  %.026.ph158.i = phi ptr [ %i.ad, %.split.split.i ], [ %0, %.split149.split.i ] ; 3 uses
  %.027.ph150.i = phi i64 [ %i.ae, %.split.split.i ], [ %1, %.split149.split.i ] ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %18 = tail call ptr @PyEval_SaveThread() #6
  %i.w = tail call i64 @getrandom(ptr noundef %.026.ph158.i, i64 noundef %.027.ph150.i, i32 noundef %i.e) #6 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %18) #6
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph80.i, label %.split.split.i

bb.i:                                             ; preds = %20
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %19 = tail call ptr @PyEval_SaveThread() #6
  %i.y = tail call i64 @getrandom(ptr noundef %.026.ph158.i, i64 noundef %.027.ph150.i, i32 noundef %i.e) #6 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %19) #6
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph80.i, label %.split.split.i

.lr.ph80.i:                                       ; preds = %.lr.ph.split.split.split.us.i, %bb.i
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !7
  switch i32 %i.aa, label %.split44.us.i [
    i32 38, label %.split41.us.i
    i32 1, label %.split41.us.i
    i32 11, label %.loopexit
    i32 4, label %20
  ]

20:                                               ; preds = %.lr.ph80.i
  %21 = tail call i32 @PyErr_CheckSignals() #6
  %.not30.us58.i = icmp eq i32 %21, 0
  br i1 %.not30.us58.i, label %bb.i, label %py_getrandom.exit

.split41.us.i:                                    ; preds = %.lr.ph99.us.i, %.lr.ph99.us.i, %.lr.ph80.i, %.lr.ph80.i, %.lr.ph147.us.us.i, %.lr.ph147.us.us.i, %.lr.ph126.us.i, %.lr.ph126.us.i
  store i1 true, ptr @py_getrandom.getrandom_works, align 4
  br label %.loopexit

.split44.us.i:                                    ; preds = %.lr.ph99.us.i, %.lr.ph80.i
  %i.ab = load ptr, ptr @PyExc_OSError, align 8, !tbaa !11
  %i.ac = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.ab) #6 ; 0 uses
  br label %py_getrandom.exit
end_hunk_2
begin_hunk_3_@pyurandom:bb.a
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.split.split.split.us.i, label %py_getrandom.exit, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph80.i, %.lr.ph126.us.i, %bb.e, %.split41.us.i
  %.not.i14 = icmp eq i32 %3, 0
  br i1 %.not.i14, label %bb.ab, label %bb.j

end_hunk_3
begin_hunk_4_@pyurandom:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %py_getrandom.exit

py_getrandom.exit:                                ; preds = %.split.split.us.us.i, %16, %.split.split.i, %20, %.split.us.split.us.us.us.i, %.lr.ph147.us.us.i, %.split.us.split.us170.i, %.lr.ph126.us.i, %.critedge50.i, %bb.af, %.critedge.thread.i, %bb.ab, %bb.aa, %.split44.us.i, %bb.d, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.af ], [ -1, %bb.b ], [ 0, %bb.d ], [ 0, %.split.split.i ], [ -1, %bb.c ], [ -1, %16 ], [ 0, %.split.us.split.us.us.us.i ], [ 0, %.split.us.split.us170.i ], [ -1, %.split44.us.i ], [ -1, %bb.ab ], [ -1, %.critedge50.i ], [ -1, %.critedge.thread.i ], [ 0, %bb.aa ], [ -1, %20 ], [ -1, %.lr.ph126.us.i ], [ -1, %.lr.ph147.us.us.i ], [ 0, %.split.split.us.us.i ]
  ret i32 %.0
}

end_hunk_4
