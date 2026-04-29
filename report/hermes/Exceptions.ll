inline.NumInlined: 640
inline.NumDeleted: 331
begin_hunk_0_@_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i42.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i41
  %n.vec = and i64 %i.cg, 9223372036854775806     ; 3 uses
  %i.cj = and i64 %i.cg, 1
  %i.ck = mul i64 %n.vec, -8                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.020.i22, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = mul i64 %index, -8                ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %offset.idx
  %next.gep66 = getelementptr i8, ptr %.020.i22, i64 %offset.idx
  %i.cn = getelementptr inbounds i8, ptr %next.gep66, i64 -16
  %interleaved.vec = load <4 x i32>, ptr %i.cn, align 4, !tbaa !3
  %i.co = getelementptr inbounds i8, ptr %next.gep, i64 -16
end_hunk_0
