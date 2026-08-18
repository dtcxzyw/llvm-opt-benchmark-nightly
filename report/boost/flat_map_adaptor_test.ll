inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 251
loop-unroll.NumUnrolled: 522
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairIiiEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEES7_S7_S7_SH_NS0_7move_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_:bb.a
  %i.cp = load ptr, ptr %3, align 8, !tbaa !2099  ; 6 uses
  %i.cq = icmp eq ptr %i.cp, %.sroa.064.0
  br i1 %i.cq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !87, !noalias !2262
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !87, !noalias !2262
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !87, !noalias !2262
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !87, !noalias !2262
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !87, !noalias !2262
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !87, !noalias !2262
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !87, !noalias !2262
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !87, !noalias !2262
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28, !llvm.loop !2265

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !87, !noalias !2266
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !292, !noalias !2266
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !87, !noalias !2266
  %i.dh = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !294, !noalias !2266
  %i.di = load i32, ptr %i.db, align 4, !tbaa !87, !noalias !2266
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !292, !noalias !2266
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !87, !noalias !2266
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !294, !noalias !2266
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !2269

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !87, !noalias !2270
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !292, !noalias !2270
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87, !noalias !2270
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !294, !noalias !2270
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !2275

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.dn, %.lr.ph.i.i ], [ %i.cp, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2099
  %i.ds = load ptr, ptr %1, align 8, !tbaa !2099  ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPSt4pairIiiEEES7_EEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.dw = load <2 x i32>, ptr %i.du, align 4, !tbaa !87
  %i.dx = load <2 x i32>, ptr %i.dv, align 4, !tbaa !87
  store <2 x i32> %i.dx, ptr %i.du, align 4, !tbaa !87
  store <2 x i32> %i.dw, ptr %i.dv, align 4, !tbaa !87
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.dy = load ptr, ptr %2, align 8, !tbaa !2099  ; 2 uses
  %i.dz = icmp eq ptr %i.dt, %i.dy
  br i1 %i.dz, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = icmp eq ptr %i.dy, %i.ds
  br i1 %i.ea, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPSt4pairIiiEEES7_EEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.ds, %bb.y ], [ %i.dt, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2099
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPSt4pairIiiEEES7_EEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPSt4pairIiiEEES7_EEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !2099
  %i.eb = load ptr, ptr %1, align 8, !tbaa !2099
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8 ; 2 uses
  store ptr %i.ec, ptr %1, align 8, !tbaa !2099
  %i.ed = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ed to i64
  %i.ee = add i64 %.0140, %.neg
  %i.ef = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ef to i64
  %i.eg = add i64 %.sroa.speculated, %.neg24
  %i.eh = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eh, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2276

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPSt4pairIiiEEES7_EEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.ei = load ptr, ptr %6, align 8, !tbaa !2099
  store ptr %i.ei, ptr %0, align 8, !tbaa !2099
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !73     ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !73     ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !73     ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.07.i, align 4, !tbaa !87
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2277

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 14 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 16 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load i32, ptr %.0.lcssa.i, align 4, !tbaa !87
  store i32 %i.p, ptr %i.m, align 4, !tbaa !292
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !294
  %i.t = load i32, ptr %4, align 4, !tbaa !87
  store i32 %i.t, ptr %.0.lcssa.i, align 4, !tbaa !292
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !87
  store i32 %i.v, ptr %i.q, align 4, !tbaa !294
  %i.w = load i32, ptr %i.d, align 4, !tbaa !87
  store i32 %i.w, ptr %4, align 4, !tbaa !292
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  store i32 %i.y, ptr %i.u, align 4, !tbaa !294
  %.03759.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.04160.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4861.i = icmp eq ptr %.04160.i, %1
  br i1 %.not4861.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04168.i = phi ptr [ %.041.i, %bb.j ], [ %.04160.i, %bb.f ] ; 12 uses
  %.03767.i = phi ptr [ %.037.i, %bb.j ], [ %.03759.i, %bb.f ] ; 4 uses
  %.066.i = phi ptr [ %.1.i, %bb.j ], [ %i.o, %bb.f ] ; 8 uses
  %.03565.i = phi ptr [ %.136.i, %bb.j ], [ %i.n, %bb.f ] ; 7 uses
  %.pn4964.i = phi ptr [ %.03767.i, %bb.j ], [ %i.m, %bb.f ] ; 2 uses
  %.03963.i = phi ptr [ %.140.i, %bb.j ], [ %i.m, %bb.f ] ; 14 uses
  %.pn62.i = phi ptr [ %.04168.i, %bb.j ], [ %.0.lcssa.i, %bb.f ] ; 2 uses
  %i.z = icmp eq ptr %.03565.i, %3
  br i1 %i.z, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.aa = add i64 %i.a, -16
  %7 = sub i64 %i.aa, %i.j
  %8 = lshr i64 %7, 3
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 2305843009213693951
  %i.ab = add i64 %10, %9                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 22
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader304, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ac = add i64 %i.a, -16
  %i.ad = sub i64 %i.ac, %i.j
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %11 = add i64 %i.ae, 8
  %i.af = shl i64 %indvar, 3
  %12 = sub i64 %11, %i.af
  %i.ag = getelementptr i8, ptr %.03963.i, i64 %12
  %scevgep232 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ae
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 16
  %bound0 = icmp ult ptr %.03963.i, %scevgep233
  %bound1 = icmp ult ptr %.04168.i, %i.ag
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader304, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %.03963.i, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %.04168.i, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 3 uses
  %i.al = or disjoint i64 %i.ak, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963.i, i64 %i.ak
  %next.gep234.a = getelementptr i8, ptr %.03963.i, i64 %i.al
  %next.gep235 = getelementptr i8, ptr %.04168.i, i64 %i.ak
  %next.gep236 = getelementptr i8, ptr %.04168.i, i64 %i.al
  %wide.vec = load <4 x i32>, ptr %next.gep235, align 4, !tbaa !87, !alias.scope !2278
  %wide.vec238 = load <4 x i32>, ptr %next.gep236, align 4, !tbaa !87, !alias.scope !2278
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !2281, !noalias !2278
  store <4 x i32> %wide.vec238, ptr %next.gep234.a, align 4, !tbaa !87, !alias.scope !2281, !noalias !2278
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit, label %.lr.ph.i.i.i.preheader304

.lr.ph.i.i.i.preheader304:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03963.i, %vector.memcheck ], [ %.03963.i, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04168.i, %vector.memcheck ], [ %.04168.i, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader304, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader304 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader304 ] ; 3 uses
  %i.an = load i32, ptr %.079.i.i.i, align 4, !tbaa !87
  store i32 %i.an, ptr %.010.i.i.i, align 4, !tbaa !292
  %i.ao = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !294
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !2284

bb.g:                                             ; preds = %.lr.ph.i31
  %i.at = load i32, ptr %.066.i, align 4, !tbaa !87
  %i.au = load i32, ptr %.03963.i, align 4, !tbaa !87
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.03565.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.066.i, i64 8
  %i.ay = load i32, ptr %.04168.i, align 4, !tbaa !87
  store i32 %i.ay, ptr %.03767.i, align 4, !tbaa !292
  %i.az = getelementptr inbounds nuw i8, ptr %.pn62.i, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !87
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn4964.i, i64 12
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !294
  %i.bc = load i32, ptr %.066.i, align 4, !tbaa !87
  store i32 %i.bc, ptr %.04168.i, align 4, !tbaa !292
  %i.bd = getelementptr inbounds nuw i8, ptr %.066.i, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !87
  store i32 %i.be, ptr %i.az, align 4, !tbaa !294
  %i.bf = load i32, ptr %.03565.i, align 4, !tbaa !87
  store i32 %i.bf, ptr %.066.i, align 4, !tbaa !292
  %i.bg = getelementptr inbounds nuw i8, ptr %.03565.i, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !87
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !294
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.03963.i, i64 8
  %i.bj = load i32, ptr %.04168.i, align 4, !tbaa !87
  store i32 %i.bj, ptr %.03767.i, align 4, !tbaa !292
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn62.i, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !87
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn4964.i, i64 12
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !294
  %i.bn = load i32, ptr %.03963.i, align 4, !tbaa !87
  store i32 %i.bn, ptr %.04168.i, align 4, !tbaa !292
  %i.bo = getelementptr inbounds nuw i8, ptr %.03963.i, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !87
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !294
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03963.i, %bb.h ], [ %i.bi, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.aw, %bb.h ], [ %.03565.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ax, %bb.h ], [ %.066.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03767.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04168.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2285

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.br = load i32, ptr %.0.lcssa.i, align 4, !tbaa !87
  store i32 %i.br, ptr %i.m, align 4, !tbaa !292
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !294
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !87
  store i32 %i.bv, ptr %.0.lcssa.i, align 4, !tbaa !292
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !87
  store i32 %i.bx, ptr %i.bs, align 4, !tbaa !294
  %.03049.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.03450.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.by = icmp eq ptr %.03450.i, %1
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar245 = phi i64 [ %indvar.next246, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03456.i = phi ptr [ %.034.i, %bb.m ], [ %.03450.i, %bb.l ] ; 10 uses
  %.03055.i = phi ptr [ %.030.i, %bb.m ], [ %.03049.i, %bb.l ] ; 3 uses
  %.054.i35 = phi ptr [ %.1.i36, %bb.m ], [ %i.bq, %bb.l ] ; 6 uses
  %.pn4153.i = phi ptr [ %.03055.i, %bb.m ], [ %i.m, %bb.l ]
  %.03252.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 12 uses
  %.pn51.i = phi ptr [ %.03456.i, %bb.m ], [ %.0.lcssa.i, %bb.l ]
  %i.bz = icmp eq ptr %.054.i35, %3
  br i1 %i.bz, label %.lr.ph.i.i.i41.preheader, label %bb.m

.lr.ph.i.i.i41.preheader:                         ; preds = %.lr.ph.i34
  %i.ca = add i64 %i.a, -16
  %13 = sub i64 %i.ca, %i.j
  %14 = lshr i64 %13, 3
  %15 = add nuw nsw i64 %14, 1
  %16 = mul i64 %indvar245, 2305843009213693951
  %i.cb = add i64 %16, %15                        ; 3 uses
  %min.iters.check254 = icmp ult i64 %i.cb, 22
  br i1 %min.iters.check254, label %.lr.ph.i.i.i41.preheader297, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i.i41.preheader
  %i.cc = add i64 %i.a, -16
  %i.cd = sub i64 %i.cc, %i.j
  %i.ce = and i64 %i.cd, -8                       ; 2 uses
  %17 = add i64 %i.ce, 8
  %i.cf = shl i64 %indvar245, 3
  %18 = sub i64 %17, %i.cf
  %i.cg = getelementptr i8, ptr %.03252.i, i64 %18
  %scevgep248 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ce
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 16
  %bound0250 = icmp ult ptr %.03252.i, %scevgep249
  %bound1251 = icmp ult ptr %.03456.i, %i.cg
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %.lr.ph.i.i.i41.preheader297, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck243
  %n.vec256 = and i64 %i.cb, -4                   ; 3 uses
  %i.ch = shl i64 %n.vec256, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.03252.i, i64 %i.ch ; 2 uses
  %i.cj = getelementptr i8, ptr %.03456.i, i64 %i.ch
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next271, %vector.body257 ] ; 2 uses
  %i.ck = shl i64 %index258, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 16               ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.03252.i, i64 %i.ck
  %next.gep260 = getelementptr i8, ptr %.03252.i, i64 %i.cl
  %next.gep261 = getelementptr i8, ptr %.03456.i, i64 %i.ck
  %next.gep262 = getelementptr i8, ptr %.03456.i, i64 %i.cl
  %wide.vec263 = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !87, !alias.scope !2286
  %wide.vec266 = load <4 x i32>, ptr %next.gep262, align 4, !tbaa !87, !alias.scope !2286
  store <4 x i32> %wide.vec263, ptr %next.gep259, align 4, !tbaa !87, !alias.scope !2289, !noalias !2286
  store <4 x i32> %wide.vec266, ptr %next.gep260, align 4, !tbaa !87, !alias.scope !2289, !noalias !2286
  %index.next271 = add nuw i64 %index258, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next271, %n.vec256
  br i1 %i.cm, label %middle.block272, label %vector.body257, !llvm.loop !2291

middle.block272:                                  ; preds = %vector.body257
  %cmp.n273 = icmp eq i64 %i.cb, %n.vec256
  br i1 %cmp.n273, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit, label %.lr.ph.i.i.i41.preheader297

.lr.ph.i.i.i41.preheader297:                      ; preds = %vector.memcheck243, %.lr.ph.i.i.i41.preheader, %middle.block272
  %.010.i.i.i42.ph = phi ptr [ %.03252.i, %vector.memcheck243 ], [ %.03252.i, %.lr.ph.i.i.i41.preheader ], [ %i.ci, %middle.block272 ]
  %.079.i.i.i43.ph = phi ptr [ %.03456.i, %vector.memcheck243 ], [ %.03456.i, %.lr.ph.i.i.i41.preheader ], [ %i.cj, %middle.block272 ]
  br label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %.lr.ph.i.i.i41.preheader297, %.lr.ph.i.i.i41
  %.010.i.i.i42 = phi ptr [ %i.cs, %.lr.ph.i.i.i41 ], [ %.010.i.i.i42.ph, %.lr.ph.i.i.i41.preheader297 ] ; 3 uses
  %.079.i.i.i43 = phi ptr [ %i.cr, %.lr.ph.i.i.i41 ], [ %.079.i.i.i43.ph, %.lr.ph.i.i.i41.preheader297 ] ; 3 uses
  %i.cn = load i32, ptr %.079.i.i.i43, align 4, !tbaa !87
  store i32 %i.cn, ptr %.010.i.i.i42, align 4, !tbaa !292
  %i.co = getelementptr inbounds nuw i8, ptr %.079.i.i.i43, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !87
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i42, i64 4
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !294
  %i.cr = getelementptr inbounds nuw i8, ptr %.079.i.i.i43, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.010.i.i.i42, i64 8 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.cr, %1
  br i1 %.not.i.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit, label %.lr.ph.i.i.i41, !llvm.loop !2292

bb.m:                                             ; preds = %.lr.ph.i34
  %i.ct = load i32, ptr %.054.i35, align 4, !tbaa !87
  %i.cu = load i32, ptr %.03252.i, align 4, !tbaa !87
  %i.cv = icmp slt i32 %i.ct, %i.cu               ; 3 uses
  %i.cw = load i32, ptr %.03456.i, align 4, !tbaa !87
  store i32 %i.cw, ptr %.03055.i, align 4, !tbaa !292
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn51.i, i64 12 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !87
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn4153.i, i64 12
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !294
  %.03252.sink71.i = select i1 %i.cv, ptr %.054.i35, ptr %.03252.i ; 2 uses
  %.133.idx.i = select i1 %i.cv, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.cv, i64 8, i64 0
  %.1.i36 = getelementptr inbounds nuw i8, ptr %.054.i35, i64 %.1.idx.i ; 2 uses
  %i.da = load i32, ptr %.03252.sink71.i, align 4, !tbaa !87
  store i32 %i.da, ptr %.03456.i, align 4, !tbaa !292
  %i.db = getelementptr inbounds nuw i8, ptr %.03252.sink71.i, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !87
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !294
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 8 ; 2 uses
  %i.dd = icmp eq ptr %.034.i, %1
  %indvar.next246 = add i64 %indvar245, 1
  br i1 %i.dd, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2293

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i41, %middle.block, %middle.block272, %bb.a
  %.076 = phi ptr [ %.066.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.066.i, %middle.block ], [ %4, %middle.block272 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i41 ], [ %.1.i, %bb.j ]
  %.071 = phi ptr [ %.03963.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03963.i, %middle.block ], [ %.03252.i, %middle.block272 ], [ %.133.i, %bb.m ], [ %.03252.i, %.lr.ph.i.i.i41 ], [ %.140.i, %bb.j ] ; 2 uses
  %.070 = phi ptr [ %.03565.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03565.i, %middle.block ], [ %.054.i35, %middle.block272 ], [ %.1.i36, %bb.m ], [ %.054.i35, %.lr.ph.i.i.i41 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block272 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i41 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.ai, %middle.block ], [ %i.ci, %middle.block272 ], [ %.030.i, %bb.m ], [ %i.cs, %.lr.ph.i.i.i41 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit
  %.0101 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit ], [ %.03759.i, %bb.f ] ; 5 uses
  %.028100 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.07099 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit ], [ %i.n, %bb.f ] ; 3 uses
  %.07198 = phi ptr [ %.071, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.07697 = phi ptr [ %.076, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit ], [ %i.o, %bb.f ]
  %.not.i45 = icmp eq ptr %.07099, %3
  %.not36.i = icmp eq ptr %.0101, %.07198
  %or.cond.i46 = select i1 %.not.i45, i1 true, i1 %.not36.i
  br i1 %or.cond.i46, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91 ]
  %.028.ph.i = phi ptr [ %i.dp, %bb.o ], [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07697, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.dh, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.di, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 5 uses
  %i.de = load i32, ptr %.025.i, align 4, !tbaa !87 ; 2 uses
  %i.df = load i32, ptr %.028.ph.i, align 4, !tbaa !87 ; 2 uses
  %i.dg = icmp slt i32 %i.de, %i.df
  br i1 %i.dg, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i32 %i.de, ptr %.030.i47, align 4, !tbaa !292
  %i.dj = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !87
  %i.dl = getelementptr inbounds nuw i8, ptr %.030.i47, i64 4
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !294
  %i.dm = load i32, ptr %.026.i, align 4, !tbaa !87
  store i32 %i.dm, ptr %.025.i, align 4, !tbaa !292
  %i.dn = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !87
  store i32 %i.do, ptr %i.dj, align 4, !tbaa !294
  %.not43.i = icmp eq ptr %i.dh, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %bb.n, !llvm.loop !2294

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i32 %i.df, ptr %.030.i47, align 4, !tbaa !292
  %i.dq = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !87
  %i.ds = getelementptr inbounds nuw i8, ptr %.030.i47, i64 4
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !294
  %.not42.i = icmp eq ptr %i.dp, %.0101
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %.outer.i, !llvm.loop !2294

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit
  %.087 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit ], [ %.03049.i, %bb.l ] ; 5 uses
  %.02885 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07084 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit ], [ %i.bq, %bb.l ] ; 3 uses
  %.07183 = phi ptr [ %.071, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07084, %3
  %.not36.i51 = icmp eq ptr %.087, %.07183
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.dw, %bb.q ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.ec, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.dw, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.dy, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.dt = load i32, ptr %.0.i, align 4, !tbaa !87 ; 2 uses
  %i.du = load i32, ptr %.021.i.ph, align 4, !tbaa !87 ; 2 uses
  %i.dv = icmp slt i32 %i.dt, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.dv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i32 %i.dt, ptr %.024.i, align 4, !tbaa !292
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !87
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !294
  %i.eb = icmp eq ptr %i.dy, %3
  br i1 %i.eb, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %.preheader.i, !llvm.loop !2295

bb.q:                                             ; preds = %.preheader.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.du, ptr %.024.i, align 4, !tbaa !292
  %i.ed = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !87
  store i32 %i.ee, ptr %i.dx, align 4, !tbaa !294
  %i.ef = icmp eq ptr %i.ec, %.087
  br i1 %i.ef, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2295

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91
  %.086 = phi ptr [ %.0101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91 ], [ %.0101, %.split.i ], [ %.087, %bb.p ], [ %.087, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.087, %bb.q ], [ %.0101, %bb.o ]
  %.172 = phi ptr [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91 ], [ %.028.ph.i, %.split.i ], [ %i.ec, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.dp, %bb.o ]
  %.1 = phi ptr [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91 ], [ %i.dh, %.split.i ], [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.dy, %bb.p ], [ %.026.i, %bb.o ]
  %i.eg = phi ptr [ %.028100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread91 ], [ %.13137.i, %.split.i ], [ %i.dw, %bb.p ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.dw, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.172, ptr %5, align 8, !tbaa !73
  store ptr %.086, ptr %6, align 8, !tbaa !73
  store ptr %.1, ptr %2, align 8, !tbaa !73
  ret ptr %i.eg
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !73     ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !73     ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !73     ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.08.i, align 4, !tbaa !87
  %.not6.i = icmp slt i32 %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2296

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 14 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 16 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load i32, ptr %.0.lcssa.i, align 4, !tbaa !87
  store i32 %i.o, ptr %i.l, align 4, !tbaa !292
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !294
  %i.s = load i32, ptr %4, align 4, !tbaa !87
  store i32 %i.s, ptr %.0.lcssa.i, align 4, !tbaa !292
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !87
  store i32 %i.u, ptr %i.p, align 4, !tbaa !294
  %i.v = load i32, ptr %i.d, align 4, !tbaa !87
  store i32 %i.v, ptr %4, align 4, !tbaa !292
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !87
  store i32 %i.x, ptr %i.t, align 4, !tbaa !294
  %.03760.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.04161.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4862.i = icmp eq ptr %.04161.i, %1
  br i1 %.not4862.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04169.i = phi ptr [ %.041.i, %bb.j ], [ %.04161.i, %bb.f ] ; 12 uses
  %.03768.i = phi ptr [ %.037.i, %bb.j ], [ %.03760.i, %bb.f ] ; 4 uses
  %.067.i = phi ptr [ %.1.i, %bb.j ], [ %i.n, %bb.f ] ; 8 uses
  %.03566.i = phi ptr [ %.136.i, %bb.j ], [ %i.m, %bb.f ] ; 7 uses
  %.pn4965.i = phi ptr [ %.03768.i, %bb.j ], [ %i.l, %bb.f ] ; 2 uses
  %.03964.i = phi ptr [ %.140.i, %bb.j ], [ %i.l, %bb.f ] ; 14 uses
  %.pn63.i = phi ptr [ %.04169.i, %bb.j ], [ %.0.lcssa.i, %bb.f ] ; 2 uses
  %i.y = icmp eq ptr %.03566.i, %3
  br i1 %i.y, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.z = add i64 %i.a, -16
  %8 = sub i64 %i.z, %i.i
  %9 = lshr i64 %8, 3
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 2305843009213693951
  %i.aa = add i64 %11, %10                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 22
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader308, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = add i64 %i.a, -16
  %i.ac = sub i64 %i.ab, %i.i
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %12 = add i64 %i.ad, 8
  %i.ae = shl i64 %indvar, 3
  %13 = sub i64 %12, %i.ae
  %i.af = getelementptr i8, ptr %.03964.i, i64 %13
  %scevgep236 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ad
  %scevgep237 = getelementptr i8, ptr %scevgep236, i64 16
  %bound0 = icmp ult ptr %.03964.i, %scevgep237
  %bound1 = icmp ult ptr %.04169.i, %i.af
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader308, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %.03964.i, i64 %i.ag ; 2 uses
  %i.ai = getelementptr i8, ptr %.04169.i, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.03964.i, i64 %i.aj
  %next.gep238.a = getelementptr i8, ptr %.03964.i, i64 %i.ak
  %next.gep239 = getelementptr i8, ptr %.04169.i, i64 %i.aj
  %next.gep240 = getelementptr i8, ptr %.04169.i, i64 %i.ak
  %wide.vec = load <4 x i32>, ptr %next.gep239, align 4, !tbaa !87, !alias.scope !2297
  %wide.vec242 = load <4 x i32>, ptr %next.gep240, align 4, !tbaa !87, !alias.scope !2297
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !2300, !noalias !2297
  store <4 x i32> %wide.vec242, ptr %next.gep238.a, align 4, !tbaa !87, !alias.scope !2300, !noalias !2297
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !2302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i.i.i.preheader308

.lr.ph.i.i.i.preheader308:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03964.i, %vector.memcheck ], [ %.03964.i, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04169.i, %vector.memcheck ], [ %.04169.i, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader308, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader308 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader308 ] ; 3 uses
  %i.am = load i32, ptr %.079.i.i.i, align 4, !tbaa !87
  store i32 %i.am, ptr %.010.i.i.i, align 4, !tbaa !292
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !294
  %i.aq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !2303

bb.g:                                             ; preds = %.lr.ph.i31
  %i.as = load i32, ptr %.03964.i, align 4, !tbaa !87
  %i.at = load i32, ptr %.067.i, align 4, !tbaa !87
  %.not50.i = icmp slt i32 %i.as, %i.at
  br i1 %.not50.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.03566.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.aw = load i32, ptr %.04169.i, align 4, !tbaa !87
  store i32 %i.aw, ptr %.03768.i, align 4, !tbaa !292
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn63.i, i64 12 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %.pn4965.i, i64 12
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !294
  %i.ba = load i32, ptr %.067.i, align 4, !tbaa !87
  store i32 %i.ba, ptr %.04169.i, align 4, !tbaa !292
  %i.bb = getelementptr inbounds nuw i8, ptr %.067.i, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !87
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !294
  %i.bd = load i32, ptr %.03566.i, align 4, !tbaa !87
  store i32 %i.bd, ptr %.067.i, align 4, !tbaa !292
  %i.be = getelementptr inbounds nuw i8, ptr %.03566.i, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !87
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !294
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %.03964.i, i64 8
  %i.bh = load i32, ptr %.04169.i, align 4, !tbaa !87
  store i32 %i.bh, ptr %.03768.i, align 4, !tbaa !292
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn63.i, i64 12 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !87
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn4965.i, i64 12
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !294
  %i.bl = load i32, ptr %.03964.i, align 4, !tbaa !87
  store i32 %i.bl, ptr %.04169.i, align 4, !tbaa !292
  %i.bm = getelementptr inbounds nuw i8, ptr %.03964.i, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !87
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !294
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03964.i, %bb.h ], [ %i.bg, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.au, %bb.h ], [ %.03566.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.av, %bb.h ], [ %.067.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03768.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04169.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2304

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bp = load i32, ptr %.0.lcssa.i, align 4, !tbaa !87
  store i32 %i.bp, ptr %i.l, align 4, !tbaa !292
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !87
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !294
  %i.bt = load i32, ptr %i.d, align 4, !tbaa !87
  store i32 %i.bt, ptr %.0.lcssa.i, align 4, !tbaa !292
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !87
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !294
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bw = icmp eq ptr %.03451.i, %1
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar249 = phi i64 [ %indvar.next250, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03457.i = phi ptr [ %.034.i, %bb.m ], [ %.03451.i, %bb.l ] ; 10 uses
  %.03056.i = phi ptr [ %.030.i, %bb.m ], [ %.03050.i, %bb.l ] ; 3 uses
  %.055.i35 = phi ptr [ %.1.i36, %bb.m ], [ %i.bo, %bb.l ] ; 6 uses
  %.pn4154.i = phi ptr [ %.03056.i, %bb.m ], [ %i.l, %bb.l ]
  %.03253.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 12 uses
  %.pn52.i = phi ptr [ %.03457.i, %bb.m ], [ %.0.lcssa.i, %bb.l ]
  %i.bx = icmp eq ptr %.055.i35, %3
  br i1 %i.bx, label %.lr.ph.i.i.i41.preheader, label %bb.m

.lr.ph.i.i.i41.preheader:                         ; preds = %.lr.ph.i34
  %i.by = add i64 %i.a, -16
  %14 = sub i64 %i.by, %i.i
  %15 = lshr i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = mul i64 %indvar249, 2305843009213693951
  %i.bz = add i64 %17, %16                        ; 3 uses
  %min.iters.check258 = icmp ult i64 %i.bz, 22
  br i1 %min.iters.check258, label %.lr.ph.i.i.i41.preheader301, label %vector.memcheck247

vector.memcheck247:                               ; preds = %.lr.ph.i.i.i41.preheader
  %i.ca = add i64 %i.a, -16
  %i.cb = sub i64 %i.ca, %i.i
  %i.cc = and i64 %i.cb, -8                       ; 2 uses
  %18 = add i64 %i.cc, 8
  %i.cd = shl i64 %indvar249, 3
  %19 = sub i64 %18, %i.cd
  %i.ce = getelementptr i8, ptr %.03253.i, i64 %19
  %scevgep252 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cc
  %scevgep253 = getelementptr i8, ptr %scevgep252, i64 16
  %bound0254 = icmp ult ptr %.03253.i, %scevgep253
  %bound1255 = icmp ult ptr %.03457.i, %i.ce
  %found.conflict256 = and i1 %bound0254, %bound1255
  br i1 %found.conflict256, label %.lr.ph.i.i.i41.preheader301, label %vector.ph259

vector.ph259:                                     ; preds = %vector.memcheck247
  %n.vec260 = and i64 %i.bz, -4                   ; 3 uses
  %i.cf = shl i64 %n.vec260, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %.03253.i, i64 %i.cf ; 2 uses
  %i.ch = getelementptr i8, ptr %.03457.i, i64 %i.cf
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph259
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next275, %vector.body261 ] ; 2 uses
  %i.ci = shl i64 %index262, 3                    ; 3 uses
  %i.cj = or disjoint i64 %i.ci, 16               ; 2 uses
  %next.gep263 = getelementptr i8, ptr %.03253.i, i64 %i.ci
  %next.gep264 = getelementptr i8, ptr %.03253.i, i64 %i.cj
  %next.gep265 = getelementptr i8, ptr %.03457.i, i64 %i.ci
  %next.gep266 = getelementptr i8, ptr %.03457.i, i64 %i.cj
  %wide.vec267 = load <4 x i32>, ptr %next.gep265, align 4, !tbaa !87, !alias.scope !2305
  %wide.vec270 = load <4 x i32>, ptr %next.gep266, align 4, !tbaa !87, !alias.scope !2305
  store <4 x i32> %wide.vec267, ptr %next.gep263, align 4, !tbaa !87, !alias.scope !2308, !noalias !2305
  store <4 x i32> %wide.vec270, ptr %next.gep264, align 4, !tbaa !87, !alias.scope !2308, !noalias !2305
  %index.next275 = add nuw i64 %index262, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next275, %n.vec260
  br i1 %i.ck, label %middle.block276, label %vector.body261, !llvm.loop !2310

middle.block276:                                  ; preds = %vector.body261
  %cmp.n277 = icmp eq i64 %i.bz, %n.vec260
  br i1 %cmp.n277, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i.i.i41.preheader301

.lr.ph.i.i.i41.preheader301:                      ; preds = %vector.memcheck247, %.lr.ph.i.i.i41.preheader, %middle.block276
  %.010.i.i.i42.ph = phi ptr [ %.03253.i, %vector.memcheck247 ], [ %.03253.i, %.lr.ph.i.i.i41.preheader ], [ %i.cg, %middle.block276 ]
  %.079.i.i.i43.ph = phi ptr [ %.03457.i, %vector.memcheck247 ], [ %.03457.i, %.lr.ph.i.i.i41.preheader ], [ %i.ch, %middle.block276 ]
  br label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %.lr.ph.i.i.i41.preheader301, %.lr.ph.i.i.i41
  %.010.i.i.i42 = phi ptr [ %i.cq, %.lr.ph.i.i.i41 ], [ %.010.i.i.i42.ph, %.lr.ph.i.i.i41.preheader301 ] ; 3 uses
  %.079.i.i.i43 = phi ptr [ %i.cp, %.lr.ph.i.i.i41 ], [ %.079.i.i.i43.ph, %.lr.ph.i.i.i41.preheader301 ] ; 3 uses
  %i.cl = load i32, ptr %.079.i.i.i43, align 4, !tbaa !87
  store i32 %i.cl, ptr %.010.i.i.i42, align 4, !tbaa !292
  %i.cm = getelementptr inbounds nuw i8, ptr %.079.i.i.i43, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i.i.i42, i64 4
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !294
  %i.cp = getelementptr inbounds nuw i8, ptr %.079.i.i.i43, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i42, i64 8 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.cp, %1
  br i1 %.not.i.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i.i.i41, !llvm.loop !2311

bb.m:                                             ; preds = %.lr.ph.i34
  %i.cr = load i32, ptr %.03253.i, align 4, !tbaa !87
  %i.cs = load i32, ptr %.055.i35, align 4, !tbaa !87
  %.not42.i = icmp slt i32 %i.cr, %i.cs           ; 3 uses
  %i.ct = load i32, ptr %.03457.i, align 4, !tbaa !87
  store i32 %i.ct, ptr %.03056.i, align 4, !tbaa !292
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn52.i, i64 12 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !87
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn4154.i, i64 12
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !294
  %.03253.sink72.i = select i1 %.not42.i, ptr %.03253.i, ptr %.055.i35 ; 2 uses
  %.133.idx.i = select i1 %.not42.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 8
  %.1.i36 = getelementptr inbounds nuw i8, ptr %.055.i35, i64 %.1.idx.i ; 2 uses
  %i.cx = load i32, ptr %.03253.sink72.i, align 4, !tbaa !87
  store i32 %i.cx, ptr %.03457.i, align 4, !tbaa !292
  %i.cy = getelementptr inbounds nuw i8, ptr %.03253.sink72.i, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !87
  store i32 %i.cz, ptr %i.cu, align 4, !tbaa !294
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.da = icmp eq ptr %.034.i, %1
  %indvar.next250 = add i64 %indvar249, 1
  br i1 %i.da, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2312

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i41, %middle.block, %middle.block276, %bb.a
  %.078 = phi ptr [ %.03566.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03566.i, %middle.block ], [ %.055.i35, %middle.block276 ], [ %.1.i36, %bb.m ], [ %.055.i35, %.lr.ph.i.i.i41 ], [ %.136.i, %bb.j ] ; 2 uses
  %.076 = phi ptr [ %.03964.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03964.i, %middle.block ], [ %.03253.i, %middle.block276 ], [ %.133.i, %bb.m ], [ %.03253.i, %.lr.ph.i.i.i41 ], [ %.140.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.067.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.067.i, %middle.block ], [ %4, %middle.block276 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i41 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block276 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i41 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.ah, %middle.block ], [ %i.cg, %middle.block276 ], [ %.030.i, %bb.m ], [ %i.cq, %.lr.ph.i.i.i41 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit
  %.0106 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %.03760.i, %bb.f ] ; 5 uses
  %.028105 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.075104 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.n, %bb.f ]
  %.076103 = phi ptr [ %.076, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.078102 = phi ptr [ %.078, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i45 = icmp eq ptr %.078102, %3
  %.not36.i = icmp eq ptr %.0106, %.076103
  %or.cond.i46 = select i1 %.not.i45, i1 true, i1 %.not36.i
  br i1 %or.cond.i46, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ]
  %.028.ph.i = phi ptr [ %i.dl, %bb.o ], [ %.076103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.078102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.075104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.dd, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.de, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 5 uses
  %i.db = load i32, ptr %.028.ph.i, align 4, !tbaa !87 ; 2 uses
  %i.dc = load i32, ptr %.025.i, align 4, !tbaa !87 ; 2 uses
  %.not42.i48 = icmp slt i32 %i.db, %i.dc
  br i1 %.not42.i48, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i32 %i.dc, ptr %.030.i47, align 4, !tbaa !292
  %i.df = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !87
  %i.dh = getelementptr inbounds nuw i8, ptr %.030.i47, i64 4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !294
  %i.di = load i32, ptr %.026.i, align 4, !tbaa !87
  store i32 %i.di, ptr %.025.i, align 4, !tbaa !292
  %i.dj = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !87
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !294
  %.not44.i = icmp eq ptr %i.dd, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.n, !llvm.loop !2313

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i32 %i.db, ptr %.030.i47, align 4, !tbaa !292
  %i.dm = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !87
  %i.do = getelementptr inbounds nuw i8, ptr %.030.i47, i64 4
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !294
  %.not43.i = icmp eq ptr %i.dl, %.0106
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.outer.i, !llvm.loop !2313

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit
  %.092 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %.03050.i, %bb.l ] ; 5 uses
  %.02890 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07689 = phi ptr [ %.076, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07888 = phi ptr [ %.078, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.bo, %bb.l ] ; 3 uses
  %.not.i51 = icmp eq ptr %.07888, %3
  %.not36.i52 = icmp eq ptr %.092, %.07689
  %or.cond.i53 = select i1 %.not.i51, i1 true, i1 %.not36.i52
  br i1 %or.cond.i53, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.dr, %bb.q ], [ %.02890, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.dx, %bb.q ], [ %.07689, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07888, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.dr, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.dt, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.dp = load i32, ptr %.021.i.ph, align 4, !tbaa !87 ; 2 uses
  %i.dq = load i32, ptr %.0.i, align 4, !tbaa !87 ; 2 uses
  %.not37.i = icmp slt i32 %i.dp, %i.dq
  %i.dr = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i32 %i.dq, ptr %.024.i, align 4, !tbaa !292
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !87
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !294
  %i.dw = icmp eq ptr %i.dt, %3
  br i1 %i.dw, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !2314

bb.q:                                             ; preds = %.preheader.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.dp, ptr %.024.i, align 4, !tbaa !292
  %i.dy = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !87
  store i32 %i.dz, ptr %i.ds, align 4, !tbaa !294
  %i.ea = icmp eq ptr %i.dx, %.092
  br i1 %i.ea, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2314

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96
  %.091 = phi ptr [ %.0106, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ], [ %.0106, %.split.i ], [ %.092, %bb.p ], [ %.092, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.092, %bb.q ], [ %.0106, %bb.o ]
  %.179 = phi ptr [ %.078102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ], [ %i.dd, %.split.i ], [ %.0.i, %bb.q ], [ %.07888, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.dt, %bb.p ], [ %.026.i, %bb.o ]
  %.177 = phi ptr [ %.076103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ], [ %.028.ph.i, %.split.i ], [ %i.dx, %bb.q ], [ %.07689, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.dl, %bb.o ]
  %i.eb = phi ptr [ %.028105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ], [ %.13137.i, %.split.i ], [ %i.dr, %bb.p ], [ %.02890, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.dr, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.177, ptr %5, align 8, !tbaa !73
  store ptr %.091, ptr %6, align 8, !tbaa !73
  store ptr %.179, ptr %2, align 8, !tbaa !73
  ret ptr %i.eb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairIiiEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEES7_S7_S7_SH_NS0_7swap_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #2 comdat {
bb.a:
  %.not139 = icmp eq i64 %8, 0
  br i1 %.not139, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 3
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !2099
  br label %bb.b
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairIiiEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEES7_S7_S7_SH_NS0_7swap_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_:bb.a
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !87, !noalias !2335
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !87, !noalias !2335
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !87, !noalias !2335
  %i.di = getelementptr inbounds i8, ptr %i.dd, i64 -4 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.053.0, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !87, !noalias !2335
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !87, !noalias !2335
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !87, !noalias !2335
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !87, !noalias !2335
  %.not.i = icmp eq ptr %i.de, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28, !llvm.loop !2265

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.db, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.047.0 = phi ptr [ %i.do, %.lr.ph.i29 ], [ %.sroa.070.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dp, %.lr.ph.i29 ], [ %.sroa.065.0, %bb.v ] ; 2 uses
  %i.dm = phi ptr [ %i.dn, %.lr.ph.i29 ], [ %i.db, %bb.v ] ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -8 ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 4 uses
  %i.dq = load i64, ptr %i.dp, align 4, !noalias !2338
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !87, !noalias !2338
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !292, !noalias !2338
  %i.ds = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !87, !noalias !2338
  %i.du = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !294, !noalias !2338
  %i.dv = load i32, ptr %i.dn, align 4, !tbaa !87, !noalias !2338
  store i32 %i.dv, ptr %i.do, align 4, !tbaa !292, !noalias !2338
  %i.dw = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !87, !noalias !2338
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !294, !noalias !2338
  store i64 %i.dq, ptr %i.dn, align 4, !noalias !2338
  %.not.i30 = icmp eq ptr %i.dn, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !2341

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.sroa.065.0, %bb.w ] ; 2 uses
  %i.dy = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.db, %bb.w ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !87, !noalias !2342
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !87, !noalias !2342
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !87, !noalias !2342
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !87, !noalias !2342
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !87, !noalias !2342
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !87, !noalias !2342
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !87, !noalias !2342
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !87, !noalias !2342
  %.not.i.i31 = icmp eq ptr %i.dz, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !2265

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ea, %.lr.ph.i.i ], [ %i.db, %bb.t ], [ %i.df, %.lr.ph.i28 ], [ %.sroa.065.0, %bb.v ], [ %.sroa.065.0, %bb.w ], [ %i.dp, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2099
  %i.eh = load ptr, ptr %1, align 8, !tbaa !2099  ; 4 uses
  %.neg99 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %.neg99 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.070.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPSt4pairIiiEEES7_EEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit
  %.not9.i = icmp eq i64 %.neg99, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -8 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 2 uses
  %i.el = load <2 x i32>, ptr %i.ej, align 4, !tbaa !87
  %i.em = load <2 x i32>, ptr %i.ek, align 4, !tbaa !87
  store <2 x i32> %i.em, ptr %i.ej, align 4, !tbaa !87
  store <2 x i32> %i.el, ptr %i.ek, align 4, !tbaa !87
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.en = load ptr, ptr %2, align 8, !tbaa !2099  ; 2 uses
  %i.eo = icmp eq ptr %i.ei, %i.en
  br i1 %i.eo, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = icmp eq ptr %i.en, %i.eh
  br i1 %i.ep, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPSt4pairIiiEEES7_EEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eh, %bb.y ], [ %i.ei, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2099
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPSt4pairIiiEEES7_EEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPSt4pairIiiEEES7_EEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !2099
  %i.eq = load ptr, ptr %1, align 8, !tbaa !2099
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8 ; 2 uses
  store ptr %i.er, ptr %1, align 8, !tbaa !2099
  %i.es = icmp ne i64 %.0141, 0
  %.neg = sext i1 %i.es to i64
  %i.et = add i64 %.0141, %.neg
  %i.eu = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.eu to i64
  %i.ev = add i64 %.sroa.speculated, %.neg24
  %i.ew = add i64 %.096140, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ew, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2347

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPSt4pairIiiEEES7_EEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.ex = load ptr, ptr %6, align 8, !tbaa !2099
  store ptr %i.ex, ptr %0, align 8, !tbaa !2099
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  store ptr %4, ptr %i.b, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.e = load ptr, ptr %5, align 8, !tbaa !73     ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !73
  %i.f = load ptr, ptr %6, align 8, !tbaa !73     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.g = load ptr, ptr %2, align 8, !tbaa !73     ; 8 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !73
  %.not = icmp eq ptr %i.g, %4                    ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.f
  br i1 %i.h, label %bb.b, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = load i32, ptr %4, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %.07.i, align 4, !tbaa !87
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2277

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.l, %bb.d ] ; 9 uses
  %i.m = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.o ; 10 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !73
  br i1 %.not, label %bb.e, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread47

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread47: ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.q = call noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_(ptr noundef %.0.lcssa.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !73
  %.pre82 = load ptr, ptr %i.d, align 8, !tbaa !73
  br label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %.not.i30 = icmp eq ptr %.0.lcssa.i, %1
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i = or i1 %.not.i30, %.not40.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.p, align 4
  %i.t = load i32, ptr %.0.lcssa.i, align 4, !tbaa !87
  store i32 %i.t, ptr %i.p, align 4, !tbaa !292
  %i.u = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !294
  %i.x = load i32, ptr %i.g, align 4, !tbaa !87
  store i32 %i.x, ptr %.0.lcssa.i, align 4, !tbaa !292
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !87
  store i32 %i.z, ptr %i.u, align 4, !tbaa !294
  store i64 %i.s, ptr %i.g, align 4
  %.03049.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.03450.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.aa = icmp eq ptr %.03450.i, %1
  br i1 %i.aa, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %.03456.i = phi ptr [ %.034.i, %bb.g ], [ %.03450.i, %bb.f ] ; 9 uses
  %.03055.i = phi ptr [ %.030.i, %bb.g ], [ %.03049.i, %bb.f ] ; 4 uses
  %.054.i = phi ptr [ %.1.i, %bb.g ], [ %i.r, %bb.f ] ; 6 uses
  %.pn4153.i = phi ptr [ %.03055.i, %bb.g ], [ %i.p, %bb.f ]
  %.03252.i = phi ptr [ %.133.i, %bb.g ], [ %i.p, %bb.f ] ; 11 uses
  %.pn51.i = phi ptr [ %.03456.i, %bb.g ], [ %.0.lcssa.i, %bb.f ]
  %i.ab = icmp eq ptr %.054.i, %3
  br i1 %i.ab, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.ac = add i64 %i.a, -16
  %7 = sub i64 %i.ac, %i.m
  %8 = lshr i64 %7, 3
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 2305843009213693951
  %i.ad = add i64 %10, %9                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.ad, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %11 = add i64 %i.a, -16
  %12 = sub i64 %11, %i.m
  %13 = and i64 %12, -8                           ; 2 uses
  %i.ae = getelementptr i8, ptr %.0.lcssa.i, i64 %13
  %scevgep = getelementptr i8, ptr %i.ae, i64 16
  %i.af = add i64 %13, 8
  %i.ag = shl i64 %indvar, 3
  %i.ah = sub i64 %i.af, %i.ag
  %scevgep149 = getelementptr i8, ptr %.03252.i, i64 %i.ah
  %bound0 = icmp ult ptr %.03456.i, %scevgep149
  %bound1 = icmp ult ptr %.03252.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, -2                      ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %.03252.i, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %.03456.i, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03252.i, i64 %i.al ; 2 uses
  %next.gep150 = getelementptr i8, ptr %.03456.i, i64 %i.al ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep150, align 4, !tbaa !87, !alias.scope !2348, !noalias !2351
  %wide.vec152 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !87, !alias.scope !2351
  store <4 x i32> %wide.vec152, ptr %next.gep150, align 4, !tbaa !87, !alias.scope !2348, !noalias !2351
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !2351
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2353

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i.i.i.preheader181

.lr.ph.i.i.i.preheader181:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03252.i, %vector.memcheck ], [ %.03252.i, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.03456.i, %vector.memcheck ], [ %.03456.i, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader181, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader181 ] ; 4 uses
  %.079.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader181 ] ; 4 uses
  %i.an = load i32, ptr %.079.i.i.i, align 4, !tbaa !87
  %i.ao = load i32, ptr %.010.i.i.i, align 4, !tbaa !87
  store i32 %i.ao, ptr %.079.i.i.i, align 4, !tbaa !87
  store i32 %i.an, ptr %.010.i.i.i, align 4, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !87
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !87
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !87
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2354

