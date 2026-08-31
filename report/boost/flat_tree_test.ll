Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container3dtl4pairINS9_4test24movable_and_copyable_intESD_EEEESG_SG_NS6_INSA_23flat_tree_value_compareISt4lessISD_ESE_NSA_9select1stISD_EEEEEENS0_7move_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !6396, !noalias !6505
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_SB_NS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_SB_NS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_SB_NS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_SB_NS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split ] ; 6 uses
  %.sroa.069.0 = phi ptr [ %i.ac, %bb.f ], [ %i.ac, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_SB_NS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split ] ; 4 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !6396
  %i.cp = load ptr, ptr %3, align 8, !tbaa !6396  ; 6 uses
  %i.cq = icmp eq ptr %i.cp, %.sroa.064.0
  br i1 %i.cq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_SB_NS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !21, !noalias !6644
  store i32 0, ptr %i.cs, align 4, !tbaa !21, !noalias !6644
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !21, !noalias !6644
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !21, !noalias !6644
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !21, !noalias !6644
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !21, !noalias !6644
  store i32 0, ptr %i.cw, align 4, !tbaa !21, !noalias !6644
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !21, !noalias !6644
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !21, !noalias !6644
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !21, !noalias !6644
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i28, !llvm.loop !6529

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_SB_NS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !21, !noalias !6647
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !21, !noalias !6647
  store i32 0, ptr %i.dc, align 4, !tbaa !21, !noalias !6647
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !21, !noalias !6647
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !21, !noalias !6647
  store i32 0, ptr %i.df, align 4, !tbaa !21, !noalias !6647
  %i.di = load i32, ptr %i.db, align 4, !tbaa !21, !noalias !6647
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !21, !noalias !6647
  store i32 0, ptr %i.db, align 4, !tbaa !21, !noalias !6647
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21, !noalias !6647
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !21, !noalias !6647
  store i32 0, ptr %i.dj, align 4, !tbaa !21, !noalias !6647
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i29, !llvm.loop !6533

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !21, !noalias !6650
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !21, !noalias !6650
  store i32 0, ptr %i.dm, align 4, !tbaa !21, !noalias !6650
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !21, !noalias !6650
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !21, !noalias !6650
  store i32 0, ptr %i.dp, align 4, !tbaa !21, !noalias !6650
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i.i, !llvm.loop !6539

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.dn, %.lr.ph.i.i ], [ %i.cp, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !6396
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !19
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !19
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !19
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !6482  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !6482
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !6482
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit ], [ %i.c, %bb.z ], [ %.pre187, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !6396
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !6482
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6655

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit, %bb.a
  %i.eh = load ptr, ptr %6, align 8, !tbaa !6396
  store ptr %i.eh, ptr %0, align 8, !tbaa !6396
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEES8_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !21
  store i32 %i.c, ptr %3, align 4, !tbaa !21
  store i32 0, ptr %0, align 4, !tbaa !21
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  store i32 %i.g, ptr %i.e, align 4, !tbaa !21
  store i32 0, ptr %i.f, align 4, !tbaa !21
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i64 %4, 2
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  store i32 %i.l, ptr %i.j, align 4, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !21
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21
  store i32 %i.p, ptr %i.n, align 4, !tbaa !21
  store i32 0, ptr %i.o, align 4, !tbaa !21
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21
  store i32 %i.s, ptr %i.q, align 4, !tbaa !21
  store i32 0, ptr %i.r, align 4, !tbaa !21
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21
  store i32 %i.w, ptr %i.u, align 4, !tbaa !21
  store i32 0, ptr %i.v, align 4, !tbaa !21
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21
  store i32 0, ptr %i.y, align 4, !tbaa !21
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21
  store i32 0, ptr %i.ac, align 4, !tbaa !21
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  store i32 %i.af, ptr %0, align 4, !tbaa !21
  store i32 0, ptr %i.ae, align 4, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !21
  store i32 0, ptr %i.ag, align 4, !tbaa !21
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES8_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ap = trunc i64 %4 to i32
  %i.aq = shl i32 %i.ap, 1
  %i.ar = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.aq
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit29: ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.at = trunc i64 %4 to i32
  %i.au = shl i32 %i.at, 1
  %i.av = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.au
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  resume { ptr, i32 } %i.as

bb.d:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ax = ptrtoint ptr %0 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = ptrtoint ptr %2 to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = ashr exact i64 %i.bb, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.az, i64 noundef %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES8_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond99 = and i1 %i.b, %i.a
  br i1 %or.cond99, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr90103 = phi i64 [ %4, %.lr.ph ], [ %i.av, %tailrecurse ] ; 5 uses
  %.tr89102 = phi i64 [ %3, %.lr.ph ], [ %i.at, %tailrecurse ] ; 5 uses
  %.tr87101 = phi ptr [ %1, %.lr.ph ], [ %.071, %tailrecurse ] ; 14 uses
  %.tr100 = phi ptr [ %0, %.lr.ph ], [ %i.au, %tailrecurse ] ; 12 uses
  %.not = icmp ugt i64 %.tr89102, %6
  %.not76 = icmp ugt i64 %.tr90103, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_10range_xbufIS8_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_10range_xbufIS8_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !6656
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !6658
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !6659
  call void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !21
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !21 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.tr100, align 4, !tbaa !21
  %i.l = load i32, ptr %.tr87101, align 4, !tbaa !21
  store i32 %i.l, ptr %.tr100, align 4, !tbaa !21
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !21
  store i32 0, ptr %i.m, align 4, !tbaa !21
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  store i32 %i.p, ptr %i.m, align 4, !tbaa !21
  store i32 %i.o, ptr %i.n, align 4, !tbaa !21
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.g, 16
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_T0_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %.tr89102, %.tr90103
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %.tr89102, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.tr100, i64 %i.s ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr87101
  %.pre = ptrtoint ptr %.tr87101 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = sub i64 %i.c, %.pre
  %i.v = ashr exact i64 %i.u, 3
  %i.w = load i32, ptr %i.t, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.x = lshr i64 %.017.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21
  %i.aa = icmp slt i32 %i.z, %i.w                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.neg.i = xor i64 %i.x, -1
  %i.ac = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.aa, ptr %i.ab, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ac, i64 %i.x    ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !6288

_ZN5boost7movelib11lower_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11lower_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr87101, %bb.i ]
  %i.ad = sub i64 %.pre-phi113, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  br label %tailrecurse

