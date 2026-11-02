Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 280
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_:bb.a
  store i32 %i.as, ptr %i.al, align 4, !tbaa !247, !noalias !2148
  store i32 0, ptr %i.aq, align 4, !tbaa !247, !noalias !2148
  %.not27.i.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !68

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.an, ptr %i.at, align 4, !tbaa !247, !noalias !2148
  store i32 0, ptr %i.am, align 4, !tbaa !247, !noalias !2148
  %.not26.i.i = icmp eq ptr %i.am, %i.ai
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !68

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.aj, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.au, %.split.i14.i ], [ %i.ag, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.ay, %.split.i14.i ], [ %i.f, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.ak, %bb.i ]
  %i.au = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bb, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.av, %bb.k ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 5 uses
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !247, !noalias !2149 ; 2 uses
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !247, !noalias !2149 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.aw, %i.ax
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.ay = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !247, !noalias !2149
  store i32 0, ptr %i.au, align 4, !tbaa !247, !noalias !2149
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !247, !noalias !2149
  store i32 %i.ba, ptr %i.au, align 4, !tbaa !247, !noalias !2149
  store i32 0, ptr %i.ay, align 4, !tbaa !247, !noalias !2149
  %.not28.i.i = icmp eq ptr %i.ay, %i.ad
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !69

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.ax, ptr %i.bb, align 4, !tbaa !247, !noalias !2149
  store i32 0, ptr %i.av, align 4, !tbaa !247, !noalias !2149
  %.not27.i19.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !69

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bh, %bb.n ], [ %i.aj, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bi, %bb.n ], [ %i.f, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.ak, %bb.m ]
  %i.bc = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bh, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bd, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !247, !noalias !2150 ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !247, !noalias !2150 ; 2 uses
  %i.bg = icmp slt i32 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bi = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !247, !noalias !2150
  store i32 0, ptr %i.bi, align 4, !tbaa !247, !noalias !2150
  %i.bj = icmp eq ptr %i.bi, %i.ad
  br i1 %i.bj, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !66

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.be, ptr %i.bh, align 4, !tbaa !247, !noalias !2150
  store i32 0, ptr %i.bd, align 4, !tbaa !247, !noalias !2150
  %i.bk = icmp eq ptr %i.bd, %i.ai
  br i1 %i.bk, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !66

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bp, %bb.q ], [ %i.aj, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bq, %bb.q ], [ %i.f, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.ak, %bb.p ]
  %i.bl = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bp, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.bm, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !247, !noalias !2151 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !247, !noalias !2151 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bn, %i.bo
  %i.bp = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bq = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !247, !noalias !2151
  store i32 0, ptr %i.bq, align 4, !tbaa !247, !noalias !2151
  %i.br = icmp eq ptr %i.bq, %i.ad
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !70

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !247, !noalias !2151
  store i32 0, ptr %i.bm, align 4, !tbaa !247, !noalias !2151
  %i.bs = icmp eq ptr %i.bm, %i.ai
  br i1 %i.bs, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !70

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.am, %bb.h ], [ %i.av, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bd, %bb.o ], [ %i.bm, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.f, %bb.p ], [ %i.f, %bb.m ], [ %i.ad, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ad, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.at, %bb.h ], [ %i.bb, %bb.k ], [ %i.bp, %bb.r ], [ %i.bh, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %i.ar, %.split.i.i ], [ %i.bh, %bb.n ], [ %i.bp, %bb.q ], [ %i.az, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.ag, %bb.r ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ], [ %i.ag, %bb.m ], [ %i.al, %.split.i.i ], [ %i.ag, %bb.n ], [ %i.ag, %bb.q ], [ %i.au, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !330, !noalias !322
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !330, !noalias !322
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.069.0 = phi ptr [ %i.ag, %bb.f ], [ %i.ag, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 10 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !330
  %i.bt = load ptr, ptr %3, align 8, !tbaa !330   ; 18 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64              ; 4 uses
  %i.bv = icmp eq ptr %i.bt, %.sroa.064.0
  br i1 %i.bv, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ah
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.by, %.lr.ph.i28 ], [ %i.bt, %bb.t ]
  %i.bw = phi ptr [ %i.bx, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ]
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 5 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !247, !noalias !2152
  store i32 0, ptr %i.bx, align 4, !tbaa !247, !noalias !2152
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2152
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2152
  %i.cc = load i32, ptr %i.by, align 4, !tbaa !247, !noalias !2152
  store i32 %i.cc, ptr %i.bx, align 4, !tbaa !247, !noalias !2152
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !247, !noalias !2152
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2152
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2152
  %.not.i = icmp eq ptr %i.bx, %i.ah
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28, !llvm.loop !64

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.bt, %i.ad           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.bu, %invariant.op
  %i.cf = sub i64 %.reass, %i.g                   ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.cf, 44
  br i1 %min.iters.check330, label %.lr.ph.i29.preheader363, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.i29.preheader
  %i.ci = add i64 %i.b, %i.bu
  %reass.sub = sub i64 %i.g, %i.ci
  %.not357 = add i64 %reass.sub, 3
  %i.cj = and i64 %.not357, -4                    ; 3 uses
  %i.ck = getelementptr i8, ptr %.sroa.064.0, i64 %i.cj ; 2 uses
  %i.cl = getelementptr i8, ptr %.sroa.069.0, i64 %i.cj ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bt, i64 %i.cj  ; 2 uses
  %bound0332 = icmp ult ptr %i.ck, %.sroa.069.0
  %bound1333 = icmp ult ptr %i.cl, %.sroa.064.0
  %found.conflict334 = and i1 %bound0332, %bound1333
  %bound0335 = icmp ult ptr %i.ck, %i.bt
  %bound1336 = icmp ult ptr %i.cm, %.sroa.064.0
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx = or i1 %found.conflict334, %found.conflict337
  %bound0338 = icmp ult ptr %i.cl, %i.bt
  %bound1339 = icmp ult ptr %i.cm, %.sroa.069.0
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx, %found.conflict340
  br i1 %conflict.rdx341, label %.lr.ph.i29.preheader363, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck331
  %n.vec343 = and i64 %i.ch, 9223372036854775800  ; 3 uses
  %i.cn = mul i64 %n.vec343, -4                   ; 3 uses
  %i.co = getelementptr i8, ptr %.sroa.069.0, i64 %i.cn
  %i.cp = getelementptr i8, ptr %.sroa.064.0, i64 %i.cn ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bt, i64 %i.cn
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next351, %vector.body344 ] ; 2 uses
  %i.cr = mul i64 %index345, -4                   ; 3 uses
  %next.gep346 = getelementptr i8, ptr %.sroa.069.0, i64 %i.cr ; 2 uses
  %next.gep346.a = getelementptr i8, ptr %.sroa.064.0, i64 %i.cr ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.bt, i64 %i.cr ; 2 uses
  %next.gep348 = getelementptr inbounds i8, ptr %next.gep346, i64 -16 ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %next.gep346, i64 -32 ; 3 uses
  %wide.load349 = load <4 x i32>, ptr %next.gep348, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  %wide.load349.a = load <4 x i32>, ptr %i.cs, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  %12 = getelementptr inbounds i8, ptr %next.gep346.a, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep346.a, i64 -32
  store <4 x i32> %wide.load349, ptr %12, align 4, !tbaa !247, !alias.scope !2155, !noalias !2156
  store <4 x i32> %wide.load349.a, ptr %i.ct, align 4, !tbaa !247, !alias.scope !2155, !noalias !2156
  store <4 x i32> zeroinitializer, ptr %next.gep348, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  store <4 x i32> zeroinitializer, ptr %i.cs, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  %13 = getelementptr inbounds i8, ptr %next.gep347, i64 -16 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep347, i64 -32 ; 2 uses
  %wide.load351 = load <4 x i32>, ptr %13, align 4, !tbaa !247, !alias.scope !2157, !noalias !2158
  %wide.load350 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !247, !alias.scope !2157, !noalias !2158
  store <4 x i32> %wide.load351, ptr %next.gep348, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  store <4 x i32> %wide.load350, ptr %i.cs, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  store <4 x i32> zeroinitializer, ptr %13, align 4, !tbaa !247, !alias.scope !2157, !noalias !2158
  store <4 x i32> zeroinitializer, ptr %i.cu, align 4, !tbaa !247, !alias.scope !2157, !noalias !2158
  %index.next351 = add nuw i64 %index345, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next351, %n.vec343
  br i1 %i.cv, label %middle.block352, label %vector.body344, !llvm.loop !2136

