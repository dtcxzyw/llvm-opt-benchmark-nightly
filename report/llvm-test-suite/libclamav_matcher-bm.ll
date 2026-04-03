begin_hunk_0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25 ; 5 uses
  %.not8189 = icmp eq ptr %i.au, null
  br i1 %.not8189, label %._crit_edge.thread, label %.lr.ph92

end_hunk_0
begin_hunk_1
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !24
  %.not82111 = icmp ult i8 %i.av, %i.ax
  br i1 %.not82111, label %.lr.ph113, label %._crit_edge.thread

bb.g:                                             ; preds = %.lr.ph113
  %i.ay = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !24
  %.not82 = icmp ult i8 %i.av, %i.az
  br i1 %.not82, label %.lr.ph113, label %.._crit_edge_crit_edge115.a, !llvm.loop !31

.lr.ph113:                                        ; preds = %.lr.ph92, %bb.g
  %.091112 = phi ptr [ %i.bb, %bb.g ], [ %i.au, %.lr.ph92 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.091112, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 4 uses
  %.not81 = icmp eq ptr %i.bb, null
  br i1 %.not81, label %.._crit_edge_crit_edge.a, label %bb.g, !llvm.loop !31

.._crit_edge_crit_edge115.a:                      ; preds = %bb.g
  %2 = icmp eq ptr %i.bb, %i.au
  br i1 %2, label %._crit_edge.thread, label %.._crit_edge_crit_edge.a

._crit_edge.thread:                               ; preds = %.lr.ph92, %.loopexit, %.._crit_edge_crit_edge115.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !32
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !25 ; 2 uses
end_hunk_1
begin_hunk_2
  store ptr %1, ptr %i.at, align 8, !tbaa !25
  br label %bb.j

.._crit_edge_crit_edge.a:                         ; preds = %.lr.ph113, %.._crit_edge_crit_edge115.a
  %i.bh = getelementptr inbounds nuw i8, ptr %.091112, i64 48 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !32
end_hunk_2