bb.k:                                             ; preds = %bb.h
  %i.af = lshr i64 %.tr90103, 1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.tr87101, i64 %i.af ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr87101, %.tr100
  %.pre110 = ptrtoint ptr %.tr100 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ah = ptrtoint ptr %.tr87101 to i64
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container3dtl4pairINS9_4test24movable_and_copyable_intESD_EEEESG_SG_NS6_INSA_23flat_tree_value_compareISt4lessISD_ESE_NSA_9select1stISD_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %.not1.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ] ; 2 uses
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i25 ], [ %i.by, %.thread83 ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 4 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !21, !noalias !7557
  store i32 0, ptr %i.ca, align 4, !tbaa !21, !noalias !7557
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !21, !noalias !7557
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !21, !noalias !7557
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !21, !noalias !7557
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !21, !noalias !7557
  store i32 0, ptr %i.ce, align 4, !tbaa !21, !noalias !7557
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !21, !noalias !7557
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !21, !noalias !7557
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !21, !noalias !7557
  %.not.i = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i25, !llvm.loop !6529

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bw, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread84, %.lr.ph.i26
  %.sroa.043.0 = phi ptr [ %i.ck, %.lr.ph.i26 ], [ %i.by, %.thread84 ] ; 2 uses
  %.sroa.042.0 = phi ptr [ %i.cl, %.lr.ph.i26 ], [ %i.bv, %.thread84 ] ; 2 uses
  %i.ci = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bw, %.thread84 ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -8 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -8 ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -4 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -4 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !21, !noalias !7560
  store i32 0, ptr %i.cl, align 4, !tbaa !21, !noalias !7560
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !7560
  store i32 0, ptr %i.cm, align 4, !tbaa !21, !noalias !7560
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !7560
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !21, !noalias !7560
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !21, !noalias !7560
  store i32 0, ptr %i.ck, align 4, !tbaa !21, !noalias !7560
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !21, !noalias !7560
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !21, !noalias !7560
  store i32 0, ptr %i.cn, align 4, !tbaa !21, !noalias !7560
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !21, !noalias !7560
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !21, !noalias !7560
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !21, !noalias !7560
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !21, !noalias !7560
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !21, !noalias !7560
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !7560
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !7560
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i26, !llvm.loop !6601

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !21, !noalias !7563
  store i32 0, ptr %i.cz, align 4, !tbaa !21, !noalias !7563
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !21, !noalias !7563
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !21, !noalias !7563
  store i32 %i.db, ptr %i.da, align 4, !tbaa !21, !noalias !7563
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !21, !noalias !7563
  store i32 0, ptr %i.dd, align 4, !tbaa !21, !noalias !7563
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !21, !noalias !7563
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !21, !noalias !7563
  store i32 %i.df, ptr %i.de, align 4, !tbaa !21, !noalias !7563
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i.i, !llvm.loop !6529

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread84 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !6396
  %i.di = load ptr, ptr %1, align 8, !tbaa !6482  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -8 ; 2 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !19
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !19
  store i64 %i.dn, ptr %i.dk, align 8, !tbaa !19
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i
  %i.do = load ptr, ptr %2, align 8, !tbaa !6482  ; 2 uses
  %i.dp = icmp eq ptr %i.dj, %i.do
  br i1 %i.dp, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = icmp eq ptr %i.do, %i.di
  br i1 %i.dq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dj, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !6482
  %.pre117 = load ptr, ptr %1, align 8, !tbaa !6482
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, %bb.o, %.sink.split.i
  %i.dr = phi ptr [ %i.di, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit ], [ %i.di, %bb.o ], [ %.pre117, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !6396
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 2 uses
  store ptr %i.ds, ptr %1, align 8, !tbaa !6482
  %i.dt = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dt to i64
  %i.du = add i64 %.0100, %.neg
  %i.dv = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dv to i64
  %i.dw = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.dx = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dx, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7568

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit, %bb.a
  %i.dy = load ptr, ptr %6, align 8, !tbaa !6396
  store ptr %i.dy, ptr %0, align 8, !tbaa !6396
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS0_10antistableINS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !21
  store i32 %i.c, ptr %4, align 4, !tbaa !21
  store i32 0, ptr %0, align 4, !tbaa !21
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  store i32 %i.g, ptr %i.e, align 4, !tbaa !21
  store i32 0, ptr %i.f, align 4, !tbaa !21
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.not13.i = icmp eq i64 %5, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i64 %5, 2
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  store i32 %i.l, ptr %i.j, align 4, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !21
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21
  store i32 %i.p, ptr %i.n, align 4, !tbaa !21
  store i32 0, ptr %i.o, align 4, !tbaa !21
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21
  store i32 %i.s, ptr %i.q, align 4, !tbaa !21
  store i32 0, ptr %i.r, align 4, !tbaa !21
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21
  store i32 %i.w, ptr %i.u, align 4, !tbaa !21
  store i32 0, ptr %i.v, align 4, !tbaa !21
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i.epil.init ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21
  store i32 0, ptr %i.y, align 4, !tbaa !21
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21
  store i32 0, ptr %i.ac, align 4, !tbaa !21
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  store i32 %i.af, ptr %0, align 4, !tbaa !21
  store i32 0, ptr %i.ae, align 4, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !21
  store i32 0, ptr %i.ag, align 4, !tbaa !21
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = load ptr, ptr %3, align 8, !tbaa !6553, !nonnull !6505
  store ptr %i.ap, ptr %7, align 8, !tbaa !6369
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES8_NS0_10antistableINS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aq = trunc i64 %5 to i32
  %i.ar = shl i32 %i.aq, 1
  %i.as = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ar
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit29: ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.au = trunc i64 %5 to i32
  %i.av = shl i32 %i.au, 1
  %i.aw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.av
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  resume { ptr, i32 } %i.at

bb.d:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %3, align 8, !tbaa !6553, !nonnull !6505
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ay = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = ashr exact i64 %i.bd, 3
  store ptr %i.ax, ptr %6, align 8, !tbaa !6369
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS0_10antistableINS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bb, i64 noundef %i.be, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS0_10antistableINS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEENS4_4pairIS8_S8_EENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !21     ; 2 uses
  %.not89 = icmp slt i32 %i.b, %i.c
  br i1 %.not89, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEENS4_4pairIS8_S8_EENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 10 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 21 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS0_10antistableINS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !7569

_ZN5boost7movelib11upper_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS0_10antistableINS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i147.le = ptrtoaddr ptr %.114.i to i64    ; 4 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !573  ; 5 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EES7_NS0_10antistableINS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !571    ; 7 uses
  %i.u = add i64 %i.d, -8
  %i.v = sub i64 %i.u, %.114.i147.le              ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %scevgep = getelementptr i8, ptr %i.t, i64 8
  %i.y = add i64 %i.d, -8
  %i.z = sub i64 %i.y, %.114.i147.le
  %i.aa = and i64 %i.z, -8                        ; 2 uses
  %scevgep148 = getelementptr i8, ptr %scevgep, i64 %i.aa
  %scevgep149 = getelementptr i8, ptr %.114.i, i64 8
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.aa
  %bound0 = icmp ult ptr %i.t, %scevgep150
  %bound1 = icmp ult ptr %.114.i, %scevgep148
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.114.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 3 uses
  %i.af = or disjoint i64 %i.ae, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ae
  %next.gep151 = getelementptr i8, ptr %i.t, i64 %i.af
  %next.gep152 = getelementptr i8, ptr %.114.i, i64 %i.ae ; 2 uses
  %next.gep153 = getelementptr i8, ptr %.114.i, i64 %i.af ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !21, !alias.scope !7570
  %wide.vec155 = load <4 x i32>, ptr %next.gep153, align 4, !tbaa !21, !alias.scope !7570
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !7573, !noalias !7570
  store <4 x i32> %wide.vec155, ptr %next.gep151, align 4, !tbaa !21, !alias.scope !7573, !noalias !7570
  store <4 x i32> zeroinitializer, ptr %next.gep152, align 4, !tbaa !21, !alias.scope !7570
  store <4 x i32> zeroinitializer, ptr %next.gep153, align 4, !tbaa !21, !alias.scope !7570
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !7575

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader.i ], [ %i.ac, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPNS9_3dtl4pairINS9_4test24movable_and_copyable_intESE_EELb0EEEEENS3_ISG_EESI_NS6_INSB_23flat_tree_value_compareISt4lessISE_ESF_NSB_9select1stISE_EEEEEENS0_7move_opEEET3_T_ST_T0_T1_RT2_SW_SS_NS0_9iter_sizeISV_E4typeES10_S10_S10_T4_bT5_:bb.a
  %i.de = load ptr, ptr %12, align 8, !tbaa !1967, !noalias !9245
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.preheader, %.lr.ph.i32
  %.sroa.050.0 = phi ptr [ %i.dl, %.lr.ph.i32 ], [ %i.de, %.lr.ph.i32.preheader ]
  %.sroa.049.0 = phi ptr [ %i.do, %.lr.ph.i32 ], [ %i.cl, %.lr.ph.i32.preheader ]
  %i.df = phi ptr [ %i.di, %.lr.ph.i32 ], [ %i.cm, %.lr.ph.i32.preheader ]
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1924, !noalias !9248
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1913, !noalias !9248 ; 4 uses
  %i.dj = load ptr, ptr %.sroa.050.0, align 8, !tbaa !1924, !noalias !9253
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1913, !noalias !9253 ; 3 uses
  %i.dm = load ptr, ptr %.sroa.049.0, align 8, !tbaa !1924, !noalias !9256
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1913, !noalias !9256 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !21, !noalias !9259
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !21, !noalias !9259
  store i32 0, ptr %i.dp, align 4, !tbaa !21, !noalias !9259
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !21, !noalias !9259
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !21, !noalias !9259
  store i32 0, ptr %i.ds, align 4, !tbaa !21, !noalias !9259
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !21, !noalias !9259
  store i32 %i.dw, ptr %i.dp, align 4, !tbaa !21, !noalias !9259
  store i32 0, ptr %i.dv, align 4, !tbaa !21, !noalias !9259
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !21, !noalias !9259
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !21, !noalias !9259
  store i32 0, ptr %i.dx, align 4, !tbaa !21, !noalias !9259
  %.not.i33 = icmp eq ptr %i.di, %i.ah
  br i1 %.not.i33, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit, label %.lr.ph.i32, !llvm.loop !8681

bb.p:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.ci, %i.ah
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %storemerge.i, %bb.p ]
  %i.dz = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %i.ci, %bb.p ]
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1924, !noalias !9260
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1913, !noalias !9260 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1924, !noalias !9260
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1913, !noalias !9260 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.ed, align 4, !tbaa !21, !noalias !9260
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !21, !noalias !9260
  store i32 0, ptr %i.ed, align 4, !tbaa !21, !noalias !9260
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 12 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !21, !noalias !9260
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !21, !noalias !9260
  store i32 0, ptr %i.ej, align 4, !tbaa !21, !noalias !9260
  %.not.i.i35 = icmp eq ptr %i.ec, %i.ah
  br i1 %.not.i.i35, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit, label %.lr.ph.i.i, !llvm.loop !8687

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit: ; preds = %.lr.ph.i32, %.lr.ph.i31, %.lr.ph.i.i, %bb.p, %.thread91, %.thread90, %.loopexit
  %storemerge = phi ptr [ %i.ah, %.loopexit ], [ %i.cw, %.lr.ph.i31 ], [ %i.cm, %.thread90 ], [ %i.cl, %.thread91 ], [ %storemerge.i, %bb.p ], [ %i.eg, %.lr.ph.i.i ], [ %i.do, %.lr.ph.i32 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1967
  %i.em = load ptr, ptr %1, align 8, !tbaa !6482  ; 6 uses
  %.neg93 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %.neg93 ; 3 uses
  %i.eo = load ptr, ptr %12, align 8, !tbaa !1967, !noalias !9265
  %.not.i36 = icmp eq ptr %i.ah, %i.eo
  br i1 %.not.i36, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_3dtl4pairINS6_4test24movable_and_copyable_intESB_EELb0EEEEEEEvT_SG_RSG_T0_SI_SI_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit
  %.not9.i = icmp eq i64 %.neg93, 0
  br i1 %.not9.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit.i
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.em, i64 -8 ; 2 uses
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !19
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !19
  store i64 %i.es, ptr %i.ep, align 8, !tbaa !19
  store i64 %i.er, ptr %i.eq, align 8, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit.i
  %i.et = load ptr, ptr %2, align 8, !tbaa !6482  ; 2 uses
  %i.eu = icmp eq ptr %i.en, %i.et
  br i1 %i.eu, label %.sink.split.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ev = icmp eq ptr %i.et, %i.em
  br i1 %i.ev, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_3dtl4pairINS6_4test24movable_and_copyable_intESB_EELb0EEEEEEEvT_SG_RSG_T0_SI_SI_.exit

.sink.split.i:                                    ; preds = %bb.s, %bb.r
  %.sink.i = phi ptr [ %i.em, %bb.r ], [ %i.en, %bb.s ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !6482
  %.pre119 = load ptr, ptr %1, align 8, !tbaa !6482
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_3dtl4pairINS6_4test24movable_and_copyable_intESB_EELb0EEEEEEEvT_SG_RSG_T0_SI_SI_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_3dtl4pairINS6_4test24movable_and_copyable_intESB_EELb0EEEEEEEvT_SG_RSG_T0_SI_SI_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit, %bb.s, %.sink.split.i
  %i.ew = phi ptr [ %i.em, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit ], [ %i.em, %bb.s ], [ %.pre119, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !1967
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -8 ; 2 uses
  store ptr %i.ex, ptr %1, align 8, !tbaa !6482
  %i.ey = icmp ne i64 %.0106, 0
  %.neg = sext i1 %i.ey to i64
  %i.ez = add i64 %.0106, %.neg
  %i.fa = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.fa to i64
  %i.fb = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.fc = add i64 %.089105, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fc, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !9268

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_3dtl4pairINS6_4test24movable_and_copyable_intESB_EELb0EEEEEEEvT_SG_RSG_T0_SI_SI_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9269)
  %i.fd = load ptr, ptr %6, align 8, !tbaa !1967, !noalias !9269
  store ptr %i.fd, ptr %0, align 8, !tbaa !1967, !alias.scope !9269
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1967   ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1967   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1967   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1924
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1924
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1924
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !21
  store i32 %i.q, ptr %3, align 4, !tbaa !21
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  store i32 %i.u, ptr %i.s, align 4, !tbaa !21
  store i32 0, ptr %i.t, align 4, !tbaa !21
  %storemerge911.i = add i32 %i.r, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.v = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i64 %4, 2
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.v, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21
  store i32 0, ptr %i.y, align 4, !tbaa !21
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21
  store i32 0, ptr %i.ac, align 4, !tbaa !21
  %storemerge9.i = add i32 %i.aa, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !21
  store i32 0, ptr %i.af, align 4, !tbaa !21
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !21
  store i32 0, ptr %i.aj, align 4, !tbaa !21
  %storemerge9.i.1 = add i32 %i.ah, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  store i32 %i.an, ptr %i.al, align 4, !tbaa !21
  store i32 0, ptr %i.am, align 4, !tbaa !21
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !21
  store i32 0, ptr %i.aq, align 4, !tbaa !21
  %storemerge9.i.epil = add i32 %i.ao, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  store i32 %i.at, ptr %i.p, align 8, !tbaa !21
  store i32 0, ptr %i.as, align 4, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !21
  store i32 %i.av, ptr %i.t, align 4, !tbaa !21
  store i32 0, ptr %i.au, align 4, !tbaa !21
  store ptr %i.a, ptr %8, align 8, !tbaa !1967
  store ptr %i.b, ptr %9, align 8, !tbaa !1967
  store ptr %i.d, ptr %10, align 8, !tbaa !1967
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit11

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aw = trunc i64 %4 to i32
  %i.ax = shl i32 %i.aw, 1
  %i.ay = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ax
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %bb.f

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit11: ; preds = %.loopexit
  %i.az = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ba = trunc i64 %4 to i32
  %i.bb = shl i32 %i.ba, 1
  %i.bc = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10, %i.bb
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  resume { ptr, i32 } %i.az

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !1967
  store ptr %i.b, ptr %6, align 8, !tbaa !1967
  store ptr %i.d, ptr %7, align 8, !tbaa !1967
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !1924
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !1924
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !1924
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.bf
  %i.bm = ashr exact i64 %i.bl, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bi, i64 noundef %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !6656
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !6658
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !6659
  %i.f = load ptr, ptr %0, align 8, !tbaa !1967
  %i.g = load ptr, ptr %1, align 8, !tbaa !1967
  %i.h = load ptr, ptr %2, align 8, !tbaa !1967
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !1967
  store ptr %i.g, ptr %8, align 8, !tbaa !1967
  store ptr %i.h, ptr %9, align 8, !tbaa !1967
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opENS0_10range_xbufIS9_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !1967   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !1967   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !21
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21   ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.n, align 4, !tbaa !21
  %i.r = load i32, ptr %i.l, align 4, !tbaa !21
  store i32 %i.r, ptr %i.n, align 4, !tbaa !21
  store i32 %i.p, ptr %i.l, align 4, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !21
  store i32 0, ptr %i.s, align 4, !tbaa !21
  %i.v = load i32, ptr %i.t, align 4, !tbaa !21
  store i32 %i.v, ptr %i.s, align 4, !tbaa !21
  store i32 %i.u, ptr %i.t, align 4, !tbaa !21
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.w = icmp ult i64 %i.i, 16
  %i.x = load ptr, ptr %0, align 8, !tbaa !1967   ; 5 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.x, ptr %11, align 8, !tbaa !1967
  %i.y = load ptr, ptr %1, align 8, !tbaa !1967
  store ptr %i.y, ptr %12, align 8, !tbaa !1967
  %i.z = load ptr, ptr %2, align 8, !tbaa !1967
  store ptr %i.z, ptr %13, align 8, !tbaa !1967
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_SH_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %1, align 8, !tbaa !1967  ; 6 uses
  %i.ab = icmp ugt i64 %3, %4
  br i1 %i.ab, label %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit, label %bb.n

_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit: ; preds = %bb.i
  %i.ac = lshr i64 %3, 1                          ; 2 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !1924
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1913 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !1967
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1924, !noalias !9272 ; 3 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1924, !noalias !9272 ; 3 uses
  %.not9.i = icmp eq ptr %i.ah, %i.ai
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPNS9_3dtl4pairINS9_4test24movable_and_copyable_intESE_EELb0EEEEESI_SI_NS6_INSB_23flat_tree_value_compareISt4lessISE_ESF_NSB_9select1stISE_EEEEEENS0_7swap_opEEET3_T_SS_T0_T1_RT2_SV_SR_NS0_9iter_sizeISU_E4typeESZ_SZ_SZ_T4_bT5_:bb.a
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1913, !noalias !13037 ; 4 uses
  %i.bx = load ptr, ptr %.sroa.049.0, align 8, !tbaa !1924, !noalias !13042
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1913, !noalias !13042 ; 3 uses
  %i.ca = load ptr, ptr %.sroa.048.0, align 8, !tbaa !1924, !noalias !13045
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1913, !noalias !13045 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 12 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cj = load <2 x i32>, ptr %i.cd, align 4, !tbaa !21, !noalias !13048
  store i32 0, ptr %i.cd, align 4, !tbaa !21, !noalias !13048
  store i32 0, ptr %i.ce, align 4, !tbaa !21, !noalias !13048
  %i.ck = load i32, ptr %i.cf, align 4, !tbaa !21, !noalias !13048
  store i32 %i.ck, ptr %i.cd, align 4, !tbaa !21, !noalias !13048
  store i32 0, ptr %i.cf, align 4, !tbaa !21, !noalias !13048
  %i.cl = load i32, ptr %i.cg, align 4, !tbaa !21, !noalias !13048
  store i32 %i.cl, ptr %i.ce, align 4, !tbaa !21, !noalias !13048
  store i32 0, ptr %i.cg, align 4, !tbaa !21, !noalias !13048
  %i.cm = load i32, ptr %i.ch, align 4, !tbaa !21, !noalias !13048
  store i32 %i.cm, ptr %i.cf, align 4, !tbaa !21, !noalias !13048
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !21, !noalias !13048
  store i32 %i.cn, ptr %i.cg, align 4, !tbaa !21, !noalias !13048
  store <2 x i32> %i.cj, ptr %i.ch, align 4, !tbaa !21, !noalias !13048
  %.not.i33 = icmp eq ptr %i.bw, %i.ah
  br i1 %.not.i33, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit, label %.lr.ph.i32, !llvm.loop !8935

bb.j:                                             ; preds = %bb.i
  %.not1.i.i = icmp eq ptr %i.av, %i.ah
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.au, %bb.j ]
  %i.co = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.av, %bb.j ]
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1924, !noalias !13049
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1913, !noalias !13049 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1924, !noalias !13049
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1913, !noalias !13049 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !21, !noalias !13049
  store i32 0, ptr %i.cs, align 4, !tbaa !21, !noalias !13049
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !21, !noalias !13049
  store i32 %i.cy, ptr %i.cs, align 4, !tbaa !21, !noalias !13049
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !21, !noalias !13049
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !21, !noalias !13049
  store i32 0, ptr %i.cz, align 4, !tbaa !21, !noalias !13049
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !21, !noalias !13049
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !21, !noalias !13049
  store i32 %i.db, ptr %i.da, align 4, !tbaa !21, !noalias !13049
  %.not.i.i = icmp eq ptr %i.cr, %i.ah
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit, label %.lr.ph.i.i, !llvm.loop !8665

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit: ; preds = %.lr.ph.i32, %.lr.ph.i31, %.lr.ph.i.i, %bb.j, %.thread87, %.thread86, %bb.i
  %storemerge = phi ptr [ %i.ah, %bb.i ], [ %i.bk, %.lr.ph.i31 ], [ %i.ba, %.thread86 ], [ %i.az, %.thread87 ], [ %i.au, %bb.j ], [ %i.cv, %.lr.ph.i.i ], [ %i.cc, %.lr.ph.i32 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1967
  %i.dd = load ptr, ptr %1, align 8, !tbaa !6482  ; 6 uses
  %.neg89 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %.neg89 ; 3 uses
  %i.df = load ptr, ptr %12, align 8, !tbaa !1967, !noalias !13054
  %.not.i35 = icmp eq ptr %i.ah, %i.df
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_3dtl4pairINS6_4test24movable_and_copyable_intESB_EELb0EEEEEEEvT_SG_RSG_T0_SI_SI_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit
  %.not9.i = icmp eq i64 %.neg89, 0
  br i1 %.not9.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit.i
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -8 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 2 uses
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !19
  store i64 %i.dj, ptr %i.dg, align 8, !tbaa !19
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit.i
  %i.dk = load ptr, ptr %2, align 8, !tbaa !6482  ; 2 uses
  %i.dl = icmp eq ptr %i.de, %i.dk
  br i1 %i.dl, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = icmp eq ptr %i.dk, %i.dd
  br i1 %i.dm, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_3dtl4pairINS6_4test24movable_and_copyable_intESB_EELb0EEEEEEEvT_SG_RSG_T0_SI_SI_.exit

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.sink.i = phi ptr [ %i.dd, %bb.l ], [ %i.de, %bb.m ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !6482
  %.pre106 = load ptr, ptr %1, align 8, !tbaa !6482
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_3dtl4pairINS6_4test24movable_and_copyable_intESB_EELb0EEEEEEEvT_SG_RSG_T0_SI_SI_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_3dtl4pairINS6_4test24movable_and_copyable_intESB_EELb0EEEEEEEvT_SG_RSG_T0_SI_SI_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit, %bb.m, %.sink.split.i
  %i.dn = phi ptr [ %i.dd, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEESC_EET0_T_SE_SD_.exit ], [ %i.dd, %bb.m ], [ %.pre106, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !1967
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8 ; 2 uses
  store ptr %i.do, ptr %1, align 8, !tbaa !6482
  %i.dp = icmp ne i64 %.099, 0
  %.neg = sext i1 %i.dp to i64
  %i.dq = add i64 %.099, %.neg
  %i.dr = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.dr to i64
  %i.ds = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.dt = add i64 %.08598, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dt, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13057

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_3dtl4pairINS6_4test24movable_and_copyable_intESB_EELb0EEEEEEEvT_SG_RSG_T0_SI_SI_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !13058)
  %i.du = load ptr, ptr %6, align 8, !tbaa !1967, !noalias !13058
  store ptr %i.du, ptr %0, align 8, !tbaa !1967, !alias.scope !13058
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEES9_EEvT_SJ_SJ_T0_T1_NS0_9iter_sizeISJ_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1967   ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1967   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1967   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1924
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1924
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1924
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !21
  store i32 %i.q, ptr %4, align 4, !tbaa !21
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  store i32 %i.u, ptr %i.s, align 4, !tbaa !21
  store i32 0, ptr %i.t, align 4, !tbaa !21
  %storemerge911.i = add i32 %i.r, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.not13.i = icmp eq i64 %5, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.v = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i64 %5, 2
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.v, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21
  store i32 0, ptr %i.y, align 4, !tbaa !21
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21
  store i32 0, ptr %i.ac, align 4, !tbaa !21
  %storemerge9.i = add i32 %i.aa, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !21
  store i32 0, ptr %i.af, align 4, !tbaa !21
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !21
  store i32 0, ptr %i.aj, align 4, !tbaa !21
  %storemerge9.i.1 = add i32 %i.ah, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod23 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i.epil.init ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  store i32 %i.an, ptr %i.al, align 4, !tbaa !21
  store i32 0, ptr %i.am, align 4, !tbaa !21
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !21
  store i32 0, ptr %i.aq, align 4, !tbaa !21
  %storemerge9.i.epil = add i32 %i.ao, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  store i32 %i.at, ptr %i.p, align 8, !tbaa !21
  store i32 0, ptr %i.as, align 4, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !21
  store i32 %i.av, ptr %i.t, align 4, !tbaa !21
  store i32 0, ptr %i.au, align 4, !tbaa !21
  store ptr %i.a, ptr %10, align 8, !tbaa !1967
  store ptr %i.b, ptr %11, align 8, !tbaa !1967
  store ptr %i.d, ptr %12, align 8, !tbaa !1967
  %i.aw = load ptr, ptr %3, align 8, !tbaa !6553, !nonnull !6505
  store ptr %i.aw, ptr %13, align 8, !tbaa !6369
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEEvT_SJ_SJ_NS0_9iter_sizeISJ_E4typeESM_T0_SM_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
          to label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit11

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ax = trunc i64 %5 to i32
  %i.ay = shl i32 %i.ax, 1
  %i.az = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ay
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %bb.f

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit11: ; preds = %.loopexit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bb = trunc i64 %5 to i32
  %i.bc = shl i32 %i.bb, 1
  %i.bd = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10, %i.bc
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  resume { ptr, i32 } %i.ba

bb.e:                                             ; preds = %bb.c
  %i.be = load ptr, ptr %3, align 8, !tbaa !6553, !nonnull !6505
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !1967
  store ptr %i.b, ptr %7, align 8, !tbaa !1967
  store ptr %i.d, ptr %8, align 8, !tbaa !1967
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !1924
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !1924
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !1924
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.bh
  %i.bo = ashr exact i64 %i.bn, 3
  store ptr %i.be, ptr %9, align 8, !tbaa !6369
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEEvT_SJ_SJ_NS0_9iter_sizeISJ_E4typeESM_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.bk, i64 noundef %i.bo, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opENS0_13adaptive_xbufIS8_S9_mEEEEvT_SM_SM_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %.sroa.039 = alloca ptr, align 8                ; 3 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1967   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1967   ; 6 uses
  %.not44 = icmp eq ptr %i.a, %i.b
  br i1 %.not44, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEENS4_4pairIS8_S8_EENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1967   ; 2 uses
  %.not45 = icmp eq ptr %i.b, %i.c
  br i1 %.not45, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEENS4_4pairIS8_S8_EENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1924 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1913
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21   ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not46 = icmp slt i32 %i.i, %i.j
  br i1 %.not46, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEENS4_4pairIS8_S8_EENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1924 ; 2 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1924 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.l
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.s
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not10.i = icmp eq ptr %i.e, %i.k
  br i1 %.not10.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES8_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.t = phi ptr [ %i.ae, %bb.h ], [ %i.a, %bb.e ] ; 3 uses
  %.011.i = phi i64 [ %.1.i, %bb.h ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = lshr i64 %.011.i, 1                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !1924, !noalias !13061
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1913, !noalias !13061
  br label %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit.i: ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21, !noalias !13061
  %.not9.i = icmp slt i32 %i.z, %i.j
  br i1 %.not9.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit.i
  %i.aa = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1924, !noalias !13061
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1913, !noalias !13061
  %.neg.i = xor i64 %i.u, -1
  %i.ad = add i64 %.011.i, %.neg.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit.i
  %i.ae = phi ptr [ %i.ac, %bb.g ], [ %i.t, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit.i ] ; 3 uses
  %.1.i = phi i64 [ %i.ad, %bb.g ], [ %i.u, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit.i ] ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES8_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !13064

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES8_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !1924
  %.pre71 = ptrtoint ptr %.pre to i64
  br label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES8_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES8_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_RKT0_T1_.exit: ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES8_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit, %bb.e
  %.pre-phi72 = phi i64 [ %.pre71, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES8_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit ], [ %i.l, %bb.e ]
  %i.af = phi ptr [ %i.ae, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES8_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit ], [ %i.a, %bb.e ] ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !1967
  store ptr %i.af, ptr %5, align 8, !tbaa !1967
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1967
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1924
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %.pre-phi72
  %i.ak = ashr exact i64 %i.aj, 3
  call void @_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mE11move_assignINS2_22stable_vector_iteratorIS8_Lb0EEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %i.ak)
  %i.al = load ptr, ptr %4, align 8, !tbaa !571   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !573 ; 2 uses
  %.idx = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1967  ; 2 uses
  store ptr %i.ap, ptr %.sroa.039, align 8, !tbaa !1967
  %i.aq = load ptr, ptr %2, align 8, !tbaa !1967
  %.not15.i = icmp eq i64 %i.an, 0
  br i1 %.not15.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEENS4_4pairIS8_S8_EENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %.lr.ph.i7.preheader

.lr.ph.i7.preheader:                              ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEES8_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_RKT0_T1_.exit
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck317 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.dd, %middle.block346 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck317 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.de, %middle.block346 ]
  %.ph355 = phi ptr [ %i.ck, %vector.memcheck317 ], [ %i.ck, %.lr.ph.i29.preheader ], [ %i.df, %middle.block346 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader354, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dn, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader354 ]
  %.sroa.045.0 = phi ptr [ %i.do, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader354 ]
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i29 ], [ %.ph355, %.lr.ph.i29.preheader354 ]
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !21, !noalias !13775
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !21, !noalias !13775
  store i32 0, ptr %i.dn, align 4, !tbaa !21, !noalias !13775
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !21, !noalias !13775
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !21, !noalias !13775
  store i32 0, ptr %i.dm, align 4, !tbaa !21, !noalias !13775
  %.not.i30 = icmp eq ptr %i.dm, %i.au
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !13777

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dr = add i64 %i.v, %i.cl                     ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader352, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.064.0, i64 -4
  %i.du = add i64 %i.x, %i.cl
  %i.dv = lshr i64 %i.du, 2
  %i.dw = mul i64 %i.dv, -4                       ; 2 uses
  %scevgep311 = getelementptr i8, ptr %scevgep, i64 %i.dw
  %scevgep312 = getelementptr i8, ptr %i.ck, i64 -4
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.dw
  %bound0 = icmp ult ptr %scevgep311, %i.ck
  %bound1 = icmp ult ptr %scevgep313, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader352, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 9223372036854775800     ; 3 uses
  %i.dx = mul i64 %n.vec, -4                      ; 2 uses
  %i.dy = getelementptr i8, ptr %.sroa.064.0, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ck, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.ea ; 2 uses
  %next.gep314 = getelementptr i8, ptr %i.ck, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep314, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep314, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.eb, align 4, !tbaa !21, !alias.scope !13778, !noalias !13781
  %wide.load315 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !21, !alias.scope !13778, !noalias !13781
  %i.ed = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ed, align 4, !tbaa !21, !alias.scope !13786, !noalias !13788
  store <4 x i32> %wide.load315, ptr %i.ee, align 4, !tbaa !21, !alias.scope !13786, !noalias !13788
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !21, !alias.scope !13778, !noalias !13781
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !21, !alias.scope !13778, !noalias !13781
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !13789

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader352