middle.block352:                                  ; preds = %vector.body344
  %cmp.n353 = icmp eq i64 %i.ch, %n.vec343
  br i1 %cmp.n353, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader363

.lr.ph.i29.preheader363:                          ; preds = %vector.memcheck331, %.lr.ph.i29.preheader, %middle.block352
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck331 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.co, %middle.block352 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck331 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.cp, %middle.block352 ]
  %.ph364 = phi ptr [ %i.bt, %vector.memcheck331 ], [ %i.bt, %.lr.ph.i29.preheader ], [ %i.cq, %middle.block352 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader363, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.cy, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader363 ]
  %.sroa.045.0 = phi ptr [ %i.cz, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader363 ]
  %i.cw = phi ptr [ %i.cx, %.lr.ph.i29 ], [ %.ph364, %.lr.ph.i29.preheader363 ]
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -4 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !247, !noalias !2158
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !247, !noalias !2158
  store i32 0, ptr %i.cy, align 4, !tbaa !247, !noalias !2158
  %i.db = load i32, ptr %i.cx, align 4, !tbaa !247, !noalias !2158
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !247, !noalias !2158
  store i32 0, ptr %i.cx, align 4, !tbaa !247, !noalias !2158
  %.not.i30 = icmp eq ptr %i.cx, %i.ad
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !2137

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %.reass469 = add i64 %i.bu, %invariant.op468
  %i.dc = sub i64 %.reass469, %i.g                ; 2 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dc, 44
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader361, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.df = add i64 %i.b, %i.bu
  %reass.sub359 = sub i64 %i.g, %i.df
  %.not358 = add i64 %reass.sub359, 3
  %i.dg = and i64 %.not358, -4                    ; 2 uses
  %i.dh = getelementptr i8, ptr %.sroa.064.0, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.bt, i64 %i.dg
  %bound0 = icmp ult ptr %i.dh, %i.bt
  %bound1 = icmp ult ptr %i.di, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader361, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.de, 9223372036854775800     ; 3 uses
  %i.dj = mul i64 %n.vec, -4                      ; 2 uses
  %i.dk = getelementptr i8, ptr %.sroa.064.0, i64 %i.dj ; 2 uses
  %i.dl = getelementptr i8, ptr %i.bt, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dm = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.dm ; 2 uses
  %next.gep310 = getelementptr i8, ptr %i.bt, i64 %i.dm ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %next.gep310, i64 -16 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %next.gep310, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dn, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  %wide.load311 = load <4 x i32>, ptr %i.do, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  %i.dp = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dq = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.dp, align 4, !tbaa !247, !alias.scope !2161, !noalias !2162
  store <4 x i32> %wide.load311, ptr %i.dq, align 4, !tbaa !247, !alias.scope !2161, !noalias !2162
  store <4 x i32> zeroinitializer, ptr %i.dn, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !2145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader361

