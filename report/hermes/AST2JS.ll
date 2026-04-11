inline.NumInlined: 2172
inline.NumDeleted: 1204
begin_hunk_0_@_ZN6hermes12_GLOBAL__N_15GenJS15_exprStartsWithEPNS_6ESTree4NodeES4_PFbS4_E:bb.a
  %or.cond162 = or i1 %.not89.not142, %.not93.not166
  br i1 %or.cond162, label %bb.e, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.d
  %.sink = phi i64 [ 56, %bb.i ], [ 48, %bb.d ], [ 48, %bb.j ], [ 56, %bb.g ], [ 56, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %.tr154, i64 %.sink
  %.tr154.be = load ptr, ptr %i.j, align 8, !tbaa !146
  br label %tailrecurse
end_hunk_0
