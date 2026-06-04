inline.NumInlined: 6561
inline.NumDeleted: 2145
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS7_RKSA_EEES6_INSD_14_Node_iteratorISB_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %i.by = urem i64 %i.ak, %i.bx
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge18
  %.0.i19 = phi i64 [ %i.by, %bb.o ], [ %i.an, %.critedge18 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.ak, ptr %i.bz, align 8
  %i.ca = load ptr, ptr %0, align 8               ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0.i19 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %i.cc, align 8
  store ptr %i.cd, ptr %i.a, align 8
  %i.ce = load ptr, ptr %i.cb, align 8
  store ptr %i.a, ptr %i.ce, align 8
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  store ptr %i.cg, ptr %i.a, align 8
  store ptr %i.a, ptr %i.cf, align 8
  %.not11.i.i = icmp eq ptr %i.cg, null
  br i1 %.not11.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.al, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = urem i64 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ck
  store ptr %i.a, ptr %i.cl, align 8
  %.pre66 = load ptr, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cm = phi ptr [ %.pre66, %bb.s ], [ %i.ca, %bb.r ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.0.i19
  store ptr %i.cf, ptr %i.cn, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.co = load i64, ptr %i.r, align 8
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.r, align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.loopexit57: ; preds = %.lr.ph.split.us
  %.pre65 = load ptr, ptr %i.b, align 8
  br label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, %bb.k, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.loopexit57
  %i.cq = phi ptr [ %i.aw, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i ], [ %.pre65, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.loopexit57 ], [ %i.aw, %bb.k ], [ %i.af, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit ] ; 2 uses
  %.sroa.032.0.ph = phi ptr [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i ], [ %.sroa.025.052.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.loopexit57 ], [ %.0.us.i.i, %bb.k ], [ %.sroa.025.052, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit ]
  %i.cr = icmp eq ptr %i.cq, %i.c
  br i1 %i.cr, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7testing9TestSuiteEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread
  %i.cs = load i64, ptr %i.c, align 8
  %i.ct = add i64 %i.cs, 1
  tail call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #46
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7testing9TestSuiteEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7testing9TestSuiteEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN7testing9TestSuiteEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #46
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.u, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7testing9TestSuiteEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i
  %.sroa.4.044 = phi i8 [ 1, %bb.u ], [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7testing9TestSuiteEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i ]
  %.sroa.032.042 = phi ptr [ %i.a, %bb.u ], [ %.sroa.032.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7testing9TestSuiteEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.032.042, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.044, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7testing9TestSuiteEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7testing9TestSuiteEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #45 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7testing9TestSuiteEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7testing9TestSuiteEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 48
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.031, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.031, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !939

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #46
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7testing9TestSuiteEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN7testing8internalL19ParseGoogleTestFlagEPKc(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i8, align 1                       ; 6 uses
  %i.l = alloca i8, align 1                       ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.n = alloca i8, align 1                       ; 5 uses
  %i.o = tail call fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr noundef readonly %0, ptr noundef nonnull @.str.6, i1 noundef zeroext true) ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  switch i8 %i.p, label %bb.c [
    i8 48, label %_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit
    i8 102, label %_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ne i8 %i.p, 70
  %i.r = zext i1 %i.q to i8
  br label %_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit

_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit:    ; preds = %bb.c, %bb.b, %bb.b
  %.0111.ph = phi i8 [ %i.r, %bb.c ], [ 0, %bb.b ], [ 0, %bb.b ]
  store i8 %.0111.ph, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1
  br label %bb.bj

bb.d:                                             ; preds = %bb.a
  %i.s = tail call fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr noundef readonly %0, ptr noundef nonnull @.str.8, i1 noundef zeroext true) ; 2 uses
  %.not133 = icmp eq ptr %i.s, null
  br i1 %.not133, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  switch i8 %i.t, label %bb.f [
    i8 48, label %_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit91
    i8 102, label %_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit91
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = icmp ne i8 %i.t, 70
  %i.v = zext i1 %i.u to i8
  br label %_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit91

_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit91:  ; preds = %bb.f, %bb.e, %bb.e
  %.0110.ph = phi i8 [ %i.v, %bb.f ], [ 0, %bb.e ], [ 0, %bb.e ]
  store i8 %.0110.ph, ptr @_ZN7testing28FLAGS_gtest_break_on_failureE, align 1
  br label %bb.bj

bb.g:                                             ; preds = %bb.d
  %i.w = tail call fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr noundef readonly %0, ptr noundef nonnull @.str.10, i1 noundef zeroext true) ; 2 uses
  %.not134 = icmp eq ptr %i.w, null
  br i1 %.not134, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  switch i8 %i.x, label %bb.i [
    i8 48, label %_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit92
    i8 102, label %_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit92
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = icmp ne i8 %i.x, 70
  %i.z = zext i1 %i.y to i8
  br label %_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit92

_ZN7testing8internalL9ParseFlagEPKcS2_Pb.exit92:  ; preds = %bb.i, %bb.h, %bb.h
  %.0.ph = phi i8 [ %i.z, %bb.i ], [ 0, %bb.h ], [ 0, %bb.h ]
  store i8 %.0.ph, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1
  br label %bb.bj

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.aa, ptr %1, align 8
  %i.ab = load ptr, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, align 8 ; 2 uses
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, i64 8), align 8 ; 8 uses
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.k, label %._crit_edge.i.i

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp slt i64 %i.ac, 0
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #43
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = add nuw i64 %i.ac, 1                    ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.n:                                             ; preds = %bb.m
  call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.m
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #45 ; 2 uses
  store ptr %i.ah, ptr %1, align 8
  store i64 %i.ac, ptr %i.aa, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.j
  %i.ai = phi ptr [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.aa, %bb.j ] ; 3 uses
  switch i64 %i.ac, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.aj = load i8, ptr %i.ab, align 1
  store i8 %i.aj, ptr %i.ai, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.p:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.ab, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.o, %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac
  store i8 0, ptr %i.al, align 1
  %i.am = call fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef nonnull @.str.12, i1 noundef zeroext false) ; 3 uses
  %.not135 = icmp eq ptr %i.am, null              ; 2 uses
  br i1 %.not135, label %_ZN7testing8internalL9ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.an = load i64, ptr %i.ak, align 8
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #44
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.an, ptr noundef nonnull %i.am, i64 noundef %i.ao) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing17FLAGS_gtest_colorB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN7testing8internalL9ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit

_ZN7testing8internalL9ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.q
  %i.aq = load ptr, ptr %1, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.aa
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internalL9ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit
  %i.as = load i64, ptr %i.aa, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internalL9ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br i1 %.not135, label %bb.r, label %bb.bj

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E)
  %i.au = call fastcc noundef zeroext i1 @_ZN7testing8internalL9ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_(ptr noundef %0, ptr noundef nonnull @.str.432, ptr noundef %2) ; 2 uses
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.av = load ptr, ptr %2, align 8               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.t
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br i1 %i.au, label %bb.bj, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  %i.ba = load i8, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1, !range !9, !noundef !10
  store i8 %i.ba, ptr %i.a, align 1
  %i.bb = call fastcc noundef zeroext i1 @_ZN7testing8internalL9ParseFlagEPKcS2_Pb(ptr noundef %0, ptr noundef nonnull @.str.433, ptr noundef %i.a)
  br i1 %i.bb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bc = load i8, ptr %i.a, align 1, !range !9, !noundef !10
  store i8 %i.bc, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %bb.bj

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  %i.bd = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !range !9, !noundef !10
  store i8 %i.bd, ptr %i.b, align 1
  %i.be = call fastcc noundef zeroext i1 @_ZN7testing8internalL9ParseFlagEPKcS2_Pb(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %i.b)
  br i1 %i.be, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bf = load i8, ptr %i.b, align 1, !range !9, !noundef !10
  store i8 %i.bf, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  br label %bb.bj

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44
  %i.bg = load i8, ptr @_ZN7testing34FLAGS_gtest_fail_if_no_test_linkedE, align 1, !range !9, !noundef !10
  store i8 %i.bg, ptr %i.c, align 1
  %i.bh = call fastcc noundef zeroext i1 @_ZN7testing8internalL9ParseFlagEPKcS2_Pb(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %i.c)
  br i1 %i.bh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bi = load i8, ptr %i.c, align 1, !range !9, !noundef !10
  store i8 %i.bi, ptr @_ZN7testing34FLAGS_gtest_fail_if_no_test_linkedE, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  br label %bb.bj

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  %i.bj = load i8, ptr @_ZN7testing36FLAGS_gtest_fail_if_no_test_selectedE, align 1, !range !9, !noundef !10
  store i8 %i.bj, ptr %i.d, align 1
  %i.bk = call fastcc noundef zeroext i1 @_ZN7testing8internalL9ParseFlagEPKcS2_Pb(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %i.d)
  br i1 %i.bk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load i8, ptr %i.d, align 1, !range !9, !noundef !10
  store i8 %i.bl, ptr @_ZN7testing36FLAGS_gtest_fail_if_no_test_selectedE, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  br label %bb.bj

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_filterB5cxx11E)
  %i.bm = call fastcc noundef zeroext i1 @_ZN7testing8internalL9ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %3) ; 2 uses
  br i1 %i.bm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_filterB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bn = load ptr, ptr %3, align 8               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.ae
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
end_hunk_0
begin_hunk_1_@_ZN7testing8internalL17LoadFlagsFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = load ptr, ptr %2, align 8                ; 6 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %.not4 = icmp eq ptr %i.i, %i.j
  br i1 %.not4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.k
  %i.n = ashr exact i64 %i.m, 5
  br label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.j, %bb.d ] ; 3 uses
  %i.o = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !63

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %.split
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.thread

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.thread: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.x) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  %i.y = load ptr, ptr %1, align 8                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.02 = phi i64 [ %i.aj, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.02 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = call fastcc noundef zeroext i1 @_ZN7testing8internalL19ParseGoogleTestFlagEPKc(ptr noundef %i.ah)
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr @_ZN7testing8internal11g_help_flagE, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %i.aj = add nuw i64 %.02, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.n
  br i1 %exitcond.not, label %.lr.ph.i.i.i, label %.lr.ph, !llvm.loop !940
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7testing8internalL17PrintColorEncodedEPKc() unnamed_addr #2 {
.lr.ph:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.m
  %i.c = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL24kColorEncodedHelpMessageE, i64 144), %.lr.ph ], [ %i.w, %bb.m ] ; 3 uses
  %.09 = phi ptr [ @_ZN7testing8internalL24kColorEncodedHelpMessageE, %.lr.ph ], [ %.2, %bb.m ] ; 3 uses
  %.0178 = phi i32 [ 0, %.lr.ph ], [ %.219, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #44
  store ptr %i.a, ptr %0, align 8
  store i64 0, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %.09 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #43
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #45 ; 2 uses
  store ptr %i.k, ptr %0, align 8
  store i64 %i.f, ptr %i.a, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %.09, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %.09, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  store i64 %i.f, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.n, align 1
  %i.o = load ptr, ptr %0, align 8
  call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef %.0178, ptr noundef nonnull @.str.185, ptr noundef %i.o)
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  %i.r = load i64, ptr %i.a, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #44
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 5 uses
  switch i8 %i.u, label %bb.l [
    i8 64, label %bb.h
    i8 68, label %bb.m
    i8 82, label %bb.i
    i8 71, label %bb.j
    i8 89, label %bb.k
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef %.0178, ptr noundef nonnull @.str.440)
  br label %bb.m

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.219 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0178, %bb.h ], [ %.0178, %bb.l ], [ 1, %bb.i ], [ 2, %bb.j ], [ 3, %bb.k ] ; 2 uses
  %.2 = phi ptr [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %bb.h ], [ %i.t, %bb.l ], [ %i.v, %bb.i ], [ %i.v, %bb.j ], [ %i.v, %bb.k ] ; 3 uses
  %i.w = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2, i32 noundef 64) #48 ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %._crit_edge, label %bb.a, !llvm.loop !941

