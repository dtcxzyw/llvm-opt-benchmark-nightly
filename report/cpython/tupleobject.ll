begin_hunk_0

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.01220.i = phi i64 [ 0, %.lr.ph.i ], [ %i.h, %bb.c ] ; 2 uses
  %.01319.i = phi i64 [ 0, %.lr.ph.i ], [ %.215.i, %bb.c ]
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %.01220.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.e, ptr noundef %1, i32 noundef 2) #10 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %tuple_count_impl.exit

bb.c:                                             ; preds = %bb.b
  %2 = icmp ne i32 %i.f, 0
  %3 = zext i1 %2 to i64
  %.215.i = add i64 %.01319.i, %3                 ; 2 uses
  %i.h = add nuw nsw i64 %.01220.i, 1             ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !44
  %i.i = icmp slt i64 %i.h, %.val.i
end_hunk_0
begin_hunk_1
  %i.j = tail call ptr @PyLong_FromSsize_t(i64 noundef %.013.lcssa.i) #10
  br label %tuple_count_impl.exit

tuple_count_impl.exit:                            ; preds = %bb.b, %._crit_edge.i
  %.2.i = phi ptr [ %i.j, %._crit_edge.i ], [ null, %bb.b ]
  ret ptr %.2.i
}

end_hunk_1