bb.g:                                             ; preds = %.lr.ph.i31
  %i.av = load i32, ptr %.054.i, align 4, !tbaa !87
  %i.aw = load i32, ptr %.03252.i, align 4, !tbaa !87
  %i.ax = icmp slt i32 %i.av, %i.aw               ; 3 uses
  %i.ay = load i64, ptr %.03055.i, align 4
  %i.az = load i32, ptr %.03456.i, align 4, !tbaa !87
  store i32 %i.az, ptr %.03055.i, align 4, !tbaa !292
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn51.i, i64 12 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn4153.i, i64 12
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !294
  %.03252.sink72.i = select i1 %i.ax, ptr %.054.i, ptr %.03252.i ; 3 uses
  %.133.idx.i = select i1 %i.ax, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.ax, i64 8, i64 0
  %.1.i = getelementptr inbounds nuw i8, ptr %.054.i, i64 %.1.idx.i ; 2 uses
  %i.bd = load i32, ptr %.03252.sink72.i, align 4, !tbaa !87
  store i32 %i.bd, ptr %.03456.i, align 4, !tbaa !292
  %i.be = getelementptr inbounds nuw i8, ptr %.03252.sink72.i, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !87
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !294
  store i64 %i.ay, ptr %.03252.sink72.i, align 4
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 8 ; 2 uses
  %i.bg = icmp eq ptr %.034.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bg, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i31, !llvm.loop !2355

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i: ; preds = %bb.g, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.03248.i = phi ptr [ %.03252.i, %middle.block ], [ %i.p, %bb.f ], [ %.03252.i, %.lr.ph.i.i.i ], [ %.133.i, %bb.g ] ; 2 uses
  %.046.i = phi ptr [ %.054.i, %middle.block ], [ %i.r, %bb.f ], [ %.054.i, %.lr.ph.i.i.i ], [ %.1.i, %bb.g ] ; 2 uses
  %.2.i = phi ptr [ %i.aj, %middle.block ], [ %.03049.i, %bb.f ], [ %i.au, %.lr.ph.i.i.i ], [ %.030.i, %bb.g ]
  store ptr %.046.i, ptr %i.d, align 8, !tbaa !73
  store ptr %.03248.i, ptr %i.c, align 8, !tbaa !73
  br label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit: ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, %bb.a
  %i.bh = phi ptr [ %i.g, %bb.a ], [ %.046.i, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ] ; 4 uses
  %i.bi = phi ptr [ %i.e, %bb.a ], [ %.03248.i, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ] ; 4 uses
  %.028 = phi ptr [ %0, %bb.a ], [ %1, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ] ; 3 uses
  %.0 = phi ptr [ %i.f, %bb.a ], [ %.2.i, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ] ; 6 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread47, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit
  %i.bj = phi ptr [ %.pre82, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread47 ], [ %i.bh, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit ] ; 3 uses
  %i.bk = phi ptr [ %.pre, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread47 ], [ %i.bi, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit ] ; 3 uses
  %.051 = phi ptr [ %i.q, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread47 ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit ] ; 5 uses
  %.02850 = phi ptr [ %1, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread47 ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit ] ; 2 uses
  %.not.i32 = icmp eq ptr %i.bj, %3
  %.not36.i = icmp eq ptr %.051, %i.bk
  %or.cond.i33 = select i1 %.not.i32, i1 true, i1 %.not36.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !73
  br label %.outer.i

