inline.NumInlined: 231
inline.NumDeleted: 74
begin_hunk_0_@Init_default_shapes:bb.a
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !71

bb.c:                                             ; preds = %bb.b
  %.0.lcssa51 = phi i64 [ %.0, %bb.b ]
  %.0.lcssa42 = phi i64 [ %.0, %bb.b ]
  %.0.lcssa = phi i64 [ %.0, %bb.b ]              ; 5 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ]
  %i.f = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %.lcssa, i64 noundef 2) #17 ; 4 uses
end_hunk_0
begin_hunk_1_@Init_default_shapes:bb.a

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %.0.lcssa, -4                  ; 2 uses
  %i.h = lshr i64 %.0.lcssa42, 2
  %i.i = shl nuw i64 %i.h, 2
  %scevgep42 = getelementptr i8, ptr %i.f, i64 4  ; 2 uses
  %scevgep46.a = getelementptr i8, ptr %i.b, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@Init_default_shapes:bb.a
  %scevgep50 = getelementptr i8, ptr %i.f, i64 %i.z
  store i16 %i.y, ptr %scevgep50, align 2, !tbaa !56
  %i.aa = add nuw i64 %.02127, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.0.lcssa51, %i.aa
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !75

._crit_edge.loopexit:                             ; preds = %.lr.ph
end_hunk_2
