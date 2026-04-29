begin_hunk_0_@jpeg_undifference2:bb.a
  br i1 %conflict.rdx, label %.lr.ph.preheader34, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 6 uses
  %.cast = trunc nuw i64 %n.vec to i32
  %i.l = sub i32 %i.h, %.cast
  %i.m = shl nuw nsw i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  %6 = shl nuw nsw i64 %n.vec, 2
  %i.o = getelementptr i8, ptr %4, i64 %6
  %7 = shl nuw nsw i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %3, i64 %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx24 = shl i64 %index, 2
  %next.gep25.a = getelementptr i8, ptr %4, i64 %offset.idx24 ; 2 uses
  %offset.idx26 = shl i64 %index, 2
  %next.gep27 = getelementptr i8, ptr %3, i64 %offset.idx26 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %next.gep25.a, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep27, i64 4
end_hunk_0
begin_hunk_1_@jpeg_undifference3:bb.a
  br i1 %conflict.rdx, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 6 uses
  %.cast = trunc nuw i64 %n.vec to i32
  %i.l = sub i32 %i.h, %.cast
  %i.m = shl nuw nsw i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  %6 = shl nuw nsw i64 %n.vec, 2
  %i.o = getelementptr i8, ptr %4, i64 %6
  %7 = shl nuw nsw i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %3, i64 %7
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load29.a, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx25 = shl i64 %index, 2
  %next.gep26.a = getelementptr i8, ptr %4, i64 %offset.idx25 ; 2 uses
  %offset.idx27 = shl i64 %index, 2
  %next.gep28 = getelementptr i8, ptr %3, i64 %offset.idx27 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %next.gep26.a, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep28, i64 4
end_hunk_1
