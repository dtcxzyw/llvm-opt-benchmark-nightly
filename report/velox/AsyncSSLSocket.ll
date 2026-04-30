inline.NumInlined: 2904
inline.NumDeleted: 1295
begin_hunk_0_@_ZN5folly14AsyncSSLSocket12performWriteEPK5iovecjNS_10WriteFlagsEPjS5_NS_11AsyncSocket15WriteRequestTagE:bb.a
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph258, %bb.at
  %.095257 = phi i64 [ 0, %.lr.ph258 ], [ %.297, %bb.at ] ; 3 uses
  %.0105256 = phi i64 [ 0, %.lr.ph258 ], [ %.3108, %bb.at ] ; 5 uses
  %.0109255 = phi i32 [ 0, %.lr.ph258 ], [ %.pre-phi, %bb.at ] ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5folly14AsyncSSLSocket12performWriteEPK5iovecjNS_10WriteFlagsEPjS5_NS_11AsyncSocket15WriteRequestTagE:bb.a
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %11 = load i32, ptr %5, align 4, !tbaa !7
  %i.as = add i32 %11, 1
  %.pre302 = add nuw i32 %.0109255, 1
  br label %bb.at
end_hunk_1
begin_hunk_2_@_ZN5folly14AsyncSSLSocket12performWriteEPK5iovecjNS_10WriteFlagsEPjS5_NS_11AsyncSocket15WriteRequestTagE:bb.a

bb.at:                                            ; preds = %bb.k, %bb.aq
  %.pre-phi = phi i32 [ %.pre302, %bb.k ], [ %i.cj, %bb.aq ] ; 2 uses
  %storemerge = phi i32 [ %i.as, %bb.k ], [ %i.dq, %bb.aq ]
  %.3 = phi ptr [ %.0179254, %bb.k ], [ %.2324, %bb.aq ] ; 2 uses
  %.3108 = phi i64 [ 0, %bb.k ], [ %.2107329, %bb.aq ]
  %.297 = phi i64 [ %.095257, %bb.k ], [ %i.dk, %bb.aq ] ; 2 uses
end_hunk_2
