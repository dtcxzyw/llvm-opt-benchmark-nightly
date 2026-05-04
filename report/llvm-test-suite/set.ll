inline.NumInlined: 29
inline.NumDeleted: 1
begin_hunk_0_@sf_print:bb.a
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %i.ac, -1
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
end_hunk_0
begin_hunk_1_@sf_print:bb.a
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape22 = add nsw i64 %i.aj, -1
  %cmp.n23 = icmp eq i64 %i.ab, %n.vec17
  br i1 %cmp.n23, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv44.i.ph = phi i64 [ %i.aa, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
end_hunk_1
begin_hunk_2_@sf_print:bb.a
  br i1 %i.ar, label %.preheader.i, label %.loopexit, !llvm.loop !72

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv44.i.lcssa = phi i64 [ %ind.escape22, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv44.i, %.preheader.i ] ; 3 uses
  %indvars.iv.next45.i.lcssa = phi i64 [ %i.aj, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %indvars.iv.next45.i, %.preheader.i ] ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv.next45.i.lcssa to i32
  %i.at = icmp sgt i64 %indvars.iv44.i.lcssa, 104
end_hunk_2
begin_hunk_3_@ps1:bb.a
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %i.x, -1
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit65, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
end_hunk_3
begin_hunk_4_@ps1:bb.a
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape61 = add nsw i64 %i.ae, -1
  %cmp.n62 = icmp eq i64 %i.w, %n.vec56
  br i1 %cmp.n62, label %.loopexit65, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv44.ph = phi i64 [ %i.v, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
end_hunk_4
begin_hunk_5_@ps1:bb.a
  br i1 %i.am, label %.preheader, label %.loopexit65, !llvm.loop !78

.loopexit65:                                      ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %indvars.iv44.lcssa = phi i64 [ %ind.escape61, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv44, %.preheader ] ; 3 uses
  %indvars.iv.next45.lcssa = phi i64 [ %i.ae, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %indvars.iv.next45, %.preheader ] ; 2 uses
  %i.an = trunc nsw i64 %indvars.iv.next45.lcssa to i32
  %i.ao = icmp sgt i64 %indvars.iv44.lcssa, 104
end_hunk_5
