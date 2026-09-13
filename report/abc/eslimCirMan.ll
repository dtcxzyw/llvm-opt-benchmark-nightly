Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/eslimCirMan?download=true
inline.NumInlined: 2087
inline.NumDeleted: 787
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_:bb.a

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
  %i.y = load ptr, ptr %.020.i.i, align 8, !tbaa !141 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !74  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !14

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !14

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread30
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread30 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi ptr [ %i.q, %bb.e ], [ %i.e, %.thread30 ], [ %i.e, %..loopexit_crit_edge21.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %i.af = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread30 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.ag = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 8 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %1, align 4, !tbaa !74
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !167
  %i.al = load i64, ptr %i.a, align 8, !tbaa !169
  %i.am = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef %i.ak, i64 noundef %i.al, i64 noundef 1) #31 ; 2 uses
  %i.an = extractvalue { i8, i64 } %i.am, 0
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.ap = extractvalue { i8, i64 } %i.am, 1
  tail call void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ap)
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !167
  %i.ar = urem i64 %i.af, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %.0.i17 = phi i64 [ %i.ar, %bb.i ], [ %i.ad, %.critedge ]
  %i.as = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i17 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !142 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.au, null
  br i1 %.not.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !141
  store ptr %i.av, ptr %i.ag, align 8, !tbaa !141
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !142
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !141
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !170 ; 3 uses
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !141
  store ptr %i.ag, ptr %i.ax, align 8, !tbaa !170
  %.not11.i.i = icmp eq ptr %i.ay, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.ae, align 8, !tbaa !167
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = urem i64 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bd
  store ptr %i.ag, ptr %i.be, align 8, !tbaa !142
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !142
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %bb.k
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !169
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !169
  br label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit

_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.028.1 = phi ptr [ %i.ag, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.025.0, %bb.d ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !168
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !170
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !141 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !74
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !142  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !170
  store ptr %i.p, ptr %.02530, align 8, !tbaa !141
  store ptr %.02530, ptr %i.g, align 8, !tbaa !170
  store ptr %i.g, ptr %i.n, align 8, !tbaa !142
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !141
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !142
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !141
  store ptr %i.s, ptr %.02530, align 8, !tbaa !141
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !142
  store ptr %.02530, ptr %i.t, align 8, !tbaa !141
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !408

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !167
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #30
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !167
  store ptr %.0.i, ptr %0, align 8, !tbaa !166
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph58

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEET_SI_SI_T0_.exit"
  %i.h = icmp eq i64 %i.bc, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph58, !llvm.loop !409

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa54 = phi i64 [ %i.d, %.lr.ph ], [ %i.dw, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dv, %bb.b ]
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.013.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = add nsw i64 %.lcssa54, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit12.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.x, %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit12.i.i.i ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.08.i.i.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !49
  store ptr null, ptr %i.k, align 8, !tbaa !49
  store i64 %i.l, ptr %4, align 8, !tbaa !49
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_T0_SJ_T1_T2_"(ptr %0, i64 noundef %.08.i.i.i, i64 noundef %.lcssa54, ptr noundef align 8 %4)
  %i.m = load ptr, ptr %4, align 8, !tbaa !49     ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit12.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  tail call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #30
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 128) #30
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit12.i.i.i

_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit12.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i, %bb.c
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.x = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_RT0_.exit.i.i", label %bb.c, !llvm.loop !410

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_RT0_.exit.i.i": ; preds = %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EED2Ev.exit12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %5 = icmp sgt i64 %.lcssa, 8
  br i1 %5, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.y, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_RT0_.exit" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_RT0_.exit.i.i" ]
  %i.y = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.z = load i64, ptr %i.y, align 8, !tbaa !49
  store ptr null, ptr %i.y, align 8, !tbaa !49
  %i.aa = load ptr, ptr %0, align 8, !tbaa !49
  store ptr null, ptr %0, align 8, !tbaa !49
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !49  ; 6 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !49
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i9.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  tail call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #30
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 128) #30
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i9.i
  %i.am = ptrtoint ptr %i.y to i64
  %i.an = sub i64 %i.am, %i.a                     ; 2 uses
  %i.ao = ashr exact i64 %i.an, 3
  store i64 %i.z, ptr %3, align 8, !tbaa !49
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_T0_SJ_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ao, ptr noundef align 8 %3)
  %i.ap = load ptr, ptr %3, align 8, !tbaa !49    ; 6 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_RT0_.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  tail call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #30
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i: ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 128) #30
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_RT0_.exit": ; preds = %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ba = icmp sgt i64 %i.an, 8
  br i1 %i.ba, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !411

