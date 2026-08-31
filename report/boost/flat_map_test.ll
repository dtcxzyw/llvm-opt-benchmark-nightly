Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_test?download=true
inline.NumInlined: 38937
inline.NumDeleted: 5991
loop-unroll.NumCompletelyUnrolled: 303
loop-unroll.NumRuntimeUnrolled: 399
loop-unroll.NumUnrolled: 717
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEESC_SC_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7move_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !21, !noalias !2025
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !21, !noalias !2025
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !21, !noalias !2025
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !21, !noalias !2025
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !21, !noalias !2025
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !21, !noalias !2025
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !21, !noalias !2025
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !21, !noalias !2025
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28, !llvm.loop !1886

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
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !21, !noalias !2028
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !274, !noalias !2028
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !21, !noalias !2028
  %i.dh = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !276, !noalias !2028
  %i.di = load i32, ptr %i.db, align 4, !tbaa !21, !noalias !2028
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !274, !noalias !2028
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21, !noalias !2028
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !276, !noalias !2028
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !1890

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !21, !noalias !2031
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !274, !noalias !2031
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !21, !noalias !2031
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !276, !noalias !2031
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !1896

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.dn, %.lr.ph.i.i ], [ %i.cp, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1721
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !1562
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !1562
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !1562
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre182 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit ], [ %i.c, %bb.z ], [ %.pre182, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !1721
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !1840
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2036

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, %bb.a
  %i.eh = load ptr, ptr %6, align 8, !tbaa !1721
  store ptr %i.eh, ptr %0, align 8, !tbaa !1721
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1594 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1599
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.j, align 8, !tbaa !1599
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %3, align 8, !tbaa !1598   ; 5 uses
  %i.m = icmp eq ptr %0, %1
  %i.n = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.m, %i.n
  br i1 %or.cond.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %0, align 4                ; 4 uses
  store i64 %i.o, ptr %i.l, align 4
  %.not8.i.i = icmp eq i64 %i.i, 1
  %i.p = trunc i64 %i.o to i32
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.q = add i64 %i.i, -1                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.q, -4                       ; 4 uses
  %i.r = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.t, align 4
  store <2 x i64> %broadcast.splat, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !2037

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i.preheader22

.lr.ph.i.i.preheader22:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.8.0.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader22, %.lr.ph.i.i
  %.sroa.8.0.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %.sroa.8.0.i.ph, %.lr.ph.i.i.preheader22 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.8.0.i
  store i64 %i.o, ptr %i.w, align 4
  %storemerge.i.i = add i64 %.sroa.8.0.i, 1       ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i, !llvm.loop !2038

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %storemerge.in.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %.sroa.8.0.i, %.lr.ph.i.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %storemerge.in.lcssa.i.i
  store i32 %i.p, ptr %0, align 4, !tbaa !274
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !276
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.l, i64 noundef %i.i)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %bb.f, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, %bb.c, %.preheader.preheader.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %.tr90103 = phi i64 [ %4, %.lr.ph ], [ %i.au, %tailrecurse ] ; 5 uses
  %.tr89102 = phi i64 [ %3, %.lr.ph ], [ %i.as, %tailrecurse ] ; 5 uses
  %.tr87101 = phi ptr [ %1, %.lr.ph ], [ %.071, %tailrecurse ] ; 13 uses
  %.tr100 = phi ptr [ %0, %.lr.ph ], [ %i.at, %tailrecurse ] ; 11 uses
  %.not = icmp ugt i64 %.tr89102, %6
  %.not76 = icmp ugt i64 %.tr90103, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_10range_xbufIS4_mNS0_7move_opEEEEEvT_SG_SG_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_10range_xbufIS4_mNS0_7move_opEEEEEvT_SG_SG_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !2039
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !2041
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !2042
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS4_mSD_EEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !21 ; 2 uses
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !21 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %.tr100, align 4, !tbaa !21
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = load i32, ptr %i.m, align 4, !tbaa !21
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  store i32 %i.n, ptr %i.m, align 4, !tbaa !21
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %i.g, 16
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_T0_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.q = icmp ugt i64 %.tr89102, %.tr90103
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = lshr i64 %.tr89102, 1                    ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.tr100, i64 %i.r ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr87101
  %.pre = ptrtoint ptr %.tr87101 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.t = sub i64 %i.c, %.pre
  %i.u = ashr exact i64 %i.t, 3
  %i.v = load i32, ptr %i.s, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.w = lshr i64 %.017.i, 1                      ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  %i.z = icmp slt i32 %i.y, %i.v                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.neg.i = xor i64 %i.w, -1
  %i.ab = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.z, ptr %i.aa, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.z, i64 %i.ab, i64 %i.w     ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !1600

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.tr87101, %bb.i ]
  %i.ac = sub i64 %.pre-phi113, %.pre
  %i.ad = ashr exact i64 %i.ac, 3
  br label %tailrecurse

bb.k:                                             ; preds = %bb.h
  %i.ae = lshr i64 %.tr90103, 1                   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.tr87101, i64 %i.ae ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr87101, %.tr100
  %.pre110 = ptrtoint ptr %.tr100 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ag = ptrtoint ptr %.tr87101 to i64
  %i.ah = sub i64 %i.ag, %.pre110
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.ai, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr100, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.ak = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.01316.i81, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  %i.an = icmp slt i32 %i.aj, %i.am               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.neg.i82 = xor i64 %i.ak, -1
  %i.ap = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.an, ptr %.01316.i81, ptr %i.ao ; 3 uses
  %.1.i84 = select i1 %i.an, i64 %i.ak, i64 %i.ap ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !1620

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %bb.l
  %.pre114 = ptrtoint ptr %.114.i83 to i64
  br label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.k, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit
  %.pre-phi115 = phi i64 [ %.pre114, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.pre110, %bb.k ]
  %.013.lcssa.i86 = phi ptr [ %.114.i83, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.tr100, %bb.k ]
  %i.aq = sub i64 %.pre-phi115, %.pre110
  %i.ar = ashr exact i64 %i.aq, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ], [ %i.af, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %.070 = phi i64 [ %i.r, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ], [ %i.ar, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %.069 = phi i64 [ %i.ad, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ], [ %i.ae, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi ptr [ %i.s, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ], [ %.013.lcssa.i86, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %i.as = sub i64 %.tr89102, %.070                ; 3 uses
  %i.at = tail call noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairIiiES4_EET_S5_S5_S5_NS0_9iter_sizeIS5_E4typeES8_T0_S8_(ptr noundef %.0, ptr noundef %.tr87101, ptr noundef %.071, i64 noundef %i.as, i64 noundef %.069, ptr noundef %5, i64 noundef %6) ; 2 uses
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef %.tr100, ptr noundef %.0, ptr noundef %i.at, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6)
  %i.au = sub i64 %.tr90103, %.069                ; 2 uses
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = icmp ne i64 %i.as, 0
  %or.cond = and i1 %i.aw, %i.av
  br i1 %or.cond, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZN5boost7movelib14buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_10range_xbufIS4_mNS0_7move_opEEEEEvT_SG_SG_T0_RT1_.exit, %bb.g, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairIiiES4_EET_S5_S5_S5_NS0_9iter_sizeIS5_E4typeES8_T0_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %5 to i64                  ; 4 uses
  %i.c = ptrtoaddr ptr %1 to i64                  ; 6 uses
  %i.d = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.e = icmp ule i64 %3, %4
  %.not = icmp ugt i64 %4, %6
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEESC_SC_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
  %.not.i = icmp eq ptr %i.de, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28, !llvm.loop !1886

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
  %i.dq = load i64, ptr %i.dp, align 4, !noalias !3007
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !21, !noalias !3007
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !274, !noalias !3007
  %i.ds = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !21, !noalias !3007
  %i.du = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !276, !noalias !3007
  %i.dv = load i32, ptr %i.dn, align 4, !tbaa !21, !noalias !3007
  store i32 %i.dv, ptr %i.do, align 4, !tbaa !274, !noalias !3007
  %i.dw = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !21, !noalias !3007
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !276, !noalias !3007
  store i64 %i.dq, ptr %i.dn, align 4, !noalias !3007
  %.not.i30 = icmp eq ptr %i.dn, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !1962

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.sroa.065.0, %bb.w ] ; 2 uses
  %i.dy = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.db, %bb.w ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !21, !noalias !3010
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !21, !noalias !3010
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !21, !noalias !3010
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !21, !noalias !3010
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !21, !noalias !3010
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !21, !noalias !3010
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !21, !noalias !3010
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !21, !noalias !3010
  %.not.i.i31 = icmp eq ptr %i.dz, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !1886

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ea, %.lr.ph.i.i ], [ %i.db, %bb.t ], [ %i.df, %.lr.ph.i28 ], [ %.sroa.065.0, %bb.v ], [ %.sroa.065.0, %bb.w ], [ %i.dp, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1721
  %i.eh = load ptr, ptr %1, align 8, !tbaa !1840  ; 6 uses
  %.neg99 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %.neg99 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.070.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit
  %.not9.i = icmp eq i64 %.neg99, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -8 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 2 uses
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !1562
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !1562
  store i64 %i.em, ptr %i.ej, align 8, !tbaa !1562
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.en = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.eo = icmp eq ptr %i.ei, %i.en
  br i1 %i.eo, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = icmp eq ptr %i.en, %i.eh
  br i1 %i.ep, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eh, %bb.y ], [ %i.ei, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre184 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  %i.eq = phi ptr [ %i.eh, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit ], [ %i.eh, %bb.z ], [ %.pre184, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !1721
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8 ; 2 uses
  store ptr %i.er, ptr %1, align 8, !tbaa !1840
  %i.es = icmp ne i64 %.0141, 0
  %.neg = sext i1 %i.es to i64
  %i.et = add i64 %.0141, %.neg
  %i.eu = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.eu to i64
  %i.ev = add i64 %.sroa.speculated, %.neg24
  %i.ew = add i64 %.096140, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ew, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3015

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, %bb.a
  %i.ex = load ptr, ptr %6, align 8, !tbaa !1721
  store ptr %i.ex, ptr %0, align 8, !tbaa !1721
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SI_SI_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %6 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1594 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  %i.j = load ptr, ptr %3, align 8, !tbaa !3016, !nonnull !400 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.j, ptr %7, align 8, !tbaa !1694
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1599
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.k, align 8, !tbaa !1599
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !1598   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.n = icmp eq ptr %0, %1
  %i.o = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %0, align 4                ; 4 uses
  store i64 %i.p, ptr %i.m, align 4
  %.not8.i.i = icmp eq i64 %i.i, 1
  %i.q = trunc i64 %i.p to i32
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.r = add i64 %i.i, -1                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.r, -4                       ; 4 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.u, align 4
  store <2 x i64> %broadcast.splat, ptr %i.v, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !3018

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i.preheader24

.lr.ph.i.i.preheader24:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.8.0.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader24, %.lr.ph.i.i
  %.sroa.8.0.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %.sroa.8.0.i.ph, %.lr.ph.i.i.preheader24 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.8.0.i
  store i64 %i.p, ptr %i.x, align 4
  %storemerge.i.i = add i64 %.sroa.8.0.i, 1       ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i, !llvm.loop !3019

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %storemerge.in.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %.sroa.8.0.i, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %storemerge.in.lcssa.i.i
  store i32 %i.q, ptr %0, align 4, !tbaa !274
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !276
  store ptr %i.j, ptr %6, align 8, !tbaa !1694
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.m, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.j, ptr %5, align 8, !tbaa !1694
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull align 8 dead_on_return %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit

_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit: ; preds = %bb.c, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %bb.b, %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !21     ; 2 uses
  %.not86 = icmp slt i32 %i.b, %i.c
  br i1 %.not86, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 13 uses
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
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !3020

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i140.le = ptrtoaddr ptr %.114.i to i64    ; 6 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1599 ; 3 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre107 = load ptr, ptr %4, align 8, !tbaa !1598 ; 10 uses
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.t = add i64 %i.d, -8
  %i.u = sub i64 %i.t, %.114.i140.le              ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 88
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader324, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.pre107, i64 8
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %.114.i140.le
  %i.z = and i64 %i.y, -8                         ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep, i64 %i.z
  %scevgep142 = getelementptr i8, ptr %.114.i, i64 8
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.z
  %bound0 = icmp ult ptr %.pre107, %scevgep143
  %bound1 = icmp ult ptr %.114.i, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader324, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.pre107, i64 %i.aa
  %i.ac = getelementptr i8, ptr %.114.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre107, i64 %i.ad
  %next.gep144 = getelementptr i8, ptr %.pre107, i64 %i.ae
  %next.gep145 = getelementptr i8, ptr %.114.i, i64 %i.ad
  %next.gep146 = getelementptr i8, ptr %.114.i, i64 %i.ae
  %wide.vec = load <4 x i32>, ptr %next.gep145, align 4, !tbaa !21, !alias.scope !3021
  %wide.vec148 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !21, !alias.scope !3021
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !3024, !noalias !3021
  store <4 x i32> %wide.vec148, ptr %next.gep144, align 4, !tbaa !21, !alias.scope !3024, !noalias !3021
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !3026

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader324

.lr.ph.i.i.preheader324:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.pre107, %vector.memcheck ], [ %.pre107, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader324, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader324 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader324 ] ; 3 uses
  %i.ag = load i32, ptr %.079.i.i, align 4, !tbaa !21
  store i32 %i.ag, ptr %.010.i.i, align 4, !tbaa !274
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !276
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !3027

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.s, 3                     ; 6 uses
  %i.am = getelementptr i8, ptr %.114.i, i64 %.idx26.i ; 6 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !1598  ; 9 uses
  %.not8.i17.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.f
  %i.ao = add i64 %.idx26.i, -8                   ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check159 = icmp ult i64 %i.ao, 40
  br i1 %min.iters.check159, label %.lr.ph.i18.i.preheader322, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph.i18.i.preheader
  %scevgep154 = getelementptr i8, ptr %i.an, i64 %.idx26.i
  %bound0155 = icmp ult ptr %i.an, %i.am
  %bound1156 = icmp ult ptr %.114.i, %scevgep154
  %found.conflict157 = and i1 %bound0155, %bound1156
  br i1 %found.conflict157, label %.lr.ph.i18.i.preheader322, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck153
  %n.vec161 = and i64 %i.aq, 4611686018427387900  ; 3 uses
  %i.ar = shl i64 %n.vec161, 3                    ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %.114.i, i64 %i.ar
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next176, %vector.body162 ] ; 2 uses
  %i.au = shl i64 %index163, 3                    ; 3 uses
  %i.av = or disjoint i64 %i.au, 16               ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.an, i64 %i.au
  %next.gep165 = getelementptr i8, ptr %i.an, i64 %i.av
  %next.gep166 = getelementptr i8, ptr %.114.i, i64 %i.au
  %next.gep167 = getelementptr i8, ptr %.114.i, i64 %i.av
  %wide.vec168 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !21, !alias.scope !3028
  %wide.vec171 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !21, !alias.scope !3028
  store <4 x i32> %wide.vec168, ptr %next.gep164, align 4, !tbaa !21, !alias.scope !3031, !noalias !3028
  store <4 x i32> %wide.vec171, ptr %next.gep165, align 4, !tbaa !21, !alias.scope !3031, !noalias !3028
  %index.next176 = add nuw i64 %index163, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next176, %n.vec161
  br i1 %i.aw, label %middle.block177, label %vector.body162, !llvm.loop !3033

middle.block177:                                  ; preds = %vector.body162
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEENS3_ISD_EESF_NS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSH_9select1stIiEEEEEENS0_7move_opEEET3_T_SR_T0_T1_RT2_SU_SQ_NS0_9iter_sizeIST_E4typeESY_SY_SY_T4_bT5_:bb.a
bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEENS3_INS_9container12vec_iteratorIS6_Lb0EEEEESB_NS0_7inverseINS8_3dtl23flat_tree_value_compareISt4lessIiES5_NSD_9select1stIiEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !21, !noalias !6896
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !21, !noalias !6896
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !21, !noalias !6896
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !21, !noalias !6896
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !21, !noalias !6896
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !21, !noalias !6896
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !21, !noalias !6896
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !21, !noalias !6896
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28, !llvm.loop !6620

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
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !21, !noalias !6899
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !274, !noalias !6899
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !21, !noalias !6899
  %i.dh = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !276, !noalias !6899
  %i.di = load i32, ptr %i.db, align 4, !tbaa !21, !noalias !6899
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !274, !noalias !6899
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21, !noalias !6899
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !276, !noalias !6899
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29, !llvm.loop !6624

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !21, !noalias !6902
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !274, !noalias !6902
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !21, !noalias !6902
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !276, !noalias !6902
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !6630

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.w, %bb.v, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ], [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ], [ %.sroa.064.0, %bb.v ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !391
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !1562
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !1562
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !1562
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre182 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit ], [ %i.c, %bb.z ], [ %.pre182, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !391
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !1840
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6907

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6908)
  %i.eh = load ptr, ptr %6, align 8, !tbaa !44, !noalias !6908
  store ptr %i.eh, ptr %0, align 8, !tbaa !391, !alias.scope !6908
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEES6_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !391    ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !391    ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !391    ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.j, %i.f
  %i.l = ashr exact i64 %i.k, 3
  %i.m = load i64, ptr %i.a, align 4              ; 4 uses
  store i64 %i.m, ptr %3, align 4
  %.not8.i = icmp eq i64 %4, 1
  %i.n = trunc i64 %i.m to i32
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.o = add i64 %4, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.o, -4                       ; 4 uses
  %i.p = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.r, align 4
  store <2 x i64> %broadcast.splat, ptr %i.s, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !6911

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader19