.lr.ph.i.i.preheader352:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dy, %middle.block ]
  %.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader352, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader352 ]
  %i.eg = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader352 ]
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !21, !noalias !13781
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !21, !noalias !13781
  store i32 0, ptr %i.eh, align 4, !tbaa !21, !noalias !13781
  %.not.i.i31 = icmp eq ptr %i.eh, %i.au
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !13790

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block346, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.au, %bb.s ], [ %i.ei, %.lr.ph.i.i ], [ %i.ck, %bb.t ], [ %i.cp, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dy, %middle.block ], [ %i.de, %middle.block346 ], [ %i.do, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !13488
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.p, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.au, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.en = load i64, ptr %i.el, align 8, !tbaa !19
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !19
  store i64 %i.eo, ptr %i.el, align 8, !tbaa !19
  store i64 %i.en, ptr %i.em, align 8, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.ep = load ptr, ptr %2, align 8, !tbaa !6482  ; 2 uses
  %i.eq = icmp eq ptr %i.ek, %i.ep
  br i1 %i.eq, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = icmp eq ptr %i.ep, %i.p
  br i1 %i.er, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.p, %bb.y ], [ %i.ek, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !6482
  %.pre194 = load ptr, ptr %1, align 8, !tbaa !6482
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  %i.es = phi ptr [ %i.p, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.p, %bb.z ], [ %.pre194, %.sink.split.i ]
  store ptr %i.au, ptr %3, align 8, !tbaa !13488
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -8 ; 2 uses
  store ptr %i.et, ptr %1, align 8, !tbaa !6482
  %i.eu = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.eu to i64
  %i.ev = add i64 %.0140, %.neg
  %i.ew = icmp ne i64 %i.at, 0
  %.neg24 = sext i1 %i.ew to i64
  %i.ex = add i64 %.sroa.speculated, %.neg24
  %i.ey = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ey, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13791

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ez = load ptr, ptr %6, align 8, !tbaa !13488
  store ptr %i.ez, ptr %0, align 8, !tbaa !13488
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEES5_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !21
  store i32 %i.c, ptr %3, align 4, !tbaa !21
  store i32 0, ptr %0, align 4, !tbaa !21
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.not11.i = icmp eq i64 %4, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.c
  %i.d = shl i64 %4, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.d
  %bound0 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.e = add i64 %4, -1                           ; 3 uses
  %xtraiter44 = and i64 %i.e, 1
  %i.f = icmp eq i64 %4, 2
  br i1 %i.f, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter48 = and i64 %i.e, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter49 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter49.next.1, %.lr.ph.i.lver.orig ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21
  store i32 %i.i, ptr %i.g, align 4, !tbaa !21
  store i32 0, ptr %i.h, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.lver.orig = add nuw i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i.lver.orig
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  store i32 %i.l, ptr %i.j, align 4, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.lver.orig.1 = add nuw i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter49.next.1 = add nuw i64 %niter49, 2       ; 2 uses
  %niter49.ncmp.1 = icmp eq i64 %niter49.next.1, %unroll_iter48
  br i1 %niter49.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !13381

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %3, align 4       ; 3 uses
  %i.m = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %4, 2
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in712.i = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i
  store i32 %load_initial, ptr %i.o, align 4, !tbaa !21
  store i32 0, ptr %i.p, align 4, !tbaa !21
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i = add nuw i64 %storemerge13.i, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.q, align 4, !tbaa !21
  store i32 0, ptr %i.r, align 4, !tbaa !21
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.1 = add nuw i64 %storemerge13.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit41.unr-lcssa, label %.lr.ph.i, !llvm.loop !13381

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig.epil.init
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  store i32 %i.u, ptr %i.s, align 4, !tbaa !21
  store i32 0, ptr %i.t, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit.loopexit41.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit41.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.v, align 4, !tbaa !21
  store i32 0, ptr %i.w, align 4, !tbaa !21
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  store i32 %i.y, ptr %0, align 4, !tbaa !21
  store i32 0, ptr %i.x, align 4, !tbaa !21
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.af, i64 noundef %i.ac, ptr noundef nonnull %3, i64 noundef %4)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter55 = and i64 %4, 3                     ; 3 uses
  %i.ag = icmp ult i64 %4, 4
  br i1 %i.ag, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter59 = and i64 %4, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.aw, %.preheader.i.i.i ] ; 5 uses
  %niter60 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter60.next.3, %.preheader.i.i.i ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !21
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !21
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !21
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !21
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aw = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter60.next.3 = add i64 %niter60, 4           ; 2 uses
  %niter60.ncmp.3 = icmp eq i64 %niter60.next.3, %unroll_iter59
  br i1 %niter60.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !3251

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %xtraiter50 = and i64 %4, 3                     ; 3 uses
  %i.ay = icmp ult i64 %4, 4
  br i1 %i.ay, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter53 = and i64 %4, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bo, %bb.d ] ; 5 uses
  %niter54 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter54.next.3, %bb.d ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !21
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !21
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !21
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !21
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bo = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter54.next.3 = add i64 %niter54, 4           ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !3251

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bo, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter50, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bs, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !21
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bs = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter50
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !13792

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ax

