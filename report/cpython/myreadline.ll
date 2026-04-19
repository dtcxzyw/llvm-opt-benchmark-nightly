inline.NumInlined: 11
inline.NumDeleted: 8
begin_hunk_0_@PyOS_StdioReadline:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.r, %bb.c
  %.039 = phi i64 [ 0, %bb.c ], [ %i.ah, %bb.r ]  ; 6 uses
  %.037 = phi ptr [ null, %bb.c ], [ %i.m, %bb.r ] ; 3 uses
  %.not49 = icmp eq i64 %.039, 0
  %i.g = add i64 %.039, 2
  %i.h = select i1 %.not49, i64 100, i64 %i.g     ; 3 uses
end_hunk_0
begin_hunk_1_@PyOS_StdioReadline:bb.a
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @PyMem_RawFree(ptr noundef %.037) #10
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #10
  %i.j = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.1) #10
end_hunk_1
begin_hunk_2_@PyOS_StdioReadline:bb.a

bb.f:                                             ; preds = %bb.d
  %i.l = add i64 %i.h, %.039
  %i.m = tail call ptr @PyMem_RawRealloc(ptr noundef %.037, i64 noundef %i.l) #10 ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @PyMem_RawFree(ptr noundef %.037) #10
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #10
  %i.o = tail call ptr @PyErr_NoMemory() #10      ; 0 uses
  %i.p = tail call ptr @PyEval_SaveThread() #10   ; 0 uses
end_hunk_2
