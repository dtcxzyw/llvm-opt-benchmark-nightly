inline.NumInlined: 275
inline.NumDeleted: 91
begin_hunk_0_@extent_try_coalesce_impl:bb.a
  br label %.outer

.outer:                                           ; preds = %.loopexit, %bb.a
  %.036.ph = phi ptr [ %.343.ph, %.loopexit ], [ %4, %bb.a ] ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %extent_coalesce.exit51.thread
end_hunk_0
begin_hunk_1_@extent_try_coalesce_impl:bb.a
  br i1 %i.v, label %.sink.split, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %extent_coalesce.exit51
  %.343.ph = phi ptr [ %i.p, %extent_coalesce.exit51 ], [ %.036.ph, %bb.d ] ; 2 uses
  %.3.ph = phi i1 [ true, %extent_coalesce.exit51 ], [ %.040, %bb.d ]
  br i1 %.3.ph, label %.outer, label %.loopexit60

.loopexit60:                                      ; preds = %.loopexit, %extent_coalesce.exit51.thread
  %.339.ph59 = phi ptr [ %.036.ph, %extent_coalesce.exit51.thread ], [ %.343.ph, %.loopexit ] ; 2 uses
  %i.w = load i8, ptr %i.d, align 8, !tbaa !37, !range !38, !noundef !39
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.sink.split, label %bb.f
end_hunk_1