bb.f:                                             ; preds = %bb.b
  %i.bt = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bu = ptrtoint ptr %0 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = ptrtoint ptr %2 to i64
  %i.by = sub i64 %i.bx, %i.bt
  %i.bz = ashr exact i64 %i.by, 2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bw, i64 noundef %i.bz)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod57.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod57.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.aw, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter55, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cd, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter56 = phi i64 [ %epil.iter56.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !21
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cd = add nuw i64 %.07.i.i.i.epil, 1
  %epil.iter56.next = add i64 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i64 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil, !llvm.loop !13793

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.a, %bb.f
  ret void
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  store ptr %i.z, ptr %15, align 8, !tbaa !13488
  %i.bs = load ptr, ptr %6, align 8, !tbaa !13488
  store ptr %i.bs, ptr %16, align 8, !tbaa !13488
  call void @_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.179") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dead_on_return %16, i1 noundef zeroext %11)
  %i.bt = load ptr, ptr %13, align 8, !tbaa !13488 ; 4 uses
  store ptr %i.bt, ptr %6, align 8, !tbaa !13488
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.bu = load ptr, ptr %3, align 8, !tbaa !13488 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, %i.bt
  %i.bw = load ptr, ptr %12, align 8, !tbaa !13488 ; 6 uses
  br i1 %i.bv, label %.thread83, label %.thread84

.thread83:                                        ; preds = %.thread
  %.not1.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread83 ]
  %i.bx = phi ptr [ %i.by, %.lr.ph.i25 ], [ %i.bw, %.thread83 ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !21, !noalias !14949
  store i32 0, ptr %i.by, align 4, !tbaa !21, !noalias !14949
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14949
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14949
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !21, !noalias !14949
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !21, !noalias !14949
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !21, !noalias !14949
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14949
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14949
  %.not.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !13629

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bu, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread84, %.lr.ph.i26
  %.sroa.043.0 = phi ptr [ %i.ci, %.lr.ph.i26 ], [ %i.bw, %.thread84 ]
  %.sroa.042.0 = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bt, %.thread84 ]
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i26 ], [ %i.bu, %.thread84 ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -4 ; 4 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -4 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !21, !noalias !14952
  store i32 0, ptr %i.cj, align 4, !tbaa !21, !noalias !14952
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14952
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14952
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !21, !noalias !14952
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !21, !noalias !14952
  store i32 0, ptr %i.ci, align 4, !tbaa !21, !noalias !14952
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !21, !noalias !14952
  store i32 %i.co, ptr %i.ci, align 4, !tbaa !21, !noalias !14952
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !21, !noalias !14952
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14952
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14952
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26, !llvm.loop !13716

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bq, %bb.l ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !21, !noalias !14955
  store i32 0, ptr %i.cs, align 4, !tbaa !21, !noalias !14955
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14955
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14955
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !21, !noalias !14955
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !21, !noalias !14955
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !21, !noalias !14955
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14955
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !14955
  %.not.i.i28 = icmp eq ptr %i.cs, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !13629

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %i.bw, %.thread84 ], [ %i.ac, %bb.l ], [ %i.bw, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread83 ], [ %i.ct, %.lr.ph.i.i ], [ %i.bt, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !13488
  %i.db = load ptr, ptr %1, align 8, !tbaa !6482  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -8 ; 2 uses
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !19
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !19
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !19
  store i64 %i.df, ptr %i.de, align 8, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dh = load ptr, ptr %2, align 8, !tbaa !6482  ; 2 uses
  %i.di = icmp eq ptr %i.dc, %i.dh
  br i1 %i.di, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp eq ptr %i.dh, %i.db
  br i1 %i.dj, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dc, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !6482
  %.pre124 = load ptr, ptr %1, align 8, !tbaa !6482
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  %i.dk = phi ptr [ %i.db, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.db, %bb.o ], [ %.pre124, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !13488
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8 ; 2 uses
  store ptr %i.dl, ptr %1, align 8, !tbaa !6482
  %i.dm = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dm to i64
  %i.dn = add i64 %.0100, %.neg
  %i.do = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.do to i64
  %i.dp = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.dq = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14960

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.dr = load ptr, ptr %6, align 8, !tbaa !13488
  store ptr %i.dr, ptr %0, align 8, !tbaa !13488
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.181", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.181", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !21
  store i32 %i.c, ptr %4, align 4, !tbaa !21
  store i32 0, ptr %0, align 4, !tbaa !21
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.not11.i = icmp eq i64 %5, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.c
  %i.d = shl i64 %5, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.d
  %bound0 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.e = add i64 %5, -1                           ; 3 uses
  %xtraiter45 = and i64 %i.e, 1
  %i.f = icmp eq i64 %5, 2
  br i1 %i.f, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter49 = and i64 %i.e, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter50 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter50.next.1, %.lr.ph.i.lver.orig ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21
  store i32 %i.i, ptr %i.g, align 4, !tbaa !21
  store i32 0, ptr %i.h, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.lver.orig = add nuw i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i.lver.orig
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  store i32 %i.l, ptr %i.j, align 4, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.lver.orig.1 = add nuw i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter50.next.1 = add nuw i64 %niter50, 2       ; 2 uses
  %niter50.ncmp.1 = icmp eq i64 %niter50.next.1, %unroll_iter49
  br i1 %niter50.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !13381

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %4, align 4       ; 3 uses
  %i.m = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %5, 2
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in712.i = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i
  store i32 %load_initial, ptr %i.o, align 4, !tbaa !21
  store i32 0, ptr %i.p, align 4, !tbaa !21
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i = add nuw i64 %storemerge13.i, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.q, align 4, !tbaa !21
  store i32 0, ptr %i.r, align 4, !tbaa !21
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.1 = add nuw i64 %storemerge13.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit42.unr-lcssa, label %.lr.ph.i, !llvm.loop !13381

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig.epil.init
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  store i32 %i.u, ptr %i.s, align 4, !tbaa !21
  store i32 0, ptr %i.t, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit.loopexit42.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit42.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit42.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit42.unr-lcssa ]
  %lcmp.mod44 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.v, align 4, !tbaa !21
  store i32 0, ptr %i.w, align 4, !tbaa !21
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit42.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit42.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  store i32 %i.y, ptr %0, align 4, !tbaa !21
  store i32 0, ptr %i.x, align 4, !tbaa !21
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = load ptr, ptr %3, align 8, !tbaa !13726, !nonnull !6505
  store ptr %i.ag, ptr %7, align 8, !tbaa !13460
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.af, i64 noundef %i.ac, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter56 = and i64 %5, 3                     ; 3 uses
  %i.ah = icmp ult i64 %5, 4
  br i1 %i.ah, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter60 = and i64 %5, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.ax, %.preheader.i.i.i ] ; 5 uses
  %niter61 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter61.next.3, %.preheader.i.i.i ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ai, align 4, !tbaa !21
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 -2147483648, ptr %i.am, align 4, !tbaa !21
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !21
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !21
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ax = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !3251

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %xtraiter51 = and i64 %5, 3                     ; 3 uses
  %i.az = icmp ult i64 %5, 4
  br i1 %i.az, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter54 = and i64 %5, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bp, %bb.d ] ; 5 uses
  %niter55 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter55.next.3, %bb.d ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !21
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !21
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !21
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 -2147483648, ptr %i.bm, align 4, !tbaa !21
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bp = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter55.next.3 = add i64 %niter55, 4           ; 2 uses
  %niter55.ncmp.3 = icmp eq i64 %niter55.next.3, %unroll_iter54
  br i1 %niter55.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !3251

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bp, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter51, 0
  call void @llvm.assume(i1 %lcmp.mod53)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bt, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bq, align 4, !tbaa !21
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bt = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter51
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !14961

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %bb.b
  %i.bu = load ptr, ptr %3, align 8, !tbaa !13726, !nonnull !6505
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bv = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bw = ptrtoint ptr %0 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = ptrtoint ptr %2 to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = ashr exact i64 %i.ca, 2
  store ptr %i.bu, ptr %6, align 8, !tbaa !13460
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.by, i64 noundef %i.cb, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod58.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod58.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.ax, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod59 = icmp ne i64 %xtraiter56, 0
  call void @llvm.assume(i1 %lcmp.mod59)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cf, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter57 = phi i64 [ %epil.iter57.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !21
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cf = add nuw i64 %.07.i.i.i.epil, 1
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPNS9_4test24movable_and_copyable_intELb0EEEEENS3_ISD_EESF_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISC_ESC_NS_11move_detail8identityISC_EEEEEENS0_7move_opEEET3_T_SS_T0_T1_RT2_SV_SR_NS0_9iter_sizeISU_E4typeESZ_SZ_SZ_T4_bT5_:bb.a
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1924, !noalias !16736
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1913, !noalias !16736 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.du = load ptr, ptr %.sroa.059.0, align 8, !tbaa !1924, !noalias !16736
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1913, !noalias !16736 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = load i32, ptr %i.dt, align 4, !tbaa !21, !noalias !16736
  store i32 0, ptr %i.dt, align 4, !tbaa !21, !noalias !16736
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !21, !noalias !16736
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !21, !noalias !16736
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !21, !noalias !16736
  %.not.i = icmp eq ptr %i.ds, %i.ar
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i34, !llvm.loop !16199

bb.y:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS3_INS4_22stable_vector_iteratorIS7_Lb0EEEEESB_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SO_RT0_SQ_SR_SN_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.dn, %i.ah           ; 2 uses
  br i1 %.not23, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.z, %.lr.ph.i35
  %.sroa.053.0 = phi ptr [ %i.eg, %.lr.ph.i35 ], [ %.sroa.076.0, %bb.z ]
  %.sroa.052.0 = phi ptr [ %i.ej, %.lr.ph.i35 ], [ %.sroa.071.0, %bb.z ]
  %i.ea = phi ptr [ %i.ed, %.lr.ph.i35 ], [ %i.dn, %bb.z ]
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1924, !noalias !16739
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1913, !noalias !16739 ; 3 uses
  %i.ee = load ptr, ptr %.sroa.053.0, align 8, !tbaa !1924, !noalias !16744
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1913, !noalias !16744 ; 2 uses
  %i.eh = load ptr, ptr %.sroa.052.0, align 8, !tbaa !1924, !noalias !16747
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1913, !noalias !16747 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !21, !noalias !16750
  store i32 %i.em, ptr %i.el, align 4, !tbaa !21, !noalias !16750
  store i32 0, ptr %i.ek, align 4, !tbaa !21, !noalias !16750
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !21, !noalias !16750
  store i32 %i.eo, ptr %i.ek, align 4, !tbaa !21, !noalias !16750
  store i32 0, ptr %i.en, align 4, !tbaa !21, !noalias !16750
  %.not.i36 = icmp eq ptr %i.ed, %i.ah
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i35, !llvm.loop !16212

bb.aa:                                            ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ew, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ]
  %i.ep = phi ptr [ %i.es, %.lr.ph.i.i ], [ %i.dn, %bb.aa ]
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1924, !noalias !16751
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1913, !noalias !16751 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1924, !noalias !16751
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1913, !noalias !16751 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.et, align 4, !tbaa !21, !noalias !16751
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !21, !noalias !16751
  store i32 0, ptr %i.et, align 4, !tbaa !21, !noalias !16751
  %.not.i.i38 = icmp eq ptr %i.es, %i.ah
  br i1 %.not.i.i38, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !16218

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i35, %.lr.ph.i.i, %.lr.ph.i34, %bb.aa, %bb.z, %bb.x, %bb.w
  %storemerge = phi ptr [ %i.ah, %bb.w ], [ %.sroa.071.0, %bb.z ], [ %i.dn, %bb.x ], [ %i.ew, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ], [ %i.dw, %.lr.ph.i34 ], [ %i.ej, %.lr.ph.i35 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !4627
  %.neg104 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.c, i64 %.neg104 ; 3 uses
  %.not.i39 = icmp eq ptr %i.ah, %.sroa.076.0
  br i1 %.not.i39, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_4test24movable_and_copyable_intELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg104, 0
  br i1 %.not9.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8 ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !19
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !19
  store i64 %i.fd, ptr %i.fa, align 8, !tbaa !19
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.fe = load ptr, ptr %2, align 8, !tbaa !6482  ; 2 uses
  %i.ff = icmp eq ptr %i.ez, %i.fe
  br i1 %i.ff, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = icmp eq ptr %i.fe, %i.c
  br i1 %i.fg, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_4test24movable_and_copyable_intELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.ad, %bb.ac
  %.sink.i = phi ptr [ %i.c, %bb.ac ], [ %i.ez, %bb.ad ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !6482
  %.pre188 = load ptr, ptr %1, align 8, !tbaa !6482
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_4test24movable_and_copyable_intELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_4test24movable_and_copyable_intELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit, %bb.ad, %.sink.split.i
  %i.fh = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EET0_T_SB_SA_.exit ], [ %i.c, %bb.ad ], [ %.pre188, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !4627
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -8 ; 2 uses
  store ptr %i.fi, ptr %1, align 8, !tbaa !6482
  %i.fj = icmp ne i64 %.0146, 0
  %.neg = sext i1 %i.fj to i64
  %i.fk = add i64 %.0146, %.neg
  %i.fl = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.fl to i64
  %i.fm = add i64 %.sroa.speculated, %.neg24
  %i.fn = add i64 %.0102145, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fn, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16756

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPNS6_4test24movable_and_copyable_intELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16757)
  %i.fo = load ptr, ptr %6, align 8, !tbaa !4627, !noalias !16757
  store ptr %i.fo, ptr %0, align 8, !tbaa !4627, !alias.scope !16757
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !4627   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !4627   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !4627   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1924
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1924
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1924
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !21
  store i32 %i.q, ptr %3, align 4, !tbaa !21
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.not11.i = icmp eq i64 %4, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.d
  %i.r = shl i64 %4, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.r
  %bound0 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.s = add i64 %4, -1                           ; 3 uses
  %xtraiter29 = and i64 %i.s, 1
  %i.t = icmp eq i64 %4, 2
  br i1 %i.t, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter33 = and i64 %i.s, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter34 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter34.next.1, %.lr.ph.i.lver.orig ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21
  store i32 %i.w, ptr %i.u, align 4, !tbaa !21
  store i32 0, ptr %i.v, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.lver.orig = add nuw i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i.lver.orig
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21
  store i32 0, ptr %i.y, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.lver.orig.1 = add nuw i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter34.next.1 = add nuw i64 %niter34, 2       ; 2 uses
  %niter34.ncmp.1 = icmp eq i64 %niter34.next.1, %unroll_iter33
  br i1 %niter34.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !13381

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %3, align 4       ; 3 uses
  %i.aa = add i64 %4, -1                          ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.ab = icmp eq i64 %4, 2
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in712.i = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i
  store i32 %load_initial, ptr %i.ac, align 4, !tbaa !21
  store i32 0, ptr %i.ad, align 4, !tbaa !21
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i = add nuw i64 %storemerge13.i, 1  ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.ae, align 4, !tbaa !21
  store i32 0, ptr %i.af, align 4, !tbaa !21
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.1 = add nuw i64 %storemerge13.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit26.unr-lcssa, label %.lr.ph.i, !llvm.loop !13381

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod32 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig.epil.init
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !21
  store i32 0, ptr %i.ah, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit.loopexit26.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit26.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit26.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit26.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.epil.init
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.aj, align 4, !tbaa !21
  store i32 0, ptr %i.ak, align 4, !tbaa !21
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit26.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit26.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  store i32 %i.am, ptr %i.p, align 8, !tbaa !21
  store i32 0, ptr %i.al, align 4, !tbaa !21
  store ptr %i.a, ptr %8, align 8, !tbaa !4627
  store ptr %i.b, ptr %9, align 8, !tbaa !4627
  store ptr %i.d, ptr %10, align 8, !tbaa !4627
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %3, i64 noundef %4)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i9

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter40 = and i64 %4, 3                     ; 3 uses
  %i.an = icmp ult i64 %4, 4
  br i1 %i.an, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter44 = and i64 %4, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.bd, %.preheader.i.i.i ] ; 5 uses
  %niter45 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter45.next.3, %.preheader.i.i.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ao, align 4, !tbaa !21
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !21
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !21
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !21
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bd = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter45.next.3 = add i64 %niter45, 4           ; 2 uses
  %niter45.ncmp.3 = icmp eq i64 %niter45.next.3, %unroll_iter44
  br i1 %niter45.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !3251

