inline.NumInlined: 274
inline.NumDeleted: 126
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRenderer5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %4 = load float, ptr %i.i, align 4, !tbaa !56, !alias.scope !77
  %broadcast.splatinsert41 = insertelement <4 x float> poison, float %4, i64 0
  %5 = load <4 x float>, ptr %i.h, align 4
  %6 = load float, ptr %i.g, align 8, !tbaa !56, !alias.scope !77
  %broadcast.splatinsert37 = insertelement <4 x float> poison, float %6, i64 0
  %i.k = load <4 x float>, ptr %i.f, align 8
  %i.l = load float, ptr %i.e, align 4, !tbaa !56, !alias.scope !77
  %broadcast.splatinsert33 = insertelement <4 x float> poison, float %i.l, i64 0
  %i.m = load <4 x float>, ptr %i.d, align 4
  %7 = load <4 x float>, ptr %i.c, align 8
  %8 = load <4 x float>, ptr %i.b, align 8
  %9 = shl i64 %n.vec, 4                          ; 2 uses
  %10 = getelementptr i8, ptr %2, i64 %9
  %11 = getelementptr i8, ptr %1, i64 %9
  %i.n = shufflevector <4 x float> %8, <4 x float> %i.m, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.o = shufflevector <4 x float> %7, <4 x float> %broadcast.splatinsert33, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.p = shufflevector <4 x float> %i.k, <4 x float> %5, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.q = shufflevector <4 x float> %broadcast.splatinsert37, <4 x float> %broadcast.splatinsert41, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRenderer5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %10, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %11, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_113ScaleRenderer5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %4 = load float, ptr %i.e, align 4, !tbaa !56, !alias.scope !91
  %broadcast.splatinsert33 = insertelement <4 x float> poison, float %4, i64 0
  %5 = load float, ptr %i.d, align 8, !tbaa !56, !alias.scope !91
  %broadcast.splatinsert31 = insertelement <4 x float> poison, float %5, i64 0
  %i.g = load <4 x float>, ptr %0, align 8
  %6 = load <4 x float>, ptr %i.b, align 8
  %7 = shl i64 %n.vec, 4                          ; 2 uses
  %8 = getelementptr i8, ptr %2, i64 %7
  %9 = getelementptr i8, ptr %1, i64 %7
  %i.h = shufflevector <4 x float> %6, <4 x float> %i.g, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7>
  %i.i = shufflevector <4 x float> %broadcast.splatinsert31, <4 x float> %broadcast.splatinsert33, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_113ScaleRenderer5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %8, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %9, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_3
