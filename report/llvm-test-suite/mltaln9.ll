inline.NumInlined: 16
inline.NumDeleted: 4
begin_hunk_0_@fixed_musclesupg_float_realloc_nobk_halfmtx_treeout:bb.a

.preheader325.lr.ph:                              ; preds = %bb.g
  %i.aa = tail call ptr @__ctype_b_loc() #39      ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 7 uses
  br label %.preheader325

.preheader325:                                    ; preds = %.preheader325.lr.ph, %bb.i
end_hunk_0
begin_hunk_1_@fixed_musclesupg_float_realloc_nobk_halfmtx_treeout:bb.a

.lr.ph.preheader:                                 ; preds = %bb.i
  %.pre424 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %0, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.ae = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 8 uses
  br label %.lr.ph

end_hunk_1
begin_hunk_2_@fixed_musclesupg_float_realloc_nobk_halfmtx_treeout:bb.a

scalar.ph.preheader:                              ; preds = %.lr.ph338, %middle.block
  %indvars.iv414.ph = phi i64 [ 0, %.lr.ph338 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter486 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  br i1 %lcmp.mod487.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

end_hunk_2
begin_hunk_3_@fixed_musclesupg_float_realloc_nobk_halfmtx_treeout:bb.a

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv414.unr = phi i64 [ %indvars.iv414.ph, %scalar.ph.preheader ], [ %indvars.iv.next415.prol, %scalar.ph.prol ]
  %i.eg = sub nsw i64 %indvars.iv414.ph, %wide.trip.count
  %i.eh = icmp ugt i64 %i.eg, -4
  br i1 %i.eh, label %._crit_edge339, label %scalar.ph

end_hunk_3
