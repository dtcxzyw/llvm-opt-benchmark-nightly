Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 282
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !311

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.m, %vec.epilog.iter.check ], [ %.0104279, %vector.main.loop.iter.check ]
  %n.vec323 = and i64 %i.k, -8                    ; 3 uses
  %i.o = add i64 %.0104279, %n.vec323
  %broadcast.splatinsert324 = insertelement <8 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat325 = shufflevector <8 x i64> %broadcast.splatinsert324, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction326 = add <8 x i64> %broadcast.splat325, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index327 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next329, %vec.epilog.vector.body ]
  %vec.ind328 = phi <8 x i64> [ %induction326, %vec.epilog.ph ], [ %vec.ind.next330, %vec.epilog.vector.body ] ; 3 uses
  %index.next329 = add nuw i64 %index327, 8       ; 2 uses
  %vec.ind.next330 = add <8 x i64> %vec.ind328, splat (i64 8)
  %i.p = icmp eq i64 %index.next329, %n.vec323
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1416

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %vector.recur.extract.for.phi331 = extractelement <8 x i64> %vec.ind328, i64 6
  %vector.recur.extract332 = extractelement <8 x i64> %vec.ind328, i64 7
  %cmp.n333 = icmp eq i64 %i.k, %n.vec323
  br i1 %cmp.n333, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i.ph = phi i64 [ 0, %iter.check ], [ %vector.recur.extract, %vec.epilog.iter.check ], [ %vector.recur.extract332, %vec.epilog.middle.block ]
  %.0.i.ph = phi i64 [ %.0104279, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.022.i = phi i64 [ %.0.i, %vec.epilog.scalar.ph ], [ %.022.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.0.i = phi i64 [ %i.q, %vec.epilog.scalar.ph ], [ %.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.q = add i64 %.0.i, 1
  %exitcond.not.i = icmp eq i64 %.0.i, %umax.i
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %vec.epilog.scalar.ph, !llvm.loop !1417

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.022.i.lcssa = phi i64 [ %vector.recur.extract.for.phi331, %vec.epilog.middle.block ], [ %vector.recur.extract.for.phi, %middle.block ], [ %.022.i, %vec.epilog.scalar.ph ] ; 6 uses
  %i.r = add i64 %.022.i.lcssa, 2
  %i.s = tail call i64 @llvm.umax.i64(i64 %.val261263, i64 %i.r) ; 2 uses
  %.sroa.speculated196 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %.0207268)
  %i.t = mul i64 %.022.i.lcssa, %2                ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0111270, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %2
  %i.w = getelementptr i8, ptr %.0111270, i64 %2  ; 11 uses
  %i.x = icmp eq ptr %.0214265, %.0210266         ; 2 uses
  %.not120 = icmp eq i64 %.0280, 0
  %.old124 = trunc nuw i8 %.0108276 to i1         ; 4 uses
  %or.cond = select i1 %.not121, i1 true, i1 %.old124
  %or.cond250 = select i1 %.not120, i1 %or.cond, i1 false
  br i1 %or.cond250, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.idx = shl nuw nsw i64 %.022.i.lcssa, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.0106277, i64 %.idx ; 13 uses
  %i.z = icmp eq ptr %.0219264, %i.i
  br i1 %i.z, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  br i1 %.old124, label %bb.d, label %.thread

.thread:                                          ; preds = %._crit_edge
  %.not.i.i301 = icmp samesign eq i64 %i.t, 0
  br label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !223
  %i.ab = load i64, ptr %.0219264, align 8, !tbaa !223
  %i.ac = icmp ult i64 %i.aa, %i.ab               ; 7 uses
  %i.ad = xor i1 %i.ac, %.old124
  br i1 %i.ad, label %bb.h, label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.ae = phi i1 [ true, %._crit_edge ], [ %i.ac, %bb.c ] ; 3 uses
  %.not.i = icmp samesign eq i64 %i.t, 0
  br i1 %.not.i, label %.sink.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %.not29.i = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not29.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.af = load i64, ptr %i.y, align 8, !tbaa !223
  %i.ag = load i64, ptr %.0106277, align 8, !tbaa !223
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !223
  store i64 %i.af, ptr %.0106277, align 8, !tbaa !223
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.i
  %i.ah = icmp eq ptr %i.y, %.0219264
  br i1 %i.ah, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp eq ptr %.0219264, %.0106277
  %spec.select = select i1 %i.ai, ptr %i.y, ptr %.0219264
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.c
  %.not.i.i = icmp samesign eq i64 %i.t, 0        ; 3 uses
  br i1 %.old124, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  br i1 %i.x, label %bb.j, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %.not.i30.i.i = icmp eq ptr %.0114269, %.0111270
  %or.cond.i31.i.i = or i1 %.not.i30.i.i, %.not.i41.i.i ; 2 uses
  br i1 %.not.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %or.cond.i31.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.k, %bb.l
  %.pn.i.i.i = phi ptr [ %.041.i.i.i, %bb.l ], [ %.0114269, %bb.k ]
  %.pn49.i.i.i = phi ptr [ %.037.i.i.i, %bb.l ], [ %.0214265, %bb.k ]
  %.pn50.i.i.i = phi ptr [ %.035.i.i.i, %bb.l ], [ %.0111270, %bb.k ]
  %.035.i.i.i = getelementptr inbounds nuw i8, ptr %.pn50.i.i.i, i64 1 ; 3 uses
  %.037.i.i.i = getelementptr inbounds nuw i8, ptr %.pn49.i.i.i, i64 1 ; 2 uses
  %.041.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 3 uses
  %.not48.i.i.i = icmp eq ptr %.041.i.i.i, %.0111270
  br i1 %.not48.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.preheader.i.i
  %i.aj = icmp eq ptr %.035.i.i.i, %i.w
  br i1 %i.aj, label %bb.m, label %.preheader.i.i, !llvm.loop !24

bb.m:                                             ; preds = %bb.l
  %i.ak = ptrtoaddr ptr %.0111270 to i64
  %i.al = ptrtoaddr ptr %.041.i.i.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %.0.lcssa.i.i.i.i.i = getelementptr i8, ptr %.0214265, i64 %i.am
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

bb.n:                                             ; preds = %bb.j
  br i1 %or.cond.i31.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.n, %bb.o
  %.pn.i32.i.i = phi ptr [ %.034.i.i.i, %bb.o ], [ %.0114269, %bb.n ]
  %.pn41.i.i.i = phi ptr [ %.030.i.i.i, %bb.o ], [ %.0214265, %bb.n ]
  %.pn42.i.i.i = phi ptr [ %.0.i33.i.i, %bb.o ], [ %.0111270, %bb.n ]
  %.0.i33.i.i = getelementptr inbounds nuw i8, ptr %.pn42.i.i.i, i64 1 ; 3 uses
  %.030.i.i.i = getelementptr inbounds nuw i8, ptr %.pn41.i.i.i, i64 1 ; 2 uses
  %.034.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i32.i.i, i64 1 ; 3 uses
  %i.an = icmp eq ptr %.034.i.i.i, %.0111270
  br i1 %i.an, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i.i
  %i.ao = icmp eq ptr %.0.i33.i.i, %i.w
  br i1 %i.ao, label %bb.p, label %.preheader.i.i.i, !llvm.loop !25

bb.p:                                             ; preds = %bb.o
  %i.ap = ptrtoaddr ptr %.0111270 to i64
  %i.aq = ptrtoaddr ptr %.034.i.i.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.0.lcssa.i.i.i34.i.i = getelementptr i8, ptr %.0214265, i64 %i.ar
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i: ; preds = %.preheader.i.i, %.preheader.i.i.i, %bb.p, %bb.m, %bb.i
  %.060.i.i = phi ptr [ %.0.i33.i.i, %.preheader.i.i.i ], [ %.0111270, %bb.i ], [ %i.w, %bb.p ], [ %i.w, %bb.m ], [ %.035.i.i.i, %.preheader.i.i ] ; 5 uses
  %.028.i.i = phi ptr [ %.0111270, %.preheader.i.i.i ], [ %.0114269, %bb.i ], [ %.0111270, %bb.p ], [ %.0111270, %bb.m ], [ %.0111270, %.preheader.i.i ] ; 3 uses
  %.0.i.i = phi ptr [ %.030.i.i.i, %.preheader.i.i.i ], [ %.0210266, %bb.i ], [ %.0.lcssa.i.i.i34.i.i, %bb.p ], [ %.0.lcssa.i.i.i.i.i, %bb.m ], [ %.037.i.i.i, %.preheader.i.i ] ; 4 uses
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i
  %.not.i38.i.i = icmp eq ptr %.060.i.i, %i.w
  %.not36.i.i.i = icmp eq ptr %.0.i.i, %.0214265
  %or.cond.i39.i.i = select i1 %.not.i38.i.i, i1 true, i1 %.not36.i.i.i
  br i1 %or.cond.i39.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = ptrtoaddr ptr %.060.i.i to i64
  %i.at = ptrtoaddr ptr %i.w to i64
  %i.au = sub i64 %i.at, %i.as                    ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %.060.i.i, i64 %i.au
  %scevgep41.i.i.i = getelementptr i8, ptr %.028.i.i, i64 %i.au
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, %bb.n
  %.075.i.i = phi ptr [ %.0.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %.0210266, %bb.n ] ; 2 uses
  %.02873.i.i = phi ptr [ %.028.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %.0111270, %bb.n ]
  %.06072.i.i = phi ptr [ %.060.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %.0111270, %bb.n ] ; 3 uses
  %.not.i42.i.i = icmp eq ptr %.06072.i.i, %i.w
  %.not36.i43.i.i = icmp eq ptr %.075.i.i, %.0214265
  %or.cond.i44.i.i = select i1 %.not.i42.i.i, i1 true, i1 %.not36.i43.i.i
  %i.av = ptrtoaddr ptr %.06072.i.i to i64
  %i.aw = ptrtoaddr ptr %i.w to i64
  %i.ax = sub i64 %i.aw, %i.av
  %.226.idx.i.i.i = select i1 %or.cond.i44.i.i, i64 0, i64 %i.ax ; 2 uses
  %.226.i.i.i = getelementptr i8, ptr %.02873.i.i, i64 %.226.idx.i.i.i
  %.2.i45.i.i = getelementptr i8, ptr %.06072.i.i, i64 %.226.idx.i.i.i
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.s:                                             ; preds = %.thread, %bb.h
  %.not.i.i302 = phi i1 [ %.not.i.i301, %.thread ], [ %.not.i.i, %bb.h ] ; 2 uses
  %i.ay = phi i1 [ true, %.thread ], [ %i.ac, %bb.h ] ; 4 uses
  br i1 %i.x, label %bb.t, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %8 = ptrtoaddr ptr %.0111270 to i64
  %i.az = ptrtoint ptr %.0114269 to i64
  %i.ba = sub i64 %8, %i.az
  %i.bb = getelementptr inbounds i8, ptr %.0214265, i64 %i.ba ; 2 uses
  br i1 %.not.i.i302, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i: ; preds = %bb.s
  br i1 %.not.i.i302, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i
  br i1 %.not.i41.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i
  %i.bc = ptrtoaddr ptr %.0214265 to i64
  %i.bd = ptrtoaddr ptr %.0210266 to i64
  %i.be = sub i64 %i.bd, %i.bc                    ; 2 uses
  %scevgep.i43.i.i = getelementptr i8, ptr %.0214265, i64 %i.be
  %scevgep38.i.i.i = getelementptr i8, ptr %.0114269, i64 %i.be
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i, %bb.t
  %.081.i.i = phi ptr [ %.0210266, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i ], [ %i.bb, %bb.t ] ; 3 uses
  %.02879.i.i = phi ptr [ %.0114269, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i ], [ %.0111270, %bb.t ]
  %.06678.i.i = phi ptr [ %.0214265, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i ], [ %i.bb, %bb.t ] ; 3 uses
  %.not36.i47.i.i = icmp eq ptr %.081.i.i, %.06678.i.i
  %or.cond.i48.i.i = select i1 %.not.i41.i.i, i1 true, i1 %.not36.i47.i.i
  %i.bf = ptrtoaddr ptr %.06678.i.i to i64
  %i.bg = ptrtoaddr ptr %.081.i.i to i64
  %i.bh = sub i64 %i.bg, %i.bf
  %.226.idx.i.i16.i = select i1 %or.cond.i48.i.i, i64 0, i64 %i.bh ; 2 uses
  %.226.i.i17.i = getelementptr i8, ptr %.02879.i.i, i64 %.226.idx.i.i16.i
  %.223.i.i.i = getelementptr i8, ptr %.06678.i.i, i64 %.226.idx.i.i16.i
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i, %bb.u, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i, %bb.q, %bb.r, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i
  %i.bi = phi i1 [ %i.ac, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ac, %bb.q ], [ %i.ac, %bb.r ], [ %i.ay, %bb.u ], [ %i.ay, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i ], [ %i.ay, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i ] ; 4 uses
  %i.bj = phi i1 [ true, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.u ], [ false, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i ], [ false, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i ] ; 4 uses
  %.5 = phi ptr [ %.0214265, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.0214265, %bb.q ], [ %.0214265, %bb.r ], [ %scevgep.i43.i.i, %bb.u ], [ %.223.i.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i ], [ %.0214265, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i ] ; 4 uses
  %storemerge18.i = phi ptr [ %.075.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.0.i.i, %bb.q ], [ %.0.i.i, %bb.r ], [ %.0210266, %bb.u ], [ %.081.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i ], [ %.0210266, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i ] ; 4 uses
  %storemerge.i = phi ptr [ %.2.i45.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.060.i.i, %bb.q ], [ %scevgep.i.i.i, %bb.r ], [ %.0111270, %bb.u ], [ %.0111270, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i ], [ %.0111270, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i ]
  %i.bk = phi ptr [ %.226.i.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.028.i.i, %bb.q ], [ %scevgep41.i.i.i, %bb.r ], [ %scevgep38.i.i.i, %bb.u ], [ %.226.i.i17.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i ], [ %.0114269, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i ] ; 4 uses
  %i.bl = icmp eq ptr %.5, %storemerge18.i
  br i1 %i.bl, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread, label %bb.y

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread: ; preds = %bb.t, %bb.k, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %i.bm = phi i1 [ %i.bi, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ], [ %i.ac, %bb.k ], [ %i.ay, %bb.t ] ; 3 uses
  %i.bn = phi i1 [ %i.bj, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ], [ true, %bb.k ], [ false, %bb.t ] ; 3 uses
  %i.bo = phi ptr [ %i.bk, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ], [ %.0111270, %bb.k ], [ %.0111270, %bb.t ] ; 3 uses
  %storemerge.i228 = phi ptr [ %storemerge.i, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ], [ %.0111270, %bb.k ], [ %.0111270, %bb.t ] ; 3 uses
  %i.bp = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bq = ptrtoint ptr %storemerge.i228 to i64    ; 2 uses
  %.neg = sub i64 %i.bq, %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.v, i64 %.neg
  %.not.i126 = icmp eq ptr %storemerge.i228, %i.br
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135, label %.preheader.i127

.preheader.i127:                                  ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread
  %.not2830.i128 = icmp eq ptr %storemerge.i228, %i.w
  %i.bs = sub i64 %i.bp, %i.bq
  %.0.lcssa.idx.i129 = select i1 %.not2830.i128, i64 0, i64 %i.bs
  %.0.lcssa.i130 = getelementptr i8, ptr %7, i64 %.0.lcssa.idx.i129 ; 2 uses
  %.not29.i131 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not29.i131, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader.i127
  %i.bt = load i64, ptr %i.y, align 8, !tbaa !223
  %i.bu = load i64, ptr %.0106277, align 8, !tbaa !223
  store i64 %i.bu, ptr %i.y, align 8, !tbaa !223
  store i64 %i.bt, ptr %.0106277, align 8, !tbaa !223
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader.i127
  %i.bv = icmp eq ptr %i.y, %.0219264
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = icmp eq ptr %.0219264, %.0106277
  %spec.select246 = select i1 %i.bw, ptr %i.y, ptr %.0219264
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135

bb.y:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.not.i136 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i136, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = load i64, ptr %i.y, align 8, !tbaa !223
  %i.by = load i64, ptr %.0106277, align 8, !tbaa !223
  store i64 %i.by, ptr %i.y, align 8, !tbaa !223
  store i64 %i.bx, ptr %.0106277, align 8, !tbaa !223
  %i.bz = icmp eq ptr %i.y, %.0219264
  br i1 %i.bz, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = icmp eq ptr %.0219264, %.0106277
  %spec.select247 = select i1 %i.ca, ptr %i.y, ptr %.0219264
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135: ; preds = %bb.aa, %bb.x, %bb.y, %bb.z, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread, %bb.w
  %i.cb = phi i1 [ %i.bi, %bb.aa ], [ %i.bm, %bb.w ], [ %i.bm, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread ], [ %i.bm, %bb.x ], [ %i.bi, %bb.z ], [ %i.bi, %bb.y ]
  %i.cc = phi i1 [ %i.bj, %bb.aa ], [ %i.bn, %bb.w ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread ], [ %i.bn, %bb.x ], [ %i.bj, %bb.z ], [ %i.bj, %bb.y ]
  %i.cd = phi i1 [ false, %bb.aa ], [ true, %bb.w ], [ true, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread ], [ true, %bb.x ], [ false, %bb.z ], [ false, %bb.y ]
  %i.ce = phi ptr [ %i.bk, %bb.aa ], [ %i.bo, %bb.w ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread ], [ %i.bo, %bb.x ], [ %i.bk, %bb.z ], [ %i.bk, %bb.y ]
  %.1220 = phi ptr [ %spec.select247, %bb.aa ], [ %.0106277, %bb.w ], [ %.0219264, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread ], [ %spec.select246, %bb.x ], [ %.0106277, %bb.z ], [ %.0219264, %bb.y ]
  %.1215 = phi ptr [ %.5, %bb.aa ], [ %7, %bb.w ], [ %7, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread ], [ %7, %bb.x ], [ %.5, %bb.z ], [ %.5, %bb.y ]
  %.1211 = phi ptr [ %storemerge18.i, %bb.aa ], [ %.0.lcssa.i130, %bb.w ], [ %7, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit.thread ], [ %.0.lcssa.i130, %bb.x ], [ %storemerge18.i, %bb.z ], [ %storemerge18.i, %bb.y ]
  %i.cf = xor i1 %i.cc, %i.cd
  %i.cg = zext i1 %i.cf to i8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.d, %bb.f, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135
  %i.ch = phi i1 [ %i.cb, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135 ], [ %i.ae, %bb.f ], [ %i.ae, %bb.d ], [ %i.ae, %bb.g ]
  %.2221 = phi ptr [ %.1220, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135 ], [ %.0106277, %bb.f ], [ %.0219264, %bb.d ], [ %spec.select, %bb.g ]
  %.2216 = phi ptr [ %.1215, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135 ], [ %7, %bb.f ], [ %7, %bb.d ], [ %7, %bb.g ]
  %.2212 = phi ptr [ %.1211, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135 ], [ %.0.lcssa.i, %bb.f ], [ %7, %bb.d ], [ %.0.lcssa.i, %bb.g ]
  %.1115 = phi ptr [ %i.ce, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135 ], [ %.0111270, %bb.f ], [ %.0111270, %bb.d ], [ %.0111270, %bb.g ]
  %.1109 = phi i8 [ %i.cg, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmP5emptyS5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit135 ], [ %.0108276, %bb.f ], [ %.0108276, %bb.d ], [ %.0108276, %bb.g ]
  %not. = xor i1 %i.ch, true
  %i.ci = sext i1 %not. to i64
  %.1 = add i64 %.0280, %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %.0106277, i64 8
  %i.ck = icmp ne i64 %.0104279, 0
  %.neg122 = sext i1 %i.ck to i64
  %i.cl = add i64 %.0104279, %.neg122
  %i.cm = icmp ne i64 %i.s, 0
  %.neg123 = sext i1 %i.cm to i64
  %i.cn = add i64 %.sroa.speculated196, %.neg123
  %i.co = add i64 %.0207268, -1                   ; 2 uses
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IP5emptyEESB_SB_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS9_ES9_NS_11move_detail8identityIS9_EEEEEENS0_7move_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_.exit, label %iter.check, !llvm.loop !1418

.lr.ph.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 %6
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %4
  %i.cs = sub i64 0, %2                           ; 4 uses
  %.not17.i.i.i = icmp samesign eq i64 %6, 0
  %or.cond.i26.i = select i1 %.not.i41.i.i, i1 true, i1 %.not17.i.i.i ; 3 uses
  %.sroa.063.0.i.idx = select i1 %or.cond.i26.i, i64 0, i64 %i.cs
  br label %iter.check352

iter.check352:                                    ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IP5emptyEEEEvT_S9_RS9_T0_SB_SB_.exit.i, %.lr.ph.i
  %.sroa.0154.0 = phi ptr [ %i.cr, %.lr.ph.i ], [ %i.dw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IP5emptyEEEEvT_S9_RS9_T0_SB_SB_.exit.i ] ; 3 uses
  %.sroa.0150.0 = phi ptr [ %i.d, %.lr.ph.i ], [ %i.db, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IP5emptyEEEEvT_S9_RS9_T0_SB_SB_.exit.i ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.cp, %.lr.ph.i ], [ %storemerge.i146, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IP5emptyEEEEvT_S9_RS9_T0_SB_SB_.exit.i ]
  %.093117.i = phi i64 [ %.0207268, %.lr.ph.i ], [ %i.dz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IP5emptyEEEEvT_S9_RS9_T0_SB_SB_.exit.i ] ; 2 uses
  %.val114116.i = phi i64 [ %.0207268, %.lr.ph.i ], [ %i.dy, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IP5emptyEEEEvT_S9_RS9_T0_SB_SB_.exit.i ] ; 3 uses
  %i.ct = add i64 %.val114116.i, 1                ; 7 uses
  %min.iters.check336 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check336, label %vec.epilog.scalar.ph353.preheader, label %vector.main.loop.iter.check337

vector.main.loop.iter.check337:                   ; preds = %iter.check352
  %min.iters.check338 = icmp ult i64 %i.ct, 32
  br i1 %min.iters.check338, label %vec.epilog.ph356, label %vector.ph339

vector.ph339:                                     ; preds = %vector.main.loop.iter.check337
  %i.cu = and i64 %i.ct, 24
  %n.vec340 = and i64 %i.ct, -32                  ; 4 uses
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next345, %vector.body341 ]
  %vec.ind343 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph339 ], [ %vec.ind.next346, %vector.body341 ] ; 2 uses
  %index.next345 = add nuw i64 %index342, 32      ; 2 uses
  %vec.ind.next346 = add <16 x i64> %vec.ind343, splat (i64 32)
  %i.cv = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.cv, label %middle.block347, label %vector.body341, !llvm.loop !1419

