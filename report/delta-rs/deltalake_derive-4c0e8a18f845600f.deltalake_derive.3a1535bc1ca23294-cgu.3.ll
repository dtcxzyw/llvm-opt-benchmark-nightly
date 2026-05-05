inline.NumInlined: 14
inline.NumDeleted: 12
begin_hunk_0_@_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.cf = load i64, ptr %i.ag, align 8, !alias.scope !30, !noalias !27
  %i.cg = load i64, ptr %i.ah, align 8, !alias.scope !30, !noalias !27 ; 2 uses
  %i.ch = load ptr, ptr %i.ad, align 8, !noalias !33
  %i.ci = load i64, ptr %i.ae, align 8, !noalias !33 ; 3 uses
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

end_hunk_0
begin_hunk_1_@_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.ab
  %.sroa.02.015.i.i = phi i64 [ %i.cq, %bb.ab ], [ %i.cg, %.lr.ph.i.i.preheader ] ; 5 uses
  %.not14.i.i = icmp ult i64 %.sroa.02.015.i.i, %i.ci
  br i1 %.not14.i.i, label %bb.aa, label %bb.z

._crit_edge.i.i.loopexitsplitsplit:               ; preds = %bb.ab
  br label %._crit_edge.i.i.loopexitsplit

.._crit_edge.i.i.loopexitsplit_crit_edge:         ; preds = %bb.z
  br label %._crit_edge.i.i.loopexitsplit

._crit_edge.i.i.loopexitsplit:                    ; preds = %._crit_edge.i.i.loopexitsplitsplit, %.._crit_edge.i.i.loopexitsplit_crit_edge
  %.sroa.02.0.lcssa.i.i.ph.ph = phi i64 [ %i.ci, %.._crit_edge.i.i.loopexitsplit_crit_edge ], [ 0, %._crit_edge.i.i.loopexitsplitsplit ]
  br label %._crit_edge.i.i.loopexit

.._crit_edge.i.i.loopexit_crit_edge:              ; preds = %bb.aa
  %.sroa.02.015.i.i.lcssa52.a = phi i64 [ %.sroa.02.015.i.i, %bb.aa ]
  br label %._crit_edge.i.i.loopexit

._crit_edge.i.i.loopexit:                         ; preds = %._crit_edge.i.i.loopexitsplit, %.._crit_edge.i.i.loopexit_crit_edge
  %.sroa.02.0.lcssa.i.i.ph = phi i64 [ %.sroa.02.015.i.i.lcssa52.a, %.._crit_edge.i.i.loopexit_crit_edge ], [ %.sroa.02.0.lcssa.i.i.ph.ph, %._crit_edge.i.i.loopexitsplit ]
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %bb.y
end_hunk_1
