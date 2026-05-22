inline.NumInlined: 1090
inline.NumDeleted: 738
begin_hunk_0_@_ZNSt10_HashtableIjSt4pairIKjSt14_List_iteratorIS0_IjPN6hermes2vm8CallableEEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #22
  br label %_ZNSt10_HashtableIjSt4pairIKjSt14_List_iteratorIS0_IjPN6hermes2vm8CallableEEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIjSt4pairIKjSt14_List_iteratorIS0_IjPN6hermes2vm8CallableEEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !23
  store ptr %.0.i, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18ConsoleHostContext9clearTaskEj(ptr noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !504
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !438 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit, label %bb.c, !llvm.loop !510

bb.e:                                             ; preds = %bb.a
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = urem i64 %i.h, %i.j                      ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !505  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !438  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = icmp eq i32 %1, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.s = icmp eq i32 %1, %i.v
  br i1 %i.s, label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !507

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.t, %bb.g ], [ %i.o, %bb.f ]
  %i.t = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !438 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = urem i64 %i.w, %i.j
  %.not19.i.i.i.i = icmp eq i64 %i.x, %i.k
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !507

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit.thread, !llvm.loop !507

_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.o, %bb.f ], [ %i.t, %bb.g ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !511 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !145
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !145
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !23 ; 3 uses
  %i.ag = load i32, ptr %i.y, align 8, !tbaa !3
  %i.ah = zext i32 %i.ag to i64
  %i.ai = urem i64 %i.ah, %i.af                   ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !505 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit
  %.0.i.i.i.i = phi ptr [ %i.al, %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit ], [ %i.am, %bb.i ] ; 4 uses
  %i.am = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !438 ; 2 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.am, %.sroa.06.1.i.i
  br i1 %.not.i.i.i.i3, label %_ZNSt10_HashtableIjSt4pairIKjSt14_List_iteratorIS0_IjPN6hermes2vm8CallableEEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i, label %bb.i, !llvm.loop !512

_ZNSt10_HashtableIjSt4pairIKjSt14_List_iteratorIS0_IjPN6hermes2vm8CallableEEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i: ; preds = %bb.i
  %i.an = icmp eq ptr %.0.i.i.i.i, %i.al
  %i.ao = load ptr, ptr %.sroa.06.1.i.i, align 8, !tbaa !438 ; 4 uses
  %.not18.i.i.i.i4 = icmp eq ptr %i.ao, null      ; 2 uses
  br i1 %i.an, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt14_List_iteratorIS0_IjPN6hermes2vm8CallableEEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i4, label %._crit_edge.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = zext i32 %i.aq to i64
  %i.as = urem i64 %i.ar, %i.af                   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.as, %i.ai
  br i1 %.not9.i.i.i.i.i, label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb0EEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.as
  store ptr %i.al, ptr %i.at, align 8, !tbaa !505
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.l, %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.al
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !437
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.ak, align 8, !tbaa !505
  br label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb0EEE.exit

bb.o:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt14_List_iteratorIS0_IjPN6hermes2vm8CallableEEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i4, label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb0EEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64
  %i.az = urem i64 %i.ay, %i.af                   ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.az, %i.ai
  br i1 %.not17.i.i.i.i, label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb0EEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  store ptr %.0.i.i.i.i, ptr %i.ba, align 8, !tbaa !505
  br label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb0EEE.exit

_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb0EEE.exit: ; preds = %bb.k, %bb.n, %bb.o, %bb.p, %bb.q
  %i.bb = load ptr, ptr %.sroa.06.1.i.i, align 8, !tbaa !438
  store ptr %i.bb, ptr %.0.i.i.i.i, align 8, !tbaa !438
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.1.i.i, i64 noundef 24) #22
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !504
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !504
  br label %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit.thread

