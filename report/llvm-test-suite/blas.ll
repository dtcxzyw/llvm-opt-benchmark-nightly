inline.NumInlined: 1
begin_hunk_0_@saxpy:bb.a
  br i1 %found.conflict, label %.lr.ph65.preheader84, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2147483640               ; 4 uses
  %i.k = trunc nuw nsw i64 %n.vec to i32
  %i.l = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %i.n = getelementptr i8, ptr %4, i64 %i.l
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %next.gep78 = getelementptr i8, ptr %4, i64 %offset.idx ; 3 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !8, !alias.scope !13
  %wide.load79.a = load <4 x float>, ptr %i.o, align 4, !tbaa !8, !alias.scope !13
end_hunk_0
begin_hunk_1_@saxpyx:bb.a
  br i1 %found.conflict, label %.lr.ph68.preheader87, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2147483640               ; 4 uses
  %i.k = trunc nuw nsw i64 %n.vec to i32
  %i.l = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %i.n = getelementptr i8, ptr %4, i64 %i.l
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 3 uses
  %next.gep81 = getelementptr i8, ptr %4, i64 %offset.idx ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load = load <4 x float>, ptr %next.gep81, align 4, !tbaa !8, !alias.scope !28
  %wide.load82.a = load <4 x float>, ptr %i.o, align 4, !tbaa !8, !alias.scope !28
end_hunk_1
begin_hunk_2_@scopy:bb.a
  br i1 %or.cond, label %.lr.ph59.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59.preheader
  %n.vec = and i64 %i.f, 2147483640               ; 4 uses
  %i.h = trunc nuw nsw i64 %n.vec to i32
  %i.i = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %3, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %offset.idx ; 2 uses
  %next.gep70 = getelementptr i8, ptr %3, i64 %offset.idx ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !8
  %wide.load71 = load <4 x float>, ptr %i.l, align 4, !tbaa !8
end_hunk_2
begin_hunk_3_@vexopy:bb.a
  br i1 %conflict.rdx, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2147483640               ; 4 uses
  %i.i = trunc nuw nsw i64 %n.vec to i32
  %i.j = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %3, i64 %i.j
  %i.m = getelementptr i8, ptr %2, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %offset.idx ; 2 uses
  %next.gep43.a = getelementptr i8, ptr %3, i64 %offset.idx ; 2 uses
  %next.gep45 = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <4 x float>, ptr %next.gep45, align 4, !tbaa !8
  %wide.load46.a = load <4 x float>, ptr %i.n, align 4, !tbaa !8
end_hunk_3
begin_hunk_4_@vexopy:bb.a
  br i1 %conflict.rdx55, label %.lr.ph36.preheader80, label %vector.ph58

vector.ph58:                                      ; preds = %vector.memcheck52
  %n.vec60 = and i64 %i.f, 2147483640             ; 4 uses
  %i.af = trunc nuw nsw i64 %n.vec60 to i32
  %i.ag = shl nuw nsw i64 %n.vec60, 2             ; 3 uses
  %i.ah = getelementptr i8, ptr %1, i64 %i.ag
  %i.ai = getelementptr i8, ptr %3, i64 %i.ag
  %i.aj = getelementptr i8, ptr %2, i64 %i.ag
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph58
  %index62 = phi i64 [ 0, %vector.ph58 ], [ %index.next73, %vector.body61 ] ; 2 uses
  %offset.idx63 = shl i64 %index62, 2             ; 3 uses
  %next.gep64 = getelementptr i8, ptr %1, i64 %offset.idx63 ; 2 uses
  %next.gep66 = getelementptr i8, ptr %3, i64 %offset.idx63 ; 2 uses
  %next.gep68 = getelementptr i8, ptr %2, i64 %offset.idx63 ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load69 = load <4 x float>, ptr %next.gep68, align 4, !tbaa !8
  %wide.load70 = load <4 x float>, ptr %i.ak, align 4, !tbaa !8
end_hunk_4
