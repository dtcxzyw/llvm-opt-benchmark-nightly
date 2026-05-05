inline.NumInlined: 157
inline.NumDeleted: 65
begin_hunk_0_@opj_j2k_set_imf_parameters:bb.a
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %.backedge
  %i.an = phi i32 [ %.pr, %.lr.ph ], [ %i.ar, %.backedge ] ; 4 uses
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  %i.ap = shl nuw i32 1, %i.ao                    ; 2 uses
  %i.aq = icmp ult i32 %i.am, %i.ap
end_hunk_0
begin_hunk_1_@opj_j2k_set_imf_parameters:bb.a
  br label %.loopexit5.loopexit

..loopexit5.loopexit_crit_edge:                   ; preds = %bb.v
  %.lcssa15 = phi i32 [ %i.an, %bb.v ]
  br label %.loopexit5.loopexit

.loopexit5.loopexit:                              ; preds = %.loopexit5.loopexitsplit, %..loopexit5.loopexit_crit_edge
  %.ph = phi i32 [ %.lcssa15, %..loopexit5.loopexit_crit_edge ], [ %.lcssa14, %.loopexit5.loopexitsplit ]
  br label %.loopexit5

.loopexit5:                                       ; preds = %.loopexit5.loopexit, %opj_j2k_get_imf_max_NL.exit, %bb.j, %bb.i, %bb.h
end_hunk_1
begin_hunk_2_@j2k_get_cstr_index:bb.a
  br i1 %.not116, label %.preheader, label %bb.k

.preheader:                                       ; preds = %.lr.ph
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %.lr.ph ]
  %.lcssa = phi ptr [ %i.ao, %.lr.ph ]
  %.not133 = icmp eq i64 %indvars.iv.lcssa, 0
end_hunk_2
begin_hunk_3_@j2k_get_cstr_index:bb.a
  %i.aq = load ptr, ptr %scevgep241, align 8, !tbaa !218
  tail call void @opj_free(ptr noundef %i.aq) #21
  %lsr.iv.next240 = add nuw nsw i64 %lsr.iv239, 56 ; 2 uses
  %exitcond150.not = icmp eq i64 %lsr.iv, %lsr.iv.next240
  br i1 %exitcond150.not, label %._crit_edge131.loopexit, label %.lr.ph130, !llvm.loop !329

._crit_edge131.loopexit:                          ; preds = %.lr.ph130
end_hunk_3
begin_hunk_4_@j2k_get_cstr_index:bb.a
  br i1 %.not118, label %.preheader121, label %bb.o

.preheader121:                                    ; preds = %bb.n
  %.lcssa199 = phi ptr [ %i.bj, %bb.n ]
  %indvars.iv.lcssa195 = phi i64 [ %indvars.iv, %bb.n ]
  %.not132 = icmp eq i64 %indvars.iv.lcssa195, 0
end_hunk_4
begin_hunk_5_@j2k_get_cstr_index:bb.a
  %i.bn = load ptr, ptr %scevgep237, align 8, !tbaa !217
  tail call void @opj_free(ptr noundef %i.bn) #21
  %lsr.iv.next234 = add nuw nsw i64 %lsr.iv233, 56 ; 2 uses
  %exitcond.not = icmp eq i64 %lsr.iv, %lsr.iv.next234
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph128, !llvm.loop !330

._crit_edge.loopexit:                             ; preds = %.lr.ph128
end_hunk_5