.outer.i:                                         ; preds = %bb.k, %bb.i
  %.030.ph.i = phi ptr [ %.131.i, %bb.k ], [ %.02850, %bb.i ]
  %.028.ph.i = phi ptr [ %i.by, %bb.k ], [ %i.bk, %bb.i ] ; 5 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.k ], [ %i.bj, %bb.i ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.k ], [ %i.bl, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i, %.outer.i
  %.030.i34 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 8 uses
  %.026.i = phi ptr [ %i.bp, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 6 uses
  %.025.i = phi ptr [ %i.bq, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 5 uses
  %i.bm = load i32, ptr %.025.i, align 4, !tbaa !87 ; 2 uses
  %i.bn = load i32, ptr %.028.ph.i, align 4, !tbaa !87 ; 2 uses
  %i.bo = icmp slt i32 %i.bm, %i.bn
  br i1 %i.bo, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.br = load i64, ptr %.030.i34, align 4
  store i32 %i.bm, ptr %.030.i34, align 4, !tbaa !292
  %i.bs = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.bu = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !294
  %i.bv = load i32, ptr %.026.i, align 4, !tbaa !87
  store i32 %i.bv, ptr %.025.i, align 4, !tbaa !292
  %i.bw = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !87
  store i32 %i.bx, ptr %i.bs, align 4, !tbaa !294
  store i64 %i.br, ptr %.026.i, align 4
  %.not43.i = icmp eq ptr %i.bp, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %bb.j, !llvm.loop !2356

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %i.bz = load i32, ptr %.030.i34, align 4, !tbaa !87
  store i32 %i.bn, ptr %.030.i34, align 4, !tbaa !87
  store i32 %i.bz, ptr %.028.ph.i, align 4, !tbaa !87
  %i.ca = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !87
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !87
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !87
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !87
  %.not42.i = icmp eq ptr %i.by, %.051
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %.outer.i, !llvm.loop !2356

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread: ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit
  %.not.i36 = icmp eq ptr %i.bh, %3
  %.not36.i37 = icmp eq ptr %.0, %i.bi
  %or.cond.i38 = select i1 %.not.i36, i1 true, i1 %.not36.i37
  br i1 %or.cond.i38, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread, %bb.m
  %.024.i.ph = phi ptr [ %i.ch, %bb.m ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cp, %bb.m ], [ %i.bi, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.m ], [ %i.bh, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.l
  %.024.i = phi ptr [ %i.ch, %bb.l ], [ %.024.i.ph, %.preheader.i.outer ] ; 5 uses
  %.0.i = phi ptr [ %i.ck, %bb.l ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.ce = load i32, ptr %.0.i, align 4, !tbaa !87 ; 2 uses
  %i.cf = load i32, ptr %.021.i.ph, align 4, !tbaa !87 ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.ci = load i32, ptr %.024.i, align 4, !tbaa !87 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i32 %i.ce, ptr %.024.i, align 4, !tbaa !87
  store i32 %i.ci, ptr %.0.i, align 4, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cj, align 4, !tbaa !87
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !87
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !87
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !87
  %i.co = icmp eq ptr %i.ck, %3
  br i1 %i.co, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %.preheader.i, !llvm.loop !2357

bb.m:                                             ; preds = %.preheader.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.cf, ptr %.024.i, align 4, !tbaa !87
  store i32 %i.ci, ptr %.021.i.ph, align 4, !tbaa !87
  %i.cq = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cj, align 4, !tbaa !87
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !87
  store i32 %i.cs, ptr %i.cj, align 4, !tbaa !87
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !87
  %i.ct = icmp eq ptr %i.cp, %.0
  br i1 %i.ct, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2357

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_.exit: ; preds = %bb.k, %.split.i, %bb.l, %bb.m, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread, %bb.e, %bb.h
  %i.cu = phi ptr [ %.0.i, %bb.m ], [ %i.bj, %bb.h ], [ %i.bp, %.split.i ], [ %i.bh, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread ], [ %i.g, %bb.e ], [ %i.ck, %bb.l ], [ %.026.i, %bb.k ]
  %i.cv = phi ptr [ %i.cp, %bb.m ], [ %i.bk, %bb.h ], [ %.028.ph.i, %.split.i ], [ %i.bi, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread ], [ %i.p, %bb.e ], [ %.021.i.ph, %bb.l ], [ %i.by, %bb.k ]
  %.045 = phi ptr [ %.0, %bb.l ], [ %.051, %bb.h ], [ %.051, %.split.i ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread ], [ %i.p, %bb.e ], [ %.0, %bb.m ], [ %.051, %bb.k ]
  %i.cw = phi ptr [ %i.ch, %bb.l ], [ %.02850, %bb.h ], [ %.13137.i, %.split.i ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_RSF_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %i.ch, %bb.m ], [ %.131.i, %bb.k ]
  store ptr %i.cv, ptr %5, align 8, !tbaa !73
  store ptr %.045, ptr %6, align 8, !tbaa !73
  store ptr %i.cu, ptr %2, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret ptr %i.cw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !73     ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !73     ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !73     ; 13 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.08.i, align 4, !tbaa !87
  %.not6.i = icmp slt i32 %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2296

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 14 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 18 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.l, align 4
  %i.p = load i32, ptr %.0.lcssa.i, align 4, !tbaa !87
  store i32 %i.p, ptr %i.l, align 4, !tbaa !292
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !294
  %i.t = load i32, ptr %4, align 4, !tbaa !87
  store i32 %i.t, ptr %.0.lcssa.i, align 4, !tbaa !292
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !87
  store i32 %i.v, ptr %i.q, align 4, !tbaa !294
  %i.w = load i32, ptr %i.d, align 4, !tbaa !87
  store i32 %i.w, ptr %4, align 4, !tbaa !292
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  store i32 %i.y, ptr %i.u, align 4, !tbaa !294
  store i64 %i.o, ptr %i.d, align 4
  %.03760.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.04161.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4862.i = icmp eq ptr %.04161.i, %1
  br i1 %.not4862.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04169.i = phi ptr [ %.041.i, %bb.j ], [ %.04161.i, %bb.f ] ; 11 uses
  %.03768.i = phi ptr [ %.037.i, %bb.j ], [ %.03760.i, %bb.f ] ; 6 uses
  %.067.i = phi ptr [ %.1.i, %bb.j ], [ %i.n, %bb.f ] ; 8 uses
  %.03566.i = phi ptr [ %.136.i, %bb.j ], [ %i.m, %bb.f ] ; 8 uses
  %.pn4965.i = phi ptr [ %.03768.i, %bb.j ], [ %i.l, %bb.f ] ; 2 uses
  %.03964.i = phi ptr [ %.140.i, %bb.j ], [ %i.l, %bb.f ] ; 14 uses
  %.pn63.i = phi ptr [ %.04169.i, %bb.j ], [ %.0.lcssa.i, %bb.f ] ; 2 uses
  %i.z = icmp eq ptr %.03566.i, %3
  br i1 %i.z, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.aa = add i64 %i.a, -16
  %8 = sub i64 %i.aa, %i.i
  %9 = lshr i64 %8, 3
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 2305843009213693951
  %i.ab = add i64 %11, %10                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader306, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %12 = add i64 %i.a, -16
  %13 = sub i64 %12, %i.i
  %14 = and i64 %13, -8                           ; 2 uses
  %i.ac = getelementptr i8, ptr %.0.lcssa.i, i64 %14
  %scevgep = getelementptr i8, ptr %i.ac, i64 16
  %i.ad = add i64 %14, 8
  %i.ae = shl i64 %indvar, 3
  %i.af = sub i64 %i.ad, %i.ae
  %scevgep237 = getelementptr i8, ptr %.03964.i, i64 %i.af
  %bound0 = icmp ult ptr %.04169.i, %scevgep237
  %bound1 = icmp ult ptr %.03964.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader306, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, -2                      ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %.03964.i, i64 %i.ag ; 2 uses
  %i.ai = getelementptr i8, ptr %.04169.i, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03964.i, i64 %i.aj ; 2 uses
  %next.gep238 = getelementptr i8, ptr %.04169.i, i64 %i.aj ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep238, align 4, !tbaa !87, !alias.scope !2358, !noalias !2361
  %wide.vec240 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !87, !alias.scope !2361
  store <4 x i32> %wide.vec240, ptr %next.gep238, align 4, !tbaa !87, !alias.scope !2358, !noalias !2361
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !2361
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !2363

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i.i.i.preheader306

.lr.ph.i.i.i.preheader306:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03964.i, %vector.memcheck ], [ %.03964.i, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04169.i, %vector.memcheck ], [ %.04169.i, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader306, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader306 ] ; 4 uses
  %.079.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader306 ] ; 4 uses
  %i.al = load i32, ptr %.079.i.i.i, align 4, !tbaa !87
  %i.am = load i32, ptr %.010.i.i.i, align 4, !tbaa !87
  store i32 %i.am, ptr %.079.i.i.i, align 4, !tbaa !87
  store i32 %i.al, ptr %.010.i.i.i, align 4, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !87
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !87
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !87
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !2364

bb.g:                                             ; preds = %.lr.ph.i31
  %i.at = load i32, ptr %.03964.i, align 4, !tbaa !87
  %i.au = load i32, ptr %.067.i, align 4, !tbaa !87
  %.not50.i = icmp slt i32 %i.at, %i.au
  br i1 %.not50.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.03566.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.ax = load i64, ptr %.03768.i, align 4
  %i.ay = load i32, ptr %.04169.i, align 4, !tbaa !87
  store i32 %i.ay, ptr %.03768.i, align 4, !tbaa !292
  %i.az = getelementptr inbounds nuw i8, ptr %.pn63.i, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !87
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn4965.i, i64 12
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !294
  %i.bc = load i32, ptr %.067.i, align 4, !tbaa !87
  store i32 %i.bc, ptr %.04169.i, align 4, !tbaa !292
  %i.bd = getelementptr inbounds nuw i8, ptr %.067.i, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !87
  store i32 %i.be, ptr %i.az, align 4, !tbaa !294
  %i.bf = load i32, ptr %.03566.i, align 4, !tbaa !87
  store i32 %i.bf, ptr %.067.i, align 4, !tbaa !292
  %i.bg = getelementptr inbounds nuw i8, ptr %.03566.i, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !87
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !294
  store i64 %i.ax, ptr %.03566.i, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.03964.i, i64 8
  %i.bj = load i64, ptr %.03768.i, align 4
  %i.bk = load i32, ptr %.04169.i, align 4, !tbaa !87
  store i32 %i.bk, ptr %.03768.i, align 4, !tbaa !292
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn63.i, i64 12 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !87
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn4965.i, i64 12
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !294
  %i.bo = load i32, ptr %.03964.i, align 4, !tbaa !87
  store i32 %i.bo, ptr %.04169.i, align 4, !tbaa !292
  %i.bp = getelementptr inbounds nuw i8, ptr %.03964.i, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !87
  store i32 %i.bq, ptr %i.bl, align 4, !tbaa !294
  store i64 %i.bj, ptr %.03964.i, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03964.i, %bb.h ], [ %i.bi, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.av, %bb.h ], [ %.03566.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.aw, %bb.h ], [ %.067.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03768.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04169.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2365

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.l, align 4
  %i.bt = load i32, ptr %.0.lcssa.i, align 4, !tbaa !87
  store i32 %i.bt, ptr %i.l, align 4, !tbaa !292
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !87
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !294
  %i.bx = load i32, ptr %i.d, align 4, !tbaa !87
  store i32 %i.bx, ptr %.0.lcssa.i, align 4, !tbaa !292
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !87
  store i32 %i.bz, ptr %i.bu, align 4, !tbaa !294
  store i64 %i.bs, ptr %i.d, align 4
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.ca = icmp eq ptr %.03451.i, %1
  br i1 %i.ca, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar246 = phi i64 [ %indvar.next247, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03457.i = phi ptr [ %.034.i, %bb.m ], [ %.03451.i, %bb.l ] ; 9 uses
  %.03056.i = phi ptr [ %.030.i, %bb.m ], [ %.03050.i, %bb.l ] ; 4 uses
  %.055.i35 = phi ptr [ %.1.i36, %bb.m ], [ %i.br, %bb.l ] ; 6 uses
  %.pn4154.i = phi ptr [ %.03056.i, %bb.m ], [ %i.l, %bb.l ]
  %.03253.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 11 uses
  %.pn52.i = phi ptr [ %.03457.i, %bb.m ], [ %.0.lcssa.i, %bb.l ]
  %i.cb = icmp eq ptr %.055.i35, %3
  br i1 %i.cb, label %.lr.ph.i.i.i41.preheader, label %bb.m

.lr.ph.i.i.i41.preheader:                         ; preds = %.lr.ph.i34
  %i.cc = add i64 %i.a, -16
  %15 = sub i64 %i.cc, %i.i
  %16 = lshr i64 %15, 3
  %17 = add nuw nsw i64 %16, 1
  %18 = mul i64 %indvar246, 2305843009213693951
  %i.cd = add i64 %18, %17                        ; 3 uses
  %min.iters.check256 = icmp ult i64 %i.cd, 14
  br i1 %min.iters.check256, label %.lr.ph.i.i.i41.preheader299, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i.i.i41.preheader
  %19 = add i64 %i.a, -16
  %20 = sub i64 %19, %i.i
  %21 = and i64 %20, -8                           ; 2 uses
  %i.ce = getelementptr i8, ptr %.0.lcssa.i, i64 %21
  %scevgep248 = getelementptr i8, ptr %i.ce, i64 16
  %i.cf = add i64 %21, 8
  %i.cg = shl i64 %indvar246, 3
  %i.ch = sub i64 %i.cf, %i.cg
  %scevgep251 = getelementptr i8, ptr %.03253.i, i64 %i.ch
  %bound0252 = icmp ult ptr %.03457.i, %scevgep251
  %bound1253 = icmp ult ptr %.03253.i, %scevgep248
  %found.conflict254 = and i1 %bound0252, %bound1253
  br i1 %found.conflict254, label %.lr.ph.i.i.i41.preheader299, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck245
  %n.vec258 = and i64 %i.cd, -2                   ; 3 uses
  %i.ci = shl i64 %n.vec258, 3                    ; 2 uses
  %i.cj = getelementptr i8, ptr %.03253.i, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %.03457.i, i64 %i.ci
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next271, %vector.body259 ] ; 2 uses
  %i.cl = shl i64 %index260, 3                    ; 2 uses
  %next.gep261 = getelementptr i8, ptr %.03253.i, i64 %i.cl ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.03457.i, i64 %i.cl ; 2 uses
  %wide.vec263 = load <4 x i32>, ptr %next.gep262, align 4, !tbaa !87, !alias.scope !2366, !noalias !2369
  %wide.vec266 = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !87, !alias.scope !2369
  store <4 x i32> %wide.vec266, ptr %next.gep262, align 4, !tbaa !87, !alias.scope !2366, !noalias !2369
  store <4 x i32> %wide.vec263, ptr %next.gep261, align 4, !tbaa !87, !alias.scope !2369
  %index.next271 = add nuw i64 %index260, 2       ; 2 uses
  %i.cm = icmp eq i64 %index.next271, %n.vec258
  br i1 %i.cm, label %middle.block272, label %vector.body259, !llvm.loop !2371

middle.block272:                                  ; preds = %vector.body259
  %cmp.n273 = icmp eq i64 %i.cd, %n.vec258
  br i1 %cmp.n273, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i.i.i41.preheader299

.lr.ph.i.i.i41.preheader299:                      ; preds = %vector.memcheck245, %.lr.ph.i.i.i41.preheader, %middle.block272
  %.010.i.i.i42.ph = phi ptr [ %.03253.i, %vector.memcheck245 ], [ %.03253.i, %.lr.ph.i.i.i41.preheader ], [ %i.cj, %middle.block272 ]
  %.079.i.i.i43.ph = phi ptr [ %.03457.i, %vector.memcheck245 ], [ %.03457.i, %.lr.ph.i.i.i41.preheader ], [ %i.ck, %middle.block272 ]
  br label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %.lr.ph.i.i.i41.preheader299, %.lr.ph.i.i.i41
  %.010.i.i.i42 = phi ptr [ %i.cu, %.lr.ph.i.i.i41 ], [ %.010.i.i.i42.ph, %.lr.ph.i.i.i41.preheader299 ] ; 4 uses
  %.079.i.i.i43 = phi ptr [ %i.ct, %.lr.ph.i.i.i41 ], [ %.079.i.i.i43.ph, %.lr.ph.i.i.i41.preheader299 ] ; 4 uses
  %i.cn = load i32, ptr %.079.i.i.i43, align 4, !tbaa !87
  %i.co = load i32, ptr %.010.i.i.i42, align 4, !tbaa !87
  store i32 %i.co, ptr %.079.i.i.i43, align 4, !tbaa !87
  store i32 %i.cn, ptr %.010.i.i.i42, align 4, !tbaa !87
  %i.cp = getelementptr inbounds nuw i8, ptr %.079.i.i.i43, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i42, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !87
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !87
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !87
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %.079.i.i.i43, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.010.i.i.i42, i64 8 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.ct, %1
  br i1 %.not.i.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i.i.i41, !llvm.loop !2372

bb.m:                                             ; preds = %.lr.ph.i34
  %i.cv = load i32, ptr %.03253.i, align 4, !tbaa !87
  %i.cw = load i32, ptr %.055.i35, align 4, !tbaa !87
  %.not42.i = icmp slt i32 %i.cv, %i.cw           ; 3 uses
  %i.cx = load i64, ptr %.03056.i, align 4
  %i.cy = load i32, ptr %.03457.i, align 4, !tbaa !87
  store i32 %i.cy, ptr %.03056.i, align 4, !tbaa !292
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn52.i, i64 12 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !87
  %i.db = getelementptr inbounds nuw i8, ptr %.pn4154.i, i64 12
  store i32 %i.da, ptr %i.db, align 4, !tbaa !294
  %.03253.sink73.i = select i1 %.not42.i, ptr %.03253.i, ptr %.055.i35 ; 3 uses
  %.133.idx.i = select i1 %.not42.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 8
  %.1.i36 = getelementptr inbounds nuw i8, ptr %.055.i35, i64 %.1.idx.i ; 2 uses
  %i.dc = load i32, ptr %.03253.sink73.i, align 4, !tbaa !87
  store i32 %i.dc, ptr %.03457.i, align 4, !tbaa !292
  %i.dd = getelementptr inbounds nuw i8, ptr %.03253.sink73.i, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !87
  store i32 %i.de, ptr %i.cz, align 4, !tbaa !294
  store i64 %i.cx, ptr %.03253.sink73.i, align 4
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.df = icmp eq ptr %.034.i, %1
  %indvar.next247 = add i64 %indvar246, 1
  br i1 %i.df, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2373

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i41, %middle.block, %middle.block272, %bb.a
  %.078 = phi ptr [ %.03566.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03566.i, %middle.block ], [ %.055.i35, %middle.block272 ], [ %.1.i36, %bb.m ], [ %.055.i35, %.lr.ph.i.i.i41 ], [ %.136.i, %bb.j ] ; 2 uses
  %.076 = phi ptr [ %.03964.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03964.i, %middle.block ], [ %.03253.i, %middle.block272 ], [ %.133.i, %bb.m ], [ %.03253.i, %.lr.ph.i.i.i41 ], [ %.140.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.067.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.067.i, %middle.block ], [ %4, %middle.block272 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i41 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block272 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i41 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.ah, %middle.block ], [ %i.cj, %middle.block272 ], [ %.030.i, %bb.m ], [ %i.cu, %.lr.ph.i.i.i41 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit
  %.0106 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %.03760.i, %bb.f ] ; 5 uses
  %.028105 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.075104 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.n, %bb.f ]
  %.076103 = phi ptr [ %.076, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.078102 = phi ptr [ %.078, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i45 = icmp eq ptr %.078102, %3
  %.not36.i = icmp eq ptr %.0106, %.076103
  %or.cond.i46 = select i1 %.not.i45, i1 true, i1 %.not36.i
  br i1 %or.cond.i46, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ]
  %.028.ph.i = phi ptr [ %i.dr, %bb.o ], [ %.076103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ] ; 5 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.078102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.075104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 8 uses
  %.026.i = phi ptr [ %i.di, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 6 uses
  %.025.i = phi ptr [ %i.dj, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 5 uses
  %i.dg = load i32, ptr %.028.ph.i, align 4, !tbaa !87 ; 2 uses
  %i.dh = load i32, ptr %.025.i, align 4, !tbaa !87 ; 2 uses
  %.not42.i48 = icmp slt i32 %i.dg, %i.dh
  br i1 %.not42.i48, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.dk = load i64, ptr %.030.i47, align 4
  store i32 %i.dh, ptr %.030.i47, align 4, !tbaa !292
  %i.dl = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %.030.i47, i64 4
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !294
  %i.do = load i32, ptr %.026.i, align 4, !tbaa !87
  store i32 %i.do, ptr %.025.i, align 4, !tbaa !292
  %i.dp = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !294
  store i64 %i.dk, ptr %.026.i, align 4
  %.not44.i = icmp eq ptr %i.di, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.n, !llvm.loop !2374

bb.o:                                             ; preds = %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %i.ds = load i32, ptr %.030.i47, align 4, !tbaa !87
  store i32 %i.dg, ptr %.030.i47, align 4, !tbaa !87
  store i32 %i.ds, ptr %.028.ph.i, align 4, !tbaa !87
  %i.dt = getelementptr inbounds nuw i8, ptr %.030.i47, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !87
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !87
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !87
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !87
  %.not43.i = icmp eq ptr %i.dr, %.0106
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.outer.i, !llvm.loop !2374

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit
  %.092 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %.03050.i, %bb.l ] ; 5 uses
  %.02890 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07689 = phi ptr [ %.076, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07888 = phi ptr [ %.078, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.br, %bb.l ] ; 3 uses
  %.not.i51 = icmp eq ptr %.07888, %3
  %.not36.i52 = icmp eq ptr %.092, %.07689
  %or.cond.i53 = select i1 %.not.i51, i1 true, i1 %.not36.i52
  br i1 %or.cond.i53, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.dz, %bb.q ], [ %.02890, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.eh, %bb.q ], [ %.07689, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07888, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.dz, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 5 uses
  %.0.i = phi ptr [ %i.ec, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.dx = load i32, ptr %.021.i.ph, align 4, !tbaa !87 ; 2 uses
  %i.dy = load i32, ptr %.0.i, align 4, !tbaa !87 ; 2 uses
  %.not37.i = icmp slt i32 %i.dx, %i.dy
  %i.dz = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.ea = load i32, ptr %.024.i, align 4, !tbaa !87 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i32 %i.dy, ptr %.024.i, align 4, !tbaa !87
  store i32 %i.ea, ptr %.0.i, align 4, !tbaa !87
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !87
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !87
  store i32 %i.ef, ptr %i.eb, align 4, !tbaa !87
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !87
  %i.eg = icmp eq ptr %i.ec, %3
  br i1 %i.eg, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !2375

bb.q:                                             ; preds = %.preheader.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.dx, ptr %.024.i, align 4, !tbaa !87
  store i32 %i.ea, ptr %.021.i.ph, align 4, !tbaa !87
  %i.ei = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ej = load i32, ptr %i.eb, align 4, !tbaa !87
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !87
  store i32 %i.ek, ptr %i.eb, align 4, !tbaa !87
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !87
  %i.el = icmp eq ptr %i.eh, %.092
  br i1 %i.el, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2375

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96
  %.091 = phi ptr [ %.0106, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ], [ %.0106, %.split.i ], [ %.092, %bb.p ], [ %.092, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.092, %bb.q ], [ %.0106, %bb.o ]
  %.179 = phi ptr [ %.078102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ], [ %i.di, %.split.i ], [ %.0.i, %bb.q ], [ %.07888, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.ec, %bb.p ], [ %.026.i, %bb.o ]
  %.177 = phi ptr [ %.076103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ], [ %.028.ph.i, %.split.i ], [ %i.eh, %bb.q ], [ %.07689, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.dr, %bb.o ]
  %i.em = phi ptr [ %.028105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread96 ], [ %.13137.i, %.split.i ], [ %i.dz, %bb.p ], [ %.02890, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.dz, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.177, ptr %5, align 8, !tbaa !73
  store ptr %.091, ptr %6, align 8, !tbaa !73
  store ptr %.179, ptr %2, align 8, !tbaa !73
  ret ptr %i.em
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_T_SG_RT0_SH_SI_RSF_T2_T3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !73     ; 8 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !73     ; 5 uses
  %.not = icmp eq ptr %0, %1
  %.not47 = icmp eq ptr %i.d, %3
  %or.cond = select i1 %.not, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !73     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.c, align 4
  %i.i = load i32, ptr %0, align 4, !tbaa !87
  store i32 %i.i, ptr %i.c, align 4, !tbaa !292
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !294
  %i.m = load i32, ptr %i.e, align 4, !tbaa !87
  store i32 %i.m, ptr %0, align 4, !tbaa !292
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !87
  store i32 %i.o, ptr %i.j, align 4, !tbaa !294
  %i.p = load i32, ptr %i.d, align 4, !tbaa !87
  store i32 %i.p, ptr %i.e, align 4, !tbaa !292
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87
  store i32 %i.r, ptr %i.n, align 4, !tbaa !294
  store i64 %i.h, ptr %i.d, align 4
  %.03759 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.04160 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4861 = icmp eq ptr %.04160, %1
  br i1 %.not4861, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %.04168 = phi ptr [ %.041, %bb.f ], [ %.04160, %bb.b ] ; 11 uses
  %.03767 = phi ptr [ %.037, %bb.f ], [ %.03759, %bb.b ] ; 6 uses
  %.066 = phi ptr [ %.1, %bb.f ], [ %i.g, %bb.b ] ; 8 uses
  %.03565 = phi ptr [ %.136, %bb.f ], [ %i.f, %bb.b ] ; 8 uses
  %.pn4964 = phi ptr [ %.03767, %bb.f ], [ %i.c, %bb.b ] ; 2 uses
  %.03963 = phi ptr [ %.140, %bb.f ], [ %i.c, %bb.b ] ; 14 uses
  %.pn62 = phi ptr [ %.04168, %bb.f ], [ %0, %bb.b ] ; 2 uses
  %i.s = icmp eq ptr %.03565, %3
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %bb.c

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.t = add i64 %i.b, -16
  %6 = sub i64 %i.t, %i.a
  %7 = lshr i64 %6, 3
  %8 = add nuw nsw i64 %7, 1
  %9 = mul i64 %indvar, 2305843009213693951
  %i.u = add i64 %9, %8                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader100, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %10 = add i64 %i.b, -16
  %11 = sub i64 %10, %i.a
  %12 = and i64 %11, -8                           ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %12
  %scevgep = getelementptr i8, ptr %i.v, i64 16
  %i.w = add i64 %12, 8
  %i.x = shl i64 %indvar, 3
  %i.y = sub i64 %i.w, %i.x
  %scevgep92 = getelementptr i8, ptr %.03963, i64 %i.y
  %bound0 = icmp ult ptr %.04168, %scevgep92
  %bound1 = icmp ult ptr %.03963, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader100, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -2                       ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03963, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.04168, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963, i64 %i.ac ; 2 uses
  %next.gep93 = getelementptr i8, ptr %.04168, i64 %i.ac ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !87, !alias.scope !2376, !noalias !2379
  %wide.vec95 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !87, !alias.scope !2379
  store <4 x i32> %wide.vec95, ptr %next.gep93, align 4, !tbaa !87, !alias.scope !2376, !noalias !2379
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !2379
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !2381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader100

.lr.ph.i.i.preheader100:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03963, %vector.memcheck ], [ %.03963, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04168, %vector.memcheck ], [ %.04168, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader100, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader100 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader100 ] ; 4 uses
  %i.ae = load i32, ptr %.079.i.i, align 4, !tbaa !87
  %i.af = load i32, ptr %.010.i.i, align 4, !tbaa !87
  store i32 %i.af, ptr %.079.i.i, align 4, !tbaa !87
  store i32 %i.ae, ptr %.010.i.i, align 4, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !87
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !87
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !87
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2382

bb.c:                                             ; preds = %.lr.ph
  %i.am = load i32, ptr %.066, align 4, !tbaa !87
  %i.an = load i32, ptr %.03963, align 4, !tbaa !87
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.03565, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.066, i64 8
  %i.ar = load i64, ptr %.03767, align 4
  %i.as = load i32, ptr %.04168, align 4, !tbaa !87
  store i32 %i.as, ptr %.03767, align 4, !tbaa !292
  %i.at = getelementptr inbounds nuw i8, ptr %.pn62, i64 12 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %.pn4964, i64 12
  store i32 %i.au, ptr %i.av, align 4, !tbaa !294
  %i.aw = load i32, ptr %.066, align 4, !tbaa !87
  store i32 %i.aw, ptr %.04168, align 4, !tbaa !292
  %i.ax = getelementptr inbounds nuw i8, ptr %.066, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !87
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !294
  %i.az = load i32, ptr %.03565, align 4, !tbaa !87
  store i32 %i.az, ptr %.066, align 4, !tbaa !292
  %i.ba = getelementptr inbounds nuw i8, ptr %.03565, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !87
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !294
  store i64 %i.ar, ptr %.03565, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %.03963, i64 8
  %i.bd = load i64, ptr %.03767, align 4
  %i.be = load i32, ptr %.04168, align 4, !tbaa !87
  store i32 %i.be, ptr %.03767, align 4, !tbaa !292
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn62, i64 12 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn4964, i64 12
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !294
  %i.bi = load i32, ptr %.03963, align 4, !tbaa !87
  store i32 %i.bi, ptr %.04168, align 4, !tbaa !292
  %i.bj = getelementptr inbounds nuw i8, ptr %.03963, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !87
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !294
  store i64 %i.bd, ptr %.03963, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.140 = phi ptr [ %.03963, %bb.d ], [ %i.bc, %bb.e ] ; 2 uses
  %.136 = phi ptr [ %i.ap, %bb.d ], [ %.03565, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.aq, %bb.d ], [ %.066, %bb.e ] ; 2 uses
  %.037 = getelementptr inbounds nuw i8, ptr %.03767, i64 8 ; 2 uses
  %.041 = getelementptr inbounds nuw i8, ptr %.04168, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %.041, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph, !llvm.loop !2383

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %bb.f, %.lr.ph.i.i, %middle.block, %bb.b
  %.03958 = phi ptr [ %.03963, %middle.block ], [ %i.c, %bb.b ], [ %.03963, %.lr.ph.i.i ], [ %.140, %bb.f ]
  %.03556 = phi ptr [ %.03565, %middle.block ], [ %i.f, %bb.b ], [ %.03565, %.lr.ph.i.i ], [ %.136, %bb.f ]
  %.054 = phi ptr [ %.066, %middle.block ], [ %i.g, %bb.b ], [ %.066, %.lr.ph.i.i ], [ %.1, %bb.f ]
  %.2 = phi ptr [ %i.aa, %middle.block ], [ %.03759, %bb.b ], [ %i.al, %.lr.ph.i.i ], [ %.037, %bb.f ]
  store ptr %.03556, ptr %2, align 8, !tbaa !73
  store ptr %.03958, ptr %5, align 8, !tbaa !73
  store ptr %.054, ptr %4, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.a
  %.3 = phi ptr [ %.2, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.c, %bb.a ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !2169, !range !2175, !noundef !197
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp eq ptr %1, %2                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds i8, ptr %1, i64 -8
  %i.e = load i32, ptr %1, align 4, !tbaa !87
  %i.f = load i32, ptr %i.d, align 4, !tbaa !87
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.preheader.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_.exit.sink.split

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.h = ptrtoint ptr %2 to i64
  %.pre43 = load i32, ptr %0, align 4, !tbaa !87
  br label %.lr.ph.i.i

.lr.ph.i.i.loopexit:                              ; preds = %bb.f
  br label %.lr.ph.i.i, !llvm.loop !2384

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.loopexit, %.lr.ph.i.preheader.i
  %i.i = phi i32 [ %.pre43, %.lr.ph.i.preheader.i ], [ %i.v, %.lr.ph.i.i.loopexit ]
  %.033.i = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %.114.i.i, %.lr.ph.i.i.loopexit ] ; 3 uses
  %.030.i = phi ptr [ %0, %.lr.ph.i.preheader.i ], [ %i.t, %.lr.ph.i.i.loopexit ]
  %i.j = ptrtoint ptr %.033.i to i64
  %i.k = sub i64 %i.h, %i.j
  %i.l = ashr exact i64 %i.k, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %.1.i.i, %bb.e ] ; 2 uses
  %.01316.i.i = phi ptr [ %.033.i, %.lr.ph.i.i ], [ %.114.i.i, %bb.e ] ; 2 uses
  %i.m = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.01316.i.i, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !87
  %i.p = icmp slt i32 %i.o, %i.i                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.neg.i.i = xor i64 %i.m, -1
  %i.r = add i64 %.017.i.i, %.neg.i.i
  %.114.i.i = select i1 %i.p, ptr %i.q, ptr %.01316.i.i ; 7 uses
  %.1.i.i = select i1 %i.p, i64 %i.r, i64 %i.m    ; 2 uses
  %.not.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not.i.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.i, label %bb.e, !llvm.loop !1981

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.i: ; preds = %bb.e
  %i.s = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairIiiEEET_S5_S5_S5_(ptr noundef nonnull %.030.i, ptr noundef nonnull %.033.i, ptr noundef %.114.i.i) ; 2 uses
  %.not43.i = icmp eq ptr %.114.i.i, %2
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.i, %bb.f
  %.131.i = phi ptr [ %i.t, %bb.f ], [ %i.s, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.131.i, i64 8 ; 4 uses
  %.not42.i = icmp eq ptr %.114.i.i, %i.t
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.u = load i32, ptr %.114.i.i, align 4, !tbaa !87
  %i.v = load i32, ptr %i.t, align 4, !tbaa !87   ; 2 uses
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i.i.loopexit, label %.preheader.i, !llvm.loop !2384

bb.g:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i9 = icmp eq ptr %0, %1
  br i1 %.not.i9, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_.exit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds i8, ptr %1, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  %i.z = load i32, ptr %1, align 4, !tbaa !87
  %.not47.i = icmp slt i32 %i.y, %i.z
  br i1 %.not47.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_.exit.sink.split, label %.lr.ph.i.preheader.i10
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEbT_RNS0_9iter_sizeISG_E4typeESG_SJ_SJ_SK_RT1_T0_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvbT_NS0_9iter_sizeISG_E4typeESJ_SJ_RT1_T0_(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %bb.a, %.preheader.preheader.i.i
  br i1 %0, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4 ; 5 uses
  %i.d = sub i64 0, %2
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = lshr i64 %2, 1
  %i.g = sub i64 %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1562
  %.not.i51 = icmp ult i64 %i.i, %i.g
  br i1 %.not.i51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %5, align 8, !tbaa !1559
  tail call void @_ZN5boost7movelib10merge_sortIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T1_T0_(ptr noundef %i.e, ptr noundef %i.c, ptr noundef %i.j)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_(ptr noundef %i.e, ptr noundef %i.c)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3 ; 3 uses
  store ptr %6, ptr %7, align 8, !tbaa !2072
  call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SI_SI_T0_RT1_(ptr noundef %i.k, ptr noundef %i.e, ptr noundef %i.c, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @_ZN5boost7movelib16heap_sort_helperIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEE4sortES4_S4_SC_(ptr noundef %1, ptr noundef %i.k)
  call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_(ptr noundef %1, ptr noundef %i.k, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.l

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit
  %i.l = add i64 %3, %2                           ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l ; 5 uses
  %i.n = lshr i64 %i.l, 1
  %i.o = sub i64 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1562
  %.not.i52 = icmp ult i64 %i.q, %i.o
  br i1 %.not.i52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %5, align 8, !tbaa !1559
  tail call void @_ZN5boost7movelib10merge_sortIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T1_T0_(ptr noundef %1, ptr noundef %i.m, ptr noundef %i.r)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit53

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_(ptr noundef %1, ptr noundef %i.m)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit53

_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit53: ; preds = %bb.f, %bb.g
  %i.s = load i64, ptr %i.p, align 8, !tbaa !1562 ; 2 uses
  %.not = icmp ult i64 %i.s, %i.l
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit53
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %1, ptr noundef %i.m, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.l

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit53
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %3)
  %.not50 = icmp ult i64 %i.s, %.sroa.speculated
  br i1 %.not50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4 ; 2 uses
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_(ptr noundef %i.u, ptr noundef nonnull %i.m, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(24) %5)
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_(ptr noundef %1, ptr noundef %i.u, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_(ptr noundef %1, ptr noundef nonnull %i.m, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 4
  store i64 %i.g, ptr %2, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not2245.i = icmp eq ptr %i.h, %1
  br i1 %.not2245.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %bb.c, %bb.g
  %i.i = phi ptr [ %i.y, %bb.g ], [ %i.h, %bb.c ] ; 6 uses
  %.01847.i = phi ptr [ %i.i, %bb.g ], [ %0, %bb.c ]
  %.03446.i = phi ptr [ %storemerge48.i, %bb.g ], [ %2, %bb.c ] ; 5 uses
  %storemerge48.i = getelementptr inbounds nuw i8, ptr %.03446.i, i64 8 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87
  %i.k = load i32, ptr %.03446.i, align 4, !tbaa !87
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph49.i
  %i.m = load i64, ptr %.03446.i, align 4
  store i64 %i.m, ptr %storemerge48.i, align 4
  %.not2436.i = icmp eq ptr %.03446.i, %2
  br i1 %.not2436.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %storemerge2339.i = phi ptr [ %storemerge23.i, %bb.e ], [ %.03446.i, %bb.d ] ; 6 uses
  %.03337.i = phi ptr [ %storemerge2339.i, %bb.e ], [ %storemerge48.i, %bb.d ] ; 2 uses
  %storemerge23.i = getelementptr i8, ptr %storemerge2339.i, i64 -8 ; 3 uses
  %i.n = load i32, ptr %i.i, align 4, !tbaa !87
  %i.o = load i32, ptr %storemerge23.i, align 4, !tbaa !87 ; 2 uses
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  store i32 %i.o, ptr %storemerge2339.i, align 4, !tbaa !292
  %i.q = getelementptr inbounds i8, ptr %storemerge2339.i, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87
  %i.s = getelementptr inbounds i8, ptr %.03337.i, i64 -4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !294
  %.not24.i = icmp eq ptr %storemerge23.i, %2
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !2560

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.033.lcssa.i = phi ptr [ %storemerge48.i, %bb.d ], [ %.03337.i, %.lr.ph.i ], [ %storemerge2339.i, %bb.e ]
  %storemerge23.lcssa.i = phi ptr [ %2, %bb.d ], [ %storemerge2339.i, %.lr.ph.i ], [ %2, %bb.e ]
  %i.t = load i32, ptr %i.i, align 4, !tbaa !87
  store i32 %i.t, ptr %storemerge23.lcssa.i, align 4, !tbaa !292
  %i.u = getelementptr inbounds nuw i8, ptr %.01847.i, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !87
  %i.w = getelementptr inbounds i8, ptr %.033.lcssa.i, i64 -4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !294
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph49.i
  %i.x = load i64, ptr %i.i, align 4
  store i64 %i.x, ptr %storemerge48.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %i.y, %1
  br i1 %.not22.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph49.i, !llvm.loop !2561

bb.h:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.e, 1                         ; 7 uses
  %.idx = shl nuw nsw i64 %i.z, 3                 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 13 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %i.aa, ptr noundef %1, ptr noundef %i.ab)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %i.aa, ptr noundef %i.aa)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.d ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.h, %bb.i
  %indvar = phi i64 [ %indvar.next, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %.047.i = phi ptr [ %.2.i, %bb.i ], [ %i.aa, %bb.h ] ; 9 uses
  %.02446.i = phi ptr [ %.125.i, %bb.i ], [ %i.ab, %bb.h ] ; 4 uses
  %.03645.i = phi ptr [ %i.bx, %bb.i ], [ %2, %bb.h ] ; 7 uses
  %i.ae = icmp eq ptr %.02446.i, %i.ad
  br i1 %i.ae, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %.lr.ph.i32
  %.047.i77.le = ptrtoaddr ptr %.047.i to i64
  %.not49.i = icmp eq ptr %.03645.i, %i.ab
  br i1 %.not49.i, label %._crit_edge53.i, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %.preheader.i
  %i.af = add nsw i64 %.idx, -8
  %3 = lshr exact i64 %i.af, 3
  %4 = add nuw nsw i64 %3, 1
  %5 = mul i64 %indvar, 2305843009213693951
  %i.ag = add i64 %5, %4                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ag, 18
  br i1 %min.iters.check, label %.lr.ph52.i.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph52.i.preheader
  %i.ah = shl nuw i64 %indvar, 3
  %i.ai = add i64 %i.ah, %i.a
  %i.aj = sub i64 %.047.i77.le, %i.ai
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %.lr.ph52.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -4                      ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %.047.i, i64 %i.ak ; 2 uses
  %i.am = getelementptr i8, ptr %.03645.i, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.047.i, i64 %i.an ; 2 uses
  %next.gep78 = getelementptr i8, ptr %.03645.i, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4
  %wide.load79 = load <2 x i64>, ptr %i.ao, align 4
  %i.ap = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x i64> %wide.load, ptr %next.gep78, align 4
  store <2 x i64> %wide.load79, ptr %i.ap, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !2562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge53.i, label %.lr.ph52.i.preheader147

.lr.ph52.i.preheader147:                          ; preds = %vector.memcheck, %.lr.ph52.i.preheader, %middle.block
  %.151.i.ph = phi ptr [ %.047.i, %vector.memcheck ], [ %.047.i, %.lr.ph52.i.preheader ], [ %i.al, %middle.block ]
  %.13750.i.ph = phi ptr [ %.03645.i, %vector.memcheck ], [ %.03645.i, %.lr.ph52.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader147, %.lr.ph52.i
  %.151.i = phi ptr [ %i.at, %.lr.ph52.i ], [ %.151.i.ph, %.lr.ph52.i.preheader147 ] ; 2 uses
  %.13750.i = phi ptr [ %i.as, %.lr.ph52.i ], [ %.13750.i.ph, %.lr.ph52.i.preheader147 ] ; 2 uses
  %i.ar = load i64, ptr %.151.i, align 4
  store i64 %i.ar, ptr %.13750.i, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.13750.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.151.i, i64 8 ; 2 uses
  %.not.i33 = icmp eq ptr %i.as, %i.ab
  br i1 %.not.i33, label %._crit_edge53.i, label %.lr.ph52.i, !llvm.loop !2563

._crit_edge53.i:                                  ; preds = %.lr.ph52.i, %middle.block, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.047.i, %.preheader.i ], [ %i.al, %middle.block ], [ %i.at, %.lr.ph52.i ] ; 9 uses
  %.1.lcssa.i82 = ptrtoaddr ptr %.1.lcssa.i to i64 ; 2 uses
  %.not8.i.i = icmp eq ptr %.1.lcssa.i, %i.ac
  br i1 %.not8.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge53.i
  %i.au = shl i64 %i.z, 4
  %i.av = add i64 %i.au, %i.c
  %i.aw = add i64 %i.av, -8
  %i.ax = sub i64 %i.aw, %.1.lcssa.i82            ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check85 = icmp ult i64 %i.ax, 168
  br i1 %min.iters.check85, label %.lr.ph.i.i.preheader145, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.lr.ph.i.i.preheader
  %i.ba = shl i64 %i.z, 4
  %i.bb = add i64 %i.ba, %i.c
  %i.bc = add i64 %i.bb, -8
  %i.bd = sub i64 %i.bc, %.1.lcssa.i82
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %i.bf = getelementptr i8, ptr %2, i64 %.idx
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.be
  %scevgep = getelementptr i8, ptr %i.bg, i64 8
  %i.bh = getelementptr i8, ptr %.1.lcssa.i, i64 %i.be
  %scevgep83 = getelementptr i8, ptr %i.bh, i64 8
  %bound0 = icmp ult ptr %i.ab, %scevgep83
  %bound1 = icmp ult ptr %.1.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader145, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck81
  %n.vec87 = and i64 %i.az, 4611686018427387900   ; 3 uses
  %i.bi = shl i64 %n.vec87, 3                     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ab, i64 %i.bi
  %i.bk = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bi
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next99, %vector.body88 ] ; 2 uses
  %i.bl = shl i64 %index89, 3                     ; 3 uses
  %i.bm = or disjoint i64 %i.bl, 16               ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.ab, i64 %i.bl
  %next.gep91 = getelementptr i8, ptr %i.ab, i64 %i.bm
  %next.gep92 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bl
  %next.gep93 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bm
  %wide.vec = load <4 x i32>, ptr %next.gep92, align 4, !tbaa !87, !alias.scope !2564
  %wide.vec95 = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !87, !alias.scope !2564
  store <4 x i32> %wide.vec, ptr %next.gep90, align 4, !tbaa !87, !alias.scope !2567, !noalias !2564
  store <4 x i32> %wide.vec95, ptr %next.gep91, align 4, !tbaa !87, !alias.scope !2567, !noalias !2564
  %index.next99 = add nuw i64 %index89, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next99, %n.vec87
  br i1 %i.bn, label %middle.block100, label %vector.body88, !llvm.loop !2569

middle.block100:                                  ; preds = %vector.body88
  %cmp.n101 = icmp eq i64 %i.az, %n.vec87
  br i1 %cmp.n101, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.preheader145

.lr.ph.i.i.preheader145:                          ; preds = %vector.memcheck81, %.lr.ph.i.i.preheader, %middle.block100
  %.010.i.i.ph = phi ptr [ %i.ab, %vector.memcheck81 ], [ %i.ab, %.lr.ph.i.i.preheader ], [ %i.bj, %middle.block100 ]
  %.079.i.i.ph = phi ptr [ %.1.lcssa.i, %vector.memcheck81 ], [ %.1.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block100 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader145, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader145 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader145 ] ; 3 uses
  %i.bo = load i32, ptr %.079.i.i, align 4, !tbaa !87
  store i32 %i.bo, ptr %.010.i.i, align 4, !tbaa !292
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !87
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !294
  %i.bs = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.bs, %i.ac
  br i1 %.not.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i, !llvm.loop !2570

bb.i:                                             ; preds = %.lr.ph.i32
  %i.bu = load i32, ptr %.02446.i, align 4, !tbaa !87
  %i.bv = load i32, ptr %.047.i, align 4, !tbaa !87
  %i.bw = icmp slt i32 %i.bu, %i.bv               ; 3 uses
  %.sink.in.i = select i1 %i.bw, ptr %.02446.i, ptr %.047.i
  %.125.idx.i = select i1 %i.bw, i64 8, i64 0
  %.125.i = getelementptr inbounds nuw i8, ptr %.02446.i, i64 %.125.idx.i ; 2 uses
  %.2.idx.i = select i1 %i.bw, i64 0, i64 8
  %.2.i = getelementptr inbounds nuw i8, ptr %.047.i, i64 %.2.idx.i ; 3 uses
  %.sink.i = load i64, ptr %.sink.in.i, align 4
  store i64 %.sink.i, ptr %.03645.i, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.03645.i, i64 8 ; 2 uses
  %i.by = icmp ne ptr %.2.i, %i.ac
  %i.bz = icmp ne ptr %i.bx, %i.ab
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ca, label %.lr.ph.i32, label %._crit_edge.i, !llvm.loop !2571

._crit_edge.i:                                    ; preds = %bb.i, %bb.h
  %.024.lcssa.i = phi ptr [ %i.ab, %bb.h ], [ %.125.i, %bb.i ]
  %.0.lcssa.i = phi ptr [ %i.aa, %bb.h ], [ %.2.i, %bb.i ] ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.0.lcssa.i, %i.ac
  br i1 %.not23.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %bb.m
  %indvar105 = phi i64 [ %indvar.next106, %bb.m ], [ 0, %._crit_edge.i ] ; 2 uses
  %.026.i.i.i = phi ptr [ %.1.i.i.i, %bb.m ], [ %.0.lcssa.i, %._crit_edge.i ] ; 12 uses
  %.01625.i.i.i = phi ptr [ %.117.i.i.i, %bb.m ], [ %.024.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.01824.i.i.i = phi ptr [ %i.di, %bb.m ], [ %i.ab, %._crit_edge.i ] ; 9 uses
  %i.cb = icmp eq ptr %.01625.i.i.i, %i.ad
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.preheader, label %bb.j

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i
  %.026.i.i.i108.le = ptrtoaddr ptr %.026.i.i.i to i64 ; 2 uses
  %i.cc = shl i64 %i.z, 4
  %i.cd = add i64 %i.cc, %i.c
  %i.ce = add i64 %i.cd, -8
  %i.cf = sub i64 %i.ce, %.026.i.i.i108.le        ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check116 = icmp ult i64 %i.cf, 168
  br i1 %min.iters.check116, label %.lr.ph.i.i.i.i.i.preheader138, label %vector.memcheck104

vector.memcheck104:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ci = shl i64 %indvar105, 3
  %i.cj = getelementptr i8, ptr %2, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 %.idx
  %scevgep107 = getelementptr i8, ptr %i.ck, i64 8
  %i.cl = shl i64 %i.z, 4
  %i.cm = add i64 %i.cl, %i.c
  %i.cn = add i64 %i.cm, -8
  %i.co = sub i64 %i.cn, %.026.i.i.i108.le
  %i.cp = and i64 %i.co, -8                       ; 2 uses
  %scevgep109 = getelementptr i8, ptr %scevgep107, i64 %i.cp
  %scevgep110 = getelementptr i8, ptr %.026.i.i.i, i64 8
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 %i.cp
  %bound0112 = icmp ult ptr %.01824.i.i.i, %scevgep111
  %bound1113 = icmp ult ptr %.026.i.i.i, %scevgep109
  %found.conflict114 = and i1 %bound0112, %bound1113
  br i1 %found.conflict114, label %.lr.ph.i.i.i.i.i.preheader138, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck104
  %n.vec118 = and i64 %i.ch, 4611686018427387900  ; 3 uses
  %i.cq = shl i64 %n.vec118, 3                    ; 2 uses
  %i.cr = getelementptr i8, ptr %.01824.i.i.i, i64 %i.cq
  %i.cs = getelementptr i8, ptr %.026.i.i.i, i64 %i.cq
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next133, %vector.body119 ] ; 2 uses
  %i.ct = shl i64 %index120, 3                    ; 3 uses
  %i.cu = or disjoint i64 %i.ct, 16               ; 2 uses
  %next.gep121 = getelementptr i8, ptr %.01824.i.i.i, i64 %i.ct
  %next.gep122 = getelementptr i8, ptr %.01824.i.i.i, i64 %i.cu
  %next.gep123 = getelementptr i8, ptr %.026.i.i.i, i64 %i.ct
  %next.gep124 = getelementptr i8, ptr %.026.i.i.i, i64 %i.cu
  %wide.vec125 = load <4 x i32>, ptr %next.gep123, align 4, !tbaa !87, !alias.scope !2572
  %wide.vec128 = load <4 x i32>, ptr %next.gep124, align 4, !tbaa !87, !alias.scope !2572
  store <4 x i32> %wide.vec125, ptr %next.gep121, align 4, !tbaa !87, !alias.scope !2575, !noalias !2572
  store <4 x i32> %wide.vec128, ptr %next.gep122, align 4, !tbaa !87, !alias.scope !2575, !noalias !2572
  %index.next133 = add nuw i64 %index120, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next133, %n.vec118
  br i1 %i.cv, label %middle.block134, label %vector.body119, !llvm.loop !2577
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiES7_NSC_9select1stIiEEEEEESA_NS3_IS8_EESA_SJ_NS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !87, !noalias !4664
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !87, !noalias !4664
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !87, !noalias !4664
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !87, !noalias !4664
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !87, !noalias !4664
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !87, !noalias !4664
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !87, !noalias !4664
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !87, !noalias !4664
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28, !llvm.loop !4667

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEENS3_INS_9container12vec_iteratorIS6_Lb0EEEEESB_NS0_7inverseINS8_3dtl23flat_tree_value_compareISt4lessIiES5_NSD_9select1stIiEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !87, !noalias !4668
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !292, !noalias !4668
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !87, !noalias !4668
  %i.dh = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !294, !noalias !4668
  %i.di = load i32, ptr %i.db, align 4, !tbaa !87, !noalias !4668
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !292, !noalias !4668
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !87, !noalias !4668
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !294, !noalias !4668
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29, !llvm.loop !4671

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !87, !noalias !4672
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !292, !noalias !4672
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87, !noalias !4672
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !294, !noalias !4672
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !4677

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.w, %bb.v, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ], [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ], [ %.sroa.064.0, %bb.v ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !390
  %i.ds = load ptr, ptr %1, align 8, !tbaa !73, !noalias !4678 ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEESA_EEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.dw = load <2 x i32>, ptr %i.du, align 4, !tbaa !87
  %i.dx = load <2 x i32>, ptr %i.dv, align 4, !tbaa !87
  store <2 x i32> %i.dx, ptr %i.du, align 4, !tbaa !87
  store <2 x i32> %i.dw, ptr %i.dv, align 4, !tbaa !87
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.dy = load ptr, ptr %2, align 8, !tbaa !390   ; 2 uses
  %i.dz = icmp eq ptr %i.dt, %i.dy
  br i1 %i.dz, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = icmp eq ptr %i.dy, %i.ds
  br i1 %i.ea, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEESA_EEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.ds, %bb.y ], [ %i.dt, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !390
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEESA_EEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEESA_EEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, %bb.z, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !390
  %i.eb = load ptr, ptr %1, align 8, !tbaa !390
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8 ; 2 uses
  store ptr %i.ec, ptr %1, align 8, !tbaa !390
  %i.ed = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ed to i64
  %i.ee = add i64 %.0140, %.neg
  %i.ef = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ef to i64
  %i.eg = add i64 %.sroa.speculated, %.neg24
  %i.eh = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eh, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4681

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEESA_EEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4682)
  %i.ei = load ptr, ptr %6, align 8, !tbaa !73, !noalias !4682
  store ptr %i.ei, ptr %0, align 8, !tbaa !390, !alias.scope !4682
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !73     ; 3 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !73     ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !73     ; 11 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !390    ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !73     ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !73     ; 2 uses
  %.not1.i = icmp eq ptr %i.f, %i.g
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4, !tbaa !87, !noalias !4685
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87, !noalias !4685
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.c, !llvm.loop !4688

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ] ; 13 uses
  %i.m = ptrtoint ptr %.lcssa.i to i64            ; 5 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o ; 16 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !390
  %i.q = load ptr, ptr %2, align 8, !tbaa !73     ; 14 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 4 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !73     ; 3 uses
  %.not.i14 = icmp eq ptr %.lcssa.i, %i.q
  %.not27.i = icmp eq ptr %i.c, %i.s
  %or.cond69 = select i1 %.not.i14, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  br i1 %or.cond69, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %5, align 8, !tbaa !73     ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.x = load i32, ptr %.lcssa.i, align 4, !tbaa !87
  store i32 %i.x, ptr %i.p, align 4, !tbaa !292
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !294
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !87
  store i32 %i.ab, ptr %.lcssa.i, align 4, !tbaa !292
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !87
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !294
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !87
  store i32 %i.ae, ptr %i.t, align 4, !tbaa !292
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !87
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !294
  %.048.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not3549.i = icmp eq ptr %i.w, %i.q
  br i1 %.not3549.i, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %i.ah = phi ptr [ %.sink.i, %bb.j ], [ %i.w, %bb.f ] ; 13 uses
  %.054.i = phi ptr [ %.0.i, %bb.j ], [ %.048.i, %bb.f ] ; 4 uses
  %.pn53.i = phi ptr [ %.054.i, %bb.j ], [ %i.p, %bb.f ] ; 2 uses
  %.01552.i = phi ptr [ %.116.i, %bb.j ], [ %i.p, %bb.f ] ; 14 uses
  %.sroa.029.051.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.u, %bb.f ] ; 7 uses
  %.sroa.025.050.i = phi ptr [ %.sroa.025.1.i, %bb.j ], [ %i.v, %bb.f ] ; 8 uses
  %i.ai = icmp eq ptr %.sroa.029.051.i, %i.s
  br i1 %i.ai, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i13
  %i.aj = add i64 %i.r, -16
  %8 = sub i64 %i.aj, %i.m
  %9 = lshr i64 %8, 3
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 2305843009213693951
  %i.ak = add i64 %11, %10                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ak, 22
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader277, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.al = add i64 %i.r, -16
  %i.am = sub i64 %i.al, %i.m
  %i.an = and i64 %i.am, -8                       ; 2 uses
  %12 = add i64 %i.an, 8
  %i.ao = shl i64 %indvar, 3
  %13 = sub i64 %12, %i.ao
  %i.ap = getelementptr i8, ptr %.01552.i, i64 %13
  %scevgep202 = getelementptr i8, ptr %.lcssa.i, i64 %i.an
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 16
  %bound0 = icmp ult ptr %.01552.i, %scevgep203
  %bound1 = icmp ult ptr %i.ah, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader277, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, -4                      ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ah, i64 %i.aq
  %i.as = getelementptr i8, ptr %.01552.i, i64 %i.aq ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 3 uses
  %i.au = or disjoint i64 %i.at, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.at
  %next.gep204.a = getelementptr i8, ptr %i.ah, i64 %i.au
  %next.gep205 = getelementptr i8, ptr %.01552.i, i64 %i.at
  %next.gep206 = getelementptr i8, ptr %.01552.i, i64 %i.au
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !87, !alias.scope !4689
  %wide.vec208 = load <4 x i32>, ptr %next.gep204.a, align 4, !tbaa !87, !alias.scope !4689
  store <4 x i32> %wide.vec, ptr %next.gep205, align 4, !tbaa !87, !alias.scope !4692, !noalias !4689
  store <4 x i32> %wide.vec208, ptr %next.gep206, align 4, !tbaa !87, !alias.scope !4692, !noalias !4689
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !4694

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i.preheader277

.lr.ph.i.i.i.preheader277:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph278 = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.04.i.i.i.ph = phi ptr [ %.01552.i, %vector.memcheck ], [ %.01552.i, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader277, %.lr.ph.i.i.i
  %i.aw = phi ptr [ %i.bb, %.lr.ph.i.i.i ], [ %.ph278, %.lr.ph.i.i.i.preheader277 ] ; 3 uses
  %.04.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.04.i.i.i.ph, %.lr.ph.i.i.i.preheader277 ] ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !87
  store i32 %i.ax, ptr %.04.i.i.i, align 4, !tbaa !292
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !87
  %i.ba = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !294
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %i.q
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4695

bb.g:                                             ; preds = %.lr.ph.i13
  %i.bd = load i32, ptr %.sroa.025.050.i, align 4, !tbaa !87
  %i.be = load i32, ptr %.01552.i, align 4, !tbaa !87
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.029.051.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i, i64 8
  %i.bi = load i32, ptr %i.ah, align 4, !tbaa !87
  store i32 %i.bi, ptr %.054.i, align 4, !tbaa !292
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !87
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn53.i, i64 12
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !294
  %i.bm = load i32, ptr %.sroa.025.050.i, align 4, !tbaa !87
  store i32 %i.bm, ptr %i.ah, align 4, !tbaa !292
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !87
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !294
  %i.bp = load i32, ptr %.sroa.029.051.i, align 4, !tbaa !87
  store i32 %i.bp, ptr %.sroa.025.050.i, align 4, !tbaa !292
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.029.051.i, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !87
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !294
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %.01552.i, i64 8
  %i.bt = load i32, ptr %i.ah, align 4, !tbaa !87
  store i32 %i.bt, ptr %.054.i, align 4, !tbaa !292
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !87
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn53.i, i64 12
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !294
  %i.bx = load i32, ptr %.01552.i, align 4, !tbaa !87
  store i32 %i.bx, ptr %i.ah, align 4, !tbaa !292
  %i.by = getelementptr inbounds nuw i8, ptr %.01552.i, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !87
  store i32 %i.bz, ptr %i.bu, align 4, !tbaa !294
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.025.1.i = phi ptr [ %i.bh, %bb.h ], [ %.sroa.025.050.i, %bb.i ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %i.bg, %bb.h ], [ %.sroa.029.051.i, %bb.i ] ; 2 uses
  %.116.i = phi ptr [ %.01552.i, %bb.h ], [ %i.bs, %bb.i ] ; 2 uses
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.054.i, i64 8 ; 2 uses
  %.not35.i = icmp eq ptr %.sink.i, %i.q
  %indvar.next = add i64 %indvar, 1
  br i1 %.not35.i, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i13, !llvm.loop !4696

_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i: ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.025.047.i = phi ptr [ %.sroa.025.050.i, %middle.block ], [ %i.v, %bb.f ], [ %.sroa.025.050.i, %.lr.ph.i.i.i ], [ %.sroa.025.1.i, %bb.j ]
  %.sroa.029.045.i = phi ptr [ %.sroa.029.051.i, %middle.block ], [ %i.u, %bb.f ], [ %.sroa.029.051.i, %.lr.ph.i.i.i ], [ %.sroa.029.1.i, %bb.j ]
  %.01543.i = phi ptr [ %.01552.i, %middle.block ], [ %i.p, %bb.f ], [ %.01552.i, %.lr.ph.i.i.i ], [ %.116.i, %bb.j ]
  %.2.i = phi ptr [ %i.as, %middle.block ], [ %.048.i, %bb.f ], [ %i.bc, %.lr.ph.i.i.i ], [ %.0.i, %bb.j ]
  store ptr %.sroa.025.047.i, ptr %5, align 8, !tbaa !390
  %.pre = load ptr, ptr %2, align 8, !tbaa !73
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  br i1 %or.cond69, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.cc = load i32, ptr %.lcssa.i, align 4, !tbaa !87
  store i32 %i.cc, ptr %i.p, align 4, !tbaa !292
  %i.cd = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !87
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !294
  %i.cg = load i32, ptr %i.c, align 4, !tbaa !87
  store i32 %i.cg, ptr %.lcssa.i, align 4, !tbaa !292
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !87
  store i32 %i.ci, ptr %i.cd, align 4, !tbaa !294
  %.038.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.cj = icmp eq ptr %i.cb, %i.q
  br i1 %i.cj, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.l, %bb.m
  %indvar215 = phi i64 [ %indvar.next216, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.ck = phi ptr [ %i.dj, %bb.m ], [ %i.cb, %bb.l ] ; 10 uses
  %.042.i = phi ptr [ %.0.i16, %bb.m ], [ %.038.i, %bb.l ] ; 3 uses
  %.pn41.i = phi ptr [ %.042.i, %bb.m ], [ %i.p, %bb.l ]
  %.01340.i = phi ptr [ %.114.i, %bb.m ], [ %i.p, %bb.l ] ; 12 uses
  %.sroa.021.039.i = phi ptr [ %.sroa.021.1.i, %bb.m ], [ %i.ca, %bb.l ] ; 6 uses
  %i.cl = icmp eq ptr %.sroa.021.039.i, %i.s
  br i1 %i.cl, label %.lr.ph.i.i.i21.preheader, label %bb.m

.lr.ph.i.i.i21.preheader:                         ; preds = %.lr.ph.i15
  %i.cm = add i64 %i.r, -16
  %14 = sub i64 %i.cm, %i.m
  %15 = lshr i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = mul i64 %indvar215, 2305843009213693951
  %i.cn = add i64 %17, %16                        ; 3 uses
  %min.iters.check224 = icmp ult i64 %i.cn, 22
  br i1 %min.iters.check224, label %.lr.ph.i.i.i21.preheader269, label %vector.memcheck213

vector.memcheck213:                               ; preds = %.lr.ph.i.i.i21.preheader
  %i.co = add i64 %i.r, -16
  %i.cp = sub i64 %i.co, %i.m
  %i.cq = and i64 %i.cp, -8                       ; 2 uses
  %18 = add i64 %i.cq, 8
  %i.cr = shl i64 %indvar215, 3
  %19 = sub i64 %18, %i.cr
  %i.cs = getelementptr i8, ptr %.01340.i, i64 %19
  %scevgep218 = getelementptr i8, ptr %.lcssa.i, i64 %i.cq
  %scevgep219 = getelementptr i8, ptr %scevgep218, i64 16
  %bound0220 = icmp ult ptr %.01340.i, %scevgep219
  %bound1221 = icmp ult ptr %i.ck, %i.cs
  %found.conflict222 = and i1 %bound0220, %bound1221
  br i1 %found.conflict222, label %.lr.ph.i.i.i21.preheader269, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck213
  %n.vec226 = and i64 %i.cn, -4                   ; 3 uses
  %i.ct = shl i64 %n.vec226, 3                    ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ck, i64 %i.ct
  %i.cv = getelementptr i8, ptr %.01340.i, i64 %i.ct ; 2 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next241, %vector.body227 ] ; 2 uses
  %i.cw = shl i64 %index228, 3                    ; 3 uses
  %i.cx = or disjoint i64 %i.cw, 16               ; 2 uses
  %next.gep229 = getelementptr i8, ptr %i.ck, i64 %i.cw
  %next.gep230 = getelementptr i8, ptr %i.ck, i64 %i.cx
  %next.gep231 = getelementptr i8, ptr %.01340.i, i64 %i.cw
  %next.gep232 = getelementptr i8, ptr %.01340.i, i64 %i.cx
  %wide.vec233 = load <4 x i32>, ptr %next.gep229, align 4, !tbaa !87, !alias.scope !4697
  %wide.vec236 = load <4 x i32>, ptr %next.gep230, align 4, !tbaa !87, !alias.scope !4697
  store <4 x i32> %wide.vec233, ptr %next.gep231, align 4, !tbaa !87, !alias.scope !4700, !noalias !4697
  store <4 x i32> %wide.vec236, ptr %next.gep232, align 4, !tbaa !87, !alias.scope !4700, !noalias !4697
  %index.next241 = add nuw i64 %index228, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next241, %n.vec226
  br i1 %i.cy, label %middle.block242, label %vector.body227, !llvm.loop !4702

middle.block242:                                  ; preds = %vector.body227
  %cmp.n243 = icmp eq i64 %i.cn, %n.vec226
  br i1 %cmp.n243, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i.i.i21.preheader269

.lr.ph.i.i.i21.preheader269:                      ; preds = %vector.memcheck213, %.lr.ph.i.i.i21.preheader, %middle.block242
  %.ph = phi ptr [ %i.ck, %vector.memcheck213 ], [ %i.ck, %.lr.ph.i.i.i21.preheader ], [ %i.cu, %middle.block242 ]
  %.04.i.i.i22.ph = phi ptr [ %.01340.i, %vector.memcheck213 ], [ %.01340.i, %.lr.ph.i.i.i21.preheader ], [ %i.cv, %middle.block242 ]
  br label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %.lr.ph.i.i.i21.preheader269, %.lr.ph.i.i.i21
  %i.cz = phi ptr [ %i.de, %.lr.ph.i.i.i21 ], [ %.ph, %.lr.ph.i.i.i21.preheader269 ] ; 3 uses
  %.04.i.i.i22 = phi ptr [ %i.df, %.lr.ph.i.i.i21 ], [ %.04.i.i.i22.ph, %.lr.ph.i.i.i21.preheader269 ] ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !87
  store i32 %i.da, ptr %.04.i.i.i22, align 4, !tbaa !292
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !87
  %i.dd = getelementptr inbounds nuw i8, ptr %.04.i.i.i22, i64 4
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !294
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.04.i.i.i22, i64 8 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.de, %i.q
  br i1 %.not.i.i.i23, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i.i.i21, !llvm.loop !4703

bb.m:                                             ; preds = %.lr.ph.i15
  %i.dg = load i32, ptr %.sroa.021.039.i, align 4, !tbaa !87
  %i.dh = load i32, ptr %.01340.i, align 4, !tbaa !87
  %i.di = icmp slt i32 %i.dg, %i.dh               ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.ck, align 4, !tbaa !87
  store i32 %i.dk, ptr %.042.i, align 4, !tbaa !292
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !294
  %.01340.sink66.i = select i1 %i.di, ptr %.sroa.021.039.i, ptr %.01340.i ; 2 uses
  %.sroa.021.1.i.idx = select i1 %i.di, i64 8, i64 0
  %.sroa.021.1.i = getelementptr inbounds nuw i8, ptr %.sroa.021.039.i, i64 %.sroa.021.1.i.idx ; 2 uses
  %.114.i.idx = select i1 %i.di, i64 0, i64 8
  %.114.i = getelementptr inbounds nuw i8, ptr %.01340.i, i64 %.114.i.idx ; 2 uses
  %i.do = load i32, ptr %.01340.sink66.i, align 4, !tbaa !87
  store i32 %i.do, ptr %i.ck, align 4, !tbaa !292
  %i.dp = getelementptr inbounds nuw i8, ptr %.01340.sink66.i, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !294
  %.0.i16 = getelementptr inbounds nuw i8, ptr %.042.i, i64 8 ; 2 uses
  %i.dr = icmp eq ptr %i.dj, %i.q
  %indvar.next216 = add i64 %indvar215, 1
  br i1 %i.dr, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit, label %.lr.ph.i15, !llvm.loop !4704

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit: ; preds = %bb.m, %.lr.ph.i.i.i21, %middle.block242, %bb.k, %bb.l, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i, %bb.e
  %i.ds = phi ptr [ %.pre, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.q, %bb.e ], [ %i.q, %middle.block242 ], [ %i.q, %bb.k ], [ %i.q, %bb.l ], [ %i.q, %.lr.ph.i.i.i21 ], [ %i.q, %bb.m ]
  %.sroa.056.0 = phi ptr [ %.sroa.029.045.i, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.c, %bb.e ], [ %.sroa.021.039.i, %middle.block242 ], [ %i.c, %bb.k ], [ %i.ca, %bb.l ], [ %.sroa.021.039.i, %.lr.ph.i.i.i21 ], [ %.sroa.021.1.i, %bb.m ]
  %.068 = phi ptr [ %.01543.i, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.p, %bb.e ], [ %.01340.i, %middle.block242 ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %.01340.i, %.lr.ph.i.i.i21 ], [ %.114.i, %bb.m ]
  %i.dt = phi ptr [ %.2.i, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.p, %bb.e ], [ %i.cv, %middle.block242 ], [ %i.p, %bb.k ], [ %.038.i, %bb.l ], [ %i.df, %.lr.ph.i.i.i21 ], [ %.0.i16, %bb.m ]
  store ptr %i.ds, ptr %1, align 8, !tbaa !390
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit
  %.sroa.056.1 = phi ptr [ %.sroa.056.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.1 = phi ptr [ %.068, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %.0 = phi ptr [ %i.dt, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.du = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %i.dv = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %.not23.i = icmp eq ptr %.sroa.056.1, %i.du
  %.not.i25 = icmp eq ptr %.0, %.1
  %or.cond.i26 = select i1 %.not23.i, i1 true, i1 %.not.i25 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS6_3dtl23flat_tree_value_compareISt4lessIiES4_NS9_9select1stIiEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = load ptr, ptr %5, align 8, !tbaa !73, !noalias !4705
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.p
  %.sroa.033.0 = phi ptr [ %i.dv, %bb.p ], [ %i.ec, %.split.i ]
  %.sroa.020.0.ph.i = phi ptr [ %i.dw, %bb.p ], [ %i.eb, %.split.i ] ; 5 uses
  %.sroa.023.0.ph.i = phi ptr [ %.sroa.056.1, %bb.p ], [ %i.ea, %.split.i ] ; 4 uses
  %.013.ph.i = phi ptr [ %.1, %bb.p ], [ %.013.i, %.split.i ]
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.outer.i
  %.sroa.033.1 = phi ptr [ %.sroa.033.0, %.outer.i ], [ %i.ek, %bb.r ] ; 6 uses
  %.013.i = phi ptr [ %.013.ph.i, %.outer.i ], [ %i.ej, %bb.r ] ; 5 uses
  %i.dx = load i32, ptr %.sroa.020.0.ph.i, align 4, !tbaa !87, !noalias !4705 ; 2 uses
  %i.dy = load i32, ptr %.013.i, align 4, !tbaa !87, !noalias !4705 ; 2 uses
  %i.dz = icmp slt i32 %i.dx, %i.dy
  br i1 %i.dz, label %.split.i, label %bb.r

.split.i:                                         ; preds = %bb.q
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.023.0.ph.i, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.020.0.ph.i, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.033.1, i64 8 ; 2 uses
  store i32 %i.dx, ptr %.sroa.033.1, align 4, !tbaa !292, !noalias !4705
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.020.0.ph.i, i64 4 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !87, !noalias !4705
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.033.1, i64 4
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !294, !noalias !4705
  %i.eg = load i32, ptr %.sroa.023.0.ph.i, align 4, !tbaa !87, !noalias !4705
  store i32 %i.eg, ptr %.sroa.020.0.ph.i, align 4, !tbaa !292, !noalias !4705
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.023.0.ph.i, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !87, !noalias !4705
  store i32 %i.ei, ptr %i.ed, align 4, !tbaa !294, !noalias !4705
  %.not32.i = icmp eq ptr %i.ea, %i.du
  br i1 %.not32.i, label %.loopexit.i, label %.outer.i, !llvm.loop !4708

bb.r:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.033.1, i64 8 ; 2 uses
  store i32 %i.dy, ptr %.sroa.033.1, align 4, !tbaa !292, !noalias !4705
  %i.el = getelementptr inbounds nuw i8, ptr %.013.i, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !87, !noalias !4705
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.033.1, i64 4
  store i32 %i.em, ptr %i.en, align 4, !tbaa !294, !noalias !4705
  %.not31.i = icmp eq ptr %i.ej, %.0
  br i1 %.not31.i, label %.loopexit.i, label %bb.q, !llvm.loop !4708

.loopexit.i:                                      ; preds = %.split.i, %bb.r
  %.sroa.033.2 = phi ptr [ %i.ek, %bb.r ], [ %i.ec, %.split.i ]
  %.129.i = phi ptr [ %i.ej, %bb.r ], [ %.013.i, %.split.i ]
  %.sroa.023.128.i = phi ptr [ %.sroa.023.0.ph.i, %bb.r ], [ %i.ea, %.split.i ]
  %.sroa.020.127.i = phi ptr [ %.sroa.020.0.ph.i, %bb.r ], [ %i.eb, %.split.i ]
  store ptr %.sroa.020.127.i, ptr %5, align 8, !tbaa !390, !noalias !4705
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS6_3dtl23flat_tree_value_compareISt4lessIiES4_NS9_9select1stIiEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit

bb.s:                                             ; preds = %bb.n
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS6_3dtl23flat_tree_value_compareISt4lessIiES4_NS9_9select1stIiEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.s, %bb.t
  %.sroa.0.0.ph = phi ptr [ %i.er, %bb.t ], [ %i.dv, %bb.s ]
  %.sroa.018.0.i.ph = phi ptr [ %i.et, %bb.t ], [ %.sroa.056.1, %bb.s ] ; 4 uses
  %.0.i27.ph = phi ptr [ %.0.i27, %bb.t ], [ %.1, %bb.s ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.u
  %.sroa.0.0 = phi ptr [ %i.er, %bb.u ], [ %.sroa.0.0.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i27 = phi ptr [ %i.ex, %bb.u ], [ %.0.i27.ph, %.preheader.i.outer ] ; 5 uses
  %i.eo = load i32, ptr %.sroa.018.0.i.ph, align 4, !tbaa !87, !noalias !4709 ; 2 uses
  %i.ep = load i32, ptr %.0.i27, align 4, !tbaa !87, !noalias !4709 ; 2 uses
  %i.eq = icmp slt i32 %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4 ; 2 uses
  br i1 %i.eq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader.i
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.ph, i64 8 ; 3 uses
  store i32 %i.eo, ptr %.sroa.0.0, align 4, !tbaa !292, !noalias !4709
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.ph, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !87, !noalias !4709
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !294, !noalias !4709
  %i.ew = icmp eq ptr %i.et, %i.du
  br i1 %i.ew, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS6_3dtl23flat_tree_value_compareISt4lessIiES4_NS9_9select1stIiEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !4712

bb.u:                                             ; preds = %.preheader.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8 ; 3 uses
  store i32 %i.ep, ptr %.sroa.0.0, align 4, !tbaa !292, !noalias !4709
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i27, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !87, !noalias !4709
  store i32 %i.ez, ptr %i.es, align 4, !tbaa !294, !noalias !4709
  %i.fa = icmp eq ptr %i.ex, %.0
  br i1 %i.fa, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS6_3dtl23flat_tree_value_compareISt4lessIiES4_NS9_9select1stIiEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !4712

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS6_3dtl23flat_tree_value_compareISt4lessIiES4_NS9_9select1stIiEEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit: ; preds = %bb.u, %bb.t, %bb.s, %.loopexit.i, %bb.o
  %.sroa.038.0 = phi ptr [ %.sroa.033.2, %.loopexit.i ], [ %i.dv, %bb.o ], [ %i.dv, %bb.s ], [ %i.er, %bb.t ], [ %i.er, %bb.u ]
  %.sroa.056.2 = phi ptr [ %.sroa.023.128.i, %.loopexit.i ], [ %.sroa.056.1, %bb.o ], [ %.sroa.056.1, %bb.s ], [ %.sroa.018.0.i.ph, %bb.u ], [ %i.et, %bb.t ]
  %.2 = phi ptr [ %.129.i, %.loopexit.i ], [ %.1, %bb.o ], [ %.1, %bb.s ], [ %i.ex, %bb.u ], [ %.0.i27, %bb.t ]
  store ptr %.sroa.038.0, ptr %1, align 8, !tbaa !390
  store ptr %.2, ptr %6, align 8, !tbaa !73
  store ptr %.0, ptr %7, align 8, !tbaa !73
  store ptr %.sroa.056.2, ptr %3, align 8, !tbaa !390
  %i.fb = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %i.fb, ptr %0, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef align 8 dead_on_return %8) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !73     ; 3 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !73     ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !73     ; 11 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !390    ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !73     ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !73     ; 2 uses
  %.not2.i = icmp eq ptr %i.f, %i.g
  br i1 %.not2.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4, !tbaa !87, !noalias !4713
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87, !noalias !4713
  %.not1.i = icmp slt i32 %i.j, %i.h
  br i1 %.not1.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %bb.c, !llvm.loop !4716

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 13 uses
  %i.l = ptrtoint ptr %.lcssa.i to i64            ; 5 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n ; 16 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !390
  %i.p = load ptr, ptr %2, align 8, !tbaa !73     ; 14 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 4 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !73     ; 3 uses
  %.not.i14 = icmp eq ptr %.lcssa.i, %i.p
  %.not27.i = icmp eq ptr %i.c, %i.r
  %or.cond74 = select i1 %.not.i14, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  br i1 %or.cond74, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %5, align 8, !tbaa !73     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.w = load i32, ptr %.lcssa.i, align 4, !tbaa !87
  store i32 %i.w, ptr %i.o, align 4, !tbaa !292
  %i.x = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.y, ptr %i.z, align 4, !tbaa !294
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !87
  store i32 %i.aa, ptr %.lcssa.i, align 4, !tbaa !292
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !87
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !294
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !87
  store i32 %i.ad, ptr %i.s, align 4, !tbaa !292
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !87
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !294
  %.049.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.not3550.i = icmp eq ptr %i.v, %i.p
  br i1 %.not3550.i, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %i.ag = phi ptr [ %.sink.i, %bb.j ], [ %i.v, %bb.f ] ; 13 uses
  %.055.i = phi ptr [ %.0.i, %bb.j ], [ %.049.i, %bb.f ] ; 4 uses
  %.pn54.i = phi ptr [ %.055.i, %bb.j ], [ %i.o, %bb.f ] ; 2 uses
  %.01553.i = phi ptr [ %.116.i, %bb.j ], [ %i.o, %bb.f ] ; 14 uses
  %.sroa.029.052.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.t, %bb.f ] ; 7 uses
  %.sroa.025.051.i = phi ptr [ %.sroa.025.1.i, %bb.j ], [ %i.u, %bb.f ] ; 8 uses
  %i.ah = icmp eq ptr %.sroa.029.052.i, %i.r
  br i1 %i.ah, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i13
  %i.ai = add i64 %i.q, -16
  %9 = sub i64 %i.ai, %i.l
  %10 = lshr i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = mul i64 %indvar, 2305843009213693951
  %i.aj = add i64 %12, %11                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 22
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader282, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ak = add i64 %i.q, -16
  %i.al = sub i64 %i.ak, %i.l
  %i.am = and i64 %i.al, -8                       ; 2 uses
  %13 = add i64 %i.am, 8
  %i.an = shl i64 %indvar, 3
  %14 = sub i64 %13, %i.an
  %i.ao = getelementptr i8, ptr %.01553.i, i64 %14
  %scevgep207 = getelementptr i8, ptr %.lcssa.i, i64 %i.am
  %scevgep208 = getelementptr i8, ptr %scevgep207, i64 16
  %bound0 = icmp ult ptr %.01553.i, %scevgep208
  %bound1 = icmp ult ptr %i.ag, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader282, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -4                      ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap
  %i.ar = getelementptr i8, ptr %.01553.i, i64 %i.ap ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 3 uses
  %i.at = or disjoint i64 %i.as, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.as
  %next.gep209.a = getelementptr i8, ptr %i.ag, i64 %i.at
  %next.gep210 = getelementptr i8, ptr %.01553.i, i64 %i.as
  %next.gep211 = getelementptr i8, ptr %.01553.i, i64 %i.at
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !87, !alias.scope !4717
  %wide.vec213 = load <4 x i32>, ptr %next.gep209.a, align 4, !tbaa !87, !alias.scope !4717
  store <4 x i32> %wide.vec, ptr %next.gep210, align 4, !tbaa !87, !alias.scope !4720, !noalias !4717
  store <4 x i32> %wide.vec213, ptr %next.gep211, align 4, !tbaa !87, !alias.scope !4720, !noalias !4717
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !4722

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i.preheader282

.lr.ph.i.i.i.preheader282:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph283 = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.04.i.i.i.ph = phi ptr [ %.01553.i, %vector.memcheck ], [ %.01553.i, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader282, %.lr.ph.i.i.i
  %i.av = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.ph283, %.lr.ph.i.i.i.preheader282 ] ; 3 uses
  %.04.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i ], [ %.04.i.i.i.ph, %.lr.ph.i.i.i.preheader282 ] ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !87
  store i32 %i.aw, ptr %.04.i.i.i, align 4, !tbaa !292
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !294
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %i.p
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4723

bb.g:                                             ; preds = %.lr.ph.i13
  %i.bc = load i32, ptr %.01553.i, align 4, !tbaa !87
  %i.bd = load i32, ptr %.sroa.025.051.i, align 4, !tbaa !87
  %.not36.i = icmp slt i32 %i.bc, %i.bd
  br i1 %.not36.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.029.052.i, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.025.051.i, i64 8
  %i.bg = load i32, ptr %i.ag, align 4, !tbaa !87
  store i32 %i.bg, ptr %.055.i, align 4, !tbaa !292
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn54.i, i64 12
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !294
  %i.bk = load i32, ptr %.sroa.025.051.i, align 4, !tbaa !87
  store i32 %i.bk, ptr %i.ag, align 4, !tbaa !292
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.025.051.i, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !87
  store i32 %i.bm, ptr %i.bh, align 4, !tbaa !294
  %i.bn = load i32, ptr %.sroa.029.052.i, align 4, !tbaa !87
  store i32 %i.bn, ptr %.sroa.025.051.i, align 4, !tbaa !292
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.029.052.i, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !87
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !294
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %.01553.i, i64 8
  %i.br = load i32, ptr %i.ag, align 4, !tbaa !87
  store i32 %i.br, ptr %.055.i, align 4, !tbaa !292
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn54.i, i64 12
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !294
  %i.bv = load i32, ptr %.01553.i, align 4, !tbaa !87
  store i32 %i.bv, ptr %i.ag, align 4, !tbaa !292
  %i.bw = getelementptr inbounds nuw i8, ptr %.01553.i, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !87
  store i32 %i.bx, ptr %i.bs, align 4, !tbaa !294
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.025.1.i = phi ptr [ %i.bf, %bb.h ], [ %.sroa.025.051.i, %bb.i ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %i.be, %bb.h ], [ %.sroa.029.052.i, %bb.i ] ; 2 uses
  %.116.i = phi ptr [ %.01553.i, %bb.h ], [ %i.bq, %bb.i ] ; 2 uses
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.055.i, i64 8 ; 2 uses
  %.not35.i = icmp eq ptr %.sink.i, %i.p
  %indvar.next = add i64 %indvar, 1
  br i1 %.not35.i, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i13, !llvm.loop !4724

_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i: ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.025.048.i = phi ptr [ %.sroa.025.051.i, %middle.block ], [ %i.u, %bb.f ], [ %.sroa.025.051.i, %.lr.ph.i.i.i ], [ %.sroa.025.1.i, %bb.j ]
  %.sroa.029.046.i = phi ptr [ %.sroa.029.052.i, %middle.block ], [ %i.t, %bb.f ], [ %.sroa.029.052.i, %.lr.ph.i.i.i ], [ %.sroa.029.1.i, %bb.j ]
  %.01544.i = phi ptr [ %.01553.i, %middle.block ], [ %i.o, %bb.f ], [ %.01553.i, %.lr.ph.i.i.i ], [ %.116.i, %bb.j ]
  %.2.i = phi ptr [ %i.ar, %middle.block ], [ %.049.i, %bb.f ], [ %i.bb, %.lr.ph.i.i.i ], [ %.0.i, %bb.j ]
  store ptr %.sroa.025.048.i, ptr %5, align 8, !tbaa !390
  %.pre = load ptr, ptr %2, align 8, !tbaa !73
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  br i1 %or.cond74, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.ca = load i32, ptr %.lcssa.i, align 4, !tbaa !87
  store i32 %i.ca, ptr %i.o, align 4, !tbaa !292
  %i.cb = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !87
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !294
  %i.ce = load i32, ptr %i.c, align 4, !tbaa !87
  store i32 %i.ce, ptr %.lcssa.i, align 4, !tbaa !292
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !87
  store i32 %i.cg, ptr %i.cb, align 4, !tbaa !294
  %.039.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ch = icmp eq ptr %i.bz, %i.p
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.l, %bb.m
  %indvar220 = phi i64 [ %indvar.next221, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.ci = phi ptr [ %i.dg, %bb.m ], [ %i.bz, %bb.l ] ; 10 uses
  %.043.i = phi ptr [ %.0.i16, %bb.m ], [ %.039.i, %bb.l ] ; 3 uses
  %.pn42.i = phi ptr [ %.043.i, %bb.m ], [ %i.o, %bb.l ]
  %.01341.i = phi ptr [ %.114.i, %bb.m ], [ %i.o, %bb.l ] ; 12 uses
  %.sroa.021.040.i = phi ptr [ %.sroa.021.1.i, %bb.m ], [ %i.by, %bb.l ] ; 6 uses
  %i.cj = icmp eq ptr %.sroa.021.040.i, %i.r
  br i1 %i.cj, label %.lr.ph.i.i.i21.preheader, label %bb.m

.lr.ph.i.i.i21.preheader:                         ; preds = %.lr.ph.i15
  %i.ck = add i64 %i.q, -16
  %15 = sub i64 %i.ck, %i.l
  %16 = lshr i64 %15, 3
  %17 = add nuw nsw i64 %16, 1
  %18 = mul i64 %indvar220, 2305843009213693951
  %i.cl = add i64 %18, %17                        ; 3 uses
  %min.iters.check229 = icmp ult i64 %i.cl, 22
  br i1 %min.iters.check229, label %.lr.ph.i.i.i21.preheader274, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.lr.ph.i.i.i21.preheader
  %i.cm = add i64 %i.q, -16
  %i.cn = sub i64 %i.cm, %i.l
  %i.co = and i64 %i.cn, -8                       ; 2 uses
  %19 = add i64 %i.co, 8
  %i.cp = shl i64 %indvar220, 3
  %20 = sub i64 %19, %i.cp
  %i.cq = getelementptr i8, ptr %.01341.i, i64 %20
  %scevgep223 = getelementptr i8, ptr %.lcssa.i, i64 %i.co
  %scevgep224 = getelementptr i8, ptr %scevgep223, i64 16
  %bound0225 = icmp ult ptr %.01341.i, %scevgep224
  %bound1226 = icmp ult ptr %i.ci, %i.cq
  %found.conflict227 = and i1 %bound0225, %bound1226
  br i1 %found.conflict227, label %.lr.ph.i.i.i21.preheader274, label %vector.ph230

vector.ph230:                                     ; preds = %vector.memcheck218
  %n.vec231 = and i64 %i.cl, -4                   ; 3 uses
  %i.cr = shl i64 %n.vec231, 3                    ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ci, i64 %i.cr
  %i.ct = getelementptr i8, ptr %.01341.i, i64 %i.cr ; 2 uses
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next246, %vector.body232 ] ; 2 uses
  %i.cu = shl i64 %index233, 3                    ; 3 uses
  %i.cv = or disjoint i64 %i.cu, 16               ; 2 uses
  %next.gep234 = getelementptr i8, ptr %i.ci, i64 %i.cu
  %next.gep235 = getelementptr i8, ptr %i.ci, i64 %i.cv
  %next.gep236 = getelementptr i8, ptr %.01341.i, i64 %i.cu
  %next.gep237 = getelementptr i8, ptr %.01341.i, i64 %i.cv
  %wide.vec238 = load <4 x i32>, ptr %next.gep234, align 4, !tbaa !87, !alias.scope !4725
  %wide.vec241 = load <4 x i32>, ptr %next.gep235, align 4, !tbaa !87, !alias.scope !4725
  store <4 x i32> %wide.vec238, ptr %next.gep236, align 4, !tbaa !87, !alias.scope !4728, !noalias !4725
  store <4 x i32> %wide.vec241, ptr %next.gep237, align 4, !tbaa !87, !alias.scope !4728, !noalias !4725
  %index.next246 = add nuw i64 %index233, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next246, %n.vec231
  br i1 %i.cw, label %middle.block247, label %vector.body232, !llvm.loop !4730

middle.block247:                                  ; preds = %vector.body232
  %cmp.n248 = icmp eq i64 %i.cl, %n.vec231
  br i1 %cmp.n248, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit, label %.lr.ph.i.i.i21.preheader274

.lr.ph.i.i.i21.preheader274:                      ; preds = %vector.memcheck218, %.lr.ph.i.i.i21.preheader, %middle.block247
  %.ph = phi ptr [ %i.ci, %vector.memcheck218 ], [ %i.ci, %.lr.ph.i.i.i21.preheader ], [ %i.cs, %middle.block247 ]
  %.04.i.i.i22.ph = phi ptr [ %.01341.i, %vector.memcheck218 ], [ %.01341.i, %.lr.ph.i.i.i21.preheader ], [ %i.ct, %middle.block247 ]
  br label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %.lr.ph.i.i.i21.preheader274, %.lr.ph.i.i.i21
  %i.cx = phi ptr [ %i.dc, %.lr.ph.i.i.i21 ], [ %.ph, %.lr.ph.i.i.i21.preheader274 ] ; 3 uses
  %.04.i.i.i22 = phi ptr [ %i.dd, %.lr.ph.i.i.i21 ], [ %.04.i.i.i22.ph, %.lr.ph.i.i.i21.preheader274 ] ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !87
  store i32 %i.cy, ptr %.04.i.i.i22, align 4, !tbaa !292
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !87
  %i.db = getelementptr inbounds nuw i8, ptr %.04.i.i.i22, i64 4
  store i32 %i.da, ptr %i.db, align 4, !tbaa !294
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.04.i.i.i22, i64 8 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.dc, %i.p
  br i1 %.not.i.i.i23, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit, label %.lr.ph.i.i.i21, !llvm.loop !4731

bb.m:                                             ; preds = %.lr.ph.i15
  %i.de = load i32, ptr %.01341.i, align 4, !tbaa !87
  %i.df = load i32, ptr %.sroa.021.040.i, align 4, !tbaa !87
  %.not28.i = icmp slt i32 %i.de, %i.df           ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.ci, align 4, !tbaa !87
  store i32 %i.dh, ptr %.043.i, align 4, !tbaa !292
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !87
  %i.dk = getelementptr inbounds nuw i8, ptr %.pn42.i, i64 12
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !294
  %.01341.sink67.i = select i1 %.not28.i, ptr %.01341.i, ptr %.sroa.021.040.i ; 2 uses
  %.sroa.021.1.i.idx = select i1 %.not28.i, i64 0, i64 8
  %.sroa.021.1.i = getelementptr inbounds nuw i8, ptr %.sroa.021.040.i, i64 %.sroa.021.1.i.idx ; 2 uses
  %.114.i.idx = select i1 %.not28.i, i64 8, i64 0
  %.114.i = getelementptr inbounds nuw i8, ptr %.01341.i, i64 %.114.i.idx ; 2 uses
  %i.dl = load i32, ptr %.01341.sink67.i, align 4, !tbaa !87
  store i32 %i.dl, ptr %i.ci, align 4, !tbaa !292
  %i.dm = getelementptr inbounds nuw i8, ptr %.01341.sink67.i, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !87
  store i32 %i.dn, ptr %i.di, align 4, !tbaa !294
  %.0.i16 = getelementptr inbounds nuw i8, ptr %.043.i, i64 8 ; 2 uses
  %i.do = icmp eq ptr %i.dg, %i.p
  %indvar.next221 = add i64 %indvar220, 1
  br i1 %i.do, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit, label %.lr.ph.i15, !llvm.loop !4732

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit: ; preds = %bb.m, %.lr.ph.i.i.i21, %middle.block247, %bb.k, %bb.l, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i, %bb.e
  %i.dp = phi ptr [ %.pre, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.p, %bb.e ], [ %i.p, %middle.block247 ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %i.p, %.lr.ph.i.i.i21 ], [ %i.p, %bb.m ]
  %.sroa.061.0 = phi ptr [ %.sroa.029.046.i, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.c, %bb.e ], [ %.sroa.021.040.i, %middle.block247 ], [ %i.c, %bb.k ], [ %i.by, %bb.l ], [ %.sroa.021.040.i, %.lr.ph.i.i.i21 ], [ %.sroa.021.1.i, %bb.m ]
  %.073 = phi ptr [ %.01544.i, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.o, %bb.e ], [ %.01341.i, %middle.block247 ], [ %i.o, %bb.k ], [ %i.o, %bb.l ], [ %.01341.i, %.lr.ph.i.i.i21 ], [ %.114.i, %bb.m ]
  %i.dq = phi ptr [ %.2.i, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.o, %bb.e ], [ %i.ct, %middle.block247 ], [ %i.o, %bb.k ], [ %.039.i, %bb.l ], [ %i.dd, %.lr.ph.i.i.i21 ], [ %.0.i16, %bb.m ]
  store ptr %i.dp, ptr %1, align 8, !tbaa !390
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit
  %.sroa.061.1 = phi ptr [ %.sroa.061.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.1 = phi ptr [ %.073, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %.0 = phi ptr [ %i.dq, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.dr = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %.not23.i = icmp eq ptr %.sroa.061.1, %i.dr
  %.not.i25 = icmp eq ptr %.0, %.1
  %or.cond.i26 = select i1 %.not23.i, i1 true, i1 %.not.i25 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS0_10antistableINS6_3dtl23flat_tree_value_compareISt4lessIiES4_NSA_9select1stIiEEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %5, align 8, !tbaa !73, !noalias !4733
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.p
  %.sroa.035.0 = phi ptr [ %i.ds, %bb.p ], [ %i.dy, %.split.i ]
  %.sroa.020.0.ph.i = phi ptr [ %i.dt, %bb.p ], [ %i.dx, %.split.i ] ; 5 uses
  %.sroa.023.0.ph.i = phi ptr [ %.sroa.061.1, %bb.p ], [ %i.dw, %.split.i ] ; 4 uses
  %.013.ph.i = phi ptr [ %.1, %bb.p ], [ %.013.i, %.split.i ]
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.outer.i
  %.sroa.035.1 = phi ptr [ %.sroa.035.0, %.outer.i ], [ %i.eg, %bb.r ] ; 6 uses
  %.013.i = phi ptr [ %.013.ph.i, %.outer.i ], [ %i.ef, %bb.r ] ; 5 uses
  %i.du = load i32, ptr %.013.i, align 4, !tbaa !87, !noalias !4733 ; 2 uses
  %i.dv = load i32, ptr %.sroa.020.0.ph.i, align 4, !tbaa !87, !noalias !4733 ; 2 uses
  %.not31.i = icmp slt i32 %i.du, %i.dv
  br i1 %.not31.i, label %bb.r, label %.split.i

.split.i:                                         ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.023.0.ph.i, i64 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.020.0.ph.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.035.1, i64 8 ; 2 uses
  store i32 %i.dv, ptr %.sroa.035.1, align 4, !tbaa !292, !noalias !4733
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.020.0.ph.i, i64 4 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !87, !noalias !4733
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.035.1, i64 4
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !294, !noalias !4733
  %i.ec = load i32, ptr %.sroa.023.0.ph.i, align 4, !tbaa !87, !noalias !4733
  store i32 %i.ec, ptr %.sroa.020.0.ph.i, align 4, !tbaa !292, !noalias !4733
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.023.0.ph.i, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !87, !noalias !4733
  store i32 %i.ee, ptr %i.dz, align 4, !tbaa !294, !noalias !4733
  %.not33.i = icmp eq ptr %i.dw, %i.dr
  br i1 %.not33.i, label %.loopexit.i, label %.outer.i, !llvm.loop !4736

bb.r:                                             ; preds = %bb.q
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.035.1, i64 8 ; 2 uses
  store i32 %i.du, ptr %.sroa.035.1, align 4, !tbaa !292, !noalias !4733
  %i.eh = getelementptr inbounds nuw i8, ptr %.013.i, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !87, !noalias !4733
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.035.1, i64 4
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !294, !noalias !4733
  %.not32.i = icmp eq ptr %i.ef, %.0
  br i1 %.not32.i, label %.loopexit.i, label %bb.q, !llvm.loop !4736

.loopexit.i:                                      ; preds = %.split.i, %bb.r
  %.sroa.035.2 = phi ptr [ %i.eg, %bb.r ], [ %i.dy, %.split.i ]
  %.129.i = phi ptr [ %i.ef, %bb.r ], [ %.013.i, %.split.i ]
  %.sroa.023.128.i = phi ptr [ %.sroa.023.0.ph.i, %bb.r ], [ %i.dw, %.split.i ]
  %.sroa.020.127.i = phi ptr [ %.sroa.020.0.ph.i, %bb.r ], [ %i.dx, %.split.i ]
  store ptr %.sroa.020.127.i, ptr %5, align 8, !tbaa !390, !noalias !4733
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS0_10antistableINS6_3dtl23flat_tree_value_compareISt4lessIiES4_NSA_9select1stIiEEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit

bb.s:                                             ; preds = %bb.n
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS0_10antistableINS6_3dtl23flat_tree_value_compareISt4lessIiES4_NSA_9select1stIiEEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.s, %bb.t
  %.sroa.030.0.ph = phi ptr [ %i.em, %bb.t ], [ %i.ds, %bb.s ]
  %.sroa.018.0.i.ph = phi ptr [ %i.eo, %bb.t ], [ %.sroa.061.1, %bb.s ] ; 4 uses
  %.0.i27.ph = phi ptr [ %.0.i27, %bb.t ], [ %.1, %bb.s ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.u
  %.sroa.030.0 = phi ptr [ %i.em, %bb.u ], [ %.sroa.030.0.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i27 = phi ptr [ %i.es, %bb.u ], [ %.0.i27.ph, %.preheader.i.outer ] ; 5 uses
  %i.ek = load i32, ptr %.0.i27, align 4, !tbaa !87, !noalias !4737 ; 2 uses
  %i.el = load i32, ptr %.sroa.018.0.i.ph, align 4, !tbaa !87, !noalias !4737 ; 2 uses
  %.not24.i = icmp slt i32 %i.ek, %i.el
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.030.0, i64 8 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.030.0, i64 4 ; 2 uses
  br i1 %.not24.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.ph, i64 8 ; 3 uses
  store i32 %i.el, ptr %.sroa.030.0, align 4, !tbaa !292, !noalias !4737
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.ph, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !87, !noalias !4737
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !294, !noalias !4737
  %i.er = icmp eq ptr %i.eo, %i.dr
  br i1 %i.er, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS0_10antistableINS6_3dtl23flat_tree_value_compareISt4lessIiES4_NSA_9select1stIiEEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !4740

bb.u:                                             ; preds = %.preheader.i
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8 ; 3 uses
  store i32 %i.ek, ptr %.sroa.030.0, align 4, !tbaa !292, !noalias !4737
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i27, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !87, !noalias !4737
  store i32 %i.eu, ptr %i.en, align 4, !tbaa !294, !noalias !4737
  %i.ev = icmp eq ptr %i.es, %.0
  br i1 %i.ev, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS0_10antistableINS6_3dtl23flat_tree_value_compareISt4lessIiES4_NSA_9select1stIiEEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i, !llvm.loop !4740

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEES8_NS0_10antistableINS6_3dtl23flat_tree_value_compareISt4lessIiES4_NSA_9select1stIiEEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit: ; preds = %bb.u, %bb.t, %bb.s, %.loopexit.i, %bb.o
  %.sroa.040.0 = phi ptr [ %.sroa.035.2, %.loopexit.i ], [ %i.ds, %bb.o ], [ %i.ds, %bb.s ], [ %i.em, %bb.t ], [ %i.em, %bb.u ]
  %.sroa.061.2 = phi ptr [ %.sroa.023.128.i, %.loopexit.i ], [ %.sroa.061.1, %bb.o ], [ %.sroa.061.1, %bb.s ], [ %.sroa.018.0.i.ph, %bb.u ], [ %i.eo, %bb.t ]
  %.2 = phi ptr [ %.129.i, %.loopexit.i ], [ %.1, %bb.o ], [ %.1, %bb.s ], [ %i.es, %bb.u ], [ %.0.i27, %bb.t ]
  store ptr %.sroa.040.0, ptr %1, align 8, !tbaa !390
  store ptr %.2, ptr %6, align 8, !tbaa !73
  store ptr %.0, ptr %7, align 8, !tbaa !73
  store ptr %.sroa.061.2, ptr %3, align 8, !tbaa !390
  %i.ew = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %i.ew, ptr %0, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiES7_NSC_9select1stIiEEEEEESA_SA_SA_SJ_NS0_7swap_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.66") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #2 comdat {
bb.a:
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiES7_NSC_9select1stIiEEEEEESA_SA_SA_SJ_NS0_7swap_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_:bb.a
  %.sroa.047.0 = phi ptr [ %i.do, %.lr.ph.i29 ], [ %.sroa.070.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dp, %.lr.ph.i29 ], [ %.sroa.065.0, %bb.v ] ; 2 uses
  %i.dm = phi ptr [ %i.dn, %.lr.ph.i29 ], [ %i.db, %bb.v ] ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -8 ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 4 uses
  %i.dq = load i64, ptr %i.dp, align 4, !noalias !4770
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !87, !noalias !4770
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !292, !noalias !4770
  %i.ds = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !87, !noalias !4770
  %i.du = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !294, !noalias !4770
  %i.dv = load i32, ptr %i.dn, align 4, !tbaa !87, !noalias !4770
  store i32 %i.dv, ptr %i.do, align 4, !tbaa !292, !noalias !4770
  %i.dw = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !87, !noalias !4770
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !294, !noalias !4770
  store i64 %i.dq, ptr %i.dn, align 4, !noalias !4770
  %.not.i30 = icmp eq ptr %i.dn, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29, !llvm.loop !4773

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.sroa.065.0, %bb.w ] ; 2 uses
  %i.dy = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.db, %bb.w ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !87, !noalias !4774
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !87, !noalias !4774
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !87, !noalias !4774
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !87, !noalias !4774
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !87, !noalias !4774
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !87, !noalias !4774
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !87, !noalias !4774
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !87, !noalias !4774
  %.not.i.i31 = icmp eq ptr %i.dz, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !4667

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.w, %bb.v, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.df, %.lr.ph.i28 ], [ %i.db, %bb.t ], [ %i.ea, %.lr.ph.i.i ], [ %.sroa.065.0, %bb.w ], [ %.sroa.065.0, %bb.v ], [ %i.dp, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !390
  %i.eh = load ptr, ptr %1, align 8, !tbaa !73, !noalias !4779 ; 4 uses
  %.neg99 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %.neg99 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.070.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEESA_EEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg99, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -8 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 2 uses
  %i.el = load <2 x i32>, ptr %i.ej, align 4, !tbaa !87
  %i.em = load <2 x i32>, ptr %i.ek, align 4, !tbaa !87
  store <2 x i32> %i.em, ptr %i.ej, align 4, !tbaa !87
  store <2 x i32> %i.el, ptr %i.ek, align 4, !tbaa !87
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.en = load ptr, ptr %2, align 8, !tbaa !390   ; 2 uses
  %i.eo = icmp eq ptr %i.ei, %i.en
  br i1 %i.eo, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = icmp eq ptr %i.en, %i.eh
  br i1 %i.ep, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEESA_EEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eh, %bb.y ], [ %i.ei, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !390
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEESA_EEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEESA_EEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, %bb.z, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !390
  %i.eq = load ptr, ptr %1, align 8, !tbaa !390
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8 ; 2 uses
  store ptr %i.er, ptr %1, align 8, !tbaa !390
  %i.es = icmp ne i64 %.0141, 0
  %.neg = sext i1 %i.es to i64
  %i.et = add i64 %.0141, %.neg
  %i.eu = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.eu to i64
  %i.ev = add i64 %.sroa.speculated, %.neg24
  %i.ew = add i64 %.096140, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ew, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4782

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEESA_EEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4783)
  %i.ex = load ptr, ptr %6, align 8, !tbaa !73, !noalias !4783
  store ptr %i.ex, ptr %0, align 8, !tbaa !390, !alias.scope !4783
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 7 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 6 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 9 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.a = load ptr, ptr %6, align 8, !tbaa !73     ; 3 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !390
  %i.b = load ptr, ptr %7, align 8, !tbaa !73     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.c = load ptr, ptr %3, align 8, !tbaa !73     ; 7 uses
  store ptr %i.c, ptr %9, align 8, !tbaa !390
  %i.d = load ptr, ptr %5, align 8, !tbaa !390    ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !73     ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !73     ; 2 uses
  %.not1.i = icmp eq ptr %i.f, %i.g
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4, !tbaa !87, !noalias !4786
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87, !noalias !4786
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.c, !llvm.loop !4688

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ] ; 9 uses
  %i.m = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o ; 8 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !390
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !390
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  store ptr %.lcssa.i, ptr %11, align 8, !tbaa !390
  %i.q = load ptr, ptr %2, align 8, !tbaa !73
  store ptr %i.q, ptr %12, align 8, !tbaa !390
  %i.r = load ptr, ptr %4, align 8, !tbaa !73
  store ptr %i.r, ptr %13, align 8, !tbaa !390
  call void @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit

bb.f:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.s = load ptr, ptr %2, align 8, !tbaa !73     ; 5 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !73     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4789)
  store ptr %i.p, ptr %10, align 8, !tbaa !390, !alias.scope !4789
  %.not.i7 = icmp eq ptr %.lcssa.i, %i.s
  %.not27.i = icmp eq ptr %i.c, %i.u
  %or.cond = select i1 %.not.i7, i1 true, i1 %.not27.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.x, ptr %10, align 8, !tbaa !390, !alias.scope !4789, !noalias !4792
  %i.y = load i64, ptr %i.p, align 4, !noalias !4789
  %i.z = load i32, ptr %.lcssa.i, align 4, !tbaa !87, !noalias !4789
  store i32 %i.z, ptr %i.p, align 4, !tbaa !292, !noalias !4789
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !87, !noalias !4789
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !294, !noalias !4789
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !87, !noalias !4789
  store i32 %i.ad, ptr %.lcssa.i, align 4, !tbaa !292, !noalias !4789
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !87, !noalias !4789
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !294, !noalias !4789
  store i64 %i.y, ptr %i.c, align 4, !noalias !4789
  %i.ag = icmp eq ptr %i.w, %i.s
  br i1 %i.ag, label %.loopexit.i, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %bb.g
  %.promoted = load ptr, ptr %10, align 8
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.preheader, %bb.h
  %indvar = phi i64 [ 0, %.lr.ph.i8.preheader ], [ %indvar.next, %bb.h ] ; 3 uses
  %i.ah = phi ptr [ %.promoted, %.lr.ph.i8.preheader ], [ %i.bi, %bb.h ] ; 5 uses
  %i.ai = phi ptr [ %i.w, %.lr.ph.i8.preheader ], [ %i.bh, %bb.h ] ; 9 uses
  %.sroa.022.037.i = phi ptr [ %i.p, %.lr.ph.i8.preheader ], [ %.sroa.022.1.i, %bb.h ] ; 11 uses
  %.sroa.016.036.i = phi ptr [ %i.v, %.lr.ph.i8.preheader ], [ %.sroa.016.1.i, %bb.h ] ; 6 uses
  %i.aj = icmp eq ptr %.sroa.016.036.i, %i.u
  br i1 %i.aj, label %.lr.ph.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i8
  store ptr %i.ah, ptr %10, align 8
  %i.ak = add i64 %i.t, -16
  %14 = sub i64 %i.ak, %i.m
  %15 = lshr i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = mul i64 %indvar, 2305843009213693951
  %i.al = add i64 %17, %16                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.al, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader190, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %18 = add i64 %i.t, -16
  %19 = sub i64 %18, %i.m
  %20 = and i64 %19, -8                           ; 2 uses
  %i.am = getelementptr i8, ptr %.lcssa.i, i64 %20
  %scevgep = getelementptr i8, ptr %i.am, i64 16
  %i.an = add i64 %20, 8
  %i.ao = shl i64 %indvar, 3
  %i.ap = sub i64 %i.an, %i.ao
  %scevgep156 = getelementptr i8, ptr %.sroa.022.037.i, i64 %i.ap
  %bound0 = icmp ult ptr %i.ai, %scevgep156
  %bound1 = icmp ult ptr %.sroa.022.037.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader190, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, -2                      ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.022.037.i, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.022.037.i, i64 %i.at ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.ai, i64 %i.at ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep157, align 4, !tbaa !87, !alias.scope !4795, !noalias !4798
  %wide.vec159 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !87, !alias.scope !4803, !noalias !4798
  store <4 x i32> %wide.vec159, ptr %next.gep157, align 4, !tbaa !87, !alias.scope !4795, !noalias !4798
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !4803, !noalias !4798
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !4805

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit.i.sink.split, label %.lr.ph.i.i.i.preheader190

.lr.ph.i.i.i.preheader190:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.022.037.i, %vector.memcheck ], [ %.sroa.022.037.i, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.ph191 = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader190, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader190 ] ; 4 uses
  %i.av = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.ph191, %.lr.ph.i.i.i.preheader190 ] ; 4 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !87, !noalias !4798
  %i.ax = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !87, !noalias !4798
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !87, !noalias !4798
  store i32 %i.aw, ptr %.sroa.0.0.i.i, align 4, !tbaa !87, !noalias !4798
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !87, !noalias !4798
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !87, !noalias !4798
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !87, !noalias !4798
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !87, !noalias !4798
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.s
  br i1 %.not.i.i.i, label %.loopexit.i.sink.split, label %.lr.ph.i.i.i, !llvm.loop !4806

bb.h:                                             ; preds = %.lr.ph.i8
  %i.be = load i32, ptr %.sroa.016.036.i, align 4, !tbaa !87, !noalias !4789
  %i.bf = load i32, ptr %.sroa.022.037.i, align 4, !tbaa !87, !noalias !4789
  %i.bg = icmp slt i32 %i.be, %i.bf               ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.ah, align 4, !noalias !4789
  %i.bk = load i32, ptr %i.ai, align 4, !tbaa !87, !noalias !4789
  store i32 %i.bk, ptr %i.ah, align 4, !tbaa !292, !noalias !4789
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !87, !noalias !4789
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !294, !noalias !4789
  %.sroa.022.037.sink58.i = select i1 %i.bg, ptr %.sroa.016.036.i, ptr %.sroa.022.037.i ; 3 uses
  %.sroa.016.1.idx.i = select i1 %i.bg, i64 8, i64 0
  %.sroa.016.1.i = getelementptr inbounds nuw i8, ptr %.sroa.016.036.i, i64 %.sroa.016.1.idx.i ; 2 uses
  %.sroa.022.1.idx.i = select i1 %i.bg, i64 0, i64 8
  %.sroa.022.1.i = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i, i64 %.sroa.022.1.idx.i ; 2 uses
  %i.bo = load i32, ptr %.sroa.022.037.sink58.i, align 4, !tbaa !87, !noalias !4789
  store i32 %i.bo, ptr %i.ai, align 4, !tbaa !292, !noalias !4789
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.022.037.sink58.i, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !87, !noalias !4789
  store i32 %i.bq, ptr %i.bl, align 4, !tbaa !294, !noalias !4789
  store i64 %i.bj, ptr %.sroa.022.037.sink58.i, align 4, !noalias !4789
  %i.br = icmp eq ptr %i.bh, %i.s
  %indvar.next = add i64 %indvar, 1
  br i1 %i.br, label %.loopexit.i.sink.split, label %.lr.ph.i8, !llvm.loop !4807

.loopexit.i.sink.split:                           ; preds = %bb.h, %.lr.ph.i.i.i, %middle.block
  %.sink = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %i.ar, %middle.block ], [ %i.bi, %bb.h ]
  %.sroa.016.035.i.ph = phi ptr [ %.sroa.016.036.i, %.lr.ph.i.i.i ], [ %.sroa.016.036.i, %middle.block ], [ %.sroa.016.1.i, %bb.h ]
  %.sroa.022.033.i.ph = phi ptr [ %.sroa.022.037.i, %.lr.ph.i.i.i ], [ %.sroa.022.037.i, %middle.block ], [ %.sroa.022.1.i, %bb.h ]
  store ptr %.sink, ptr %10, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.sink.split, %bb.g
  %.sroa.016.035.i = phi ptr [ %i.v, %bb.g ], [ %.sroa.016.035.i.ph, %.loopexit.i.sink.split ]
  %.sroa.022.033.i = phi ptr [ %i.p, %bb.g ], [ %.sroa.022.033.i.ph, %.loopexit.i.sink.split ]
  store ptr %.sroa.016.035.i, ptr %9, align 8, !tbaa !390, !noalias !4789
  store ptr %.sroa.022.033.i, ptr %8, align 8, !tbaa !390, !noalias !4789
  br label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit: ; preds = %.loopexit.i, %bb.f, %bb.e
  %i.bs = load ptr, ptr %10, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.bt = load ptr, ptr %2, align 8, !tbaa !73
  store ptr %i.bt, ptr %1, align 8, !tbaa !390
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit
  %.sroa.040.0 = phi ptr [ %i.bs, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.bu = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.bw = load ptr, ptr %8, align 8, !tbaa !73, !noalias !197 ; 5 uses
  %i.bx = load ptr, ptr %9, align 8, !tbaa !73, !noalias !197 ; 5 uses
  %.not.i12 = icmp eq ptr %i.bx, %i.bu
  %.not17.i = icmp eq ptr %.sroa.040.0, %i.bw
  %or.cond45 = select i1 %.not.i12, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %or.cond45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = load ptr, ptr %5, align 8, !tbaa !73, !noalias !4808
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.k
  %.sroa.019.0 = phi ptr [ %i.bv, %bb.k ], [ %i.ce, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.by, %bb.k ], [ %i.cd, %.split.i ] ; 5 uses
  %.sroa.013.0.ph.i = phi ptr [ %i.bx, %bb.k ], [ %i.cc, %.split.i ] ; 5 uses
  %.sroa.017.0.ph.i = phi ptr [ %i.bw, %bb.k ], [ %.sroa.017.0.i, %.split.i ]
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.outer.i
  %.sroa.019.1 = phi ptr [ %.sroa.019.0, %.outer.i ], [ %i.cn, %bb.m ] ; 8 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.cm, %bb.m ] ; 6 uses
  %i.bz = load i32, ptr %.sroa.010.0.ph.i, align 4, !tbaa !87, !noalias !4808 ; 2 uses
  %i.ca = load i32, ptr %.sroa.017.0.i, align 4, !tbaa !87, !noalias !4808 ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %.split.i, label %bb.m

.split.i:                                         ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.013.0.ph.i, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.010.0.ph.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.019.1, i64 8 ; 2 uses
  %i.cf = load i64, ptr %.sroa.019.1, align 4, !noalias !4808
  store i32 %i.bz, ptr %.sroa.019.1, align 4, !tbaa !292, !noalias !4808
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.010.0.ph.i, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !87, !noalias !4808
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.019.1, i64 4
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !294, !noalias !4808
  %i.cj = load i32, ptr %.sroa.013.0.ph.i, align 4, !tbaa !87, !noalias !4808
  store i32 %i.cj, ptr %.sroa.010.0.ph.i, align 4, !tbaa !292, !noalias !4808
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.013.0.ph.i, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !87, !noalias !4808
  store i32 %i.cl, ptr %i.cg, align 4, !tbaa !294, !noalias !4808
  store i64 %i.cf, ptr %.sroa.013.0.ph.i, align 4, !noalias !4808
  %.not27.i11 = icmp eq ptr %i.cc, %i.bu
  br i1 %.not27.i11, label %.loopexit.i10, label %.outer.i, !llvm.loop !4811

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.019.1, i64 8 ; 2 uses
  %i.co = load i32, ptr %.sroa.019.1, align 4, !tbaa !87, !noalias !4808
  store i32 %i.ca, ptr %.sroa.019.1, align 4, !tbaa !87, !noalias !4808
  store i32 %i.co, ptr %.sroa.017.0.i, align 4, !tbaa !87, !noalias !4808
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.019.1, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !87, !noalias !4808
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !87, !noalias !4808
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !87, !noalias !4808
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !87, !noalias !4808
  %.not26.i = icmp eq ptr %i.cm, %.sroa.040.0
  br i1 %.not26.i, label %.loopexit.i10, label %bb.l, !llvm.loop !4811

.loopexit.i10:                                    ; preds = %.split.i, %bb.m
  %.sroa.019.2 = phi ptr [ %i.cn, %bb.m ], [ %i.ce, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.cm, %bb.m ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.m ], [ %i.cc, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.m ], [ %i.cd, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !390, !noalias !4808
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit

bb.n:                                             ; preds = %bb.i
  br i1 %or.cond45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.n, %bb.o
  %.sroa.0.0.ph = phi ptr [ %i.cw, %bb.o ], [ %i.bv, %bb.n ]
  %.sroa.07.0.i.ph = phi ptr [ %i.cz, %bb.o ], [ %i.bx, %bb.n ] ; 5 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.o ], [ %i.bw, %bb.n ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.sroa.0.0 = phi ptr [ %i.cw, %bb.p ], [ %.sroa.0.0.ph, %.preheader.i.outer ] ; 5 uses
  %.sroa.012.0.i = phi ptr [ %i.de, %bb.p ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.ct = load i32, ptr %.sroa.07.0.i.ph, align 4, !tbaa !87, !noalias !4812 ; 2 uses
  %i.cu = load i32, ptr %.sroa.012.0.i, align 4, !tbaa !87, !noalias !4812 ; 2 uses
  %i.cv = icmp slt i32 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 4 uses
  %i.cx = load i32, ptr %.sroa.0.0, align 4, !tbaa !87, !noalias !4812 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4 ; 4 uses
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.ph, i64 8 ; 3 uses
  store i32 %i.ct, ptr %.sroa.0.0, align 4, !tbaa !87, !noalias !4812
  store i32 %i.cx, ptr %.sroa.07.0.i.ph, align 4, !tbaa !87, !noalias !4812
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.ph, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !87, !noalias !4812
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !87, !noalias !4812
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !87, !noalias !4812
  store i32 %i.db, ptr %i.da, align 4, !tbaa !87, !noalias !4812
  %i.dd = icmp eq ptr %i.cz, %i.bu
  br i1 %i.dd, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !4815

bb.p:                                             ; preds = %.preheader.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8 ; 3 uses
  store i32 %i.cu, ptr %.sroa.0.0, align 4, !tbaa !87, !noalias !4812
  store i32 %i.cx, ptr %.sroa.012.0.i, align 4, !tbaa !87, !noalias !4812
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 4 ; 2 uses
  %i.dg = load i32, ptr %i.cy, align 4, !tbaa !87, !noalias !4812
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !87, !noalias !4812
  store i32 %i.dh, ptr %i.cy, align 4, !tbaa !87, !noalias !4812
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !87, !noalias !4812
  %i.di = icmp eq ptr %i.de, %.sroa.040.0
  br i1 %i.di, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !4815

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit: ; preds = %bb.p, %bb.o, %bb.n, %.loopexit.i10, %bb.j
  %i.dj = phi ptr [ %.sroa.013.123.i, %.loopexit.i10 ], [ %i.bx, %bb.j ], [ %i.bx, %bb.n ], [ %.sroa.07.0.i.ph, %bb.p ], [ %i.cz, %bb.o ]
  %i.dk = phi ptr [ %.sroa.017.124.i, %.loopexit.i10 ], [ %i.bw, %bb.j ], [ %i.bw, %bb.n ], [ %i.de, %bb.p ], [ %.sroa.012.0.i, %bb.o ]
  %.sroa.026.0 = phi ptr [ %.sroa.019.2, %.loopexit.i10 ], [ %i.bv, %bb.j ], [ %i.bv, %bb.n ], [ %i.cw, %bb.o ], [ %i.cw, %bb.p ]
  store ptr %.sroa.026.0, ptr %1, align 8, !tbaa !390
  store ptr %i.dk, ptr %6, align 8, !tbaa !390
  store ptr %.sroa.040.0, ptr %7, align 8, !tbaa !390
  store ptr %i.dj, ptr %3, align 8, !tbaa !390
  %i.dl = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %i.dl, ptr %0, align 8, !tbaa !390
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef align 8 dead_on_return %8) local_unnamed_addr #2 comdat {
bb.a:
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 7 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 9 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %15 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.a = load ptr, ptr %6, align 8, !tbaa !73     ; 3 uses
  store ptr %i.a, ptr %9, align 8, !tbaa !390
  %i.b = load ptr, ptr %7, align 8, !tbaa !73     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = load ptr, ptr %3, align 8, !tbaa !73     ; 7 uses
  store ptr %i.c, ptr %10, align 8, !tbaa !390
  %i.d = load ptr, ptr %5, align 8, !tbaa !390    ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !73     ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !73     ; 2 uses
  %.not2.i = icmp eq ptr %i.f, %i.g
  br i1 %.not2.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4, !tbaa !87, !noalias !4816
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87, !noalias !4816
  %.not1.i = icmp slt i32 %i.j, %i.h
  br i1 %.not1.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %bb.c, !llvm.loop !4716

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 9 uses
  %i.l = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n ; 8 uses
  store ptr %i.o, ptr %9, align 8, !tbaa !390
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !390
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  store ptr %.lcssa.i, ptr %12, align 8, !tbaa !390
  %i.p = load ptr, ptr %2, align 8, !tbaa !73
  store ptr %i.p, ptr %13, align 8, !tbaa !390
  %i.q = load ptr, ptr %4, align 8, !tbaa !73
  store ptr %i.q, ptr %14, align 8, !tbaa !390
  %i.r = load ptr, ptr %8, align 8, !tbaa !3395, !nonnull !197
  store ptr %i.r, ptr %15, align 8, !tbaa !2072
  call void @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dead_on_return %15)
  br label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit

bb.f:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  %i.s = load ptr, ptr %2, align 8, !tbaa !73     ; 5 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !73     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4819)
  store ptr %i.o, ptr %11, align 8, !tbaa !390, !alias.scope !4819
  %.not.i7 = icmp eq ptr %.lcssa.i, %i.s
  %.not27.i = icmp eq ptr %i.c, %i.u
  %or.cond = select i1 %.not.i7, i1 true, i1 %.not27.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.x, ptr %11, align 8, !tbaa !390, !alias.scope !4819, !noalias !4822
  %i.y = load i64, ptr %i.o, align 4, !noalias !4819
  %i.z = load i32, ptr %.lcssa.i, align 4, !tbaa !87, !noalias !4819
  store i32 %i.z, ptr %i.o, align 4, !tbaa !292, !noalias !4819
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !87, !noalias !4819
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !294, !noalias !4819
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !87, !noalias !4819
  store i32 %i.ad, ptr %.lcssa.i, align 4, !tbaa !292, !noalias !4819
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !87, !noalias !4819
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !294, !noalias !4819
  store i64 %i.y, ptr %i.c, align 4, !noalias !4819
  %i.ag = icmp eq ptr %i.w, %i.s
  br i1 %i.ag, label %.loopexit.i, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %bb.g
  %.promoted = load ptr, ptr %11, align 8
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.preheader, %bb.h
  %indvar = phi i64 [ 0, %.lr.ph.i8.preheader ], [ %indvar.next, %bb.h ] ; 3 uses
  %i.ah = phi ptr [ %.promoted, %.lr.ph.i8.preheader ], [ %i.bh, %bb.h ] ; 5 uses
  %i.ai = phi ptr [ %i.w, %.lr.ph.i8.preheader ], [ %i.bg, %bb.h ] ; 9 uses
  %.sroa.022.038.i = phi ptr [ %i.o, %.lr.ph.i8.preheader ], [ %.sroa.022.1.i, %bb.h ] ; 11 uses
  %.sroa.016.037.i = phi ptr [ %i.v, %.lr.ph.i8.preheader ], [ %.sroa.016.1.i, %bb.h ] ; 6 uses
  %i.aj = icmp eq ptr %.sroa.016.037.i, %i.u
  br i1 %i.aj, label %.lr.ph.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i8
  store ptr %i.ah, ptr %11, align 8
  %i.ak = add i64 %i.t, -16
  %16 = sub i64 %i.ak, %i.l
  %17 = lshr i64 %16, 3
  %18 = add nuw nsw i64 %17, 1
  %19 = mul i64 %indvar, 2305843009213693951
  %i.al = add i64 %19, %18                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.al, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader195, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %20 = add i64 %i.t, -16
  %21 = sub i64 %20, %i.l
  %22 = and i64 %21, -8                           ; 2 uses
  %i.am = getelementptr i8, ptr %.lcssa.i, i64 %22
  %scevgep = getelementptr i8, ptr %i.am, i64 16
  %i.an = add i64 %22, 8
  %i.ao = shl i64 %indvar, 3
  %i.ap = sub i64 %i.an, %i.ao
  %scevgep161 = getelementptr i8, ptr %.sroa.022.038.i, i64 %i.ap
  %bound0 = icmp ult ptr %i.ai, %scevgep161
  %bound1 = icmp ult ptr %.sroa.022.038.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader195, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, -2                      ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.022.038.i, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.022.038.i, i64 %i.at ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.ai, i64 %i.at ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep162, align 4, !tbaa !87, !alias.scope !4825, !noalias !4828
  %wide.vec164 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !87, !alias.scope !4833, !noalias !4828
  store <4 x i32> %wide.vec164, ptr %next.gep162, align 4, !tbaa !87, !alias.scope !4825, !noalias !4828
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !4833, !noalias !4828
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !4835

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit.i.sink.split, label %.lr.ph.i.i.i.preheader195

.lr.ph.i.i.i.preheader195:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.022.038.i, %vector.memcheck ], [ %.sroa.022.038.i, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.ph196 = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader195, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader195 ] ; 4 uses
  %i.av = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.ph196, %.lr.ph.i.i.i.preheader195 ] ; 4 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !87, !noalias !4828
  %i.ax = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !87, !noalias !4828
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !87, !noalias !4828
  store i32 %i.aw, ptr %.sroa.0.0.i.i, align 4, !tbaa !87, !noalias !4828
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !87, !noalias !4828
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !87, !noalias !4828
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !87, !noalias !4828
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !87, !noalias !4828
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.s
  br i1 %.not.i.i.i, label %.loopexit.i.sink.split, label %.lr.ph.i.i.i, !llvm.loop !4836

bb.h:                                             ; preds = %.lr.ph.i8
  %i.be = load i32, ptr %.sroa.022.038.i, align 4, !tbaa !87, !noalias !4819
  %i.bf = load i32, ptr %.sroa.016.037.i, align 4, !tbaa !87, !noalias !4819
  %.not28.i = icmp slt i32 %i.be, %i.bf           ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.ah, align 4, !noalias !4819
  %i.bj = load i32, ptr %i.ai, align 4, !tbaa !87, !noalias !4819
  store i32 %i.bj, ptr %i.ah, align 4, !tbaa !292, !noalias !4819
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !87, !noalias !4819
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !294, !noalias !4819
  %.sroa.022.038.sink59.i = select i1 %.not28.i, ptr %.sroa.022.038.i, ptr %.sroa.016.037.i ; 3 uses
  %.sroa.016.1.idx.i = select i1 %.not28.i, i64 0, i64 8
  %.sroa.016.1.i = getelementptr inbounds nuw i8, ptr %.sroa.016.037.i, i64 %.sroa.016.1.idx.i ; 2 uses
  %.sroa.022.1.idx.i = select i1 %.not28.i, i64 8, i64 0
  %.sroa.022.1.i = getelementptr inbounds nuw i8, ptr %.sroa.022.038.i, i64 %.sroa.022.1.idx.i ; 2 uses
  %i.bn = load i32, ptr %.sroa.022.038.sink59.i, align 4, !tbaa !87, !noalias !4819
  store i32 %i.bn, ptr %i.ai, align 4, !tbaa !292, !noalias !4819
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.022.038.sink59.i, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !87, !noalias !4819
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !294, !noalias !4819
  store i64 %i.bi, ptr %.sroa.022.038.sink59.i, align 4, !noalias !4819
  %i.bq = icmp eq ptr %i.bg, %i.s
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bq, label %.loopexit.i.sink.split, label %.lr.ph.i8, !llvm.loop !4837

.loopexit.i.sink.split:                           ; preds = %bb.h, %.lr.ph.i.i.i, %middle.block
  %.sink = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %i.ar, %middle.block ], [ %i.bh, %bb.h ]
  %.sroa.016.036.i.ph = phi ptr [ %.sroa.016.037.i, %.lr.ph.i.i.i ], [ %.sroa.016.037.i, %middle.block ], [ %.sroa.016.1.i, %bb.h ]
  %.sroa.022.034.i.ph = phi ptr [ %.sroa.022.038.i, %.lr.ph.i.i.i ], [ %.sroa.022.038.i, %middle.block ], [ %.sroa.022.1.i, %bb.h ]
  store ptr %.sink, ptr %11, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.sink.split, %bb.g
  %.sroa.016.036.i = phi ptr [ %i.v, %bb.g ], [ %.sroa.016.036.i.ph, %.loopexit.i.sink.split ]
  %.sroa.022.034.i = phi ptr [ %i.o, %bb.g ], [ %.sroa.022.034.i.ph, %.loopexit.i.sink.split ]
  store ptr %.sroa.016.036.i, ptr %10, align 8, !tbaa !390, !noalias !4819
  store ptr %.sroa.022.034.i, ptr %9, align 8, !tbaa !390, !noalias !4819
  br label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit: ; preds = %.loopexit.i, %bb.f, %bb.e
  %i.br = load ptr, ptr %11, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bs = load ptr, ptr %2, align 8, !tbaa !73
  store ptr %i.bs, ptr %1, align 8, !tbaa !390
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit
  %.sroa.045.0 = phi ptr [ %i.br, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %i.bu = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.bv = load ptr, ptr %9, align 8, !tbaa !73, !noalias !197 ; 5 uses
  %i.bw = load ptr, ptr %10, align 8, !tbaa !73, !noalias !197 ; 5 uses
  %.not.i13 = icmp eq ptr %i.bw, %i.bt
  %.not17.i = icmp eq ptr %.sroa.045.0, %i.bv
  %or.cond50 = select i1 %.not.i13, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %or.cond50, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %5, align 8, !tbaa !73, !noalias !4838
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.k
  %.sroa.022.0 = phi ptr [ %i.bu, %bb.k ], [ %i.cc, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.bx, %bb.k ], [ %i.cb, %.split.i ] ; 5 uses
  %.sroa.013.0.ph.i = phi ptr [ %i.bw, %bb.k ], [ %i.ca, %.split.i ] ; 5 uses
  %.sroa.017.0.ph.i = phi ptr [ %i.bv, %bb.k ], [ %.sroa.017.0.i, %.split.i ]
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.outer.i
  %.sroa.022.1 = phi ptr [ %.sroa.022.0, %.outer.i ], [ %i.cl, %bb.m ] ; 8 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.ck, %bb.m ] ; 6 uses
  %i.by = load i32, ptr %.sroa.017.0.i, align 4, !tbaa !87, !noalias !4838 ; 2 uses
  %i.bz = load i32, ptr %.sroa.010.0.ph.i, align 4, !tbaa !87, !noalias !4838 ; 2 uses
  %.not26.i = icmp slt i32 %i.by, %i.bz
  br i1 %.not26.i, label %bb.m, label %.split.i

.split.i:                                         ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.013.0.ph.i, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.010.0.ph.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 8 ; 2 uses
  %i.cd = load i64, ptr %.sroa.022.1, align 4, !noalias !4838
  store i32 %i.bz, ptr %.sroa.022.1, align 4, !tbaa !292, !noalias !4838
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.010.0.ph.i, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !87, !noalias !4838
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 4
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !294, !noalias !4838
  %i.ch = load i32, ptr %.sroa.013.0.ph.i, align 4, !tbaa !87, !noalias !4838
  store i32 %i.ch, ptr %.sroa.010.0.ph.i, align 4, !tbaa !292, !noalias !4838
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.013.0.ph.i, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !87, !noalias !4838
  store i32 %i.cj, ptr %i.ce, align 4, !tbaa !294, !noalias !4838
  store i64 %i.cd, ptr %.sroa.013.0.ph.i, align 4, !noalias !4838
  %.not28.i10 = icmp eq ptr %i.ca, %i.bt
  br i1 %.not28.i10, label %.loopexit.i11, label %.outer.i, !llvm.loop !4841

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 8 ; 2 uses
  %i.cm = load i32, ptr %.sroa.022.1, align 4, !tbaa !87, !noalias !4838
  store i32 %i.by, ptr %.sroa.022.1, align 4, !tbaa !87, !noalias !4838
  store i32 %i.cm, ptr %.sroa.017.0.i, align 4, !tbaa !87, !noalias !4838
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !87, !noalias !4838
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !87, !noalias !4838
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !87, !noalias !4838
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !87, !noalias !4838
  %.not27.i12 = icmp eq ptr %i.ck, %.sroa.045.0
  br i1 %.not27.i12, label %.loopexit.i11, label %bb.l, !llvm.loop !4841

.loopexit.i11:                                    ; preds = %.split.i, %bb.m
  %.sroa.022.2 = phi ptr [ %i.cl, %bb.m ], [ %i.cc, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.ck, %bb.m ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.m ], [ %i.ca, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.m ], [ %i.cb, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !390, !noalias !4838
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit

bb.n:                                             ; preds = %bb.i
  br i1 %or.cond50, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.n, %bb.o
  %.sroa.015.0.ph = phi ptr [ %i.ct, %bb.o ], [ %i.bu, %bb.n ]
  %.sroa.07.0.i.ph = phi ptr [ %i.cw, %bb.o ], [ %i.bw, %bb.n ] ; 5 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.o ], [ %i.bv, %bb.n ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.sroa.015.0 = phi ptr [ %i.ct, %bb.p ], [ %.sroa.015.0.ph, %.preheader.i.outer ] ; 5 uses
  %.sroa.012.0.i = phi ptr [ %i.db, %bb.p ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.cr = load i32, ptr %.sroa.012.0.i, align 4, !tbaa !87, !noalias !4842 ; 2 uses
  %i.cs = load i32, ptr %.sroa.07.0.i.ph, align 4, !tbaa !87, !noalias !4842 ; 2 uses
  %.not18.i = icmp slt i32 %i.cr, %i.cs
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 8 ; 4 uses
  %i.cu = load i32, ptr %.sroa.015.0, align 4, !tbaa !87, !noalias !4842 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 4 ; 4 uses
  br i1 %.not18.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.ph, i64 8 ; 3 uses
  store i32 %i.cs, ptr %.sroa.015.0, align 4, !tbaa !87, !noalias !4842
  store i32 %i.cu, ptr %.sroa.07.0.i.ph, align 4, !tbaa !87, !noalias !4842
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.ph, i64 4 ; 2 uses
  %i.cy = load i32, ptr %i.cv, align 4, !tbaa !87, !noalias !4842
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !87, !noalias !4842
  store i32 %i.cz, ptr %i.cv, align 4, !tbaa !87, !noalias !4842
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !87, !noalias !4842
  %i.da = icmp eq ptr %i.cw, %i.bt
  br i1 %i.da, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !4845
end_hunk_4
begin_hunk_5_@_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_:bb.a
  %.013.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.013.i.i.i.i, 1                ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87, !noalias !5069
  %i.k = icmp slt i32 %i.a, %i.j                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.neg.i.i.i.i = xor i64 %i.h, -1
  %i.m = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.n = select i1 %i.k, ptr %i.g, ptr %i.l       ; 2 uses
  %.1.i.i.i.i = select i1 %i.k, i64 %i.h, i64 %i.m ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11upper_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !285

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11upper_boundERKi.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.o = phi ptr [ %i.d, %bb.a ], [ %i.n, %.lr.ph.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !5072
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !70, !noalias !5073
  %.not.i.i3.i.i = icmp eq i64 %i.q, %i.f
  br i1 %.not.i.i3.i.i, label %.noexc.i, label %bb.b, !prof !196

bb.b:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11upper_boundERKi.exit.i.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  store i32 %i.a, ptr %i.o, align 4, !tbaa !87, !noalias !5073
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.c, ptr %i.s, align 4, !tbaa !87, !noalias !5073
  %i.t = add i64 %i.f, 1
  store i64 %i.t, ptr %i.e, align 8, !tbaa !84, !noalias !5073
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.v, %i.u
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.z = load <2 x i32>, ptr %i.y, align 4, !tbaa !87, !noalias !5073
  store <2 x i32> %i.z, ptr %i.r, align 4, !tbaa !87, !noalias !5073
  %i.aa = add i64 %i.f, 1
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !84, !noalias !5073
  %i.ab = add nsw i64 %i.x, -1                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.e, !prof !196

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nsw i64 1, %i.x                     ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
  %i.af = shl i64 %i.ab, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ae, i64 %i.af, i1 false), !noalias !5073
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  store i32 %i.a, ptr %i.o, align 4, !tbaa !292, !noalias !5073
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.c, ptr %i.ag, align 4, !tbaa !294, !noalias !5073
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

.noexc.i:                                         ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11upper_boundERKi.exit.i.i
  call void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.o, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %5), !noalias !5051
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !73, !noalias !5072
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit: ; preds = %bb.c, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %.noexc.i
  %i.ah = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.o, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i ], [ %i.o, %bb.c ]
  store ptr %i.ah, ptr %0, align 8, !tbaa !390, !alias.scope !5072
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !5072
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !5051
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE14adopt_sequenceEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !84
  %i.b = load ptr, ptr %1, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE20adopt_sequence_equalEOSA_.exit, label %bb.b, !prof !196

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !84
  %i.e = load ptr, ptr %0, align 8, !tbaa !3776   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i, label %bb.c, !prof !196

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !3777
  %i.h = shl i64 %i.g, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #23
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i

_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %i.i, ptr %0, align 8, !tbaa !90
  %i.j = load <2 x i64>, ptr %i.c, align 8, !tbaa !708
  store <2 x i64> %i.j, ptr %i.a, align 8, !tbaa !708
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE20adopt_sequence_equalEOSA_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE20adopt_sequence_equalEOSA_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE14adopt_sequenceENS0_15ordered_range_tEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit, label %bb.b, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !84
  %i.b = load ptr, ptr %0, align 8, !tbaa !3776   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i, label %bb.c, !prof !196

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3777
  %i.e = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.e) #23
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i

