inline.NumInlined: 3050
inline.NumDeleted: 1473
begin_hunk_0_@_ZN2v88internal6maglev22DestructivelyIntersectISt5tupleIJPNS1_9ValueNodeEiEES5_St8equal_toIS5_EEEvRNS0_7ZoneMapIT_T0_St4lessISA_EEERKSE_OT1_:bb.a

bb.d:                                             ; preds = %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit.thread, %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.031.046) #21
  %i.w = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.031.046, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20 ; 0 uses
  %i.x = load i64, ptr %i.h, align 8
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.h, align 8
  br label %bb.g

_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19: ; preds = %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit
  %i.z = icmp slt i32 %i.r, %i.q
  br i1 %i.z, label %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19.thread, label %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19.thread40

_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19.thread: ; preds = %.thread, %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.025.045) #21
  br label %bb.g

_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19.thread40: ; preds = %.thread, %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.031.046, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.025.045, i64 48
  %i.ad = load ptr, ptr %i.ab, align 8
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.031.046) #21
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19.thread40
  %i.ah = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.031.046, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20 ; 0 uses
  %i.ai = load i64, ptr %i.h, align 8
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19.thread40, %bb.e
  %i.ak = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.025.045) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19.thread, %bb.f, %bb.d
  %.sroa.025.1 = phi ptr [ %.sroa.025.045, %bb.d ], [ %i.aa, %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19.thread ], [ %i.ak, %bb.f ]
  %.sroa.031.2 = phi ptr [ %i.v, %bb.d ], [ %.sroa.031.046, %_ZStssIJPN2v88internal6maglev9ValueNodeEiEJS4_iEENSt26common_comparison_categoryIJDpDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIRT0_EEEEEE4typeERKSt5tupleIJDpS7_EERKSF_IJDpS9_EE.exit19.thread ], [ %i.ag, %bb.f ] ; 2 uses
  %i.al = icmp eq ptr %.sroa.031.2, %i.c
  br i1 %i.al, label %_ZNSt3mapISt5tupleIJPN2v88internal6maglev9ValueNodeEiEES5_St4lessIS6_ENS2_13ZoneAllocatorISt4pairIKS6_S5_EEEE5eraseESt23_Rb_tree_const_iteratorISC_ESG_.exit, label %bb.b, !llvm.loop !14

.critedge:                                        ; preds = %bb.b
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = icmp eq ptr %.sroa.031.046, %i.am
  br i1 %i.an, label %bb.h, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @_ZNSt8_Rb_treeISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_S5_ESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.ap)
  store ptr null, ptr %i.ao, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.aq, align 8
  store i64 0, ptr %i.h, align 8
  br label %_ZNSt3mapISt5tupleIJPN2v88internal6maglev9ValueNodeEiEES5_St4lessIS6_ENS2_13ZoneAllocatorISt4pairIKS6_S5_EEEE5eraseESt23_Rb_tree_const_iteratorISC_ESG_.exit

.lr.ph.i.i.i:                                     ; preds = %.critedge, %.lr.ph.i.i.i
  %.sroa.06.08.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.sroa.031.046, %.critedge ] ; 2 uses
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.08.i.i.i) #21 ; 2 uses
  %i.as = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20 ; 0 uses
  %i.at = load i64, ptr %i.h, align 8
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.h, align 8
  %i.av = icmp eq ptr %i.ar, %i.c
  br i1 %i.av, label %_ZNSt3mapISt5tupleIJPN2v88internal6maglev9ValueNodeEiEES5_St4lessIS6_ENS2_13ZoneAllocatorISt4pairIKS6_S5_EEEE5eraseESt23_Rb_tree_const_iteratorISC_ESG_.exit, label %.lr.ph.i.i.i, !llvm.loop !15

