inline.NumInlined: 39742
inline.NumDeleted: 11729
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEv:bb.a
  %i.or = icmp eq ptr %.19.i.i.i.i.i.i.i87.i, %i.on
  br i1 %i.or, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i95.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i93.i

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i93.i: ; preds = %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i92.i
  %i.os = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i87.i, i64 32
  %i.ot = load i16, ptr %i.os, align 2
  %i.ou = icmp ult i16 %i.oj, %i.ot
  br i1 %i.ou, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i95.i, label %bb.al

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i95.i: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i93.i, %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i92.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store i32 0, ptr %i.f, align 4
  %i.ov = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_12RootConstantEJiRNS0_9RootIndexEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %.val15.val.i, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 2 dereferenceable(2) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  store ptr %i.ov, ptr %i.e, align 8
  %i.ow = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS2_RS7_EEES3_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ok, ptr noundef nonnull align 2 dereferenceable(2) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  %i.ox = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit96.i"

bb.al:                                            ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i93.i
  %i.oy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i87.i, i64 40
  %i.oz = load ptr, ptr %i.oy, align 8
  br label %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit96.i"

"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit96.i": ; preds = %bb.al, %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i95.i
  %.0.i.i.i.i94.i = phi ptr [ %i.ox, %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i95.i ], [ %i.oz, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit"

bb.am:                                            ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder11IsNullValueEPNS1_9ValueNodeE.exit.i
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.val.i = load ptr, ptr %i.pa, align 8      ; 4 uses
  %i.pb = icmp eq i8 %i.ar, 5
  %i.pc = select i1 %i.pb, i16 3, i16 4           ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.pc, ptr %i.a, align 2
  %i.pe = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 112
  %i.pf = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 104 ; 2 uses
  %.not10.i.i.i.i.i.i.i100.i = icmp eq ptr %i.pf, null
  br i1 %.not10.i.i.i.i.i.i.i100.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i112.i, label %.lr.ph.i.i.i.i.i.i.i101.i

.lr.ph.i.i.i.i.i.i.i101.i:                        ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i.i101.i
  %.012.i.i.i.i.i.i.i102.i = phi ptr [ %.1.i.i.i.i.i.i.i107.i, %.lr.ph.i.i.i.i.i.i.i101.i ], [ %i.pf, %bb.am ] ; 3 uses
  %.0811.i.i.i.i.i.i.i103.i = phi ptr [ %.19.i.i.i.i.i.i.i104.i, %.lr.ph.i.i.i.i.i.i.i101.i ], [ %i.pg, %bb.am ]
  %i.ph = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i102.i, i64 32
  %i.pi = load i16, ptr %i.ph, align 2
  %i.pj = icmp ult i16 %i.pi, %i.pc               ; 2 uses
  %.19.i.i.i.i.i.i.i104.i = select i1 %i.pj, ptr %.0811.i.i.i.i.i.i.i103.i, ptr %.012.i.i.i.i.i.i.i102.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i105.i = select i1 %i.pj, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i106.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i102.i, i64 %.1.in.v.i.i.i.i.i.i.i105.i
  %.1.i.i.i.i.i.i.i107.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i106.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i108.i = icmp eq ptr %.1.i.i.i.i.i.i.i107.i, null
  br i1 %.not.i.i.i.i.i.i.i108.i, label %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i109.i, label %.lr.ph.i.i.i.i.i.i.i101.i, !llvm.loop !9

_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i109.i: ; preds = %.lr.ph.i.i.i.i.i.i.i101.i
  %i.pk = icmp eq ptr %.19.i.i.i.i.i.i.i104.i, %i.pg
  br i1 %i.pk, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i112.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i110.i

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i110.i: ; preds = %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i109.i
  %i.pl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i104.i, i64 32
  %i.pm = load i16, ptr %i.pl, align 2
  %i.pn = icmp ult i16 %i.pc, %i.pm
  br i1 %i.pn, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i112.i, label %bb.an

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i112.i: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i110.i, %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i109.i, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4
  %i.po = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_12RootConstantEJiRNS0_9RootIndexEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %.val.val.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  store ptr %i.po, ptr %i.b, align 8
  %i.pp = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS2_RS7_EEES3_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.pd, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.pq = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit113.i"

bb.an:                                            ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i110.i
  %i.pr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i104.i, i64 40
  %i.ps = load ptr, ptr %i.pr, align 8
  br label %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit113.i"

"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit113.i": ; preds = %bb.an, %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i112.i
  %.0.i.i.i.i111.i = phi ptr [ %i.pq, %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i112.i ], [ %i.ps, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit"

"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit": ; preds = %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit.i", %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit40.i", %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit54.i", %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit68.i", %"_ZN2v88internal6maglev18MaglevGraphBuilder6SelectIZNS2_15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_EUlRNS2_13BranchBuilderEE_ZNS4_IS5_EES6_S8_SB_EUlvE_ZNS4_IS5_EES6_S8_SB_EUlvE0_EES8_S9_T0_T1_.exit.i", %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit82.i", %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit96.i", %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit113.i"
  %.sroa.0.0.i.in = phi ptr [ %.0.i.i.i.i94.i, %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit96.i" ], [ %.0.i.i.i.i111.i, %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit113.i" ], [ %.0.i.i.i.i80.i, %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit82.i" ], [ %.0.i.i.i.i.i, %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit.i" ], [ %.0.i.i.i.i38.i, %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit40.i" ], [ %.0.i.i.i.i52.i, %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit54.i" ], [ %.0.i.i.i.i66.i, %"_ZZN2v88internal6maglev18MaglevGraphBuilder15VisitTestTypeOfEvENK3$_0clENS0_11interpreter15TestTypeOfFlags11LiteralFlagENS0_9RootIndexE.exit68.i" ], [ %.0.i.i, %"_ZN2v88internal6maglev18MaglevGraphBuilder6SelectIZNS2_15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_EUlRNS2_13BranchBuilderEE_ZNS4_IS5_EES6_S8_SB_EUlvE_ZNS4_IS5_EES6_S8_SB_EUlvE0_EES8_S9_T0_T1_.exit.i" ] ; 2 uses
  %.sroa.0.0.i = ptrtoint ptr %.sroa.0.0.i.in to i64 ; 3 uses
  %i.pt = and i64 %.sroa.0.0.i, 7
  switch i64 %i.pt, label %.thread [
    i64 3, label %"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit.thread"
    i64 0, label %bb.ao
  ]

bb.ao:                                            ; preds = %"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit"
  %i.pu = load ptr, ptr %i.bo, align 8
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 -64
  store ptr %.sroa.0.0.i.in, ptr %i.pv, align 8
  br label %.thread

"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit.thread": ; preds = %"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit", %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit.thread.i, %_ZNK2v88internal6maglev18MaglevGraphBuilder11IsNullValueEPNS1_9ValueNodeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #33
  store ptr %i.br, ptr %i.an, align 8
  %i.pw = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_10TestTypeOfEJRNS0_11interpreter15TestTypeOfFlags11LiteralFlagEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.an, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %i.am)
  %i.px = load ptr, ptr %i.bo, align 8
  %i.py = getelementptr inbounds i8, ptr %i.px, i64 -64
  store ptr %i.pw, ptr %i.py, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #33
  br label %.thread

.thread:                                          ; preds = %"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit", %bb.ao, %"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit.thread", %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit
  %.sroa.03.2 = phi i64 [ 2, %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit ], [ 2, %"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit.thread" ], [ %.sroa.0.0.i, %bb.ao ], [ %.sroa.0.0.i, %"_ZN2v88internal6maglev18MaglevGraphBuilder15TryReduceTypeOfIZNS2_15VisitTestTypeOfEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeERKT_.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #33
  ret i64 %.sroa.03.2
}

declare noundef zeroext i8 @_ZN2v88internal11interpreter15TestTypeOfFlags6DecodeEh(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder26TryBuildScriptContextStoreERKNS0_8compiler20GlobalAccessFeedbackE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2v88internal8compiler20GlobalAccessFeedback9immutableEv(ptr noundef nonnull align 8 dereferenceable(20) %1) #33
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_ZNK2v88internal8compiler20GlobalAccessFeedback14script_contextEv(ptr noundef nonnull align 8 dereferenceable(20) %1) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.d, ptr %i.b) #33
  %i.f = tail call noundef i32 @_ZNK2v88internal8compiler20GlobalAccessFeedback10slot_indexEv(ptr noundef nonnull align 8 dereferenceable(20) %1) #33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder24StoreAndCacheContextSlotEPNS1_9ValueNodeEiS4_NS0_11ContextModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.e, i32 noundef %i.f, ptr noundef %i.j, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.k, %bb.b ], [ 3, %bb.a ]
  ret i64 %.sroa.0.0
}