.lr.ph.i.i.preheader361:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dk, %middle.block ]
  %.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph.i.i.preheader ], [ %i.dl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader361, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader361 ]
  %i.ds = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader361 ]
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -4 ; 4 uses
  %i.du = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !247, !noalias !2160
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !247, !noalias !2160
  store i32 0, ptr %i.dt, align 4, !tbaa !247, !noalias !2160
  %.not.i.i31 = icmp eq ptr %i.dt, %i.ad
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !2146

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block352, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ad, %bb.s ], [ %i.du, %.lr.ph.i.i ], [ %i.bt, %bb.t ], [ %i.by, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dk, %middle.block ], [ %i.cp, %middle.block352 ], [ %i.cz, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !330
  %i.dw = load ptr, ptr %1, align 8, !tbaa !330   ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -4             ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ad, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 -4 ; 2 uses
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !247
  store i32 0, ptr %i.dy, align 4, !tbaa !247
  %i.eb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ed = load i32, ptr %i.dz, align 4, !tbaa !247
  store i32 %i.ed, ptr %i.dy, align 4, !tbaa !247
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !247
  %i.ee = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ef = add i32 %i.ee, -1
  store i32 %i.ef, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.eg = load ptr, ptr %2, align 8, !tbaa !330   ; 2 uses
  %i.eh = icmp eq ptr %i.dx, %i.eg
  br i1 %i.eh, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = icmp eq ptr %i.eg, %i.dw
  br i1 %i.ei, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.dw, %bb.y ], [ %i.dx, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !330
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !330
  %i.ej = load ptr, ptr %1, align 8, !tbaa !330
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4 ; 2 uses
  store ptr %i.ek, ptr %1, align 8, !tbaa !330
  %i.el = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.el to i64
  %i.em = add i64 %.0140, %.neg
  %i.en = icmp ne i64 %i.ac, 0
  %.neg24 = sext i1 %i.en to i64
  %i.eo = add i64 %.sroa.speculated, %.neg24
  %i.ep = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ep, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2147

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, %bb.a
  %i.eq = load ptr, ptr %6, align 8, !tbaa !330
  store ptr %i.eq, ptr %0, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !330    ; 3 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !330    ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !330    ; 7 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !330    ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
  br i1 %i.e, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !330    ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !330    ; 2 uses
  %.not1.i = icmp eq ptr %i.f, %i.g
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !247, !noalias !2193
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = phi ptr [ %i.f, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247, !noalias !2193
  %i.m = icmp slt i32 %i.l, %i.i
  br i1 %i.m, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.c, !llvm.loop !65

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = ptrtoint ptr %.lcssa.i to i64            ; 2 uses
  %i.p = sub i64 %i.n, %i.o
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %.not27.i.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !68

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.as, ptr %i.ay, align 4, !tbaa !247, !noalias !2572
  store i32 0, ptr %i.ar, align 4, !tbaa !247, !noalias !2572
  %.not26.i.i = icmp eq ptr %i.ar, %i.an
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !68

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.be, %.split.i14.i ], [ %i.ao, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.bd, %.split.i14.i ], [ %i.k, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.ap, %bb.i ]
  %i.az = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.ba, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 5 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !247, !noalias !2573 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !247, !noalias !2573 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.bb, %i.bc
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bd = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !247, !noalias !2573
  store i32 0, ptr %i.az, align 4, !tbaa !247, !noalias !2573
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !247, !noalias !2573
  store i32 %i.bf, ptr %i.az, align 4, !tbaa !247, !noalias !2573
  store i32 0, ptr %i.bd, align 4, !tbaa !247, !noalias !2573
  %.not28.i.i = icmp eq ptr %i.bd, %i.ai
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !69

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !247, !noalias !2573
  store i32 0, ptr %i.ba, align 4, !tbaa !247, !noalias !2573
  %.not27.i19.i = icmp eq ptr %i.ba, %i.an
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !69

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SO_SQ_SQ_SQ_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bm, %bb.n ], [ %i.ao, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bn, %bb.n ], [ %i.k, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.ap, %bb.m ]
  %i.bh = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bm, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bi, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !247, !noalias !2574 ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !247, !noalias !2574 ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bn = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !247, !noalias !2574
  store i32 0, ptr %i.bn, align 4, !tbaa !247, !noalias !2574
  %i.bo = icmp eq ptr %i.bn, %i.ai
  br i1 %i.bo, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !66

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !247, !noalias !2574
  store i32 0, ptr %i.bi, align 4, !tbaa !247, !noalias !2574
  %i.bp = icmp eq ptr %i.bi, %i.an
  br i1 %i.bp, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !66

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bu, %bb.q ], [ %i.ao, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bv, %bb.q ], [ %i.k, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.ap, %bb.p ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bu, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.br, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !247, !noalias !2575 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !247, !noalias !2575 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bs, %i.bt
  %i.bu = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bv = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !247, !noalias !2575
  store i32 0, ptr %i.bv, align 4, !tbaa !247, !noalias !2575
  %i.bw = icmp eq ptr %i.bv, %i.ai
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !70

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !247, !noalias !2575
  store i32 0, ptr %i.br, align 4, !tbaa !247, !noalias !2575
  %i.bx = icmp eq ptr %i.br, %i.an
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !70

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.ar, %bb.h ], [ %i.ba, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ap, %bb.p ], [ %i.ap, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bi, %bb.o ], [ %i.br, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ai, %bb.q ], [ %i.ai, %bb.n ], [ %i.k, %bb.p ], [ %i.k, %bb.m ], [ %i.ai, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ai, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.ay, %bb.h ], [ %i.bg, %bb.k ], [ %i.bu, %bb.r ], [ %i.bm, %bb.o ], [ %i.ao, %bb.p ], [ %i.ao, %bb.m ], [ %i.aw, %.split.i.i ], [ %i.bm, %bb.n ], [ %i.bu, %bb.q ], [ %i.be, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.al, %bb.r ], [ %i.al, %bb.o ], [ %i.al, %bb.p ], [ %i.al, %bb.m ], [ %i.aq, %.split.i.i ], [ %i.al, %bb.n ], [ %i.al, %bb.q ], [ %i.az, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !330, !noalias !322
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !330, !noalias !322
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.ao, %bb.f ], [ %i.ao, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.071.0 = phi ptr [ %i.al, %bb.f ], [ %i.al, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 10 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !330
  %i.by = load ptr, ptr %3, align 8, !tbaa !330   ; 18 uses
  %i.bz = ptrtoaddr ptr %i.by to i64              ; 4 uses
  %i.ca = icmp eq ptr %i.by, %.sroa.066.0
  br i1 %i.ca, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.071.0, %i.am
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.cd, %.lr.ph.i28 ], [ %i.by, %bb.t ]
  %i.cb = phi ptr [ %i.cc, %.lr.ph.i28 ], [ %.sroa.071.0, %bb.t ]
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -4 ; 4 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !247, !noalias !2576
  store i32 0, ptr %i.cc, align 4, !tbaa !247, !noalias !2576
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2576
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2576
  %i.ch = load i32, ptr %i.cd, align 4, !tbaa !247, !noalias !2576
  store i32 %i.ch, ptr %i.cc, align 4, !tbaa !247, !noalias !2576
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !247, !noalias !2576
  %i.ci = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2576
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2576
  %.not.i = icmp eq ptr %i.cc, %i.am
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28, !llvm.loop !64

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.by, %i.ai           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.ck = mul i64 %indvar, %i.e
  %i.cl = add i64 %i.g, %i.ck
  %i.cm = add i64 %i.cl, %i.bz                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.cm, 44
  br i1 %min.iters.check333, label %.lr.ph.i29.preheader365, label %vector.memcheck334

vector.memcheck334:                               ; preds = %.lr.ph.i29.preheader
  %i.cp = mul i64 %indvar, %i.b
  %i.cq = add i64 %i.d, %i.cp
  %i.cr = add i64 %i.cq, %i.bz
  %.not360 = and i64 %i.cr, -4
  %i.cs = xor i64 %.not360, -4                    ; 3 uses
  %i.ct = getelementptr i8, ptr %.sroa.066.0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.071.0, i64 %i.cs ; 2 uses
  %i.cv = getelementptr i8, ptr %i.by, i64 %i.cs  ; 2 uses
  %bound0335 = icmp ult ptr %i.ct, %.sroa.071.0
  %bound1336 = icmp ult ptr %i.cu, %.sroa.066.0
  %found.conflict337 = and i1 %bound0335, %bound1336
  %bound0338 = icmp ult ptr %i.ct, %i.by
  %bound1339 = icmp ult ptr %i.cv, %.sroa.066.0
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx = or i1 %found.conflict337, %found.conflict340
  %bound0341 = icmp ult ptr %i.cu, %i.by
  %bound1342 = icmp ult ptr %i.cv, %.sroa.071.0
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %conflict.rdx, %found.conflict343
  br i1 %conflict.rdx344, label %.lr.ph.i29.preheader365, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck334
  %n.vec346 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cw = mul i64 %n.vec346, -4                   ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.071.0, i64 %i.cw
  %i.cy = getelementptr i8, ptr %.sroa.066.0, i64 %i.cw ; 2 uses
  %i.cz = getelementptr i8, ptr %i.by, i64 %i.cw
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next354, %vector.body347 ] ; 2 uses
  %i.da = mul i64 %index348, -4                   ; 3 uses
  %next.gep349 = getelementptr i8, ptr %.sroa.071.0, i64 %i.da ; 2 uses
  %next.gep349.a = getelementptr i8, ptr %.sroa.066.0, i64 %i.da ; 2 uses
  %next.gep350 = getelementptr i8, ptr %i.by, i64 %i.da ; 2 uses
  %next.gep351 = getelementptr inbounds i8, ptr %next.gep349, i64 -16 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep349, i64 -32 ; 3 uses
  %wide.load352 = load <4 x i32>, ptr %next.gep351, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  %wide.load352.a = load <4 x i32>, ptr %i.db, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  %12 = getelementptr inbounds i8, ptr %next.gep349.a, i64 -16
  %i.dc = getelementptr inbounds i8, ptr %next.gep349.a, i64 -32
  store <4 x i32> %wide.load352, ptr %12, align 4, !tbaa !247, !alias.scope !2579, !noalias !2580
  store <4 x i32> %wide.load352.a, ptr %i.dc, align 4, !tbaa !247, !alias.scope !2579, !noalias !2580
  store <4 x i32> zeroinitializer, ptr %next.gep351, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  store <4 x i32> zeroinitializer, ptr %i.db, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  %13 = getelementptr inbounds i8, ptr %next.gep350, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %next.gep350, i64 -32 ; 2 uses
  %wide.load354 = load <4 x i32>, ptr %13, align 4, !tbaa !247, !alias.scope !2581, !noalias !2582
  %wide.load353 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !247, !alias.scope !2581, !noalias !2582
  store <4 x i32> %wide.load354, ptr %next.gep351, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  store <4 x i32> %wide.load353, ptr %i.db, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  store <4 x i32> zeroinitializer, ptr %13, align 4, !tbaa !247, !alias.scope !2581, !noalias !2582
  store <4 x i32> zeroinitializer, ptr %i.dd, align 4, !tbaa !247, !alias.scope !2581, !noalias !2582
  %index.next354 = add nuw i64 %index348, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next354, %n.vec346
  br i1 %i.de, label %middle.block355, label %vector.body347, !llvm.loop !2560