.lr.ph.i.preheader19:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.8.0.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader19, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %.sroa.8.0.ph, %.lr.ph.i.preheader19 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.8.0
  store i64 %i.m, ptr %i.u, align 4
  %storemerge.i = add i64 %.sroa.8.0, 1           ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %4
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !6912

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i
  store i32 %i.n, ptr %i.a, align 4, !tbaa !274
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !276
  %i.z = load ptr, ptr %0, align 8, !tbaa !44
  store ptr %i.z, ptr %8, align 8, !tbaa !391
  %i.aa = load ptr, ptr %1, align 8, !tbaa !44
  store ptr %i.aa, ptr %9, align 8, !tbaa !391
  %i.ab = load ptr, ptr %2, align 8, !tbaa !44
  store ptr %i.ab, ptr %10, align 8, !tbaa !391
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.i, i64 noundef %i.l, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !391
  store ptr %i.b, ptr %6, align 8, !tbaa !391
  store ptr %i.d, ptr %7, align 8, !tbaa !391
  %i.ac = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.a to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = ptrtoint ptr %i.d to i64
  %i.ah = sub i64 %i.ag, %i.ac
  %i.ai = ashr exact i64 %i.ah, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.af, i64 noundef %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !2039
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !2041
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !2042
  %i.f = load ptr, ptr %0, align 8, !tbaa !44
  %i.g = load ptr, ptr %1, align 8, !tbaa !44
  %i.h = load ptr, ptr %2, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !391
  store ptr %i.g, ptr %8, align 8, !tbaa !391
  store ptr %i.h, ptr %9, align 8, !tbaa !391
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !44     ; 9 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !391    ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21   ; 2 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !21   ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  store i32 %i.m, ptr %i.k, align 4, !tbaa !21
  store i32 %i.n, ptr %i.l, align 4, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !21
  %i.s = load i32, ptr %i.q, align 4, !tbaa !21
  store i32 %i.s, ptr %i.p, align 4, !tbaa !21
  store i32 %i.r, ptr %i.q, align 4, !tbaa !21
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %i.i, 16
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !391
  %i.u = load ptr, ptr %1, align 8, !tbaa !44
  store ptr %i.u, ptr %12, align 8, !tbaa !391
  %i.v = load ptr, ptr %2, align 8, !tbaa !44
  store ptr %i.v, ptr %13, align 8, !tbaa !391
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %1, align 8, !tbaa !44     ; 8 uses
  %i.x = icmp ugt i64 %3, %4
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = lshr i64 %3, 1                           ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %.not9.i = icmp eq ptr %i.aa, %i.w
  %.pre = ptrtoint ptr %i.w to i64                ; 3 uses
  br i1 %.not9.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %.pre
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !21, !noalias !6913
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %i.af = phi ptr [ %i.w, %.lr.ph.i ], [ %i.am, %bb.k ] ; 2 uses
  %.010.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 2 uses
  %i.ag = lshr i64 %.010.i, 1                     ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21, !noalias !6913
  %i.aj = icmp slt i32 %i.ai, %i.ae               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.neg.i = xor i64 %i.ag, -1
  %i.al = add i64 %.010.i, %.neg.i
  %i.am = select i1 %i.aj, ptr %i.ak, ptr %i.af   ; 3 uses
  %.1.i = select i1 %i.aj, i64 %i.al, i64 %i.ag   ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.k, !llvm.loop !6202

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.k
  %.pre71 = ptrtoint ptr %i.am to i64
  br label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.j, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi72 = phi i64 [ %.pre71, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.j ]
  %i.an = phi ptr [ %i.am, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %i.w, %bb.j ]
  %i.ao = sub i64 %.pre-phi72, %.pre
  %i.ap = ashr exact i64 %i.ao, 3
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.aq = lshr i64 %4, 1                          ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aq ; 2 uses
  %.not9.i43 = icmp eq ptr %i.w, %i.k
  %.pre69 = ptrtoint ptr %i.k to i64              ; 3 uses
  br i1 %.not9.i43, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %bb.l
  %i.as = ptrtoint ptr %i.w to i64
  %i.at = sub i64 %i.as, %.pre69
  %i.au = ashr exact i64 %i.at, 3
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !21, !noalias !6916
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i44
  %i.aw = phi ptr [ %i.k, %.lr.ph.i44 ], [ %i.bd, %bb.m ] ; 2 uses
  %.010.i45 = phi i64 [ %i.au, %.lr.ph.i44 ], [ %.1.i47, %bb.m ] ; 2 uses
  %i.ax = lshr i64 %.010.i45, 1                   ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test11movable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7move_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !13733, !noalias !400
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split ] ; 6 uses
  %.sroa.069.0 = phi ptr [ %i.ac, %bb.f ], [ %i.ac, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split ] ; 4 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !13733
  %i.cp = load ptr, ptr %3, align 8, !tbaa !13733 ; 6 uses
  %i.cq = icmp eq ptr %i.cp, %.sroa.064.0
  br i1 %i.cq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !830, !noalias !13975
  store i32 0, ptr %i.cs, align 4, !tbaa !830, !noalias !13975
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !830, !noalias !13975
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !830, !noalias !13975
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !830, !noalias !13975
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !830, !noalias !13975
  store i32 0, ptr %i.cw, align 4, !tbaa !830, !noalias !13975
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !830, !noalias !13975
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !830, !noalias !13975
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !830, !noalias !13975
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28, !llvm.loop !13860

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !830, !noalias !13978
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !830, !noalias !13978
  store i32 0, ptr %i.dc, align 4, !tbaa !830, !noalias !13978
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !830, !noalias !13978
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !830, !noalias !13978
  store i32 0, ptr %i.df, align 4, !tbaa !830, !noalias !13978
  %i.di = load i32, ptr %i.db, align 4, !tbaa !830, !noalias !13978
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !830, !noalias !13978
  store i32 0, ptr %i.db, align 4, !tbaa !830, !noalias !13978
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !830, !noalias !13978
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !830, !noalias !13978
  store i32 0, ptr %i.dj, align 4, !tbaa !830, !noalias !13978
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29, !llvm.loop !13864

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !830, !noalias !13981
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !830, !noalias !13981
  store i32 0, ptr %i.dm, align 4, !tbaa !830, !noalias !13981
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !830, !noalias !13981
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !830, !noalias !13981
  store i32 0, ptr %i.dp, align 4, !tbaa !830, !noalias !13981
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !13870

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.dn, %.lr.ph.i.i ], [ %i.cp, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !13733
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !1562
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !1562
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !1562
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.c, %bb.z ], [ %.pre187, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !13733
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !1840
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13986

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.eh = load ptr, ptr %6, align 8, !tbaa !13733
  store ptr %i.eh, ptr %0, align 8, !tbaa !13733
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test11movable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEES7_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !830
  store i32 %i.c, ptr %3, align 4, !tbaa !830
  store i32 0, ptr %0, align 4, !tbaa !830
  %i.d = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !830
  store i32 %i.g, ptr %i.e, align 4, !tbaa !830
  store i32 0, ptr %i.f, align 4, !tbaa !830
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !830
  store i32 %i.l, ptr %i.j, align 4, !tbaa !830
  store i32 0, ptr %i.k, align 4, !tbaa !830
  %i.m = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !830
  store i32 %i.p, ptr %i.n, align 4, !tbaa !830
  store i32 0, ptr %i.o, align 4, !tbaa !830
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !830
  store i32 %i.s, ptr %i.q, align 4, !tbaa !830
  store i32 0, ptr %i.r, align 4, !tbaa !830
  %i.t = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !830
  store i32 %i.w, ptr %i.u, align 4, !tbaa !830
  store i32 0, ptr %i.v, align 4, !tbaa !830
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %i.z = load i32, ptr %i.y, align 4, !tbaa !830
  store i32 %i.z, ptr %i.x, align 4, !tbaa !830
  store i32 0, ptr %i.y, align 4, !tbaa !830
  %i.aa = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !830
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !830
  store i32 0, ptr %i.ac, align 4, !tbaa !830
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !830
  store i32 %i.af, ptr %0, align 4, !tbaa !830
  store i32 0, ptr %i.ae, align 4, !tbaa !830
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !830
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !830
  store i32 0, ptr %i.ag, align 4, !tbaa !830
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test11movable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.ap = trunc i64 %4 to i32
  %i.aq = shl i32 %i.ap, 1
  %i.ar = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i, %i.aq
  store i32 %i.ar, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.at = trunc i64 %4 to i32
  %i.au = shl i32 %i.at, 1
  %i.av = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i28, %i.au
  store i32 %i.av, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.as

bb.d:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ax = ptrtoint ptr %0 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = ptrtoint ptr %2 to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = ashr exact i64 %i.bb, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test11movable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.az, i64 noundef %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test11movable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::movelib::range_xbuf.265", align 8 ; 6 uses
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
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test11movable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test11movable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !13987
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !13989
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !13990
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test11movable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_10range_xbufIS7_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !830
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !830 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.tr100, align 4, !tbaa !830
  %i.l = load i32, ptr %.tr87101, align 4, !tbaa !830
  store i32 %i.l, ptr %.tr100, align 4, !tbaa !830
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !830
  %i.m = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !830
  store i32 0, ptr %i.m, align 4, !tbaa !830
  %i.p = load i32, ptr %i.n, align 4, !tbaa !830
  store i32 %i.p, ptr %i.m, align 4, !tbaa !830
  store i32 %i.o, ptr %i.n, align 4, !tbaa !830
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.g, 16
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test11movable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %.tr89102, %.tr90103
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %.tr89102, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.tr100, i64 %i.s ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr87101
  %.pre = ptrtoint ptr %.tr87101 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = sub i64 %i.c, %.pre
  %i.v = ashr exact i64 %i.u, 3
  %i.w = load i32, ptr %i.t, align 4, !tbaa !830
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.x = lshr i64 %.017.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !830
  %i.aa = icmp slt i32 %i.z, %i.w                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.neg.i = xor i64 %i.x, -1
  %i.ac = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.aa, ptr %i.ab, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ac, i64 %i.x    ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !13627

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr87101, %bb.i ]
  %i.ad = sub i64 %.pre-phi113, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  br label %tailrecurse

