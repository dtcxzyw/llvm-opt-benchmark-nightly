inline.NumInlined: 962
inline.NumDeleted: 597
begin_hunk_0_@_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE7extractERS4_:bb.a
  br i1 %.not19.i, label %bb.c, label %..loopexit_crit_edge21.i, !llvm.loop !37

..loopexit_crit_edge21.i:                         ; preds = %bb.d
  br label %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread, !llvm.loop !37

_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3113)
  %i.aa = icmp eq ptr %.020.i, %i.h
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !23, !noalias !3113 ; 4 uses
  %.not19.i18 = icmp eq ptr %i.ab, null           ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit
  br i1 %.not19.i18, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread32, %bb.e
  %i.ac = phi ptr [ %i.i, %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread32 ], [ %i.w, %bb.e ] ; 2 uses
  %.1.i3638 = phi ptr [ %i.h, %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread32 ], [ %.020.i, %bb.e ] ; 2 uses
  %i.ad = phi ptr [ %i.q, %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread32 ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !35, !noalias !3113
  %i.ag = urem i64 %i.af, %i.d                    ; 2 uses
  %.not9.i.i = icmp eq i64 %i.ag, %i.e
  br i1 %.not9.i.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ag
  store ptr %i.h, ptr %i.ah, align 8, !tbaa !34, !noalias !3113
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread32, %bb.g, %bb.e
  %i.ai = phi ptr [ %i.i, %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread32 ], [ %i.ac, %bb.g ], [ %i.w, %bb.e ]
  %.1.i3639 = phi ptr [ %i.h, %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread32 ], [ %.1.i3638, %bb.g ], [ %.020.i, %bb.e ]
  %i.aj = phi ptr [ null, %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread32 ], [ %i.ad, %bb.g ], [ %i.ab, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.h
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !13, !noalias !3113
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  store ptr null, ptr %i.g, align 8, !tbaa !34, !noalias !3113
  br label %bb.m

bb.j:                                             ; preds = %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit
  br i1 %.not19.i18, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !35, !noalias !3113
  %i.ao = urem i64 %i.an, %i.d                    ; 2 uses
  %.not18.i19 = icmp eq i64 %i.ao, %i.e
  br i1 %.not18.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ao
  store ptr %.020.i, ptr %i.ap, align 8, !tbaa !34, !noalias !3113
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f
  %.1.i35 = phi ptr [ %.020.i, %bb.l ], [ %.020.i, %bb.k ], [ %.020.i, %bb.j ], [ %.1.i3639, %bb.i ], [ %.1.i3638, %bb.f ]
  %i.aq = phi ptr [ %i.w, %bb.l ], [ %i.w, %bb.k ], [ %i.w, %bb.j ], [ %i.ai, %bb.i ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23, !noalias !3113
  store ptr %i.ar, ptr %.1.i35, align 8, !tbaa !23, !noalias !3113
  store ptr null, ptr %i.aq, align 8, !tbaa !23, !noalias !3113
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !29, !noalias !3113
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !29, !noalias !3113
  store ptr %i.aq, ptr %3, align 8, !tbaa !63, !alias.scope !3113
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !3115, !alias.scope !3113
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !66, !alias.scope !3113
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt19_Node_handle_commonISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS1_4FileEESaIS9_EEESaINSt8__detail10_Hash_nodeISC_Lb1EEEEEaSEOSH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #27 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.bb = load ptr, ptr %3, align 8, !tbaa !63
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZNSt19_Node_handle_commonISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS1_4FileEESaIS9_EEESaINSt8__detail10_Hash_nodeISC_Lb1EEEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt19_Node_handle_commonISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS1_4FileEESaIS9_EEESaINSt8__detail10_Hash_nodeISC_Lb1EEEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  br label %_ZNSt19_Node_handle_commonISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS1_4FileEESaIS9_EEESaINSt8__detail10_Hash_nodeISC_Lb1EEEEED2Ev.exit

_ZNSt19_Node_handle_commonISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS1_4FileEESaIS9_EEESaINSt8__detail10_Hash_nodeISC_Lb1EEEEED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread

_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.thread: ; preds = %.lr.ph.i, %..loopexit_crit_edge21.i, %bb.a, %_ZNSt19_Node_handle_commonISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS1_4FileEESaIS9_EEESaINSt8__detail10_Hash_nodeISC_Lb1EEEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Node_handle_commonISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS1_4FileEESaIS9_EEESaINSt8__detail10_Hash_nodeISC_Lb1EEEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2416 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !2417
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !2419
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !call_target !2420, !inline_history !3116
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !call_target !2425, !inline_history !3116
  br label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !2385
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i, !prof !2426

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27
  br label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2668

_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.x = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2669
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %bb.h
  %i.ad = load ptr, ptr %0, align 8, !tbaa !63
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef 48) #26
  store ptr null, ptr %0, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt19_Node_handle_commonISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS1_4FileEESaIS9_EEESaINSt8__detail10_Hash_nodeISC_Lb1EEEEEaSEOSH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.n, label %.sink.split

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt19_Node_handle_commonISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS1_4FileEESaIS9_EEESaINSt8__detail10_Hash_nodeISC_Lb1EEEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i ], [ %i.f, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2416 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.k, align 8, !tbaa !2417
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !2419
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #27, !call_target !2420, !inline_history !3116
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #27, !call_target !2425, !inline_history !3116
  br label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !2385
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i, !prof !2426

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #27
  br label %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.g, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2668

_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN5folly4FileEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.aa = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.f, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2669
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #26
  br label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN5folly4FileEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %bb.l
  %i.ag = load ptr, ptr %0, align 8, !tbaa !63
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef 48) #26
  %i.ah = load ptr, ptr %1, align 8, !tbaa !63
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.m
  %.sink = phi ptr [ %i.ah, %bb.m ], [ %i.c, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !63
  store ptr null, ptr %1, align 8, !tbaa !63
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8__detail12_Insert_baseIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS3_St6vectorISt10shared_ptrIKNS1_4FileEESaISA_EEESaISD_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS5_JSC_EEES4_INS_14_Node_iteratorISD_Lb0ELb1EEEbENS_20_Node_const_iteratorISD_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<folly::AsyncSocket::WriteRequestTag, std::pair<const folly::AsyncSocket::WriteRequestTag, std::vector<std::shared_ptr<const folly::File>>>, std::allocator<std::pair<const folly::AsyncSocket::WriteRequestTag, std::vector<std::shared_ptr<const folly::File>>>>, std::__detail::_Select1st, std::equal_to<folly::AsyncSocket::WriteRequestTag>, std::hash<folly::AsyncSocket::WriteRequestTag>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35
  %i.m = icmp eq i64 %i.l, %i.b
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = icmp eq ptr %i.a, %i.n
  %i.p = select i1 %i.m, i1 %i.o, i1 false
  br i1 %i.p, label %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.r = icmp eq i64 %i.x, %i.b
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = icmp eq ptr %i.a, %i.s
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit, label %.lr.ph.i.i, !llvm.loop !37

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.v, %bb.c ], [ %i.i, %bb.b ]
  %i.v = load ptr, ptr %.020.i.i, align 8, !tbaa !23 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35   ; 2 uses
  %i.y = urem i64 %i.x, %i.d
  %.not19.i.i = icmp eq i64 %i.y, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !37

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8, !tbaa !3117
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 6 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.b, ptr %i.ab, align 8, !tbaa !2411
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load <2 x ptr>, ptr %3, align 8, !tbaa !3120
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !tbaa !3120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2669
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !2669
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !3121
  %i.ah = invoke ptr @_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISC_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.e, i64 noundef %i.b, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.e

_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit

bb.e:                                             ; preds = %.critedge
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.ai

_ZNKSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS4_m.exit: ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.024.0 = phi ptr [ %i.ah, %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.i, %bb.b ], [ %i.v, %bb.c ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.024.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISC_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #27 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !3122
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !27
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %2, ptr %i.t, align 8, !tbaa !35
  %i.u = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23
  store ptr %i.x, ptr %3, align 8, !tbaa !23
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !34
  store ptr %3, ptr %i.y, align 8, !tbaa !23
  br label %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSE_10_Hash_nodeISC_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  store ptr %i.aa, ptr %3, align 8, !tbaa !23
  store ptr %3, ptr %i.z, align 8, !tbaa !13
  %i.ab = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !34
  br label %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSE_10_Hash_nodeISC_Lb1EEE.exit

_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSE_10_Hash_nodeISC_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !29
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !29
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3121 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