middle.block355:                                  ; preds = %vector.body347
  %cmp.n356 = icmp eq i64 %i.co, %n.vec346
  br i1 %cmp.n356, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader365

.lr.ph.i29.preheader365:                          ; preds = %vector.memcheck334, %.lr.ph.i29.preheader, %middle.block355
  %.sroa.048.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck334 ], [ %.sroa.071.0, %.lr.ph.i29.preheader ], [ %i.cx, %middle.block355 ]
  %.sroa.047.0.ph = phi ptr [ %.sroa.066.0, %vector.memcheck334 ], [ %.sroa.066.0, %.lr.ph.i29.preheader ], [ %i.cy, %middle.block355 ]
  %.ph366 = phi ptr [ %i.by, %vector.memcheck334 ], [ %i.by, %.lr.ph.i29.preheader ], [ %i.cz, %middle.block355 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader365, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.dh, %.lr.ph.i29 ], [ %.sroa.048.0.ph, %.lr.ph.i29.preheader365 ]
  %.sroa.047.0 = phi ptr [ %i.di, %.lr.ph.i29 ], [ %.sroa.047.0.ph, %.lr.ph.i29.preheader365 ]
  %i.df = phi ptr [ %i.dg, %.lr.ph.i29 ], [ %.ph366, %.lr.ph.i29.preheader365 ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -4 ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 3 uses
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !247, !noalias !2582
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !247, !noalias !2582
  store i32 0, ptr %i.dh, align 4, !tbaa !247, !noalias !2582
  %i.dk = load i32, ptr %i.dg, align 4, !tbaa !247, !noalias !2582
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !247, !noalias !2582
  store i32 0, ptr %i.dg, align 4, !tbaa !247, !noalias !2582
  %.not.i30 = icmp eq ptr %i.dg, %i.ai
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !2561

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dl = mul i64 %indvar, %i.h
  %i.dm = add i64 %i.j, %i.dl
  %i.dn = add i64 %i.dm, %i.bz                    ; 2 uses
  %i.do = lshr i64 %i.dn, 2
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dn, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader363, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.dq = mul i64 %indvar, %i.b
  %i.dr = add i64 %i.d, %i.dq
  %i.ds = add i64 %i.dr, %i.bz
  %.not361 = and i64 %i.ds, -4
  %i.dt = xor i64 %.not361, -4                    ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.066.0, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.by, i64 %i.dt
  %bound0 = icmp ult ptr %i.du, %i.by
  %bound1 = icmp ult ptr %i.dv, %.sroa.066.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader363, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 9223372036854775800     ; 3 uses
  %i.dw = mul i64 %n.vec, -4                      ; 2 uses
  %i.dx = getelementptr i8, ptr %.sroa.066.0, i64 %i.dw ; 2 uses
  %i.dy = getelementptr i8, ptr %i.by, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.066.0, i64 %i.dz ; 2 uses
  %next.gep313 = getelementptr i8, ptr %i.by, i64 %i.dz ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %next.gep313, i64 -16 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep313, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ea, align 4, !tbaa !247, !alias.scope !2583, !noalias !2584
  %wide.load314 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !247, !alias.scope !2583, !noalias !2584
  %i.ec = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ed = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ec, align 4, !tbaa !247, !alias.scope !2585, !noalias !2586
  store <4 x i32> %wide.load314, ptr %i.ed, align 4, !tbaa !247, !alias.scope !2585, !noalias !2586
  store <4 x i32> zeroinitializer, ptr %i.ea, align 4, !tbaa !247, !alias.scope !2583, !noalias !2584
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !247, !alias.scope !2583, !noalias !2584
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !2569

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader363

.lr.ph.i.i.preheader363:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.066.0, %vector.memcheck ], [ %.sroa.066.0, %.lr.ph.i.i.preheader ], [ %i.dx, %middle.block ]
  %.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader363, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader363 ]
  %i.ef = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader363 ]
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -4 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !247, !noalias !2584
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !247, !noalias !2584
  store i32 0, ptr %i.eg, align 4, !tbaa !247, !noalias !2584
  %.not.i.i31 = icmp eq ptr %i.eg, %i.ai
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !2570

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block355, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ai, %bb.s ], [ %i.eh, %.lr.ph.i.i ], [ %i.by, %bb.t ], [ %i.cd, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.dx, %middle.block ], [ %i.cy, %middle.block355 ], [ %i.di, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !330
  %i.ej = sub i64 0, %.018.lcssa.i
  %i.ek = getelementptr inbounds i8, ptr %i.l, i64 %i.ej ; 3 uses
  %.not.i32 = icmp eq ptr %i.ai, %.sroa.071.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  br i1 %.not23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -1 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 2 uses
  %i.en = load i8, ptr %i.el, align 1, !tbaa !314
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !314
  store i8 %i.eo, ptr %i.el, align 1, !tbaa !314
  store i8 %i.en, ptr %i.em, align 1, !tbaa !314
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.ep = load ptr, ptr %2, align 8, !tbaa !316   ; 2 uses
  %i.eq = icmp eq ptr %i.ek, %i.ep
  br i1 %i.eq, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = icmp eq ptr %i.ep, %i.l
  br i1 %i.er, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.l, %bb.y ], [ %i.ek, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !316
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  store ptr %i.ai, ptr %3, align 8, !tbaa !330
  %i.es = load ptr, ptr %1, align 8, !tbaa !316
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -1 ; 2 uses
  store ptr %i.et, ptr %1, align 8, !tbaa !316
  %i.eu = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.eu to i64
  %i.ev = add i64 %.0140, %.neg
  %i.ew = icmp ne i64 %i.ah, 0
  %.neg24 = sext i1 %i.ew to i64
  %i.ex = add i64 %.sroa.speculated, %.neg24
  %i.ey = add i64 %.097139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ey, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2571

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ez = load ptr, ptr %6, align 8, !tbaa !330
  store ptr %i.ez, ptr %0, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #5 comdat {
bb.a:
  %12 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %.not98 = icmp eq i64 %8, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !316
  %.pre123 = load ptr, ptr %3, align 8, !tbaa !330
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit
  %i.b = phi ptr [ %.pre123, %.lr.ph ], [ %i.z, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 8 uses
  %i.c = phi ptr [ %.pre, %.lr.ph ], [ %i.dm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.dq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 3 uses
  %.0100 = phi i64 [ %9, %.lr.ph ], [ %i.do, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 4 uses
  %.08499 = phi i64 [ %8, %.lr.ph ], [ %i.dr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %i.d = icmp ult i64 %.0100, %.0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SO_SQ_SQ_SQ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.w, %.thread20.i ], [ %.0100, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.v, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.e = mul i64 %.01822.i, %7
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.f
  %i.h = mul i64 %.023.i, %7
  %i.i = xor i64 %i.h, -1
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = xor i64 %.01822.i, -1
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 %i.k
  %i.m = xor i64 %.023.i, -1
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 %i.m
  %i.o = load i32, ptr %i.g, align 4, !tbaa !247  ; 2 uses
  %i.p = load i32, ptr %i.j, align 4, !tbaa !247  ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %.not27.i.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !68

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.as, ptr %i.ay, align 4, !tbaa !247, !noalias !2832
  store i32 0, ptr %i.ar, align 4, !tbaa !247, !noalias !2832
  %.not26.i.i = icmp eq ptr %i.ar, %i.an
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !68

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.be, %.split.i14.i ], [ %i.ao, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.bd, %.split.i14.i ], [ %i.k, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.ap, %bb.i ]
  %i.az = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.ba, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 5 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !247, !noalias !2833 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !247, !noalias !2833 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.bb, %i.bc
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bd = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !247, !noalias !2833
  store i32 0, ptr %i.az, align 4, !tbaa !247, !noalias !2833
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !247, !noalias !2833
  store i32 %i.bf, ptr %i.az, align 4, !tbaa !247, !noalias !2833
  store i32 0, ptr %i.bd, align 4, !tbaa !247, !noalias !2833
  %.not28.i.i = icmp eq ptr %i.bd, %i.ai
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !69

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !247, !noalias !2833
  store i32 0, ptr %i.ba, align 4, !tbaa !247, !noalias !2833
  %.not27.i19.i = icmp eq ptr %i.ba, %i.an
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !69

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SO_SQ_SQ_SQ_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bm, %bb.n ], [ %i.ao, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bn, %bb.n ], [ %i.k, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.ap, %bb.m ]
  %i.bh = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bm, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bi, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !247, !noalias !2834 ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !247, !noalias !2834 ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bn = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !247, !noalias !2834
  store i32 0, ptr %i.bn, align 4, !tbaa !247, !noalias !2834
  %i.bo = icmp eq ptr %i.bn, %i.ai
  br i1 %i.bo, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !66

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !247, !noalias !2834
  store i32 0, ptr %i.bi, align 4, !tbaa !247, !noalias !2834
  %i.bp = icmp eq ptr %i.bi, %i.an
  br i1 %i.bp, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !66

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bu, %bb.q ], [ %i.ao, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bv, %bb.q ], [ %i.k, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.ap, %bb.p ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bu, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.br, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !247, !noalias !2835 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !247, !noalias !2835 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bs, %i.bt
  %i.bu = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bv = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !247, !noalias !2835
  store i32 0, ptr %i.bv, align 4, !tbaa !247, !noalias !2835
  %i.bw = icmp eq ptr %i.bv, %i.ai
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !70

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !247, !noalias !2835
  store i32 0, ptr %i.br, align 4, !tbaa !247, !noalias !2835
  %i.bx = icmp eq ptr %i.br, %i.an
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !70

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.ar, %bb.h ], [ %i.ba, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ap, %bb.p ], [ %i.ap, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bi, %bb.o ], [ %i.br, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ai, %bb.q ], [ %i.ai, %bb.n ], [ %i.k, %bb.p ], [ %i.k, %bb.m ], [ %i.ai, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ai, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.ay, %bb.h ], [ %i.bg, %bb.k ], [ %i.bu, %bb.r ], [ %i.bm, %bb.o ], [ %i.ao, %bb.p ], [ %i.ao, %bb.m ], [ %i.aw, %.split.i.i ], [ %i.bm, %bb.n ], [ %i.bu, %bb.q ], [ %i.be, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.al, %bb.r ], [ %i.al, %bb.o ], [ %i.al, %bb.p ], [ %i.al, %bb.m ], [ %i.aq, %.split.i.i ], [ %i.al, %bb.n ], [ %i.al, %bb.q ], [ %i.az, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !330, !noalias !322
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !330, !noalias !322
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.ao, %bb.f ], [ %i.ao, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.069.0 = phi ptr [ %i.al, %bb.f ], [ %i.al, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 10 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !330
  %i.by = load ptr, ptr %3, align 8, !tbaa !330   ; 18 uses
  %i.bz = ptrtoaddr ptr %i.by to i64              ; 4 uses
  %i.ca = icmp eq ptr %i.by, %.sroa.064.0
  br i1 %i.ca, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.am
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.cd, %.lr.ph.i28 ], [ %i.by, %bb.t ]
  %i.cb = phi ptr [ %i.cc, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ]
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !247, !noalias !2836
  store i32 0, ptr %i.cc, align 4, !tbaa !247, !noalias !2836
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2836
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2836
  %i.ch = load i32, ptr %i.cd, align 4, !tbaa !247, !noalias !2836
  store i32 %i.ch, ptr %i.cc, align 4, !tbaa !247, !noalias !2836
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !247, !noalias !2836
  %i.ci = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2836
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2836
  %.not.i = icmp eq ptr %i.cc, %i.am
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28, !llvm.loop !64

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.by, %i.ai           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.ck = mul i64 %indvar, %i.e
  %i.cl = add i64 %i.g, %i.ck
  %i.cm = add i64 %i.cl, %i.bz                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check335 = icmp ult i64 %i.cm, 44
  br i1 %min.iters.check335, label %.lr.ph.i29.preheader367, label %vector.memcheck336

vector.memcheck336:                               ; preds = %.lr.ph.i29.preheader
  %i.cp = mul i64 %indvar, %i.b
  %i.cq = add i64 %i.d, %i.cp
  %i.cr = add i64 %i.cq, %i.bz
  %.not362 = and i64 %i.cr, -4
  %i.cs = xor i64 %.not362, -4                    ; 3 uses
  %i.ct = getelementptr i8, ptr %.sroa.064.0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.069.0, i64 %i.cs ; 2 uses
  %i.cv = getelementptr i8, ptr %i.by, i64 %i.cs  ; 2 uses
  %bound0337 = icmp ult ptr %i.ct, %.sroa.069.0
  %bound1338 = icmp ult ptr %i.cu, %.sroa.064.0
  %found.conflict339 = and i1 %bound0337, %bound1338
  %bound0340 = icmp ult ptr %i.ct, %i.by
  %bound1341 = icmp ult ptr %i.cv, %.sroa.064.0
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx = or i1 %found.conflict339, %found.conflict342
  %bound0343 = icmp ult ptr %i.cu, %i.by
  %bound1344 = icmp ult ptr %i.cv, %.sroa.069.0
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx, %found.conflict345
  br i1 %conflict.rdx346, label %.lr.ph.i29.preheader367, label %vector.ph347

vector.ph347:                                     ; preds = %vector.memcheck336
  %n.vec348 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cw = mul i64 %n.vec348, -4                   ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.069.0, i64 %i.cw
  %i.cy = getelementptr i8, ptr %.sroa.064.0, i64 %i.cw ; 2 uses
  %i.cz = getelementptr i8, ptr %i.by, i64 %i.cw
  br label %vector.body349

vector.body349:                                   ; preds = %vector.body349, %vector.ph347
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next356, %vector.body349 ] ; 2 uses
  %i.da = mul i64 %index350, -4                   ; 3 uses
  %next.gep351 = getelementptr i8, ptr %.sroa.069.0, i64 %i.da ; 2 uses
  %next.gep351.a = getelementptr i8, ptr %.sroa.064.0, i64 %i.da ; 2 uses
  %next.gep352 = getelementptr i8, ptr %i.by, i64 %i.da ; 2 uses
  %next.gep353 = getelementptr inbounds i8, ptr %next.gep351, i64 -16 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep351, i64 -32 ; 3 uses
  %wide.load354 = load <4 x i32>, ptr %next.gep353, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  %wide.load354.a = load <4 x i32>, ptr %i.db, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  %12 = getelementptr inbounds i8, ptr %next.gep351.a, i64 -16
  %i.dc = getelementptr inbounds i8, ptr %next.gep351.a, i64 -32
  store <4 x i32> %wide.load354, ptr %12, align 4, !tbaa !247, !alias.scope !2839, !noalias !2840
  store <4 x i32> %wide.load354.a, ptr %i.dc, align 4, !tbaa !247, !alias.scope !2839, !noalias !2840
  store <4 x i32> zeroinitializer, ptr %next.gep353, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  store <4 x i32> zeroinitializer, ptr %i.db, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  %13 = getelementptr inbounds i8, ptr %next.gep352, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %next.gep352, i64 -32 ; 2 uses
  %wide.load356 = load <4 x i32>, ptr %13, align 4, !tbaa !247, !alias.scope !2841, !noalias !2842
  %wide.load355 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !247, !alias.scope !2841, !noalias !2842
  store <4 x i32> %wide.load356, ptr %next.gep353, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  store <4 x i32> %wide.load355, ptr %i.db, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  store <4 x i32> zeroinitializer, ptr %13, align 4, !tbaa !247, !alias.scope !2841, !noalias !2842
  store <4 x i32> zeroinitializer, ptr %i.dd, align 4, !tbaa !247, !alias.scope !2841, !noalias !2842
  %index.next356 = add nuw i64 %index350, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next356, %n.vec348
  br i1 %i.de, label %middle.block357, label %vector.body349, !llvm.loop !2820

middle.block357:                                  ; preds = %vector.body349
  %cmp.n358 = icmp eq i64 %i.co, %n.vec348
  br i1 %cmp.n358, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader367

.lr.ph.i29.preheader367:                          ; preds = %vector.memcheck336, %.lr.ph.i29.preheader, %middle.block357
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck336 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.cx, %middle.block357 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck336 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.cy, %middle.block357 ]
  %.ph368 = phi ptr [ %i.by, %vector.memcheck336 ], [ %i.by, %.lr.ph.i29.preheader ], [ %i.cz, %middle.block357 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader367, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dh, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader367 ]
  %.sroa.045.0 = phi ptr [ %i.di, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader367 ]
  %i.df = phi ptr [ %i.dg, %.lr.ph.i29 ], [ %.ph368, %.lr.ph.i29.preheader367 ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !247, !noalias !2842
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !247, !noalias !2842
  store i32 0, ptr %i.dh, align 4, !tbaa !247, !noalias !2842
  %i.dk = load i32, ptr %i.dg, align 4, !tbaa !247, !noalias !2842
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !247, !noalias !2842
  store i32 0, ptr %i.dg, align 4, !tbaa !247, !noalias !2842
  %.not.i30 = icmp eq ptr %i.dg, %i.ai
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !2821

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dl = mul i64 %indvar, %i.h
  %i.dm = add i64 %i.j, %i.dl
  %i.dn = add i64 %i.dm, %i.bz                    ; 2 uses
  %i.do = lshr i64 %i.dn, 2
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dn, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader365, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.dq = mul i64 %indvar, %i.b
  %i.dr = add i64 %i.d, %i.dq
  %i.ds = add i64 %i.dr, %i.bz
  %.not363 = and i64 %i.ds, -4
  %i.dt = xor i64 %.not363, -4                    ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.064.0, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.by, i64 %i.dt
  %bound0 = icmp ult ptr %i.du, %i.by
  %bound1 = icmp ult ptr %i.dv, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader365, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 9223372036854775800     ; 3 uses
  %i.dw = mul i64 %n.vec, -4                      ; 2 uses
  %i.dx = getelementptr i8, ptr %.sroa.064.0, i64 %i.dw ; 2 uses
  %i.dy = getelementptr i8, ptr %i.by, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.dz ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.by, i64 %i.dz ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %next.gep315, i64 -16 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep315, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ea, align 4, !tbaa !247, !alias.scope !2843, !noalias !2844
  %wide.load316 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !247, !alias.scope !2843, !noalias !2844
  %i.ec = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ed = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ec, align 4, !tbaa !247, !alias.scope !2845, !noalias !2846
  store <4 x i32> %wide.load316, ptr %i.ed, align 4, !tbaa !247, !alias.scope !2845, !noalias !2846
  store <4 x i32> zeroinitializer, ptr %i.ea, align 4, !tbaa !247, !alias.scope !2843, !noalias !2844
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !247, !alias.scope !2843, !noalias !2844
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !2829

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader365

.lr.ph.i.i.preheader365:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dx, %middle.block ]
  %.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader365, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader365 ]
  %i.ef = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader365 ]
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -4 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !247, !noalias !2844
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !247, !noalias !2844
  store i32 0, ptr %i.eg, align 4, !tbaa !247, !noalias !2844
  %.not.i.i31 = icmp eq ptr %i.eg, %i.ai
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !2830

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block357, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ai, %bb.s ], [ %i.eh, %.lr.ph.i.i ], [ %i.by, %bb.t ], [ %i.cd, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dx, %middle.block ], [ %i.cy, %middle.block357 ], [ %i.di, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !330
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.l, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ai, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !223
  %i.en = load i64, ptr %i.el, align 8, !tbaa !223
  store i64 %i.en, ptr %i.ek, align 8, !tbaa !223
  store i64 %i.em, ptr %i.el, align 8, !tbaa !223
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.eo = load ptr, ptr %2, align 8, !tbaa !321   ; 2 uses
  %i.ep = icmp eq ptr %i.ej, %i.eo
  br i1 %i.ep, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = icmp eq ptr %i.eo, %i.l
  br i1 %i.eq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.l, %bb.y ], [ %i.ej, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !321
  %.pre194 = load ptr, ptr %1, align 8, !tbaa !321
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  %i.er = phi ptr [ %i.l, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.l, %bb.z ], [ %.pre194, %.sink.split.i ]
  store ptr %i.ai, ptr %3, align 8, !tbaa !330
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -8 ; 2 uses
  store ptr %i.es, ptr %1, align 8, !tbaa !321
  %i.et = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.et to i64
  %i.eu = add i64 %.0140, %.neg
  %i.ev = icmp ne i64 %i.ah, 0
  %.neg24 = sext i1 %i.ev to i64
  %i.ew = add i64 %.sroa.speculated, %.neg24
  %i.ex = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ex, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2831

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ey = load ptr, ptr %6, align 8, !tbaa !330
  store ptr %i.ey, ptr %0, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #5 comdat {
bb.a:
  %12 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %.not98 = icmp eq i64 %8, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !321
  %.pre123 = load ptr, ptr %3, align 8, !tbaa !330
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit
  %i.b = phi ptr [ %.pre123, %.lr.ph ], [ %i.z, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 8 uses
  %i.c = phi ptr [ %.pre, %.lr.ph ], [ %i.dl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.dp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 3 uses
  %.0100 = phi i64 [ %9, %.lr.ph ], [ %i.dn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 4 uses
  %.08299 = phi i64 [ %8, %.lr.ph ], [ %i.dq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %i.d = icmp ult i64 %.0100, %.0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SO_SQ_SQ_SQ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.w, %.thread20.i ], [ %.0100, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.v, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.e = mul i64 %.01822.i, %7
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.f
  %i.h = mul i64 %.023.i, %7
  %i.i = xor i64 %i.h, -1
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = xor i64 %.01822.i, -1
  %i.l = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.k
  %i.m = xor i64 %.023.i, -1
  %i.n = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.m
  %i.o = load i32, ptr %i.g, align 4, !tbaa !247  ; 2 uses
end_hunk_2