._crit_edge:                                      ; preds = %bb.m
  call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef %.219, ptr noundef nonnull @.str.185, ptr noundef nonnull %.2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN7testing8internalL9ParseFlagEPKcS2_Pb(ptr noundef readonly captures(address) %0, ptr noundef %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) ; 2 uses
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1               ; 2 uses
  switch i8 %i.c, label %bb.c [
    i8 48, label %bb.d
    i8 102, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne i8 %i.c, 70
  %i.e = zext i1 %i.d to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %i.f = phi i8 [ 0, %bb.b ], [ 0, %bb.b ], [ %i.e, %bb.c ]
  store i8 %i.f, ptr %2, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret i1 %i.b
}

declare void @_ZN7testing8internal14ReadEntireFileB5cxx11EP8_IO_FILE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.testing::Message", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @_ZN7testing7MessageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !alias.scope !942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.96, i64 6, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 6, ptr %i.d, align 8, !alias.scope !942
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.e, align 2, !alias.scope !942
  br label %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN7testing8internal16WideStringToUtf8B5cxx11EPKwi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull readonly %i.a, i32 noundef -1)
  %.pre.i = load ptr, ptr %2, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre2.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit.i

_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit.i: ; preds = %bb.b, %._crit_edge.i.i.i.i
  %i.f = phi i64 [ 6, %._crit_edge.i.i.i.i ], [ %.pre2.i, %bb.b ]
  %i.g = phi ptr [ %i.c, %._crit_edge.i.i.i.i ], [ %.pre.i, %bb.b ]
  %i.h = load ptr, ptr %3, align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.g, i64 noundef %i.f) #44 ; 0 uses
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit.i
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #46
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %i.h)
  %i.p = load ptr, ptr %i.h, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(128) %i.h) #44, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_gtest.cc() #39 section ".text.startup" {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = tail call noundef ptr @getenv(ptr noundef nonnull @.str.324) #44 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %__cxx_global_var_init.exit, label %sub_0.i.i

