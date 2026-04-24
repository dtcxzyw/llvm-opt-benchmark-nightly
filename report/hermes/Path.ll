inline.NumInlined: 1790
inline.NumDeleted: 565
begin_hunk_0_@_ZN4llvh3sys2fs9real_pathERKNS_5TwineERNS_15SmallVectorImplIcEEb:bb.a

bb.f:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0107.0146.i, i64 1
  %i.x = add nsw i64 %.pn147.i, -1                ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZNK4llvh9StringRef7find_ifENS_12function_refIFbcEEEm.exit.i, label %.lr.ph.i, !llvm.loop !226

end_hunk_0
