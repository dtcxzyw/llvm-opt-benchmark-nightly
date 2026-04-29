inline.NumInlined: 274
inline.NumDeleted: 126
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRenderer5applyEPKvPvl:bb.a
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.k = load float, ptr %i.i, align 4, !tbaa !56, !alias.scope !77
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %i.k, i64 0
  %i.l = load <4 x float>, ptr %i.h, align 4
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRenderer5applyEPKvPvl:bb.a
  %i.p = load <4 x float>, ptr %i.d, align 4
  %i.q = load <4 x float>, ptr %i.c, align 8
  %i.r = load <4 x float>, ptr %i.b, align 8
  %i.s = shl i64 %n.vec, 4                        ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 %i.s
  %i.u = getelementptr i8, ptr %1, i64 %i.s
  %i.v = shufflevector <4 x float> %i.r, <4 x float> %i.p, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.w = shufflevector <4 x float> %i.q, <4 x float> %broadcast.splatinsert34, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.x = shufflevector <4 x float> %i.n, <4 x float> %i.l, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRenderer5applyEPKvPvl:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 4                 ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx
  %next.gep26.a = getelementptr i8, ptr %1, i64 %offset.idx ; 4 uses
  %i.z = getelementptr i8, ptr %1, i64 %offset.idx ; 4 uses
  %next.gep27.a = getelementptr i8, ptr %i.z, i64 16
  %i.aa = getelementptr i8, ptr %1, i64 %offset.idx ; 4 uses
  %next.gep28.a = getelementptr i8, ptr %i.aa, i64 32
  %i.ab = getelementptr i8, ptr %1, i64 %offset.idx ; 4 uses
  %next.gep29 = getelementptr i8, ptr %i.ab, i64 48
  %i.ac = load float, ptr %next.gep26.a, align 4, !tbaa !56, !alias.scope !80
  %i.ad = load float, ptr %next.gep27.a, align 4, !tbaa !56, !alias.scope !80
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_113ScaleRenderer5applyEPKvPvl:bb.a
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !56, !alias.scope !91
  %broadcast.splatinsert34 = insertelement <4 x float> poison, float %i.g, i64 0
  %i.h = load float, ptr %i.d, align 8, !tbaa !56, !alias.scope !91
  %broadcast.splatinsert32 = insertelement <4 x float> poison, float %i.h, i64 0
  %i.i = load <4 x float>, ptr %0, align 8
  %i.j = load <4 x float>, ptr %i.b, align 8
  %i.k = shl i64 %n.vec, 4                        ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  %i.m = getelementptr i8, ptr %1, i64 %i.k
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.i, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7>
  %i.o = shufflevector <4 x float> %broadcast.splatinsert32, <4 x float> %broadcast.splatinsert34, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 4                 ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx
  %next.gep26.a = getelementptr i8, ptr %1, i64 %offset.idx ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %offset.idx ; 4 uses
  %next.gep27.a = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %offset.idx ; 4 uses
  %next.gep28.a = getelementptr i8, ptr %i.q, i64 32
  %i.r = getelementptr i8, ptr %1, i64 %offset.idx ; 4 uses
  %next.gep29 = getelementptr i8, ptr %i.r, i64 48
  %i.s = load float, ptr %next.gep26.a, align 4, !tbaa !56, !alias.scope !94
  %i.t = load float, ptr %next.gep27.a, align 4, !tbaa !56, !alias.scope !94
end_hunk_3