_ZNSt3mapISt5tupleIJPN2v88internal6maglev9ValueNodeEiEES5_St4lessIS6_ENS2_13ZoneAllocatorISt4pairIKS6_S5_EEEE5eraseESt23_Rb_tree_const_iteratorISC_ESG_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev16KnownNodeAspects29UpdateMayHaveAliasingContextsEPNS0_8compiler12JSHeapBrokerEPNS0_12LocalIsolateEPNS1_9ValueNodeE(ptr noundef nonnull align 8 captures(none) dereferenceable(352) %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 65535
  %i.d = icmp ne i64 %i.c, 110
  %.not1617 = icmp eq ptr %3, null
  %.not18 = or i1 %.not1617, %i.d
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0619 = phi ptr [ %i.f, %.lr.ph ], [ %3, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.0619, i64 -8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 65535
  %i.j = icmp ne i64 %i.i, 110
  %.not16 = icmp eq ptr %i.f, null
  %.not = or i1 %.not16, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = phi i64 [ %i.b, %bb.a ], [ %i.h, %.lr.ph ]
  %i.l = trunc i64 %i.k to i16
  switch i16 %i.l, label %bb.f [
    i16 107, label %_ZN2v88internal6maglev16KnownNodeAspects26ContextSlotLoadsAliasMergeENS2_21ContextSlotLoadsAliasES3_.exit
    i16 220, label %_ZN2v88internal6maglev16KnownNodeAspects26ContextSlotLoadsAliasMergeENS2_21ContextSlotLoadsAliasES3_.exit11
    i16 92, label %bb.g
    i16 99, label %bb.g
    i16 108, label %bb.b
    i16 76, label %bb.c
    i16 102, label %bb.d
    i16 142, label %bb.e
  ]

_ZN2v88internal6maglev16KnownNodeAspects26ContextSlotLoadsAliasMergeENS2_21ContextSlotLoadsAliasES3_.exit: ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 281 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %switch.inv = icmp ugt i8 %i.n, 1
  %spec.select = select i1 %switch.inv, i8 3, i8 1
  store i8 %spec.select, ptr %i.m, align 1
  br label %bb.g

_ZN2v88internal6maglev16KnownNodeAspects26ContextSlotLoadsAliasMergeENS2_21ContextSlotLoadsAliasES3_.exit11: ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 281 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %switch.and = and i8 %i.p, -3
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %i.q = select i1 %switch.selectcmp, i8 2, i8 3
  store i8 %i.q, ptr %i.o, align 1
  br label %bb.g

bb.b:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 3, ptr %i.r, align 1
  br label %bb.g

bb.c:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 3, ptr %i.s, align 1
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 3, ptr %i.t, align 1
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 3, ptr %i.u, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 3, ptr %i.v, align 1
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %._crit_edge, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %_ZN2v88internal6maglev16KnownNodeAspects26ContextSlotLoadsAliasMergeENS2_21ContextSlotLoadsAliasES3_.exit11, %_ZN2v88internal6maglev16KnownNodeAspects26ContextSlotLoadsAliasMergeENS2_21ContextSlotLoadsAliasES3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev16KnownNodeAspects24ClearUnstableNodeAspectsEb(ptr noundef nonnull align 8 dereferenceable(352) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = and i1 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 34) #20 ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout) #20, !inline_history !17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i, %bb.d
  store i8 0, ptr %i.f, align 8
  br label %_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit

.lr.ph.i:                                         ; preds = %bb.d, %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i
  %.sroa.04.07.i = phi ptr [ %i.y, %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i ], [ %i.j, %bb.d ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 44 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !range !5, !noundef !6
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 48
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 45
  store i8 0, ptr %i.r, align 1
  %i.s = load i32, ptr %i.m, align 8              ; 8 uses
  %i.t = and i32 %i.s, 1984
  switch i32 %i.t, label %bb.f [
    i32 0, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
    i32 64, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
    i32 448, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
    i32 1984, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = and i32 %i.s, 1536
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = or i32 %i.s, 448
  br label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = or i32 %i.s, 1984
  br label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i

_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i: ; preds = %bb.h, %bb.g, %bb.e, %bb.e, %bb.e, %bb.e
  %.0.i.i.i = phi i32 [ %i.x, %bb.h ], [ %i.w, %bb.g ], [ %i.s, %bb.e ], [ %i.s, %bb.e ], [ %i.s, %bb.e ], [ %i.s, %bb.e ]
  store i32 %.0.i.i.i, ptr %i.m, align 8
  store i8 0, ptr %i.n, align 4
  br label %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i

_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i: ; preds = %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i, %.lr.ph.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.07.i) #21 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %._crit_edge.i, label %.lr.ph.i

_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit: ; preds = %bb.c, %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr null, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void @_ZNSt8_Rb_treeISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_S5_ESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr null, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ak, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 0, ptr %i.ao, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal6maglev16KnownNodeAspects18CloneForLoopHeaderEbPNS1_11LoopEffectsEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(352) %0, i1 noundef zeroext %1, ptr noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 352
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_6maglev16KnownNodeAspectsEJRKS4_RbRPNS3_11LoopEffectsERPS1_EEEPT_DpOT0_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef 352) #20
  %.pre.i.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone3NewINS0_6maglev16KnownNodeAspectsEJRKS4_RbRPNS3_11LoopEffectsERPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_6maglev16KnownNodeAspectsEJRKS4_RbRPNS3_11LoopEffectsERPS1_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = add i64 %i.g, 352
  store i64 %i.i, ptr %i.c, align 8
  tail call void @_ZN2v88internal6maglev16KnownNodeAspectsC2ERKS2_bPNS1_11LoopEffectsEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(352) %i.h, ptr noundef nonnull align 8 dereferenceable(352) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull %3)
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev16KnownNodeAspectsC2ERKS2_bPNS1_11LoopEffectsEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(352) initializes((0, 8), (16, 20), (24, 32)) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(352) %1, i1 noundef zeroext %2, ptr noundef readonly captures(address) %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::tuple<v8::internal::maglev::ValueNode *, int>, std::pair<const std::tuple<v8::internal::maglev::ValueNode *, int>, v8::internal::maglev::ValueNode *>, std::_Select1st<std::pair<const std::tuple<v8::internal::maglev::ValueNode *, int>, v8::internal::maglev::ValueNode *>>, std::less<std::tuple<v8::internal::maglev::ValueNode *, int>>, v8::internal::ZoneAllocator<std::pair<const std::tuple<v8::internal::maglev::ValueNode *, int>, v8::internal::maglev::ValueNode *>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %6 = alloca %"class.std::tuple.395", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.398", align 8    ; 4 uses
  %8 = alloca %"struct.std::_Rb_tree<v8::internal::maglev::ValueNode *, std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>, std::_Select1st<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>>, std::less<v8::internal::maglev::ValueNode *>, v8::internal::ZoneAllocator<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::ValueNode *>>>::_Alloc_node", align 8 ; 4 uses
  %9 = alloca %"struct.std::_Rb_tree<v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey, std::pair<const v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey, v8::internal::ZoneMap<v8::internal::maglev::ValueNode *, v8::internal::maglev::ValueNode *>>, std::_Select1st<std::pair<const v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey, v8::internal::ZoneMap<v8::internal::maglev::ValueNode *, v8::internal::maglev::ValueNode *>>>, std::less<v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey>, v8::internal::ZoneAllocator<std::pair<const v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey, v8::internal::ZoneMap<v8::internal::maglev::ValueNode *, v8::internal::maglev::ValueNode *>>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %10 = alloca %"struct.std::_Rb_tree<v8::internal::maglev::ValueNode *, std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::NodeInfo>, std::_Select1st<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::NodeInfo>>, std::less<v8::internal::maglev::ValueNode *>, v8::internal::ZoneAllocator<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::NodeInfo>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %11 = alloca %"struct.std::_Rb_tree<v8::internal::maglev::ValueNode *, std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::NodeInfo>, std::_Select1st<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::NodeInfo>>, std::less<v8::internal::maglev::ValueNode *>, v8::internal::ZoneAllocator<std::pair<v8::internal::maglev::ValueNode *const, v8::internal::maglev::NodeInfo>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %12 = alloca %"struct.std::_Rb_tree<std::tuple<v8::internal::maglev::ValueNode *, int>, std::pair<const std::tuple<v8::internal::maglev::ValueNode *, int>, v8::internal::maglev::ValueNode *>, std::_Select1st<std::pair<const std::tuple<v8::internal::maglev::ValueNode *, int>, v8::internal::maglev::ValueNode *>>, std::less<std::tuple<v8::internal::maglev::ValueNode *, int>>, v8::internal::ZoneAllocator<std::pair<const std::tuple<v8::internal::maglev::ValueNode *, int>, v8::internal::maglev::ValueNode *>>>::_Alloc_node", align 8 ; 4 uses
  %13 = alloca %"struct.std::_Rb_tree<v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey, std::pair<const v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey, v8::internal::ZoneMap<v8::internal::maglev::ValueNode *, v8::internal::maglev::ValueNode *>>, std::_Select1st<std::pair<const v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey, v8::internal::ZoneMap<v8::internal::maglev::ValueNode *, v8::internal::maglev::ValueNode *>>>, std::less<v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey>, v8::internal::ZoneAllocator<std::pair<const v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey, v8::internal::ZoneMap<v8::internal::maglev::ValueNode *, v8::internal::maglev::ValueNode *>>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %14 = alloca %"struct.v8::internal::maglev::NodeInfo::ClearUnstableMapsOnCopy", align 8 ; 4 uses
  %15 = alloca %"struct.std::pair.45", align 8    ; 12 uses
  %16 = alloca %"struct.std::pair.56", align 8    ; 5 uses
  %17 = alloca %"struct.std::pair.63", align 8    ; 6 uses
  store ptr %4, ptr %i.a, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %1, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN2v88internal7ZoneMapINS0_6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_IPNS2_9ValueNodeES6_St4lessIS6_EEES7_IS4_EEC2ERKSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store ptr %0, ptr %13, align 8
  %i.i = call noundef ptr @_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE7_M_copyILb0ENSJ_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESO_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %13) ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %bb.c, !llvm.loop !18

