inline.NumInlined: 428
inline.NumDeleted: 201
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_124ECLogarithmicRevRenderer5applyEPKvPvl:bb.a
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.ah = shl i64 %n.vec, 4
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah
  %4 = shl i64 %n.vec, 4
  %i.aj = getelementptr i8, ptr %1, i64 %4
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %i.ae, i64 0 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_124ECLogarithmicRevRenderer5applyEPKvPvl:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx
  %offset.idx31 = shl i64 %index, 4               ; 4 uses
  %next.gep32.a = getelementptr i8, ptr %1, i64 %offset.idx31 ; 4 uses
  %i.am = getelementptr i8, ptr %1, i64 %offset.idx31 ; 4 uses
  %next.gep33.a = getelementptr i8, ptr %i.am, i64 16
  %i.an = getelementptr i8, ptr %1, i64 %offset.idx31 ; 4 uses
  %next.gep34.a = getelementptr i8, ptr %i.an, i64 32
  %i.ao = getelementptr i8, ptr %1, i64 %offset.idx31 ; 4 uses
  %next.gep35 = getelementptr i8, ptr %i.ao, i64 48
  %i.ap = load float, ptr %next.gep32.a, align 4, !tbaa !66, !alias.scope !121
  %i.aq = load float, ptr %next.gep33.a, align 4, !tbaa !66, !alias.scope !121
end_hunk_1
