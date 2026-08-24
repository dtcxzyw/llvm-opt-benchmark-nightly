Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24952
inline.NumDeleted: 2814
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 315
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !272
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !272
  %i.aq = icmp ult i64 %i.ao, %i.ap
  %cond.fr.i = freeze i1 %i.aq
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ar = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.as = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit, label %.lr.ph.i, !llvm.loop !3264

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ar, %.thread20.i ] ; 6 uses
  %i.at = add i64 %.018.lcssa.i, 2
  %i.au = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.at) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %.095139)
  %i.av = getelementptr inbounds i8, ptr %i.n, i64 %.idx ; 15 uses
  %i.aw = mul i64 %7, %.018.lcssa.i
  %i.ax = sub i64 0, %i.aw
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ax ; 11 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.a ; 2 uses
  %.not23 = icmp eq i64 %.018.lcssa.i, 0          ; 3 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !2945  ; 5 uses
  %i.bb = load ptr, ptr %6, align 8, !tbaa !2945  ; 8 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !2945, !noalias !1789 ; 7 uses
  %.not17.i.i = icmp eq ptr %i.ba, %i.bc
  %or.cond.i26 = select i1 %.not.i.i, i1 true, i1 %.not17.i.i ; 4 uses
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %.split.i.i
  %.sroa.027.0.i = phi ptr [ %i.bj, %.split.i.i ], [ %i.bb, %bb.f ]
  %.sroa.010.0.ph.i.i = phi ptr [ %i.bd, %.split.i.i ], [ %i.ay, %bb.f ] ; 2 uses
  %.sroa.013.0.ph.i.i = phi ptr [ %i.bi, %.split.i.i ], [ %i.n, %bb.f ] ; 2 uses
  %.sroa.017.0.ph.i.i = phi ptr [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bc, %bb.f ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i.i, i64 -4 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.bl, %bb.h ] ; 2 uses
  %.sroa.017.0.i.i = phi ptr [ %.sroa.017.0.ph.i.i, %.outer.i.i ], [ %i.be, %bb.h ] ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.017.0.i.i, i64 -4 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !69, !noalias !3265 ; 2 uses
  %i.bg = load i32, ptr %i.bd, align 4, !tbaa !69, !noalias !3265 ; 2 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.bi = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -4 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.bg, ptr %i.bj, align 4, !tbaa !69, !noalias !3265
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !69, !noalias !3265
  store i32 %i.bk, ptr %i.bd, align 4, !tbaa !69, !noalias !3265
  %.not27.i.i = icmp eq ptr %i.bi, %i.av
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !3100

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.bf, ptr %i.bl, align 4, !tbaa !69, !noalias !3265
  %.not26.i.i = icmp eq ptr %i.be, %i.ba
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !3100

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.br, %.split.i14.i ], [ %i.bb, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.bm, %.split.i14.i ], [ %i.ay, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.bq, %.split.i14.i ], [ %i.n, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.bc, %bb.i ]
  %i.bm = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bt, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.bn, %bb.k ] ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 4 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !69, !noalias !3270 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !69, !noalias !3270 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.bo, %i.bp
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bq = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !69, !noalias !3270
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !69, !noalias !3270
  store i32 %i.bs, ptr %i.bm, align 4, !tbaa !69, !noalias !3270
  %.not28.i.i = icmp eq ptr %i.bq, %i.av
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !3104

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bp, ptr %i.bt, align 4, !tbaa !69, !noalias !3270
  %.not27.i19.i = icmp eq ptr %i.bn, %i.ba
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !3104

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bz, %bb.n ], [ %i.bb, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.ca, %bb.n ], [ %i.n, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.bc, %bb.m ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bz, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bv, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !69, !noalias !3273 ; 2 uses
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !69, !noalias !3273 ; 2 uses
  %i.by = icmp slt i32 %i.bw, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.ca = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 2 uses
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !69, !noalias !3273
  %i.cb = icmp eq ptr %i.ca, %i.av
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !3110

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bw, ptr %i.bz, align 4, !tbaa !69, !noalias !3273
  %i.cc = icmp eq ptr %i.bv, %i.ba
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !3110

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.ch, %bb.q ], [ %i.bb, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.ci, %bb.q ], [ %i.n, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.bc, %bb.p ]
  %i.cd = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.ch, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.ce, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 4 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !69, !noalias !3278 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !69, !noalias !3278 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.cf, %i.cg
  %i.ch = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.ci = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 2 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !69, !noalias !3278
  %i.cj = icmp eq ptr %i.ci, %i.av
  br i1 %i.cj, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !3114

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !69, !noalias !3278
  %i.ck = icmp eq ptr %i.ce, %i.ba
  br i1 %i.ck, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !3114

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.be, %bb.h ], [ %i.bn, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.bc, %bb.p ], [ %i.bc, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bv, %bb.o ], [ %i.ce, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.av, %bb.q ], [ %i.av, %bb.n ], [ %i.n, %bb.p ], [ %i.n, %bb.m ], [ %i.av, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.av, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.bl, %bb.h ], [ %i.bt, %bb.k ], [ %i.ch, %bb.r ], [ %i.bz, %bb.o ], [ %i.bb, %bb.p ], [ %i.bb, %bb.m ], [ %i.bj, %.split.i.i ], [ %i.bz, %bb.n ], [ %i.ch, %bb.q ], [ %i.br, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.ay, %bb.r ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ], [ %i.ay, %bb.m ], [ %i.bd, %.split.i.i ], [ %i.ay, %bb.n ], [ %i.ay, %bb.q ], [ %i.bm, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !2945, !noalias !1789
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !2945, !noalias !1789
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.bb, %bb.f ], [ %i.bb, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 15 uses
  %.sroa.069.0 = phi ptr [ %i.ay, %bb.f ], [ %i.ay, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.064.0318 = ptrtoaddr ptr %.sroa.064.0 to i64
  %.sroa.069.0307 = ptrtoaddr ptr %.sroa.069.0 to i64 ; 2 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !2945
  %i.cl = load ptr, ptr %3, align 8, !tbaa !2945  ; 20 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64              ; 4 uses
  %i.cn = icmp eq ptr %i.cl, %.sroa.064.0
  br i1 %i.cn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.az
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %12 = add i64 %i.w, %.sroa.069.0307
  %i.co = shl i64 %.018.lcssa.i, 2
  %.neg368 = add i64 %i.co, 4
  %.neg369 = mul i64 %.neg368, %7
  %i.cp = add i64 %.neg369, %12                   ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader373, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %scevgep = getelementptr i8, ptr %.sroa.069.0, i64 -4
  %i.cs = add i64 %i.y, %.sroa.069.0307
  %i.ct = shl i64 %.018.lcssa.i, 2
  %.neg370 = add i64 %i.ct, 4
  %.neg371 = mul i64 %.neg370, %7
  %i.cu = add i64 %.neg371, %i.cs
  %i.cv = lshr i64 %i.cu, 2
  %i.cw = mul i64 %i.cv, -4                       ; 2 uses
  %scevgep309 = getelementptr i8, ptr %scevgep, i64 %i.cw
  %scevgep310 = getelementptr i8, ptr %i.cl, i64 -4
  %scevgep311 = getelementptr i8, ptr %scevgep310, i64 %i.cw
  %bound0 = icmp ult ptr %scevgep309, %i.cl
  %bound1 = icmp ult ptr %scevgep311, %.sroa.069.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader373, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, 9223372036854775800     ; 3 uses
  %i.cx = mul i64 %n.vec, -4                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cl, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %.sroa.069.0, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.da ; 2 uses
  %next.gep312 = getelementptr i8, ptr %.sroa.069.0, i64 %i.da ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep312, i64 -16 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %next.gep312, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.db, align 4, !tbaa !69, !alias.scope !3281, !noalias !3284
  %wide.load313 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !69, !alias.scope !3281, !noalias !3284
  %i.dd = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load314 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !69, !alias.scope !3288, !noalias !3289
  %wide.load315 = load <4 x i32>, ptr %i.de, align 4, !tbaa !69, !alias.scope !3288, !noalias !3289
  store <4 x i32> %wide.load314, ptr %i.db, align 4, !tbaa !69, !alias.scope !3281, !noalias !3284
  store <4 x i32> %wide.load315, ptr %i.dc, align 4, !tbaa !69, !alias.scope !3281, !noalias !3284
  store <4 x i32> %wide.load, ptr %i.dd, align 4, !tbaa !69, !alias.scope !3288, !noalias !3289
  store <4 x i32> %wide.load313, ptr %i.de, align 4, !tbaa !69, !alias.scope !3288, !noalias !3289
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !3290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader373

.lr.ph.i28.preheader373:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.052.0.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i28.preheader ], [ %i.cy, %middle.block ]
  %.ph = phi ptr [ %.sroa.069.0, %vector.memcheck ], [ %.sroa.069.0, %.lr.ph.i28.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader373, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.di, %.lr.ph.i28 ], [ %.sroa.052.0.ph, %.lr.ph.i28.preheader373 ]
  %i.dg = phi ptr [ %i.dh, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader373 ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4 ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !69, !noalias !3289
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !69, !noalias !3289
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !69, !noalias !3289
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !69, !noalias !3289
  %.not.i = icmp eq ptr %i.dh, %i.az
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !3291

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cl, %i.av           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.dl = add i64 %i.q, %i.cm                     ; 2 uses
  %i.dm = lshr i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check352 = icmp ult i64 %i.dl, 60
  br i1 %min.iters.check352, label %.lr.ph.i29.preheader377, label %vector.memcheck334

vector.memcheck334:                               ; preds = %.lr.ph.i29.preheader
  %scevgep335 = getelementptr i8, ptr %.sroa.064.0, i64 -4
  %i.do = add i64 %i.s, %i.cm
  %i.dp = lshr i64 %i.do, 2
  %i.dq = mul i64 %i.dp, -4                       ; 3 uses
  %scevgep336 = getelementptr i8, ptr %scevgep335, i64 %i.dq ; 2 uses
  %scevgep337 = getelementptr i8, ptr %.sroa.069.0, i64 -4
  %scevgep338 = getelementptr i8, ptr %scevgep337, i64 %i.dq ; 2 uses
  %scevgep339 = getelementptr i8, ptr %i.cl, i64 -4
  %scevgep340 = getelementptr i8, ptr %scevgep339, i64 %i.dq ; 2 uses
  %bound0341 = icmp ult ptr %scevgep336, %.sroa.069.0
  %bound1342 = icmp ult ptr %scevgep338, %.sroa.064.0
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %scevgep336, %i.cl
  %bound1345 = icmp ult ptr %scevgep340, %.sroa.064.0
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx = or i1 %found.conflict343, %found.conflict346
  %bound0347 = icmp ult ptr %scevgep338, %i.cl
  %bound1348 = icmp ult ptr %scevgep340, %.sroa.069.0
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx350 = or i1 %conflict.rdx, %found.conflict349
  br i1 %conflict.rdx350, label %.lr.ph.i29.preheader377, label %vector.ph353

vector.ph353:                                     ; preds = %vector.memcheck334
  %n.vec354 = and i64 %i.dn, 9223372036854775804  ; 3 uses
  %i.dr = mul i64 %n.vec354, -4                   ; 3 uses
  %i.ds = getelementptr i8, ptr %.sroa.069.0, i64 %i.dr
  %i.dt = getelementptr i8, ptr %.sroa.064.0, i64 %i.dr ; 2 uses
  %i.du = getelementptr i8, ptr %i.cl, i64 %i.dr
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph353
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next362, %vector.body355 ] ; 2 uses
  %i.dv = mul i64 %index356, -4                   ; 3 uses
  %next.gep357 = getelementptr i8, ptr %.sroa.069.0, i64 %i.dv
  %next.gep358 = getelementptr i8, ptr %.sroa.064.0, i64 %i.dv
  %next.gep359 = getelementptr i8, ptr %i.cl, i64 %i.dv
  %i.dw = getelementptr inbounds i8, ptr %next.gep357, i64 -16 ; 2 uses
  %wide.load360 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !69, !alias.scope !3292, !noalias !3295
  %i.dx = getelementptr inbounds i8, ptr %next.gep358, i64 -16
  store <4 x i32> %wide.load360, ptr %i.dx, align 4, !tbaa !69, !alias.scope !3299, !noalias !3301
  %i.dy = getelementptr inbounds i8, ptr %next.gep359, i64 -16
  %wide.load361 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !69, !alias.scope !3302, !noalias !3303
  store <4 x i32> %wide.load361, ptr %i.dw, align 4, !tbaa !69, !alias.scope !3292, !noalias !3295
  %index.next362 = add nuw i64 %index356, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next362, %n.vec354
  br i1 %i.dz, label %middle.block363, label %vector.body355, !llvm.loop !3304

middle.block363:                                  ; preds = %vector.body355
  %cmp.n364 = icmp eq i64 %i.dn, %n.vec354
  br i1 %cmp.n364, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader377

.lr.ph.i29.preheader377:                          ; preds = %vector.memcheck334, %.lr.ph.i29.preheader, %middle.block363
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck334 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.ds, %middle.block363 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck334 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.dt, %middle.block363 ]
  %.ph378 = phi ptr [ %i.cl, %vector.memcheck334 ], [ %i.cl, %.lr.ph.i29.preheader ], [ %i.du, %middle.block363 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader377, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.ec, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader377 ]
  %.sroa.045.0 = phi ptr [ %i.ed, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader377 ]
  %i.ea = phi ptr [ %i.eb, %.lr.ph.i29 ], [ %.ph378, %.lr.ph.i29.preheader377 ]
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -4 ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !69, !noalias !3303
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !69, !noalias !3303
  %i.ef = load i32, ptr %i.eb, align 4, !tbaa !69, !noalias !3303
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !69, !noalias !3303
  %.not.i30 = icmp eq ptr %i.eb, %i.av
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !3305

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.eg = add i64 %i.u, %i.cm                     ; 2 uses
  %i.eh = lshr i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check320 = icmp ult i64 %i.eg, 28
  %i.ej = sub i64 %.sroa.064.0318, %i.cm
  %diff.check = icmp ugt i64 %i.ej, -32
  %or.cond = or i1 %min.iters.check320, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader374, label %vector.ph321