_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i: ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %i.f, ptr %0, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !708
  store <2 x i64> %i.h, ptr %i.a, align 8, !tbaa !708
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSD_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit, label %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit

_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.d = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.f = lshr i64 %i.b, 1
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_NS0_9iter_sizeISE_E4typeEb(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !84, !noalias !5078 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !90, !noalias !5081 ; 6 uses
  %.idx19 = shl i64 %.pre, 3                      ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx19 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr i8, ptr %i.i, i64 %.idx19
  %scevgep = getelementptr i8, ptr %i.k, i64 -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.au, %bb.f ] ; 7 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87, !noalias !5084 ; 4 uses
  %i.n = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !87, !noalias !5084
  %.not9.i = icmp slt i32 %i.m, %i.n
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 4 uses
  %.not1018.i = icmp eq ptr %i.o, %i.j
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.preheader.i
  %i.p = add i64 %.idx19, -24
  %2 = lshr exact i64 %i.p, 3                     ; 2 uses
  %3 = mul i64 %indvar, 2305843009213693951       ; 2 uses
  %i.q = sub i64 %2, %3
  %i.r = and i64 %i.q, 1
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph20.i.prol, label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol:                                  ; preds = %.lr.ph20.i.preheader
  %i.s = load i32, ptr %i.o, align 4, !tbaa !87, !noalias !5084 ; 3 uses
  %.not11.i.prol = icmp slt i32 %i.m, %i.s
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph20.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph20.i.prol
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !292, !noalias !5084
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !87, !noalias !5084
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %i.v, ptr %i.w, align 4, !tbaa !294, !noalias !5084
  br label %.lr.ph20.i.prol.loopexit.unr-lcssa