.lr.ph58:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2457 = phi ptr [ %.sroa.013.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02556 = phi i64 [ %i.bc, %bb.b ], [ %2, %.lr.ph ]
  %i.bb = phi i64 [ %i.dw, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bc = add nsw i64 %.02556, -1                 ; 3 uses
  %i.bd = lshr i64 %i.bb, 1
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bd ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %storemerge2457, i64 -8 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !49 ; 7 uses
  %.val1.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !49 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 88
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !81 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 88
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !81 ; 6 uses
  %i.bk = icmp slt i32 %i.bh, %i.bj
  br i1 %i.bk, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i", label %bb.j

bb.j:                                             ; preds = %.lr.ph58
  %i.bl = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bl, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread38.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i": ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 100
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 100
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !54
  %i.bq = icmp ult i32 %i.bn, %i.bp
  br i1 %i.bq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread38.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i", %.lr.ph58
  %.val1.i27.i.i = load ptr, ptr %i.bf, align 8, !tbaa !49 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i27.i.i, i64 88
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !81 ; 4 uses
  %i.bt = icmp slt i32 %i.bj, %i.bs
  br i1 %i.bt, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i", label %bb.k

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i"
  %i.bu = icmp eq i32 %i.bj, %i.bs
  br i1 %i.bu, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.thread39.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.i.i": ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 100
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !54
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i27.i.i, i64 100
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !54
  %i.bz = icmp ult i32 %i.bw, %i.by
  br i1 %i.bz, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.thread39.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.thread39.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.i.i", %bb.k
  %i.ca = icmp slt i32 %i.bh, %i.bs
  br i1 %i.ca, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i", label %bb.l

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.thread39.i.i"
  %i.cb = icmp eq i32 %i.bh, %i.bs
  br i1 %i.cb, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread40.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.i.i": ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 100
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !54
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i27.i.i, i64 100
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !54
  %i.cg = icmp ult i32 %i.cd, %i.cf
  br i1 %i.cg, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread40.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread40.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.i.i", %bb.l
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread38.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i", %bb.j
  %.val1.i33.i.i = load ptr, ptr %i.bf, align 8, !tbaa !49 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1.i33.i.i, i64 88
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !81 ; 4 uses
  %i.cj = icmp slt i32 %i.bh, %i.ci
  br i1 %i.cj, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i", label %bb.m

bb.m:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread38.i.i"
  %i.ck = icmp eq i32 %i.bh, %i.ci
  br i1 %i.ck, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.thread41.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.i.i": ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 100
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !54
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1.i33.i.i, i64 100
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !54
  %i.cp = icmp ult i32 %i.cm, %i.co
  br i1 %i.cp, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.thread41.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.thread41.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.i.i", %bb.m
  %i.cq = icmp slt i32 %i.bj, %i.ci
  br i1 %i.cq, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i", label %bb.n

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.thread41.i.i"
  %i.cr = icmp eq i32 %i.bj, %i.ci
  br i1 %i.cr, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread42.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.i.i": ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 100
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i33.i.i, i64 100
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !54
  %i.cw = icmp ult i32 %i.ct, %i.cv
  br i1 %i.cw, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread42.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread42.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.i.i", %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread42.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.thread41.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread38.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread40.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.thread39.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i"
  %.val.i.sink.i.i = phi ptr [ %.val1.i27.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.i.i" ], [ %.val1.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread42.i.i" ], [ %.val.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.i.i" ], [ %.val1.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.i.i" ], [ %.val.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread40.i.i" ], [ %.val1.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i" ], [ %.val1.i27.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.thread39.i.i" ], [ %.val.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread38.i.i" ], [ %.val1.i33.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.thread41.i.i" ], [ %.val1.i33.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.i.i" ]
  %.sink47.i.i = phi ptr [ %i.bf, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.i.i" ], [ %i.be, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread42.i.i" ], [ %i.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.i.i" ], [ %i.be, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.i.i" ], [ %i.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread40.i.i" ], [ %i.be, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i" ], [ %i.bf, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit28.thread39.i.i" ], [ %i.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread38.i.i" ], [ %i.bf, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit34.thread41.i.i" ], [ %i.bf, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.i.i" ]
  %i.cx = load ptr, ptr %0, align 8, !tbaa !49
  store ptr %.val.i.sink.i.i, ptr %0, align 8, !tbaa !49
  store ptr %i.cx, ptr %.sink47.i.i, align 8, !tbaa !49
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i"
  %.sroa.013.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i" ], [ %i.dt, %bb.s ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2457, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i" ], [ %.sroa.0.1.i.i, %bb.s ]
  %.val1.i.i13.i = load ptr, ptr %0, align 8, !tbaa !49 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i13.i, i64 88
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !81 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val1.i.i13.i, i64 100 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i16.i", %bb.o
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.0.i.i, %bb.o ], [ %i.dj, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i16.i" ] ; 9 uses
  %.val.i.i14.i = load ptr, ptr %.sroa.013.1.i.i, align 8, !tbaa !49 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i14.i, i64 88
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !81 ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %i.cz
  br i1 %i.dd, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i16.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = icmp eq i32 %i.dc, %i.cz
  br i1 %i.de, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i15.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i.preheader": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i15.i", %bb.q
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i15.i": ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i.i14.i, i64 100
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !54
  %i.dh = load i32, ptr %i.da, align 4, !tbaa !54
  %i.di = icmp ult i32 %i.dg, %i.dh
  br i1 %i.di, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i16.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i16.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i15.i", %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 8
  br label %bb.p, !llvm.loop !412

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i.backedge", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i.preheader"
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i.preheader" ], [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i.backedge" ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.val1.i9.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !49 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val1.i9.i.i, i64 88
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !81 ; 2 uses
  %i.dm = icmp slt i32 %i.cz, %i.dl
  br i1 %i.dm, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i.backedge", label %bb.r

bb.r:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i"
  %i.dn = icmp eq i32 %i.cz, %i.dl
  br i1 %i.dn, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread17.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.i.i": ; preds = %bb.r
  %i.do = load i32, ptr %i.da, align 4, !tbaa !54
  %i.dp = getelementptr inbounds nuw i8, ptr %.val1.i9.i.i, i64 100
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !54
  %i.dr = icmp ult i32 %i.do, %i.dq
  br i1 %i.dr, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i.backedge", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread17.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i.backedge": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i"
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread16.i.i", !llvm.loop !413

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread17.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.i.i", %bb.r
  %i.ds = icmp ult ptr %.sroa.013.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ds, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEET_SI_SI_T0_.exit"

bb.s:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread17.i.i"
  store ptr %.val1.i9.i.i, ptr %.sroa.013.1.i.i, align 8, !tbaa !49
  store ptr %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 8, !tbaa !49
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 8
  br label %bb.o, !llvm.loop !414

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEET_SI_SI_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread17.i.i"
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_T0_T1_"(ptr nonnull %.sroa.013.1.i.i, ptr %storemerge2457, i64 noundef %i.bc)
  %i.du = ptrtoint ptr %.sroa.013.1.i.i to i64
  %i.dv = sub i64 %i.du, %i.a                     ; 2 uses
  %i.dw = ashr exact i64 %i.dv, 3                 ; 3 uses
  %i.dx = icmp sgt i64 %i.dw, 16
  br i1 %i.dx, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !409

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEET_SI_SI_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_SI_RT0_.exit", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_SI_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS3_11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EEEvT_T0_SJ_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit
  %.044 = phi i64 [ %i.u, %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.044, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !49 ; 4 uses
  %.val1.i = load ptr, ptr %i.h, align 8, !tbaa !49 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !81   ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread", label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i32 %i.j, %i.l
  br i1 %i.n, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit": ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 100
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 100
  %i.r = load i32, ptr %i.q, align 4, !tbaa !54
  %i.s = icmp ult i32 %i.p, %i.r
  %cond.fr = freeze i1 %i.s
  br i1 %cond.fr, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread": ; preds = %.lr.ph, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit"
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42": ; preds = %bb.b, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread"
  %i.t = phi ptr [ %.val1.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread" ], [ %.val.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit" ], [ %.val.i, %bb.b ]
  %i.u = phi i64 [ %i.g, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit" ], [ %i.e, %bb.b ] ; 4 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %.044 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !49
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 6 uses
  store ptr %i.t, ptr %i.w, align 8, !tbaa !49
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42"
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  tail call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #30
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 128) #30
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42", %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i
  %i.ai = icmp slt i64 %i.u, %i.b
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !415

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.u, %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit ] ; 5 uses
  %i.aj = and i64 %2, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit27

bb.e:                                             ; preds = %._crit_edge
  %i.al = add nsw i64 %2, -2
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp eq i64 %.0.lcssa, %i.am
  br i1 %i.an, label %bb.f, label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit27

bb.f:                                             ; preds = %bb.e
  %i.ao = shl nsw i64 %.0.lcssa, 1
  %i.ap = or disjoint i64 %i.ao, 1                ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !49
  store ptr null, ptr %i.aq, align 8, !tbaa !49
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 6 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !49
  %.not.i.i.i.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i24, label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit27, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  tail call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i25, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i26, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !45
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #30
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i26

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i26: ; preds = %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 128) #30
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit27