middle.block347:                                  ; preds = %vector.body341
  %step.add344 = add nuw <16 x i64> %vec.ind343, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi348 = extractelement <16 x i64> %step.add344, i64 14
  %cmp.n350 = icmp eq i64 %i.ct, %n.vec340
  br i1 %cmp.n350, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IP5emptyEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS9_ES9_NS_11move_detail8identityIS9_EEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SN_SP_SP_SP_T2_.exit.i, label %vec.epilog.iter.check354

vec.epilog.iter.check354:                         ; preds = %middle.block347
  %vector.recur.extract349 = extractelement <16 x i64> %step.add344, i64 15
  %min.epilog.iters.check355 = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check355, label %vec.epilog.scalar.ph353.preheader, label %vec.epilog.ph356, !prof !311

vec.epilog.ph356:                                 ; preds = %vector.main.loop.iter.check337, %vec.epilog.iter.check354
  %vec.epilog.resume.val351 = phi i64 [ %n.vec340, %vec.epilog.iter.check354 ], [ 0, %vector.main.loop.iter.check337 ] ; 2 uses
  %n.vec357 = and i64 %i.ct, -8                   ; 3 uses
  %broadcast.splatinsert358 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val351, i64 0
  %broadcast.splat359 = shufflevector <8 x i64> %broadcast.splatinsert358, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction360 = or disjoint <8 x i64> %broadcast.splat359, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body361

vec.epilog.vector.body361:                        ; preds = %vec.epilog.vector.body361, %vec.epilog.ph356
  %index362 = phi i64 [ %vec.epilog.resume.val351, %vec.epilog.ph356 ], [ %index.next364, %vec.epilog.vector.body361 ]
  %vec.ind363 = phi <8 x i64> [ %induction360, %vec.epilog.ph356 ], [ %vec.ind.next365, %vec.epilog.vector.body361 ] ; 3 uses
  %index.next364 = add nuw i64 %index362, 8       ; 2 uses
  %vec.ind.next365 = add <8 x i64> %vec.ind363, splat (i64 8)
  %i.cw = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.cw, label %vec.epilog.middle.block366, label %vec.epilog.vector.body361, !llvm.loop !1420

vec.epilog.middle.block366:                       ; preds = %vec.epilog.vector.body361
  %vector.recur.extract.for.phi367 = extractelement <8 x i64> %vec.ind363, i64 6
  %vector.recur.extract368 = extractelement <8 x i64> %vec.ind363, i64 7
  %cmp.n369 = icmp eq i64 %i.ct, %n.vec357
  br i1 %cmp.n369, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IP5emptyEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS9_ES9_NS_11move_detail8identityIS9_EEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SN_SP_SP_SP_T2_.exit.i, label %vec.epilog.scalar.ph353.preheader

vec.epilog.scalar.ph353.preheader:                ; preds = %iter.check352, %vec.epilog.iter.check354, %vec.epilog.middle.block366
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
  %i.ad = icmp ult i8 %i.ab, %i.ac                ; 12 uses
  %i.ae = zext i1 %i.ad to i8                     ; 9 uses
  %i.af = icmp eq ptr %.0108385, %.0300382        ; 2 uses
  %i.ag = trunc nuw i8 %.0105386 to i1            ; 3 uses
  %i.ah = xor i1 %i.ad, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.ai = phi i1 [ %i.z, %._crit_edge ], [ %i.af, %bb.e ]
  %i.aj = phi i1 [ true, %._crit_edge ], [ %i.ad, %bb.e ] ; 3 uses
  %.not7.i.i = icmp eq ptr %.0294383, %.0108385
  %i.ak = ptrtoaddr ptr %.0108385 to i64
  %i.al = ptrtoaddr ptr %.0294383 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = select i1 %i.ai, i1 true, i1 %.not7.i.i
  %.1301.idx = select i1 %i.an, i64 0, i64 %i.am
  %.1301 = getelementptr i8, ptr %.0300382, i64 %.1301.idx ; 3 uses
  %.not.i = icmp samesign eq i64 %i.t, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not21.i = icmp samesign eq i64 %.022.i.lcssa, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i8, ptr %i.x, align 1, !tbaa !314
  %i.ap = load i8, ptr %.0102387, align 1, !tbaa !314
  store i8 %i.ap, ptr %i.x, align 1, !tbaa !314
  store i8 %i.ao, ptr %.0102387, align 1, !tbaa !314
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = icmp eq ptr %i.x, %.0306381
  br i1 %i.aq, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq ptr %.0306381, %.0102387
  %spec.select = select i1 %i.ar, ptr %i.x, ptr %.0306381
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.e
  %i.as = ptrtoint ptr %.0108385 to i64           ; 4 uses
  %i.at = ptrtoint ptr %.0294383 to i64           ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.v

.thread441:                                       ; preds = %._crit_edge
  br i1 %i.z, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %.thread445

.thread445:                                       ; preds = %.thread441
  %i.au = ptrtoint ptr %.0108385 to i64
  %i.av = ptrtoint ptr %.0294383 to i64
  %i.aw = sub i64 %i.au, %i.av
  %.not.i.i129446 = icmp samesign eq i64 %i.t, 0  ; 2 uses
  %i.ax = icmp eq ptr %.0294383, %.0108385
  br i1 %i.ax, label %bb.y, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130

bb.l:                                             ; preds = %bb.k
  %.neg = sub i64 %i.at, %i.as
  %i.ay = getelementptr inbounds i8, ptr %.0290384, i64 %.neg ; 12 uses
  %.not.i.i = icmp samesign eq i64 %i.t, 0        ; 2 uses
  br i1 %i.ag, label %bb.m, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.m:                                             ; preds = %bb.l
  %.not.i30.i.i = icmp eq ptr %.0294383, %.0108385 ; 2 uses
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %or.cond.i.i.i = select i1 %.not.i30.i.i, i1 true, i1 %.not.i41.i.i132
  br i1 %or.cond.i.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n, %bb.o
  %.pn.i.i.i = phi ptr [ %.041.i.i.i, %bb.o ], [ %.0294383, %bb.n ]
  %.pn49.i.i.i = phi ptr [ %.037.i.i.i, %bb.o ], [ %i.ay, %bb.n ]
  %.pn50.i.i.i = phi ptr [ %.035.i.i.i, %bb.o ], [ %.0290384, %bb.n ]
  %.035.i.i.i = getelementptr inbounds nuw i8, ptr %.pn50.i.i.i, i64 1 ; 3 uses
  %.037.i.i.i = getelementptr inbounds nuw i8, ptr %.pn49.i.i.i, i64 1 ; 2 uses
  %.041.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 3 uses
  %.not48.i.i.i = icmp eq ptr %.041.i.i.i, %.0108385
  br i1 %.not48.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i
  %i.az = icmp eq ptr %.035.i.i.i, %i.w
  br i1 %i.az, label %bb.p, label %.preheader.i.i, !llvm.loop !24

bb.p:                                             ; preds = %bb.o
  %i.ba = ptrtoaddr ptr %.041.i.i.i to i64
  %i.bb = sub i64 %i.as, %i.ba
  %.0.lcssa.i.i.i.i.i = getelementptr i8, ptr %i.ay, i64 %i.bb
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

bb.q:                                             ; preds = %bb.m
  %or.cond.i31.i.i = or i1 %.not.i30.i.i, %.not.i41.i.i132
  br i1 %or.cond.i31.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.q, %bb.r
  %.pn.i32.i.i = phi ptr [ %.034.i.i.i, %bb.r ], [ %.0294383, %bb.q ]
  %.pn41.i.i.i = phi ptr [ %.030.i.i.i, %bb.r ], [ %i.ay, %bb.q ]
  %.pn42.i.i.i = phi ptr [ %.0.i33.i.i, %bb.r ], [ %.0290384, %bb.q ]
  %.0.i33.i.i = getelementptr inbounds nuw i8, ptr %.pn42.i.i.i, i64 1 ; 3 uses
  %.030.i.i.i = getelementptr inbounds nuw i8, ptr %.pn41.i.i.i, i64 1 ; 2 uses
  %.034.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i32.i.i, i64 1 ; 3 uses
  %i.bc = icmp eq ptr %.034.i.i.i, %.0108385
  br i1 %i.bc, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.i
  %i.bd = icmp eq ptr %.0.i33.i.i, %i.w
  br i1 %i.bd, label %bb.s, label %.preheader.i.i.i, !llvm.loop !25