sub_0.i.i:                                        ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1
  %.not4.i.i = icmp eq i8 %i.b, 49
  br i1 %.not4.i.i, label %sub_1.i.i, label %__cxx_global_var_init.exit

sub_1.i.i:                                        ; preds = %sub_0.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.a, %sub_0.i.i, %sub_1.i.i
  %.0.i.i = phi i1 [ false, %bb.a ], [ false, %sub_0.i.i ], [ %i.e, %sub_1.i.i ]
  %i.f = tail call noundef zeroext i1 @_ZN7testing8internal16BoolFromGTestEnvEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext %.0.i.i) #44
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1
  %i.h = tail call noundef zeroext i1 @_ZN7testing8internal16BoolFromGTestEnvEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext false) #44
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr @_ZN7testing34FLAGS_gtest_fail_if_no_test_linkedE, align 1
  %i.j = tail call noundef zeroext i1 @_ZN7testing8internal16BoolFromGTestEnvEPKcb(ptr noundef nonnull @.str.4, i1 noundef zeroext false) #44
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr @_ZN7testing36FLAGS_gtest_fail_if_no_test_selectedE, align 1
  %i.l = tail call noundef zeroext i1 @_ZN7testing8internal16BoolFromGTestEnvEPKcb(ptr noundef nonnull @.str.6, i1 noundef zeroext false) #44
  %i.m = zext i1 %i.l to i8
  store i8 %i.m, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1
  %i.n = tail call noundef zeroext i1 @_ZN7testing8internal16BoolFromGTestEnvEPKcb(ptr noundef nonnull @.str.8, i1 noundef zeroext false) #44
  %i.o = zext i1 %i.n to i8
  store i8 %i.o, ptr @_ZN7testing28FLAGS_gtest_break_on_failureE, align 1
  %i.p = tail call noundef zeroext i1 @_ZN7testing8internal16BoolFromGTestEnvEPKcb(ptr noundef nonnull @.str.10, i1 noundef zeroext true) #44
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1
  %i.r = tail call noundef ptr @_ZN7testing8internal18StringFromGTestEnvEPKcS2_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #44 ; 4 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, i64 16), ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %__cxx_global_var_init.exit
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.325) #43
  unreachable