vector.ph321:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec322 = and i64 %i.ei, 9223372036854775800  ; 3 uses
  %i.ek = mul i64 %n.vec322, -4                   ; 2 uses
  %i.el = getelementptr i8, ptr %.sroa.064.0, i64 %i.ek ; 2 uses
  %i.em = getelementptr i8, ptr %i.cl, i64 %i.ek
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.en = mul i64 %index324, -4                   ; 2 uses
  %next.gep325 = getelementptr i8, ptr %.sroa.064.0, i64 %i.en ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.cl, i64 %i.en ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %next.gep326, i64 -16
  %i.ep = getelementptr inbounds i8, ptr %next.gep326, i64 -32
  %wide.load327 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !69, !noalias !3306
  %wide.load328 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !69, !noalias !3306
  %i.eq = getelementptr inbounds i8, ptr %next.gep325, i64 -16
  %i.er = getelementptr inbounds i8, ptr %next.gep325, i64 -32
  store <4 x i32> %wide.load327, ptr %i.eq, align 4, !tbaa !69, !noalias !3306
  store <4 x i32> %wide.load328, ptr %i.er, align 4, !tbaa !69, !noalias !3306
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.es, label %middle.block330, label %vector.body323, !llvm.loop !3311

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.ei, %n.vec322
  br i1 %cmp.n331, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader374