_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE4findERSC_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb0EEE.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEZNS0_18ConsoleHostContextC1ERNS1_7RuntimeEE3$_0E9_M_invokeERKSt9_Any_dataOS3_S5_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !513   ; 3 uses
  %.sroa.01.04.i.i.i = load ptr, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.sroa.01.04.i.i.i, %.val
  br i1 %.not5.i.i.i, label %"_ZSt10__invoke_rIvRZN6hermes18ConsoleHostContextC1ERNS0_2vm7RuntimeEE3$_0JPNS2_7HadesGCERNS2_12RootAcceptorEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.01.06.i.i.i = phi ptr [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.01.04.i.i.i, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i.i, i64 24
  %i.b = load ptr, ptr %2, align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19, !inline_history !515
  %.sroa.01.0.i.i.i = load ptr, ptr %.sroa.01.06.i.i.i, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.01.0.i.i.i, %.val
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIvRZN6hermes18ConsoleHostContextC1ERNS0_2vm7RuntimeEE3$_0JPNS2_7HadesGCERNS2_12RootAcceptorEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %.lr.ph.i.i.i

"_ZSt10__invoke_rIvRZN6hermes18ConsoleHostContextC1ERNS0_2vm7RuntimeEE3$_0JPNS2_7HadesGCERNS2_12RootAcceptorEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %.lr.ph.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEZNS0_18ConsoleHostContextC1ERNS1_7RuntimeEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6hermes18ConsoleHostContextC1ERNS1_2vm7RuntimeEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 1, label %bb.d
    i32 0, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !31
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes18ConsoleHostContextC1ERNS1_2vm7RuntimeEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !158
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes18ConsoleHostContextC1ERNS1_2vm7RuntimeEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6hermes18ConsoleHostContextC1ERNS1_2vm7RuntimeEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.d, %bb.a, %bb.c
  ret i1 false
}

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN6hermes2vm15instrumentation10PerfEvents5beginEv() local_unnamed_addr #2

declare void @_ZN6hermes2vm7Runtime6createERKNS0_13RuntimeConfigE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.292") align 8, ptr noundef nonnull align 8 dereferenceable(269)) local_unnamed_addr #2

declare void @_ZN6hermes2vm16TimeLimitMonitor11getOrCreateEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8) local_unnamed_addr #2

declare void @_ZN6hermes2vm16TimeLimitMonitor12watchRuntimeERNS0_7RuntimeENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr noundef nonnull align 8 dereferenceable(121), ptr noundef nonnull align 8 dereferenceable(9816), i64) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1, i64 noundef %i.a) #19
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !196
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !196
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
}

declare ptr @_ZN6hermes2vm6Domain6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm13RuntimeModule6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEEjOSt10shared_ptrINS_3hbc14BCProviderBaseEENS0_18RuntimeModuleFlagsEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), i8, ptr noundef byval(%"class.llvh::StringRef") align 8) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm16SamplingProfiler6enableEd(double noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm16SamplingProfiler7disableEv() local_unnamed_addr #2

declare void @_ZN6hermes2vm16SamplingProfiler21dumpChromeTraceGlobalERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() local_unnamed_addr #2

declare void @_ZN6hermes2vm7Runtime14printExceptionERN4llvh11raw_ostreamENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(36), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall0ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEEb(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i1 noundef zeroext) local_unnamed_addr #2

declare { i64, i64 } @_ZN6hermes2vm18StatSamplingThread4stopEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

declare void @_ZN6hermes2vm12ProcessStats4Info9printJSONERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #13

declare void @_ZN6hermes2vm18StatSamplingThreadC1ENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE(ptr noundef nonnull align 8 dereferenceable(184), i64) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm18StatSamplingThreadD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184)) unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm6GCBase18runtimeWillExecuteEv(ptr noundef nonnull align 8 dereferenceable(717)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm7Runtime11runBytecodeEOSt10shared_ptrINS_3hbc14BCProviderBaseEENS0_18RuntimeModuleFlagsEN4llvh9StringRefENS0_6HandleINS0_11EnvironmentEEENSA_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(16), i8, ptr, i64, ptr, i64) local_unnamed_addr #2

declare void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN6hermes2vm7Runtime16clearKeptObjectsEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime9drainJobsEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC7collectENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN6hermes2vm7Runtime14printHeapStatsERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #13