.lr.ph20.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph20.i.prol
  %i.x = phi i32 [ %i.s, %bb.b ], [ %i.m, %.lr.ph20.i.prol ]
  %i.y = phi ptr [ %i.t, %bb.b ], [ %i.l, %.lr.ph20.i.prol ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 16
  br label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol.loopexit:                         ; preds = %.lr.ph20.i.prol.loopexit.unr-lcssa, %.lr.ph20.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph20.i.preheader ], [ %i.y, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %i.m, %.lr.ph20.i.preheader ], [ %i.x, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr67 = phi ptr [ %i.l, %.lr.ph20.i.preheader ], [ %i.y, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr68 = phi ptr [ %i.o, %.lr.ph20.i.preheader ], [ %i.z, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.sroa.0.119.i.unr = phi ptr [ %.sroa.0.017.i, %.lr.ph20.i.preheader ], [ %i.o, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %4 = sub i64 0, %3
  %i.aa = icmp eq i64 %2, %4
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.prol.loopexit, %bb.e
  %i.ab = phi i32 [ %i.ar, %bb.e ], [ %.unr, %.lr.ph20.i.prol.loopexit ] ; 2 uses
  %i.ac = phi ptr [ %i.as, %bb.e ], [ %.unr67, %.lr.ph20.i.prol.loopexit ] ; 3 uses
  %i.ad = phi ptr [ %i.at, %bb.e ], [ %.unr68, %.lr.ph20.i.prol.loopexit ] ; 4 uses
  %.sroa.0.119.i = phi ptr [ %i.al, %bb.e ], [ %.sroa.0.119.i.unr, %.lr.ph20.i.prol.loopexit ]
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !87, !noalias !5084 ; 3 uses
  %.not11.i = icmp slt i32 %i.ab, %i.ae
  br i1 %.not11.i, label %bb.c, label %.lr.ph20.i.1

bb.c:                                             ; preds = %.lr.ph20.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !292, !noalias !5084
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.119.i, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !87, !noalias !5084
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !294, !noalias !5084
  br label %.lr.ph20.i.1

.lr.ph20.i.1:                                     ; preds = %bb.c, %.lr.ph20.i
  %i.aj = phi i32 [ %i.ae, %bb.c ], [ %i.ab, %.lr.ph20.i ] ; 2 uses
  %i.ak = phi ptr [ %i.af, %bb.c ], [ %i.ac, %.lr.ph20.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !87, !noalias !5084 ; 3 uses
  %.not11.i.1 = icmp slt i32 %i.aj, %i.am
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph20.i.1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i32 %i.am, ptr %i.an, align 4, !tbaa !292, !noalias !5084
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !87, !noalias !5084
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !294, !noalias !5084
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph20.i.1
  %i.ar = phi i32 [ %i.am, %bb.d ], [ %i.aj, %.lr.ph20.i.1 ]
  %i.as = phi ptr [ %i.an, %bb.d ], [ %i.ak, %.lr.ph20.i.1 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.at, %i.j
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph20.i, !llvm.loop !5087

bb.f:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !5088

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph20.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit, %.preheader.i
  %i.av = phi ptr [ %i.as, %bb.e ], [ %i.l, %.preheader.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit ], [ %.lcssa.unr, %.lr.ph20.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit, %.loopexit.i
  %i.ax = phi ptr [ %i.aw, %.loopexit.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.ax, %i.j
  br i1 %.not.i10, label %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit
  %i.ay = ptrtoint ptr %i.j to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = sub i64 %.pre, %i.bb
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !80, !noalias !5089
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit

_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit: ; preds = %bb.a, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.not.i12 = icmp eq ptr %1, %0
  br i1 %.not.i12, label %_ZN5boost9container6vectorISt4pairIiiEvvEaSEOS4_.exit, label %bb.g, !prof !196

bb.g:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !84
  %i.be = load ptr, ptr %0, align 8, !tbaa !3776  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i, label %bb.h, !prof !196

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !3777
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bh) #23
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i

_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i: ; preds = %bb.h, %bb.g
  %i.bi = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %i.bi, ptr %0, align 8, !tbaa !90
  %i.bj = load <2 x i64>, ptr %i.a, align 8, !tbaa !708
  store <2 x i64> %i.bj, ptr %i.bd, align 8, !tbaa !708
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container6vectorISt4pairIiiEvvEaSEOS4_.exit

_ZN5boost9container6vectorISt4pairIiiEvvEaSEOS4_.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit, %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_NS0_9iter_sizeISE_E4typeEb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 24
  br i1 %i.e, label %._crit_edge, label %.lr.ph218

.lr.ph218:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %1, i64 -8 ; 6 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 -4 ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -16 ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 -12 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %1, i64 -24 ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %1, i64 -20 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.3, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.0.lcssa, %1
  %.02233.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not2534.i = icmp eq ptr %.02233.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2534.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEbT_SE_T0_.exit181.thread, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %._crit_edge, %bb.d
  %.02236.i = phi ptr [ %.022.i, %bb.d ], [ %.02233.i, %._crit_edge ] ; 5 uses
  %.pn35.i = phi ptr [ %.02236.i, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.l = load i32, ptr %.02236.i, align 4, !tbaa !87
  %i.m = load i32, ptr %.pn35.i, align 4, !tbaa !87 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph37.i
  %i.o = load i64, ptr %.02236.i, align 4         ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.o to i32
  store i32 %i.m, ptr %.02236.i, align 4, !tbaa !292
  %i.p = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !294
  %.not2628.i = icmp eq ptr %.pn35.i, %.0.lcssa
  br i1 %.not2628.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.030.i = phi ptr [ %i.s, %bb.c ], [ %.pn35.i, %bb.b ] ; 5 uses
  %i.s = getelementptr i8, ptr %.030.i, i64 -8    ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !87   ; 2 uses
  %i.u = icmp sgt i32 %i.t, %.sroa.0.0.extract.trunc.i
  br i1 %i.u, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.021.lcssa.i = phi ptr [ %.0.lcssa, %bb.b ], [ %.030.i, %.lr.ph.i ], [ %.0.lcssa, %bb.c ]
  store i64 %i.o, ptr %.021.lcssa.i, align 4
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.t, ptr %.030.i, align 4, !tbaa !292
  %i.v = getelementptr inbounds i8, ptr %.030.i, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !294
  %.not26.i = icmp eq ptr %i.s, %.0.lcssa
  br i1 %.not26.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !2479

bb.d:                                             ; preds = %.critedge.i, %.lr.ph37.i
  %.022.i = getelementptr inbounds nuw i8, ptr %.02236.i, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %.022.i, %1
  br i1 %.not25.i, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEbT_SE_T0_.exit181.thread, label %.lr.ph37.i, !llvm.loop !2480

bb.e:                                             ; preds = %.lr.ph218, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit
  %i.y = phi i64 [ %i.d, %.lr.ph218 ], [ %.pre-phi245, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit ] ; 3 uses
  %i.z = phi i64 [ %i.b, %.lr.ph218 ], [ %.pre-phi, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit ]
  %.0215 = phi ptr [ %0, %.lr.ph218 ], [ %.3, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit ] ; 56 uses
  %.0102214 = phi i64 [ %2, %.lr.ph218 ], [ %.4, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit ] ; 5 uses
  %.0106213 = phi i1 [ %3, %.lr.ph218 ], [ false, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit ] ; 2 uses
  %i.aa = lshr i64 %i.y, 1
  %i.ab = icmp ugt i64 %i.y, 128
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0215, i64 %i.aa ; 34 uses
  br i1 %i.ab, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !87 ; 3 uses
  %i.ae = load i32, ptr %.0215, align 4, !tbaa !87 ; 3 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN5boost7movelib14pdqsort_detail5sort2IPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_.exit.i

bb.g:                                             ; preds = %bb.f
  store i32 %i.ad, ptr %.0215, align 4, !tbaa !87
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %.0215, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !87
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !87
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !87
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !87
  br label %_ZN5boost7movelib14pdqsort_detail5sort2IPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_.exit.i

end_hunk_5
begin_hunk_6_@_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_:bb.a
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
  %i.af = shl i64 %i.ab, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ae, i64 %i.af, i1 false), !noalias !7715
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  store i32 %i.a, ptr %i.o, align 4, !tbaa !292, !noalias !7715
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.c, ptr %i.ag, align 4, !tbaa !294, !noalias !7715
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

.noexc.i:                                         ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE11upper_boundERKi.exit.i.i
  call void @_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.o, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %5), !noalias !7693
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !73, !noalias !7714
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit: ; preds = %bb.c, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %.noexc.i
  %i.ah = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.o, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i ], [ %i.o, %bb.c ]
  store ptr %i.ah, ptr %0, align 8, !tbaa !390, !alias.scope !7714
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !7714
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !7693
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE14adopt_sequenceEOS7_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !5136
  %i.b = load ptr, ptr %1, align 8, !tbaa !5110
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !5136
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE20adopt_sequence_equalEOSA_.exit, label %bb.b, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !5110   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !5136
  %i.g = load ptr, ptr %0, align 8, !tbaa !7231   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = icmp eq ptr %i.h, %i.g
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.i, !prof !5207
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i.i.i, label %bb.d, !prof !5207

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7232
  %i.l = shl i64 %i.k, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #23
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !5110
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i.i.i

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %i.e, %bb.c ], [ %.pre.i.i.i.i.i.i.i, %bb.d ]
  store ptr %i.m, ptr %0, align 8, !tbaa !5110
  %i.n = load <2 x i64>, ptr %i.c, align 8, !tbaa !708
  store <2 x i64> %i.n, ptr %i.a, align 8, !tbaa !708
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE20adopt_sequence_equalEOSA_.exit

bb.e:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.c, align 8, !tbaa !5136, !noalias !7720
  %i.p = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.o
  invoke void @_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS3_EEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.e, ptr %i.p, ptr noundef null)
          to label %.noexc.i.i.i.i.i unwind label %bb.f

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  store i64 0, ptr %i.c, align 8, !tbaa !5136
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE20adopt_sequence_equalEOSA_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE20adopt_sequence_equalEOSA_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE14adopt_sequenceENS0_15ordered_range_tEOS7_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit, label %bb.b, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !5110   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !5136
  %i.d = load ptr, ptr %0, align 8, !tbaa !7231   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = icmp eq ptr %i.e, %i.d
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.f, !prof !5207
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i.i, label %bb.d, !prof !5207

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7232
  %i.i = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #23
  %.pre.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !5110
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i.i

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.a, %bb.c ], [ %.pre.i.i.i.i.i.i, %bb.d ]
  store ptr %i.j, ptr %0, align 8, !tbaa !5110
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !708
  store <2 x i64> %i.l, ptr %i.c, align 8, !tbaa !708
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !5136, !noalias !7723
  %i.o = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.n
  invoke void @_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS3_EEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.a, ptr %i.o, ptr noundef null)
          to label %.noexc.i.i.i.i unwind label %bb.f

.noexc.i.i.i.i:                                   ; preds = %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !5136
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSD_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !5136 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit

_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.d = load ptr, ptr %1, align 8, !tbaa !5110   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.f = lshr i64 %i.b, 1
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_NS0_9iter_sizeISE_E4typeEb(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !5136, !noalias !7726 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !5110, !noalias !7729 ; 6 uses
  %.idx18 = shl i64 %.pre, 3                      ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx18 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr i8, ptr %i.i, i64 %.idx18
  %scevgep = getelementptr i8, ptr %i.k, i64 -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.au, %bb.f ] ; 7 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87, !noalias !7732 ; 4 uses
  %i.n = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !87, !noalias !7732
  %.not9.i = icmp slt i32 %i.m, %i.n
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 4 uses
  %.not1018.i = icmp eq ptr %i.o, %i.j
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.preheader.i
  %i.p = add i64 %.idx18, -24
  %2 = lshr exact i64 %i.p, 3                     ; 2 uses
  %3 = mul i64 %indvar, 2305843009213693951       ; 2 uses
  %i.q = sub i64 %2, %3
  %i.r = and i64 %i.q, 1
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph20.i.prol, label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol:                                  ; preds = %.lr.ph20.i.preheader
  %i.s = load i32, ptr %i.o, align 4, !tbaa !87, !noalias !7732 ; 3 uses
  %.not11.i.prol = icmp slt i32 %i.m, %i.s
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph20.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph20.i.prol
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !292, !noalias !7732
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !87, !noalias !7732
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %i.v, ptr %i.w, align 4, !tbaa !294, !noalias !7732
  br label %.lr.ph20.i.prol.loopexit.unr-lcssa

.lr.ph20.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph20.i.prol
  %i.x = phi i32 [ %i.s, %bb.b ], [ %i.m, %.lr.ph20.i.prol ]
  %i.y = phi ptr [ %i.t, %bb.b ], [ %i.l, %.lr.ph20.i.prol ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 16
  br label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol.loopexit:                         ; preds = %.lr.ph20.i.prol.loopexit.unr-lcssa, %.lr.ph20.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph20.i.preheader ], [ %i.y, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %i.m, %.lr.ph20.i.preheader ], [ %i.x, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr68 = phi ptr [ %i.l, %.lr.ph20.i.preheader ], [ %i.y, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr69 = phi ptr [ %i.o, %.lr.ph20.i.preheader ], [ %i.z, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.sroa.0.119.i.unr = phi ptr [ %.sroa.0.017.i, %.lr.ph20.i.preheader ], [ %i.o, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %4 = sub i64 0, %3
  %i.aa = icmp eq i64 %2, %4
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.prol.loopexit, %bb.e
  %i.ab = phi i32 [ %i.ar, %bb.e ], [ %.unr, %.lr.ph20.i.prol.loopexit ] ; 2 uses
  %i.ac = phi ptr [ %i.as, %bb.e ], [ %.unr68, %.lr.ph20.i.prol.loopexit ] ; 3 uses
  %i.ad = phi ptr [ %i.at, %bb.e ], [ %.unr69, %.lr.ph20.i.prol.loopexit ] ; 4 uses
  %.sroa.0.119.i = phi ptr [ %i.al, %bb.e ], [ %.sroa.0.119.i.unr, %.lr.ph20.i.prol.loopexit ]
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !87, !noalias !7732 ; 3 uses
  %.not11.i = icmp slt i32 %i.ab, %i.ae
  br i1 %.not11.i, label %bb.c, label %.lr.ph20.i.1

bb.c:                                             ; preds = %.lr.ph20.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !292, !noalias !7732
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.119.i, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !87, !noalias !7732
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !294, !noalias !7732
  br label %.lr.ph20.i.1

.lr.ph20.i.1:                                     ; preds = %bb.c, %.lr.ph20.i
  %i.aj = phi i32 [ %i.ae, %bb.c ], [ %i.ab, %.lr.ph20.i ] ; 2 uses
  %i.ak = phi ptr [ %i.af, %bb.c ], [ %i.ac, %.lr.ph20.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !87, !noalias !7732 ; 3 uses
  %.not11.i.1 = icmp slt i32 %i.aj, %i.am
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph20.i.1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i32 %i.am, ptr %i.an, align 4, !tbaa !292, !noalias !7732
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !87, !noalias !7732
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !294, !noalias !7732
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph20.i.1
  %i.ar = phi i32 [ %i.am, %bb.d ], [ %i.aj, %.lr.ph20.i.1 ]
  %i.as = phi ptr [ %i.an, %bb.d ], [ %i.ak, %.lr.ph20.i.1 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.at, %i.j
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph20.i, !llvm.loop !5087

bb.f:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !5088

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph20.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit, %.preheader.i
  %i.av = phi ptr [ %i.as, %bb.e ], [ %i.l, %.preheader.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit ], [ %.lcssa.unr, %.lr.ph20.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit, %.loopexit.i
  %i.ax = phi ptr [ %i.aw, %.loopexit.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.ax, %i.j
  br i1 %.not.i10, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit
  %i.ay = ptrtoint ptr %i.j to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = sub i64 %.pre, %i.bb
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !5112, !noalias !7735
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit: ; preds = %bb.a, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEaSEOS4_.exit, label %bb.g, !prof !196

bb.g:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !5110  ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !5136
  %i.bg = load ptr, ptr %0, align 8, !tbaa !7231  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = icmp eq ptr %i.bh, %i.bg
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.bi, !prof !5207
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, label %bb.i, !prof !5207

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !7232
  %i.bl = shl i64 %i.bk, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #23
  %.pre.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !5110
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.bm = phi ptr [ %i.bd, %bb.h ], [ %.pre.i.i.i.i.i, %bb.i ]
  store ptr %i.bm, ptr %0, align 8, !tbaa !5110
  %i.bn = load <2 x i64>, ptr %i.a, align 8, !tbaa !708
  store <2 x i64> %i.bn, ptr %i.bf, align 8, !tbaa !708
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEaSEOS4_.exit

bb.j:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !5136, !noalias !7738
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bo
  invoke void @_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS3_EEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.bd, ptr %i.bp, ptr noundef null)
          to label %.noexc.i.i.i unwind label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.j
  store i64 0, ptr %i.a, align 8, !tbaa !5136
  br label %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEaSEOS4_.exit

bb.k:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #25
  unreachable

_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEaSEOS4_.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, %.noexc.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test8map_testINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.0", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr.8", align 8 ; 5 uses
  %i.a = tail call noundef i32 @_ZN5boost9container4test14map_test_rangeINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiv()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(4008) ptr @_Znwm(i64 noundef 4008) #24, !noalias !7741 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4000
  store i64 0, ptr %i.c, align 8, !tbaa !7744, !noalias !7741
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7747)
  %i.d = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.c unwind label %bb.g       ; 18 uses

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !noalias !7747
  store ptr %i.e, ptr %i.f, align 8, !tbaa !47, !noalias !7747
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %i.g, align 8, !tbaa !52, !noalias !7747
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !53, !noalias !7747
  store ptr %i.d, ptr %0, align 8, !tbaa !54, !alias.scope !7747
  %i.i = invoke noalias noundef nonnull dereferenceable(4008) ptr @_Znwm(i64 noundef 4008) #24
          to label %bb.d unwind label %bb.h       ; 12 uses

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4000
  store i64 0, ptr %i.j, align 8, !tbaa !7744, !noalias !7750
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7753)
  %i.k = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.e unwind label %bb.i       ; 18 uses

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, i8 0, i64 32, i1 false), !noalias !7753
  store ptr %i.l, ptr %i.m, align 8, !tbaa !47, !noalias !7753
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.l, ptr %i.n, align 8, !tbaa !52, !noalias !7753
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !53, !noalias !7753
  store ptr %i.k, ptr %1, align 8, !tbaa !66, !alias.scope !7753
  %i.p = invoke noundef i32 @_ZN5boost9container4test13map_test_stepINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_(ptr noundef nonnull align 8 dereferenceable(4008) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(4008) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not44 = icmp eq i32 %i.p, 0
  br i1 %.not44, label %bb.k, label %bb.ag

bb.g:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit69

bb.h:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.i:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit66

bb.j:                                             ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.q, %bb.o, %bb.m, %bb.k, %bb.e
  %i.t = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_:bb.a
  br i1 %.not.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i
  store i32 %i.a, ptr %i.m, align 4, !tbaa !87, !noalias !9386
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.b, ptr %i.o, align 4, !tbaa !87, !noalias !9386
  %i.p = add i64 %i.d, 1
  store i64 %i.p, ptr %i.c, align 8, !tbaa !7765, !noalias !9386
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

bb.c:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.r, %i.q
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.u, align 8, !tbaa !87, !noalias !9386
  store <2 x i32> %i.v, ptr %i.n, align 8, !tbaa !87, !noalias !9386
  %i.w = add i64 %i.d, 1
  store i64 %i.w, ptr %i.c, align 8, !tbaa !7765, !noalias !9386
  %i.x = add nsw i64 %i.t, -1                     ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.d, !prof !196

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i64 1, %i.t                      ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.y
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.y
  %i.ab = shl i64 %i.x, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.aa, i64 %i.ab, i1 false), !noalias !9386
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  store i32 %i.a, ptr %i.m, align 4, !tbaa !292, !noalias !9386
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.b, ptr %i.ac, align 4, !tbaa !294, !noalias !9386
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

.noexc.i:                                         ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22, !noalias !9370
  unreachable

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit: ; preds = %bb.b, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i
  store ptr %i.m, ptr %0, align 8, !tbaa !390, !alias.scope !9391
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE14adopt_sequenceEOS7_(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr noundef nonnull align 8 dereferenceable(4008) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4000 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !7765
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4000 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7765
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef nonnull align 8 dereferenceable(4008) %1, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE20adopt_sequence_equalEOSA_.exit, label %bb.b, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !7765 ; 6 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !7765 ; 5 uses
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i, label %bb.d, !prof !196

bb.d:                                             ; preds = %bb.c
  %i.g = shl i64 %i.d, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %0, ptr nonnull align 8 dereferenceable(4008) %1, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d
  br label %_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i

_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %0, %bb.c ], [ %i.i, %bb.d ]
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %1, %bb.c ], [ %i.h, %bb.d ]
  %i.j = sub nuw i64 %i.e, %i.d
  %i.k = shl i64 %i.j, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i.i.i.i, ptr nonnull align 1 %.0.i.i.i.i.i.i.i.i, i64 %i.k, i1 false)
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.not.i.i17.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i17.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i.i.i, label %bb.f, !prof !196

bb.f:                                             ; preds = %bb.e
  %i.l = shl i64 %i.e, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %0, ptr nonnull align 8 dereferenceable(4008) %1, i64 %i.l, i1 false)
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i.i.i

_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i
  store i64 %i.e, ptr %i.a, align 8, !tbaa !7744
  store i64 0, ptr %i.b, align 8, !tbaa !7765
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE20adopt_sequence_equalEOSA_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE20adopt_sequence_equalEOSA_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE14adopt_sequenceENS0_15ordered_range_tEOS7_(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr noundef nonnull align 8 dereferenceable(4008) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit, label %bb.b, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4000 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7765 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4000 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7765 ; 5 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i, label %bb.d, !prof !196

bb.d:                                             ; preds = %bb.c
  %i.f = shl i64 %i.b, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %0, ptr nonnull align 8 dereferenceable(4008) %1, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b
  br label %_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i

_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %0, %bb.c ], [ %i.h, %bb.d ]
  %.0.i.i.i.i.i.i.i = phi ptr [ %1, %bb.c ], [ %i.g, %bb.d ]
  %i.i = sub nuw i64 %i.d, %i.b
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i.i.i, ptr nonnull align 1 %.0.i.i.i.i.i.i.i, i64 %i.j, i1 false)
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %.not.i.i17.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i17.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i.i, label %bb.f, !prof !196

bb.f:                                             ; preds = %bb.e
  %i.k = shl i64 %i.d, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %0, ptr nonnull align 8 dereferenceable(4008) %1, i64 %i.k, i1 false)
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i.i