.lr.ph.i.i.preheader374:                          ; preds = %.lr.ph.i.i.preheader, %middle.block330
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.aq = icmp ult i8 %i.ao, %i.ap
  %cond.fr.i = freeze i1 %i.aq
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ar = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.as = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit, label %.lr.ph.i, !llvm.loop !4147

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ar, %.thread20.i ] ; 6 uses
  %i.at = add i64 %.018.lcssa.i, 2
  %i.au = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.at) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %.097139)
  %i.av = getelementptr inbounds i8, ptr %i.n, i64 %.idx ; 15 uses
  %i.aw = mul i64 %7, %.018.lcssa.i
  %i.ax = sub i64 0, %i.aw
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ax ; 11 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.a ; 2 uses
  %.not23 = icmp eq i64 %.018.lcssa.i, 0          ; 4 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !2945  ; 5 uses
  %i.bb = load ptr, ptr %6, align 8, !tbaa !2945  ; 8 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !2945, !noalias !1789 ; 7 uses
  %.not17.i.i = icmp eq ptr %i.ba, %i.bc
  %or.cond.i26 = select i1 %.not.i.i, i1 true, i1 %.not17.i.i ; 4 uses
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %.split.i.i
  %.sroa.027.0.i = phi ptr [ %i.bj, %.split.i.i ], [ %i.bb, %bb.f ]
  %.sroa.010.0.ph.i.i = phi ptr [ %i.bd, %.split.i.i ], [ %i.ay, %bb.f ] ; 2 uses
  %.sroa.013.0.ph.i.i = phi ptr [ %i.bi, %.split.i.i ], [ %i.n, %bb.f ] ; 2 uses
  %.sroa.017.0.ph.i.i = phi ptr [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bc, %bb.f ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i.i, i64 -4 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.bl, %bb.h ] ; 2 uses
  %.sroa.017.0.i.i = phi ptr [ %.sroa.017.0.ph.i.i, %.outer.i.i ], [ %i.be, %bb.h ] ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.017.0.i.i, i64 -4 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !69, !noalias !4318 ; 2 uses
  %i.bg = load i32, ptr %i.bd, align 4, !tbaa !69, !noalias !4318 ; 2 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.bi = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -4 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.bg, ptr %i.bj, align 4, !tbaa !69, !noalias !4318
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !69, !noalias !4318
  store i32 %i.bk, ptr %i.bd, align 4, !tbaa !69, !noalias !4318
  %.not27.i.i = icmp eq ptr %i.bi, %i.av
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !3100

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.bf, ptr %i.bl, align 4, !tbaa !69, !noalias !4318
  %.not26.i.i = icmp eq ptr %i.be, %i.ba
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !3100

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.br, %.split.i14.i ], [ %i.bb, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.bm, %.split.i14.i ], [ %i.ay, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.bq, %.split.i14.i ], [ %i.n, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.bc, %bb.i ]
  %i.bm = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bt, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.bn, %bb.k ] ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 4 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !69, !noalias !4323 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !69, !noalias !4323 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.bo, %i.bp
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bq = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !69, !noalias !4323
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !69, !noalias !4323
  store i32 %i.bs, ptr %i.bm, align 4, !tbaa !69, !noalias !4323
  %.not28.i.i = icmp eq ptr %i.bq, %i.av
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !3104

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bp, ptr %i.bt, align 4, !tbaa !69, !noalias !4323
  %.not27.i19.i = icmp eq ptr %i.bn, %i.ba
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !3104

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bz, %bb.n ], [ %i.bb, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.ca, %bb.n ], [ %i.n, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.bc, %bb.m ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bz, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bv, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !69, !noalias !4326 ; 2 uses
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !69, !noalias !4326 ; 2 uses
  %i.by = icmp slt i32 %i.bw, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.ca = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 2 uses
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !69, !noalias !4326
  %i.cb = icmp eq ptr %i.ca, %i.av
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !3110

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bw, ptr %i.bz, align 4, !tbaa !69, !noalias !4326
  %i.cc = icmp eq ptr %i.bv, %i.ba
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !3110

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.ch, %bb.q ], [ %i.bb, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.ci, %bb.q ], [ %i.n, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.bc, %bb.p ]
  %i.cd = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.ch, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.ce, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 4 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !69, !noalias !4331 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !69, !noalias !4331 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.cf, %i.cg
  %i.ch = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.ci = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 2 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !69, !noalias !4331
  %i.cj = icmp eq ptr %i.ci, %i.av
  br i1 %i.cj, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !3114

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !69, !noalias !4331
  %i.ck = icmp eq ptr %i.ce, %i.ba
  br i1 %i.ck, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !3114

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.be, %bb.h ], [ %i.bn, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.bc, %bb.p ], [ %i.bc, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bv, %bb.o ], [ %i.ce, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.av, %bb.q ], [ %i.av, %bb.n ], [ %i.n, %bb.p ], [ %i.n, %bb.m ], [ %i.av, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.av, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.bl, %bb.h ], [ %i.bt, %bb.k ], [ %i.ch, %bb.r ], [ %i.bz, %bb.o ], [ %i.bb, %bb.p ], [ %i.bb, %bb.m ], [ %i.bj, %.split.i.i ], [ %i.bz, %bb.n ], [ %i.ch, %bb.q ], [ %i.br, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.ay, %bb.r ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ], [ %i.ay, %bb.m ], [ %i.bd, %.split.i.i ], [ %i.ay, %bb.n ], [ %i.ay, %bb.q ], [ %i.bm, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !2945, !noalias !1789
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !2945, !noalias !1789
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.bb, %bb.f ], [ %i.bb, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 15 uses
  %.sroa.071.0 = phi ptr [ %i.ay, %bb.f ], [ %i.ay, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.066.0316 = ptrtoaddr ptr %.sroa.066.0 to i64
  %.sroa.071.0305 = ptrtoaddr ptr %.sroa.071.0 to i64 ; 2 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !2945
  %i.cl = load ptr, ptr %3, align 8, !tbaa !2945  ; 20 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64              ; 4 uses
  %i.cn = icmp eq ptr %i.cl, %.sroa.066.0
  br i1 %i.cn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.071.0, %i.az
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %12 = add i64 %i.w, %.sroa.071.0305
  %i.co = shl i64 %.018.lcssa.i, 2
  %.neg366 = add i64 %i.co, 4
  %.neg367 = mul i64 %.neg366, %7
  %i.cp = add i64 %.neg367, %12                   ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader371, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %scevgep = getelementptr i8, ptr %.sroa.071.0, i64 -4
  %i.cs = add i64 %i.y, %.sroa.071.0305
  %i.ct = shl i64 %.018.lcssa.i, 2
  %.neg368 = add i64 %i.ct, 4
  %.neg369 = mul i64 %.neg368, %7
  %i.cu = add i64 %.neg369, %i.cs
  %i.cv = lshr i64 %i.cu, 2
  %i.cw = mul i64 %i.cv, -4                       ; 2 uses
  %scevgep307 = getelementptr i8, ptr %scevgep, i64 %i.cw
  %scevgep308 = getelementptr i8, ptr %i.cl, i64 -4
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.cw
  %bound0 = icmp ult ptr %scevgep307, %i.cl
  %bound1 = icmp ult ptr %scevgep309, %.sroa.071.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader371, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, 9223372036854775800     ; 3 uses
  %i.cx = mul i64 %n.vec, -4                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cl, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %.sroa.071.0, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.da ; 2 uses
  %next.gep310 = getelementptr i8, ptr %.sroa.071.0, i64 %i.da ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep310, i64 -16 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %next.gep310, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.db, align 4, !tbaa !69, !alias.scope !4334, !noalias !4337
  %wide.load311 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !69, !alias.scope !4334, !noalias !4337
  %i.dd = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load312 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !69, !alias.scope !4341, !noalias !4342
  %wide.load313 = load <4 x i32>, ptr %i.de, align 4, !tbaa !69, !alias.scope !4341, !noalias !4342
  store <4 x i32> %wide.load312, ptr %i.db, align 4, !tbaa !69, !alias.scope !4334, !noalias !4337
  store <4 x i32> %wide.load313, ptr %i.dc, align 4, !tbaa !69, !alias.scope !4334, !noalias !4337
  store <4 x i32> %wide.load, ptr %i.dd, align 4, !tbaa !69, !alias.scope !4341, !noalias !4342
  store <4 x i32> %wide.load311, ptr %i.de, align 4, !tbaa !69, !alias.scope !4341, !noalias !4342
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !4343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader371

.lr.ph.i28.preheader371:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.054.0.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i28.preheader ], [ %i.cy, %middle.block ]
  %.ph = phi ptr [ %.sroa.071.0, %vector.memcheck ], [ %.sroa.071.0, %.lr.ph.i28.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader371, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.di, %.lr.ph.i28 ], [ %.sroa.054.0.ph, %.lr.ph.i28.preheader371 ]
  %i.dg = phi ptr [ %i.dh, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader371 ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4 ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -4 ; 4 uses
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !69, !noalias !4342
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !69, !noalias !4342
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !69, !noalias !4342
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !69, !noalias !4342
  %.not.i = icmp eq ptr %i.dh, %i.az
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !4344

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cl, %i.av           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.dl = add i64 %i.q, %i.cm                     ; 2 uses
  %i.dm = lshr i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check350 = icmp ult i64 %i.dl, 60
  br i1 %min.iters.check350, label %.lr.ph.i29.preheader375, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.lr.ph.i29.preheader
  %scevgep333 = getelementptr i8, ptr %.sroa.066.0, i64 -4
  %i.do = add i64 %i.s, %i.cm
  %i.dp = lshr i64 %i.do, 2
  %i.dq = mul i64 %i.dp, -4                       ; 3 uses
  %scevgep334 = getelementptr i8, ptr %scevgep333, i64 %i.dq ; 2 uses
  %scevgep335 = getelementptr i8, ptr %.sroa.071.0, i64 -4
  %scevgep336 = getelementptr i8, ptr %scevgep335, i64 %i.dq ; 2 uses
  %scevgep337 = getelementptr i8, ptr %i.cl, i64 -4
  %scevgep338 = getelementptr i8, ptr %scevgep337, i64 %i.dq ; 2 uses
  %bound0339 = icmp ult ptr %scevgep334, %.sroa.071.0
  %bound1340 = icmp ult ptr %scevgep336, %.sroa.066.0
  %found.conflict341 = and i1 %bound0339, %bound1340
  %bound0342 = icmp ult ptr %scevgep334, %i.cl
  %bound1343 = icmp ult ptr %scevgep338, %.sroa.066.0
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx = or i1 %found.conflict341, %found.conflict344
  %bound0345 = icmp ult ptr %scevgep336, %i.cl
  %bound1346 = icmp ult ptr %scevgep338, %.sroa.071.0
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %conflict.rdx, %found.conflict347
  br i1 %conflict.rdx348, label %.lr.ph.i29.preheader375, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck332
  %n.vec352 = and i64 %i.dn, 9223372036854775804  ; 3 uses
  %i.dr = mul i64 %n.vec352, -4                   ; 3 uses
  %i.ds = getelementptr i8, ptr %.sroa.071.0, i64 %i.dr
  %i.dt = getelementptr i8, ptr %.sroa.066.0, i64 %i.dr ; 2 uses
  %i.du = getelementptr i8, ptr %i.cl, i64 %i.dr
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next360, %vector.body353 ] ; 2 uses
  %i.dv = mul i64 %index354, -4                   ; 3 uses
  %next.gep355 = getelementptr i8, ptr %.sroa.071.0, i64 %i.dv
  %next.gep356 = getelementptr i8, ptr %.sroa.066.0, i64 %i.dv
  %next.gep357 = getelementptr i8, ptr %i.cl, i64 %i.dv
  %i.dw = getelementptr inbounds i8, ptr %next.gep355, i64 -16 ; 2 uses
  %wide.load358 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !69, !alias.scope !4345, !noalias !4348
  %i.dx = getelementptr inbounds i8, ptr %next.gep356, i64 -16
  store <4 x i32> %wide.load358, ptr %i.dx, align 4, !tbaa !69, !alias.scope !4352, !noalias !4354
  %i.dy = getelementptr inbounds i8, ptr %next.gep357, i64 -16
  %wide.load359 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !69, !alias.scope !4355, !noalias !4356
  store <4 x i32> %wide.load359, ptr %i.dw, align 4, !tbaa !69, !alias.scope !4345, !noalias !4348
  %index.next360 = add nuw i64 %index354, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next360, %n.vec352
  br i1 %i.dz, label %middle.block361, label %vector.body353, !llvm.loop !4357

middle.block361:                                  ; preds = %vector.body353
  %cmp.n362 = icmp eq i64 %i.dn, %n.vec352
  br i1 %cmp.n362, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader375

.lr.ph.i29.preheader375:                          ; preds = %vector.memcheck332, %.lr.ph.i29.preheader, %middle.block361
  %.sroa.048.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck332 ], [ %.sroa.071.0, %.lr.ph.i29.preheader ], [ %i.ds, %middle.block361 ]
  %.sroa.047.0.ph = phi ptr [ %.sroa.066.0, %vector.memcheck332 ], [ %.sroa.066.0, %.lr.ph.i29.preheader ], [ %i.dt, %middle.block361 ]
  %.ph376 = phi ptr [ %i.cl, %vector.memcheck332 ], [ %i.cl, %.lr.ph.i29.preheader ], [ %i.du, %middle.block361 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader375, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.ec, %.lr.ph.i29 ], [ %.sroa.048.0.ph, %.lr.ph.i29.preheader375 ]
  %.sroa.047.0 = phi ptr [ %i.ed, %.lr.ph.i29 ], [ %.sroa.047.0.ph, %.lr.ph.i29.preheader375 ]
  %i.ea = phi ptr [ %i.eb, %.lr.ph.i29 ], [ %.ph376, %.lr.ph.i29.preheader375 ]
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -4 ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -4 ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !69, !noalias !4356
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !69, !noalias !4356
  %i.ef = load i32, ptr %i.eb, align 4, !tbaa !69, !noalias !4356
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !69, !noalias !4356
  %.not.i30 = icmp eq ptr %i.eb, %i.av
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !4358

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.eg = add i64 %i.u, %i.cm                     ; 2 uses
  %i.eh = lshr i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check318 = icmp ult i64 %i.eg, 28
  %i.ej = sub i64 %.sroa.066.0316, %i.cm
  %diff.check = icmp ugt i64 %i.ej, -32
  %or.cond = or i1 %min.iters.check318, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader372, label %vector.ph319

