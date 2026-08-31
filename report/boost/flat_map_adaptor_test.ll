Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 251
loop-unroll.NumUnrolled: 522
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEESC_SC_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7move_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !87, !noalias !2420
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !87, !noalias !2420
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !87, !noalias !2420
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !87, !noalias !2420
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !87, !noalias !2420
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !87, !noalias !2420
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !87, !noalias !2420
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !87, !noalias !2420
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28, !llvm.loop !2281

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
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !87, !noalias !2423
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !292, !noalias !2423
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !87, !noalias !2423
  %i.dh = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !294, !noalias !2423
  %i.di = load i32, ptr %i.db, align 4, !tbaa !87, !noalias !2423
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !292, !noalias !2423
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !87, !noalias !2423
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !294, !noalias !2423
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !2285

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !87, !noalias !2426
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !292, !noalias !2426
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87, !noalias !2426
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !294, !noalias !2426
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !2291

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.dn, %.lr.ph.i.i ], [ %i.cp, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2115
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
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !708
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !708
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !708
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !708
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !2235  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2235
  %.pre182 = load ptr, ptr %1, align 8, !tbaa !2235
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit ], [ %i.c, %bb.z ], [ %.pre182, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !2115
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !2235
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2431

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, %bb.a
  %i.eh = load ptr, ptr %6, align 8, !tbaa !2115
  store ptr %i.eh, ptr %0, align 8, !tbaa !2115
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1562 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.j, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %3, align 8, !tbaa !1559   ; 5 uses
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
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !2432

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
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i, !llvm.loop !2433

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %storemerge.in.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %.sroa.8.0.i, %.lr.ph.i.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %storemerge.in.lcssa.i.i
  store i32 %i.p, ptr %0, align 4, !tbaa !292
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !294
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.l, i64 noundef %i.i)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %bb.f, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, %bb.c, %.preheader.preheader.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !2434
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !2436
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !2437
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS4_mSD_EEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !87 ; 2 uses
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !87 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %.tr100, align 4, !tbaa !87
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !87
  %i.o = load i32, ptr %i.m, align 4, !tbaa !87
  store i32 %i.o, ptr %i.l, align 4, !tbaa !87
  store i32 %i.n, ptr %i.m, align 4, !tbaa !87
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
  %i.v = load i32, ptr %i.s, align 4, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.w = lshr i64 %.017.i, 1                      ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  %i.z = icmp slt i32 %i.y, %i.v                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.neg.i = xor i64 %i.w, -1
  %i.ab = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.z, ptr %i.aa, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.z, i64 %i.ab, i64 %i.w     ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !1997

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
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !87
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.ai, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr100, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.ak = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.01316.i81, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !87
  %i.an = icmp slt i32 %i.aj, %i.am               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.neg.i82 = xor i64 %i.ak, -1
  %i.ap = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.an, ptr %.01316.i81, ptr %i.ao ; 3 uses
  %.1.i84 = select i1 %i.an, i64 %i.ak, i64 %i.ap ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !2014

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
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairIiiES4_EET_S5_S5_S5_NS0_9iter_sizeIS5_E4typeES8_T0_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
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
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28, !llvm.loop !2281

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
  %i.dq = load i64, ptr %i.dp, align 4, !noalias !3402
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !87, !noalias !3402
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !292, !noalias !3402
  %i.ds = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !87, !noalias !3402
  %i.du = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !294, !noalias !3402
  %i.dv = load i32, ptr %i.dn, align 4, !tbaa !87, !noalias !3402
  store i32 %i.dv, ptr %i.do, align 4, !tbaa !292, !noalias !3402
  %i.dw = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !87, !noalias !3402
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !294, !noalias !3402
  store i64 %i.dq, ptr %i.dn, align 4, !noalias !3402
  %.not.i30 = icmp eq ptr %i.dn, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !2357

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.sroa.065.0, %bb.w ] ; 2 uses
  %i.dy = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.db, %bb.w ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !87, !noalias !3405
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !87, !noalias !3405
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !87, !noalias !3405
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !87, !noalias !3405
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !87, !noalias !3405
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !87, !noalias !3405
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !87, !noalias !3405
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !87, !noalias !3405
  %.not.i.i31 = icmp eq ptr %i.dz, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !2281

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ea, %.lr.ph.i.i ], [ %i.db, %bb.t ], [ %i.df, %.lr.ph.i28 ], [ %.sroa.065.0, %bb.v ], [ %.sroa.065.0, %bb.w ], [ %i.dp, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2115
  %i.eh = load ptr, ptr %1, align 8, !tbaa !2235  ; 6 uses
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
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !708
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !708
  store i64 %i.em, ptr %i.ej, align 8, !tbaa !708
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !708
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.en = load ptr, ptr %2, align 8, !tbaa !2235  ; 2 uses
  %i.eo = icmp eq ptr %i.ei, %i.en
  br i1 %i.eo, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = icmp eq ptr %i.en, %i.eh
  br i1 %i.ep, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eh, %bb.y ], [ %i.ei, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2235
  %.pre184 = load ptr, ptr %1, align 8, !tbaa !2235
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  %i.eq = phi ptr [ %i.eh, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit ], [ %i.eh, %bb.z ], [ %.pre184, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !2115
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8 ; 2 uses
  store ptr %i.er, ptr %1, align 8, !tbaa !2235
  %i.es = icmp ne i64 %.0141, 0
  %.neg = sext i1 %i.es to i64
  %i.et = add i64 %.0141, %.neg
  %i.eu = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.eu to i64
  %i.ev = add i64 %.sroa.speculated, %.neg24
  %i.ew = add i64 %.096140, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ew, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3410

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, %bb.a
  %i.ex = load ptr, ptr %6, align 8, !tbaa !2115
  store ptr %i.ex, ptr %0, align 8, !tbaa !2115
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SI_SI_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1562 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  %i.j = load ptr, ptr %3, align 8, !tbaa !3411, !nonnull !197 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.j, ptr %7, align 8, !tbaa !2088
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.k, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !1559   ; 5 uses
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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !3413

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
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i, !llvm.loop !3414

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %storemerge.in.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %.sroa.8.0.i, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %storemerge.in.lcssa.i.i
  store i32 %i.q, ptr %0, align 4, !tbaa !292
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !294
  store ptr %i.j, ptr %6, align 8, !tbaa !2088
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.m, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.j, ptr %5, align 8, !tbaa !2088
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
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !87   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !87     ; 2 uses
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !87
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 21 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !3415

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i140.le = ptrtoaddr ptr %.114.i to i64    ; 6 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1561 ; 3 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre107 = load ptr, ptr %4, align 8, !tbaa !1559 ; 10 uses
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
  %wide.vec = load <4 x i32>, ptr %next.gep145, align 4, !tbaa !87, !alias.scope !3416
  %wide.vec148 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !87, !alias.scope !3416
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !3419, !noalias !3416
  store <4 x i32> %wide.vec148, ptr %next.gep144, align 4, !tbaa !87, !alias.scope !3419, !noalias !3416
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !3421

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
  %i.ag = load i32, ptr %.079.i.i, align 4, !tbaa !87
  store i32 %i.ag, ptr %.010.i.i, align 4, !tbaa !292
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !294
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !3422

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.s, 3                     ; 6 uses
  %i.am = getelementptr i8, ptr %.114.i, i64 %.idx26.i ; 6 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !1559  ; 9 uses
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
  %wide.vec168 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !87, !alias.scope !3423
  %wide.vec171 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !87, !alias.scope !3423
  store <4 x i32> %wide.vec168, ptr %next.gep164, align 4, !tbaa !87, !alias.scope !3426, !noalias !3423
  store <4 x i32> %wide.vec171, ptr %next.gep165, align 4, !tbaa !87, !alias.scope !3426, !noalias !3423
  %index.next176 = add nuw i64 %index163, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next176, %n.vec161
  br i1 %i.aw, label %middle.block177, label %vector.body162, !llvm.loop !3428

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
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !87, !noalias !4959
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !87, !noalias !4959
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !87, !noalias !4959
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !87, !noalias !4959
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !87, !noalias !4959
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !87, !noalias !4959
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !87, !noalias !4959
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !87, !noalias !4959
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28, !llvm.loop !4683

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
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !87, !noalias !4962
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !292, !noalias !4962
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !87, !noalias !4962
  %i.dh = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !294, !noalias !4962
  %i.di = load i32, ptr %i.db, align 4, !tbaa !87, !noalias !4962
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !292, !noalias !4962
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !87, !noalias !4962
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !294, !noalias !4962
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29, !llvm.loop !4687

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !87, !noalias !4965
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !292, !noalias !4965
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87, !noalias !4965
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !294, !noalias !4965
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !4693

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.w, %bb.v, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ], [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ], [ %.sroa.064.0, %bb.v ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !390
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
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !708
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !708
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !708
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !708
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !2235  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2235
  %.pre182 = load ptr, ptr %1, align 8, !tbaa !2235
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit ], [ %i.c, %bb.z ], [ %.pre182, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !390
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !2235
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4970

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4971)
  %i.eh = load ptr, ptr %6, align 8, !tbaa !73, !noalias !4971
  store ptr %i.eh, ptr %0, align 8, !tbaa !390, !alias.scope !4971
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEES6_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !390    ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !390    ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !390    ; 4 uses
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
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !4974

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
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !4975

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i
  store i32 %i.n, ptr %i.a, align 4, !tbaa !292
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !294
  %i.z = load ptr, ptr %0, align 8, !tbaa !73
  store ptr %i.z, ptr %8, align 8, !tbaa !390
  %i.aa = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %i.aa, ptr %9, align 8, !tbaa !390
  %i.ab = load ptr, ptr %2, align 8, !tbaa !73
  store ptr %i.ab, ptr %10, align 8, !tbaa !390
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.i, i64 noundef %i.l, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !390
  store ptr %i.b, ptr %6, align 8, !tbaa !390
  store ptr %i.d, ptr %7, align 8, !tbaa !390
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
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !2434
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !2436
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !2437
  %i.f = load ptr, ptr %0, align 8, !tbaa !73
  %i.g = load ptr, ptr %1, align 8, !tbaa !73
  %i.h = load ptr, ptr %2, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !390
  store ptr %i.g, ptr %8, align 8, !tbaa !390
  store ptr %i.h, ptr %9, align 8, !tbaa !390
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !73     ; 9 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !390    ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87   ; 2 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !87   ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  store i32 %i.m, ptr %i.k, align 4, !tbaa !87
  store i32 %i.n, ptr %i.l, align 4, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !87
  %i.s = load i32, ptr %i.q, align 4, !tbaa !87
  store i32 %i.s, ptr %i.p, align 4, !tbaa !87
  store i32 %i.r, ptr %i.q, align 4, !tbaa !87
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %i.i, 16
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !390
  %i.u = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %i.u, ptr %12, align 8, !tbaa !390
  %i.v = load ptr, ptr %2, align 8, !tbaa !73
  store ptr %i.v, ptr %13, align 8, !tbaa !390
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %1, align 8, !tbaa !73     ; 8 uses
  %i.x = icmp ugt i64 %3, %4
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = lshr i64 %3, 1                           ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !73    ; 2 uses
  %.not9.i = icmp eq ptr %i.aa, %i.w
  %.pre = ptrtoint ptr %i.w to i64                ; 3 uses
  br i1 %.not9.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %.pre
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !87, !noalias !4976
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %i.af = phi ptr [ %i.w, %.lr.ph.i ], [ %i.am, %bb.k ] ; 2 uses
  %.010.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 2 uses
  %i.ag = lshr i64 %.010.i, 1                     ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !87, !noalias !4976
  %i.aj = icmp slt i32 %i.ai, %i.ae               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.neg.i = xor i64 %i.ag, -1
  %i.al = add i64 %.010.i, %.neg.i
  %i.am = select i1 %i.aj, ptr %i.ak, ptr %i.af   ; 3 uses
  %.1.i = select i1 %i.aj, i64 %i.al, i64 %i.ag   ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.k, !llvm.loop !4265

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
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !87, !noalias !4979
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i44
  %i.aw = phi ptr [ %i.k, %.lr.ph.i44 ], [ %i.bd, %bb.m ] ; 2 uses
  %.010.i45 = phi i64 [ %i.au, %.lr.ph.i44 ], [ %.1.i47, %bb.m ] ; 2 uses
  %i.ax = lshr i64 %.010.i45, 1                   ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEENS3_ISD_EESF_NS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSH_9select1stIiEEEEEENS0_7move_opEEET3_T_SR_T0_T1_RT2_SU_SQ_NS0_9iter_sizeIST_E4typeESY_SY_SY_T4_bT5_:bb.a
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !87, !noalias !12886
  store i32 %i.fb, ptr %i.ey, align 4, !tbaa !87, !noalias !12886
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !87, !noalias !12886
  %.not.i = icmp eq ptr %i.eq, %i.ar
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i34, !llvm.loop !12340

bb.y:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEENS3_INS_9container22stable_vector_iteratorIS6_Lb0EEEEESB_NS0_7inverseINS8_3dtl23flat_tree_value_compareISt4lessIiES5_NSD_9select1stIiEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.el, %i.ah           ; 2 uses
  br i1 %.not23, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.z, %.lr.ph.i35
  %.sroa.053.0 = phi ptr [ %i.fi, %.lr.ph.i35 ], [ %.sroa.076.0, %bb.z ]
  %.sroa.052.0 = phi ptr [ %i.fl, %.lr.ph.i35 ], [ %.sroa.071.0, %bb.z ]
  %i.fc = phi ptr [ %i.ff, %.lr.ph.i35 ], [ %i.el, %bb.z ]
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !9480, !noalias !12889
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !9479, !noalias !12889 ; 4 uses
  %i.fg = load ptr, ptr %.sroa.053.0, align 8, !tbaa !9480, !noalias !12894
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !9479, !noalias !12894 ; 3 uses
  %i.fj = load ptr, ptr %.sroa.052.0, align 8, !tbaa !9480, !noalias !12897
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !9479, !noalias !12897 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !87, !noalias !12900
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !292, !noalias !12900
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 12 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !87, !noalias !12900
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !294, !noalias !12900
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !87, !noalias !12900
  store i32 %i.ft, ptr %i.fm, align 4, !tbaa !292, !noalias !12900
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !87, !noalias !12900
  store i32 %i.fv, ptr %i.fp, align 4, !tbaa !294, !noalias !12900
  %.not.i36 = icmp eq ptr %i.ff, %i.ah
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i35, !llvm.loop !12353

bb.aa:                                            ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.gd, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ]
  %i.fw = phi ptr [ %i.fz, %.lr.ph.i.i ], [ %i.el, %bb.aa ]
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !9480, !noalias !12901
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !9479, !noalias !12901 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !9480, !noalias !12901
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !9479, !noalias !12901 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i32, ptr %i.ga, align 4, !tbaa !87, !noalias !12901
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !292, !noalias !12901
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !87, !noalias !12901
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !294, !noalias !12901
  %.not.i.i38 = icmp eq ptr %i.fz, %i.ah
  br i1 %.not.i.i38, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !12359

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i35, %.lr.ph.i.i, %.lr.ph.i34, %bb.aa, %bb.z, %bb.x, %bb.w
  %storemerge = phi ptr [ %i.ah, %bb.w ], [ %.sroa.071.0, %bb.z ], [ %i.el, %bb.x ], [ %i.gd, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ], [ %i.eu, %.lr.ph.i34 ], [ %i.fl, %.lr.ph.i35 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !9677
  %.neg104 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.c, i64 %.neg104 ; 3 uses
  %.not.i39 = icmp eq ptr %i.ah, %.sroa.076.0
  br i1 %.not.i39, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg104, 0
  br i1 %.not9.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -8 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !708
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !708
  store i64 %i.gn, ptr %i.gk, align 8, !tbaa !708
  store i64 %i.gm, ptr %i.gl, align 8, !tbaa !708
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.go = load ptr, ptr %2, align 8, !tbaa !2235  ; 2 uses
  %i.gp = icmp eq ptr %i.gj, %i.go
  br i1 %i.gp, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gq = icmp eq ptr %i.go, %i.c
  br i1 %i.gq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.ad, %bb.ac
  %.sink.i = phi ptr [ %i.c, %bb.ac ], [ %i.gj, %bb.ad ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2235
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !2235
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, %bb.ad, %.sink.split.i
  %i.gr = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit ], [ %i.c, %bb.ad ], [ %.pre191, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !9677
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -8 ; 2 uses
  store ptr %i.gs, ptr %1, align 8, !tbaa !2235
  %i.gt = icmp ne i64 %.0148, 0
  %.neg = sext i1 %i.gt to i64
  %i.gu = add i64 %.0148, %.neg
  %i.gv = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.gv to i64
  %i.gw = add i64 %.sroa.speculated, %.neg24
  %i.gx = add i64 %.0102147, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gx, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12906

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12907)
  %i.gy = load ptr, ptr %6, align 8, !tbaa !9677, !noalias !12907
  store ptr %i.gy, ptr %0, align 8, !tbaa !9677, !alias.scope !12907
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEES6_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9677   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !9677   ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !9677   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !9480
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !9480
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !9480
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  store i64 %i.q, ptr %3, align 4
  %.not8.i = icmp eq i64 %4, 1
  %i.r = trunc i64 %i.q to i32
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.s = add i64 %4, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.s, -4                       ; 4 uses
  %i.t = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.v, align 4
  store <2 x i64> %broadcast.splat, ptr %i.w, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !12910

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader19

.lr.ph.i.preheader19:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.8.0.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader19, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %.sroa.8.0.ph, %.lr.ph.i.preheader19 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.8.0
  store i64 %i.q, ptr %i.y, align 4
  %storemerge.i = add i64 %.sroa.8.0, 1           ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %4
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !12911

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i
  store i32 %i.r, ptr %i.p, align 8, !tbaa !292
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !294
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9677
  store ptr %i.ad, ptr %8, align 8, !tbaa !9677
  %i.ae = load ptr, ptr %1, align 8, !tbaa !9677
  store ptr %i.ae, ptr %9, align 8, !tbaa !9677
  %i.af = load ptr, ptr %2, align 8, !tbaa !9677
  store ptr %i.af, ptr %10, align 8, !tbaa !9677
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !9677
  store ptr %i.b, ptr %6, align 8, !tbaa !9677
  store ptr %i.d, ptr %7, align 8, !tbaa !9677
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !9480
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !9480
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !9480
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ai
  %i.ap = ashr exact i64 %i.ao, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.al, i64 noundef %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !2434
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !2436
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !2437
  %i.f = load ptr, ptr %0, align 8, !tbaa !9677
  %i.g = load ptr, ptr %1, align 8, !tbaa !9677
  %i.h = load ptr, ptr %2, align 8, !tbaa !9677
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !9677
  store ptr %i.g, ptr %8, align 8, !tbaa !9677
  store ptr %i.h, ptr %9, align 8, !tbaa !9677
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !9677   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !9677   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !87   ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !87   ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  store i32 %i.o, ptr %i.n, align 4, !tbaa !87
  store i32 %i.p, ptr %i.l, align 4, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.r, align 4, !tbaa !87
  %i.u = load i32, ptr %i.s, align 4, !tbaa !87
  store i32 %i.u, ptr %i.r, align 4, !tbaa !87
  store i32 %i.t, ptr %i.s, align 4, !tbaa !87
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.v = icmp ult i64 %i.i, 16
  %i.w = load ptr, ptr %0, align 8, !tbaa !9677   ; 5 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.w, ptr %11, align 8, !tbaa !9677
  %i.x = load ptr, ptr %1, align 8, !tbaa !9677
  store ptr %i.x, ptr %12, align 8, !tbaa !9677
  %i.y = load ptr, ptr %2, align 8, !tbaa !9677
  store ptr %i.y, ptr %13, align 8, !tbaa !9677
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %1, align 8, !tbaa !9677   ; 6 uses
  %i.aa = icmp ugt i64 %3, %4
  br i1 %i.aa, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit, label %bb.n

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit: ; preds = %bb.i
  %i.ab = lshr i64 %3, 1                          ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !9480
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !9479 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !9677
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9480, !noalias !12912 ; 3 uses
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !9480, !noalias !12912 ; 3 uses
  %.not9.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not9.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit_crit_edge, label %.lr.ph.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit_crit_edge: ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit
  %.pre77 = ptrtoint ptr %i.ah to i64
  br label %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit

.lr.ph.i:                                         ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = ashr exact i64 %i.al, 3
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !87, !noalias !12912
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %i.ao = phi ptr [ %i.z, %.lr.ph.i ], [ %i.ba, %bb.m ] ; 3 uses
  %.010.i = phi i64 [ %i.am, %.lr.ph.i ], [ %.1.i, %bb.m ] ; 2 uses
  %i.ap = lshr i64 %.010.i, 1                     ; 4 uses
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !9480, !noalias !12912
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9479, !noalias !12912
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i = phi ptr [ %i.ao, %bb.j ], [ %i.as, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !87, !noalias !12912
  %i.av = icmp slt i32 %i.au, %i.an
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i
  %i.aw = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !9480, !noalias !12912
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !9479, !noalias !12912
  %.neg.i = xor i64 %i.ap, -1
  %i.az = add i64 %.010.i, %.neg.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEESF_SF_NS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSG_9select1stIiEEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.preheader, %.lr.ph.i32
  %.sroa.049.0 = phi ptr [ %i.bz, %.lr.ph.i32 ], [ %i.bs, %.lr.ph.i32.preheader ]
  %.sroa.047.0 = phi ptr [ %i.cc, %.lr.ph.i32 ], [ %i.az, %.lr.ph.i32.preheader ]
  %i.bt = phi ptr [ %i.bw, %.lr.ph.i32 ], [ %i.ba, %.lr.ph.i32.preheader ]
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !9480, !noalias !16649
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !9479, !noalias !16649 ; 4 uses
  %i.bx = load ptr, ptr %.sroa.049.0, align 8, !tbaa !9480, !noalias !16654
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !9479, !noalias !16654 ; 3 uses
  %i.ca = load ptr, ptr %.sroa.047.0, align 8, !tbaa !9480, !noalias !16657
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !9479, !noalias !16657 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 4, !noalias !16660
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !87, !noalias !16660
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !292, !noalias !16660
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 12 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !87, !noalias !16660
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !294, !noalias !16660
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !87, !noalias !16660
  store i32 %i.cl, ptr %i.cf, align 4, !tbaa !292, !noalias !16660
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !87, !noalias !16660
  store i32 %i.cn, ptr %i.ch, align 4, !tbaa !294, !noalias !16660
  store i64 %i.ce, ptr %i.ck, align 4, !noalias !16660
  %.not.i33 = icmp eq ptr %i.bw, %i.ah
  br i1 %.not.i33, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i32, !llvm.loop !12572

bb.j:                                             ; preds = %bb.i
  %.not1.i.i = icmp eq ptr %i.av, %i.ah
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.au, %bb.j ]
  %i.co = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.av, %bb.j ]
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !9480, !noalias !16661
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !9479, !noalias !16661 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !9480, !noalias !16661
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !9479, !noalias !16661 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !87, !noalias !16661
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !87, !noalias !16661
  store i32 %i.cy, ptr %i.cs, align 4, !tbaa !87, !noalias !16661
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !87, !noalias !16661
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !87, !noalias !16661
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !87, !noalias !16661
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !87, !noalias !16661
  store i32 %i.db, ptr %i.da, align 4, !tbaa !87, !noalias !16661
  %.not.i.i = icmp eq ptr %i.cr, %i.ah
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !12340

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i32, %.lr.ph.i31, %.lr.ph.i.i, %bb.j, %.thread87, %.thread86, %bb.i
  %storemerge = phi ptr [ %i.ah, %bb.i ], [ %i.bk, %.lr.ph.i31 ], [ %i.ba, %.thread86 ], [ %i.cv, %.lr.ph.i.i ], [ %i.au, %bb.j ], [ %i.az, %.thread87 ], [ %i.cc, %.lr.ph.i32 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !9677
  %i.dd = load ptr, ptr %1, align 8, !tbaa !2235  ; 6 uses
  %.neg89 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %.neg89 ; 3 uses
  %i.df = load ptr, ptr %12, align 8, !tbaa !9677, !noalias !16666
  %.not.i34 = icmp eq ptr %i.ah, %i.df
  br i1 %.not.i34, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg89, 0
  br i1 %.not9.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -8 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 2 uses
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !708
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !708
  store i64 %i.dj, ptr %i.dg, align 8, !tbaa !708
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !708
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.dk = load ptr, ptr %2, align 8, !tbaa !2235  ; 2 uses
  %i.dl = icmp eq ptr %i.de, %i.dk
  br i1 %i.dl, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = icmp eq ptr %i.dk, %i.dd
  br i1 %i.dm, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.sink.i = phi ptr [ %i.dd, %bb.l ], [ %i.de, %bb.m ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2235
  %.pre106 = load ptr, ptr %1, align 8, !tbaa !2235
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, %bb.m, %.sink.split.i
  %i.dn = phi ptr [ %i.dd, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit ], [ %i.dd, %bb.m ], [ %.pre106, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !9677
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8 ; 2 uses
  store ptr %i.do, ptr %1, align 8, !tbaa !2235
  %i.dp = icmp ne i64 %.099, 0
  %.neg = sext i1 %i.dp to i64
  %i.dq = add i64 %.099, %.neg
  %i.dr = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.dr to i64
  %i.ds = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dt = add i64 %.08598, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dt, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16669

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !16670)
  %i.du = load ptr, ptr %6, align 8, !tbaa !9677, !noalias !16670
  store ptr %i.du, ptr %0, align 8, !tbaa !9677, !alias.scope !16670
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEES6_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9677   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !9677   ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !9677   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !9480
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !9480
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !9480
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  store i64 %i.q, ptr %4, align 4
  %.not8.i = icmp eq i64 %5, 1
  %i.r = trunc i64 %i.q to i32
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.s = add i64 %5, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %5, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.s, -4                       ; 4 uses
  %i.t = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.v, align 4
  store <2 x i64> %broadcast.splat, ptr %i.w, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !16673

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader20

.lr.ph.i.preheader20:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.8.0.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader20, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %.sroa.8.0.ph, %.lr.ph.i.preheader20 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.sroa.8.0
  store i64 %i.q, ptr %i.y, align 4
  %storemerge.i = add i64 %.sroa.8.0, 1           ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !16674

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i
  store i32 %i.r, ptr %i.p, align 8, !tbaa !292
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !294
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9677
  store ptr %i.ad, ptr %10, align 8, !tbaa !9677
  %i.ae = load ptr, ptr %1, align 8, !tbaa !9677
  store ptr %i.ae, ptr %11, align 8, !tbaa !9677
  %i.af = load ptr, ptr %2, align 8, !tbaa !9677
  store ptr %i.af, ptr %12, align 8, !tbaa !9677
  %i.ag = load ptr, ptr %3, align 8, !tbaa !3411, !nonnull !197
  store ptr %i.ag, ptr %13, align 8, !tbaa !2088
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES6_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %3, align 8, !tbaa !3411, !nonnull !197
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !9677
  store ptr %i.b, ptr %7, align 8, !tbaa !9677
  store ptr %i.d, ptr %8, align 8, !tbaa !9677
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !9480
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !9480
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !9480
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.ak
  %i.ar = ashr exact i64 %i.aq, 3
  store ptr %i.ah, ptr %9, align 8, !tbaa !2088
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.an, i64 noundef %i.ar, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.074 = alloca ptr, align 8                ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9677   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !9677   ; 6 uses
  %.not81 = icmp eq ptr %i.a, %i.b
  br i1 %.not81, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_22stable_vector_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !9677   ; 2 uses
  %.not82 = icmp eq ptr %i.b, %i.c
  br i1 %.not82, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_22stable_vector_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !9480 ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9479
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !87   ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not83 = icmp slt i32 %i.i, %i.j
  br i1 %.not83, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_22stable_vector_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !9480 ; 3 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !9480 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.l
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.s
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not10.i = icmp eq ptr %i.e, %i.k
  br i1 %.not10.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.t = phi ptr [ %i.ae, %bb.h ], [ %i.a, %bb.e ] ; 3 uses
  %.011.i = phi i64 [ %.1.i, %bb.h ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = lshr i64 %.011.i, 1                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !9480, !noalias !16675
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9479, !noalias !16675
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i: ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !87, !noalias !16675
  %.not9.i = icmp slt i32 %i.z, %i.j
  br i1 %.not9.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i
  %i.aa = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !9480, !noalias !16675
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9479, !noalias !16675
  %.neg.i = xor i64 %i.u, -1
  %i.ad = add i64 %.011.i, %.neg.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i
  %i.ae = phi ptr [ %i.ac, %bb.g ], [ %i.t, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i ] ; 3 uses
  %.1.i = phi i64 [ %i.ad, %bb.g ], [ %i.u, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i ] ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !16678

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !9480 ; 2 uses
  %.pre111 = ptrtoint ptr %.pre to i64
  br label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit, %bb.e
  %.pre-phi112 = phi i64 [ %.pre111, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.m, %bb.e ]
  %i.af = phi ptr [ %.pre, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.k, %bb.e ] ; 5 uses
  %i.ag = phi ptr [ %i.ae, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.a, %bb.e ] ; 10 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !9677
  %i.ah = load ptr, ptr %1, align 8, !tbaa !9677
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9480 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %.pre-phi112             ; 4 uses
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1561 ; 3 uses
  %.not.i7 = icmp ugt i64 %i.al, %i.an
  br i1 %.not.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not.i.i.i = icmp eq ptr %i.ai, %i.af
  br i1 %.not.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container22stable_vector_iteratorIS4_Lb0EEEEEvT_m.exit, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i: ; preds = %bb.i
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 %i.ak
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !9479, !noalias !16679 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.ag, %i.ap
  br i1 %.not3.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container22stable_vector_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i
  %i.aq = load ptr, ptr %4, align 8, !tbaa !1559
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %i.ar = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.ag, %.lr.ph.i.preheader.i ] ; 3 uses
  %.04.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.aq, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !87
  store i32 %i.at, ptr %.04.i.i, align 4, !tbaa !292
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !87
  %i.aw = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !294
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !9480
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !9479 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i8 = icmp eq ptr %i.az, %i.ap
  br i1 %.not.i.i8, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container22stable_vector_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !11888

bb.j:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not.i.i10.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i10.i, label %_ZN5boost4moveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit17.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit11.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit11.i: ; preds = %bb.j
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.an
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9479, !noalias !16682 ; 4 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !1559  ; 2 uses
  %.not3.i12.i = icmp eq ptr %i.ag, %i.bc
  br i1 %.not3.i12.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit21.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit11.i, %.lr.ph.i13.i
  %i.be = phi ptr [ %i.bm, %.lr.ph.i13.i ], [ %i.ag, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit11.i ] ; 3 uses
  %.04.i14.i = phi ptr [ %i.bn, %.lr.ph.i13.i ], [ %i.bd, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit11.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !87
  store i32 %i.bg, ptr %.04.i14.i, align 4, !tbaa !292
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %.04.i14.i, i64 4
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_SI_T0_RT1_:bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !18112  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18124 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18124 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 4
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !73
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1562 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18124
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18124
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18124
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.b, ptr %4, align 8, !tbaa !18112
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !18124
  store ptr %i.a, ptr %5, align 8, !tbaa !18112
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !18124
  store ptr %i.x, ptr %6, align 8, !tbaa !18112
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !18124
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread
  store i64 0, ptr %i.bf, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6
  store ptr %i.b, ptr %7, align 8, !tbaa !18112
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !18124
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !18124
  store ptr %i.a, ptr %8, align 8, !tbaa !18112
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18124
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !18124
  store ptr %i.x, ptr %9, align 8, !tbaa !18112
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !18124
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !18124
  %i.bq = load ptr, ptr %3, align 8, !tbaa !1559
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEES6_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef %i.bq, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEES6_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18112  ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18112  ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !18112  ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18124 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18124 ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18124 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i64, ptr %i.a, align 4             ; 4 uses
  store i64 %i.al, ptr %3, align 4
  %.not8.i = icmp eq i64 %4, 1
  %i.am = trunc i64 %i.al to i32
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.an = add i64 %4, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.an, -4                      ; 4 uses
  %i.ao = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.aq, align 4
  store <2 x i64> %broadcast.splat, ptr %i.ar, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !22740

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader26

.lr.ph.i.preheader26:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.8.0.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader26, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %.sroa.8.0.ph, %.lr.ph.i.preheader26 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.8.0
  store i64 %i.al, ptr %i.at, align 4
  %storemerge.i = add i64 %.sroa.8.0, 1           ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %4
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !22741

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i
  store i32 %i.am, ptr %i.a, align 4, !tbaa !292
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !294
  %i.ay = load <2 x ptr>, ptr %0, align 8, !tbaa !19111
  store <2 x ptr> %i.ay, ptr %8, align 16, !tbaa !19111
  %i.az = load <2 x ptr>, ptr %1, align 8, !tbaa !19111
  store <2 x ptr> %i.az, ptr %9, align 16, !tbaa !19111
  %i.ba = load <2 x ptr>, ptr %2, align 8, !tbaa !19111
  store <2 x ptr> %i.ba, ptr %10, align 16, !tbaa !19111
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.e

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_.exit: ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18124 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !18124 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18124 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !18112
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !18124
  store ptr %i.b, ptr %6, align 8, !tbaa !18112
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !18124
  store ptr %i.d, ptr %7, align 8, !tbaa !18112
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !18124
  %i.bk = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bl = ptrtoint ptr %i.bc to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = shl nsw i64 %i.bm, 4
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !73
  %i.bp = ptrtoint ptr %i.b to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3                 ; 2 uses
  %i.bt = add nsw i64 %i.bs, %i.bn
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !73
  %i.bv = ptrtoint ptr %i.a to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = sub i64 %i.bt, %i.by
  %i.ca = ptrtoint ptr %i.bg to i64
  %i.cb = sub i64 %i.ca, %i.bk
  %i.cc = shl nsw i64 %i.cb, 4
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.ce = ptrtoint ptr %i.d to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = add nsw i64 %i.ch, %i.cc
  %i.cj = sub i64 %i.ci, %i.bs
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bz, i64 noundef %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 16 ; 5 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %17 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %18 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %19 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %20 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %21 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %22 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %23 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !2434
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !2436
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !19111
  store <2 x ptr> %i.f, ptr %7, align 16, !tbaa !19111
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !19111
  store <2 x ptr> %i.g, ptr %8, align 16, !tbaa !19111
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !19111
  store <2 x ptr> %i.h, ptr %9, align 16, !tbaa !19111
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !18112  ; 12 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !18112  ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87   ; 2 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !87   ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  store i32 %i.m, ptr %i.k, align 4, !tbaa !87
  store i32 %i.n, ptr %i.l, align 4, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !87
  %i.s = load i32, ptr %i.q, align 4, !tbaa !87
  store i32 %i.s, ptr %i.p, align 4, !tbaa !87
  store i32 %i.r, ptr %i.q, align 4, !tbaa !87
  br label %bb.ag

bb.g:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %i.i, 16
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !18112
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18124
  store ptr %i.w, ptr %i.u, align 8, !tbaa !18124
  %i.x = load <2 x ptr>, ptr %1, align 8, !tbaa !19111
  store <2 x ptr> %i.x, ptr %12, align 16, !tbaa !19111
  %i.y = load <2 x ptr>, ptr %2, align 8, !tbaa !19111
  store <2 x ptr> %i.y, ptr %13, align 16, !tbaa !19111
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.ag

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18124 ; 8 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !18112 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18124 ; 12 uses
  %i.ae = icmp ugt i64 %3, %4
  br i1 %i.ae, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.af = lshr i64 %3, 1                          ; 6 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ah = ptrtoint ptr %i.k to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = add nsw i64 %i.ak, %i.af                ; 4 uses
  %or.cond.i = icmp ult i64 %i.al, 128
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.af
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit

bb.l:                                             ; preds = %bb.j
  %i.an = icmp sgt i64 %i.al, 0
  %i.ao = lshr i64 %i.al, 7                       ; 2 uses
  %i.ap = or disjoint i64 %i.ao, -144115188075855872
  %i.aq = select i1 %i.an, i64 %i.ao, i64 %i.ap   ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SK_SK_T0_RT1_:bb.a
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !18112  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18124 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18124 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 4
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !73
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1562 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18124
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18124
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18124
  %i.bc = load ptr, ptr %3, align 8, !tbaa !3411, !nonnull !197
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.b, ptr %5, align 8, !tbaa !18112
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ax, ptr %i.bd, align 8, !tbaa !18124
  store ptr %i.a, ptr %6, align 8, !tbaa !18112
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.az, ptr %i.be, align 8, !tbaa !18124
  store ptr %i.x, ptr %7, align 8, !tbaa !18112
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !18124
  store ptr %i.bc, ptr %8, align 8, !tbaa !2088
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread
  store i64 0, ptr %i.bg, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6
  store ptr %i.b, ptr %9, align 8, !tbaa !18112
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !18124
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !18124
  store ptr %i.a, ptr %10, align 8, !tbaa !18112
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18124
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !18124
  store ptr %i.x, ptr %11, align 8, !tbaa !18112
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !18124
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !18124
  %i.br = load ptr, ptr %3, align 8, !tbaa !3411, !nonnull !197
  store ptr %i.br, ptr %12, align 8, !tbaa !2088
  %i.bs = load ptr, ptr %4, align 8, !tbaa !1559
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEES6_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef %i.bs, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEES6_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18112  ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18112  ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !18112  ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18124 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18124 ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18124 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i64, ptr %i.a, align 4             ; 4 uses
  store i64 %i.al, ptr %4, align 4
  %.not8.i = icmp eq i64 %5, 1
  %i.am = trunc i64 %i.al to i32
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.an = add i64 %5, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %5, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.an, -4                      ; 4 uses
  %i.ao = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.aq, align 4
  store <2 x i64> %broadcast.splat, ptr %i.ar, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !27230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader27

.lr.ph.i.preheader27:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.8.0.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader27, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %.sroa.8.0.ph, %.lr.ph.i.preheader27 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.sroa.8.0
  store i64 %i.al, ptr %i.at, align 4
  %storemerge.i = add i64 %.sroa.8.0, 1           ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !27231

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i
  store i32 %i.am, ptr %i.a, align 4, !tbaa !292
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !294
  %i.ay = load <2 x ptr>, ptr %0, align 8, !tbaa !19111
  store <2 x ptr> %i.ay, ptr %10, align 16, !tbaa !19111
  %i.az = load <2 x ptr>, ptr %1, align 8, !tbaa !19111
  store <2 x ptr> %i.az, ptr %11, align 16, !tbaa !19111
  %i.ba = load <2 x ptr>, ptr %2, align 8, !tbaa !19111
  store <2 x ptr> %i.ba, ptr %12, align 16, !tbaa !19111
  %i.bb = load ptr, ptr %3, align 8, !tbaa !3411, !nonnull !197
  store ptr %i.bb, ptr %13, align 8, !tbaa !2088
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES6_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.e

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_T0_.exit: ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18124 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !18124 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !18124 ; 3 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !3411, !nonnull !197
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !18112
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bd, ptr %i.bj, align 8, !tbaa !18124
  store ptr %i.b, ptr %7, align 8, !tbaa !18112
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bf, ptr %i.bk, align 8, !tbaa !18124
  store ptr %i.d, ptr %8, align 8, !tbaa !18112
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !18124
  %i.bm = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bd to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = shl nsw i64 %i.bo, 4
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !73
  %i.br = ptrtoint ptr %i.b to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = add nsw i64 %i.bu, %i.bp
  %i.bw = load ptr, ptr %i.bd, align 8, !tbaa !73
  %i.bx = ptrtoint ptr %i.a to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 3
  %i.cb = sub i64 %i.bv, %i.ca
  %i.cc = ptrtoint ptr %i.bh to i64
  %i.cd = sub i64 %i.cc, %i.bm
  %i.ce = shl nsw i64 %i.cd, 4
  %i.cf = load ptr, ptr %i.bh, align 8, !tbaa !73
  %i.cg = ptrtoint ptr %i.d to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3
  %i.ck = add nsw i64 %i.cj, %i.ce
  %i.cl = sub i64 %i.ck, %i.bu
  store ptr %i.bi, ptr %9, align 8, !tbaa !2088
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.cb, i64 noundef %i.cl, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18112  ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18112  ; 8 uses
  %.not85 = icmp eq ptr %i.a, %i.b
  br i1 %.not85, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_14deque_iteratorISE_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !18112  ; 2 uses
  %.not86 = icmp eq ptr %i.b, %i.c
  br i1 %.not86, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_14deque_iteratorISE_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18124 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 5 uses
  %i.k = add nsw i64 %i.j, -1                     ; 5 uses
  %or.cond.i = icmp ult i64 %i.k, 128             ; 2 uses
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -8
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %i.j, 1
  %i.n = lshr i64 %i.k, 7                         ; 2 uses
  %i.o = or disjoint i64 %i.n, -144115188075855872
  %i.p = select i1 %i.m, i64 %i.n, i64 %i.o       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = shl nsw i64 %i.p, 7
  %i.t = sub nsw i64 %i.k, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.t
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %i.u, %bb.e ]
  %i.v = load i32, ptr %.0.i, align 4, !tbaa !87
  %i.w = load i32, ptr %i.b, align 4, !tbaa !87   ; 2 uses
  %.not87 = icmp slt i32 %i.v, %i.w
  br i1 %.not87, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_14deque_iteratorISE_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18124 ; 4 uses
  %i.z = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = shl nsw i64 %i.ab, 4
  %i.ad = add nsw i64 %i.ac, %i.j
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !73  ; 2 uses
  %i.af = ptrtoint ptr %i.a to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = sub i64 %i.ad, %i.ai                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18124 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.z
  %i.ao = shl nsw i64 %i.an, 4
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.aq = ptrtoint ptr %i.c to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  %i.au = sub i64 %i.ao, %i.j
  %i.av = add i64 %i.au, %i.at                    ; 3 uses
  %i.aw = icmp ugt i64 %i.aj, %i.av
  br i1 %i.aw, label %bb.s, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit
  %.not13.i = icmp eq i64 %i.aj, 0
  br i1 %.not13.i, label %_ZN5boost7movelib11upper_boundINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i, %bb.k
  %i.ax = phi ptr [ %i.bx, %bb.k ], [ %i.ae, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i ] ; 2 uses
  %.sroa.11.219.i = phi ptr [ %.sroa.11.218.i, %bb.k ], [ %i.y, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i ] ; 4 uses
  %.sroa.0.116.i = phi ptr [ %.sroa.0.115.i, %bb.k ], [ %i.a, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i ] ; 4 uses
  %.014.i = phi i64 [ %.1.i, %bb.k ], [ %i.aj, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i ] ; 2 uses
  %i.ay = lshr i64 %.014.i, 1                     ; 5 uses
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.az = ptrtoint ptr %.sroa.0.116.i to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = add nsw i64 %i.bc, %i.ay                ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.bd, 128
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.116.i, i64 %i.ay
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bf = icmp sgt i64 %i.bd, 0
  %i.bg = lshr i64 %i.bd, 7                       ; 2 uses
  %i.bh = or disjoint i64 %i.bg, -144115188075855872
  %i.bi = select i1 %i.bf, i64 %i.bg, i64 %i.bh   ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %.sroa.11.219.i, i64 %i.bi ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !73, !noalias !27232
  %i.bl = shl nsw i64 %i.bi, 7
  %i.bm = sub nsw i64 %i.bd, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bm
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i: ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.116.i, %.lr.ph.i ], [ %i.bn, %bb.h ], [ %i.be, %bb.g ] ; 2 uses
end_hunk_6
