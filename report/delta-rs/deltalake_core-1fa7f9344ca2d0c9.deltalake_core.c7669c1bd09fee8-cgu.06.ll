inline.NumInlined: 10989
inline.NumDeleted: 2487
begin_hunk_0_@_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.dp, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %.lcssa689 = phi ptr [ %i.dd, %bb.ap ]
  %.lcssa678 = phi ptr [ %i.dd, %bb.ap ]
  %.lcssa641 = phi ptr [ %i.dm, %bb.ap ]
  %.lcssa634 = phi i16 [ %i.dn, %bb.ap ]          ; 3 uses
  %.lcssa627 = phi ptr [ %i.dd, %bb.ap ]          ; 12 uses
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %lcmp.mod518.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %scevgep677 = getelementptr i8, ptr %.lcssa678, i64 640
  %i.eq = shl nuw nsw i64 %.lcssa595, 3
  %scevgep678 = getelementptr i8, ptr %scevgep677, i64 %i.eq
  br label %.lr.ph.i.i.i.prol
end_hunk_1
begin_hunk_2_@_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.ez, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %scevgep680 = getelementptr i8, ptr %.lcssa689, i64 656 ; 4 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
end_hunk_2
begin_hunk_3_@_RINvMs_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_ECs14kWLkQVSKO_14deltalake_core:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %lsr.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.c ] ; 3 uses
  %.sroa.8.0.i82 = phi i64 [ %i.g, %bb.c ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %scevgep110 = getelementptr i8, ptr %scevgep, i64 %lsr.iv
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 -8
  %.val7.i = load ptr, ptr %scevgep111, align 8, !nonnull !3, !noundef !3
end_hunk_3
begin_hunk_4_@_RINvMs_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_ECs14kWLkQVSKO_14deltalake_core:bb.a
  unreachable

._crit_edge.loopexitsplit:                        ; preds = %bb.c
  %.sroa.4.0.i.ph.ph.ph = phi i64 [ %i.e, %bb.c ]
  br label %._crit_edge.loopexit

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %.sroa.8.0.i82.lcssa113 = phi i64 [ %.sroa.8.0.i82, %.lr.ph ]
  %.sroa.8.0.i82.lcssa113.a = phi i64 [ %.sroa.8.0.i82, %.lr.ph ] ; 0 uses
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.lr.ph.._crit_edge.loopexit_crit_edge
  %.sroa.4.0.i.ph.ph = phi i64 [ %.sroa.8.0.i82.lcssa113, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %.sroa.4.0.i.ph.ph.ph, %._crit_edge.loopexitsplit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
end_hunk_4
begin_hunk_5_@_RINvMs_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeB1A_ECs14kWLkQVSKO_14deltalake_core:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %lsr.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.c ] ; 3 uses
  %.sroa.8.0.i82 = phi i64 [ %i.g, %bb.c ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %scevgep110 = getelementptr i8, ptr %scevgep, i64 %lsr.iv
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 -8
  %.val7.i = load ptr, ptr %scevgep111, align 8, !nonnull !3, !noundef !3
end_hunk_5
begin_hunk_6_@_RINvMs_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeB1A_ECs14kWLkQVSKO_14deltalake_core:bb.a
  unreachable

._crit_edge.loopexitsplit:                        ; preds = %bb.c
  %.sroa.4.0.i.ph.ph.ph = phi i64 [ %i.e, %bb.c ]
  br label %._crit_edge.loopexit

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %.sroa.8.0.i82.lcssa113 = phi i64 [ %.sroa.8.0.i82, %.lr.ph ]
  %.sroa.8.0.i82.lcssa113.a = phi i64 [ %.sroa.8.0.i82, %.lr.ph ] ; 0 uses
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.lr.ph.._crit_edge.loopexit_crit_edge
  %.sroa.4.0.i.ph.ph = phi i64 [ %.sroa.8.0.i82.lcssa113, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %.sroa.4.0.i.ph.ph.ph, %._crit_edge.loopexitsplit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
end_hunk_6
begin_hunk_7_@_RINvMs_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeeECs14kWLkQVSKO_14deltalake_core:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %lsr.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.c ] ; 3 uses
  %.sroa.8.0.i80 = phi i64 [ %i.e, %bb.c ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %scevgep108 = getelementptr i8, ptr %scevgep, i64 %lsr.iv
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 -8
  %.val.i = load ptr, ptr %scevgep109, align 8, !noalias !201, !nonnull !3, !noundef !3
end_hunk_7
begin_hunk_8_@_RINvMs_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeeECs14kWLkQVSKO_14deltalake_core:bb.a
  unreachable

._crit_edge.loopexitsplit:                        ; preds = %bb.c
  %.sroa.4.0.i.ph.ph.ph = phi i64 [ %i.c, %bb.c ]
  br label %._crit_edge.loopexit

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %.sroa.8.0.i80.lcssa111 = phi i64 [ %.sroa.8.0.i80, %.lr.ph ]
  %.sroa.8.0.i80.lcssa111.a = phi i64 [ %.sroa.8.0.i80, %.lr.ph ] ; 0 uses
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.lr.ph.._crit_edge.loopexit_crit_edge
  %.sroa.4.0.i.ph.ph = phi i64 [ %.sroa.8.0.i80.lcssa111, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %.sroa.4.0.i.ph.ph.ph, %._crit_edge.loopexitsplit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
end_hunk_8
