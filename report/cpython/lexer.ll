inline.NumInlined: 86
inline.NumDeleted: 14
begin_hunk_0_@_PyTokenizer_Get:bb.a
  br label %bb.bb

.preheader.i.i:                                   ; preds = %.backedge.i.i
  %.2262629.i.i.lcssa = phi i32 [ %.2262629.i.i, %.backedge.i.i ]
  %i.eo = icmp sgt i32 %.2262629.i.i.lcssa, 0
  br i1 %i.eo, label %.lr.ph504.i.i, label %.preheader.i.._crit_edge505.i_crit_edge.i
end_hunk_0
begin_hunk_1_@_PyTokenizer_Get:bb.a
  br label %tok_get.exit

bb.ep:                                            ; preds = %tok_backup.exit379.i.i, %.lr.ph504.split.i.i
  %lsr.iv667 = phi i32 [ %lsr.iv.next, %tok_backup.exit379.i.i ], [ %.2262629.i.i, %.lr.ph504.split.i.i ]
  %lsr.iv = phi ptr [ %scevgep665, %tok_backup.exit379.i.i ], [ %scevgep, %.lr.ph504.split.i.i ] ; 4 uses
  store ptr %lsr.iv, ptr %i.i, align 8, !tbaa !11
  %i.oc = icmp ult ptr %lsr.iv, %i.eq
end_hunk_1
begin_hunk_2_@tok_get_normal_mode:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ag
  %i.co = phi i32 [ %i.cv, %bb.ag ], [ %i.bo, %.lr.ph.preheader ] ; 4 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr [4 x i8], ptr %i.n, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !7
end_hunk_2
begin_hunk_3_@tok_get_normal_mode:bb.a
  br i1 %i.cw, label %.lr.ph, label %.critedgesplit, !llvm.loop !59

.critedgesplit:                                   ; preds = %bb.ag
  br label %.critedge

.lr.ph..critedge_crit_edge:                       ; preds = %.lr.ph
  %.lcssa3847.a = phi i32 [ %i.co, %.lr.ph ]
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %.lr.ph..critedge_crit_edge
  %.lcssa1773.ph = phi i32 [ %.lcssa3847.a, %.lr.ph..critedge_crit_edge ], [ 0, %.critedgesplit ]
  %.pre2330 = zext nneg i32 %.lcssa1773.ph to i64 ; 2 uses
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.n, i64 %.pre2330
  %.pre2331 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !7
end_hunk_3
