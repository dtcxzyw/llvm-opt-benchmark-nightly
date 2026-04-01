begin_hunk_0
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.04361 = phi i32 [ %i.o, %bb.i ], [ 1, %bb.a ] ; 12 uses
  %i.b = sext i32 %.04361 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
end_hunk_0
begin_hunk_1
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.362, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat, <i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_1
begin_hunk_2
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %.cast91 = trunc i64 %index to i32
  %.reass = add i32 %.cast91, 2
  %sext = shl i64 %index, 32
  %i.ax = sext i32 %.reass to i64
  %i.ay = ashr exact i64 %sext, 29
  %i.az = getelementptr inbounds i8, ptr %i.am, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ax
end_hunk_2
