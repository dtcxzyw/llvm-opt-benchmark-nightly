inline.NumInlined: 31
inline.NumDeleted: 19
begin_hunk_0_@do_flip_h_no_crop:bb.a
  br i1 %conflict.rdx183, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %offset.idx ; 2 uses
  %next.gep185 = getelementptr i8, ptr %i.aw, i64 %offset.idx ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep185, align 2, !tbaa !21 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec186 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_0
begin_hunk_1_@do_flip_h_no_crop:bb.a
  br i1 %conflict.rdx226, label %scalar.ph227, label %vector.body229

vector.body229:                                   ; preds = %vector.memcheck191, %vector.body229
  %index230 = phi i64 [ %index.next243, %vector.body229 ], [ 0, %vector.memcheck191 ] ; 2 uses
  %offset.idx231 = shl i64 %index230, 2           ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.ct, i64 %offset.idx231 ; 2 uses
  %next.gep234 = getelementptr i8, ptr %i.co, i64 %offset.idx231 ; 2 uses
  %wide.vec235.a = load <8 x i16>, ptr %next.gep234, align 2, !tbaa !21 ; 2 uses
  %strided.vec236.a = shufflevector <8 x i16> %wide.vec235.a, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec237.a = shufflevector <8 x i16> %wide.vec235.a, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_1
