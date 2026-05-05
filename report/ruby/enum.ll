inline.NumInlined: 672
inline.NumDeleted: 87
begin_hunk_0_@enum_inject:bb.a

bb.aj:                                            ; preds = %bb.an, %.preheader.i
  %.148.i = phi i64 [ %.249.i, %bb.an ], [ %.047.i, %.preheader.i ] ; 6 uses
  %.145.i = phi i64 [ %i.cz, %bb.an ], [ %.044.i, %.preheader.i ] ; 6 uses
  %.0.i74 = phi i64 [ %.1.i75, %bb.an ], [ 0, %.preheader.i ] ; 6 uses
  %i.cb = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.cc = and i64 %i.cb, 8192
end_hunk_0
begin_hunk_1_@enum_inject:bb.a
  br label %ary_inject_op.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.isplit:     ; preds = %bb.am
  %.145.i.lcssa135 = phi i64 [ %.145.i, %bb.am ]
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.i.rbimpl_RB_TYPE_P_fastpath.exit.thread.i_crit_edge: ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %.145.i.lcssa136 = phi i64 [ %.145.i, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.isplit, %rbimpl_RB_TYPE_P_fastpath.exit.i.rbimpl_RB_TYPE_P_fastpath.exit.thread.i_crit_edge
  %.148.i.lcssa134 = phi i64 [ %.148.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.rbimpl_RB_TYPE_P_fastpath.exit.thread.i_crit_edge ], [ %.148.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.isplit ] ; 2 uses
  %.145.i.lcssa133 = phi i64 [ %.145.i.lcssa136, %rbimpl_RB_TYPE_P_fastpath.exit.i.rbimpl_RB_TYPE_P_fastpath.exit.thread.i_crit_edge ], [ %.145.i.lcssa135, %rbimpl_RB_TYPE_P_fastpath.exit.thread.isplit ] ; 2 uses
  %.0.i74.lcssa132 = phi i64 [ %.0.i74, %rbimpl_RB_TYPE_P_fastpath.exit.i.rbimpl_RB_TYPE_P_fastpath.exit.thread.i_crit_edge ], [ %.0.i74, %rbimpl_RB_TYPE_P_fastpath.exit.thread.isplit ] ; 2 uses
  %.not55.i = icmp eq i64 %.0.i74.lcssa132, 0
  br i1 %.not55.i, label %rb_integer_type_p.exit.thread72.i, label %bb.aq

end_hunk_1
begin_hunk_2_@rb_uniform_quicksort_intro_2:bb.a
  br i1 %i.p, label %.preheader.i, label %.preheader28.split.i

.preheader28.split.us.i:                          ; preds = %.preheader28.split.us.i.preheader, %bb.e
  %.1.us.i = phi ptr [ %i.q, %bb.e ], [ %.038.i, %.preheader28.split.us.i.preheader ] ; 4 uses
  %i.q = getelementptr i8, ptr %.1.us.i, i64 -16  ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54   ; 3 uses
  %i.s = trunc i64 %i.r to i1
end_hunk_2
begin_hunk_3_@rb_uniform_quicksort_intro_2:bb.a
  br label %.loopexit.i.loopexit184

rb_uniform_is_less.exit27.us.i..loopexit.i.loopexit184_crit_edge: ; preds = %rb_uniform_is_less.exit27.us.i
  %.1.us.i.lcssa214 = phi ptr [ %.1.us.i, %rb_uniform_is_less.exit27.us.i ]
  br label %.loopexit.i.loopexit184

.loopexit.i.loopexit184:                          ; preds = %.loopexit.i.loopexit184split, %rb_uniform_is_less.exit27.us.i..loopexit.i.loopexit184_crit_edge
  %.1.us.i.lcssa = phi ptr [ %.1.us.i.lcssa214, %rb_uniform_is_less.exit27.us.i..loopexit.i.loopexit184_crit_edge ], [ %.1.us.i.lcssa215, %.loopexit.i.loopexit184split ]
  br label %.loopexit.i

.loopexit.i.loopexit185:                          ; preds = %.critedge.i25.i
end_hunk_3
begin_hunk_4_@rb_uniform_quicksort_intro_2:bb.a
  br i1 %.not66.us, label %.split113.us.loopexit, label %.split.us.us, !llvm.loop !105

bb.y:                                             ; preds = %bb.aa, %.split.us.us
  %.162.us.us = phi ptr [ %.061.us, %.split.us.us ], [ %i.da, %bb.aa ] ; 4 uses
  %i.cv = load i64, ptr %.162.us.us, align 8, !tbaa !54 ; 3 uses
  %i.cw = trunc i64 %i.cv to i1
  br i1 %i.cw, label %bb.z, label %.critedge.i82.us.us
end_hunk_4
begin_hunk_5_@rb_uniform_quicksort_intro_2:bb.a
  br label %.preheader.split103.us.us.preheader

.critedge.i82.us.us..preheader.split103.us.us.preheader_crit_edge: ; preds = %.critedge.i82.us.us
  %.162.us.us.lcssa200 = phi ptr [ %.162.us.us, %.critedge.i82.us.us ]
  br label %.preheader.split103.us.us.preheader

.preheader.split103.us.us.preheader:              ; preds = %.preheader.split103.us.us.preheadersplit, %.critedge.i82.us.us..preheader.split103.us.us.preheader_crit_edge
  %.162.us.us.lcssa = phi ptr [ %.162.us.us.lcssa200, %.critedge.i82.us.us..preheader.split103.us.us.preheader_crit_edge ], [ %.162.us.us.lcssa201.a, %.preheader.split103.us.us.preheadersplit ] ; 5 uses
  br label %.preheader.split103.us.us

bb.aa:                                            ; preds = %bb.z, %.critedge.i82.us.us
end_hunk_5
begin_hunk_6_@rb_uniform_quicksort_intro_2:bb.a
  br label %.split105.us109

rb_uniform_is_less.exit87.us.us..split105.us109_crit_edge: ; preds = %rb_uniform_is_less.exit87.us.us
  %.1.us.us.lcssa202 = phi ptr [ %.1.us.us, %rb_uniform_is_less.exit87.us.us ]
  br label %.split105.us109

.split105.us109:                                  ; preds = %.split105.us109split, %rb_uniform_is_less.exit87.us.us..split105.us109_crit_edge
  %.1.us.us.lcssa = phi ptr [ %.1.us.us.lcssa202, %rb_uniform_is_less.exit87.us.us..split105.us109_crit_edge ], [ %.1.us.us.lcssa203, %.split105.us109split ] ; 5 uses
  %.not.us = icmp ugt ptr %.162.us.us.lcssa, %.1.us.us.lcssa
  br i1 %.not.us, label %bb.x, label %bb.w

.preheader.split103.us.us:                        ; preds = %.preheader.split103.us.us.preheader, %bb.ac
  %.1.us.us = phi ptr [ %i.dg, %bb.ac ], [ %.0.us, %.preheader.split103.us.us.preheader ] ; 4 uses
  %i.db = load i64, ptr %.1.us.us, align 8, !tbaa !54 ; 3 uses
  %i.dc = trunc i64 %i.db to i1
  br i1 %i.dc, label %bb.ab, label %rb_uniform_is_less.exit87.us.us
end_hunk_6
begin_hunk_7_@rb_uniform_quicksort_intro_2:bb.a
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.split
  %.162 = phi ptr [ %.061, %.split ], [ %i.dn, %bb.ae ] ; 4 uses
  %i.dh = load i64, ptr %.162, align 8, !tbaa !54 ; 3 uses
  %i.di = trunc i64 %i.dh to i1
  br i1 %i.di, label %rb_uniform_is_less.exit84, label %.critedge.i82
end_hunk_7
begin_hunk_8_@rb_uniform_quicksort_intro_2:bb.a
  br label %.critedge.i85.preheader

.critedge.i82..critedge.i85.preheader_crit_edge:  ; preds = %.critedge.i82
  %.162.lcssa196.a = phi ptr [ %.162, %.critedge.i82 ]
  br label %.critedge.i85.preheader

.critedge.i85.preheader:                          ; preds = %.critedge.i85.preheadersplit, %.critedge.i82..critedge.i85.preheader_crit_edge
  %.162.lcssa = phi ptr [ %.162.lcssa196.a, %.critedge.i82..critedge.i85.preheader_crit_edge ], [ %.162.lcssa197, %.critedge.i85.preheadersplit ] ; 5 uses
  %scevgep = getelementptr i8, ptr %.0, i64 16
  br label %.critedge.i85

end_hunk_8