bb.s:                                             ; preds = %bb.r
  %i.be = ptrtoaddr ptr %.034.i.i.i to i64
  %i.bf = sub i64 %i.as, %i.be
  %.0.lcssa.i.i.i34.i.i = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i: ; preds = %.preheader.i.i, %.preheader.i.i.i, %bb.s, %bb.p
  %.060.i.i = phi ptr [ %i.w, %bb.p ], [ %.0.i33.i.i, %.preheader.i.i.i ], [ %i.w, %bb.s ], [ %.035.i.i.i, %.preheader.i.i ] ; 5 uses
  %.0.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i, %bb.p ], [ %.030.i.i.i, %.preheader.i.i.i ], [ %.0.lcssa.i.i.i34.i.i, %bb.s ], [ %.037.i.i.i, %.preheader.i.i ] ; 4 uses
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i
  %.not.i38.i.i = icmp eq ptr %.060.i.i, %i.w
  %.not36.i.i.i = icmp eq ptr %.0.i.i, %i.ay
  %or.cond.i39.i.i = select i1 %.not.i38.i.i, i1 true, i1 %.not36.i.i.i
  br i1 %or.cond.i39.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = ptrtoaddr ptr %.060.i.i to i64
  %i.bh = ptrtoaddr ptr %i.w to i64
  %i.bi = sub i64 %i.bh, %i.bg
  %scevgep.i.i.i = getelementptr i8, ptr %.060.i.i, i64 %i.bi
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, %bb.q
  %.075.i.i = phi ptr [ %.0.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %i.ay, %bb.q ] ; 2 uses
  %.06072.i.i = phi ptr [ %.060.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %.0290384, %bb.q ] ; 3 uses
  %.not.i42.i.i = icmp eq ptr %.06072.i.i, %i.w
  %.not36.i43.i.i = icmp eq ptr %.075.i.i, %i.ay
  %or.cond.i44.i.i = select i1 %.not.i42.i.i, i1 true, i1 %.not36.i43.i.i
  %i.bj = ptrtoaddr ptr %.06072.i.i to i64
  %i.bk = ptrtoaddr ptr %i.w to i64
  %i.bl = sub i64 %i.bk, %i.bj
  %.226.idx.i.i.i = select i1 %or.cond.i44.i.i, i64 0, i64 %i.bl
  %.2.i45.i.i = getelementptr i8, ptr %.06072.i.i, i64 %.226.idx.i.i.i
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.v:                                             ; preds = %bb.k
  %.not.i.i129 = icmp samesign eq i64 %i.t, 0     ; 3 uses
  %i.bm = icmp eq ptr %.0294383, %.0108385        ; 4 uses
  br i1 %i.ag, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.0294383..0108385 = select i1 %i.bm, ptr %.0294383, ptr %.0108385 ; 2 uses
  %.0290384. = select i1 %i.bm, ptr %.0290384, ptr %i.w
  br i1 %.not.i.i129, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159: ; preds = %bb.w
  %or.cond.i44.i.i165 = select i1 %.not.i41.i.i132, i1 true, i1 %i.bm
  %.226.idx.i.i.i166 = select i1 %or.cond.i44.i.i165, i64 0, i64 %2
  %.2.i45.i.i168 = getelementptr i8, ptr %.0290384, i64 %.226.idx.i.i.i166
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.x:                                             ; preds = %bb.v
  %i.bn = sub i64 %i.as, %i.at                    ; 2 uses
  br i1 %i.bm, label %bb.y, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130

