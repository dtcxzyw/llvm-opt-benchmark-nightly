inline.NumInlined: 24
inline.NumDeleted: 13
begin_hunk_0_@_Py_strhex:bb.a
  br i1 %.not.i147.i, label %bb.g, label %.preheader.i, !llvm.loop !12

bb.g:                                             ; preds = %.preheader.i
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.preheader.i ]
  %lsr.iv27.lcssa = phi i64 [ %lsr.iv27, %.preheader.i ]
  %.lcssa17 = phi i64 [ %lsr.iv.next, %.preheader.i ]
  %i.y = sub nsw i64 %1, %.lcssa17
  %i.z = icmp sgt i64 %i.y, 0
end_hunk_0
begin_hunk_1_@_Py_strhex:bb.a
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %lsr.iv32 = phi i64 [ %lsr.iv.lcssa, %.lr.ph.i.i.i.preheader ], [ %lsr.iv.next33, %.lr.ph.i.i.i ]
  %lsr.iv29 = phi i64 [ %lsr.iv27.lcssa, %.lr.ph.i.i.i.preheader ], [ %lsr.iv.next30, %.lr.ph.i.i.i ] ; 3 uses
  %i.ab = shl i64 %lsr.iv29, 1
  %scevgep31 = getelementptr i8, ptr %.0116.i, i64 %i.ab ; 2 uses
  %scevgep34 = getelementptr i8, ptr %0, i64 %lsr.iv29
end_hunk_1
begin_hunk_2_@_Py_strhex_impl:bb.a
  br i1 %.not.i147, label %bb.aa, label %.preheader, !llvm.loop !12

bb.aa:                                            ; preds = %.preheader
  %lsr.iv358.lcssa = phi i64 [ %lsr.iv358, %.preheader ]
  %lsr.iv361.lcssa = phi i64 [ %lsr.iv361, %.preheader ]
  %.lcssa289 = phi i64 [ %lsr.iv.next359, %.preheader ]
  %i.be = sub nsw i64 %1, %.lcssa289
  %i.bf = icmp sgt i64 %i.be, 0
end_hunk_2
begin_hunk_3_@_Py_strhex_impl:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %lsr.iv366 = phi i64 [ %lsr.iv358.lcssa, %.lr.ph.i.i.preheader ], [ %lsr.iv.next367, %.lr.ph.i.i ]
  %lsr.iv363 = phi i64 [ %lsr.iv361.lcssa, %.lr.ph.i.i.preheader ], [ %lsr.iv.next364, %.lr.ph.i.i ] ; 3 uses
  %i.bh = shl i64 %lsr.iv363, 1
  %scevgep365 = getelementptr i8, ptr %.0116, i64 %i.bh ; 2 uses
  %scevgep368 = getelementptr i8, ptr %0, i64 %lsr.iv363
end_hunk_3
begin_hunk_4_@_Py_strhex_bytes:bb.a
  br i1 %.not.i147.i, label %bb.e, label %.preheader.i, !llvm.loop !12

bb.e:                                             ; preds = %.preheader.i
  %lsr.iv33.lcssa = phi i64 [ %lsr.iv33, %.preheader.i ]
  %lsr.iv28.lcssa = phi i64 [ %lsr.iv28, %.preheader.i ]
  %.lcssa17 = phi i64 [ %lsr.iv.next, %.preheader.i ]
  %i.v = sub nsw i64 %1, %.lcssa17
  %i.w = icmp sgt i64 %i.v, 0
end_hunk_4
begin_hunk_5_@_Py_strhex_bytes:bb.a
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %lsr.iv35 = phi i64 [ %lsr.iv33.lcssa, %.lr.ph.i.i.i.preheader ], [ %lsr.iv.next36, %.lr.ph.i.i.i ]
  %lsr.iv30 = phi i64 [ %lsr.iv28.lcssa, %.lr.ph.i.i.i.preheader ], [ %lsr.iv.next31, %.lr.ph.i.i.i ] ; 3 uses
  %i.x = shl i64 %lsr.iv30, 1
  %scevgep32 = getelementptr i8, ptr %i.d, i64 %i.x ; 2 uses
  %scevgep37 = getelementptr i8, ptr %0, i64 %lsr.iv30
end_hunk_5