_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %bb.c
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i.i8.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i8.i.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE7_M_copyERKSJ_.exit.i.i.i, label %bb.d, !llvm.loop !19

_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE7_M_copyERKSJ_.exit.i.i.i: ; preds = %bb.d
  store ptr %.0.i.i7.i.i.i.i.i, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  store ptr %i.i, ptr %i.c, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal7ZoneMapINS0_6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_IPNS2_9ValueNodeES6_St4lessIS6_EEES7_IS4_EEC2ERKSB_.exit

_ZN2v88internal7ZoneMapINS0_6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_IPNS2_9ValueNodeES6_St4lessIS6_EEES7_IS4_EEC2ERKSB_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE7_M_copyERKSJ_.exit.i.i.i
  %i.p = phi ptr [ %4, %bb.a ], [ %.pre, %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE7_M_copyERKSJ_.exit.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  store i64 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.0.0.copyload.i.i.i.i.i.i53 = load ptr, ptr %i.y, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i53, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i54, label %_ZN2v88internal7ZoneMapISt5tupleIJPNS0_6maglev9ValueNodeEiEES5_St4lessIS6_EEC2ERKS9_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal7ZoneMapINS0_6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_IPNS2_9ValueNodeES6_St4lessIS6_EEES7_IS4_EEC2ERKSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %i.x, ptr %12, align 8
  %i.ag = call noundef ptr @_ZNSt8_Rb_treeISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_S5_ESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull %i.af, ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(8) %12) ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i55 = phi ptr [ %i.ag, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i55, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i56 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i56, label %_ZNSt8_Rb_treeISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_S5_ESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %bb.f, !llvm.loop !18

end_hunk_0