declare noundef zeroext i1 @_ZNK2v88internal8compiler20GlobalAccessFeedback9immutableEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #6

declare ptr @_ZNK2v88internal8compiler20GlobalAccessFeedback14script_contextEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #6

declare noundef i32 @_ZNK2v88internal8compiler20GlobalAccessFeedback10slot_indexEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildPropertyCellStoreERKNS0_8compiler20GlobalAccessFeedbackE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::ObjectRef", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::PropertyCellRef", align 8 ; 11 uses
  %4 = alloca %"class.v8::internal::compiler::ObjectRef", align 8 ; 9 uses
  %5 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %8 = alloca [1 x %"class.v8::internal::compiler::MapRef"], align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.b = tail call ptr @_ZNK2v88internal8compiler20GlobalAccessFeedback13property_cellEv(ptr noundef nonnull align 8 dereferenceable(20) %1) #33
  store ptr %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 @_ZNK2v88internal8compiler15PropertyCellRef5CacheEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.d) #33
  br i1 %i.e, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = call ptr @_ZNK2v88internal8compiler15PropertyCellRef5valueEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.f) #33
  store ptr %i.g, ptr %4, align 8
  %i.h = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef18IsPropertyCellHoleEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 22, ptr %i.a, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = or i8 %i.l, 1
  store i8 %i.m, ptr %i.k, align 1
  %i.n = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge30