declare noundef zeroext i1 @_ZN6hermes2vm15instrumentation10PerfEvents17endAndInsertStatsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSNSt8__detail15_List_node_baseE", !9, i64 0, !9, i64 8}
!9 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !9, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"_ZTSNSt8__detail17_List_node_headerE", !8, i64 0, !14, i64 16}
!14 = !{!"long", !5, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSSt10_HashtableIjSt4pairIKjSt14_List_iteratorIS0_IjPN6hermes2vm8CallableEEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE", !17, i64 0, !14, i64 8, !19, i64 16, !14, i64 24, !21, i64 32, !20, i64 48}
!17 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!18 = !{!"any p2 pointer", !10, i64 0}
!19 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !20, i64 0}
!20 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!21 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !22, i64 0, !14, i64 8}
!22 = !{!"float", !5, i64 0}
!23 = !{!16, !14, i64 8}
!24 = !{!21, !22, i64 0}
!25 = !{!26, !4, i64 80}
!26 = !{!"_ZTSN6hermes18ConsoleHostContextE", !27, i64 0, !30, i64 24, !4, i64 80}
!27 = !{!"_ZTSNSt7__cxx114listISt4pairIjPN6hermes2vm8CallableEESaIS6_EEE", !28, i64 0}
!28 = !{!"_ZTSNSt7__cxx1110_List_baseISt4pairIjPN6hermes2vm8CallableEESaIS6_EEE", !29, i64 0}
!29 = !{!"_ZTSNSt7__cxx1110_List_baseISt4pairIjPN6hermes2vm8CallableEESaIS6_EE10_List_implE", !13, i64 0}
!30 = !{!"_ZTSSt13unordered_mapIjSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEESt4hashIjESt8equal_toIjESaIS1_IKjS7_EEE", !16, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSN6hermes18ConsoleHostContextE", !10, i64 0}
!33 = !{!34, !10, i64 24}
!34 = !{!"_ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEE", !35, i64 0, !10, i64 24}
!35 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!36 = !{!35, !10, i64 16}
!37 = !{!38, !39, i64 8}
!38 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!39 = !{!"p1 _ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEE", !10, i64 0}
!40 = !{!38, !39, i64 16}
!41 = !{i64 0, i64 16, !42}
!42 = !{!5, !5, i64 0}
!43 = distinct !{null}
!44 = !{!45, !46, i64 8}
!45 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !46, i64 8}
!46 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !10, i64 0}
!47 = !{!48, !56, i64 192}
!48 = !{!"_ZTSN6hermes2vm7GCScopeE", !49, i64 0, !46, i64 8, !5, i64 16, !50, i64 144, !56, i64 192, !56, i64 200, !4, i64 208}
!49 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !10, i64 0}
!50 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !51, i64 0, !55, i64 16}
!51 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !52, i64 0}
!52 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !53, i64 0}
!53 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !54, i64 0}
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!316 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_ELb1ELb1EE", !317, i64 0}
!317 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EE", !318, i64 0}
!318 = !{!"_ZTSSt5tupleIJPN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EEE", !319, i64 0}
!319 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EEE", !320, i64 0}
!320 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm7HadesGC8ExecutorELb0EE", !321, i64 0}
!321 = !{!"p1 _ZTSN6hermes2vm7HadesGC8ExecutorE", !10, i64 0}
!322 = !{!"_ZTSSt10unique_ptrIN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EE", !323, i64 0}
!323 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_ELb1ELb1EE", !324, i64 0}
!324 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EE", !325, i64 0}
!325 = !{!"_ZTSSt5tupleIJPN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EEE", !326, i64 0}
!326 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EEE", !327, i64 0}
!327 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm7HadesGC15CollectionStatsELb0EE", !328, i64 0}
!328 = !{!"p1 _ZTSN6hermes2vm7HadesGC15CollectionStatsE", !10, i64 0}
!329 = !{!"_ZTSN6hermes2vm7HadesGC14CompacteeStateE", !10, i64 0, !271, i64 8, !10, i64 16, !271, i64 24, !330, i64 32}
!330 = !{!"_ZTSSt10shared_ptrIN6hermes2vm7HadesGC11HeapSegmentEE", !331, i64 0}
!331 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm7HadesGC11HeapSegmentELN9__gnu_cxx12_Lock_policyE2EE", !287, i64 0, !126, i64 8}
!332 = !{!"_ZTSN6hermes2vm7HadesGC9NativeIDsE", !4, i64 0, !4, i64 4}
!333 = !{!"_ZTSSt6vectorISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE", !334, i64 0}
!334 = !{!"_ZTSSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE", !335, i64 0}
!335 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE12_Vector_implE", !38, i64 0}
!336 = !{!"_ZTSSt6vectorISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE", !337, i64 0}
!337 = !{!"_ZTSSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE", !338, i64 0}
!338 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE12_Vector_implE", !339, i64 0}
!339 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE17_Vector_impl_dataE", !340, i64 0, !340, i64 8, !340, i64 16}
!340 = !{!"p1 _ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEE", !10, i64 0}
!341 = !{!"_ZTSSt6vectorISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE", !342, i64 0}
!342 = !{!"_ZTSSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE", !343, i64 0}
!343 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE12_Vector_implE", !344, i64 0}
!344 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE17_Vector_impl_dataE", !345, i64 0, !345, i64 8, !345, i64 16}
!345 = !{!"p1 _ZTSSt8functionIFvRN6hermes2vm12HeapSnapshotEEE", !10, i64 0}
!346 = !{!"_ZTSN6hermes2vm15IdentifierTableE", !347, i64 0, !353, i64 24, !356, i64 48, !4, i64 80}
!347 = !{!"_ZTSN6hermes2vm15IdentifierTable18ConservativeVectorINS1_11LookupEntryEEE", !348, i64 0}
!348 = !{!"_ZTSSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE", !349, i64 0}
!349 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE", !350, i64 0}
!350 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE12_Vector_implE", !351, i64 0}
!351 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE17_Vector_impl_dataE", !352, i64 0, !352, i64 8, !352, i64 16}
!352 = !{!"p1 _ZTSN6hermes2vm15IdentifierTable11LookupEntryE", !10, i64 0}
!353 = !{!"_ZTSN4llvh9BitVectorE", !354, i64 0, !4, i64 16}
!354 = !{!"_ZTSN4llvh15MutableArrayRefImEE", !355, i64 0}
!355 = !{!"_ZTSN4llvh8ArrayRefImEE", !264, i64 0, !14, i64 8}
!356 = !{!"_ZTSN6hermes2vm6detail19IdentifierHashTableE", !357, i64 0, !360, i64 16, !4, i64 24, !4, i64 28}
!357 = !{!"_ZTSN6hermes12CompactTableE", !358, i64 0}
!358 = !{!"_ZTSN6hermes12CompactArrayE", !4, i64 0, !359, i64 4, !110, i64 8}
!359 = !{!"_ZTSN6hermes12CompactArray5ScaleE", !5, i64 0}
!360 = !{!"p1 _ZTSN6hermes2vm15IdentifierTableE", !10, i64 0}
!361 = !{!"_ZTSN6hermes2vm14SymbolRegistryE", !209, i64 0, !362, i64 8}
!362 = !{!"_ZTSN4llvh8DenseSetIN6hermes2vm8SymbolIDENS_12DenseMapInfoIS3_EEEE", !363, i64 0}
!363 = !{!"_ZTSN4llvh6detail12DenseSetImplIN6hermes2vm8SymbolIDENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_EE", !364, i64 0}
!364 = !{!"_ZTSN4llvh8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEEE", !365, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!365 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIN6hermes2vm8SymbolIDEEE", !10, i64 0}
!366 = !{!"_ZTSSt10unique_ptrIN6hermes2vm12JSLibStorageESt14default_deleteIS2_EE", !367, i64 0}
!367 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm12JSLibStorageESt14default_deleteIS2_ELb1ELb1EE", !368, i64 0}
!368 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm12JSLibStorageESt14default_deleteIS2_EE", !369, i64 0}
!369 = !{!"_ZTSSt5tupleIJPN6hermes2vm12JSLibStorageESt14default_deleteIS2_EEE", !370, i64 0}
!370 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm12JSLibStorageESt14default_deleteIS2_EEE", !371, i64 0}
!371 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm12JSLibStorageELb0EE", !372, i64 0}
!372 = !{!"p1 _ZTSN6hermes2vm12JSLibStorageE", !10, i64 0}
!373 = !{!"p1 _ZTSN6hermes2vm9CodeBlockE", !10, i64 0}
!374 = !{!"p1 _ZTSN6hermes2vm13RuntimeModuleE", !10, i64 0}
!375 = !{!"_ZTSN4llvh12simple_ilistIN6hermes2vm13RuntimeModuleEJEEE", !376, i64 0}
!376 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes2vm13RuntimeModuleELb0ELb0EvEEEE", !377, i64 0}
!377 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes2vm13RuntimeModuleELb0ELb0EvEEEE", !378, i64 0}
!378 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !379, i64 0, !379, i64 8}
!379 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !10, i64 0}
!380 = !{!"_ZTSN6hermes2vm14CrashTraceNoopE"}
!381 = !{!"_ZTSN4llvh15MutableArrayRefIN6hermes2vm17PinnedHermesValueEEE", !382, i64 0}
!382 = !{!"_ZTSN4llvh8ArrayRefIN6hermes2vm17PinnedHermesValueEEE", !56, i64 0, !14, i64 8}
!383 = !{!"_ZTSN6hermes2vm14StackFramePtrTILb0EEE", !56, i64 0}
!384 = !{!"_ZTSN6hermes18StackOverflowGuardE", !14, i64 0, !14, i64 8}
!385 = !{!"_ZTSSt5arrayIN6hermes2vm17PinnedHermesValueELm8EE", !5, i64 0}
!386 = !{!"_ZTSSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE", !387, i64 0}
!387 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE", !388, i64 0}
!388 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE12_Vector_implE", !389, i64 0}
!389 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!390 = !{!"_ZTSSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE", !391, i64 0}
!391 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE", !392, i64 0}
!392 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE12_Vector_implE", !393, i64 0}
!393 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE17_Vector_impl_dataE", !394, i64 0, !394, i64 8, !394, i64 16}
!394 = !{!"p2 _ZTSN6hermes2vm8JSObjectE", !18, i64 0}
!395 = !{!"_ZTSSt6vectorIPN6hermes2vm8CallableESaIS3_EE", !396, i64 0}
!396 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE", !397, i64 0}
!397 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE12_Vector_implE", !398, i64 0}
!398 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE17_Vector_impl_dataE", !399, i64 0, !399, i64 8, !399, i64 16}
!399 = !{!"p2 _ZTSN6hermes2vm8CallableE", !18, i64 0}
!400 = !{!"_ZTSSt5dequeIPN6hermes2vm8CallableESaIS3_EE", !401, i64 0}
!401 = !{!"_ZTSSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE", !402, i64 0}
!402 = !{!"_ZTSNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE11_Deque_implE", !403, i64 0}
!403 = !{!"_ZTSNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE16_Deque_impl_dataE", !404, i64 0, !14, i64 8, !406, i64 16, !406, i64 48}
!404 = !{!"p3 _ZTSN6hermes2vm8CallableE", !405, i64 0}
!405 = !{!"any p3 pointer", !18, i64 0}
!406 = !{!"_ZTSSt15_Deque_iteratorIPN6hermes2vm8CallableERS3_PS3_E", !399, i64 0, !399, i64 8, !399, i64 16, !404, i64 24}
!407 = !{!"_ZTSSt10unique_ptrIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EE", !408, i64 0}
!408 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_ELb1ELb1EE", !409, i64 0}
!409 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EE", !410, i64 0}
!410 = !{!"_ZTSSt5tupleIJPN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EEE", !411, i64 0}
!411 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EEE", !412, i64 0}
!412 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm20CodeCoverageProfilerELb0EE", !413, i64 0}
!413 = !{!"p1 _ZTSN6hermes2vm20CodeCoverageProfilerE", !10, i64 0}
!414 = !{!"_ZTSSt6atomicIhE", !415, i64 0}
!415 = !{!"_ZTSSt13__atomic_baseIhE", !5, i64 0}
!416 = !{!"_ZTSSt6vectorISt10shared_ptrIN6hermes3hbc14BCProviderBaseEESaIS4_EE", !417, i64 0}
!417 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN6hermes3hbc14BCProviderBaseEESaIS4_EE", !418, i64 0}
!418 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc14BCProviderBaseEESaIS4_EE12_Vector_implE", !419, i64 0}
!419 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc14BCProviderBaseEESaIS4_EE17_Vector_impl_dataE", !420, i64 0, !420, i64 8, !420, i64 16}
!420 = !{!"p1 _ZTSSt10shared_ptrIN6hermes3hbc14BCProviderBaseEE", !10, i64 0}
!421 = !{!"p1 _ZTSN6hermes4inst4InstE", !10, i64 0}
!422 = !{!"branch_weights", i32 1, i32 1999}
!423 = !{!"branch_weights", i32 0, i32 1}
!424 = distinct !{!424, !425}
!425 = !{!"llvm.loop.mustprogress"}
!426 = !{!427}
!427 = distinct !{!427, !428, !"_ZN6hermes18ConsoleHostContext11dequeueTaskEv: argument 0"}
!428 = distinct !{!428, !"_ZN6hermes18ConsoleHostContext11dequeueTaskEv"}
!429 = !{!430, !431, i64 8}
!430 = !{!"_ZTSSt4pairIjPN6hermes2vm8CallableEE", !4, i64 0, !431, i64 8}
!431 = !{!"p1 _ZTSN6hermes2vm8CallableE", !10, i64 0}
!432 = !{!430, !4, i64 0}
!433 = !{!174, !164, i64 280}
!434 = !{!194, !195, i64 32}
!435 = !{!436, !436, i64 0}
!436 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!437 = !{!16, !20, i64 16}
!438 = !{!19, !20, i64 0}
!439 = distinct !{!439, !425}
!440 = distinct !{!440, !425}
!441 = distinct !{null, null, null, null, null, null}
!442 = !{!38, !39, i64 0}
!443 = !{!444}
!444 = distinct !{!444, !445, !"_ZSt19__relocate_object_aISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!445 = distinct !{!445, !"_ZSt19__relocate_object_aISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEES8_SaIS8_EEvPT_PT0_RT1_"}
!446 = !{!447}
!447 = distinct !{!447, !445, !"_ZSt19__relocate_object_aISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!448 = !{!444, !447}
!449 = distinct !{!449, !425}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZSt19__relocate_object_aISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!452 = distinct !{!452, !"_ZSt19__relocate_object_aISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEES8_SaIS8_EEvPT_PT0_RT1_"}
!453 = !{!454}
!454 = distinct !{!454, !452, !"_ZSt19__relocate_object_aISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!455 = !{!451, !454}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev: argument 0"}
!458 = distinct !{!458, !"_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev"}
!459 = !{!460, !472, i64 240}
!460 = !{!"_ZTSN6hermes3hbc14BCProviderBaseE", !5, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !461, i64 24, !463, i64 40, !465, i64 56, !465, i64 72, !465, i64 88, !465, i64 104, !466, i64 120, !465, i64 136, !468, i64 152, !465, i64 168, !4, i64 184, !470, i64 192, !470, i64 208, !470, i64 224, !472, i64 240, !133, i64 248}
!461 = !{!"_ZTSN4llvh8ArrayRefIN6hermes10StringKind5EntryEEE", !462, i64 0, !14, i64 8}
!462 = !{!"p1 _ZTSN6hermes10StringKind5EntryE", !10, i64 0}
!463 = !{!"_ZTSN4llvh8ArrayRefIjEE", !464, i64 0, !14, i64 8}
!464 = !{!"p1 int", !10, i64 0}
!465 = !{!"_ZTSN4llvh8ArrayRefIhEE", !110, i64 0, !14, i64 8}
!466 = !{!"_ZTSN4llvh8ArrayRefIN6hermes6bigint16BigIntTableEntryEEE", !467, i64 0, !14, i64 8}
!467 = !{!"p1 _ZTSN6hermes6bigint16BigIntTableEntryE", !10, i64 0}
!468 = !{!"_ZTSN4llvh8ArrayRefIN6hermes16RegExpTableEntryEEE", !469, i64 0, !14, i64 8}
!469 = !{!"p1 _ZTSN6hermes16RegExpTableEntryE", !10, i64 0}
!470 = !{!"_ZTSN4llvh8ArrayRefISt4pairIjjEEE", !471, i64 0, !14, i64 8}
!471 = !{!"p1 _ZTSSt4pairIjjE", !10, i64 0}
!472 = !{!"p1 _ZTSN6hermes3hbc9DebugInfoE", !10, i64 0}
!473 = !{!474, !110, i64 0}
!474 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!475 = !{!474, !110, i64 16}
!476 = !{!477, !478, i64 0}
!477 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE17_Vector_impl_dataE", !478, i64 0, !478, i64 8, !478, i64 16}
!478 = !{!"p1 _ZTSN6hermes16StringTableEntryE", !10, i64 0}
!479 = !{!477, !478, i64 16}
!480 = !{!481, !481, i64 0}
!481 = !{!"p1 _ZTSN6hermes17PageAccessTrackerE", !10, i64 0}
!482 = !{!483, !164, i64 8}
!483 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageISt6threadLb0EEE", !484, i64 0, !164, i64 8}
!484 = !{!"_ZTSN4llvh21AlignedCharArrayUnionISt6threadcccccccccEE", !485, i64 0}
!485 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm8EEE", !5, i64 0}
!486 = !{ptr @_ZN6hermes3hbc14BCProviderBaseD2Ev}
!487 = distinct !{null, null}
!488 = distinct !{ptr @_ZN6hermes17OwnedMemoryBufferD2Ev, null, null}
!489 = !{ptr @_ZN6hermes17OwnedMemoryBufferD2Ev}
!490 = !{!491, !492, i64 0}
!491 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EE", !492, i64 0, !126, i64 8}
!492 = !{!"p1 _ZTSN6hermes3hbc14BCProviderBaseE", !10, i64 0}
!493 = !{!494, !124, i64 0}
!494 = !{!"_ZTSNSt19_Sp_counted_deleterIPN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !124, i64 0}
!495 = distinct !{null, null}
!496 = distinct !{null, null}
!497 = !{!498, !124, i64 16}
!498 = !{!"_ZTSSt19_Sp_counted_deleterIPN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !129, i64 0, !494, i64 16}
!499 = distinct !{null}
!500 = !{!501, !4, i64 0}
!501 = !{!"_ZTSSt4pairIKjSt14_List_iteratorIS_IjPN6hermes2vm8CallableEEEE", !4, i64 0, !502, i64 8}
!502 = !{!"_ZTSSt14_List_iteratorISt4pairIjPN6hermes2vm8CallableEEE", !9, i64 0}
!503 = !{!9, !9, i64 0}
!504 = !{!16, !14, i64 24}
!505 = !{!20, !20, i64 0}
!506 = distinct !{!506, !425}
!507 = distinct !{!507, !425}
!508 = !{!16, !20, i64 48}
!509 = distinct !{!509, !425}
!510 = distinct !{!510, !425}
!511 = !{!502, !9, i64 0}
!512 = distinct !{!512, !425}
!513 = !{!514, !32, i64 0}
!514 = !{!"_ZTSZN6hermes18ConsoleHostContextC1ERNS_2vm7RuntimeEE3$_0", !32, i64 0}
!515 = distinct !{null, null, null, null}
end_hunk_1
