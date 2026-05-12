inline.NumInlined: 274
inline.NumDeleted: 126
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRenderer5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %4 = shl i64 %n.vec, 4                          ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = getelementptr i8, ptr %1, i64 %4
  %7 = load <4 x float>, ptr %i.b, align 8
  %8 = load <4 x float>, ptr %i.c, align 8
  %i.k = load <4 x float>, ptr %i.d, align 4
  %i.l = load float, ptr %i.e, align 4, !tbaa !56, !alias.scope !77
  %broadcast.splatinsert33 = insertelement <4 x float> poison, float %i.l, i64 0
  %i.m = load <4 x float>, ptr %i.f, align 8
  %9 = load float, ptr %i.g, align 8, !tbaa !56, !alias.scope !77
  %broadcast.splatinsert37 = insertelement <4 x float> poison, float %9, i64 0
  %10 = load <4 x float>, ptr %i.h, align 4
  %11 = load float, ptr %i.i, align 4, !tbaa !56, !alias.scope !77
  %broadcast.splatinsert41 = insertelement <4 x float> poison, float %11, i64 0
  %i.n = shufflevector <4 x float> %7, <4 x float> %i.k, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.o = shufflevector <4 x float> %8, <4 x float> %broadcast.splatinsert33, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.p = shufflevector <4 x float> %i.m, <4 x float> %10, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.q = shufflevector <4 x float> %broadcast.splatinsert37, <4 x float> %broadcast.splatinsert41, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRenderer5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %5, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %6, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_113ScaleRenderer5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %4 = shl i64 %n.vec, 4                          ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = getelementptr i8, ptr %1, i64 %4
  %7 = load <4 x float>, ptr %i.b, align 8
  %i.g = load <4 x float>, ptr %0, align 8
  %8 = load float, ptr %i.d, align 8, !tbaa !56, !alias.scope !91
  %broadcast.splatinsert31 = insertelement <4 x float> poison, float %8, i64 0
  %9 = load float, ptr %i.e, align 4, !tbaa !56, !alias.scope !91
  %broadcast.splatinsert33 = insertelement <4 x float> poison, float %9, i64 0
  %i.h = shufflevector <4 x float> %7, <4 x float> %i.g, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7>
  %i.i = shufflevector <4 x float> %broadcast.splatinsert31, <4 x float> %broadcast.splatinsert33, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_113ScaleRenderer5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %5, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %6, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_3
