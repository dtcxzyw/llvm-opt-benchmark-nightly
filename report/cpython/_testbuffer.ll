inline.NumInlined: 175
inline.NumDeleted: 38
begin_hunk_0_@seq_as_ssize_array:bb.a
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.not39 = icmp eq i32 %2, 0
  br i1 %.not39, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.02635.us = phi i64 [ %i.r, %bb.f ], [ 0, %.lr.ph ] ; 3 uses
end_hunk_0
begin_hunk_1_@seq_as_ssize_array:bb.a
  %.not29 = icmp eq i64 %i.z, 0
  br i1 %.not29, label %.split.us, label %bb.i

.split.us:                                        ; preds = %bb.h, %bb.d
  %3 = phi ptr [ @.str.55, %bb.d ], [ @.str.54, %bb.h ]
  %4 = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  %i.aa = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %4, ptr noundef nonnull @.str.76, ptr noundef nonnull %3) #16 ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #16
  br label %.critedge

end_hunk_1
begin_hunk_2_@seq_as_ssize_array:bb.a
  %.not31 = icmp eq ptr %i.ac, null
  br i1 %.not31, label %bb.j, label %.split37.us

.split37.us:                                      ; preds = %bb.i, %bb.e
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #16
  br label %.critedge

end_hunk_2
begin_hunk_3_@seq_as_ssize_array:bb.a
  %exitcond.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !129

.critedge:                                        ; preds = %bb.l, %bb.f, %.preheader, %.split37.us, %bb.k, %.split.us, %.thread
  %.2 = phi ptr [ null, %.thread ], [ null, %.split37.us ], [ null, %.split.us ], [ null, %bb.k ], [ %i.c, %.preheader ], [ %i.c, %bb.f ], [ %i.c, %bb.l ]
  ret ptr %.2
}

end_hunk_3