bb.d:                                             ; preds = %bb.b
  %i.o = call i32 @_ZNK2v88internal8compiler15PropertyCellRef16property_detailsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33 ; 2 uses
  %i.p = and i32 %i.o, 4
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.e, label %.critedge30

bb.e:                                             ; preds = %bb.d
  %9 = lshr i32 %i.o, 5
  %10 = and i32 %9, 7
  switch i32 %10, label %bb.s [
    i32 1, label %.critedge30
    i32 2, label %bb.f
    i32 3, label %bb.j
    i32 0, label %bb.q
    i32 4, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8544
  %i.s = load ptr, ptr %i.r, align 8
  %.sroa.025.0.copyload = load ptr, ptr %3, align 8
  call void @_ZN2v88internal8compiler23CompilationDependencies22DependOnGlobalPropertyENS1_15PropertyCellRefE(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr %.sroa.025.0.copyload) #33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -64
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.sroa.022.0.copyload = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.022.0.copyload, ptr %2, align 8
  %i.x = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsHeapNumberEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  %i.aa = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildCheckValueByReferenceEPNS1_9ValueNodeENS0_8compiler13HeapObjectRefENS0_16DeoptimizeReasonE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.w, ptr %i.z, i8 noundef zeroext 58)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder37BuildCheckNumericalValueOrByReferenceEPNS1_9ValueNodeENS0_8compiler9ObjectRefENS0_16DeoptimizeReasonE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8
  %i.ab = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder24BuildCheckNumericalValueEPNS1_9ValueNodeENS0_8compiler9ObjectRefENS0_16DeoptimizeReasonE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.w, ptr %.sroa.0.0.copyload.i, i8 noundef zeroext 58)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder37BuildCheckNumericalValueOrByReferenceEPNS1_9ValueNodeENS0_8compiler9ObjectRefENS0_16DeoptimizeReasonE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder37BuildCheckNumericalValueOrByReferenceEPNS1_9ValueNodeENS0_8compiler9ObjectRefENS0_16DeoptimizeReasonE.exit: ; preds = %bb.h, %bb.i
  %.sroa.05.0.i = phi i64 [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.critedge30

bb.j:                                             ; preds = %bb.e
  %i.ac = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  br i1 %i.ac, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ad = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  store ptr %i.ad, ptr %6, align 8
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = call ptr @_ZNK2v88internal8compiler13HeapObjectRef3mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ae) #33
  store ptr %i.af, ptr %5, align 8
  %i.ag = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %i.ag, label %bb.l, label %.critedge30

