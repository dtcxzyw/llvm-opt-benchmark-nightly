inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0_@simple_downscale:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, 8589934584               ; 5 uses
  %4 = getelementptr i8, ptr %1, i64 %n.vec
  %5 = getelementptr i8, ptr %2, i64 %n.vec
  %6 = trunc i64 %n.vec to i32
  %7 = sub i32 %3, %6
  %8 = load i32, ptr %i.a, align 8, !tbaa !41, !alias.scope !49
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@simple_downscale:bb.a
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.04.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %bb.a ], [ %4, %middle.block ] ; 2 uses
  %.03.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.a ], [ %5, %middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %3, %vector.memcheck ], [ %3, %bb.a ], [ %7, %middle.block ] ; 4 uses
  %i.q = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_1