bb.k:                                             ; preds = %bb.h
  %i.af = lshr i64 %.tr90103, 1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.tr87101, i64 %i.af ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr87101, %.tr100
  %.pre110 = ptrtoint ptr %.tr100 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ah = ptrtoint ptr %.tr87101 to i64
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test11movable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %.not1.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ] ; 2 uses
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i25 ], [ %i.by, %.thread83 ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 4 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !830, !noalias !14869
  store i32 0, ptr %i.ca, align 4, !tbaa !830, !noalias !14869
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !830, !noalias !14869
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !830, !noalias !14869
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !830, !noalias !14869
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !830, !noalias !14869
  store i32 0, ptr %i.ce, align 4, !tbaa !830, !noalias !14869
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !830, !noalias !14869
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !830, !noalias !14869
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !830, !noalias !14869
  %.not.i = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25, !llvm.loop !13860

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bw, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26

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
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !830, !noalias !14872
  store i32 0, ptr %i.cl, align 4, !tbaa !830, !noalias !14872
  %i.cq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !14872
  store i32 0, ptr %i.cm, align 4, !tbaa !830, !noalias !14872
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !14872
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !830, !noalias !14872
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !830, !noalias !14872
  store i32 0, ptr %i.ck, align 4, !tbaa !830, !noalias !14872
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !830, !noalias !14872
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !830, !noalias !14872
  store i32 0, ptr %i.cn, align 4, !tbaa !830, !noalias !14872
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !830, !noalias !14872
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !830, !noalias !14872
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !830, !noalias !14872
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !830, !noalias !14872
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !830, !noalias !14872
  %i.cw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !14872
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !14872
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !13932

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !830, !noalias !14875
  store i32 0, ptr %i.cz, align 4, !tbaa !830, !noalias !14875
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !830, !noalias !14875
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !830, !noalias !14875
  store i32 %i.db, ptr %i.da, align 4, !tbaa !830, !noalias !14875
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !830, !noalias !14875
  store i32 0, ptr %i.dd, align 4, !tbaa !830, !noalias !14875
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !830, !noalias !14875
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !830, !noalias !14875
  store i32 %i.df, ptr %i.de, align 4, !tbaa !830, !noalias !14875
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !13860

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread84 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !13733
  %i.di = load ptr, ptr %1, align 8, !tbaa !1840  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -8 ; 2 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !1562
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !1562
  store i64 %i.dn, ptr %i.dk, align 8, !tbaa !1562
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !1562
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.do = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dp = icmp eq ptr %i.dj, %i.do
  br i1 %i.dp, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = icmp eq ptr %i.do, %i.di
  br i1 %i.dq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dj, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre117 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  %i.dr = phi ptr [ %i.di, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.di, %bb.o ], [ %.pre117, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !13733
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 2 uses
  store ptr %i.ds, ptr %1, align 8, !tbaa !1840
  %i.dt = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dt to i64
  %i.du = add i64 %.0100, %.neg
  %i.dv = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dv to i64
  %i.dw = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dx = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dx, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14880

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dy = load ptr, ptr %6, align 8, !tbaa !13733
  store ptr %i.dy, ptr %0, align 8, !tbaa !13733
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test11movable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEES7_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.263", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.263", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !830
  store i32 %i.c, ptr %4, align 4, !tbaa !830
  store i32 0, ptr %0, align 4, !tbaa !830
  %i.d = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !830
  store i32 %i.g, ptr %i.e, align 4, !tbaa !830
  store i32 0, ptr %i.f, align 4, !tbaa !830
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !830
  store i32 %i.l, ptr %i.j, align 4, !tbaa !830
  store i32 0, ptr %i.k, align 4, !tbaa !830
  %i.m = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !830
  store i32 %i.p, ptr %i.n, align 4, !tbaa !830
  store i32 0, ptr %i.o, align 4, !tbaa !830
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !830
  store i32 %i.s, ptr %i.q, align 4, !tbaa !830
  store i32 0, ptr %i.r, align 4, !tbaa !830
  %i.t = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !830
  store i32 %i.w, ptr %i.u, align 4, !tbaa !830
  store i32 0, ptr %i.v, align 4, !tbaa !830
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %i.z = load i32, ptr %i.y, align 4, !tbaa !830
  store i32 %i.z, ptr %i.x, align 4, !tbaa !830
  store i32 0, ptr %i.y, align 4, !tbaa !830
  %i.aa = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !830
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !830
  store i32 0, ptr %i.ac, align 4, !tbaa !830
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !830
  store i32 %i.af, ptr %0, align 4, !tbaa !830
  store i32 0, ptr %i.ae, align 4, !tbaa !830
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !830
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !830
  store i32 0, ptr %i.ag, align 4, !tbaa !830
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = load ptr, ptr %3, align 8, !tbaa !13884, !nonnull !400
  store ptr %i.ap, ptr %7, align 8, !tbaa !13706
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test11movable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.aq = trunc i64 %5 to i32
  %i.ar = shl i32 %i.aq, 1
  %i.as = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i, %i.ar
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.au = trunc i64 %5 to i32
  %i.av = shl i32 %i.au, 1
  %i.aw = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i28, %i.av
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.at

bb.d:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %3, align 8, !tbaa !13884, !nonnull !400
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ay = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = ashr exact i64 %i.bd, 3
  store ptr %i.ax, ptr %6, align 8, !tbaa !13706
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test11movable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bb, i64 noundef %i.be, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test11movable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEENS0_7move_opENS0_13adaptive_xbufIS6_S7_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test11movable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !830  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !830    ; 2 uses
  %.not89 = icmp slt i32 %i.b, %i.c
  br i1 %.not89, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test11movable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !830
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 21 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !14881

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i147.le = ptrtoaddr ptr %.114.i to i64    ; 4 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13462 ; 5 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test11movable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !13460  ; 7 uses
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
  %wide.vec = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !830, !alias.scope !14882
  %wide.vec155 = load <4 x i32>, ptr %next.gep153, align 4, !tbaa !830, !alias.scope !14882
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !830, !alias.scope !14885, !noalias !14882
  store <4 x i32> %wide.vec155, ptr %next.gep151, align 4, !tbaa !830, !alias.scope !14885, !noalias !14882
  store <4 x i32> zeroinitializer, ptr %next.gep152, align 4, !tbaa !830, !alias.scope !14882
  store <4 x i32> zeroinitializer, ptr %next.gep153, align 4, !tbaa !830, !alias.scope !14882
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !14887

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader.i ], [ %i.ac, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container12vec_iteratorIPSt4pairINS9_4test11movable_intESD_ELb0EEEEENS3_ISF_EESH_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSJ_9select1stISD_EEEEEENS0_7move_opEEET3_T_ST_T0_T1_RT2_SW_SS_NS0_9iter_sizeISV_E4typeES10_S10_S10_T4_bT5_:bb.a
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !830, !noalias !16226
  store i32 0, ptr %i.cs, align 4, !tbaa !830, !noalias !16226
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !830, !noalias !16226
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !830, !noalias !16226
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !830, !noalias !16226
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !830, !noalias !16226
  store i32 0, ptr %i.cw, align 4, !tbaa !830, !noalias !16226
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !830, !noalias !16226
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !830, !noalias !16226
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !830, !noalias !16226
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i28, !llvm.loop !15935

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEENS3_INS5_12vec_iteratorIS9_Lb0EEEEESD_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSF_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SP_RT0_SR_SS_SO_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !830, !noalias !16229
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !830, !noalias !16229
  store i32 0, ptr %i.dc, align 4, !tbaa !830, !noalias !16229
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !830, !noalias !16229
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !830, !noalias !16229
  store i32 0, ptr %i.df, align 4, !tbaa !830, !noalias !16229
  %i.di = load i32, ptr %i.db, align 4, !tbaa !830, !noalias !16229
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !830, !noalias !16229
  store i32 0, ptr %i.db, align 4, !tbaa !830, !noalias !16229
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !830, !noalias !16229
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !830, !noalias !16229
  store i32 0, ptr %i.dj, align 4, !tbaa !830, !noalias !16229
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i29, !llvm.loop !15939

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !830, !noalias !16232
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !830, !noalias !16232
  store i32 0, ptr %i.dm, align 4, !tbaa !830, !noalias !16232
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !830, !noalias !16232
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !830, !noalias !16232
  store i32 0, ptr %i.dp, align 4, !tbaa !830, !noalias !16232
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !15945

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.w, %bb.v, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ], [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ], [ %.sroa.064.0, %bb.v ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !12454
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test11movable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !1562
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !1562
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !1562
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test11movable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test11movable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test11movable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test11movable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit ], [ %i.c, %bb.z ], [ %.pre187, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !12454
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !1840
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16237

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test11movable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16238)
  %i.eh = load ptr, ptr %6, align 8, !tbaa !12255, !noalias !16238
  store ptr %i.eh, ptr %0, align 8, !tbaa !12454, !alias.scope !16238
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !12454  ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !12454  ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !12454  ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.j, %i.f
  %i.l = ashr exact i64 %i.k, 3
  %i.m = load i32, ptr %i.a, align 4, !tbaa !830
  store i32 %i.m, ptr %3, align 4, !tbaa !830
  store i32 0, ptr %i.a, align 4, !tbaa !830
  %i.n = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !830
  store i32 %i.q, ptr %i.o, align 4, !tbaa !830
  store i32 0, ptr %i.p, align 4, !tbaa !830
  %storemerge911.i = add i32 %i.n, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.r = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = icmp eq i64 %4, 2
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.r, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !830
  store i32 %i.v, ptr %i.t, align 4, !tbaa !830
  store i32 0, ptr %i.u, align 4, !tbaa !830
  %i.w = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !830
  store i32 %i.z, ptr %i.x, align 4, !tbaa !830
  store i32 0, ptr %i.y, align 4, !tbaa !830
  %storemerge9.i = add i32 %i.w, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !830
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !830
  store i32 0, ptr %i.ab, align 4, !tbaa !830
  %i.ad = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !830
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !830
  store i32 0, ptr %i.af, align 4, !tbaa !830
  %storemerge9.i.1 = add i32 %i.ad, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !830
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !830
  store i32 0, ptr %i.ai, align 4, !tbaa !830
  %i.ak = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !830
  store i32 %i.an, ptr %i.al, align 4, !tbaa !830
  store i32 0, ptr %i.am, align 4, !tbaa !830
  %storemerge9.i.epil = add i32 %i.ak, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !830
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !830
  store i32 0, ptr %i.ao, align 4, !tbaa !830
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !830
  store i32 %i.ar, ptr %i.p, align 4, !tbaa !830
  store i32 0, ptr %i.aq, align 4, !tbaa !830
  store ptr %i.a, ptr %8, align 8, !tbaa !12454
  store ptr %i.b, ptr %9, align 8, !tbaa !12454
  store ptr %i.d, ptr %10, align 8, !tbaa !12454
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.i, i64 noundef %i.l, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit11

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.as = trunc i64 %4 to i32
  %i.at = shl i32 %i.as, 1
  %i.au = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i, %i.at
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %bb.f

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit11: ; preds = %.loopexit
  %i.av = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i10 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.aw = trunc i64 %4 to i32
  %i.ax = shl i32 %i.aw, 1
  %i.ay = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i10, %i.ax
  store i32 %i.ay, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.av

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !12454
  store ptr %i.b, ptr %6, align 8, !tbaa !12454
  store ptr %i.d, ptr %7, align 8, !tbaa !12454
  %i.az = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.ba = ptrtoint ptr %i.a to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = ptrtoint ptr %i.d to i64
  %i.be = sub i64 %i.bd, %i.az
  %i.bf = ashr exact i64 %i.be, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bc, i64 noundef %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf.265", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !13987
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !13989
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !13990
  %i.f = load ptr, ptr %0, align 8, !tbaa !12255
  %i.g = load ptr, ptr %1, align 8, !tbaa !12255
  %i.h = load ptr, ptr %2, align 8, !tbaa !12255
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !12454
  store ptr %i.g, ptr %8, align 8, !tbaa !12454
  store ptr %i.h, ptr %9, align 8, !tbaa !12454
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !12255  ; 10 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !12454  ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !830
  %i.n = load i32, ptr %i.k, align 4, !tbaa !830  ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 4, !tbaa !830
  %i.p = load i32, ptr %i.l, align 4, !tbaa !830
  store i32 %i.p, ptr %i.k, align 4, !tbaa !830
  store i32 %i.n, ptr %i.l, align 4, !tbaa !830
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !830
  store i32 0, ptr %i.q, align 4, !tbaa !830
  %i.t = load i32, ptr %i.r, align 4, !tbaa !830
  store i32 %i.t, ptr %i.q, align 4, !tbaa !830
  store i32 %i.s, ptr %i.r, align 4, !tbaa !830
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.u = icmp ult i64 %i.i, 16
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !12454
  %i.v = load ptr, ptr %1, align 8, !tbaa !12255
  store ptr %i.v, ptr %12, align 8, !tbaa !12454
  %i.w = load ptr, ptr %2, align 8, !tbaa !12255
  store ptr %i.w, ptr %13, align 8, !tbaa !12454
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %1, align 8, !tbaa !12255  ; 8 uses
  %i.y = icmp ugt i64 %3, %4
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.z = lshr i64 %3, 1                           ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !12255 ; 2 uses
  %.not9.i = icmp eq ptr %i.ab, %i.x
  %.pre = ptrtoint ptr %i.x to i64                ; 3 uses
  br i1 %.not9.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !830, !noalias !16241
  br label %bb.k

end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test12copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7move_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %i.cm = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !16392, !noalias !18386
  store i32 %i.cn, ptr %i.ch, align 4, !tbaa !16392, !noalias !18386
  %i.co = icmp eq ptr %i.cd, %i.ae
  br i1 %i.co, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !18242

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.ai, %bb.h ], [ %i.az, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ag, %bb.p ], [ %i.ag, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bp, %bb.o ], [ %i.cd, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.z, %bb.q ], [ %i.z, %bb.n ], [ %i.b, %bb.p ], [ %i.b, %bb.m ], [ %i.z, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.z, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.au, %bb.h ], [ %i.bk, %bb.k ], [ %i.cg, %bb.r ], [ %i.bt, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.an, %.split.i.i ], [ %i.bt, %bb.n ], [ %i.cg, %bb.q ], [ %i.bd, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.ac, %bb.r ], [ %i.ac, %bb.o ], [ %i.ac, %bb.p ], [ %i.ac, %bb.m ], [ %i.ah, %.split.i.i ], [ %i.ac, %bb.n ], [ %i.ac, %bb.q ], [ %i.ay, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !18098, !noalias !400
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !18098, !noalias !400
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split ] ; 6 uses
  %.sroa.069.0 = phi ptr [ %i.ac, %bb.f ], [ %i.ac, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split ] ; 4 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !18098
  %i.cp = load ptr, ptr %3, align 8, !tbaa !18098 ; 6 uses
  %i.cq = icmp eq ptr %i.cp, %.sroa.064.0
  br i1 %i.cq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !16392, !noalias !18389
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !16392, !noalias !18389
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !16392, !noalias !18389
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !16392, !noalias !18389
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !16392, !noalias !18389
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !16392, !noalias !18389
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !16392, !noalias !18389
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !16392, !noalias !18389
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28, !llvm.loop !18246

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !16392, !noalias !18392
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !16392, !noalias !18392
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !16392, !noalias !18392
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !16392, !noalias !18392
  %i.di = load i32, ptr %i.db, align 4, !tbaa !16392, !noalias !18392
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !16392, !noalias !18392
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !16392, !noalias !18392
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !16392, !noalias !18392
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29, !llvm.loop !18250

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !16392, !noalias !18395
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !16392, !noalias !18395
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !16392, !noalias !18395
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !16392, !noalias !18395
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !18256

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.dn, %.lr.ph.i.i ], [ %i.cp, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !18098
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !1562
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !1562
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !1562
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre182 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.c, %bb.z ], [ %.pre182, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !18098
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !1840
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !18400

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.eh = load ptr, ptr %6, align 8, !tbaa !18098
  store ptr %i.eh, ptr %0, align 8, !tbaa !18098
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test12copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEES7_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !16392
  store i32 %i.c, ptr %3, align 4, !tbaa !16392
  %i.d = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16392
  store i32 %i.g, ptr %i.e, align 4, !tbaa !16392
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
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
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16392
  store i32 %i.l, ptr %i.j, align 4, !tbaa !16392
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16392
  store i32 %i.p, ptr %i.n, align 4, !tbaa !16392
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16392
  store i32 %i.s, ptr %i.q, align 4, !tbaa !16392
  %i.t = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16392
  store i32 %i.w, ptr %i.u, align 4, !tbaa !16392
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16392
  store i32 %i.z, ptr %i.x, align 4, !tbaa !16392
  %i.aa = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16392
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !16392
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16392
  store i32 %i.af, ptr %0, align 4, !tbaa !16392
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16392
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !16392
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test12copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.ap = trunc i64 %4 to i32
  %i.aq = shl i32 %i.ap, 1
  %i.ar = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i, %i.aq
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.at = trunc i64 %4 to i32
  %i.au = shl i32 %i.at, 1
  %i.av = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i28, %i.au
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.as

bb.d:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ax = ptrtoint ptr %0 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = ptrtoint ptr %2 to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = ashr exact i64 %i.bb, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test12copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.az, i64 noundef %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test12copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::movelib::range_xbuf.328", align 8 ; 6 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond99 = and i1 %i.b, %i.a
  br i1 %or.cond99, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr90103 = phi i64 [ %4, %.lr.ph ], [ %i.au, %tailrecurse ] ; 5 uses
  %.tr89102 = phi i64 [ %3, %.lr.ph ], [ %i.as, %tailrecurse ] ; 5 uses
  %.tr87101 = phi ptr [ %1, %.lr.ph ], [ %.071, %tailrecurse ] ; 13 uses
  %.tr100 = phi ptr [ %0, %.lr.ph ], [ %i.at, %tailrecurse ] ; 11 uses
  %.not = icmp ugt i64 %.tr89102, %6
  %.not76 = icmp ugt i64 %.tr90103, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test12copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test12copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !18401
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !18403
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !18404
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test12copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_10range_xbufIS7_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !16392 ; 2 uses
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !16392 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %.tr100, align 4, !tbaa !16392
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !16392
  %i.l = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !16392
  %i.o = load i32, ptr %i.m, align 4, !tbaa !16392
  store i32 %i.o, ptr %i.l, align 4, !tbaa !16392
  store i32 %i.n, ptr %i.m, align 4, !tbaa !16392
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %i.g, 16
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test12copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.q = icmp ugt i64 %.tr89102, %.tr90103
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = lshr i64 %.tr89102, 1                    ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.tr100, i64 %i.r ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr87101
  %.pre = ptrtoint ptr %.tr87101 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.t = sub i64 %i.c, %.pre
  %i.u = ashr exact i64 %i.t, 3
  %i.v = load i32, ptr %i.s, align 4, !tbaa !16392
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.w = lshr i64 %.017.i, 1                      ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !16392
  %i.z = icmp slt i32 %i.y, %i.v                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.neg.i = xor i64 %i.w, -1
  %i.ab = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.z, ptr %i.aa, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.z, i64 %i.ab, i64 %i.w     ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !17986

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr87101, %bb.i ]
  %i.ac = sub i64 %.pre-phi113, %.pre
  %i.ad = ashr exact i64 %i.ac, 3
  br label %tailrecurse