_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i
  store i64 %i.d, ptr %i.a, align 8, !tbaa !7744
  store i64 0, ptr %i.c, align 8, !tbaa !7765
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSD_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr noundef nonnull align 8 dereferenceable(4008) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4000 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7765 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit, label %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit

_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = lshr i64 %i.b, 1
  %i.f = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 false)
  %i.g = sub nuw nsw i64 64, %i.f
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_NS0_9iter_sizeISE_E4typeEb(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef %i.g, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !7765, !noalias !9392 ; 4 uses
  %.idx18 = shl i64 %.pre, 3                      ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.idx18 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr i8, ptr %1, i64 %.idx18
  %scevgep = getelementptr i8, ptr %i.i, i64 -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.j = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.as, %bb.f ] ; 7 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 6 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !87, !noalias !9395 ; 4 uses
  %i.l = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !87, !noalias !9395
  %.not9.i = icmp slt i32 %i.k, %i.l
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 4 uses
  %.not1018.i = icmp eq ptr %i.m, %i.h
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.preheader.i
  %i.n = add i64 %.idx18, -24
  %2 = lshr exact i64 %i.n, 3                     ; 2 uses
  %3 = mul i64 %indvar, 2305843009213693951       ; 2 uses
  %i.o = sub i64 %2, %3
  %i.p = and i64 %i.o, 1
  %lcmp.mod.not.not = icmp eq i64 %i.p, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph20.i.prol, label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol:                                  ; preds = %.lr.ph20.i.preheader
  %i.q = load i32, ptr %i.m, align 4, !tbaa !87, !noalias !9395 ; 3 uses
  %.not11.i.prol = icmp slt i32 %i.k, %i.q
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph20.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph20.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %i.q, ptr %i.r, align 4, !tbaa !292, !noalias !9395
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !87, !noalias !9395
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.t, ptr %i.u, align 4, !tbaa !294, !noalias !9395
  br label %.lr.ph20.i.prol.loopexit.unr-lcssa

