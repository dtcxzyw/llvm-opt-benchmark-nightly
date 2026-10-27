Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/solving_context?download=true
inline.NumInlined: 2624
inline.NumDeleted: 1412
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS3_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !456
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !403
  %i.o = urem i64 %i.n, %i.l
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !456
  %i.s = urem i64 %i.p, %i.r                      ; 3 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !455
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !401  ; 3 uses
  %.not.i24 = icmp eq ptr %i.v, null
  br i1 %.not.i24, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !348  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !403
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = phi i64 [ %.pre.i, %bb.d ], [ %i.ae, %bb.f ]
  %.015.i = phi ptr [ %i.v, %bb.d ], [ %.0.i, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.w, %bb.d ], [ %i.ab, %bb.f ] ; 3 uses
  %i.y = icmp eq i64 %i.p, %i.x
  br i1 %i.y, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorIS2_SaIS2_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorIS2_SaIS2_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorIS2_SaIS2_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.aa = tail call noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.z)
  br i1 %i.aa, label %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorIS2_SaIS2_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorIS2_SaIS2_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorIS2_SaIS2_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i, %bb.e
  %i.ab = load ptr, ptr %.0.i, align 8, !tbaa !348 ; 3 uses
  %.not18.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorIS2_SaIS2_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i
  %i.ac = load i64, ptr %i.q, align 8, !tbaa !456
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !403 ; 2 uses
  %i.af = urem i64 %i.ae, %i.ac
  %.not19.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.i, label %bb.e, label %.critedge, !llvm.loop !568

_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorIS2_SaIS2_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i
  %i.ag = load ptr, ptr %.015.i, align 8, !tbaa !348
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit ], [ %.015.i, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit ]
  %.119 = phi ptr [ %i.j, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit ], [ %i.ag, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit ]
  %.017 = phi i64 [ %i.o, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit ], [ %i.s, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit ]
  %i.ah = tail call ptr @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.017, ptr noundef nonnull %.020, ptr noundef %.119) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorIS2_SaIS2_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i, %bb.f, %.lr.ph, %bb.c, %bb.b, %bb.g
  %.1 = phi i64 [ 1, %bb.g ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorIS2_SaIS2_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !455    ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !401  ; 2 uses
  %i.d = icmp eq ptr %2, %i.c
  %i.e = load ptr, ptr %3, align 8, !tbaa !348    ; 4 uses
  %.not18 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not18, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !456
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !403
  %i.j = urem i64 %i.i, %i.g                      ; 2 uses
  %.not9.i = icmp eq i64 %i.j, %1
  br i1 %.not9.i, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j
  store ptr %i.c, ptr %i.k, align 8, !tbaa !401
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  store ptr %i.e, ptr %i.l, align 8, !tbaa !454
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  store ptr null, ptr %i.b, align 8, !tbaa !401
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEEm.exit

bb.g:                                             ; preds = %bb.a
  br i1 %.not18, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !456
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !403
  %i.r = urem i64 %i.q, %i.o                      ; 2 uses
  %.not17 = icmp eq i64 %i.r, %1
  br i1 %.not17, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r
  store ptr %2, ptr %i.s, align 8, !tbaa !401
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEEm.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEEm.exit: ; preds = %bb.f, %bb.c, %bb.h, %bb.i, %bb.g
  %i.t = load ptr, ptr %3, align 8, !tbaa !348    ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !348
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !353  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !354  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEEm.exit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEEm.exit ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #26
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !353
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEEm.exit
  %i.z = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.v, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEEm.exit ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSA_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !355
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSA_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSA_.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %i.af) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef 48) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !457
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !457
  ret ptr %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla9backtrack6objectIbED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4bzla9backtrack6objectIbEE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4bzla9backtrack6objectIbED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #25, !inline_history !359
  br label %_ZN4bzla9backtrack6objectIbED2Ev.exit

_ZN4bzla9backtrack6objectIbED2Ev.exit:            ; preds = %bb.a, %bb.b
  tail call void @_ZN4bzla9backtrack13BacktrackableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(80) %0) #26, !inline_history !359
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4bzla9backtrack6objectIbE4pushEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  %i.b = zext i32 %.sroa.2.0.copyload.i.i to i64  ; 2 uses
  %i.c = add nsw i64 %i.b, -1                     ; 3 uses
  %i.d = sdiv i64 %i.c, 64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.d
  %i.f = and i64 %i.c, -9223372036854775745
  %i.g = icmp ugt i64 %i.f, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.g, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.e, i64 %storemerge.idx.i.i.i.i.i
  %i.h = and i64 %i.c, 63
  %i.i = shl nuw i64 1, %i.h
  %i.j = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !345
  %i.k = and i64 %i.i, %i.j
  %i.l = icmp ne i64 %i.k, 0                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, %i.n
  br i1 %.not.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = add i32 %.sroa.2.0.copyload.i.i, 1
  store i32 %i.o, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !43
  %i.p = icmp eq i32 %.sroa.2.0.copyload.i.i, 63
  br i1 %i.p, label %bb.c, label %_ZNSt13_Bit_iteratorppEi.exit.i.i

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  store ptr %i.q, ptr %i.a, align 8, !tbaa !42
  br label %_ZNSt13_Bit_iteratorppEi.exit.i.i

_ZNSt13_Bit_iteratorppEi.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.r = shl nuw i64 1, %i.b                      ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.s = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !345
  %i.t = or i64 %i.s, %i.r
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i.i

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.u = xor i64 %i.r, -1
  %i.v = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !345
  %i.w = and i64 %i.v, %i.u
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i.i

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr nonnull %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i, i1 noundef zeroext %i.l)
  br label %_ZNSt6vectorIbSaIbEE12emplace_backIJSt14_Bit_referenceEEES3_DpOT_.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i.i:    ; preds = %bb.e, %bb.d
  %.sink.i.i = phi i64 [ %i.t, %bb.d ], [ %i.w, %bb.e ]
  store i64 %.sink.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !345
  br label %_ZNSt6vectorIbSaIbEE12emplace_backIJSt14_Bit_referenceEEES3_DpOT_.exit

_ZNSt6vectorIbSaIbEE12emplace_backIJSt14_Bit_referenceEEES3_DpOT_.exit: ; preds = %bb.f, %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4bzla9backtrack6objectIbE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !43
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 63, ptr %i.a, align 8, !tbaa !43
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !42
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.u = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0  ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.w = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0   ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !345
  %i.ad = and i64 %i.x, %i.ac
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !345
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !345
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !345
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !569

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !345
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !345
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !345
  %i.ar = add i32 %i.f, 1
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !43
  %i.as = icmp eq i32 %i.f, 63
  br i1 %i.as, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !42
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.g, %i.av
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = zext i32 %i.f to i64
  %i.az = add nsw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775744
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i, %i.az      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775744)
  %i.be = add nuw nsw i64 %i.bd, 63
  %i.bf = select i1 %i.bc, i64 9223372036854775807, i64 %i.be ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1152921504606846968
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #28 ; 5 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !42    ; 4 uses
  %i.bk = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.j, label %bb.k, !prof !572

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.bj, i64 %i.bm, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !345
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !345
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.l, %bb.k, %bb.j
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt13_Bit_iteratorppEi.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.br = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ch, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.br, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bs = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !345
  %i.bv = and i64 %i.bu, %i.bt
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bv, 0
  %i.bw = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bx = shl nuw i64 1, %i.bw                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !345
  %i.bz = or i64 %i.by, %i.bx
end_hunk_0