bb.k:                                             ; preds = %bb.h
  %i.ae = lshr i64 %.tr90103, 1                   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.tr87101, i64 %i.ae ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr87101, %.tr100
  %.pre110 = ptrtoint ptr %.tr100 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ag = ptrtoint ptr %.tr87101 to i64
  %i.ah = sub i64 %i.ag, %.pre110
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !16392
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.ai, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test12copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.bs = load ptr, ptr %3, align 8, !tbaa !18098 ; 5 uses
  %i.bt = icmp eq ptr %i.bs, %i.br
  br i1 %i.bt, label %.thread83, label %.thread84

.thread83:                                        ; preds = %.thread
  %i.bu = load ptr, ptr %12, align 8, !tbaa !18098 ; 3 uses
  %.not1.i = icmp eq ptr %i.bu, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.bx, %.lr.ph.i25 ], [ %i.bs, %.thread83 ] ; 2 uses
  %i.bv = phi ptr [ %i.bw, %.lr.ph.i25 ], [ %i.bu, %.thread83 ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 4 uses
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !16392, !noalias !19312
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !16392, !noalias !19312
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !16392, !noalias !19312
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !16392, !noalias !19312
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 -4 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !16392, !noalias !19312
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !16392, !noalias !19312
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !16392, !noalias !19312
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !16392, !noalias !19312
  %.not.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25, !llvm.loop !18246

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bs, %i.z
  %.pre113 = load ptr, ptr %12, align 8, !tbaa !18098 ; 3 uses
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread84
  %.pre.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !19315
  %i.ce = add i32 %.pre.i, 2
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.preheader.i
  %.sroa.043.0 = phi ptr [ %.pre113, %.lr.ph.preheader.i ], [ %i.ci, %.lr.ph.i26 ] ; 2 uses
  %.sroa.042.0 = phi ptr [ %i.br, %.lr.ph.preheader.i ], [ %i.cj, %.lr.ph.i26 ] ; 2 uses
  %i.cf = phi i32 [ %i.ce, %.lr.ph.preheader.i ], [ %i.cs, %.lr.ph.i26 ]
  %i.cg = phi ptr [ %i.bs, %.lr.ph.preheader.i ], [ %i.ch, %.lr.ph.i26 ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -8 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -4
  %i.cl = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -4 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cn = load <2 x i32>, ptr %i.cj, align 4, !tbaa !16392, !noalias !19315
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !19315
  %i.co = load i32, ptr %i.ci, align 4, !tbaa !16392, !noalias !19315
  store i32 %i.co, ptr %i.cj, align 4, !tbaa !16392, !noalias !19315
  %i.cp = load i32, ptr %i.cl, align 4, !tbaa !16392, !noalias !19315
  store i32 %i.cp, ptr %i.ck, align 4, !tbaa !16392, !noalias !19315
  %i.cq = load i32, ptr %i.ch, align 4, !tbaa !16392, !noalias !19315
  store i32 %i.cq, ptr %i.ci, align 4, !tbaa !16392, !noalias !19315
  %i.cr = load i32, ptr %i.cm, align 4, !tbaa !16392, !noalias !19315
  store i32 %i.cr, ptr %i.cl, align 4, !tbaa !16392, !noalias !19315
  store <2 x i32> %i.cn, ptr %i.ch, align 4, !tbaa !16392, !noalias !19315
  %i.cs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !19315 ; 2 uses
  %i.ct = add i32 %i.cs, -2
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !19315
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !18316

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bo, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cu = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.bo, %bb.l ] ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !16392, !noalias !19318
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !16392, !noalias !19318
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !16392, !noalias !19318
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !16392, !noalias !19318
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !16392, !noalias !19318
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !16392, !noalias !19318
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !16392, !noalias !19318
  store i32 %i.db, ptr %i.da, align 4, !tbaa !16392, !noalias !19318
  %.not.i.i28 = icmp eq ptr %i.cv, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !18246

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.dd = phi ptr [ %i.ac, %.loopexit ], [ %i.bu, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %.pre113, %.thread84 ], [ %i.ac, %bb.l ], [ %.pre113, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bx, %.lr.ph.i25 ], [ %i.bs, %.thread83 ], [ %i.cw, %.lr.ph.i.i ], [ %i.br, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !18098
  %i.de = load ptr, ptr %1, align 8, !tbaa !1840  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dd
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 -8 ; 2 uses
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !1562
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !1562
  store i64 %i.dj, ptr %i.dg, align 8, !tbaa !1562
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !1562
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dk = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dl = icmp eq ptr %i.df, %i.dk
  br i1 %i.dl, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dm = icmp eq ptr %i.dk, %i.de
  br i1 %i.dm, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.de, %bb.n ], [ %i.df, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre114 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  %i.dn = phi ptr [ %i.de, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.de, %bb.o ], [ %.pre114, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !18098
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8 ; 2 uses
  store ptr %i.do, ptr %1, align 8, !tbaa !1840
  %i.dp = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dp to i64
  %i.dq = add i64 %.0100, %.neg
  %i.dr = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dr to i64
  %i.ds = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dt = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dt, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19323

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.du = load ptr, ptr %6, align 8, !tbaa !18098
  store ptr %i.du, ptr %0, align 8, !tbaa !18098
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test12copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEES7_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.326", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.326", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !16392
  store i32 %i.c, ptr %4, align 4, !tbaa !16392
  %i.d = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16392
  store i32 %i.g, ptr %i.e, align 4, !tbaa !16392
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
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
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16392
  store i32 %i.l, ptr %i.j, align 4, !tbaa !16392
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16392
  store i32 %i.p, ptr %i.n, align 4, !tbaa !16392
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16392
  store i32 %i.s, ptr %i.q, align 4, !tbaa !16392
  %i.t = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16392
  store i32 %i.w, ptr %i.u, align 4, !tbaa !16392
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i.epil.init ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16392
  store i32 %i.z, ptr %i.x, align 4, !tbaa !16392
  %i.aa = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16392
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !16392
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16392
  store i32 %i.af, ptr %0, align 4, !tbaa !16392
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16392
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !16392
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = load ptr, ptr %3, align 8, !tbaa !18333, !nonnull !400
  store ptr %i.ap, ptr %7, align 8, !tbaa !18071
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test12copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.aq = trunc i64 %5 to i32
  %i.ar = shl i32 %i.aq, 1
  %i.as = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i, %i.ar
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.au = trunc i64 %5 to i32
  %i.av = shl i32 %i.au, 1
  %i.aw = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i28, %i.av
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.at

bb.d:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %3, align 8, !tbaa !18333, !nonnull !400
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ay = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = ashr exact i64 %i.bd, 3
  store ptr %i.ax, ptr %6, align 8, !tbaa !18071
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test12copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bb, i64 noundef %i.be, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test12copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEENS0_7move_opENS0_13adaptive_xbufIS6_S7_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test12copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16392 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !16392  ; 2 uses
  %.not90 = icmp slt i32 %i.b, %i.c
  br i1 %.not90, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test12copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16392
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 21 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !19324

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i138.le = ptrtoaddr ptr %.114.i to i64    ; 4 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17642 ; 5 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test12copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !17640  ; 7 uses
  %i.u = add i64 %i.d, -8
  %i.v = sub i64 %i.u, %.114.i138.le              ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 88
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %scevgep = getelementptr i8, ptr %i.t, i64 8
  %i.y = add i64 %i.d, -8
  %i.z = sub i64 %i.y, %.114.i138.le
  %i.aa = and i64 %i.z, -8                        ; 2 uses
  %scevgep139 = getelementptr i8, ptr %scevgep, i64 %i.aa
  %scevgep140 = getelementptr i8, ptr %.114.i, i64 8
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %i.aa
  %bound0 = icmp ult ptr %i.t, %scevgep141
  %bound1 = icmp ult ptr %.114.i, %scevgep139
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
  %next.gep142 = getelementptr i8, ptr %i.t, i64 %i.af
  %next.gep143 = getelementptr i8, ptr %.114.i, i64 %i.ae
  %next.gep144 = getelementptr i8, ptr %.114.i, i64 %i.af
  %wide.vec = load <4 x i32>, ptr %next.gep143, align 4, !tbaa !16392, !alias.scope !19325
  %wide.vec146 = load <4 x i32>, ptr %next.gep144, align 4, !tbaa !16392, !alias.scope !19325
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !16392, !alias.scope !19328, !noalias !19325
  store <4 x i32> %wide.vec146, ptr %next.gep142, align 4, !tbaa !16392, !alias.scope !19328, !noalias !19325
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !19330

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader.i ], [ %i.ac, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ah = load i32, ptr %.079.i.i, align 4, !tbaa !16392
  store i32 %i.ah, ptr %.010.i.i, align 4, !tbaa !16392
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container12vec_iteratorIPSt4pairINS9_4test12copyable_intESD_ELb0EEEEENS3_ISF_EESH_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSJ_9select1stISD_EEEEEENS0_7move_opEEET3_T_ST_T0_T1_RT2_SW_SS_NS0_9iter_sizeISV_E4typeES10_S10_S10_T4_bT5_:bb.a
  %i.cp = load ptr, ptr %3, align 8, !tbaa !16581 ; 6 uses
  %i.cq = icmp eq ptr %i.cp, %.sroa.064.0
  br i1 %i.cq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEENS3_INS5_12vec_iteratorIS9_Lb0EEEEESD_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSF_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SP_RT0_SR_SS_SO_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !16392, !noalias !21181
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !16392, !noalias !21181
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !16392, !noalias !21181
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !16392, !noalias !21181
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !16392, !noalias !21181
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !16392, !noalias !21181
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !16392, !noalias !21181
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !16392, !noalias !21181
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i28, !llvm.loop !20880

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEENS3_INS5_12vec_iteratorIS9_Lb0EEEEESD_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSF_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SP_RT0_SR_SS_SO_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !16392, !noalias !21184
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !16392, !noalias !21184
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !16392, !noalias !21184
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !16392, !noalias !21184
  %i.di = load i32, ptr %i.db, align 4, !tbaa !16392, !noalias !21184
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !16392, !noalias !21184
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !16392, !noalias !21184
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !16392, !noalias !21184
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i29, !llvm.loop !20884

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !16392, !noalias !21187
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !16392, !noalias !21187
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !16392, !noalias !21187
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !16392, !noalias !21187
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !20890

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.w, %bb.v, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ], [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ], [ %.sroa.064.0, %bb.v ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !16581
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test12copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !1562
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !1562
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !1562
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test12copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre182 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test12copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test12copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit ], [ %i.c, %bb.z ], [ %.pre182, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !16581
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !1840
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !21192

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test12copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21193)
  %i.eh = load ptr, ptr %6, align 8, !tbaa !16387, !noalias !21193
  store ptr %i.eh, ptr %0, align 8, !tbaa !16581, !alias.scope !21193
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !16581  ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !16581  ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !16581  ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.j, %i.f
  %i.l = ashr exact i64 %i.k, 3
  %i.m = load i32, ptr %i.a, align 4, !tbaa !16392
  store i32 %i.m, ptr %3, align 4, !tbaa !16392
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16392
  store i32 %i.q, ptr %i.o, align 4, !tbaa !16392
  %storemerge911.i = add i32 %i.n, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.r = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = icmp eq i64 %4, 2
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.r, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16392
  store i32 %i.v, ptr %i.t, align 4, !tbaa !16392
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16392
  store i32 %i.z, ptr %i.x, align 4, !tbaa !16392
  %storemerge9.i = add i32 %i.w, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16392
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !16392
  %i.ad = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16392
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !16392
  %storemerge9.i.1 = add i32 %i.ad, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !16392
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !16392
  %i.ak = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16392
  store i32 %i.an, ptr %i.al, align 4, !tbaa !16392
  %storemerge9.i.epil = add i32 %i.ak, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16392
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !16392
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16392
  store i32 %i.ar, ptr %i.p, align 4, !tbaa !16392
  store ptr %i.a, ptr %8, align 8, !tbaa !16581
  store ptr %i.b, ptr %9, align 8, !tbaa !16581
  store ptr %i.d, ptr %10, align 8, !tbaa !16581
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.i, i64 noundef %i.l, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit11

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.as = trunc i64 %4 to i32
  %i.at = shl i32 %i.as, 1
  %i.au = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i, %i.at
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %bb.f

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit11: ; preds = %.loopexit
  %i.av = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i10 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.aw = trunc i64 %4 to i32
  %i.ax = shl i32 %i.aw, 1
  %i.ay = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i10, %i.ax
  store i32 %i.ay, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.av

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !16581
  store ptr %i.b, ptr %6, align 8, !tbaa !16581
  store ptr %i.d, ptr %7, align 8, !tbaa !16581
  %i.az = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.ba = ptrtoint ptr %i.a to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = ptrtoint ptr %i.d to i64
  %i.be = sub i64 %i.bd, %i.az
  %i.bf = ashr exact i64 %i.be, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bc, i64 noundef %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf.328", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !18401
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !18403
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !18404
  %i.f = load ptr, ptr %0, align 8, !tbaa !16387
  %i.g = load ptr, ptr %1, align 8, !tbaa !16387
  %i.h = load ptr, ptr %2, align 8, !tbaa !16387
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !16581
  store ptr %i.g, ptr %8, align 8, !tbaa !16581
  store ptr %i.h, ptr %9, align 8, !tbaa !16581
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !16387  ; 9 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !16581  ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16392 ; 2 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !16392 ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  store i32 %i.m, ptr %i.k, align 4, !tbaa !16392
  store i32 %i.n, ptr %i.l, align 4, !tbaa !16392
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !16392
  %i.s = load i32, ptr %i.q, align 4, !tbaa !16392
  store i32 %i.s, ptr %i.p, align 4, !tbaa !16392
  store i32 %i.r, ptr %i.q, align 4, !tbaa !16392
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %i.i, 16
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !16581
  %i.u = load ptr, ptr %1, align 8, !tbaa !16387
  store ptr %i.u, ptr %12, align 8, !tbaa !16581
  %i.v = load ptr, ptr %2, align 8, !tbaa !16387
  store ptr %i.v, ptr %13, align 8, !tbaa !16581
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %1, align 8, !tbaa !16387  ; 8 uses
  %i.x = icmp ugt i64 %3, %4
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = lshr i64 %3, 1                           ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !16387 ; 2 uses
  %.not9.i = icmp eq ptr %i.aa, %i.w
  %.pre = ptrtoint ptr %i.w to i64                ; 3 uses
  br i1 %.not9.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %.pre
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !16392, !noalias !21196
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %i.af = phi ptr [ %i.w, %.lr.ph.i ], [ %i.am, %bb.k ] ; 2 uses
  %.010.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 2 uses
  %i.ag = lshr i64 %.010.i, 1                     ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16392, !noalias !21196
  %i.aj = icmp slt i32 %i.ai, %i.ae               ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7move_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !23027, !noalias !400
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split ] ; 6 uses
  %.sroa.069.0 = phi ptr [ %i.ac, %bb.f ], [ %i.ac, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split ] ; 4 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !23027
  %i.cp = load ptr, ptr %3, align 8, !tbaa !23027 ; 6 uses
  %i.cq = icmp eq ptr %i.cp, %.sroa.064.0
  br i1 %i.cq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !21435, !noalias !23269
  store i32 0, ptr %i.cs, align 4, !tbaa !21435, !noalias !23269
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !21435, !noalias !23269
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !21435, !noalias !23269
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !21435, !noalias !23269
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !21435, !noalias !23269
  store i32 0, ptr %i.cw, align 4, !tbaa !21435, !noalias !23269
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !21435, !noalias !23269
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !21435, !noalias !23269
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !21435, !noalias !23269
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28, !llvm.loop !23154

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !21435, !noalias !23272
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !21435, !noalias !23272
  store i32 0, ptr %i.dc, align 4, !tbaa !21435, !noalias !23272
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !21435, !noalias !23272
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !21435, !noalias !23272
  store i32 0, ptr %i.df, align 4, !tbaa !21435, !noalias !23272
  %i.di = load i32, ptr %i.db, align 4, !tbaa !21435, !noalias !23272
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !21435, !noalias !23272
  store i32 0, ptr %i.db, align 4, !tbaa !21435, !noalias !23272
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21435, !noalias !23272
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !21435, !noalias !23272
  store i32 0, ptr %i.dj, align 4, !tbaa !21435, !noalias !23272
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29, !llvm.loop !23158

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !21435, !noalias !23275
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !21435, !noalias !23275
  store i32 0, ptr %i.dm, align 4, !tbaa !21435, !noalias !23275
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !21435, !noalias !23275
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !21435, !noalias !23275
  store i32 0, ptr %i.dp, align 4, !tbaa !21435, !noalias !23275
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !23164

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.dn, %.lr.ph.i.i ], [ %i.cp, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !23027
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !1562
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !1562
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !1562
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.c, %bb.z ], [ %.pre187, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !23027
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !1840
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !23280

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.eh = load ptr, ptr %6, align 8, !tbaa !23027
  store ptr %i.eh, ptr %0, align 8, !tbaa !23027
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEES7_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !21435
  store i32 %i.c, ptr %3, align 4, !tbaa !21435
  store i32 0, ptr %0, align 4, !tbaa !21435
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21435
  store i32 %i.g, ptr %i.e, align 4, !tbaa !21435
  store i32 0, ptr %i.f, align 4, !tbaa !21435
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21435
  store i32 %i.l, ptr %i.j, align 4, !tbaa !21435
  store i32 0, ptr %i.k, align 4, !tbaa !21435
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21435
  store i32 %i.p, ptr %i.n, align 4, !tbaa !21435
  store i32 0, ptr %i.o, align 4, !tbaa !21435
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21435
  store i32 %i.s, ptr %i.q, align 4, !tbaa !21435
  store i32 0, ptr %i.r, align 4, !tbaa !21435
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21435
  store i32 %i.w, ptr %i.u, align 4, !tbaa !21435
  store i32 0, ptr %i.v, align 4, !tbaa !21435
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21435
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21435
  store i32 0, ptr %i.y, align 4, !tbaa !21435
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21435
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21435
  store i32 0, ptr %i.ac, align 4, !tbaa !21435
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21435
  store i32 %i.af, ptr %0, align 4, !tbaa !21435
  store i32 0, ptr %i.ae, align 4, !tbaa !21435
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21435
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !21435
  store i32 0, ptr %i.ag, align 4, !tbaa !21435
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ap = trunc i64 %4 to i32
  %i.aq = shl i32 %i.ap, 1
  %i.ar = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.aq
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.at = trunc i64 %4 to i32
  %i.au = shl i32 %i.at, 1
  %i.av = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.au
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.as

bb.d:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ax = ptrtoint ptr %0 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = ptrtoint ptr %2 to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = ashr exact i64 %i.bb, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.az, i64 noundef %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::movelib::range_xbuf.402", align 8 ; 6 uses
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
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !23281
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !23283
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !23284
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_10range_xbufIS7_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !21435
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !21435 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.tr100, align 4, !tbaa !21435
  %i.l = load i32, ptr %.tr87101, align 4, !tbaa !21435
  store i32 %i.l, ptr %.tr100, align 4, !tbaa !21435
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !21435
  %i.m = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !21435
  store i32 0, ptr %i.m, align 4, !tbaa !21435
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21435
  store i32 %i.p, ptr %i.m, align 4, !tbaa !21435
  store i32 %i.o, ptr %i.n, align 4, !tbaa !21435
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.g, 16
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %.tr89102, %.tr90103
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %.tr89102, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.tr100, i64 %i.s ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr87101
  %.pre = ptrtoint ptr %.tr87101 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = sub i64 %i.c, %.pre
  %i.v = ashr exact i64 %i.u, 3
  %i.w = load i32, ptr %i.t, align 4, !tbaa !21435
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.x = lshr i64 %.017.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21435
  %i.aa = icmp slt i32 %i.z, %i.w                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.neg.i = xor i64 %i.x, -1
  %i.ac = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.aa, ptr %i.ab, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ac, i64 %i.x    ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !22921

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr87101, %bb.i ]
  %i.ad = sub i64 %.pre-phi113, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  br label %tailrecurse

