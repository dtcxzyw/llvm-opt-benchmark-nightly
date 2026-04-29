inline.NumInlined: 640
inline.NumDeleted: 331
begin_hunk_0_@_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i42.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i41
  %n.vec = and i64 %i.cg, 9223372036854775806     ; 4 uses
  %i.cj = and i64 %i.cg, 1
  %i.ck = mul i64 %n.vec, -8
  %i.cl = getelementptr i8, ptr %i.ci, i64 %i.ck
  %2 = mul i64 %n.vec, -8
  %i.cm = getelementptr i8, ptr %.020.i22, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %i.ci, i64 %offset.idx
  %offset.idx65 = mul i64 %index, -8
  %next.gep66 = getelementptr i8, ptr %.020.i22, i64 %offset.idx65
  %i.cn = getelementptr inbounds i8, ptr %next.gep66, i64 -16
  %interleaved.vec = load <4 x i32>, ptr %i.cn, align 4, !tbaa !3
  %i.co = getelementptr inbounds i8, ptr %next.gep, i64 -16
end_hunk_0
