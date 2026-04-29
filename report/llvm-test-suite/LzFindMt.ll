inline.NumInlined: 11
inline.NumDeleted: 1
begin_hunk_0_@MatchFinderMt2_GetMatches:bb.a
  br i1 %found.conflict, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 4294967292               ; 5 uses
  %.cast = trunc nuw i64 %n.vec to i32
  %i.y = shl i32 %.cast, 1
  %i.z = shl nuw nsw i64 %n.vec, 3
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %2 = shl nuw nsw i64 %n.vec, 3
  %i.ab = getelementptr i8, ptr %i.m, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %offset.idx
  %3 = getelementptr i8, ptr %1, i64 %offset.idx
  %next.gep22.a = getelementptr i8, ptr %3, i64 16
  %offset.idx23 = shl i64 %index, 3               ; 2 uses
  %next.gep24.a = getelementptr i8, ptr %i.m, i64 %offset.idx23
  %i.ac = getelementptr i8, ptr %i.m, i64 %offset.idx23
  %next.gep25 = getelementptr i8, ptr %i.ac, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep24.a, align 4, !tbaa !4, !alias.scope !80
  %wide.vec27 = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !4, !alias.scope !80
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !83, !noalias !80
  store <4 x i32> %wide.vec27, ptr %next.gep22.a, align 4, !tbaa !4, !alias.scope !83, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !85
end_hunk_0
begin_hunk_1_@MatchFinderMt_GetMatches:bb.a
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4294967292              ; 5 uses
  %i.ay = shl nuw nsw i64 %n.vec, 3
  %i.az = getelementptr i8, ptr %i.ab, i64 %i.ay
  %.cast = trunc nuw i64 %n.vec to i32
  %i.ba = shl i32 %.cast, 1
  %i.bb = sub i32 %i.g, %i.ba
  %2 = shl nuw nsw i64 %n.vec, 3
  %i.bc = getelementptr i8, ptr %i.am, i64 %2     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %offset.idx
  %3 = getelementptr i8, ptr %i.ab, i64 %offset.idx
  %next.gep34.a = getelementptr i8, ptr %3, i64 16
  %offset.idx35 = shl i64 %index, 3               ; 2 uses
  %next.gep36.a = getelementptr i8, ptr %i.am, i64 %offset.idx35
  %i.bd = getelementptr i8, ptr %i.am, i64 %offset.idx35
  %next.gep37 = getelementptr i8, ptr %i.bd, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !90
  %wide.vec39 = load <4 x i32>, ptr %next.gep34.a, align 4, !tbaa !4, !alias.scope !90
  store <4 x i32> %wide.vec, ptr %next.gep36.a, align 4, !tbaa !4, !alias.scope !93, !noalias !90
  store <4 x i32> %wide.vec39, ptr %next.gep37, align 4, !tbaa !4, !alias.scope !93, !noalias !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
end_hunk_1