bb.k:                                             ; preds = %bb.h
  %i.af = lshr i64 %.tr90103, 1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.tr87101, i64 %i.af ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr87101, %.tr100
  %.pre110 = ptrtoint ptr %.tr100 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ah = ptrtoint ptr %.tr87101 to i64
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %.not1.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ] ; 2 uses
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i25 ], [ %i.by, %.thread83 ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 4 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !21435, !noalias !24162
  store i32 0, ptr %i.ca, align 4, !tbaa !21435, !noalias !24162
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !21435, !noalias !24162
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !21435, !noalias !24162
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !21435, !noalias !24162
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !21435, !noalias !24162
  store i32 0, ptr %i.ce, align 4, !tbaa !21435, !noalias !24162
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !21435, !noalias !24162
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !21435, !noalias !24162
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !21435, !noalias !24162
  %.not.i = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25, !llvm.loop !23154

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bw, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26

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
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !21435, !noalias !24165
  store i32 0, ptr %i.cl, align 4, !tbaa !21435, !noalias !24165
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !24165
  store i32 0, ptr %i.cm, align 4, !tbaa !21435, !noalias !24165
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !24165
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !21435, !noalias !24165
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !21435, !noalias !24165
  store i32 0, ptr %i.ck, align 4, !tbaa !21435, !noalias !24165
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !21435, !noalias !24165
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !21435, !noalias !24165
  store i32 0, ptr %i.cn, align 4, !tbaa !21435, !noalias !24165
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !21435, !noalias !24165
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !21435, !noalias !24165
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !21435, !noalias !24165
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !21435, !noalias !24165
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !21435, !noalias !24165
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !24165
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !24165
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !23226

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !21435, !noalias !24168
  store i32 0, ptr %i.cz, align 4, !tbaa !21435, !noalias !24168
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !21435, !noalias !24168
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !21435, !noalias !24168
  store i32 %i.db, ptr %i.da, align 4, !tbaa !21435, !noalias !24168
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !21435, !noalias !24168
  store i32 0, ptr %i.dd, align 4, !tbaa !21435, !noalias !24168
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !21435, !noalias !24168
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !21435, !noalias !24168
  store i32 %i.df, ptr %i.de, align 4, !tbaa !21435, !noalias !24168
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !23154

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread84 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !23027
  %i.di = load ptr, ptr %1, align 8, !tbaa !1840  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -8 ; 2 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !1562
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !1562
  store i64 %i.dn, ptr %i.dk, align 8, !tbaa !1562
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !1562
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.do = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dp = icmp eq ptr %i.dj, %i.do
  br i1 %i.dp, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = icmp eq ptr %i.do, %i.di
  br i1 %i.dq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dj, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre117 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  %i.dr = phi ptr [ %i.di, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.di, %bb.o ], [ %.pre117, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !23027
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 2 uses
  store ptr %i.ds, ptr %1, align 8, !tbaa !1840
  %i.dt = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dt to i64
  %i.du = add i64 %.0100, %.neg
  %i.dv = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dv to i64
  %i.dw = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dx = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dx, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !24173

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dy = load ptr, ptr %6, align 8, !tbaa !23027
  store ptr %i.dy, ptr %0, align 8, !tbaa !23027
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEES7_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.400", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.400", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !21435
  store i32 %i.c, ptr %4, align 4, !tbaa !21435
  store i32 0, ptr %0, align 4, !tbaa !21435
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21435
  store i32 %i.g, ptr %i.e, align 4, !tbaa !21435
  store i32 0, ptr %i.f, align 4, !tbaa !21435
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21435
  store i32 %i.l, ptr %i.j, align 4, !tbaa !21435
  store i32 0, ptr %i.k, align 4, !tbaa !21435
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21435
  store i32 %i.p, ptr %i.n, align 4, !tbaa !21435
  store i32 0, ptr %i.o, align 4, !tbaa !21435
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21435
  store i32 %i.s, ptr %i.q, align 4, !tbaa !21435
  store i32 0, ptr %i.r, align 4, !tbaa !21435
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21435
  store i32 %i.w, ptr %i.u, align 4, !tbaa !21435
  store i32 0, ptr %i.v, align 4, !tbaa !21435
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21435
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21435
  store i32 0, ptr %i.y, align 4, !tbaa !21435
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21435
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21435
  store i32 0, ptr %i.ac, align 4, !tbaa !21435
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21435
  store i32 %i.af, ptr %0, align 4, !tbaa !21435
  store i32 0, ptr %i.ae, align 4, !tbaa !21435
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21435
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !21435
  store i32 0, ptr %i.ag, align 4, !tbaa !21435
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = load ptr, ptr %3, align 8, !tbaa !23178, !nonnull !400
  store ptr %i.ap, ptr %7, align 8, !tbaa !23000
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aq = trunc i64 %5 to i32
  %i.ar = shl i32 %i.aq, 1
  %i.as = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ar
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.au = trunc i64 %5 to i32
  %i.av = shl i32 %i.au, 1
  %i.aw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.av
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.at

bb.d:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %3, align 8, !tbaa !23178, !nonnull !400
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ay = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = ashr exact i64 %i.bd, 3
  store ptr %i.ax, ptr %6, align 8, !tbaa !23000
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bb, i64 noundef %i.be, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEENS0_7move_opENS0_13adaptive_xbufIS6_S7_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21435 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !21435  ; 2 uses
  %.not89 = icmp slt i32 %i.b, %i.c
  br i1 %.not89, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21435
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 21 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !24174

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i147.le = ptrtoaddr ptr %.114.i to i64    ; 4 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22607 ; 5 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !22605  ; 7 uses
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
  %wide.vec = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !21435, !alias.scope !24175
  %wide.vec155 = load <4 x i32>, ptr %next.gep153, align 4, !tbaa !21435, !alias.scope !24175
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21435, !alias.scope !24178, !noalias !24175
  store <4 x i32> %wide.vec155, ptr %next.gep151, align 4, !tbaa !21435, !alias.scope !24178, !noalias !24175
  store <4 x i32> zeroinitializer, ptr %next.gep152, align 4, !tbaa !21435, !alias.scope !24175
  store <4 x i32> zeroinitializer, ptr %next.gep153, align 4, !tbaa !21435, !alias.scope !24175
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !24180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader.i ], [ %i.ac, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container12vec_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0EEEEENS3_ISF_EESH_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSJ_9select1stISD_EEEEEENS0_7move_opEEET3_T_ST_T0_T1_RT2_SW_SS_NS0_9iter_sizeISV_E4typeES10_S10_S10_T4_bT5_:bb.a
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !21435, !noalias !25773
  store i32 0, ptr %i.cs, align 4, !tbaa !21435, !noalias !25773
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !21435, !noalias !25773
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !21435, !noalias !25773
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !21435, !noalias !25773
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !21435, !noalias !25773
  store i32 0, ptr %i.cw, align 4, !tbaa !21435, !noalias !25773
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !21435, !noalias !25773
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !21435, !noalias !25773
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !21435, !noalias !25773
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i28, !llvm.loop !25482

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEENS3_INS5_12vec_iteratorIS9_Lb0EEEEESD_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSF_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SP_RT0_SR_SS_SO_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !21435, !noalias !25776
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !21435, !noalias !25776
  store i32 0, ptr %i.dc, align 4, !tbaa !21435, !noalias !25776
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !21435, !noalias !25776
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !21435, !noalias !25776
  store i32 0, ptr %i.df, align 4, !tbaa !21435, !noalias !25776
  %i.di = load i32, ptr %i.db, align 4, !tbaa !21435, !noalias !25776
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !21435, !noalias !25776
  store i32 0, ptr %i.db, align 4, !tbaa !21435, !noalias !25776
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21435, !noalias !25776
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !21435, !noalias !25776
  store i32 0, ptr %i.dj, align 4, !tbaa !21435, !noalias !25776
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i29, !llvm.loop !25486

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !21435, !noalias !25779
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !21435, !noalias !25779
  store i32 0, ptr %i.dm, align 4, !tbaa !21435, !noalias !25779
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !21435, !noalias !25779
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !21435, !noalias !25779
  store i32 0, ptr %i.dp, align 4, !tbaa !21435, !noalias !25779
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !25492

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.w, %bb.v, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ], [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ], [ %.sroa.064.0, %bb.v ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !21563
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !1562
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !1562
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !1562
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit ], [ %i.c, %bb.z ], [ %.pre187, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !21563
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !1840
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !25784

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25785)
  %i.eh = load ptr, ptr %6, align 8, !tbaa !21362, !noalias !25785
  store ptr %i.eh, ptr %0, align 8, !tbaa !21563, !alias.scope !25785
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21563  ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !21563  ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !21563  ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.j, %i.f
  %i.l = ashr exact i64 %i.k, 3
  %i.m = load i32, ptr %i.a, align 4, !tbaa !21435
  store i32 %i.m, ptr %3, align 4, !tbaa !21435
  store i32 0, ptr %i.a, align 4, !tbaa !21435
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21435
  store i32 %i.q, ptr %i.o, align 4, !tbaa !21435
  store i32 0, ptr %i.p, align 4, !tbaa !21435
  %storemerge911.i = add i32 %i.n, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.r = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = icmp eq i64 %4, 2
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.r, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21435
  store i32 %i.v, ptr %i.t, align 4, !tbaa !21435
  store i32 0, ptr %i.u, align 4, !tbaa !21435
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21435
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21435
  store i32 0, ptr %i.y, align 4, !tbaa !21435
  %storemerge9.i = add i32 %i.w, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21435
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !21435
  store i32 0, ptr %i.ab, align 4, !tbaa !21435
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21435
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !21435
  store i32 0, ptr %i.af, align 4, !tbaa !21435
  %storemerge9.i.1 = add i32 %i.ad, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !21435
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !21435
  store i32 0, ptr %i.ai, align 4, !tbaa !21435
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21435
  store i32 %i.an, ptr %i.al, align 4, !tbaa !21435
  store i32 0, ptr %i.am, align 4, !tbaa !21435
  %storemerge9.i.epil = add i32 %i.ak, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21435
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !21435
  store i32 0, ptr %i.ao, align 4, !tbaa !21435
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21435
  store i32 %i.ar, ptr %i.p, align 4, !tbaa !21435
  store i32 0, ptr %i.aq, align 4, !tbaa !21435
  store ptr %i.a, ptr %8, align 8, !tbaa !21563
  store ptr %i.b, ptr %9, align 8, !tbaa !21563
  store ptr %i.d, ptr %10, align 8, !tbaa !21563
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.i, i64 noundef %i.l, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.as = trunc i64 %4 to i32
  %i.at = shl i32 %i.as, 1
  %i.au = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.at
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %bb.f

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11: ; preds = %.loopexit
  %i.av = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aw = trunc i64 %4 to i32
  %i.ax = shl i32 %i.aw, 1
  %i.ay = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10, %i.ax
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.av

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !21563
  store ptr %i.b, ptr %6, align 8, !tbaa !21563
  store ptr %i.d, ptr %7, align 8, !tbaa !21563
  %i.az = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.ba = ptrtoint ptr %i.a to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = ptrtoint ptr %i.d to i64
  %i.be = sub i64 %i.bd, %i.az
  %i.bf = ashr exact i64 %i.be, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bc, i64 noundef %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf.402", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !23281
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !23283
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !23284
  %i.f = load ptr, ptr %0, align 8, !tbaa !21362
  %i.g = load ptr, ptr %1, align 8, !tbaa !21362
  %i.h = load ptr, ptr %2, align 8, !tbaa !21362
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !21563
  store ptr %i.g, ptr %8, align 8, !tbaa !21563
  store ptr %i.h, ptr %9, align 8, !tbaa !21563
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !21362  ; 10 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !21563  ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21435
  %i.n = load i32, ptr %i.k, align 4, !tbaa !21435 ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 4, !tbaa !21435
  %i.p = load i32, ptr %i.l, align 4, !tbaa !21435
  store i32 %i.p, ptr %i.k, align 4, !tbaa !21435
  store i32 %i.n, ptr %i.l, align 4, !tbaa !21435
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !21435
  store i32 0, ptr %i.q, align 4, !tbaa !21435
  %i.t = load i32, ptr %i.r, align 4, !tbaa !21435
  store i32 %i.t, ptr %i.q, align 4, !tbaa !21435
  store i32 %i.s, ptr %i.r, align 4, !tbaa !21435
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.u = icmp ult i64 %i.i, 16
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !21563
  %i.v = load ptr, ptr %1, align 8, !tbaa !21362
  store ptr %i.v, ptr %12, align 8, !tbaa !21563
  %i.w = load ptr, ptr %2, align 8, !tbaa !21362
  store ptr %i.w, ptr %13, align 8, !tbaa !21563
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %1, align 8, !tbaa !21362  ; 8 uses
  %i.y = icmp ugt i64 %3, %4
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.z = lshr i64 %3, 1                           ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !21362 ; 2 uses
  %.not9.i = icmp eq ptr %i.ab, %i.x
  %.pre = ptrtoint ptr %i.x to i64                ; 3 uses
  br i1 %.not9.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !21435, !noalias !25788
  br label %bb.k

end_hunk_11
begin_hunk_12_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareINSB_16less_transparentESD_NSG_9select1stISC_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !23027, !noalias !400
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareINS6_16less_transparentES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareINS6_16less_transparentES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareINS6_16less_transparentES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareINS6_16less_transparentES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 6 uses
  %.sroa.069.0 = phi ptr [ %i.ac, %bb.f ], [ %i.ac, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareINS6_16less_transparentES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 4 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !23027
  %i.cp = load ptr, ptr %3, align 8, !tbaa !23027 ; 6 uses
  %i.cq = icmp eq ptr %i.cp, %.sroa.064.0
  br i1 %i.cq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareINS6_16less_transparentES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !21435, !noalias !27800
  store i32 0, ptr %i.cs, align 4, !tbaa !21435, !noalias !27800
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !21435, !noalias !27800
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !21435, !noalias !27800
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !21435, !noalias !27800
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !21435, !noalias !27800
  store i32 0, ptr %i.cw, align 4, !tbaa !21435, !noalias !27800
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !21435, !noalias !27800
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !21435, !noalias !27800
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !21435, !noalias !27800
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28, !llvm.loop !23154

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareINS6_16less_transparentES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !21435, !noalias !27803
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !21435, !noalias !27803
  store i32 0, ptr %i.dc, align 4, !tbaa !21435, !noalias !27803
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !21435, !noalias !27803
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !21435, !noalias !27803
  store i32 0, ptr %i.df, align 4, !tbaa !21435, !noalias !27803
  %i.di = load i32, ptr %i.db, align 4, !tbaa !21435, !noalias !27803
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !21435, !noalias !27803
  store i32 0, ptr %i.db, align 4, !tbaa !21435, !noalias !27803
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21435, !noalias !27803
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !21435, !noalias !27803
  store i32 0, ptr %i.dj, align 4, !tbaa !21435, !noalias !27803
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29, !llvm.loop !23158

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !21435, !noalias !27806
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !21435, !noalias !27806
  store i32 0, ptr %i.dm, align 4, !tbaa !21435, !noalias !27806
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !21435, !noalias !27806
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !21435, !noalias !27806
  store i32 0, ptr %i.dp, align 4, !tbaa !21435, !noalias !27806
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !23164

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.dn, %.lr.ph.i.i ], [ %i.cp, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !23027
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !1562
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !1562
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !1562
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.c, %bb.z ], [ %.pre187, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !23027
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !1840
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !27811

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.eh = load ptr, ptr %6, align 8, !tbaa !23027
  store ptr %i.eh, ptr %0, align 8, !tbaa !23027
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEES7_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !21435
  store i32 %i.c, ptr %3, align 4, !tbaa !21435
  store i32 0, ptr %0, align 4, !tbaa !21435
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21435
  store i32 %i.g, ptr %i.e, align 4, !tbaa !21435
  store i32 0, ptr %i.f, align 4, !tbaa !21435
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21435
  store i32 %i.l, ptr %i.j, align 4, !tbaa !21435
  store i32 0, ptr %i.k, align 4, !tbaa !21435
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21435
  store i32 %i.p, ptr %i.n, align 4, !tbaa !21435
  store i32 0, ptr %i.o, align 4, !tbaa !21435
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21435
  store i32 %i.s, ptr %i.q, align 4, !tbaa !21435
  store i32 0, ptr %i.r, align 4, !tbaa !21435
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21435
  store i32 %i.w, ptr %i.u, align 4, !tbaa !21435
  store i32 0, ptr %i.v, align 4, !tbaa !21435
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21435
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21435
  store i32 0, ptr %i.y, align 4, !tbaa !21435
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21435
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21435
  store i32 0, ptr %i.ac, align 4, !tbaa !21435
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21435
  store i32 %i.af, ptr %0, align 4, !tbaa !21435
  store i32 0, ptr %i.ae, align 4, !tbaa !21435
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21435
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !21435
  store i32 0, ptr %i.ag, align 4, !tbaa !21435
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ap = trunc i64 %4 to i32
  %i.aq = shl i32 %i.ap, 1
  %i.ar = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.aq
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.at = trunc i64 %4 to i32
  %i.au = shl i32 %i.at, 1
  %i.av = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.au
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.as

bb.d:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ax = ptrtoint ptr %0 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = ptrtoint ptr %2 to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = ashr exact i64 %i.bb, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.az, i64 noundef %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::movelib::range_xbuf.402", align 8 ; 6 uses
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
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !23281
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !23283
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !23284
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_10range_xbufIS7_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !21435
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !21435 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.tr100, align 4, !tbaa !21435
  %i.l = load i32, ptr %.tr87101, align 4, !tbaa !21435
  store i32 %i.l, ptr %.tr100, align 4, !tbaa !21435
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !21435
  %i.m = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !21435
  store i32 0, ptr %i.m, align 4, !tbaa !21435
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21435
  store i32 %i.p, ptr %i.m, align 4, !tbaa !21435
  store i32 %i.o, ptr %i.n, align 4, !tbaa !21435
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.g, 16
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEEvT_SE_SE_T0_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %.tr89102, %.tr90103
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %.tr89102, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.tr100, i64 %i.s ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr87101
  %.pre = ptrtoint ptr %.tr87101 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = sub i64 %i.c, %.pre
  %i.v = ashr exact i64 %i.u, 3
  %i.w = load i32, ptr %i.t, align 4, !tbaa !21435
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.x = lshr i64 %.017.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21435
  %i.aa = icmp slt i32 %i.z, %i.w                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.neg.i = xor i64 %i.x, -1
  %i.ac = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.aa, ptr %i.ab, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ac, i64 %i.x    ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !27465

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr87101, %bb.i ]
  %i.ad = sub i64 %.pre-phi113, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  br label %tailrecurse

bb.k:                                             ; preds = %bb.h
  %i.af = lshr i64 %.tr90103, 1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.tr87101, i64 %i.af ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr87101, %.tr100
  %.pre110 = ptrtoint ptr %.tr100 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ah = ptrtoint ptr %.tr87101 to i64
end_hunk_12
begin_hunk_13_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareINSB_16less_transparentESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %.not1.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ] ; 2 uses
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i25 ], [ %i.by, %.thread83 ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 4 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !21435, !noalias !28653
  store i32 0, ptr %i.ca, align 4, !tbaa !21435, !noalias !28653
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !21435, !noalias !28653
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !21435, !noalias !28653
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !21435, !noalias !28653
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !21435, !noalias !28653
  store i32 0, ptr %i.ce, align 4, !tbaa !21435, !noalias !28653
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !21435, !noalias !28653
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !21435, !noalias !28653
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !21435, !noalias !28653
  %.not.i = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25, !llvm.loop !23154

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bw, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26

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
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !21435, !noalias !28656
  store i32 0, ptr %i.cl, align 4, !tbaa !21435, !noalias !28656
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !28656
  store i32 0, ptr %i.cm, align 4, !tbaa !21435, !noalias !28656
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !28656
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !21435, !noalias !28656
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !21435, !noalias !28656
  store i32 0, ptr %i.ck, align 4, !tbaa !21435, !noalias !28656
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !21435, !noalias !28656
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !21435, !noalias !28656
  store i32 0, ptr %i.cn, align 4, !tbaa !21435, !noalias !28656
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !21435, !noalias !28656
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !21435, !noalias !28656
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !21435, !noalias !28656
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !21435, !noalias !28656
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !21435, !noalias !28656
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !28656
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !28656
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !23226

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !21435, !noalias !28659
  store i32 0, ptr %i.cz, align 4, !tbaa !21435, !noalias !28659
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !21435, !noalias !28659
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !21435, !noalias !28659
  store i32 %i.db, ptr %i.da, align 4, !tbaa !21435, !noalias !28659
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !21435, !noalias !28659
  store i32 0, ptr %i.dd, align 4, !tbaa !21435, !noalias !28659
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !21435, !noalias !28659
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !21435, !noalias !28659
  store i32 %i.df, ptr %i.de, align 4, !tbaa !21435, !noalias !28659
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !23154

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread84 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !23027
  %i.di = load ptr, ptr %1, align 8, !tbaa !1840  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -8 ; 2 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !1562
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !1562
  store i64 %i.dn, ptr %i.dk, align 8, !tbaa !1562
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !1562
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.do = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dp = icmp eq ptr %i.dj, %i.do
  br i1 %i.dp, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = icmp eq ptr %i.do, %i.di
  br i1 %i.dq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dj, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre117 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  %i.dr = phi ptr [ %i.di, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.di, %bb.o ], [ %.pre117, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !23027
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 2 uses
  store ptr %i.ds, ptr %1, align 8, !tbaa !1840
  %i.dt = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dt to i64
  %i.du = add i64 %.0100, %.neg
  %i.dv = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dv to i64
  %i.dw = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dx = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dx, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !28664

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dy = load ptr, ptr %6, align 8, !tbaa !23027
  store ptr %i.dy, ptr %0, align 8, !tbaa !23027
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS9_9select1stIS5_EEEEEES7_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.453", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.453", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !21435
  store i32 %i.c, ptr %4, align 4, !tbaa !21435
  store i32 0, ptr %0, align 4, !tbaa !21435
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21435
  store i32 %i.g, ptr %i.e, align 4, !tbaa !21435
  store i32 0, ptr %i.f, align 4, !tbaa !21435
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21435
  store i32 %i.l, ptr %i.j, align 4, !tbaa !21435
  store i32 0, ptr %i.k, align 4, !tbaa !21435
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21435
  store i32 %i.p, ptr %i.n, align 4, !tbaa !21435
  store i32 0, ptr %i.o, align 4, !tbaa !21435
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21435
  store i32 %i.s, ptr %i.q, align 4, !tbaa !21435
  store i32 0, ptr %i.r, align 4, !tbaa !21435
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21435
  store i32 %i.w, ptr %i.u, align 4, !tbaa !21435
  store i32 0, ptr %i.v, align 4, !tbaa !21435
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21435
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21435
  store i32 0, ptr %i.y, align 4, !tbaa !21435
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21435
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21435
  store i32 0, ptr %i.ac, align 4, !tbaa !21435
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21435
  store i32 %i.af, ptr %0, align 4, !tbaa !21435
  store i32 0, ptr %i.ae, align 4, !tbaa !21435
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21435
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !21435
  store i32 0, ptr %i.ag, align 4, !tbaa !21435
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = load ptr, ptr %3, align 8, !tbaa !27710, !nonnull !400
  store ptr %i.ap, ptr %7, align 8, !tbaa !27539
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS9_9select1stIS5_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aq = trunc i64 %5 to i32
  %i.ar = shl i32 %i.aq, 1
  %i.as = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ar
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.au = trunc i64 %5 to i32
  %i.av = shl i32 %i.au, 1
  %i.aw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.av
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.at

bb.d:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %3, align 8, !tbaa !27710, !nonnull !400
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ay = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = ashr exact i64 %i.bd, 3
  store ptr %i.ax, ptr %6, align 8, !tbaa !27539
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS9_9select1stIS5_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bb, i64 noundef %i.be, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS9_9select1stIS5_EEEEEENS0_7move_opENS0_13adaptive_xbufIS6_S7_mEEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareINS3_4test16less_transparentESt4pairINS6_24movable_and_copyable_intES9_ENS4_9select1stIS9_EEEEEEPSA_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21435 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !21435  ; 2 uses
  %.not89 = icmp slt i32 %i.b, %i.c
  br i1 %.not89, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareINS3_4test16less_transparentESt4pairINS6_24movable_and_copyable_intES9_ENS4_9select1stIS9_EEEEEEPSA_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.c

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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21435
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 21 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS9_9select1stIS5_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %bb.d, !llvm.loop !28665

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS9_9select1stIS5_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i147.le = ptrtoaddr ptr %.114.i to i64    ; 4 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22607 ; 5 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS9_9select1stIS5_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !22605  ; 7 uses
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
  %wide.vec = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !21435, !alias.scope !28666
  %wide.vec155 = load <4 x i32>, ptr %next.gep153, align 4, !tbaa !21435, !alias.scope !28666
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21435, !alias.scope !28669, !noalias !28666
  store <4 x i32> %wide.vec155, ptr %next.gep151, align 4, !tbaa !21435, !alias.scope !28669, !noalias !28666
  store <4 x i32> zeroinitializer, ptr %next.gep152, align 4, !tbaa !21435, !alias.scope !28666
  store <4 x i32> zeroinitializer, ptr %next.gep153, align 4, !tbaa !21435, !alias.scope !28666
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !28671

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader.i ], [ %i.ac, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
end_hunk_13
begin_hunk_14_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container12vec_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0EEEEENS3_ISF_EESH_NS6_INS9_3dtl23flat_tree_value_compareINSC_16less_transparentESE_NSJ_9select1stISD_EEEEEENS0_7move_opEEET3_T_SS_T0_T1_RT2_SV_SR_NS0_9iter_sizeISU_E4typeESZ_SZ_SZ_T4_bT5_:bb.a
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !21435, !noalias !30203
  store i32 0, ptr %i.cs, align 4, !tbaa !21435, !noalias !30203
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !21435, !noalias !30203
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !21435, !noalias !30203
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !21435, !noalias !30203
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !21435, !noalias !30203
  store i32 0, ptr %i.cw, align 4, !tbaa !21435, !noalias !30203
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !21435, !noalias !30203
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !21435, !noalias !30203
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !21435, !noalias !30203
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i28, !llvm.loop !25482

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEENS3_INS5_12vec_iteratorIS9_Lb0EEEEESD_NS0_7inverseINS5_3dtl23flat_tree_value_compareINS6_16less_transparentES8_NSF_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SO_RT0_SQ_SR_SN_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !21435, !noalias !30206
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !21435, !noalias !30206
  store i32 0, ptr %i.dc, align 4, !tbaa !21435, !noalias !30206
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !21435, !noalias !30206
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !21435, !noalias !30206
  store i32 0, ptr %i.df, align 4, !tbaa !21435, !noalias !30206
  %i.di = load i32, ptr %i.db, align 4, !tbaa !21435, !noalias !30206
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !21435, !noalias !30206
  store i32 0, ptr %i.db, align 4, !tbaa !21435, !noalias !30206
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21435, !noalias !30206
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !21435, !noalias !30206
  store i32 0, ptr %i.dj, align 4, !tbaa !21435, !noalias !30206
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i29, !llvm.loop !25486

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !21435, !noalias !30209
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !21435, !noalias !30209
  store i32 0, ptr %i.dm, align 4, !tbaa !21435, !noalias !30209
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !21435, !noalias !30209
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !21435, !noalias !30209
  store i32 0, ptr %i.dp, align 4, !tbaa !21435, !noalias !30209
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !25492

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.w, %bb.v, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ], [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ], [ %.sroa.064.0, %bb.v ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !21563
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !1562
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !1562
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !1562
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !1562
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1840  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit ], [ %i.c, %bb.z ], [ %.pre187, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !21563
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !1840
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !30214

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30215)
  %i.eh = load ptr, ptr %6, align 8, !tbaa !21362, !noalias !30215
  store ptr %i.eh, ptr %0, align 8, !tbaa !21563, !alias.scope !30215
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEES8_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21563  ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !21563  ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !21563  ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.j, %i.f
  %i.l = ashr exact i64 %i.k, 3
  %i.m = load i32, ptr %i.a, align 4, !tbaa !21435
  store i32 %i.m, ptr %3, align 4, !tbaa !21435
  store i32 0, ptr %i.a, align 4, !tbaa !21435
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21435
  store i32 %i.q, ptr %i.o, align 4, !tbaa !21435
  store i32 0, ptr %i.p, align 4, !tbaa !21435
  %storemerge911.i = add i32 %i.n, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.r = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = icmp eq i64 %4, 2
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.r, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21435
  store i32 %i.v, ptr %i.t, align 4, !tbaa !21435
  store i32 0, ptr %i.u, align 4, !tbaa !21435
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21435
  store i32 %i.z, ptr %i.x, align 4, !tbaa !21435
  store i32 0, ptr %i.y, align 4, !tbaa !21435
  %storemerge9.i = add i32 %i.w, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i = add i64 %storemerge15.i, 1      ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21435
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !21435
  store i32 0, ptr %i.ab, align 4, !tbaa !21435
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21435
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !21435
  store i32 0, ptr %i.af, align 4, !tbaa !21435
  %storemerge9.i.1 = add i32 %i.ad, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %storemerge.i.1 = add i64 %storemerge15.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !21435
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !21435
  store i32 0, ptr %i.ai, align 4, !tbaa !21435
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21435
  store i32 %i.an, ptr %i.al, align 4, !tbaa !21435
  store i32 0, ptr %i.am, align 4, !tbaa !21435
  %storemerge9.i.epil = add i32 %i.ak, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21435
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !21435
  store i32 0, ptr %i.ao, align 4, !tbaa !21435
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21435
  store i32 %i.ar, ptr %i.p, align 4, !tbaa !21435
  store i32 0, ptr %i.aq, align 4, !tbaa !21435
  store ptr %i.a, ptr %8, align 8, !tbaa !21563
  store ptr %i.b, ptr %9, align 8, !tbaa !21563
  store ptr %i.d, ptr %10, align 8, !tbaa !21563
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.i, i64 noundef %i.l, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.as = trunc i64 %4 to i32
  %i.at = shl i32 %i.as, 1
  %i.au = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.at
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %bb.f

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11: ; preds = %.loopexit
  %i.av = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aw = trunc i64 %4 to i32
  %i.ax = shl i32 %i.aw, 1
  %i.ay = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10, %i.ax
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.av

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !21563
  store ptr %i.b, ptr %6, align 8, !tbaa !21563
  store ptr %i.d, ptr %7, align 8, !tbaa !21563
  %i.az = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.ba = ptrtoint ptr %i.a to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = ptrtoint ptr %i.d to i64
  %i.be = sub i64 %i.bd, %i.az
  %i.bf = ashr exact i64 %i.be, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bc, i64 noundef %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf.402", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !23281
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !23283
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !23284
  %i.f = load ptr, ptr %0, align 8, !tbaa !21362
  %i.g = load ptr, ptr %1, align 8, !tbaa !21362
  %i.h = load ptr, ptr %2, align 8, !tbaa !21362
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !21563
  store ptr %i.g, ptr %8, align 8, !tbaa !21563
  store ptr %i.h, ptr %9, align 8, !tbaa !21563
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSG_EEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !21362  ; 10 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !21563  ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21435
  %i.n = load i32, ptr %i.k, align 4, !tbaa !21435 ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 4, !tbaa !21435
  %i.p = load i32, ptr %i.l, align 4, !tbaa !21435
  store i32 %i.p, ptr %i.k, align 4, !tbaa !21435
  store i32 %i.n, ptr %i.l, align 4, !tbaa !21435
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !21435
  store i32 0, ptr %i.q, align 4, !tbaa !21435
  %i.t = load i32, ptr %i.r, align 4, !tbaa !21435
  store i32 %i.t, ptr %i.q, align 4, !tbaa !21435
  store i32 %i.s, ptr %i.r, align 4, !tbaa !21435
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.u = icmp ult i64 %i.i, 16
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !21563
  %i.v = load ptr, ptr %1, align 8, !tbaa !21362
  store ptr %i.v, ptr %12, align 8, !tbaa !21563
  %i.w = load ptr, ptr %2, align 8, !tbaa !21362
  store ptr %i.w, ptr %13, align 8, !tbaa !21563
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEEvT_SG_SG_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %1, align 8, !tbaa !21362  ; 8 uses
  %i.y = icmp ugt i64 %3, %4
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.z = lshr i64 %3, 1                           ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !21362 ; 2 uses
  %.not9.i = icmp eq ptr %i.ab, %i.x
  %.pre = ptrtoint ptr %i.x to i64                ; 3 uses
  br i1 %.not9.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !21435, !noalias !30218
  br label %bb.k

end_hunk_14
