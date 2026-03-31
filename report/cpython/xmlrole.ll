begin_hunk_0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 61) i32 @internalSubset(ptr noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %.thread [
    i32 15, label %common.exit
    i32 16, label %bb.b
    i32 11, label %bb.j
end_hunk_0
begin_hunk_1
  store ptr @doctype5, ptr %0, align 8, !tbaa !10
  br label %common.exit

.thread:                                          ; preds = %bb.h, %bb.a
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.a, %bb.a, %.thread, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ -1, %.thread ], [ 0, %bb.a ], [ 11, %bb.c ], [ 33, %bb.e ], [ 39, %bb.g ], [ 17, %bb.i ], [ 55, %bb.j ], [ 56, %bb.k ], [ 60, %bb.l ], [ 3, %bb.m ], [ 0, %bb.a ]
  ret i32 %.0
}

end_hunk_1
