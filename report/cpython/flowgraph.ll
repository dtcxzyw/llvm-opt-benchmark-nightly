begin_hunk_0

bb.na:                                            ; preds = %insert_superinstructions.exit
  %i.bjk = load ptr, ptr %0, align 8, !tbaa !21   ; 9 uses
  %i.bjl = getelementptr i8, ptr %i.bjk, i64 32   ; 2 uses
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !36
  %i.bjn = icmp eq ptr %i.bjm, null
  br i1 %i.bjn, label %push_cold_blocks_to_end.exit, label %.lr.ph.i.i.i.i55
end_hunk_0
begin_hunk_1
.critedge86.preheader.i:                          ; preds = %basicblock_nofallthrough.exit.thread92.i, %get_max_label.exit.i
  %i.bow = load ptr, ptr %i.bjl, align 8, !tbaa !36
  %.not78111.i = icmp eq ptr %i.bow, null
  br i1 %.not78111.i, label %push_cold_blocks_to_end.exit, label %.preheader.i66

bb.nq:                                            ; preds = %basicblock_nofallthrough.exit.thread92.i, %.lr.ph.i64
  %.063108.i = phi i32 [ %.06.lcssa.i.i, %.lr.ph.i64 ], [ %.366.i, %basicblock_nofallthrough.exit.thread92.i ] ; 15 uses
end_hunk_1
begin_hunk_2
  %i.brz = icmp eq i32 %i.bry, -1
  br i1 %i.brz, label %optimize_cfg.exit.thread, label %push_cold_blocks_to_end.exit

push_cold_blocks_to_end.exit:                     ; preds = %.critedge86.preheader.i, %.critedge.thread.i, %bb.od, %bb.na
  %i.bsa = call fastcc i32 @resolve_line_numbers(ptr noundef nonnull %0)
  %i.bsb = icmp eq i32 %i.bsa, -1
  %. = sext i1 %i.bsb to i32
end_hunk_2
