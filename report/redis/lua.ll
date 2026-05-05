inline.NumInlined: 20
inline.NumDeleted: 13
begin_hunk_0_@pmain:bb.a
  br i1 %.not.i.i45, label %bb.ad, label %.preheader, !llvm.loop !25

bb.ad:                                            ; preds = %.preheader
  %indvars.iv.i.i.lcssa = phi i64 [ %lsr.iv.next, %.preheader ] ; 2 uses
  %indvars32.i = trunc i64 %indvars.iv.i.i.lcssa to i32 ; 2 uses
  %i.ci = add nuw nsw i32 %.026.i7991107, 1       ; 4 uses
end_hunk_0
begin_hunk_1_@pmain:bb.a

.lr.ph.preheader.i.i:                             ; preds = %bb.ad
  %i.cm = zext nneg i32 %i.ci to i64
  %i.cn = zext i32 %lsr.iv250 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
end_hunk_1
begin_hunk_2_@pmain:bb.a
  br i1 %.not32.i.i, label %getargs.exit.i, label %.lr.ph30.preheader.i.i

.lr.ph30.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.cq = zext i32 %lsr.iv250 to i64
  %i.cr = sub i32 0, %.026.i7991107
  %i.cs = zext i32 %i.cr to i64
  br label %.lr.ph30.i.i
end_hunk_2
