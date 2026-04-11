inline.NumInlined: 213
inline.NumDeleted: 79
begin_hunk_0_@setup_subexp_call:bb.a
  switch i32 %i.b, label %.critedge [
    i32 8, label %.preheader
    i32 9, label %.preheader98
    i32 5, label %2
    i32 6, label %tailrecurse.backedge
    i32 10, label %bb.d
    i32 7, label %bb.r
  ]
end_hunk_0
begin_hunk_1_@setup_subexp_call:bb.a
  %.not89 = icmp eq ptr %i.n, null
  br i1 %.not89, label %.critedge, label %.preheader98, !llvm.loop !124

2:                                                ; preds = %tailrecurse
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %.split, %tailrecurse, %2
  %.sink.a = phi i64 [ 8, %2 ], [ 24, %tailrecurse ], [ 8, %.split ]
  %i.o = getelementptr i8, ptr %.tr, i64 %.sink.a
  %.tr.be = load ptr, ptr %i.o, align 8, !tbaa !35
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  %i.p = getelementptr i8, ptr %1, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109  ; 2 uses
end_hunk_1
begin_hunk_2_@subexp_inf_recursive_check_trav:bb.a
  %.not31 = icmp eq ptr %i.g, null
  br i1 %.not31, label %.critedge, label %bb.b, !llvm.loop !140

tailrecurse.backedge:                             ; preds = %tailrecurse, %bb.g, %bb.e, %.split
  %.sink = phi i64 [ 24, %bb.g ], [ 8, %.split ], [ 24, %bb.e ], [ 8, %tailrecurse ]
  %i.h = getelementptr i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.h, align 8, !tbaa !35
  br label %tailrecurse
end_hunk_2
begin_hunk_3_@setup_tree:bb.a
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %.tr = phi ptr [ %.tr.ph, %tailrecurse.outer ], [ %.tr.be, %tailrecurse.backedge ] ; 40 uses
  %i.g = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.g, label %common.ret865 [
    i32 8, label %.preheader
end_hunk_3
begin_hunk_4_@setup_tree:bb.a

bb.dp:                                            ; preds = %bb.do
  %i.lx = or i32 %spec.select313, 32
  br label %5

bb.dq:                                            ; preds = %bb.do
  %i.ly = and i32 %.tr342.ph, 32
  %.not294 = icmp eq i32 %i.ly, 0
  br i1 %.not294, label %5, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lz = or disjoint i32 %i.lt, 128
  store i32 %i.lz, ptr %i.ls, align 4, !tbaa !35
  br label %5

5:                                                ; preds = %bb.dq, %bb.dr, %bb.dp
  %.2235 = phi i32 [ %i.lx, %bb.dp ], [ %spec.select313, %bb.dr ], [ %spec.select313, %bb.dq ]
  %6 = getelementptr i8, ptr %.tr, i64 24
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %5, %bb.ee
  %.tr.ph.be.in = phi ptr [ %7, %bb.ee ], [ %6, %5 ]
  %.tr342.ph.be = phi i32 [ %i.no, %bb.ee ], [ %.2235, %5 ]
  %.tr.ph.be = load ptr, ptr %.tr.ph.be.in, align 8, !tbaa !61
  br label %tailrecurse.outer

end_hunk_4
begin_hunk_5_@setup_tree:bb.a
  %i.nh = icmp sgt i32 %i.nf, %i.ng
  br i1 %i.nh, label %common.ret865, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.ec, %.split8, %.split
  %.sink636 = phi i64 [ 8, %.split8 ], [ 24, %.split ], [ 24, %bb.ec ]
  %i.ni = getelementptr i8, ptr %.tr, i64 %.sink636
  %.tr.be = load ptr, ptr %i.ni, align 8, !tbaa !35
  br label %tailrecurse
end_hunk_5
begin_hunk_6_@setup_tree:bb.a
  ]

bb.ee:                                            ; preds = %.split8
  %7 = getelementptr i8, ptr %.tr, i64 8
  %i.no = or i32 %.tr342.ph, 2
  br label %tailrecurse.outer.backedge

end_hunk_6
begin_hunk_7_@subexp_inf_recursive_check:bb.a
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %tailrecurse.backedge, label %common.ret119

tailrecurse.backedge:                             ; preds = %.split, %tailrecurse
  %.sink = phi i64 [ 32, %tailrecurse ], [ 8, %.split ]
  %i.ah = getelementptr i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.ah, align 8, !tbaa !35
  br label %tailrecurse
end_hunk_7
begin_hunk_8_@quantifiers_memory_node_info:bb.a
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %tailrecurse.backedge, label %.critedge

tailrecurse.backedge:                             ; preds = %bb.c, %.split, %.split, %.split, %.split, %bb.d
  %.sink = phi i64 [ 24, %.split ], [ 8, %bb.d ], [ 24, %.split ], [ 24, %.split ], [ 24, %.split ], [ 32, %bb.c ]
  %i.j = getelementptr i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.j, align 8, !tbaa !35
  br label %tailrecurse
end_hunk_8
begin_hunk_9_@get_head_value_node:bb.a
  %spec.select = select i1 %i.b, ptr %.tr, ptr null
  br label %common.ret57

tailrecurse.backedge:                             ; preds = %tailrecurse, %bb.k, %.split, %.split, %.split, %bb.h
  %.sink = phi i64 [ 8, %bb.k ], [ 24, %.split ], [ 8, %bb.h ], [ 24, %.split ], [ 24, %.split ], [ 8, %tailrecurse ]
  %i.c = getelementptr i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.c, align 8, !tbaa !35
  br label %tailrecurse
end_hunk_9