_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit27: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i26, %bb.f, %bb.e, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.e ], [ %i.ap, %bb.f ], [ %i.ap, %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i26 ] ; 3 uses
  %i.be = load i64, ptr %3, align 8, !tbaa !49
  %i.bf = inttoptr i64 %i.be to ptr               ; 3 uses
  store ptr null, ptr %3, align 8, !tbaa !49
  %i.bg = icmp sgt i64 %.1, %1
  br i1 %i.bg, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 100
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i
  %.010.i = phi i64 [ %.0911.i, %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %.1, %.lr.ph.i.preheader ] ; 4 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %.val.i.i = load ptr, ptr %i.bj, align 8, !tbaa !49 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 88
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !81 ; 2 uses
  %i.bm = load i32, ptr %i.bh, align 8, !tbaa !81 ; 2 uses
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i", label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bo = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bo, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i", label %.critedge.i

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i": ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 100
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !54
  %i.br = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.bs = icmp ult i32 %i.bq, %i.br
  br i1 %i.bs, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i", label %.critedge.i

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i", %.lr.ph.i
  %i.bt = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !49
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49 ; 6 uses
  store ptr %.val.i.i, ptr %i.bt, align 8, !tbaa !49
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i, label %bb.j

bb.j:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i"
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !50
  tail call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !45
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #30
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 128) #30
  br label %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i"
  %i.cf = icmp sgt i64 %.0911.i, %1
  br i1 %i.cf, label %.lr.ph.i, label %.critedge.i, !llvm.loop !416

.critedge.i:                                      ; preds = %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5eSLIM11eSLIMCirMan23applyLevelBasedOrderingEvE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrINS2_11eSLIMCirObjESt14default_deleteIS9_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i", %bb.i, %_ZNSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EEaSEOS4_.exit27
end_hunk_0
