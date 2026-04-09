inline.NumInlined: 352
inline.NumDeleted: 188
begin_hunk_0_@_ZN6Assimp27ImproveCacheLocalityProcess11ProcessMeshEP6aiMeshj:bb.a
bb.s:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit160, %.loopexit363
  %.0101459 = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.1102.lcssa, %.loopexit363 ] ; 2 uses
  %.0107458 = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.7114, %.loopexit363 ] ; 2 uses
  %.0119457 = phi i32 [ 1, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.2121, %.loopexit363 ] ; 5 uses
  %.0122456 = phi i32 [ %i.er, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.1123.lcssa, %.loopexit363 ] ; 2 uses
  %.sroa.0296.0455 = phi ptr [ %.sroa.0300.1519, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.sroa.0296.1.lcssa, %.loopexit363 ] ; 2 uses
  %.sroa.17.0454 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.sroa.17.1.lcssa, %.loopexit363 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp27ImproveCacheLocalityProcess11ProcessMeshEP6aiMeshj:bb.a
.preheader:                                       ; preds = %.preheader364, %bb.aj
  %.sroa.9278.6544 = phi ptr [ %i.hm, %bb.aj ], [ %.sroa.9278.5, %.preheader364 ]
  %i.hs = load i32, ptr %i.n, align 4             ; 2 uses
  %4 = call i32 @llvm.smax.i32(i32 %.0119457, i32 %i.hs)
  %i.ht = sext i32 %4 to i64
  %i.hu = icmp slt i32 %.0119457, %i.hs
  br i1 %i.hu, label %.lr.ph610, label %.loopexit363.thread

end_hunk_1
begin_hunk_2_@_ZN6Assimp27ImproveCacheLocalityProcess11ProcessMeshEP6aiMeshj:bb.a
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %exitcond480.not = icmp eq i64 %indvars.iv.next477, %i.ht
  br i1 %exitcond480.not, label %.loopexit363.thread, label %bb.al, !llvm.loop !15

bb.al:                                            ; preds = %.lr.ph610, %bb.ak
  %indvars.iv476609 = phi i64 [ %i.hv, %.lr.ph610 ], [ %indvars.iv.next477, %bb.ak ]
end_hunk_2