.critedge:                                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8544
  %i.aj = load ptr, ptr %i.ai, align 8
  %.sroa.021.0.copyload = load ptr, ptr %3, align 8
  call void @_ZN2v88internal8compiler23CompilationDependencies22DependOnGlobalPropertyENS1_15PropertyCellRefE(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr %.sroa.021.0.copyload) #33
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -64
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ao = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br i1 %i.ao, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ap = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  store ptr %i.ap, ptr %7, align 8
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = call ptr @_ZNK2v88internal8compiler13HeapObjectRef3mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.aq) #33 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.as = load ptr, ptr %i.c, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8544
  %i.au = load ptr, ptr %i.at, align 8
  call void @_ZN2v88internal8compiler23CompilationDependencies17DependOnStableMapENS1_6MapRefE(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr %i.ar) #33
  %i.av = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.an)
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %.critedge30, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store ptr %i.ar, ptr %8, align 8
  %i.ax = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.an, ptr nonnull %8, i64 1, ptr undef, i8 0, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ay = icmp eq i64 %i.ax, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %i.ay, label %.critedge30, label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.az = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder11GetSmiValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.an, i32 noundef 0)
  %i.ba = and i64 %i.az, 7
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.critedge30, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bc = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.be, ptr %i.bc) #33
  %i.bg = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21BuildStoreTaggedFieldEPNS1_9ValueNodeES4_iNS1_15StoreTaggedModeEPPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.bf, ptr noundef %i.an, i32 noundef 24, i8 noundef zeroext 0, ptr noundef null)
  br label %.critedge30

bb.q:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8544
  %i.bj = load ptr, ptr %i.bi, align 8
  %.sroa.04.0.copyload = load ptr, ptr %3, align 8
  call void @_ZN2v88internal8compiler23CompilationDependencies22DependOnGlobalPropertyENS1_15PropertyCellRefE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr %.sroa.04.0.copyload) #33
  %i.bk = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.bm, ptr %i.bk) #33
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -64
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21BuildStoreTaggedFieldEPNS1_9ValueNodeES4_iNS1_15StoreTaggedModeEPPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.bn, ptr noundef %i.br, i32 noundef 24, i8 noundef zeroext 0, ptr noundef null)
  br label %.critedge30

bb.r:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32
  unreachable

bb.s:                                             ; preds = %bb.e
  br label %.critedge30

.critedge30:                                      ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder37BuildCheckNumericalValueOrByReferenceEPNS1_9ValueNodeENS0_8compiler9ObjectRefENS0_16DeoptimizeReasonE.exit, %bb.q, %bb.s, %bb.p, %bb.d, %bb.e, %bb.k, %bb.m, %bb.n, %bb.o, %bb.c
  %.sroa.036.1 = phi i64 [ 1, %bb.c ], [ %i.bs, %bb.q ], [ 2, %bb.s ], [ 3, %bb.d ], [ %.sroa.05.0.i, %_ZN2v88internal6maglev18MaglevGraphBuilder37BuildCheckNumericalValueOrByReferenceEPNS1_9ValueNodeENS0_8compiler9ObjectRefENS0_16DeoptimizeReasonE.exit ], [ 3, %bb.k ], [ 1, %bb.m ], [ %i.bg, %bb.p ], [ 1, %bb.n ], [ 3, %bb.e ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %.critedge30
  %.sroa.036.2 = phi i64 [ %.sroa.036.1, %.critedge30 ], [ 3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i64 %.sroa.036.2
}

declare ptr @_ZNK2v88internal8compiler20GlobalAccessFeedback13property_cellEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK2v88internal8compiler15PropertyCellRef5CacheEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare ptr @_ZNK2v88internal8compiler15PropertyCellRef5valueEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef18IsPropertyCellHoleEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare i32 @_ZNK2v88internal8compiler15PropertyCellRef16property_detailsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN2v88internal8compiler23CompilationDependencies22DependOnGlobalPropertyENS1_15PropertyCellRefE(ptr noundef nonnull align 8 dereferenceable(80), ptr) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN2v88internal8compiler23CompilationDependencies17DependOnStableMapENS1_6MapRefE(ptr noundef nonnull align 8 dereferenceable(80), ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 3) i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i.i.i.i.i.i, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.i, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp ult ptr %i.k, %1                    ; 2 uses
  %.19.i.i.i.i.i.i.i.i = select i1 %i.l, ptr %.0811.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.m = icmp eq ptr %.19.i.i.i.i.i.i.i.i, %i.i
  br i1 %i.m, label %select.unfold.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp ult ptr %1, %i.o
  br i1 %i.p, label %select.unfold.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i

select.unfold.i.i:                                ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, %bb.a
  %i.q = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.f) #33
end_hunk_0