vector.ph319:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec320 = and i64 %i.ei, 9223372036854775800  ; 3 uses
  %i.ek = mul i64 %n.vec320, -4                   ; 2 uses
  %i.el = getelementptr i8, ptr %.sroa.066.0, i64 %i.ek ; 2 uses
  %i.em = getelementptr i8, ptr %i.cl, i64 %i.ek
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.en = mul i64 %index322, -4                   ; 2 uses
  %next.gep323 = getelementptr i8, ptr %.sroa.066.0, i64 %i.en ; 2 uses
  %next.gep324 = getelementptr i8, ptr %i.cl, i64 %i.en ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %next.gep324, i64 -16
  %i.ep = getelementptr inbounds i8, ptr %next.gep324, i64 -32
  %wide.load325 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !69, !noalias !4359
  %wide.load326 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !69, !noalias !4359
  %i.eq = getelementptr inbounds i8, ptr %next.gep323, i64 -16
  %i.er = getelementptr inbounds i8, ptr %next.gep323, i64 -32
  store <4 x i32> %wide.load325, ptr %i.eq, align 4, !tbaa !69, !noalias !4359
  store <4 x i32> %wide.load326, ptr %i.er, align 4, !tbaa !69, !noalias !4359
  %index.next327 = add nuw i64 %index322, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.es, label %middle.block328, label %vector.body321, !llvm.loop !4364

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.ei, %n.vec320
  br i1 %cmp.n329, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader372

