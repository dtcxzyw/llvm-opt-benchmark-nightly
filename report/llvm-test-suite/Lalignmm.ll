inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@Lalignmm_hmout:bb.a

vector.ph328:                                     ; preds = %vector.memcheck315
  %n.vec330 = and i64 %i.gx, -8                   ; 3 uses
  %i.ha = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !47
  %broadcast.splatinsert335 = insertelement <4 x float> poison, float %i.ha, i64 0
  %broadcast.splat336 = shufflevector <4 x float> %broadcast.splatinsert335, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %12 = or disjoint i64 %n.vec330, 1
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph328
end_hunk_0
begin_hunk_1_@Lalignmm_hmout:bb.a

vector.ph357:                                     ; preds = %vector.memcheck343
  %n.vec359 = and i64 %i.hy, -8                   ; 3 uses
  %i.ib = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !56
  %broadcast.splatinsert364 = insertelement <4 x float> poison, float %i.ib, i64 0
  %broadcast.splat365 = shufflevector <4 x float> %broadcast.splatinsert364, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %13 = or disjoint i64 %n.vec359, 1
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph357
end_hunk_1
begin_hunk_2_@Lalign2m2m_hmout:bb.a

vector.ph332:                                     ; preds = %vector.memcheck319
  %n.vec334 = and i64 %i.gx, -8                   ; 3 uses
  %i.ha = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !160
  %broadcast.splatinsert339 = insertelement <4 x float> poison, float %i.ha, i64 0
  %broadcast.splat340 = shufflevector <4 x float> %broadcast.splatinsert339, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %16 = or disjoint i64 %n.vec334, 1
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph332
end_hunk_2
begin_hunk_3_@Lalign2m2m_hmout:bb.a

vector.ph361:                                     ; preds = %vector.memcheck347
  %n.vec363 = and i64 %i.hy, -8                   ; 3 uses
  %i.ib = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !169
  %broadcast.splatinsert368 = insertelement <4 x float> poison, float %i.ib, i64 0
  %broadcast.splat369 = shufflevector <4 x float> %broadcast.splatinsert368, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %17 = or disjoint i64 %n.vec363, 1
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph361
end_hunk_3
