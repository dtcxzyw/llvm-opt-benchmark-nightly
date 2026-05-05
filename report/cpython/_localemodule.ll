inline.NumInlined: 57
inline.NumDeleted: 20
begin_hunk_0_@decode_strings:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.02229 = phi i64 [ %i.e, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.02328 = phi i64 [ %i.f, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 %.02229    ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16
  %.not = icmp eq i8 %i.b, 0
end_hunk_0
begin_hunk_1_@decode_strings:bb.a
  br i1 %exitcond.not, label %.critedge.loopexitsplit, label %.lr.ph, !llvm.loop !61

.critedge.loopexitsplit:                          ; preds = %bb.b
  br label %.critedge.loopexit

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %.02328.lcssa.a = phi i64 [ %.02328, %.lr.ph ]
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph..critedge.loopexit_crit_edge
  %.023.lcssa.ph = phi i64 [ %.02328.lcssa.a, %.lr.ph..critedge.loopexit_crit_edge ], [ %1, %.critedge.loopexitsplit ]
  %.022.lcssa.ph = phi i64 [ %.02229, %.lr.ph..critedge.loopexit_crit_edge ], [ %i.e, %.critedge.loopexitsplit ]
  %i.g = add i64 %.023.lcssa.ph, -1
  br label %.critedge

end_hunk_1