.lr.ph.i.i.preheader372:                          ; preds = %.lr.ph.i.i.preheader, %middle.block328
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
  %exitcond.not.i = icmp eq i64 %i.ax, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit, label %.lr.ph.i, !llvm.loop !4147

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.aw, %.thread20.i ] ; 6 uses
  %i.ay = add i64 %.018.lcssa.i, 2
  %i.az = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.ay) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %.097139)
  %i.ba = getelementptr inbounds i8, ptr %i.q, i64 %.idx ; 15 uses
  %i.bb = mul i64 %7, %.018.lcssa.i
  %i.bc = sub i64 0, %i.bb
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bc ; 11 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.a ; 2 uses
  %.not23 = icmp eq i64 %.018.lcssa.i, 0          ; 4 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !2945  ; 5 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !2945  ; 8 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !2945, !noalias !1789 ; 7 uses
  %.not17.i.i = icmp eq ptr %i.bf, %i.bh
  %or.cond.i26 = select i1 %.not.i.i, i1 true, i1 %.not17.i.i ; 4 uses
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %.split.i.i
  %.sroa.027.0.i = phi ptr [ %i.bo, %.split.i.i ], [ %i.bg, %bb.f ]
  %.sroa.010.0.ph.i.i = phi ptr [ %i.bi, %.split.i.i ], [ %i.bd, %bb.f ] ; 2 uses
  %.sroa.013.0.ph.i.i = phi ptr [ %i.bn, %.split.i.i ], [ %i.q, %bb.f ] ; 2 uses
  %.sroa.017.0.ph.i.i = phi ptr [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bh, %bb.f ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i.i, i64 -4 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.br, %bb.h ] ; 2 uses
  %.sroa.017.0.i.i = phi ptr [ %.sroa.017.0.ph.i.i, %.outer.i.i ], [ %i.bj, %bb.h ] ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.017.0.i.i, i64 -4 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !69, !noalias !4367 ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !69, !noalias !4367 ; 2 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.bn = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -4 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !69, !noalias !4367
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !69, !noalias !4367
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !69, !noalias !4367
  store i32 %i.bq, ptr %i.bi, align 4, !tbaa !69, !noalias !4367
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !69, !noalias !4367
  %.not27.i.i = icmp eq ptr %i.bn, %i.ba
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !3171

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 4 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !69, !noalias !4367
  store i32 %i.bk, ptr %i.br, align 4, !tbaa !69, !noalias !4367
  store i32 %i.bs, ptr %i.bj, align 4, !tbaa !69, !noalias !4367
  %.not26.i.i = icmp eq ptr %i.bj, %i.bf
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !3171

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.by, %.split.i14.i ], [ %i.bg, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.bt, %.split.i14.i ], [ %i.bd, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.bx, %.split.i14.i ], [ %i.q, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.bh, %bb.i ]
  %i.bt = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.bu, %bb.k ] ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 5 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !69, !noalias !4372 ; 2 uses
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !69, !noalias !4372 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.bv, %i.bw
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bx = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 4 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !69, !noalias !4372
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !69, !noalias !4372
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !69, !noalias !4372
  store i32 %i.ca, ptr %i.bt, align 4, !tbaa !69, !noalias !4372
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !69, !noalias !4372
  %.not28.i.i = icmp eq ptr %i.bx, %i.ba
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !3175

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !69, !noalias !4372
  store i32 %i.bw, ptr %i.cb, align 4, !tbaa !69, !noalias !4372
  store i32 %i.cc, ptr %i.bu, align 4, !tbaa !69, !noalias !4372
  %.not27.i19.i = icmp eq ptr %i.bu, %i.bf
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !3175

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.ci, %bb.n ], [ %i.bg, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.ck, %bb.n ], [ %i.q, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.bh, %bb.m ]
  %i.cd = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.ci, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.ce, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !69, !noalias !4375 ; 2 uses
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !69, !noalias !4375 ; 2 uses
  %i.ch = icmp slt i32 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 7 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !69, !noalias !4375 ; 2 uses
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.ck = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !69, !noalias !4375
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !69, !noalias !4375
  %i.cl = icmp eq ptr %i.ck, %i.ba
  br i1 %i.cl, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !3181

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !69, !noalias !4375
  store i32 %i.cj, ptr %i.ce, align 4, !tbaa !69, !noalias !4375
  %i.cm = icmp eq ptr %i.ce, %i.bf
  br i1 %i.cm, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !3181

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.cr, %bb.q ], [ %i.bg, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.ct, %bb.q ], [ %i.q, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.bh, %bb.p ]
  %i.cn = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.cr, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.co, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !69, !noalias !4380 ; 2 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !69, !noalias !4380 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.cp, %i.cq
  %i.cr = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 7 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !69, !noalias !4380 ; 2 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.cp, ptr %i.cr, align 4, !tbaa !69, !noalias !4380
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !69, !noalias !4380
  %i.cu = icmp eq ptr %i.ct, %i.ba
  br i1 %i.cu, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !3185

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !69, !noalias !4380
  store i32 %i.cs, ptr %i.co, align 4, !tbaa !69, !noalias !4380
  %i.cv = icmp eq ptr %i.co, %i.bf
  br i1 %i.cv, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !3185

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.bj, %bb.h ], [ %i.bu, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.bh, %bb.p ], [ %i.bh, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.ce, %bb.o ], [ %i.co, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ba, %bb.q ], [ %i.ba, %bb.n ], [ %i.q, %bb.p ], [ %i.q, %bb.m ], [ %i.ba, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ba, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.br, %bb.h ], [ %i.cb, %bb.k ], [ %i.cr, %bb.r ], [ %i.ci, %bb.o ], [ %i.bg, %bb.p ], [ %i.bg, %bb.m ], [ %i.bo, %.split.i.i ], [ %i.ci, %bb.n ], [ %i.cr, %bb.q ], [ %i.by, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.bd, %bb.r ], [ %i.bd, %bb.o ], [ %i.bd, %bb.p ], [ %i.bd, %bb.m ], [ %i.bi, %.split.i.i ], [ %i.bd, %bb.n ], [ %i.bd, %bb.q ], [ %i.bt, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !2945, !noalias !1789
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !2945, !noalias !1789
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.bg, %bb.f ], [ %i.bg, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.071.0 = phi ptr [ %i.bd, %bb.f ], [ %i.bd, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.071.0305 = ptrtoaddr ptr %.sroa.071.0 to i64 ; 2 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !2945
  %i.cw = load ptr, ptr %3, align 8, !tbaa !2945  ; 23 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64              ; 4 uses
  %i.cy = icmp eq ptr %i.cw, %.sroa.066.0
  br i1 %i.cy, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.071.0, %i.be
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %12 = add i64 %i.ab, %.sroa.071.0305
  %i.cz = shl i64 %.018.lcssa.i, 2
  %.neg375 = add i64 %i.cz, 4
  %.neg376 = mul i64 %.neg375, %7
  %i.da = add i64 %.neg376, %12                   ; 2 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.da, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader380, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %scevgep = getelementptr i8, ptr %.sroa.071.0, i64 -4
  %i.dd = add i64 %i.ad, %.sroa.071.0305
  %i.de = shl i64 %.018.lcssa.i, 2
  %.neg377 = add i64 %i.de, 4
  %.neg378 = mul i64 %.neg377, %7
  %i.df = add i64 %.neg378, %i.dd
  %i.dg = lshr i64 %i.df, 2
  %i.dh = mul i64 %i.dg, -4                       ; 2 uses
  %scevgep307 = getelementptr i8, ptr %scevgep, i64 %i.dh
  %scevgep308 = getelementptr i8, ptr %i.cw, i64 -4
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.dh
  %bound0 = icmp ult ptr %scevgep307, %i.cw
  %bound1 = icmp ult ptr %scevgep309, %.sroa.071.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader380, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dc, 9223372036854775800     ; 3 uses
  %i.di = mul i64 %n.vec, -4                      ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cw, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %.sroa.071.0, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %i.dl ; 2 uses
  %next.gep310 = getelementptr i8, ptr %.sroa.071.0, i64 %i.dl ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %next.gep310, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %next.gep310, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dm, align 4, !tbaa !69, !alias.scope !4383, !noalias !4386
  %wide.load311 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !69, !alias.scope !4383, !noalias !4386
  %i.do = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load312 = load <4 x i32>, ptr %i.do, align 4, !tbaa !69, !alias.scope !4390, !noalias !4391
  %wide.load313 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !69, !alias.scope !4390, !noalias !4391
  store <4 x i32> %wide.load312, ptr %i.dm, align 4, !tbaa !69, !alias.scope !4383, !noalias !4386
  store <4 x i32> %wide.load313, ptr %i.dn, align 4, !tbaa !69, !alias.scope !4383, !noalias !4386
  store <4 x i32> %wide.load, ptr %i.do, align 4, !tbaa !69, !alias.scope !4390, !noalias !4391
  store <4 x i32> %wide.load311, ptr %i.dp, align 4, !tbaa !69, !alias.scope !4390, !noalias !4391
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !4392

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader380

.lr.ph.i28.preheader380:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.054.0.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i28.preheader ], [ %i.dj, %middle.block ]
  %.ph = phi ptr [ %.sroa.071.0, %vector.memcheck ], [ %.sroa.071.0, %.lr.ph.i28.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader380, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.dt, %.lr.ph.i28 ], [ %.sroa.054.0.ph, %.lr.ph.i28.preheader380 ]
  %i.dr = phi ptr [ %i.ds, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader380 ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -4 ; 4 uses
  %i.dt = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -4 ; 4 uses
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !69, !noalias !4391
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !69, !noalias !4391
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !69, !noalias !4391
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !69, !noalias !4391
  %.not.i = icmp eq ptr %i.ds, %i.be
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !4393

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cw, %i.ba           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.dw = add i64 %i.t, %i.cx                     ; 2 uses
  %i.dx = lshr i64 %i.dw, 2
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check358 = icmp ult i64 %i.dw, 44
  br i1 %min.iters.check358, label %.lr.ph.i29.preheader384, label %vector.memcheck340

vector.memcheck340:                               ; preds = %.lr.ph.i29.preheader
  %scevgep341 = getelementptr i8, ptr %.sroa.066.0, i64 -4
  %i.dz = add i64 %i.v, %i.cx
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = mul i64 %i.ea, -4                       ; 3 uses
  %scevgep342 = getelementptr i8, ptr %scevgep341, i64 %i.eb ; 2 uses
  %scevgep343 = getelementptr i8, ptr %.sroa.071.0, i64 -4
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.eb ; 2 uses
  %scevgep345 = getelementptr i8, ptr %i.cw, i64 -4
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %i.eb ; 2 uses
  %bound0347 = icmp ult ptr %scevgep342, %.sroa.071.0
  %bound1348 = icmp ult ptr %scevgep344, %.sroa.066.0
  %found.conflict349 = and i1 %bound0347, %bound1348
  %bound0350 = icmp ult ptr %scevgep342, %i.cw
  %bound1351 = icmp ult ptr %scevgep346, %.sroa.066.0
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx = or i1 %found.conflict349, %found.conflict352
  %bound0353 = icmp ult ptr %scevgep344, %i.cw
  %bound1354 = icmp ult ptr %scevgep346, %.sroa.071.0
  %found.conflict355 = and i1 %bound0353, %bound1354
  %conflict.rdx356 = or i1 %conflict.rdx, %found.conflict355
  br i1 %conflict.rdx356, label %.lr.ph.i29.preheader384, label %vector.ph359

vector.ph359:                                     ; preds = %vector.memcheck340
  %n.vec360 = and i64 %i.dy, 9223372036854775804  ; 3 uses
  %i.ec = mul i64 %n.vec360, -4                   ; 3 uses
  %i.ed = getelementptr i8, ptr %.sroa.071.0, i64 %i.ec
  %i.ee = getelementptr i8, ptr %.sroa.066.0, i64 %i.ec ; 2 uses
  %i.ef = getelementptr i8, ptr %i.cw, i64 %i.ec
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph359
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next369, %vector.body361 ] ; 2 uses
  %i.eg = mul i64 %index362, -4                   ; 3 uses
  %next.gep363 = getelementptr i8, ptr %.sroa.071.0, i64 %i.eg
  %next.gep364 = getelementptr i8, ptr %.sroa.066.0, i64 %i.eg
  %next.gep365 = getelementptr i8, ptr %i.cw, i64 %i.eg
  %i.eh = getelementptr inbounds i8, ptr %next.gep364, i64 -16 ; 2 uses
  %wide.load366 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !69, !alias.scope !4394, !noalias !4397
  %i.ei = getelementptr inbounds i8, ptr %next.gep363, i64 -16 ; 2 uses
  %wide.load367 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !69, !alias.scope !4402, !noalias !4403
  store <4 x i32> %wide.load367, ptr %i.eh, align 4, !tbaa !69, !alias.scope !4394, !noalias !4397
  %i.ej = getelementptr inbounds i8, ptr %next.gep365, i64 -16 ; 2 uses
  %wide.load368 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !69, !alias.scope !4404, !noalias !4405
  store <4 x i32> %wide.load368, ptr %i.ei, align 4, !tbaa !69, !alias.scope !4402, !noalias !4403
  store <4 x i32> %wide.load366, ptr %i.ej, align 4, !tbaa !69, !alias.scope !4404, !noalias !4405
  %index.next369 = add nuw i64 %index362, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next369, %n.vec360
  br i1 %i.ek, label %middle.block370, label %vector.body361, !llvm.loop !4406

middle.block370:                                  ; preds = %vector.body361
  %cmp.n371 = icmp eq i64 %i.dy, %n.vec360
  br i1 %cmp.n371, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader384

.lr.ph.i29.preheader384:                          ; preds = %vector.memcheck340, %.lr.ph.i29.preheader, %middle.block370
  %.sroa.048.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck340 ], [ %.sroa.071.0, %.lr.ph.i29.preheader ], [ %i.ed, %middle.block370 ]
  %.sroa.047.0.ph = phi ptr [ %.sroa.066.0, %vector.memcheck340 ], [ %.sroa.066.0, %.lr.ph.i29.preheader ], [ %i.ee, %middle.block370 ]
  %.ph385 = phi ptr [ %i.cw, %vector.memcheck340 ], [ %i.cw, %.lr.ph.i29.preheader ], [ %i.ef, %middle.block370 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader384, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.en, %.lr.ph.i29 ], [ %.sroa.048.0.ph, %.lr.ph.i29.preheader384 ]
  %.sroa.047.0 = phi ptr [ %i.eo, %.lr.ph.i29 ], [ %.sroa.047.0.ph, %.lr.ph.i29.preheader384 ]
  %i.el = phi ptr [ %i.em, %.lr.ph.i29 ], [ %.ph385, %.lr.ph.i29.preheader384 ]
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -4 ; 4 uses
  %i.en = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -4 ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 4 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !69, !noalias !4405
  %i.eq = load i32, ptr %i.en, align 4, !tbaa !69, !noalias !4405
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !69, !noalias !4405
  %i.er = load i32, ptr %i.em, align 4, !tbaa !69, !noalias !4405
  store i32 %i.er, ptr %i.en, align 4, !tbaa !69, !noalias !4405
  store i32 %i.ep, ptr %i.em, align 4, !tbaa !69, !noalias !4405
  %.not.i30 = icmp eq ptr %i.em, %i.ba
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !4407

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.es = add i64 %i.x, %i.cx                     ; 2 uses
  %i.et = lshr i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check324 = icmp ult i64 %i.es, 28
  br i1 %min.iters.check324, label %.lr.ph.i.i.preheader381, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep316 = getelementptr i8, ptr %i.cw, i64 -4
  %i.ev = add i64 %i.z, %i.cx
  %i.ew = lshr i64 %i.ev, 2
  %i.ex = mul i64 %i.ew, -4                       ; 2 uses
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.ex
  %scevgep318 = getelementptr i8, ptr %.sroa.066.0, i64 -4
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.ex
  %bound0320 = icmp ult ptr %scevgep317, %.sroa.066.0
  %bound1321 = icmp ult ptr %scevgep319, %i.cw
  %found.conflict322 = and i1 %bound0320, %bound1321
  br i1 %found.conflict322, label %.lr.ph.i.i.preheader381, label %vector.ph325