.preheader.i.i.i9:                                ; preds = %.loopexit
  %i.be = landingpad { ptr, i32 }
          cleanup
  %xtraiter35 = and i64 %4, 3                     ; 3 uses
  %i.bf = icmp ult i64 %4, 4
  br i1 %i.bf, label %.epil.preheader, label %.preheader.i.i.i9.new

.preheader.i.i.i9.new:                            ; preds = %.preheader.i.i.i9
  %unroll_iter38 = and i64 %4, -4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.i.i9.new
  %.07.i.i.i10 = phi i64 [ 0, %.preheader.i.i.i9.new ], [ %i.bv, %bb.e ] ; 5 uses
  %niter39 = phi i64 [ 0, %.preheader.i.i.i9.new ], [ %niter39.next.3, %bb.e ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i10
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !21
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 -2147483648, ptr %i.bk, align 4, !tbaa !21
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !21
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 -2147483648, ptr %i.bs, align 4, !tbaa !21
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bv = add nuw i64 %.07.i.i.i10, 4             ; 2 uses
  %niter39.next.3 = add i64 %niter39, 4           ; 2 uses
  %niter39.ncmp.3 = icmp eq i64 %niter39.next.3, %unroll_iter38
  br i1 %niter39.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12.unr-lcssa, label %bb.e, !llvm.loop !3251

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12.unr-lcssa: ; preds = %bb.e
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12.unr-lcssa, %.preheader.i.i.i9
  %.07.i.i.i10.epil.init = phi i64 [ 0, %.preheader.i.i.i9 ], [ %i.bv, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12.unr-lcssa ]
  %lcmp.mod37 = icmp ne i64 %xtraiter35, 0
  call void @llvm.assume(i1 %lcmp.mod37)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.07.i.i.i10.epil = phi i64 [ %.07.i.i.i10.epil.init, %.epil.preheader ], [ %i.bz, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i10.epil
  store i32 -2147483648, ptr %i.bw, align 4, !tbaa !21
  %i.bx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.by = add i32 %i.bx, -1
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bz = add nuw i64 %.07.i.i.i10.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter35
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12, label %bb.f, !llvm.loop !16760

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12: ; preds = %bb.f, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12.unr-lcssa
  resume { ptr, i32 } %i.be

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !4627
  store ptr %i.b, ptr %6, align 8, !tbaa !4627
  store ptr %i.d, ptr %7, align 8, !tbaa !4627
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !1924
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !1924
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !1924
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cc
  %i.cj = ashr exact i64 %i.ci, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.cf, i64 noundef %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod42.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.bd, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod43 = icmp ne i64 %xtraiter40, 0
  call void @llvm.assume(i1 %lcmp.mod43)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cn, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter41 = phi i64 [ %epil.iter41.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !21
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cm = add i32 %i.cl, -1
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SL_SL_T0_RT1_:bb.a
  %10 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 2 uses
  %12 = alloca %"struct.boost::movelib::antistable.181", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !4627   ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1924
  %i.c = load ptr, ptr %0, align 8, !tbaa !4627   ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1924
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = load ptr, ptr %2, align 8, !tbaa !4627   ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1924
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = ashr exact i64 %i.l, 3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13300 ; 2 uses
  %.not = icmp ult i64 %i.o, %.sroa.speculated
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %3, align 8, !tbaa !13726, !nonnull !6505
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.c, ptr %5, align 8, !tbaa !4627
  store ptr %i.a, ptr %6, align 8, !tbaa !4627
  store ptr %i.i, ptr %7, align 8, !tbaa !4627
  store ptr %i.p, ptr %8, align 8, !tbaa !13460
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SL_SL_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !3248 ; 4 uses
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.s = load ptr, ptr %4, align 8, !tbaa !3250   ; 5 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.t = icmp ult i64 %i.r, 4
  br i1 %i.t, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %i.r, -4
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.an, %.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.07.i.i.epil = phi i64 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.x, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.07.i.i.epil
  store i32 -2147483648, ptr %i.u, align 4, !tbaa !21
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.x = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !20611

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  store i64 0, ptr %i.q, align 8, !tbaa !3248
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.an, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.3, %bb.d ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.07.i.i
  store i32 -2147483648, ptr %i.y, align 4, !tbaa !21
  %i.z = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.07.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 -2147483648, ptr %i.ac, align 4, !tbaa !21
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.07.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 -2147483648, ptr %i.ag, align 4, !tbaa !21
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.07.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 -2147483648, ptr %i.ak, align 4, !tbaa !21
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.an = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.d, !llvm.loop !3251

bb.e:                                             ; preds = %bb.a
  store ptr %i.c, ptr %9, align 8, !tbaa !4627
  store ptr %i.a, ptr %10, align 8, !tbaa !4627
  store ptr %i.i, ptr %11, align 8, !tbaa !4627
  %i.ao = load ptr, ptr %3, align 8, !tbaa !13726, !nonnull !6505
  store ptr %i.ao, ptr %12, align 8, !tbaa !13460
  %i.ap = load ptr, ptr %4, align 8, !tbaa !3250
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEES6_EEvT_SI_SI_T0_T1_NS0_9iter_sizeISI_E4typeE(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef %i.ap, i64 noundef %i.o)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit: ; preds = %.epilog-lcssa, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEES6_EEvT_SI_SI_T0_T1_NS0_9iter_sizeISI_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.181", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable.181", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !4627   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !4627   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !4627   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1924
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1924
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1924
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !21
  store i32 %i.q, ptr %4, align 4, !tbaa !21
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.not11.i = icmp eq i64 %5, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.d
  %i.r = shl i64 %5, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.r
  %bound0 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.s = add i64 %5, -1                           ; 3 uses
  %xtraiter30 = and i64 %i.s, 1
  %i.t = icmp eq i64 %5, 2
  br i1 %i.t, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter34 = and i64 %i.s, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter35 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter35.next.1, %.lr.ph.i.lver.orig ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21
  store i32 %i.w, ptr %i.u, align 4, !tbaa !21
  store i32 0, ptr %i.v, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.lver.orig = add nuw i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i.lver.orig
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21
  store i32 0, ptr %i.y, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.lver.orig.1 = add nuw i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter35.next.1 = add nuw i64 %niter35, 2       ; 2 uses
  %niter35.ncmp.1 = icmp eq i64 %niter35.next.1, %unroll_iter34
  br i1 %niter35.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !13381

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %4, align 4       ; 3 uses
  %i.aa = add i64 %5, -1                          ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.ab = icmp eq i64 %5, 2
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in712.i = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i
  store i32 %load_initial, ptr %i.ac, align 4, !tbaa !21
  store i32 0, ptr %i.ad, align 4, !tbaa !21
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i = add nuw i64 %storemerge13.i, 1  ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.ae, align 4, !tbaa !21
  store i32 0, ptr %i.af, align 4, !tbaa !21
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge.i.1 = add nuw i64 %storemerge13.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit27.unr-lcssa, label %.lr.ph.i, !llvm.loop !13381

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig.epil.init
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !21
  store i32 0, ptr %i.ah, align 4, !tbaa !21
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit.loopexit27.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit27.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit27.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit27.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.epil.init
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.aj, align 4, !tbaa !21
  store i32 0, ptr %i.ak, align 4, !tbaa !21
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit27.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit27.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  store i32 %i.am, ptr %i.p, align 8, !tbaa !21
  store i32 0, ptr %i.al, align 4, !tbaa !21
  store ptr %i.a, ptr %10, align 8, !tbaa !4627
  store ptr %i.b, ptr %11, align 8, !tbaa !4627
  store ptr %i.d, ptr %12, align 8, !tbaa !4627
  %i.an = load ptr, ptr %3, align 8, !tbaa !13726, !nonnull !6505
  store ptr %i.an, ptr %13, align 8, !tbaa !13460
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEES6_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEEvT_SI_SI_NS0_9iter_sizeISI_E4typeESL_T0_SL_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i9

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter41 = and i64 %5, 3                     ; 3 uses
  %i.ao = icmp ult i64 %5, 4
  br i1 %i.ao, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter45 = and i64 %5, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.be, %.preheader.i.i.i ] ; 5 uses
  %niter46 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter46.next.3, %.preheader.i.i.i ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !21
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !21
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 -2147483648, ptr %i.ax, align 4, !tbaa !21
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !21
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.be = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter46.next.3 = add i64 %niter46, 4           ; 2 uses
  %niter46.ncmp.3 = icmp eq i64 %niter46.next.3, %unroll_iter45
  br i1 %niter46.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !3251

.preheader.i.i.i9:                                ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %xtraiter36 = and i64 %5, 3                     ; 3 uses
  %i.bg = icmp ult i64 %5, 4
  br i1 %i.bg, label %.epil.preheader, label %.preheader.i.i.i9.new

.preheader.i.i.i9.new:                            ; preds = %.preheader.i.i.i9
  %unroll_iter39 = and i64 %5, -4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.i.i9.new
  %.07.i.i.i10 = phi i64 [ 0, %.preheader.i.i.i9.new ], [ %i.bw, %bb.e ] ; 5 uses
  %niter40 = phi i64 [ 0, %.preheader.i.i.i9.new ], [ %niter40.next.3, %bb.e ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i10
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !21
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i10
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !21
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !21
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 -2147483648, ptr %i.bt, align 4, !tbaa !21
  %i.bu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bw = add nuw i64 %.07.i.i.i10, 4             ; 2 uses
  %niter40.next.3 = add i64 %niter40, 4           ; 2 uses
  %niter40.ncmp.3 = icmp eq i64 %niter40.next.3, %unroll_iter39
  br i1 %niter40.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12.unr-lcssa, label %bb.e, !llvm.loop !3251

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12.unr-lcssa: ; preds = %bb.e
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12.unr-lcssa, %.preheader.i.i.i9
  %.07.i.i.i10.epil.init = phi i64 [ 0, %.preheader.i.i.i9 ], [ %i.bw, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12.unr-lcssa ]
  %lcmp.mod38 = icmp ne i64 %xtraiter36, 0
  call void @llvm.assume(i1 %lcmp.mod38)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.07.i.i.i10.epil = phi i64 [ %.07.i.i.i10.epil.init, %.epil.preheader ], [ %i.ca, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i10.epil
  store i32 -2147483648, ptr %i.bx, align 4, !tbaa !21
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ca = add nuw i64 %.07.i.i.i10.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter36
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12, label %bb.f, !llvm.loop !20612

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12: ; preds = %bb.f, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit12.unr-lcssa
  resume { ptr, i32 } %i.bf

bb.g:                                             ; preds = %bb.c
  %i.cb = load ptr, ptr %3, align 8, !tbaa !13726, !nonnull !6505
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !4627
  store ptr %i.b, ptr %7, align 8, !tbaa !4627
  store ptr %i.d, ptr %8, align 8, !tbaa !4627
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !1924
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !1924
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !1924
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.ce
  %i.cl = ashr exact i64 %i.ck, 3
  store ptr %i.cb, ptr %9, align 8, !tbaa !13460
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEEvT_SI_SI_NS0_9iter_sizeISI_E4typeESL_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.ch, i64 noundef %i.cl, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod43.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod43.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.be, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter41, 0
  call void @llvm.assume(i1 %lcmp.mod44)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
end_hunk_7