bb.y:                                             ; preds = %.thread445, %bb.x
  %i.bo = phi i1 [ true, %.thread445 ], [ %i.ad, %bb.x ] ; 2 uses
  %i.bp = phi i8 [ 1, %.thread445 ], [ %i.ae, %bb.x ] ; 2 uses
  %i.bq = phi i64 [ 0, %.thread445 ], [ %i.bn, %bb.x ]
  %.not.i.i129447452 = phi i1 [ %.not.i.i129446, %.thread445 ], [ %.not.i.i129, %bb.x ]
  %i.br = getelementptr inbounds i8, ptr %.0294383, i64 %i.bq ; 4 uses
  br i1 %.not.i.i129447452, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130: ; preds = %.thread445, %bb.x
  %i.bs = phi i1 [ true, %.thread445 ], [ %i.ad, %bb.x ] ; 2 uses
  %i.bt = phi i8 [ 1, %.thread445 ], [ %i.ae, %bb.x ] ; 2 uses
  %i.bu = phi i64 [ %i.aw, %.thread445 ], [ %i.bn, %bb.x ]
  %.not.i.i129447451 = phi i1 [ %.not.i.i129446, %.thread445 ], [ %.not.i.i129, %bb.x ]
  br i1 %.not.i.i129447451, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130
  %spec.select471.idx = select i1 %.not.i41.i.i132, i64 0, i64 %i.bu
  %spec.select471 = getelementptr i8, ptr %.0294383, i64 %spec.select471.idx
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130, %bb.y
  %i.bv = phi i1 [ %i.bs, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.bo, %bb.y ]
  %i.bw = phi i8 [ %i.bt, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.bp, %bb.y ]
  %.081.i.i141 = phi ptr [ %.0108385, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.br, %bb.y ] ; 3 uses
  %.06678.i.i143 = phi ptr [ %.0294383, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.br, %bb.y ] ; 3 uses
  %.not36.i47.i.i145 = icmp eq ptr %.081.i.i141, %.06678.i.i143
  %or.cond.i48.i.i146 = select i1 %.not.i41.i.i132, i1 true, i1 %.not36.i47.i.i145
  %i.bx = ptrtoaddr ptr %.06678.i.i143 to i64
  %i.by = ptrtoaddr ptr %.081.i.i141 to i64
  %i.bz = sub i64 %i.by, %i.bx
  %.226.idx.i.i16.i147 = select i1 %or.cond.i48.i.i146, i64 0, i64 %i.bz
  %.223.i.i.i149 = getelementptr i8, ptr %.06678.i.i143, i64 %.226.idx.i.i16.i147
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131, %bb.w, %.thread441, %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, %bb.y, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, %bb.u, %bb.t, %bb.n
  %i.ca = phi i1 [ %i.bs, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ad, %bb.n ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ad, %bb.t ], [ %i.ad, %bb.u ], [ %i.bo, %bb.y ], [ true, %.thread441 ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %i.ad, %bb.l ], [ %i.ad, %bb.w ], [ %i.bv, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 2 uses
  %i.cb = phi i8 [ %i.bt, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ae, %bb.n ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ae, %bb.t ], [ %i.ae, %bb.u ], [ %i.bp, %bb.y ], [ 1, %.thread441 ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %i.ae, %bb.l ], [ %i.ae, %bb.w ], [ %i.bw, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ]
  %.1291 = phi ptr [ %.0290384, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %.0290384, %bb.n ], [ %.2.i45.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.060.i.i, %bb.t ], [ %scevgep.i.i.i, %bb.u ], [ %.0290384, %bb.y ], [ %.0290384, %.thread441 ], [ %.2.i45.i.i168, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0290384, %bb.l ], [ %.0290384., %bb.w ], [ %.0290384, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 4 uses
  %.0287 = phi ptr [ %spec.select471, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ay, %bb.n ], [ %i.ay, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %i.br, %bb.y ], [ %.0290384, %.thread441 ], [ %.0294383, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0290384, %bb.l ], [ %.0294383, %bb.w ], [ %.223.i.i.i149, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 2 uses
  %.0286 = phi ptr [ %.0108385, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ay, %bb.n ], [ %.075.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.0.i.i, %bb.t ], [ %.0.i.i, %bb.u ], [ %i.br, %bb.y ], [ %.0290384, %.thread441 ], [ %.0294383..0108385, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0290384, %bb.l ], [ %.0294383..0108385, %bb.w ], [ %.081.i.i141, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 3 uses
  %i.cc = ptrtoint ptr %i.w to i64
  %i.cd = ptrtoint ptr %.1291 to i64
  %.neg121 = sub i64 %i.cd, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.v, i64 %.neg121
  %.not.i192 = icmp eq ptr %.1291, %i.ce
  br i1 %.not.i192, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, label %bb.z

bb.z:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.not21.i193 = icmp samesign eq i64 %.022.i.lcssa, 0
  br i1 %.not21.i193, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = load i8, ptr %i.x, align 1, !tbaa !314
  %i.cg = load i8, ptr %.0102387, align 1, !tbaa !314
  store i8 %i.cg, ptr %i.x, align 1, !tbaa !314
  store i8 %i.cf, ptr %.0102387, align 1, !tbaa !314
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ch = icmp eq ptr %i.x, %.0306381
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = icmp eq ptr %.0306381, %.0102387
  %spec.select340 = select i1 %i.ci, ptr %i.x, ptr %.0306381
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196: ; preds = %bb.ac, %bb.ab, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.5311 = phi ptr [ %.0306381, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ], [ %spec.select340, %bb.ac ], [ %.0102387, %bb.ab ] ; 2 uses
  %.not122 = icmp eq ptr %.0287, %.0286
  br i1 %.not122, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196
  %i.cj = getelementptr inbounds i8, ptr %.1291, i64 %i.b
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.ad, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, %bb.f, %bb.i
  %i.ck = phi i1 [ %i.ca, %bb.ad ], [ %i.aj, %bb.i ], [ %i.aj, %bb.f ], [ %i.aj, %bb.j ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.1307 = phi ptr [ %.5311, %bb.ad ], [ %.0102387, %bb.i ], [ %.0306381, %bb.f ], [ %spec.select, %bb.j ], [ %.5311, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2302 = phi ptr [ %i.cj, %bb.ad ], [ %.1301, %bb.i ], [ %.1301, %bb.f ], [ %.1301, %bb.j ], [ %.0286, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2296 = phi ptr [ %.1291, %bb.ad ], [ %.0290384, %bb.i ], [ %.0290384, %bb.f ], [ %.0290384, %bb.j ], [ %.0287, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2110 = phi ptr [ %i.w, %bb.ad ], [ %i.w, %bb.i ], [ %i.w, %bb.f ], [ %i.w, %bb.j ], [ %.0286, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2107 = phi i8 [ %i.cb, %bb.ad ], [ %.0105386, %bb.i ], [ %.0105386, %bb.f ], [ %.0105386, %bb.j ], [ %.0105386, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %not. = xor i1 %i.ck, true
  %i.cl = sext i1 %not. to i64
  %.1 = add i64 %.0390, %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %.0102387, i64 1 ; 2 uses
  %i.cn = icmp ne i64 %.099389, 0
  %.neg124 = sext i1 %i.cn to i64
  %i.co = add i64 %.099389, %.neg124              ; 2 uses
  %i.cp = icmp ne i64 %i.s, 0
  %.neg125 = sext i1 %i.cp to i64
  %i.cq = add i64 %.sroa.speculated271, %.neg125  ; 2 uses
  %i.cr = add i64 %.0312380, -1                   ; 2 uses
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %.thread, label %iter.check, !llvm.loop !1486

.thread:                                          ; preds = %bb.b, %.sink.split.i, %bb.a
  %.0 = phi i64 [ %.sroa.speculated, %bb.a ], [ %i.cq, %.sink.split.i ], [ %.sroa.speculated271, %bb.b ]
  %.0312.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.sink.split.i ], [ %.0312380, %bb.b ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %i.cm, %.sink.split.i ], [ %.0102387, %bb.b ]
  %.099.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.co, %.sink.split.i ], [ %.099389, %bb.b ]
  %.not.lcssa = phi i1 [ true, %bb.a ], [ true, %.sink.split.i ], [ false, %bb.b ]
  br i1 %.not.lcssa, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.thread
  %.3 = phi i64 [ %.0, %.thread ], [ %.sroa.speculated271, %bb.c ]
  %.0312376 = phi i64 [ %.0312.lcssa, %.thread ], [ %.0312380, %bb.c ]
  %.0102361 = phi ptr [ %.0102.lcssa, %.thread ], [ %.0102387, %bb.c ]
  %.099357 = phi i64 [ %.099.lcssa, %.thread ], [ %.099389, %bb.c ]
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %iter.check518

iter.check518:                                    ; preds = %.lr.ph.i, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i
  %.0102.i = phi ptr [ %i.dg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.0102361, %.lr.ph.i ] ; 4 uses
  %.039100.i = phi i64 [ %i.di, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.099357, %.lr.ph.i ] ; 9 uses
  %.07399.i = phi i64 [ %i.dl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.0312376, %.lr.ph.i ] ; 2 uses
  %.val9496.i = phi i64 [ %i.dk, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.3, %.lr.ph.i ] ; 2 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.val9496.i, i64 %.039100.i) ; 2 uses
  %i.cs = add i64 %umax.i.i, 1
  %i.ct = sub i64 %i.cs, %.039100.i               ; 7 uses
  %min.iters.check498 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check498, label %vec.epilog.scalar.ph519.preheader, label %vector.main.loop.iter.check499

vector.main.loop.iter.check499:                   ; preds = %iter.check518
  %min.iters.check500 = icmp ult i64 %i.ct, 32
  br i1 %min.iters.check500, label %vec.epilog.ph522, label %vector.ph501

vector.ph501:                                     ; preds = %vector.main.loop.iter.check499
  %i.cu = and i64 %i.ct, 24
  %n.vec502 = and i64 %i.ct, -32                  ; 4 uses
  %i.cv = add i64 %.039100.i, %n.vec502           ; 2 uses
  %broadcast.splatinsert503 = insertelement <16 x i64> poison, i64 %.039100.i, i64 0
  %broadcast.splat504 = shufflevector <16 x i64> %broadcast.splatinsert503, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction505 = add <16 x i64> %broadcast.splat504, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body506

vector.body506:                                   ; preds = %vector.body506, %vector.ph501
  %index507 = phi i64 [ 0, %vector.ph501 ], [ %index.next510, %vector.body506 ]
  %vec.ind508 = phi <16 x i64> [ %induction505, %vector.ph501 ], [ %vec.ind.next511, %vector.body506 ] ; 2 uses
  %index.next510 = add nuw i64 %index507, 32      ; 2 uses
  %vec.ind.next511 = add <16 x i64> %vec.ind508, splat (i64 32)
  %i.cw = icmp eq i64 %index.next510, %n.vec502
  br i1 %i.cw, label %middle.block512, label %vector.body506, !llvm.loop !1487

middle.block512:                                  ; preds = %vector.body506
  %step.add509 = add <16 x i64> %vec.ind508, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi513 = extractelement <16 x i64> %step.add509, i64 14
  %cmp.n515 = icmp eq i64 %i.ct, %n.vec502
  br i1 %cmp.n515, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.iter.check520

vec.epilog.iter.check520:                         ; preds = %middle.block512
  %vector.recur.extract514 = extractelement <16 x i64> %step.add509, i64 15
  %min.epilog.iters.check521 = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check521, label %vec.epilog.scalar.ph519.preheader, label %vec.epilog.ph522, !prof !311

vec.epilog.ph522:                                 ; preds = %vector.main.loop.iter.check499, %vec.epilog.iter.check520
  %vec.epilog.resume.val516 = phi i64 [ %n.vec502, %vec.epilog.iter.check520 ], [ 0, %vector.main.loop.iter.check499 ]
  %bc.resume.val517 = phi i64 [ %i.cv, %vec.epilog.iter.check520 ], [ %.039100.i, %vector.main.loop.iter.check499 ]
  %n.vec523 = and i64 %i.ct, -8                   ; 3 uses
  %i.cx = add i64 %.039100.i, %n.vec523
  %broadcast.splatinsert524 = insertelement <8 x i64> poison, i64 %bc.resume.val517, i64 0
  %broadcast.splat525 = shufflevector <8 x i64> %broadcast.splatinsert524, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction526 = add <8 x i64> %broadcast.splat525, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body527

vec.epilog.vector.body527:                        ; preds = %vec.epilog.vector.body527, %vec.epilog.ph522
  %index528 = phi i64 [ %vec.epilog.resume.val516, %vec.epilog.ph522 ], [ %index.next530, %vec.epilog.vector.body527 ]
  %vec.ind529 = phi <8 x i64> [ %induction526, %vec.epilog.ph522 ], [ %vec.ind.next531, %vec.epilog.vector.body527 ] ; 3 uses
  %index.next530 = add nuw i64 %index528, 8       ; 2 uses
  %vec.ind.next531 = add <8 x i64> %vec.ind529, splat (i64 8)
  %i.cy = icmp eq i64 %index.next530, %n.vec523
  br i1 %i.cy, label %vec.epilog.middle.block532, label %vec.epilog.vector.body527, !llvm.loop !1488

vec.epilog.middle.block532:                       ; preds = %vec.epilog.vector.body527
  %vector.recur.extract.for.phi533 = extractelement <8 x i64> %vec.ind529, i64 6
  %vector.recur.extract534 = extractelement <8 x i64> %vec.ind529, i64 7
  %cmp.n535 = icmp eq i64 %i.ct, %n.vec523
  br i1 %cmp.n535, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.scalar.ph519.preheader

vec.epilog.scalar.ph519.preheader:                ; preds = %iter.check518, %vec.epilog.iter.check520, %vec.epilog.middle.block532
  %.022.i.i.ph = phi i64 [ 0, %iter.check518 ], [ %vector.recur.extract514, %vec.epilog.iter.check520 ], [ %vector.recur.extract534, %vec.epilog.middle.block532 ]
  %.0.i.i207.ph = phi i64 [ %.039100.i, %iter.check518 ], [ %i.cv, %vec.epilog.iter.check520 ], [ %i.cx, %vec.epilog.middle.block532 ]
  br label %vec.epilog.scalar.ph519

vec.epilog.scalar.ph519:                          ; preds = %vec.epilog.scalar.ph519.preheader, %vec.epilog.scalar.ph519
  %.022.i.i = phi i64 [ %.0.i.i207, %vec.epilog.scalar.ph519 ], [ %.022.i.i.ph, %vec.epilog.scalar.ph519.preheader ]
  %.0.i.i207 = phi i64 [ %i.cz, %vec.epilog.scalar.ph519 ], [ %.0.i.i207.ph, %vec.epilog.scalar.ph519.preheader ] ; 3 uses
  %i.cz = add i64 %.0.i.i207, 1
  %exitcond.not.i.i = icmp eq i64 %.0.i.i207, %umax.i.i
  br i1 %exitcond.not.i.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.scalar.ph519, !llvm.loop !1489

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i: ; preds = %vec.epilog.scalar.ph519, %vec.epilog.middle.block532, %middle.block512
  %.022.i.i.lcssa = phi i64 [ %vector.recur.extract.for.phi533, %vec.epilog.middle.block532 ], [ %vector.recur.extract.for.phi513, %middle.block512 ], [ %.022.i.i, %vec.epilog.scalar.ph519 ] ; 4 uses
  %i.da = add i64 %.022.i.i.lcssa, 2
  %i.db = tail call i64 @llvm.umax.i64(i64 %.val9496.i, i64 %i.da) ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %.07399.i)
  %.not43.i = icmp eq i64 %.022.i.i.lcssa, 0
  %i.dc = mul i64 %.022.i.i.lcssa, %2
  %.not.i.i208 = icmp samesign eq i64 %2, %i.dc
  %or.cond = select i1 %.not43.i, i1 true, i1 %.not.i.i208
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.0102.i, i64 %.022.i.i.lcssa ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !314
  %i.df = load i8, ptr %.0102.i, align 1, !tbaa !314
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !314
  store i8 %i.de, ptr %.0102.i, align 1, !tbaa !314
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i: ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %.0102.i, i64 1
  %i.dh = icmp ne i64 %.039100.i, 0
  %.neg.i = sext i1 %i.dh to i64
  %i.di = add i64 %.039100.i, %.neg.i
  %i.dj = icmp ne i64 %i.db, 0
  %.neg44.i = sext i1 %i.dj to i64
  %i.dk = add i64 %.sroa.speculated.i, %.neg44.i
  %i.dl = add i64 %.07399.i, -1                   ; 2 uses
  %.not.i209 = icmp eq i64 %i.dl, 0
  br i1 %.not.i209, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %iter.check518, !llvm.loop !1490

_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i, %.lr.ph.i, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = add i64 %5, %4                           ; 4 uses
  %i.b = sub i64 0, %2                            ; 2 uses
  %i.c = icmp eq i64 %5, 0
  %i.d = select i1 %i.c, i64 0, i64 %4            ; 3 uses
  %i.e = add i64 %i.d, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.a) ; 2 uses
  %.not379 = icmp eq i64 %i.a, 0
  br i1 %.not379, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
  %i.ad = icmp ult i8 %i.ab, %i.ac                ; 12 uses
  %i.ae = zext i1 %i.ad to i8                     ; 9 uses
  %i.af = icmp eq ptr %.0108386, %.0301383        ; 2 uses
  %i.ag = trunc nuw i8 %.0105387 to i1            ; 3 uses
  %i.ah = xor i1 %i.ad, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.ai = phi i1 [ %i.z, %._crit_edge ], [ %i.af, %bb.e ]
  %i.aj = phi i1 [ true, %._crit_edge ], [ %i.ad, %bb.e ] ; 3 uses
  %.not8.i.i = icmp eq ptr %.0295384, %.0108386
  %i.ak = ptrtoaddr ptr %.0108386 to i64
  %i.al = ptrtoaddr ptr %.0295384 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = select i1 %i.ai, i1 true, i1 %.not8.i.i
  %.1302.idx = select i1 %i.an, i64 0, i64 %i.am
  %.1302 = getelementptr i8, ptr %.0301383, i64 %.1302.idx ; 3 uses
  %.not.i = icmp samesign eq i64 %i.t, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not21.i = icmp samesign eq i64 %.022.i.lcssa, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i8, ptr %i.x, align 1, !tbaa !314
  %i.ap = load i8, ptr %.0102388, align 1, !tbaa !314
  store i8 %i.ap, ptr %i.x, align 1, !tbaa !314
  store i8 %i.ao, ptr %.0102388, align 1, !tbaa !314
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = icmp eq ptr %i.x, %.0307382
  br i1 %i.aq, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq ptr %.0307382, %.0102388
  %spec.select = select i1 %i.ar, ptr %i.x, ptr %.0307382
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.e
  %i.as = ptrtoint ptr %.0108386 to i64           ; 4 uses
  %i.at = ptrtoint ptr %.0295384 to i64           ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.v

.thread442:                                       ; preds = %._crit_edge
  br i1 %i.z, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %.thread446

.thread446:                                       ; preds = %.thread442
  %i.au = ptrtoint ptr %.0108386 to i64
  %i.av = ptrtoint ptr %.0295384 to i64
  %i.aw = sub i64 %i.au, %i.av
  %.not.i.i129447 = icmp samesign eq i64 %i.t, 0  ; 2 uses
  %i.ax = icmp eq ptr %.0295384, %.0108386
  br i1 %i.ax, label %bb.y, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130

bb.l:                                             ; preds = %bb.k
  %.neg = sub i64 %i.at, %i.as
  %i.ay = getelementptr inbounds i8, ptr %.0291385, i64 %.neg ; 12 uses
  %.not.i.i = icmp samesign eq i64 %i.t, 0        ; 2 uses
  br i1 %i.ag, label %bb.m, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.m:                                             ; preds = %bb.l
  %.not.i30.i.i = icmp eq ptr %.0295384, %.0108386 ; 2 uses
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %or.cond.i.i.i = select i1 %.not.i30.i.i, i1 true, i1 %.not.i41.i.i132
  br i1 %or.cond.i.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n, %bb.o
  %.pn.i.i.i = phi ptr [ %.041.i.i.i, %bb.o ], [ %.0295384, %bb.n ]
  %.pn49.i.i.i = phi ptr [ %.037.i.i.i, %bb.o ], [ %i.ay, %bb.n ]
  %.pn50.i.i.i = phi ptr [ %.035.i.i.i, %bb.o ], [ %.0291385, %bb.n ]
  %.035.i.i.i = getelementptr inbounds nuw i8, ptr %.pn50.i.i.i, i64 1 ; 3 uses
  %.037.i.i.i = getelementptr inbounds nuw i8, ptr %.pn49.i.i.i, i64 1 ; 2 uses
  %.041.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 3 uses
  %.not48.i.i.i = icmp eq ptr %.041.i.i.i, %.0108386
  br i1 %.not48.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i
  %i.az = icmp eq ptr %.035.i.i.i, %i.w
  br i1 %i.az, label %bb.p, label %.preheader.i.i, !llvm.loop !29

bb.p:                                             ; preds = %bb.o
  %i.ba = ptrtoaddr ptr %.041.i.i.i to i64
  %i.bb = sub i64 %i.as, %i.ba
  %.0.lcssa.i.i.i.i.i = getelementptr i8, ptr %i.ay, i64 %i.bb
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

bb.q:                                             ; preds = %bb.m
  %or.cond.i31.i.i = or i1 %.not.i30.i.i, %.not.i41.i.i132
  br i1 %or.cond.i31.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.q, %bb.r
  %.pn.i32.i.i = phi ptr [ %.034.i.i.i, %bb.r ], [ %.0295384, %bb.q ]
  %.pn41.i.i.i = phi ptr [ %.030.i.i.i, %bb.r ], [ %i.ay, %bb.q ]
  %.pn42.i.i.i = phi ptr [ %.0.i33.i.i, %bb.r ], [ %.0291385, %bb.q ]
  %.0.i33.i.i = getelementptr inbounds nuw i8, ptr %.pn42.i.i.i, i64 1 ; 3 uses
  %.030.i.i.i = getelementptr inbounds nuw i8, ptr %.pn41.i.i.i, i64 1 ; 2 uses
  %.034.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i32.i.i, i64 1 ; 3 uses
  %i.bc = icmp eq ptr %.034.i.i.i, %.0108386
  br i1 %i.bc, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.i
  %i.bd = icmp eq ptr %.0.i33.i.i, %i.w
  br i1 %i.bd, label %bb.s, label %.preheader.i.i.i, !llvm.loop !30

bb.s:                                             ; preds = %bb.r
  %i.be = ptrtoaddr ptr %.034.i.i.i to i64
  %i.bf = sub i64 %i.as, %i.be
  %.0.lcssa.i.i.i34.i.i = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i: ; preds = %.preheader.i.i, %.preheader.i.i.i, %bb.s, %bb.p
  %.060.i.i = phi ptr [ %i.w, %bb.p ], [ %.0.i33.i.i, %.preheader.i.i.i ], [ %i.w, %bb.s ], [ %.035.i.i.i, %.preheader.i.i ] ; 5 uses
  %.0.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i, %bb.p ], [ %.030.i.i.i, %.preheader.i.i.i ], [ %.0.lcssa.i.i.i34.i.i, %bb.s ], [ %.037.i.i.i, %.preheader.i.i ] ; 4 uses
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i
  %.not.i38.i.i = icmp eq ptr %.060.i.i, %i.w
  %.not36.i.i.i = icmp eq ptr %.0.i.i, %i.ay
  %or.cond.i39.i.i = select i1 %.not.i38.i.i, i1 true, i1 %.not36.i.i.i
  br i1 %or.cond.i39.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = ptrtoaddr ptr %.060.i.i to i64
  %i.bh = ptrtoaddr ptr %i.w to i64
  %i.bi = sub i64 %i.bh, %i.bg
  %scevgep.i.i.i = getelementptr i8, ptr %.060.i.i, i64 %i.bi
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, %bb.q
  %.075.i.i = phi ptr [ %.0.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %i.ay, %bb.q ] ; 2 uses
  %.06072.i.i = phi ptr [ %.060.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %.0291385, %bb.q ] ; 3 uses
  %.not.i42.i.i = icmp eq ptr %.06072.i.i, %i.w
  %.not36.i43.i.i = icmp eq ptr %.075.i.i, %i.ay
  %or.cond.i44.i.i = select i1 %.not.i42.i.i, i1 true, i1 %.not36.i43.i.i
  %i.bj = ptrtoaddr ptr %.06072.i.i to i64
  %i.bk = ptrtoaddr ptr %i.w to i64
  %i.bl = sub i64 %i.bk, %i.bj
  %.226.idx.i.i.i = select i1 %or.cond.i44.i.i, i64 0, i64 %i.bl
  %.2.i45.i.i = getelementptr i8, ptr %.06072.i.i, i64 %.226.idx.i.i.i
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.v:                                             ; preds = %bb.k
  %.not.i.i129 = icmp samesign eq i64 %i.t, 0     ; 3 uses
  %i.bm = icmp eq ptr %.0295384, %.0108386        ; 4 uses
  br i1 %i.ag, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.0295384..0108386 = select i1 %i.bm, ptr %.0295384, ptr %.0108386 ; 2 uses
  %.0291385. = select i1 %i.bm, ptr %.0291385, ptr %i.w
  br i1 %.not.i.i129, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159: ; preds = %bb.w
  %or.cond.i44.i.i165 = select i1 %.not.i41.i.i132, i1 true, i1 %i.bm
  %.226.idx.i.i.i166 = select i1 %or.cond.i44.i.i165, i64 0, i64 %2
  %.2.i45.i.i168 = getelementptr i8, ptr %.0291385, i64 %.226.idx.i.i.i166
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.x:                                             ; preds = %bb.v
  %i.bn = sub i64 %i.as, %i.at                    ; 2 uses
  br i1 %i.bm, label %bb.y, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130

bb.y:                                             ; preds = %.thread446, %bb.x
  %i.bo = phi i1 [ true, %.thread446 ], [ %i.ad, %bb.x ] ; 2 uses
  %i.bp = phi i8 [ 1, %.thread446 ], [ %i.ae, %bb.x ] ; 2 uses
  %i.bq = phi i64 [ 0, %.thread446 ], [ %i.bn, %bb.x ]
  %.not.i.i129448453 = phi i1 [ %.not.i.i129447, %.thread446 ], [ %.not.i.i129, %bb.x ]
  %i.br = getelementptr inbounds i8, ptr %.0295384, i64 %i.bq ; 4 uses
  br i1 %.not.i.i129448453, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130: ; preds = %.thread446, %bb.x
  %i.bs = phi i1 [ true, %.thread446 ], [ %i.ad, %bb.x ] ; 2 uses
  %i.bt = phi i8 [ 1, %.thread446 ], [ %i.ae, %bb.x ] ; 2 uses
  %i.bu = phi i64 [ %i.aw, %.thread446 ], [ %i.bn, %bb.x ]
  %.not.i.i129448452 = phi i1 [ %.not.i.i129447, %.thread446 ], [ %.not.i.i129, %bb.x ]
  br i1 %.not.i.i129448452, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130
  %spec.select472.idx = select i1 %.not.i41.i.i132, i64 0, i64 %i.bu
  %spec.select472 = getelementptr i8, ptr %.0295384, i64 %spec.select472.idx
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130, %bb.y
  %i.bv = phi i1 [ %i.bs, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.bo, %bb.y ]
  %i.bw = phi i8 [ %i.bt, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.bp, %bb.y ]
  %.081.i.i141 = phi ptr [ %.0108386, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.br, %bb.y ] ; 3 uses
  %.06678.i.i143 = phi ptr [ %.0295384, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.br, %bb.y ] ; 3 uses
  %.not36.i47.i.i145 = icmp eq ptr %.081.i.i141, %.06678.i.i143
  %or.cond.i48.i.i146 = select i1 %.not.i41.i.i132, i1 true, i1 %.not36.i47.i.i145
  %i.bx = ptrtoaddr ptr %.06678.i.i143 to i64
  %i.by = ptrtoaddr ptr %.081.i.i141 to i64
  %i.bz = sub i64 %i.by, %i.bx
  %.226.idx.i.i16.i147 = select i1 %or.cond.i48.i.i146, i64 0, i64 %i.bz
  %.223.i.i.i149 = getelementptr i8, ptr %.06678.i.i143, i64 %.226.idx.i.i16.i147
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131, %bb.w, %.thread442, %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, %bb.y, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, %bb.u, %bb.t, %bb.n
  %i.ca = phi i1 [ %i.bs, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ad, %bb.n ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ad, %bb.t ], [ %i.ad, %bb.u ], [ %i.bo, %bb.y ], [ true, %.thread442 ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %i.ad, %bb.l ], [ %i.ad, %bb.w ], [ %i.bv, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 2 uses
  %i.cb = phi i8 [ %i.bt, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ae, %bb.n ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ae, %bb.t ], [ %i.ae, %bb.u ], [ %i.bp, %bb.y ], [ 1, %.thread442 ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %i.ae, %bb.l ], [ %i.ae, %bb.w ], [ %i.bw, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ]
  %.1292 = phi ptr [ %.0291385, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %.0291385, %bb.n ], [ %.2.i45.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.060.i.i, %bb.t ], [ %scevgep.i.i.i, %bb.u ], [ %.0291385, %bb.y ], [ %.0291385, %.thread442 ], [ %.2.i45.i.i168, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0291385, %bb.l ], [ %.0291385., %bb.w ], [ %.0291385, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 4 uses
  %.0288 = phi ptr [ %spec.select472, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ay, %bb.n ], [ %i.ay, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %i.br, %bb.y ], [ %.0291385, %.thread442 ], [ %.0295384, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0291385, %bb.l ], [ %.0295384, %bb.w ], [ %.223.i.i.i149, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 2 uses
  %.0287 = phi ptr [ %.0108386, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ay, %bb.n ], [ %.075.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.0.i.i, %bb.t ], [ %.0.i.i, %bb.u ], [ %i.br, %bb.y ], [ %.0291385, %.thread442 ], [ %.0295384..0108386, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0291385, %bb.l ], [ %.0295384..0108386, %bb.w ], [ %.081.i.i141, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 3 uses
  %i.cc = ptrtoint ptr %i.w to i64
  %i.cd = ptrtoint ptr %.1292 to i64
  %.neg121 = sub i64 %i.cd, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.v, i64 %.neg121
  %.not.i192 = icmp eq ptr %.1292, %i.ce
  br i1 %.not.i192, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, label %bb.z

bb.z:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.not21.i193 = icmp samesign eq i64 %.022.i.lcssa, 0
  br i1 %.not21.i193, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = load i8, ptr %i.x, align 1, !tbaa !314
  %i.cg = load i8, ptr %.0102388, align 1, !tbaa !314
  store i8 %i.cg, ptr %i.x, align 1, !tbaa !314
  store i8 %i.cf, ptr %.0102388, align 1, !tbaa !314
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ch = icmp eq ptr %i.x, %.0307382
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = icmp eq ptr %.0307382, %.0102388
  %spec.select341 = select i1 %i.ci, ptr %i.x, ptr %.0307382
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196: ; preds = %bb.ac, %bb.ab, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.5312 = phi ptr [ %.0307382, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ], [ %spec.select341, %bb.ac ], [ %.0102388, %bb.ab ] ; 2 uses
  %.not122 = icmp eq ptr %.0288, %.0287
  br i1 %.not122, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196
  %i.cj = getelementptr inbounds i8, ptr %.1292, i64 %i.b
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.ad, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, %bb.f, %bb.i
  %i.ck = phi i1 [ %i.ca, %bb.ad ], [ %i.aj, %bb.i ], [ %i.aj, %bb.f ], [ %i.aj, %bb.j ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.1308 = phi ptr [ %.5312, %bb.ad ], [ %.0102388, %bb.i ], [ %.0307382, %bb.f ], [ %spec.select, %bb.j ], [ %.5312, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2303 = phi ptr [ %i.cj, %bb.ad ], [ %.1302, %bb.i ], [ %.1302, %bb.f ], [ %.1302, %bb.j ], [ %.0287, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2297 = phi ptr [ %.1292, %bb.ad ], [ %.0291385, %bb.i ], [ %.0291385, %bb.f ], [ %.0291385, %bb.j ], [ %.0288, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2110 = phi ptr [ %i.w, %bb.ad ], [ %i.w, %bb.i ], [ %i.w, %bb.f ], [ %i.w, %bb.j ], [ %.0287, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2107 = phi i8 [ %i.cb, %bb.ad ], [ %.0105387, %bb.i ], [ %.0105387, %bb.f ], [ %.0105387, %bb.j ], [ %.0105387, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %not. = xor i1 %i.ck, true
  %i.cl = sext i1 %not. to i64
  %.1 = add i64 %.0391, %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %.0102388, i64 1 ; 2 uses
  %i.cn = icmp ne i64 %.099390, 0
  %.neg124 = sext i1 %i.cn to i64
  %i.co = add i64 %.099390, %.neg124              ; 2 uses
  %i.cp = icmp ne i64 %i.s, 0
  %.neg125 = sext i1 %i.cp to i64
  %i.cq = add i64 %.sroa.speculated272, %.neg125  ; 2 uses
  %i.cr = add i64 %.0313381, -1                   ; 2 uses
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %.thread, label %iter.check, !llvm.loop !1494

.thread:                                          ; preds = %bb.b, %.sink.split.i, %bb.a
  %.0 = phi i64 [ %.sroa.speculated, %bb.a ], [ %i.cq, %.sink.split.i ], [ %.sroa.speculated272, %bb.b ]
  %.0313.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.sink.split.i ], [ %.0313381, %bb.b ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %i.cm, %.sink.split.i ], [ %.0102388, %bb.b ]
  %.099.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.co, %.sink.split.i ], [ %.099390, %bb.b ]
  %.not.lcssa = phi i1 [ true, %bb.a ], [ true, %.sink.split.i ], [ false, %bb.b ]
  br i1 %.not.lcssa, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.thread
  %.3 = phi i64 [ %.0, %.thread ], [ %.sroa.speculated272, %bb.c ]
  %.0313377 = phi i64 [ %.0313.lcssa, %.thread ], [ %.0313381, %bb.c ]
  %.0102362 = phi ptr [ %.0102.lcssa, %.thread ], [ %.0102388, %bb.c ]
  %.099358 = phi i64 [ %.099.lcssa, %.thread ], [ %.099390, %bb.c ]
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %iter.check519

iter.check519:                                    ; preds = %.lr.ph.i, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i
  %.0102.i = phi ptr [ %i.dg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.0102362, %.lr.ph.i ] ; 4 uses
  %.039100.i = phi i64 [ %i.di, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.099358, %.lr.ph.i ] ; 9 uses
  %.07399.i = phi i64 [ %i.dl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.0313377, %.lr.ph.i ] ; 2 uses
  %.val9496.i = phi i64 [ %i.dk, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.3, %.lr.ph.i ] ; 2 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.val9496.i, i64 %.039100.i) ; 2 uses
  %i.cs = add i64 %umax.i.i, 1
  %i.ct = sub i64 %i.cs, %.039100.i               ; 7 uses
  %min.iters.check499 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check499, label %vec.epilog.scalar.ph520.preheader, label %vector.main.loop.iter.check500

vector.main.loop.iter.check500:                   ; preds = %iter.check519
  %min.iters.check501 = icmp ult i64 %i.ct, 32
  br i1 %min.iters.check501, label %vec.epilog.ph523, label %vector.ph502

vector.ph502:                                     ; preds = %vector.main.loop.iter.check500
  %i.cu = and i64 %i.ct, 24
  %n.vec503 = and i64 %i.ct, -32                  ; 4 uses
  %i.cv = add i64 %.039100.i, %n.vec503           ; 2 uses
  %broadcast.splatinsert504 = insertelement <16 x i64> poison, i64 %.039100.i, i64 0
  %broadcast.splat505 = shufflevector <16 x i64> %broadcast.splatinsert504, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction506 = add <16 x i64> %broadcast.splat505, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph502
  %index508 = phi i64 [ 0, %vector.ph502 ], [ %index.next511, %vector.body507 ]
  %vec.ind509 = phi <16 x i64> [ %induction506, %vector.ph502 ], [ %vec.ind.next512, %vector.body507 ] ; 2 uses
  %index.next511 = add nuw i64 %index508, 32      ; 2 uses
  %vec.ind.next512 = add <16 x i64> %vec.ind509, splat (i64 32)
  %i.cw = icmp eq i64 %index.next511, %n.vec503
  br i1 %i.cw, label %middle.block513, label %vector.body507, !llvm.loop !1495

middle.block513:                                  ; preds = %vector.body507
  %step.add510 = add <16 x i64> %vec.ind509, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi514 = extractelement <16 x i64> %step.add510, i64 14
  %cmp.n516 = icmp eq i64 %i.ct, %n.vec503
  br i1 %cmp.n516, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.iter.check521

vec.epilog.iter.check521:                         ; preds = %middle.block513
  %vector.recur.extract515 = extractelement <16 x i64> %step.add510, i64 15
  %min.epilog.iters.check522 = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check522, label %vec.epilog.scalar.ph520.preheader, label %vec.epilog.ph523, !prof !311

vec.epilog.ph523:                                 ; preds = %vector.main.loop.iter.check500, %vec.epilog.iter.check521
  %vec.epilog.resume.val517 = phi i64 [ %n.vec503, %vec.epilog.iter.check521 ], [ 0, %vector.main.loop.iter.check500 ]
  %bc.resume.val518 = phi i64 [ %i.cv, %vec.epilog.iter.check521 ], [ %.039100.i, %vector.main.loop.iter.check500 ]
  %n.vec524 = and i64 %i.ct, -8                   ; 3 uses
  %i.cx = add i64 %.039100.i, %n.vec524
  %broadcast.splatinsert525 = insertelement <8 x i64> poison, i64 %bc.resume.val518, i64 0
  %broadcast.splat526 = shufflevector <8 x i64> %broadcast.splatinsert525, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction527 = add <8 x i64> %broadcast.splat526, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body528

vec.epilog.vector.body528:                        ; preds = %vec.epilog.vector.body528, %vec.epilog.ph523
  %index529 = phi i64 [ %vec.epilog.resume.val517, %vec.epilog.ph523 ], [ %index.next531, %vec.epilog.vector.body528 ]
  %vec.ind530 = phi <8 x i64> [ %induction527, %vec.epilog.ph523 ], [ %vec.ind.next532, %vec.epilog.vector.body528 ] ; 3 uses
  %index.next531 = add nuw i64 %index529, 8       ; 2 uses
  %vec.ind.next532 = add <8 x i64> %vec.ind530, splat (i64 8)
  %i.cy = icmp eq i64 %index.next531, %n.vec524
  br i1 %i.cy, label %vec.epilog.middle.block533, label %vec.epilog.vector.body528, !llvm.loop !1496

vec.epilog.middle.block533:                       ; preds = %vec.epilog.vector.body528
  %vector.recur.extract.for.phi534 = extractelement <8 x i64> %vec.ind530, i64 6
  %vector.recur.extract535 = extractelement <8 x i64> %vec.ind530, i64 7
  %cmp.n536 = icmp eq i64 %i.ct, %n.vec524
  br i1 %cmp.n536, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.scalar.ph520.preheader

vec.epilog.scalar.ph520.preheader:                ; preds = %iter.check519, %vec.epilog.iter.check521, %vec.epilog.middle.block533
  %.022.i.i.ph = phi i64 [ 0, %iter.check519 ], [ %vector.recur.extract515, %vec.epilog.iter.check521 ], [ %vector.recur.extract535, %vec.epilog.middle.block533 ]
  %.0.i.i207.ph = phi i64 [ %.039100.i, %iter.check519 ], [ %i.cv, %vec.epilog.iter.check521 ], [ %i.cx, %vec.epilog.middle.block533 ]
  br label %vec.epilog.scalar.ph520

vec.epilog.scalar.ph520:                          ; preds = %vec.epilog.scalar.ph520.preheader, %vec.epilog.scalar.ph520
  %.022.i.i = phi i64 [ %.0.i.i207, %vec.epilog.scalar.ph520 ], [ %.022.i.i.ph, %vec.epilog.scalar.ph520.preheader ]
  %.0.i.i207 = phi i64 [ %i.cz, %vec.epilog.scalar.ph520 ], [ %.0.i.i207.ph, %vec.epilog.scalar.ph520.preheader ] ; 3 uses
  %i.cz = add i64 %.0.i.i207, 1
  %exitcond.not.i.i = icmp eq i64 %.0.i.i207, %umax.i.i
  br i1 %exitcond.not.i.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.scalar.ph520, !llvm.loop !1497

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i: ; preds = %vec.epilog.scalar.ph520, %vec.epilog.middle.block533, %middle.block513
  %.022.i.i.lcssa = phi i64 [ %vector.recur.extract.for.phi534, %vec.epilog.middle.block533 ], [ %vector.recur.extract.for.phi514, %middle.block513 ], [ %.022.i.i, %vec.epilog.scalar.ph520 ] ; 4 uses
  %i.da = add i64 %.022.i.i.lcssa, 2
  %i.db = tail call i64 @llvm.umax.i64(i64 %.val9496.i, i64 %i.da) ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %.07399.i)
  %.not43.i = icmp eq i64 %.022.i.i.lcssa, 0
  %i.dc = mul i64 %.022.i.i.lcssa, %2
  %.not.i.i208 = icmp samesign eq i64 %2, %i.dc
  %or.cond = select i1 %.not43.i, i1 true, i1 %.not.i.i208
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.0102.i, i64 %.022.i.i.lcssa ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !314
  %i.df = load i8, ptr %.0102.i, align 1, !tbaa !314
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !314
  store i8 %i.de, ptr %.0102.i, align 1, !tbaa !314
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i: ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %.0102.i, i64 1
  %i.dh = icmp ne i64 %.039100.i, 0
  %.neg.i = sext i1 %i.dh to i64
  %i.di = add i64 %.039100.i, %.neg.i
  %i.dj = icmp ne i64 %i.db, 0
  %.neg44.i = sext i1 %i.dj to i64
  %i.dk = add i64 %.sroa.speculated.i, %.neg44.i
  %i.dl = add i64 %.07399.i, -1                   ; 2 uses
  %.not.i209 = icmp eq i64 %i.dl, 0
  br i1 %.not.i209, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %iter.check519, !llvm.loop !1498

_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i, %.lr.ph.i, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IP5emptyEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS9_ES9_NS_11move_detail8identityIS9_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISP_E4typeESS_SS_SS_SS_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 7 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 7 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 3 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 3 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
  %i.ad = icmp ult i64 %i.ab, %i.ac               ; 12 uses
  %i.ae = zext i1 %i.ad to i8                     ; 9 uses
  %i.af = icmp eq ptr %.0108386, %.0300383        ; 2 uses
  %i.ag = trunc nuw i8 %.0105387 to i1            ; 3 uses
  %i.ah = xor i1 %i.ad, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.ai = phi i1 [ %i.z, %._crit_edge ], [ %i.af, %bb.e ]
  %i.aj = phi i1 [ true, %._crit_edge ], [ %i.ad, %bb.e ] ; 3 uses
  %.not7.i.i = icmp eq ptr %.0294384, %.0108386
  %i.ak = ptrtoaddr ptr %.0108386 to i64
  %i.al = ptrtoaddr ptr %.0294384 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = select i1 %i.ai, i1 true, i1 %.not7.i.i
  %.1301.idx = select i1 %i.an, i64 0, i64 %i.am
  %.1301 = getelementptr i8, ptr %.0300383, i64 %.1301.idx ; 3 uses
  %.not.i = icmp samesign eq i64 %i.t, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not21.i = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !223
  %i.ap = load i64, ptr %.0102388, align 8, !tbaa !223
  store i64 %i.ap, ptr %i.x, align 8, !tbaa !223
  store i64 %i.ao, ptr %.0102388, align 8, !tbaa !223
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = icmp eq ptr %i.x, %.0306382
  br i1 %i.aq, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq ptr %.0306382, %.0102388
  %spec.select = select i1 %i.ar, ptr %i.x, ptr %.0306382
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.e
  %i.as = ptrtoint ptr %.0108386 to i64           ; 4 uses
  %i.at = ptrtoint ptr %.0294384 to i64           ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.v

.thread442:                                       ; preds = %._crit_edge
  br i1 %i.z, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %.thread446

.thread446:                                       ; preds = %.thread442
  %i.au = ptrtoint ptr %.0108386 to i64
  %i.av = ptrtoint ptr %.0294384 to i64
  %i.aw = sub i64 %i.au, %i.av
  %.not.i.i129447 = icmp samesign eq i64 %i.t, 0  ; 2 uses
  %i.ax = icmp eq ptr %.0294384, %.0108386
  br i1 %i.ax, label %bb.y, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130

bb.l:                                             ; preds = %bb.k
  %.neg = sub i64 %i.at, %i.as
  %i.ay = getelementptr inbounds i8, ptr %.0290385, i64 %.neg ; 12 uses
  %.not.i.i = icmp samesign eq i64 %i.t, 0        ; 2 uses
  br i1 %i.ag, label %bb.m, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.m:                                             ; preds = %bb.l
  %.not.i30.i.i = icmp eq ptr %.0294384, %.0108386 ; 2 uses
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %or.cond.i.i.i = select i1 %.not.i30.i.i, i1 true, i1 %.not.i41.i.i132
  br i1 %or.cond.i.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n, %bb.o
  %.pn.i.i.i = phi ptr [ %.041.i.i.i, %bb.o ], [ %.0294384, %bb.n ]
  %.pn49.i.i.i = phi ptr [ %.037.i.i.i, %bb.o ], [ %i.ay, %bb.n ]
  %.pn50.i.i.i = phi ptr [ %.035.i.i.i, %bb.o ], [ %.0290385, %bb.n ]
  %.035.i.i.i = getelementptr inbounds nuw i8, ptr %.pn50.i.i.i, i64 1 ; 3 uses
  %.037.i.i.i = getelementptr inbounds nuw i8, ptr %.pn49.i.i.i, i64 1 ; 2 uses
  %.041.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 3 uses
  %.not48.i.i.i = icmp eq ptr %.041.i.i.i, %.0108386
  br i1 %.not48.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i
  %i.az = icmp eq ptr %.035.i.i.i, %i.w
  br i1 %i.az, label %bb.p, label %.preheader.i.i, !llvm.loop !24

bb.p:                                             ; preds = %bb.o
  %i.ba = ptrtoaddr ptr %.041.i.i.i to i64
  %i.bb = sub i64 %i.as, %i.ba
  %.0.lcssa.i.i.i.i.i = getelementptr i8, ptr %i.ay, i64 %i.bb
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

bb.q:                                             ; preds = %bb.m
  %or.cond.i31.i.i = or i1 %.not.i30.i.i, %.not.i41.i.i132
  br i1 %or.cond.i31.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.q, %bb.r
  %.pn.i32.i.i = phi ptr [ %.034.i.i.i, %bb.r ], [ %.0294384, %bb.q ]
  %.pn41.i.i.i = phi ptr [ %.030.i.i.i, %bb.r ], [ %i.ay, %bb.q ]
  %.pn42.i.i.i = phi ptr [ %.0.i33.i.i, %bb.r ], [ %.0290385, %bb.q ]
  %.0.i33.i.i = getelementptr inbounds nuw i8, ptr %.pn42.i.i.i, i64 1 ; 3 uses
  %.030.i.i.i = getelementptr inbounds nuw i8, ptr %.pn41.i.i.i, i64 1 ; 2 uses
  %.034.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i32.i.i, i64 1 ; 3 uses
  %i.bc = icmp eq ptr %.034.i.i.i, %.0108386
  br i1 %i.bc, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.i
  %i.bd = icmp eq ptr %.0.i33.i.i, %i.w
  br i1 %i.bd, label %bb.s, label %.preheader.i.i.i, !llvm.loop !25

bb.s:                                             ; preds = %bb.r
  %i.be = ptrtoaddr ptr %.034.i.i.i to i64
  %i.bf = sub i64 %i.as, %i.be
  %.0.lcssa.i.i.i34.i.i = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i: ; preds = %.preheader.i.i, %.preheader.i.i.i, %bb.s, %bb.p
  %.060.i.i = phi ptr [ %i.w, %bb.p ], [ %.0.i33.i.i, %.preheader.i.i.i ], [ %i.w, %bb.s ], [ %.035.i.i.i, %.preheader.i.i ] ; 5 uses
  %.0.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i, %bb.p ], [ %.030.i.i.i, %.preheader.i.i.i ], [ %.0.lcssa.i.i.i34.i.i, %bb.s ], [ %.037.i.i.i, %.preheader.i.i ] ; 4 uses
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i
  %.not.i38.i.i = icmp eq ptr %.060.i.i, %i.w
  %.not36.i.i.i = icmp eq ptr %.0.i.i, %i.ay
  %or.cond.i39.i.i = select i1 %.not.i38.i.i, i1 true, i1 %.not36.i.i.i
  br i1 %or.cond.i39.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = ptrtoaddr ptr %.060.i.i to i64
  %i.bh = ptrtoaddr ptr %i.w to i64
  %i.bi = sub i64 %i.bh, %i.bg
  %scevgep.i.i.i = getelementptr i8, ptr %.060.i.i, i64 %i.bi
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, %bb.q
  %.075.i.i = phi ptr [ %.0.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %i.ay, %bb.q ] ; 2 uses
  %.06072.i.i = phi ptr [ %.060.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %.0290385, %bb.q ] ; 3 uses
  %.not.i42.i.i = icmp eq ptr %.06072.i.i, %i.w
  %.not36.i43.i.i = icmp eq ptr %.075.i.i, %i.ay
  %or.cond.i44.i.i = select i1 %.not.i42.i.i, i1 true, i1 %.not36.i43.i.i
  %i.bj = ptrtoaddr ptr %.06072.i.i to i64
  %i.bk = ptrtoaddr ptr %i.w to i64
  %i.bl = sub i64 %i.bk, %i.bj
  %.226.idx.i.i.i = select i1 %or.cond.i44.i.i, i64 0, i64 %i.bl
  %.2.i45.i.i = getelementptr i8, ptr %.06072.i.i, i64 %.226.idx.i.i.i
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.v:                                             ; preds = %bb.k
  %.not.i.i129 = icmp samesign eq i64 %i.t, 0     ; 3 uses
  %i.bm = icmp eq ptr %.0294384, %.0108386        ; 4 uses
  br i1 %i.ag, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.0294384..0108386 = select i1 %i.bm, ptr %.0294384, ptr %.0108386 ; 2 uses
  %.0290385. = select i1 %i.bm, ptr %.0290385, ptr %i.w
  br i1 %.not.i.i129, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159: ; preds = %bb.w
  %or.cond.i44.i.i165 = select i1 %.not.i41.i.i132, i1 true, i1 %i.bm
  %.226.idx.i.i.i166 = select i1 %or.cond.i44.i.i165, i64 0, i64 %2
  %.2.i45.i.i168 = getelementptr i8, ptr %.0290385, i64 %.226.idx.i.i.i166
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.x:                                             ; preds = %bb.v
  %i.bn = sub i64 %i.as, %i.at                    ; 2 uses
  br i1 %i.bm, label %bb.y, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130

bb.y:                                             ; preds = %.thread446, %bb.x
  %i.bo = phi i1 [ true, %.thread446 ], [ %i.ad, %bb.x ] ; 2 uses
  %i.bp = phi i8 [ 1, %.thread446 ], [ %i.ae, %bb.x ] ; 2 uses
  %i.bq = phi i64 [ 0, %.thread446 ], [ %i.bn, %bb.x ]
  %.not.i.i129448453 = phi i1 [ %.not.i.i129447, %.thread446 ], [ %.not.i.i129, %bb.x ]
  %i.br = getelementptr inbounds i8, ptr %.0294384, i64 %i.bq ; 4 uses
  br i1 %.not.i.i129448453, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130: ; preds = %.thread446, %bb.x
  %i.bs = phi i1 [ true, %.thread446 ], [ %i.ad, %bb.x ] ; 2 uses
  %i.bt = phi i8 [ 1, %.thread446 ], [ %i.ae, %bb.x ] ; 2 uses
  %i.bu = phi i64 [ %i.aw, %.thread446 ], [ %i.bn, %bb.x ]
  %.not.i.i129448452 = phi i1 [ %.not.i.i129447, %.thread446 ], [ %.not.i.i129, %bb.x ]
  br i1 %.not.i.i129448452, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130
  %spec.select472.idx = select i1 %.not.i41.i.i132, i64 0, i64 %i.bu
  %spec.select472 = getelementptr i8, ptr %.0294384, i64 %spec.select472.idx
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130, %bb.y
  %i.bv = phi i1 [ %i.bs, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.bo, %bb.y ]
  %i.bw = phi i8 [ %i.bt, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.bp, %bb.y ]
  %.081.i.i141 = phi ptr [ %.0108386, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.br, %bb.y ] ; 3 uses
  %.06678.i.i143 = phi ptr [ %.0294384, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.br, %bb.y ] ; 3 uses
  %.not36.i47.i.i145 = icmp eq ptr %.081.i.i141, %.06678.i.i143
  %or.cond.i48.i.i146 = select i1 %.not.i41.i.i132, i1 true, i1 %.not36.i47.i.i145
  %i.bx = ptrtoaddr ptr %.06678.i.i143 to i64
  %i.by = ptrtoaddr ptr %.081.i.i141 to i64
  %i.bz = sub i64 %i.by, %i.bx
  %.226.idx.i.i16.i147 = select i1 %or.cond.i48.i.i146, i64 0, i64 %i.bz
  %.223.i.i.i149 = getelementptr i8, ptr %.06678.i.i143, i64 %.226.idx.i.i16.i147
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131, %bb.w, %.thread442, %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, %bb.y, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, %bb.u, %bb.t, %bb.n
  %i.ca = phi i1 [ %i.bs, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ad, %bb.n ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ad, %bb.t ], [ %i.ad, %bb.u ], [ %i.bo, %bb.y ], [ true, %.thread442 ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %i.ad, %bb.l ], [ %i.ad, %bb.w ], [ %i.bv, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 2 uses
  %i.cb = phi i8 [ %i.bt, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ae, %bb.n ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ae, %bb.t ], [ %i.ae, %bb.u ], [ %i.bp, %bb.y ], [ 1, %.thread442 ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %i.ae, %bb.l ], [ %i.ae, %bb.w ], [ %i.bw, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ]
  %.1291 = phi ptr [ %.0290385, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %.0290385, %bb.n ], [ %.2.i45.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.060.i.i, %bb.t ], [ %scevgep.i.i.i, %bb.u ], [ %.0290385, %bb.y ], [ %.0290385, %.thread442 ], [ %.2.i45.i.i168, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0290385, %bb.l ], [ %.0290385., %bb.w ], [ %.0290385, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 4 uses
  %.0287 = phi ptr [ %spec.select472, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ay, %bb.n ], [ %i.ay, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %i.br, %bb.y ], [ %.0290385, %.thread442 ], [ %.0294384, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0290385, %bb.l ], [ %.0294384, %bb.w ], [ %.223.i.i.i149, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 2 uses
  %.0286 = phi ptr [ %.0108386, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ay, %bb.n ], [ %.075.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.0.i.i, %bb.t ], [ %.0.i.i, %bb.u ], [ %i.br, %bb.y ], [ %.0290385, %.thread442 ], [ %.0294384..0108386, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0290385, %bb.l ], [ %.0294384..0108386, %bb.w ], [ %.081.i.i141, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 3 uses
  %i.cc = ptrtoint ptr %i.w to i64
  %i.cd = ptrtoint ptr %.1291 to i64
  %.neg121 = sub i64 %i.cd, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.v, i64 %.neg121
  %.not.i192 = icmp eq ptr %.1291, %i.ce
  br i1 %.not.i192, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, label %bb.z

bb.z:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.not21.i193 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not21.i193, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = load i64, ptr %i.x, align 8, !tbaa !223
  %i.cg = load i64, ptr %.0102388, align 8, !tbaa !223
  store i64 %i.cg, ptr %i.x, align 8, !tbaa !223
  store i64 %i.cf, ptr %.0102388, align 8, !tbaa !223
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ch = icmp eq ptr %i.x, %.0306382
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = icmp eq ptr %.0306382, %.0102388
  %spec.select340 = select i1 %i.ci, ptr %i.x, ptr %.0306382
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196: ; preds = %bb.ac, %bb.ab, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.5311 = phi ptr [ %.0306382, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ], [ %spec.select340, %bb.ac ], [ %.0102388, %bb.ab ] ; 2 uses
  %.not122 = icmp eq ptr %.0287, %.0286
  br i1 %.not122, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196
  %i.cj = getelementptr inbounds i8, ptr %.1291, i64 %i.b
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.ad, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, %bb.f, %bb.i
  %i.ck = phi i1 [ %i.ca, %bb.ad ], [ %i.aj, %bb.i ], [ %i.aj, %bb.f ], [ %i.aj, %bb.j ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.1307 = phi ptr [ %.5311, %bb.ad ], [ %.0102388, %bb.i ], [ %.0306382, %bb.f ], [ %spec.select, %bb.j ], [ %.5311, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2302 = phi ptr [ %i.cj, %bb.ad ], [ %.1301, %bb.i ], [ %.1301, %bb.f ], [ %.1301, %bb.j ], [ %.0286, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2296 = phi ptr [ %.1291, %bb.ad ], [ %.0290385, %bb.i ], [ %.0290385, %bb.f ], [ %.0290385, %bb.j ], [ %.0287, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2110 = phi ptr [ %i.w, %bb.ad ], [ %i.w, %bb.i ], [ %i.w, %bb.f ], [ %i.w, %bb.j ], [ %.0286, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2107 = phi i8 [ %i.cb, %bb.ad ], [ %.0105387, %bb.i ], [ %.0105387, %bb.f ], [ %.0105387, %bb.j ], [ %.0105387, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %not. = xor i1 %i.ck, true
  %i.cl = sext i1 %not. to i64
  %.1 = add i64 %.0391, %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %.0102388, i64 8 ; 2 uses
  %i.cn = icmp ne i64 %.099390, 0
  %.neg124 = sext i1 %i.cn to i64
  %i.co = add i64 %.099390, %.neg124              ; 2 uses
  %i.cp = icmp ne i64 %i.s, 0
  %.neg125 = sext i1 %i.cp to i64
  %i.cq = add i64 %.sroa.speculated271, %.neg125  ; 2 uses
  %i.cr = add i64 %.0312381, -1                   ; 2 uses
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %.thread, label %iter.check, !llvm.loop !1539

.thread:                                          ; preds = %bb.b, %.sink.split.i, %bb.a
  %.0 = phi i64 [ %.sroa.speculated, %bb.a ], [ %i.cq, %.sink.split.i ], [ %.sroa.speculated271, %bb.b ]
  %.0312.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.sink.split.i ], [ %.0312381, %bb.b ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %i.cm, %.sink.split.i ], [ %.0102388, %bb.b ]
  %.099.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.co, %.sink.split.i ], [ %.099390, %bb.b ]
  %.not.lcssa = phi i1 [ true, %bb.a ], [ true, %.sink.split.i ], [ false, %bb.b ]
  br i1 %.not.lcssa, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.thread
  %.3 = phi i64 [ %.0, %.thread ], [ %.sroa.speculated271, %bb.c ]
  %.0312377 = phi i64 [ %.0312.lcssa, %.thread ], [ %.0312381, %bb.c ]
  %.0102362 = phi ptr [ %.0102.lcssa, %.thread ], [ %.0102388, %bb.c ]
  %.099358 = phi i64 [ %.099.lcssa, %.thread ], [ %.099390, %bb.c ]
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %iter.check519

iter.check519:                                    ; preds = %.lr.ph.i, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i
  %.0102.i = phi ptr [ %i.dg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.0102362, %.lr.ph.i ] ; 4 uses
  %.039100.i = phi i64 [ %i.di, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.099358, %.lr.ph.i ] ; 9 uses
  %.07399.i = phi i64 [ %i.dl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.0312377, %.lr.ph.i ] ; 2 uses
  %.val9496.i = phi i64 [ %i.dk, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.3, %.lr.ph.i ] ; 2 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.val9496.i, i64 %.039100.i) ; 2 uses
  %i.cs = add i64 %umax.i.i, 1
  %i.ct = sub i64 %i.cs, %.039100.i               ; 7 uses
  %min.iters.check499 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check499, label %vec.epilog.scalar.ph520.preheader, label %vector.main.loop.iter.check500

vector.main.loop.iter.check500:                   ; preds = %iter.check519
  %min.iters.check501 = icmp ult i64 %i.ct, 32
  br i1 %min.iters.check501, label %vec.epilog.ph523, label %vector.ph502

vector.ph502:                                     ; preds = %vector.main.loop.iter.check500
  %i.cu = and i64 %i.ct, 24
  %n.vec503 = and i64 %i.ct, -32                  ; 4 uses
  %i.cv = add i64 %.039100.i, %n.vec503           ; 2 uses
  %broadcast.splatinsert504 = insertelement <16 x i64> poison, i64 %.039100.i, i64 0
  %broadcast.splat505 = shufflevector <16 x i64> %broadcast.splatinsert504, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction506 = add <16 x i64> %broadcast.splat505, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph502
  %index508 = phi i64 [ 0, %vector.ph502 ], [ %index.next511, %vector.body507 ]
  %vec.ind509 = phi <16 x i64> [ %induction506, %vector.ph502 ], [ %vec.ind.next512, %vector.body507 ] ; 2 uses
  %index.next511 = add nuw i64 %index508, 32      ; 2 uses
  %vec.ind.next512 = add <16 x i64> %vec.ind509, splat (i64 32)
  %i.cw = icmp eq i64 %index.next511, %n.vec503
  br i1 %i.cw, label %middle.block513, label %vector.body507, !llvm.loop !1540

middle.block513:                                  ; preds = %vector.body507
  %step.add510 = add <16 x i64> %vec.ind509, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi514 = extractelement <16 x i64> %step.add510, i64 14
  %cmp.n516 = icmp eq i64 %i.ct, %n.vec503
  br i1 %cmp.n516, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.iter.check521

vec.epilog.iter.check521:                         ; preds = %middle.block513
  %vector.recur.extract515 = extractelement <16 x i64> %step.add510, i64 15
  %min.epilog.iters.check522 = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check522, label %vec.epilog.scalar.ph520.preheader, label %vec.epilog.ph523, !prof !311

vec.epilog.ph523:                                 ; preds = %vector.main.loop.iter.check500, %vec.epilog.iter.check521
  %vec.epilog.resume.val517 = phi i64 [ %n.vec503, %vec.epilog.iter.check521 ], [ 0, %vector.main.loop.iter.check500 ]
  %bc.resume.val518 = phi i64 [ %i.cv, %vec.epilog.iter.check521 ], [ %.039100.i, %vector.main.loop.iter.check500 ]
  %n.vec524 = and i64 %i.ct, -8                   ; 3 uses
  %i.cx = add i64 %.039100.i, %n.vec524
  %broadcast.splatinsert525 = insertelement <8 x i64> poison, i64 %bc.resume.val518, i64 0
  %broadcast.splat526 = shufflevector <8 x i64> %broadcast.splatinsert525, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction527 = add <8 x i64> %broadcast.splat526, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body528

vec.epilog.vector.body528:                        ; preds = %vec.epilog.vector.body528, %vec.epilog.ph523
  %index529 = phi i64 [ %vec.epilog.resume.val517, %vec.epilog.ph523 ], [ %index.next531, %vec.epilog.vector.body528 ]
  %vec.ind530 = phi <8 x i64> [ %induction527, %vec.epilog.ph523 ], [ %vec.ind.next532, %vec.epilog.vector.body528 ] ; 3 uses
  %index.next531 = add nuw i64 %index529, 8       ; 2 uses
  %vec.ind.next532 = add <8 x i64> %vec.ind530, splat (i64 8)
  %i.cy = icmp eq i64 %index.next531, %n.vec524
  br i1 %i.cy, label %vec.epilog.middle.block533, label %vec.epilog.vector.body528, !llvm.loop !1541

vec.epilog.middle.block533:                       ; preds = %vec.epilog.vector.body528
  %vector.recur.extract.for.phi534 = extractelement <8 x i64> %vec.ind530, i64 6
  %vector.recur.extract535 = extractelement <8 x i64> %vec.ind530, i64 7
  %cmp.n536 = icmp eq i64 %i.ct, %n.vec524
  br i1 %cmp.n536, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.scalar.ph520.preheader

vec.epilog.scalar.ph520.preheader:                ; preds = %iter.check519, %vec.epilog.iter.check521, %vec.epilog.middle.block533
  %.022.i.i.ph = phi i64 [ 0, %iter.check519 ], [ %vector.recur.extract515, %vec.epilog.iter.check521 ], [ %vector.recur.extract535, %vec.epilog.middle.block533 ]
  %.0.i.i207.ph = phi i64 [ %.039100.i, %iter.check519 ], [ %i.cv, %vec.epilog.iter.check521 ], [ %i.cx, %vec.epilog.middle.block533 ]
  br label %vec.epilog.scalar.ph520

vec.epilog.scalar.ph520:                          ; preds = %vec.epilog.scalar.ph520.preheader, %vec.epilog.scalar.ph520
  %.022.i.i = phi i64 [ %.0.i.i207, %vec.epilog.scalar.ph520 ], [ %.022.i.i.ph, %vec.epilog.scalar.ph520.preheader ]
  %.0.i.i207 = phi i64 [ %i.cz, %vec.epilog.scalar.ph520 ], [ %.0.i.i207.ph, %vec.epilog.scalar.ph520.preheader ] ; 3 uses
  %i.cz = add i64 %.0.i.i207, 1
  %exitcond.not.i.i = icmp eq i64 %.0.i.i207, %umax.i.i
  br i1 %exitcond.not.i.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.scalar.ph520, !llvm.loop !1542

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i: ; preds = %vec.epilog.scalar.ph520, %vec.epilog.middle.block533, %middle.block513
  %.022.i.i.lcssa = phi i64 [ %vector.recur.extract.for.phi534, %vec.epilog.middle.block533 ], [ %vector.recur.extract.for.phi514, %middle.block513 ], [ %.022.i.i, %vec.epilog.scalar.ph520 ] ; 4 uses
  %i.da = add i64 %.022.i.i.lcssa, 2
  %i.db = tail call i64 @llvm.umax.i64(i64 %.val9496.i, i64 %i.da) ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %.07399.i)
  %.not43.i = icmp eq i64 %.022.i.i.lcssa, 0
  %i.dc = mul i64 %.022.i.i.lcssa, %2
  %.not.i.i208 = icmp samesign eq i64 %2, %i.dc
  %or.cond = select i1 %.not43.i, i1 true, i1 %.not.i.i208
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i
  %.idx.i = shl nuw nsw i64 %.022.i.i.lcssa, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %.0102.i, i64 %.idx.i ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !223
  %i.df = load i64, ptr %.0102.i, align 8, !tbaa !223
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !223
  store i64 %i.de, ptr %.0102.i, align 8, !tbaa !223
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i: ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %.0102.i, i64 8
  %i.dh = icmp ne i64 %.039100.i, 0
  %.neg.i = sext i1 %i.dh to i64
  %i.di = add i64 %.039100.i, %.neg.i
  %i.dj = icmp ne i64 %i.db, 0
  %.neg44.i = sext i1 %i.dj to i64
  %i.dk = add i64 %.sroa.speculated.i, %.neg44.i
  %i.dl = add i64 %.07399.i, -1                   ; 2 uses
  %.not.i209 = icmp eq i64 %i.dl, 0
  br i1 %.not.i209, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %iter.check519, !llvm.loop !1543

_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i, %.lr.ph.i, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = add i64 %5, %4                           ; 4 uses
  %i.b = sub i64 0, %2                            ; 2 uses
  %i.c = icmp eq i64 %5, 0
  %i.d = select i1 %i.c, i64 0, i64 %4            ; 3 uses
  %i.e = add i64 %i.d, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.a) ; 2 uses
  %.not380 = icmp eq i64 %i.a, 0
  br i1 %.not380, label %.thread, label %.lr.ph

end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
  %i.ad = icmp ult i64 %i.ab, %i.ac               ; 12 uses
  %i.ae = zext i1 %i.ad to i8                     ; 9 uses
  %i.af = icmp eq ptr %.0108387, %.0301384        ; 2 uses
  %i.ag = trunc nuw i8 %.0105388 to i1            ; 3 uses
  %i.ah = xor i1 %i.ad, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.ai = phi i1 [ %i.z, %._crit_edge ], [ %i.af, %bb.e ]
  %i.aj = phi i1 [ true, %._crit_edge ], [ %i.ad, %bb.e ] ; 3 uses
  %.not8.i.i = icmp eq ptr %.0295385, %.0108387
  %i.ak = ptrtoaddr ptr %.0108387 to i64
  %i.al = ptrtoaddr ptr %.0295385 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = select i1 %i.ai, i1 true, i1 %.not8.i.i
  %.1302.idx = select i1 %i.an, i64 0, i64 %i.am
  %.1302 = getelementptr i8, ptr %.0301384, i64 %.1302.idx ; 3 uses
  %.not.i = icmp samesign eq i64 %i.t, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not21.i = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !223
  %i.ap = load i64, ptr %.0102389, align 8, !tbaa !223
  store i64 %i.ap, ptr %i.x, align 8, !tbaa !223
  store i64 %i.ao, ptr %.0102389, align 8, !tbaa !223
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = icmp eq ptr %i.x, %.0307383
  br i1 %i.aq, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq ptr %.0307383, %.0102389
  %spec.select = select i1 %i.ar, ptr %i.x, ptr %.0307383
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.e
  %i.as = ptrtoint ptr %.0108387 to i64           ; 4 uses
  %i.at = ptrtoint ptr %.0295385 to i64           ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.v

.thread443:                                       ; preds = %._crit_edge
  br i1 %i.z, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %.thread447

.thread447:                                       ; preds = %.thread443
  %i.au = ptrtoint ptr %.0108387 to i64
  %i.av = ptrtoint ptr %.0295385 to i64
  %i.aw = sub i64 %i.au, %i.av
  %.not.i.i129448 = icmp samesign eq i64 %i.t, 0  ; 2 uses
  %i.ax = icmp eq ptr %.0295385, %.0108387
  br i1 %i.ax, label %bb.y, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130

bb.l:                                             ; preds = %bb.k
  %.neg = sub i64 %i.at, %i.as
  %i.ay = getelementptr inbounds i8, ptr %.0291386, i64 %.neg ; 12 uses
  %.not.i.i = icmp samesign eq i64 %i.t, 0        ; 2 uses
  br i1 %i.ag, label %bb.m, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.m:                                             ; preds = %bb.l
  %.not.i30.i.i = icmp eq ptr %.0295385, %.0108387 ; 2 uses
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %or.cond.i.i.i = select i1 %.not.i30.i.i, i1 true, i1 %.not.i41.i.i132
  br i1 %or.cond.i.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n, %bb.o
  %.pn.i.i.i = phi ptr [ %.041.i.i.i, %bb.o ], [ %.0295385, %bb.n ]
  %.pn49.i.i.i = phi ptr [ %.037.i.i.i, %bb.o ], [ %i.ay, %bb.n ]
  %.pn50.i.i.i = phi ptr [ %.035.i.i.i, %bb.o ], [ %.0291386, %bb.n ]
  %.035.i.i.i = getelementptr inbounds nuw i8, ptr %.pn50.i.i.i, i64 1 ; 3 uses
  %.037.i.i.i = getelementptr inbounds nuw i8, ptr %.pn49.i.i.i, i64 1 ; 2 uses
  %.041.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 3 uses
  %.not48.i.i.i = icmp eq ptr %.041.i.i.i, %.0108387
  br i1 %.not48.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i
  %i.az = icmp eq ptr %.035.i.i.i, %i.w
  br i1 %i.az, label %bb.p, label %.preheader.i.i, !llvm.loop !29

bb.p:                                             ; preds = %bb.o
  %i.ba = ptrtoaddr ptr %.041.i.i.i to i64
  %i.bb = sub i64 %i.as, %i.ba
  %.0.lcssa.i.i.i.i.i = getelementptr i8, ptr %i.ay, i64 %i.bb
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

bb.q:                                             ; preds = %bb.m
  %or.cond.i31.i.i = or i1 %.not.i30.i.i, %.not.i41.i.i132
  br i1 %or.cond.i31.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.q, %bb.r
  %.pn.i32.i.i = phi ptr [ %.034.i.i.i, %bb.r ], [ %.0295385, %bb.q ]
  %.pn41.i.i.i = phi ptr [ %.030.i.i.i, %bb.r ], [ %i.ay, %bb.q ]
  %.pn42.i.i.i = phi ptr [ %.0.i33.i.i, %bb.r ], [ %.0291386, %bb.q ]
  %.0.i33.i.i = getelementptr inbounds nuw i8, ptr %.pn42.i.i.i, i64 1 ; 3 uses
  %.030.i.i.i = getelementptr inbounds nuw i8, ptr %.pn41.i.i.i, i64 1 ; 2 uses
  %.034.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i32.i.i, i64 1 ; 3 uses
  %i.bc = icmp eq ptr %.034.i.i.i, %.0108387
  br i1 %i.bc, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.i
  %i.bd = icmp eq ptr %.0.i33.i.i, %i.w
  br i1 %i.bd, label %bb.s, label %.preheader.i.i.i, !llvm.loop !30

bb.s:                                             ; preds = %bb.r
  %i.be = ptrtoaddr ptr %.034.i.i.i to i64
  %i.bf = sub i64 %i.as, %i.be
  %.0.lcssa.i.i.i34.i.i = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i: ; preds = %.preheader.i.i, %.preheader.i.i.i, %bb.s, %bb.p
  %.060.i.i = phi ptr [ %i.w, %bb.p ], [ %.0.i33.i.i, %.preheader.i.i.i ], [ %i.w, %bb.s ], [ %.035.i.i.i, %.preheader.i.i ] ; 5 uses
  %.0.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i, %bb.p ], [ %.030.i.i.i, %.preheader.i.i.i ], [ %.0.lcssa.i.i.i34.i.i, %bb.s ], [ %.037.i.i.i, %.preheader.i.i ] ; 4 uses
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i
  %.not.i38.i.i = icmp eq ptr %.060.i.i, %i.w
  %.not36.i.i.i = icmp eq ptr %.0.i.i, %i.ay
  %or.cond.i39.i.i = select i1 %.not.i38.i.i, i1 true, i1 %.not36.i.i.i
  br i1 %or.cond.i39.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = ptrtoaddr ptr %.060.i.i to i64
  %i.bh = ptrtoaddr ptr %i.w to i64
  %i.bi = sub i64 %i.bh, %i.bg
  %scevgep.i.i.i = getelementptr i8, ptr %.060.i.i, i64 %i.bi
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i, %bb.q
  %.075.i.i = phi ptr [ %.0.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %i.ay, %bb.q ] ; 2 uses
  %.06072.i.i = phi ptr [ %.060.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.i.i ], [ %.0291386, %bb.q ] ; 3 uses
  %.not.i42.i.i = icmp eq ptr %.06072.i.i, %i.w
  %.not36.i43.i.i = icmp eq ptr %.075.i.i, %i.ay
  %or.cond.i44.i.i = select i1 %.not.i42.i.i, i1 true, i1 %.not36.i43.i.i
  %i.bj = ptrtoaddr ptr %.06072.i.i to i64
  %i.bk = ptrtoaddr ptr %i.w to i64
  %i.bl = sub i64 %i.bk, %i.bj
  %.226.idx.i.i.i = select i1 %or.cond.i44.i.i, i64 0, i64 %i.bl
  %.2.i45.i.i = getelementptr i8, ptr %.06072.i.i, i64 %.226.idx.i.i.i
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.v:                                             ; preds = %bb.k
  %.not.i.i129 = icmp samesign eq i64 %i.t, 0     ; 3 uses
  %i.bm = icmp eq ptr %.0295385, %.0108387        ; 4 uses
  br i1 %i.ag, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.0295385..0108387 = select i1 %i.bm, ptr %.0295385, ptr %.0108387 ; 2 uses
  %.0291386. = select i1 %i.bm, ptr %.0291386, ptr %i.w
  br i1 %.not.i.i129, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159: ; preds = %bb.w
  %or.cond.i44.i.i165 = select i1 %.not.i41.i.i132, i1 true, i1 %i.bm
  %.226.idx.i.i.i166 = select i1 %or.cond.i44.i.i165, i64 0, i64 %2
  %.2.i45.i.i168 = getelementptr i8, ptr %.0291386, i64 %.226.idx.i.i.i166
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.x:                                             ; preds = %bb.v
  %i.bn = sub i64 %i.as, %i.at                    ; 2 uses
  br i1 %i.bm, label %bb.y, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130

bb.y:                                             ; preds = %.thread447, %bb.x
  %i.bo = phi i1 [ true, %.thread447 ], [ %i.ad, %bb.x ] ; 2 uses
  %i.bp = phi i8 [ 1, %.thread447 ], [ %i.ae, %bb.x ] ; 2 uses
  %i.bq = phi i64 [ 0, %.thread447 ], [ %i.bn, %bb.x ]
  %.not.i.i129449454 = phi i1 [ %.not.i.i129448, %.thread447 ], [ %.not.i.i129, %bb.x ]
  %i.br = getelementptr inbounds i8, ptr %.0295385, i64 %i.bq ; 4 uses
  br i1 %.not.i.i129449454, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130: ; preds = %.thread447, %bb.x
  %i.bs = phi i1 [ true, %.thread447 ], [ %i.ad, %bb.x ] ; 2 uses
  %i.bt = phi i8 [ 1, %.thread447 ], [ %i.ae, %bb.x ] ; 2 uses
  %i.bu = phi i64 [ %i.aw, %.thread447 ], [ %i.bn, %bb.x ]
  %.not.i.i129449453 = phi i1 [ %.not.i.i129448, %.thread447 ], [ %.not.i.i129, %bb.x ]
  br i1 %.not.i.i129449453, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130
  %spec.select473.idx = select i1 %.not.i41.i.i132, i64 0, i64 %i.bu
  %spec.select473 = getelementptr i8, ptr %.0295385, i64 %spec.select473.idx
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130, %bb.y
  %i.bv = phi i1 [ %i.bs, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.bo, %bb.y ]
  %i.bw = phi i8 [ %i.bt, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.bp, %bb.y ]
  %.081.i.i141 = phi ptr [ %.0108387, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.br, %bb.y ] ; 3 uses
  %.06678.i.i143 = phi ptr [ %.0295385, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.i.i130 ], [ %i.br, %bb.y ] ; 3 uses
  %.not36.i47.i.i145 = icmp eq ptr %.081.i.i141, %.06678.i.i143
  %or.cond.i48.i.i146 = select i1 %.not.i41.i.i132, i1 true, i1 %.not36.i47.i.i145
  %i.bx = ptrtoaddr ptr %.06678.i.i143 to i64
  %i.by = ptrtoaddr ptr %.081.i.i141 to i64
  %i.bz = sub i64 %i.by, %i.bx
  %.226.idx.i.i16.i147 = select i1 %or.cond.i48.i.i146, i64 0, i64 %i.bz
  %.223.i.i.i149 = getelementptr i8, ptr %.06678.i.i143, i64 %.226.idx.i.i16.i147
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131, %bb.w, %.thread443, %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140, %bb.y, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i, %bb.u, %bb.t, %bb.n
  %i.ca = phi i1 [ %i.bs, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ad, %bb.n ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ad, %bb.t ], [ %i.ad, %bb.u ], [ %i.bo, %bb.y ], [ true, %.thread443 ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %i.ad, %bb.l ], [ %i.ad, %bb.w ], [ %i.bv, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 2 uses
  %i.cb = phi i8 [ %i.bt, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ae, %bb.n ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ae, %bb.t ], [ %i.ae, %bb.u ], [ %i.bp, %bb.y ], [ 1, %.thread443 ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %i.ae, %bb.l ], [ %i.ae, %bb.w ], [ %i.bw, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ]
  %.1292 = phi ptr [ %.0291386, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %.0291386, %bb.n ], [ %.2.i45.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.060.i.i, %bb.t ], [ %scevgep.i.i.i, %bb.u ], [ %.0291386, %bb.y ], [ %.0291386, %.thread443 ], [ %.2.i45.i.i168, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0291386, %bb.l ], [ %.0291386., %bb.w ], [ %.0291386, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 4 uses
  %.0288 = phi ptr [ %spec.select473, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ay, %bb.n ], [ %i.ay, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %i.br, %bb.y ], [ %.0291386, %.thread443 ], [ %.0295385, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0291386, %bb.l ], [ %.0295385, %bb.w ], [ %.223.i.i.i149, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 2 uses
  %.0287 = phi ptr [ %.0108387, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread86.i.i131 ], [ %i.ay, %bb.n ], [ %.075.i.i, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i ], [ %.0.i.i, %bb.t ], [ %.0.i.i, %bb.u ], [ %i.br, %bb.y ], [ %.0291386, %.thread443 ], [ %.0295385..0108387, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread.i.i159 ], [ %.0291386, %bb.l ], [ %.0295385..0108387, %bb.w ], [ %.081.i.i141, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIP5emptyS4_S4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread.i.i140 ] ; 3 uses
  %i.cc = ptrtoint ptr %i.w to i64
  %i.cd = ptrtoint ptr %.1292 to i64
  %.neg121 = sub i64 %i.cd, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.v, i64 %.neg121
  %.not.i192 = icmp eq ptr %.1292, %i.ce
  br i1 %.not.i192, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, label %bb.z

bb.z:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.not21.i193 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not21.i193, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = load i64, ptr %i.x, align 8, !tbaa !223
  %i.cg = load i64, ptr %.0102389, align 8, !tbaa !223
  store i64 %i.cg, ptr %i.x, align 8, !tbaa !223
  store i64 %i.cf, ptr %.0102389, align 8, !tbaa !223
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ch = icmp eq ptr %i.x, %.0307383
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = icmp eq ptr %.0307383, %.0102389
  %spec.select341 = select i1 %i.ci, ptr %i.x, ptr %.0307383
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196: ; preds = %bb.ac, %bb.ab, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.5312 = phi ptr [ %.0307383, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIP5emptyS4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ], [ %spec.select341, %bb.ac ], [ %.0102389, %bb.ab ] ; 2 uses
  %.not122 = icmp eq ptr %.0288, %.0287
  br i1 %.not122, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196
  %i.cj = getelementptr inbounds i8, ptr %.1292, i64 %i.b
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.ad, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196, %bb.f, %bb.i
  %i.ck = phi i1 [ %i.ca, %bb.ad ], [ %i.aj, %bb.i ], [ %i.aj, %bb.f ], [ %i.aj, %bb.j ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.1308 = phi ptr [ %.5312, %bb.ad ], [ %.0102389, %bb.i ], [ %.0307383, %bb.f ], [ %spec.select, %bb.j ], [ %.5312, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2303 = phi ptr [ %i.cj, %bb.ad ], [ %.1302, %bb.i ], [ %.1302, %bb.f ], [ %.1302, %bb.j ], [ %.0287, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2297 = phi ptr [ %.1292, %bb.ad ], [ %.0291386, %bb.i ], [ %.0291386, %bb.f ], [ %.0291386, %bb.j ], [ %.0288, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2110 = phi ptr [ %i.w, %bb.ad ], [ %i.w, %bb.i ], [ %i.w, %bb.f ], [ %i.w, %bb.j ], [ %.0287, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %.2107 = phi i8 [ %i.cb, %bb.ad ], [ %.0105388, %bb.i ], [ %.0105388, %bb.f ], [ %.0105388, %bb.j ], [ %.0105388, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit196 ]
  %not. = xor i1 %i.ck, true
  %i.cl = sext i1 %not. to i64
  %.1 = add i64 %.0392, %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %.0102389, i64 8 ; 2 uses
  %i.cn = icmp ne i64 %.099391, 0
  %.neg124 = sext i1 %i.cn to i64
  %i.co = add i64 %.099391, %.neg124              ; 2 uses
  %i.cp = icmp ne i64 %i.s, 0
  %.neg125 = sext i1 %i.cp to i64
  %i.cq = add i64 %.sroa.speculated272, %.neg125  ; 2 uses
  %i.cr = add i64 %.0313382, -1                   ; 2 uses
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %.thread, label %iter.check, !llvm.loop !1547

.thread:                                          ; preds = %bb.b, %.sink.split.i, %bb.a
  %.0 = phi i64 [ %.sroa.speculated, %bb.a ], [ %i.cq, %.sink.split.i ], [ %.sroa.speculated272, %bb.b ]
  %.0313.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.sink.split.i ], [ %.0313382, %bb.b ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %i.cm, %.sink.split.i ], [ %.0102389, %bb.b ]
  %.099.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.co, %.sink.split.i ], [ %.099391, %bb.b ]
  %.not.lcssa = phi i1 [ true, %bb.a ], [ true, %.sink.split.i ], [ false, %bb.b ]
  br i1 %.not.lcssa, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.thread
  %.3 = phi i64 [ %.0, %.thread ], [ %.sroa.speculated272, %bb.c ]
  %.0313378 = phi i64 [ %.0313.lcssa, %.thread ], [ %.0313382, %bb.c ]
  %.0102363 = phi ptr [ %.0102.lcssa, %.thread ], [ %.0102389, %bb.c ]
  %.099359 = phi i64 [ %.099.lcssa, %.thread ], [ %.099391, %bb.c ]
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %iter.check520

iter.check520:                                    ; preds = %.lr.ph.i, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i
  %.0102.i = phi ptr [ %i.dg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.0102363, %.lr.ph.i ] ; 4 uses
  %.039100.i = phi i64 [ %i.di, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.099359, %.lr.ph.i ] ; 9 uses
  %.07399.i = phi i64 [ %i.dl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.0313378, %.lr.ph.i ] ; 2 uses
  %.val9496.i = phi i64 [ %i.dk, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i ], [ %.3, %.lr.ph.i ] ; 2 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.val9496.i, i64 %.039100.i) ; 2 uses
  %i.cs = add i64 %umax.i.i, 1
  %i.ct = sub i64 %i.cs, %.039100.i               ; 7 uses
  %min.iters.check500 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check500, label %vec.epilog.scalar.ph521.preheader, label %vector.main.loop.iter.check501

vector.main.loop.iter.check501:                   ; preds = %iter.check520
  %min.iters.check502 = icmp ult i64 %i.ct, 32
  br i1 %min.iters.check502, label %vec.epilog.ph524, label %vector.ph503

vector.ph503:                                     ; preds = %vector.main.loop.iter.check501
  %i.cu = and i64 %i.ct, 24
  %n.vec504 = and i64 %i.ct, -32                  ; 4 uses
  %i.cv = add i64 %.039100.i, %n.vec504           ; 2 uses
  %broadcast.splatinsert505 = insertelement <16 x i64> poison, i64 %.039100.i, i64 0
  %broadcast.splat506 = shufflevector <16 x i64> %broadcast.splatinsert505, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction507 = add <16 x i64> %broadcast.splat506, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph503
  %index509 = phi i64 [ 0, %vector.ph503 ], [ %index.next512, %vector.body508 ]
  %vec.ind510 = phi <16 x i64> [ %induction507, %vector.ph503 ], [ %vec.ind.next513, %vector.body508 ] ; 2 uses
  %index.next512 = add nuw i64 %index509, 32      ; 2 uses
  %vec.ind.next513 = add <16 x i64> %vec.ind510, splat (i64 32)
  %i.cw = icmp eq i64 %index.next512, %n.vec504
  br i1 %i.cw, label %middle.block514, label %vector.body508, !llvm.loop !1548

middle.block514:                                  ; preds = %vector.body508
  %step.add511 = add <16 x i64> %vec.ind510, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi515 = extractelement <16 x i64> %step.add511, i64 14
  %cmp.n517 = icmp eq i64 %i.ct, %n.vec504
  br i1 %cmp.n517, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.iter.check522

vec.epilog.iter.check522:                         ; preds = %middle.block514
  %vector.recur.extract516 = extractelement <16 x i64> %step.add511, i64 15
  %min.epilog.iters.check523 = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check523, label %vec.epilog.scalar.ph521.preheader, label %vec.epilog.ph524, !prof !311

vec.epilog.ph524:                                 ; preds = %vector.main.loop.iter.check501, %vec.epilog.iter.check522
  %vec.epilog.resume.val518 = phi i64 [ %n.vec504, %vec.epilog.iter.check522 ], [ 0, %vector.main.loop.iter.check501 ]
  %bc.resume.val519 = phi i64 [ %i.cv, %vec.epilog.iter.check522 ], [ %.039100.i, %vector.main.loop.iter.check501 ]
  %n.vec525 = and i64 %i.ct, -8                   ; 3 uses
  %i.cx = add i64 %.039100.i, %n.vec525
  %broadcast.splatinsert526 = insertelement <8 x i64> poison, i64 %bc.resume.val519, i64 0
  %broadcast.splat527 = shufflevector <8 x i64> %broadcast.splatinsert526, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction528 = add <8 x i64> %broadcast.splat527, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body529

vec.epilog.vector.body529:                        ; preds = %vec.epilog.vector.body529, %vec.epilog.ph524
  %index530 = phi i64 [ %vec.epilog.resume.val518, %vec.epilog.ph524 ], [ %index.next532, %vec.epilog.vector.body529 ]
  %vec.ind531 = phi <8 x i64> [ %induction528, %vec.epilog.ph524 ], [ %vec.ind.next533, %vec.epilog.vector.body529 ] ; 3 uses
  %index.next532 = add nuw i64 %index530, 8       ; 2 uses
  %vec.ind.next533 = add <8 x i64> %vec.ind531, splat (i64 8)
  %i.cy = icmp eq i64 %index.next532, %n.vec525
  br i1 %i.cy, label %vec.epilog.middle.block534, label %vec.epilog.vector.body529, !llvm.loop !1549

vec.epilog.middle.block534:                       ; preds = %vec.epilog.vector.body529
  %vector.recur.extract.for.phi535 = extractelement <8 x i64> %vec.ind531, i64 6
  %vector.recur.extract536 = extractelement <8 x i64> %vec.ind531, i64 7
  %cmp.n537 = icmp eq i64 %i.ct, %n.vec525
  br i1 %cmp.n537, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.scalar.ph521.preheader

vec.epilog.scalar.ph521.preheader:                ; preds = %iter.check520, %vec.epilog.iter.check522, %vec.epilog.middle.block534
  %.022.i.i.ph = phi i64 [ 0, %iter.check520 ], [ %vector.recur.extract516, %vec.epilog.iter.check522 ], [ %vector.recur.extract536, %vec.epilog.middle.block534 ]
  %.0.i.i207.ph = phi i64 [ %.039100.i, %iter.check520 ], [ %i.cv, %vec.epilog.iter.check522 ], [ %i.cx, %vec.epilog.middle.block534 ]
  br label %vec.epilog.scalar.ph521

vec.epilog.scalar.ph521:                          ; preds = %vec.epilog.scalar.ph521.preheader, %vec.epilog.scalar.ph521
  %.022.i.i = phi i64 [ %.0.i.i207, %vec.epilog.scalar.ph521 ], [ %.022.i.i.ph, %vec.epilog.scalar.ph521.preheader ]
  %.0.i.i207 = phi i64 [ %i.cz, %vec.epilog.scalar.ph521 ], [ %.0.i.i207.ph, %vec.epilog.scalar.ph521.preheader ] ; 3 uses
  %i.cz = add i64 %.0.i.i207, 1
  %exitcond.not.i.i = icmp eq i64 %.0.i.i207, %umax.i.i
  br i1 %exitcond.not.i.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, label %vec.epilog.scalar.ph521, !llvm.loop !1550

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i: ; preds = %vec.epilog.scalar.ph521, %vec.epilog.middle.block534, %middle.block514
  %.022.i.i.lcssa = phi i64 [ %vector.recur.extract.for.phi535, %vec.epilog.middle.block534 ], [ %vector.recur.extract.for.phi515, %middle.block514 ], [ %.022.i.i, %vec.epilog.scalar.ph521 ] ; 4 uses
  %i.da = add i64 %.022.i.i.lcssa, 2
  %i.db = tail call i64 @llvm.umax.i64(i64 %.val9496.i, i64 %i.da) ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %.07399.i)
  %.not43.i = icmp eq i64 %.022.i.i.lcssa, 0
  %i.dc = mul i64 %.022.i.i.lcssa, %2
  %.not.i.i208 = icmp samesign eq i64 %2, %i.dc
  %or.cond = select i1 %.not43.i, i1 true, i1 %.not.i.i208
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i
  %.idx.i = shl nuw nsw i64 %.022.i.i.lcssa, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %.0102.i, i64 %.idx.i ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !223
  %i.df = load i64, ptr %.0102.i, align 8, !tbaa !223
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !223
  store i64 %i.de, ptr %.0102.i, align 8, !tbaa !223
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i: ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit.i, %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %.0102.i, i64 8
  %i.dh = icmp ne i64 %.039100.i, 0
  %.neg.i = sext i1 %i.dh to i64
  %i.di = add i64 %.039100.i, %.neg.i
  %i.dj = icmp ne i64 %i.db, 0
  %.neg44.i = sext i1 %i.dj to i64
  %i.dk = add i64 %.sroa.speculated.i, %.neg44.i
  %i.dl = add i64 %.07399.i, -1                   ; 2 uses
  %.not.i209 = icmp eq i64 %i.dl, 0
  br i1 %.not.i209, label %_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit, label %iter.check520, !llvm.loop !1551

_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEP5emptyS6_S6_NS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmP5emptyEEvT_S6_RS6_T0_S8_S8_.exit.i, %.lr.ph.i, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IP5emptyEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS9_ES9_NS_11move_detail8identityIS9_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISP_E4typeESS_SS_SS_SS_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 7 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 7 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 3 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 3 uses
end_hunk_4