vector.ph325:                                     ; preds = %vector.memcheck315
  %n.vec326 = and i64 %i.eu, 9223372036854775800  ; 3 uses
  %i.ey = mul i64 %n.vec326, -4                   ; 2 uses
  %i.ez = getelementptr i8, ptr %.sroa.066.0, i64 %i.ey ; 2 uses
  %i.fa = getelementptr i8, ptr %i.cw, i64 %i.ey
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next335, %vector.body327 ] ; 2 uses
  %i.fb = mul i64 %index328, -4                   ; 2 uses
  %next.gep329 = getelementptr i8, ptr %.sroa.066.0, i64 %i.fb ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.cw, i64 %i.fb ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %next.gep330, i64 -16 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep330, i64 -32 ; 2 uses
  %wide.load331 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !69, !alias.scope !4408, !noalias !4411
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
  %exitcond.not.i = icmp eq i64 %i.ax, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit, label %.lr.ph.i, !llvm.loop !3264

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.aw, %.thread20.i ] ; 6 uses
  %i.ay = add i64 %.018.lcssa.i, 2
  %i.az = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.ay) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %.095139)
  %i.ba = getelementptr inbounds i8, ptr %i.q, i64 %.idx ; 15 uses
  %i.bb = mul i64 %7, %.018.lcssa.i
  %i.bc = sub i64 0, %i.bb
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bc ; 11 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.a ; 2 uses
  %.not23 = icmp eq i64 %.018.lcssa.i, 0          ; 3 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !2945  ; 5 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !2945  ; 8 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !2945, !noalias !1789 ; 7 uses
  %.not17.i.i = icmp eq ptr %i.bf, %i.bh
  %or.cond.i26 = select i1 %.not.i.i, i1 true, i1 %.not17.i.i ; 4 uses
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %.split.i.i
  %.sroa.027.0.i = phi ptr [ %i.bo, %.split.i.i ], [ %i.bg, %bb.f ]
  %.sroa.010.0.ph.i.i = phi ptr [ %i.bi, %.split.i.i ], [ %i.bd, %bb.f ] ; 2 uses
  %.sroa.013.0.ph.i.i = phi ptr [ %i.bn, %.split.i.i ], [ %i.q, %bb.f ] ; 2 uses
  %.sroa.017.0.ph.i.i = phi ptr [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bh, %bb.f ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i.i, i64 -4 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.br, %bb.h ] ; 2 uses
  %.sroa.017.0.i.i = phi ptr [ %.sroa.017.0.ph.i.i, %.outer.i.i ], [ %i.bj, %bb.h ] ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.017.0.i.i, i64 -4 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !69, !noalias !4730 ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !69, !noalias !4730 ; 2 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.bn = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -4 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !69, !noalias !4730
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !69, !noalias !4730
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !69, !noalias !4730
  store i32 %i.bq, ptr %i.bi, align 4, !tbaa !69, !noalias !4730
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !69, !noalias !4730
  %.not27.i.i = icmp eq ptr %i.bn, %i.ba
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !3171

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 4 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !69, !noalias !4730
  store i32 %i.bk, ptr %i.br, align 4, !tbaa !69, !noalias !4730
  store i32 %i.bs, ptr %i.bj, align 4, !tbaa !69, !noalias !4730
  %.not26.i.i = icmp eq ptr %i.bj, %i.bf
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !3171

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.by, %.split.i14.i ], [ %i.bg, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.bt, %.split.i14.i ], [ %i.bd, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.bx, %.split.i14.i ], [ %i.q, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.bh, %bb.i ]
  %i.bt = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.bu, %bb.k ] ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 5 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !69, !noalias !4735 ; 2 uses
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !69, !noalias !4735 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.bv, %i.bw
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bx = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 4 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !69, !noalias !4735
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !69, !noalias !4735
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !69, !noalias !4735
  store i32 %i.ca, ptr %i.bt, align 4, !tbaa !69, !noalias !4735
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !69, !noalias !4735
  %.not28.i.i = icmp eq ptr %i.bx, %i.ba
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !3175

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !69, !noalias !4735
  store i32 %i.bw, ptr %i.cb, align 4, !tbaa !69, !noalias !4735
  store i32 %i.cc, ptr %i.bu, align 4, !tbaa !69, !noalias !4735
  %.not27.i19.i = icmp eq ptr %i.bu, %i.bf
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !3175

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.ci, %bb.n ], [ %i.bg, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.ck, %bb.n ], [ %i.q, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.bh, %bb.m ]
  %i.cd = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.ci, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.ce, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !69, !noalias !4738 ; 2 uses
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !69, !noalias !4738 ; 2 uses
  %i.ch = icmp slt i32 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 7 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !69, !noalias !4738 ; 2 uses
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.ck = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !69, !noalias !4738
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !69, !noalias !4738
  %i.cl = icmp eq ptr %i.ck, %i.ba
  br i1 %i.cl, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !3181

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !69, !noalias !4738
  store i32 %i.cj, ptr %i.ce, align 4, !tbaa !69, !noalias !4738
  %i.cm = icmp eq ptr %i.ce, %i.bf
  br i1 %i.cm, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !3181

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.cr, %bb.q ], [ %i.bg, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.ct, %bb.q ], [ %i.q, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.bh, %bb.p ]
  %i.cn = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.cr, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.co, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !69, !noalias !4743 ; 2 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !69, !noalias !4743 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.cp, %i.cq
  %i.cr = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 7 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !69, !noalias !4743 ; 2 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.cp, ptr %i.cr, align 4, !tbaa !69, !noalias !4743
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !69, !noalias !4743
  %i.cu = icmp eq ptr %i.ct, %i.ba
  br i1 %i.cu, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !3185

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !69, !noalias !4743
  store i32 %i.cs, ptr %i.co, align 4, !tbaa !69, !noalias !4743
  %i.cv = icmp eq ptr %i.co, %i.bf
  br i1 %i.cv, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !3185

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.bj, %bb.h ], [ %i.bu, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.bh, %bb.p ], [ %i.bh, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.ce, %bb.o ], [ %i.co, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ba, %bb.q ], [ %i.ba, %bb.n ], [ %i.q, %bb.p ], [ %i.q, %bb.m ], [ %i.ba, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ba, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.br, %bb.h ], [ %i.cb, %bb.k ], [ %i.cr, %bb.r ], [ %i.ci, %bb.o ], [ %i.bg, %bb.p ], [ %i.bg, %bb.m ], [ %i.bo, %.split.i.i ], [ %i.ci, %bb.n ], [ %i.cr, %bb.q ], [ %i.by, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.bd, %bb.r ], [ %i.bd, %bb.o ], [ %i.bd, %bb.p ], [ %i.bd, %bb.m ], [ %i.bi, %.split.i.i ], [ %i.bd, %bb.n ], [ %i.bd, %bb.q ], [ %i.bt, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !2945, !noalias !1789
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !2945, !noalias !1789
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.bg, %bb.f ], [ %i.bg, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.069.0 = phi ptr [ %i.bd, %bb.f ], [ %i.bd, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.069.0307 = ptrtoaddr ptr %.sroa.069.0 to i64 ; 2 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !2945
  %i.cw = load ptr, ptr %3, align 8, !tbaa !2945  ; 23 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64              ; 4 uses
  %i.cy = icmp eq ptr %i.cw, %.sroa.064.0
  br i1 %i.cy, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.be
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %12 = add i64 %i.ab, %.sroa.069.0307
  %i.cz = shl i64 %.018.lcssa.i, 2
  %.neg377 = add i64 %i.cz, 4
  %.neg378 = mul i64 %.neg377, %7
  %i.da = add i64 %.neg378, %12                   ; 2 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.da, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader382, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %scevgep = getelementptr i8, ptr %.sroa.069.0, i64 -4
  %i.dd = add i64 %i.ad, %.sroa.069.0307
  %i.de = shl i64 %.018.lcssa.i, 2
  %.neg379 = add i64 %i.de, 4
  %.neg380 = mul i64 %.neg379, %7
  %i.df = add i64 %.neg380, %i.dd
  %i.dg = lshr i64 %i.df, 2
  %i.dh = mul i64 %i.dg, -4                       ; 2 uses
  %scevgep309 = getelementptr i8, ptr %scevgep, i64 %i.dh
  %scevgep310 = getelementptr i8, ptr %i.cw, i64 -4
  %scevgep311 = getelementptr i8, ptr %scevgep310, i64 %i.dh
  %bound0 = icmp ult ptr %scevgep309, %i.cw
  %bound1 = icmp ult ptr %scevgep311, %.sroa.069.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader382, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dc, 9223372036854775800     ; 3 uses
  %i.di = mul i64 %n.vec, -4                      ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cw, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %.sroa.069.0, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %i.dl ; 2 uses
  %next.gep312 = getelementptr i8, ptr %.sroa.069.0, i64 %i.dl ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %next.gep312, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %next.gep312, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dm, align 4, !tbaa !69, !alias.scope !4746, !noalias !4749
  %wide.load313 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !69, !alias.scope !4746, !noalias !4749
  %i.do = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load314 = load <4 x i32>, ptr %i.do, align 4, !tbaa !69, !alias.scope !4753, !noalias !4754
  %wide.load315 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !69, !alias.scope !4753, !noalias !4754
  store <4 x i32> %wide.load314, ptr %i.dm, align 4, !tbaa !69, !alias.scope !4746, !noalias !4749
  store <4 x i32> %wide.load315, ptr %i.dn, align 4, !tbaa !69, !alias.scope !4746, !noalias !4749
  store <4 x i32> %wide.load, ptr %i.do, align 4, !tbaa !69, !alias.scope !4753, !noalias !4754
  store <4 x i32> %wide.load313, ptr %i.dp, align 4, !tbaa !69, !alias.scope !4753, !noalias !4754
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !4755

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader382

.lr.ph.i28.preheader382:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.052.0.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i28.preheader ], [ %i.dj, %middle.block ]
  %.ph = phi ptr [ %.sroa.069.0, %vector.memcheck ], [ %.sroa.069.0, %.lr.ph.i28.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader382, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.dt, %.lr.ph.i28 ], [ %.sroa.052.0.ph, %.lr.ph.i28.preheader382 ]
  %i.dr = phi ptr [ %i.ds, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader382 ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -4 ; 4 uses
  %i.dt = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !69, !noalias !4754
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !69, !noalias !4754
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !69, !noalias !4754
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !69, !noalias !4754
  %.not.i = icmp eq ptr %i.ds, %i.be
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !4756

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cw, %i.ba           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.dw = add i64 %i.t, %i.cx                     ; 2 uses
  %i.dx = lshr i64 %i.dw, 2
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check360 = icmp ult i64 %i.dw, 44
  br i1 %min.iters.check360, label %.lr.ph.i29.preheader386, label %vector.memcheck342

vector.memcheck342:                               ; preds = %.lr.ph.i29.preheader
  %scevgep343 = getelementptr i8, ptr %.sroa.064.0, i64 -4
  %i.dz = add i64 %i.v, %i.cx
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = mul i64 %i.ea, -4                       ; 3 uses
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.eb ; 2 uses
  %scevgep345 = getelementptr i8, ptr %.sroa.069.0, i64 -4
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %i.eb ; 2 uses
  %scevgep347 = getelementptr i8, ptr %i.cw, i64 -4
  %scevgep348 = getelementptr i8, ptr %scevgep347, i64 %i.eb ; 2 uses
  %bound0349 = icmp ult ptr %scevgep344, %.sroa.069.0
  %bound1350 = icmp ult ptr %scevgep346, %.sroa.064.0
  %found.conflict351 = and i1 %bound0349, %bound1350
  %bound0352 = icmp ult ptr %scevgep344, %i.cw
  %bound1353 = icmp ult ptr %scevgep348, %.sroa.064.0
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx = or i1 %found.conflict351, %found.conflict354
  %bound0355 = icmp ult ptr %scevgep346, %i.cw
  %bound1356 = icmp ult ptr %scevgep348, %.sroa.069.0
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx358 = or i1 %conflict.rdx, %found.conflict357
  br i1 %conflict.rdx358, label %.lr.ph.i29.preheader386, label %vector.ph361

vector.ph361:                                     ; preds = %vector.memcheck342
  %n.vec362 = and i64 %i.dy, 9223372036854775804  ; 3 uses
  %i.ec = mul i64 %n.vec362, -4                   ; 3 uses
  %i.ed = getelementptr i8, ptr %.sroa.069.0, i64 %i.ec
  %i.ee = getelementptr i8, ptr %.sroa.064.0, i64 %i.ec ; 2 uses
  %i.ef = getelementptr i8, ptr %i.cw, i64 %i.ec
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph361
  %index364 = phi i64 [ 0, %vector.ph361 ], [ %index.next371, %vector.body363 ] ; 2 uses
  %i.eg = mul i64 %index364, -4                   ; 3 uses
  %next.gep365 = getelementptr i8, ptr %.sroa.069.0, i64 %i.eg
  %next.gep366 = getelementptr i8, ptr %.sroa.064.0, i64 %i.eg
  %next.gep367 = getelementptr i8, ptr %i.cw, i64 %i.eg
  %i.eh = getelementptr inbounds i8, ptr %next.gep366, i64 -16 ; 2 uses
  %wide.load368 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !69, !alias.scope !4757, !noalias !4760
  %i.ei = getelementptr inbounds i8, ptr %next.gep365, i64 -16 ; 2 uses
  %wide.load369 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !69, !alias.scope !4765, !noalias !4766
  store <4 x i32> %wide.load369, ptr %i.eh, align 4, !tbaa !69, !alias.scope !4757, !noalias !4760
  %i.ej = getelementptr inbounds i8, ptr %next.gep367, i64 -16 ; 2 uses
  %wide.load370 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !69, !alias.scope !4767, !noalias !4768
  store <4 x i32> %wide.load370, ptr %i.ei, align 4, !tbaa !69, !alias.scope !4765, !noalias !4766
  store <4 x i32> %wide.load368, ptr %i.ej, align 4, !tbaa !69, !alias.scope !4767, !noalias !4768
  %index.next371 = add nuw i64 %index364, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next371, %n.vec362
  br i1 %i.ek, label %middle.block372, label %vector.body363, !llvm.loop !4769

middle.block372:                                  ; preds = %vector.body363
  %cmp.n373 = icmp eq i64 %i.dy, %n.vec362
  br i1 %cmp.n373, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader386

.lr.ph.i29.preheader386:                          ; preds = %vector.memcheck342, %.lr.ph.i29.preheader, %middle.block372
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck342 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.ed, %middle.block372 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck342 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.ee, %middle.block372 ]
  %.ph387 = phi ptr [ %i.cw, %vector.memcheck342 ], [ %i.cw, %.lr.ph.i29.preheader ], [ %i.ef, %middle.block372 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader386, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.en, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader386 ]
  %.sroa.045.0 = phi ptr [ %i.eo, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader386 ]
  %i.el = phi ptr [ %i.em, %.lr.ph.i29 ], [ %.ph387, %.lr.ph.i29.preheader386 ]
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -4 ; 4 uses
  %i.en = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 4 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !69, !noalias !4768
  %i.eq = load i32, ptr %i.en, align 4, !tbaa !69, !noalias !4768
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !69, !noalias !4768
  %i.er = load i32, ptr %i.em, align 4, !tbaa !69, !noalias !4768
  store i32 %i.er, ptr %i.en, align 4, !tbaa !69, !noalias !4768
  store i32 %i.ep, ptr %i.em, align 4, !tbaa !69, !noalias !4768
  %.not.i30 = icmp eq ptr %i.em, %i.ba
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !4770

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.es = add i64 %i.x, %i.cx                     ; 2 uses
  %i.et = lshr i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check326 = icmp ult i64 %i.es, 28
  br i1 %min.iters.check326, label %.lr.ph.i.i.preheader383, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep318 = getelementptr i8, ptr %i.cw, i64 -4
  %i.ev = add i64 %i.z, %i.cx
  %i.ew = lshr i64 %i.ev, 2
  %i.ex = mul i64 %i.ew, -4                       ; 2 uses
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.ex
  %scevgep320 = getelementptr i8, ptr %.sroa.064.0, i64 -4
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.ex
  %bound0322 = icmp ult ptr %scevgep319, %.sroa.064.0
  %bound1323 = icmp ult ptr %scevgep321, %i.cw
  %found.conflict324 = and i1 %bound0322, %bound1323
  br i1 %found.conflict324, label %.lr.ph.i.i.preheader383, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck317
  %n.vec328 = and i64 %i.eu, 9223372036854775800  ; 3 uses
  %i.ey = mul i64 %n.vec328, -4                   ; 2 uses
  %i.ez = getelementptr i8, ptr %.sroa.064.0, i64 %i.ey ; 2 uses
  %i.fa = getelementptr i8, ptr %i.cw, i64 %i.ey
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next337, %vector.body329 ] ; 2 uses
  %i.fb = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %.sroa.064.0, i64 %i.fb ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.cw, i64 %i.fb ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !69, !alias.scope !4771, !noalias !4774
end_hunk_3
