inline.NumInlined: 27
inline.NumDeleted: 9
begin_hunk_0_@utrie_serialize_78:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iw, 2147483640              ; 5 uses
  %6 = load i32, ptr %i.ic, align 4, !alias.scope !23
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %7 = trunc nuw nsw i64 %n.vec to i32
  %8 = sub nsw i32 %i.iu, %7
  %9 = shl nuw nsw i64 %n.vec, 1
  %10 = getelementptr i8, ptr %i.ik, i64 %9       ; 2 uses
  %11 = shl nuw nsw i64 %n.vec, 2
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@utrie_serialize_78:bb.a
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader186

.lr.ph.preheader186:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.07493.ph = phi i32 [ %i.iu, %vector.memcheck ], [ %i.iu, %.lr.ph.preheader ], [ %8, %middle.block ]
  %.07592.ph = phi ptr [ %i.ik, %vector.memcheck ], [ %i.ik, %.lr.ph.preheader ], [ %10, %middle.block ]
  %.07891.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %12, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader186, %.lr.ph
end_hunk_1
begin_hunk_2_@utrie_serialize_78:bb.a
  br i1 %i.jw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !32

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa126 = phi ptr [ %10, %middle.block ], [ %i.ju, %.lr.ph ]
  %.pre = load i32, ptr %i.ir, align 4
  br label %._crit_edge

end_hunk_2