bb.c:                                             ; preds = %__cxx_global_var_init.exit
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #44 ; 8 uses
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = icmp slt i64 %i.t, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #43
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = add nuw i64 %i.t, 1                      ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #45 ; 2 uses
  store ptr %i.y, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, align 8
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, i64 16), align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.z = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, i64 16), %bb.c ] ; 3 uses
  switch i64 %i.t, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %__cxx_global_var_init.11.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.r, align 1
  store i8 %i.aa, ptr %i.z, align 1
  br label %__cxx_global_var_init.11.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.r, i64 %i.t, i1 false)
  br label %__cxx_global_var_init.11.exit

__cxx_global_var_init.11.exit:                    ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, i64 8), align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  store i8 0, ptr %i.ab, align 1
  %i.ac = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing17FLAGS_gtest_colorB5cxx11E, ptr nonnull @__dso_handle) #44 ; 0 uses
  %i.ad = tail call noundef ptr @getenv(ptr noundef nonnull @.str.327) #44 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ad, null
  %_ZN7testingL16kUniversalFilterE..i.i = select i1 %.not.i.i1, ptr @_ZN7testingL16kUniversalFilterE, ptr %i.ad
  %i.ae = tail call noundef ptr @_ZN7testing8internal18StringFromGTestEnvEPKcS2_(ptr noundef nonnull @.str.15, ptr noundef nonnull %_ZN7testingL16kUniversalFilterE..i.i) #44 ; 4 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing18FLAGS_gtest_filterB5cxx11E, i64 16), ptr @_ZN7testing18FLAGS_gtest_filterB5cxx11E, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %__cxx_global_var_init.11.exit
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.325) #43
  unreachable

bb.k:                                             ; preds = %__cxx_global_var_init.11.exit
  %i.ag = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #44 ; 8 uses
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %bb.l, label %._crit_edge.i.i.i2

bb.l:                                             ; preds = %bb.k
end_hunk_1
