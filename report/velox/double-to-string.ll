inline.NumInlined: 75
inline.NumDeleted: 19
begin_hunk_0_@_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS0_13StringBuilderE:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cg = phi i64 [ %i.cf, %vector.ph ], [ %i.ch, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ch = add nsw i64 %i.cg, -32
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %i.cj = sub nsw i64 22, %i.cg
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph37.preheader58

end_hunk_0
