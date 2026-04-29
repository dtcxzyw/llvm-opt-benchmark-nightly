inline.NumInlined: 2191
inline.NumDeleted: 816
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_510IDManifest9serializeERSt6vectorIcSaIcEE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i356.preheader2166, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i356.preheader
  %n.vec = and i64 %i.vo, 4611686018427387900     ; 3 uses
  %i.vq = shl i64 %n.vec, 3                       ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vi, i64 %i.vq  ; 2 uses
  %i.vs = getelementptr i8, ptr %.sroa.0853.01340, i64 %i.vq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vi, i64 %offset.idx ; 2 uses
  %next.gep1883 = getelementptr i8, ptr %.sroa.0853.01340, i64 %offset.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.vt = getelementptr i8, ptr %next.gep1883, i64 16
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i43.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i42
  %n.vec = and i64 %i.cg, 9223372036854775806     ; 3 uses
  %i.cj = and i64 %i.cg, 1
  %i.ck = mul i64 %n.vec, -8                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.sroa.07.020.i23, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = mul i64 %index, -8                ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %offset.idx
  %next.gep70 = getelementptr i8, ptr %.sroa.07.020.i23, i64 %offset.idx
  %i.cn = getelementptr inbounds i8, ptr %next.gep70, i64 -16
  %interleaved.vec = load <4 x i32>, ptr %i.cn, align 4, !tbaa !3
  %i.co = getelementptr inbounds i8, ptr %next.gep, i64 -16
end_hunk_1