.lr.ph20.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph20.i.prol
  %i.v = phi i32 [ %i.q, %bb.b ], [ %i.k, %.lr.ph20.i.prol ]
  %i.w = phi ptr [ %i.r, %bb.b ], [ %i.j, %.lr.ph20.i.prol ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 16
  br label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol.loopexit:                         ; preds = %.lr.ph20.i.prol.loopexit.unr-lcssa, %.lr.ph20.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph20.i.preheader ], [ %i.w, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %i.k, %.lr.ph20.i.preheader ], [ %i.v, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr68 = phi ptr [ %i.j, %.lr.ph20.i.preheader ], [ %i.w, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr69 = phi ptr [ %i.m, %.lr.ph20.i.preheader ], [ %i.x, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.sroa.0.119.i.unr = phi ptr [ %.sroa.0.017.i, %.lr.ph20.i.preheader ], [ %i.m, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %4 = sub i64 0, %3
  %i.y = icmp eq i64 %2, %4
  br i1 %i.y, label %.loopexit.i, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.prol.loopexit, %bb.e
  %i.z = phi i32 [ %i.ap, %bb.e ], [ %.unr, %.lr.ph20.i.prol.loopexit ] ; 2 uses
  %i.aa = phi ptr [ %i.aq, %bb.e ], [ %.unr68, %.lr.ph20.i.prol.loopexit ] ; 3 uses
  %i.ab = phi ptr [ %i.ar, %bb.e ], [ %.unr69, %.lr.ph20.i.prol.loopexit ] ; 4 uses
  %.sroa.0.119.i = phi ptr [ %i.aj, %bb.e ], [ %.sroa.0.119.i.unr, %.lr.ph20.i.prol.loopexit ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !87, !noalias !9395 ; 3 uses
  %.not11.i = icmp slt i32 %i.z, %i.ac
  br i1 %.not11.i, label %bb.c, label %.lr.ph20.i.1

bb.c:                                             ; preds = %.lr.ph20.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !292, !noalias !9395
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.119.i, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !87, !noalias !9395
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !294, !noalias !9395
  br label %.lr.ph20.i.1

.lr.ph20.i.1:                                     ; preds = %bb.c, %.lr.ph20.i
  %i.ah = phi i32 [ %i.ac, %bb.c ], [ %i.z, %.lr.ph20.i ] ; 2 uses
  %i.ai = phi ptr [ %i.ad, %bb.c ], [ %i.aa, %.lr.ph20.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !87, !noalias !9395 ; 3 uses
  %.not11.i.1 = icmp slt i32 %i.ah, %i.ak
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph20.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !292, !noalias !9395
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !87, !noalias !9395
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !294, !noalias !9395
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph20.i.1
  %i.ap = phi i32 [ %i.ak, %bb.d ], [ %i.ah, %.lr.ph20.i.1 ]
  %i.aq = phi ptr [ %i.al, %bb.d ], [ %i.ai, %.lr.ph20.i.1 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ar, %i.h
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph20.i, !llvm.loop !5087

bb.f:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.h
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !5088

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph20.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit, %.preheader.i
  %i.at = phi ptr [ %i.aq, %bb.e ], [ %i.j, %.preheader.i ], [ %1, %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit ], [ %.lcssa.unr, %.lr.ph20.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit, %.loopexit.i
  %i.av = phi ptr [ %i.au, %.loopexit.i ], [ %1, %_ZN5boost7movelib7pdqsortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_.exit ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.av, %i.h
  br i1 %.not.i10, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit
  %i.aw = ptrtoint ptr %i.h to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = sub i64 %.pre, %i.az                    ; 2 uses
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !7744, !noalias !9398
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit

_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit: ; preds = %bb.a, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.bb = phi i64 [ %.pre, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_T0_.exit ], [ %i.ba, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ 0, %bb.a ] ; 5 uses
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container13static_vectorISt4pairIiiELm500EvEaSEOS4_.exit, label %bb.g, !prof !196

bb.g:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4000 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !7765 ; 6 uses
  %i.be = icmp ult i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i, label %bb.i, !prof !196

bb.i:                                             ; preds = %bb.h
  %i.bf = shl i64 %i.bd, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %0, ptr nonnull align 8 dereferenceable(4008) %1, i64 %i.bf, i1 false)
  %i.bg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bd
  br label %_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i

_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %0, %bb.h ], [ %i.bh, %bb.i ]
  %.0.i.i.i.i.i.i = phi ptr [ %1, %bb.h ], [ %i.bg, %bb.i ]
  %i.bi = sub nuw i64 %i.bb, %i.bd
  %i.bj = shl i64 %i.bi, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i.i, ptr nonnull align 1 %.0.i.i.i.i.i.i, i64 %i.bj, i1 false)
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i

bb.j:                                             ; preds = %bb.g
  %.not.i.i17.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i17.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i, label %bb.k, !prof !196

bb.k:                                             ; preds = %bb.j
  %i.bk = shl i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %0, ptr nonnull align 8 dereferenceable(4008) %1, i64 %i.bk, i1 false)
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i

_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i: ; preds = %bb.k, %bb.j, %_ZN5boost9container18move_n_source_destIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !7744
  store i64 0, ptr %i.a, align 8, !tbaa !7765
  br label %_ZN5boost9container13static_vectorISt4pairIiiELm500EvEaSEOS4_.exit

_ZN5boost9container13static_vectorISt4pairIiiELm500EvEaSEOS4_.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit, %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test8map_testINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.142", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr.0", align 8 ; 5 uses
  %2 = alloca %"class.boost::movelib::unique_ptr.146", align 8 ; 5 uses
  %3 = alloca %"class.boost::movelib::unique_ptr.8", align 8 ; 5 uses
  %i.a = tail call noundef i32 @_ZN5boost9container4test14map_test_rangeINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiv()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9401)
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !9401 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false), !noalias !9401
  store ptr %i.b, ptr %0, align 8, !tbaa !9404, !alias.scope !9401
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9407)
  %i.c = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.c unwind label %bb.g       ; 18 uses

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !noalias !9407
  store ptr %i.d, ptr %i.e, align 8, !tbaa !47, !noalias !9407
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.d, ptr %i.f, align 8, !tbaa !52, !noalias !9407
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !53, !noalias !9407
  store ptr %i.c, ptr %1, align 8, !tbaa !54, !alias.scope !9407
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9410)
  %i.h = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %bb.d unwind label %bb.h       ; 13 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false), !noalias !9410
  store ptr %i.h, ptr %2, align 8, !tbaa !9413, !alias.scope !9410
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9416)
  %i.i = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.e unwind label %bb.i       ; 18 uses

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !noalias !9416
  store ptr %i.j, ptr %i.k, align 8, !tbaa !47, !noalias !9416
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.j, ptr %i.l, align 8, !tbaa !52, !noalias !9416
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !53, !noalias !9416
  store ptr %i.i, ptr %3, align 8, !tbaa !66, !alias.scope !9416
  %i.n = invoke noundef i32 @_ZN5boost9container4test13map_test_stepINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not44 = icmp eq i32 %i.n, 0
  br i1 %.not44, label %bb.k, label %bb.ag

bb.g:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.h:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.i:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.j:                                             ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.q, %bb.o, %bb.m, %bb.k, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

end_hunk_7
