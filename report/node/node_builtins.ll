inline.NumInlined: 4126
inline.NumDeleted: 1869
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v86GlobalINS8_6ModuleEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRPKcSB_EEES6_INSE_14_Node_iteratorISC_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %i.az = icmp eq i64 %.fr22.i.i, %i.ay
  br i1 %i.az, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.ba = load ptr, ptr %i.av, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.ba, i64 %.fr22.i.i)
  %i.bb = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.g, %.split.i.i
  %i.bc = load ptr, ptr %.0.i.i, align 8          ; 3 uses
  %.not18.i.i = icmp eq ptr %i.bc, null
  br i1 %.not18.i.i, label %.critedge18, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = urem i64 %i.be, %i.aa
  %.not19.i.i = icmp eq i64 %i.bf, %i.ab
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge18, !llvm.loop !394

.critedge18:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i, %bb.h, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i, %bb.c, %.critedge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 noundef %i.aa, i64 noundef %i.ac, i64 noundef 1) #25 ; 2 uses
  %i.bi = extractvalue { i8, i64 } %i.bh, 0
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge18
  %i.bk = extractvalue { i8, i64 } %i.bh, 1
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v86GlobalINS8_6ModuleEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bk)
  %i.bl = load i64, ptr %i.z, align 8
  %i.bm = urem i64 %i.y, %i.bl
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge18
  %.0.i19 = phi i64 [ %i.bm, %bb.i ], [ %i.ab, %.critedge18 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.y, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %0, align 8               ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.0.i19 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.bq, align 8
  store ptr %i.br, ptr %i.a, align 8
  %i.bs = load ptr, ptr %i.bp, align 8
  store ptr %i.a, ptr %i.bs, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  store ptr %i.bu, ptr %i.a, align 8
  store ptr %i.a, ptr %i.bt, align 8
  %.not11.i.i = icmp eq ptr %i.bu, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = load i64, ptr %i.z, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = urem i64 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.by
  store ptr %i.a, ptr %i.bz, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = phi ptr [ %.pre, %bb.m ], [ %i.bo, %bb.l ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0.i19
  store ptr %i.bt, ptr %i.cb, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.cc = load i64, ptr %i.c, align 8
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.c, align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v86GlobalINS8_6ModuleEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.e
  %.sroa.032.0.ph = phi ptr [ %.sroa.025.052.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.e ], [ %.sroa.025.052, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN2v814PersistentBaseINS_6ModuleEE5ResetEv.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.cf) #25
  store ptr null, ptr %i.ce, align 8
  br label %_ZN2v814PersistentBaseINS_6ModuleEE5ResetEv.exit.i.i.i.i

_ZN2v814PersistentBaseINS_6ModuleEE5ResetEv.exit.i.i.i.i: ; preds = %bb.p, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread
  %i.ch = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN2v814PersistentBaseINS_6ModuleEE5ResetEv.exit.i.i.i.i
  %i.ck = load i64, ptr %i.ci, align 8
  %i.cl = add i64 %i.ck, 1
  tail call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i: ; preds = %_ZN2v814PersistentBaseINS_6ModuleEE5ResetEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #28
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v86GlobalINS8_6ModuleEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v86GlobalINS8_6ModuleEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.o, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i
  %.sroa.4.044 = phi i8 [ 1, %bb.o ], [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i ]
  %.sroa.032.042 = phi ptr [ %i.a, %bb.o ], [ %.sroa.032.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.032.042, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.044, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINS7_6ModuleEEEEC2IRPKcSA_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISG_SH_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.88) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #26 ; 2 uses
  store ptr %i.i, ptr %0, align 8
  store i64 %i.d, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.c ] ; 3 uses
  switch i64 %i.d, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.a, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %2, align 8                ; 2 uses
  store ptr %i.o, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN2v86GlobalINS_6ModuleEEC2EOS2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  tail call void @_ZN2v812api_internal19MoveGlobalReferenceEPPmS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.n) #25
  store ptr null, ptr %2, align 8
  br label %_ZN2v86GlobalINS_6ModuleEEC2EOS2_.exit

_ZN2v86GlobalINS_6ModuleEEC2EOS2_.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %bb.j
  ret void
}

declare void @_ZN2v812api_internal19MoveGlobalReferenceEPPmS2_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 9 uses
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 16 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKN2v85LocalINS0_4NameEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 4 uses
  %i.q = sub i64 %i.a, %i.b
  %i.r = add i64 %i.q, -8                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check154 = icmp ult i64 %i.r, 72
  %i.u = sub i64 %i.b, %i.a
  %diff.check152 = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check154, %diff.check152
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.d
  %n.vec157 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.v = shl i64 %n.vec157, 3                     ; 2 uses
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = getelementptr i8, ptr %i.p, i64 %i.v
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.y = shl i64 %index159, 3                     ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.h, i64 %i.y ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load162 = load <2 x i64>, ptr %next.gep161, align 8
  %wide.load163 = load <2 x i64>, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %wide.load162, ptr %next.gep160, align 8
  store <2 x i64> %wide.load163, ptr %i.aa, align 8
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.ab, label %middle.block165, label %vector.body158, !llvm.loop !397

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.t, %n.vec157
  br i1 %cmp.n166, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block165
  %.08.i.i.i.i.i.ph = phi ptr [ %i.h, %bb.d ], [ %i.w, %middle.block165 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block165 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 8
  store i64 %i.ac, ptr %.08.i.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.af = icmp eq ptr %i.ad, %i.h
  br i1 %i.af, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !398

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block165
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.c
  store ptr %i.ah, ptr %i.g, align 8
  %i.ai = ptrtoint ptr %i.p to i64
  %i.aj = sub i64 %i.ai, %i.l                     ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.e, label %bb.f, !prof !34

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %1, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ao = icmp eq i64 %i.aj, 8
  br i1 %i.ao, label %bb.g, label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.aq = load i64, ptr %1, align 8
  store i64 %i.aq, ptr %i.ap, align 8
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ar = icmp sgt i64 %i.d, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i47.preheader, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit
  %min.iters.check172 = icmp ult i64 %i.d, 8
  %i.as = sub i64 %i.b, %i.l
  %diff.check170 = icmp ugt i64 %i.as, -32
  %or.cond244 = or i1 %min.iters.check172, %diff.check170
  br i1 %or.cond244, label %.lr.ph.i.i.i.i.i47.preheader254, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %n.vec175 = and i64 %i.d, 9223372036854775804   ; 3 uses
  %i.at = and i64 %i.d, 3
  %i.au = shl i64 %n.vec175, 3                    ; 2 uses
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %i.aw = getelementptr i8, ptr %2, i64 %i.au
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.ax = shl i64 %index177, 3                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.ax ; 2 uses
  %next.gep179 = getelementptr i8, ptr %2, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load180 = load <2 x i64>, ptr %next.gep179, align 8
  %wide.load181 = load <2 x i64>, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %next.gep178, i64 16
  store <2 x i64> %wide.load180, ptr %next.gep178, align 8
  store <2 x i64> %wide.load181, ptr %i.az, align 8
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.ba, label %middle.block183, label %vector.body176, !llvm.loop !399

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.d, %n.vec175
  br i1 %cmp.n184, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i47.preheader254

.lr.ph.i.i.i.i.i47.preheader254:                  ; preds = %.lr.ph.i.i.i.i.i47.preheader, %middle.block183
  %.012.i.i.i.i.i.ph = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.at, %middle.block183 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.av, %middle.block183 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.aw, %middle.block183 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader254, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i47 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i47 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %i.bb = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.bb, ptr %.0811.i.i.i.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.be = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bf = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i47, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !400

_ZSt9__advanceIPKN2v85LocalINS0_4NameEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.m ; 4 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bg, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIPKN2v85LocalINS0_4NameEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bh = add i64 %i.a, %i.l
  %i.bi = add i64 %i.j, %i.b
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = add i64 %i.bj, -8                       ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bk, 72
  %i.bn = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.bn, -32
  %or.cond245 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond245, label %.lr.ph.i.i.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.h, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bg, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.br ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bg, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep111, align 8
  %wide.load112 = load <2 x i64>, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load112, ptr %i.bt, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !401

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader258

.lr.ph.i.i.i.i.preheader258:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader258, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %i.bv = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bv, ptr %.011.i.i.i.i, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bw, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !402

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.g, align 8
  br label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKN2v85LocalINS0_4NameEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.by = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPKN2v85LocalINS0_4NameEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bz = ptrtoaddr ptr %i.by to i64
  %i.ca = sub nuw nsw i64 %i.d, %i.n
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca ; 6 uses
  store ptr %i.cb, ptr %i.g, align 8
  %i.cc = icmp eq ptr %1, %i.h
  br i1 %i.cc, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, label %.lr.ph.i.i.i.i.i48.preheader

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cd = sub i64 %i.j, %i.l
  %i.ce = add i64 %i.cd, -8                       ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %i.ce, 136
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %i.ch = add i64 %i.c, %i.bz
  %i.ci = sub i64 %i.j, %i.ch
  %diff.check115 = icmp ugt i64 %i.ci, -32
  br i1 %diff.check115, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec120 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.cj = shl i64 %n.vec120, 3                    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cb, i64 %i.cj
  %i.cl = getelementptr i8, ptr %1, i64 %i.cj
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.cm = shl i64 %index122, 3                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.cb, i64 %i.cm ; 2 uses
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load125 = load <2 x i64>, ptr %next.gep124, align 8
  %wide.load126 = load <2 x i64>, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x i64> %wide.load125, ptr %next.gep123, align 8
  store <2 x i64> %wide.load126, ptr %i.co, align 8
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.cp, label %middle.block128, label %vector.body121, !llvm.loop !403

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.cg, %n.vec120
  br i1 %cmp.n129, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48.preheader257

.lr.ph.i.i.i.i.i48.preheader257:                  ; preds = %vector.memcheck114, %.lr.ph.i.i.i.i.i48.preheader, %middle.block128
  %.08.i.i.i.i.i49.ph = phi ptr [ %i.cb, %vector.memcheck114 ], [ %i.cb, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.ck, %middle.block128 ]
  %.sroa.04.07.i.i.i.i.i50.ph = phi ptr [ %1, %vector.memcheck114 ], [ %1, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cl, %middle.block128 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader257, %.lr.ph.i.i.i.i.i48
  %.08.i.i.i.i.i49 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i48 ], [ %.08.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i50 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.04.07.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %i.cq = load i64, ptr %.sroa.04.07.i.i.i.i.i50, align 8
  store i64 %i.cq, ptr %.08.i.i.i.i.i49, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i50, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i49, i64 8
  %i.ct = icmp eq ptr %i.cr, %i.h
  br i1 %i.ct, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48, !llvm.loop !404

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit: ; preds = %.lr.ph.i.i.i.i.i48, %middle.block128
  %.pre90 = load ptr, ptr %i.g, align 8
  br label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52: ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cu = phi ptr [ %.pre90, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit ], [ %i.cb, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.m
  store ptr %i.cv, ptr %i.g, align 8
  %i.cw = ashr exact i64 %i.m, 3                  ; 6 uses
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i54.preheader, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52
  %min.iters.check135 = icmp ult i64 %i.cw, 8
  %i.cy = sub i64 %i.b, %i.l
  %diff.check133 = icmp ugt i64 %i.cy, -32
  %or.cond246 = or i1 %min.iters.check135, %diff.check133
  br i1 %or.cond246, label %.lr.ph.i.i.i.i.i54.preheader255, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec138 = and i64 %i.cw, 9223372036854775804  ; 3 uses
  %i.cz = and i64 %i.cw, 3
  %i.da = shl i64 %n.vec138, 3                    ; 2 uses
  %i.db = getelementptr i8, ptr %1, i64 %i.da
  %i.dc = getelementptr i8, ptr %2, i64 %i.da
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.dd = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.dd ; 2 uses
  %next.gep142 = getelementptr i8, ptr %2, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep142, align 8
  %wide.load144 = load <2 x i64>, ptr %i.de, align 8
  %i.df = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep141, align 8
  store <2 x i64> %wide.load144, ptr %i.df, align 8
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.dg, label %middle.block146, label %vector.body139, !llvm.loop !405

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.cw, %n.vec138
  br i1 %cmp.n147, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i54.preheader255

.lr.ph.i.i.i.i.i54.preheader255:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block146
  %.012.i.i.i.i.i55.ph = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cz, %middle.block146 ]
  %.0811.i.i.i.i.i56.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.db, %middle.block146 ]
  %.0910.i.i.i.i.i57.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.dc, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader255, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0811.i.i.i.i.i56 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i54 ], [ %.0811.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0910.i.i.i.i.i57 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i54 ], [ %.0910.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %i.dh = load i64, ptr %.0910.i.i.i.i.i57, align 8
  store i64 %i.dh, ptr %.0811.i.i.i.i.i56, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i57, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i56, i64 8
  %i.dk = add nsw i64 %.012.i.i.i.i.i55, -1
  %i.dl = icmp samesign ugt i64 %.012.i.i.i.i.i55, 1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i54, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !406

bb.h:                                             ; preds = %bb.b
  %i.dm = load ptr, ptr %0, align 8               ; 7 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 4 uses
  %i.do = sub i64 %i.j, %i.dn
  %i.dp = ashr exact i64 %i.do, 3                 ; 4 uses
  %i.dq = sub nsw i64 1152921504606846975, %i.dp
  %i.dr = icmp ult i64 %i.dq, %i.d
  br i1 %i.dr, label %bb.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #27
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.d)
  %i.ds = add nsw i64 %.sroa.speculated.i, %i.dp  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dp
  %i.du = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975)
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #26
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dy = phi ptr [ %i.dx, %bb.j ], [ null, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.dz = icmp eq ptr %i.dm, %1
  br i1 %i.dz, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i59.preheader:                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit
  %i.ea = ptrtoaddr ptr %i.dy to i64
  %5 = ptrtoint ptr %1 to i64
  %i.eb = sub i64 %5, %i.dn
  %6 = add i64 %i.eb, -8                          ; 2 uses
  %i.ec = lshr i64 %6, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check191 = icmp ult i64 %6, 72
  %i.ee = sub i64 %i.dn, %i.ea
  %diff.check189 = icmp ugt i64 %i.ee, -32
  %or.cond247 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond247, label %.lr.ph.i.i.i.i.i59.preheader252, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i.i.i.i59.preheader
  %n.vec194 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec194, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dy, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dm, i64 %i.ef
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph192
  %index196 = phi i64 [ 0, %vector.ph192 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ei = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.dy, i64 %i.ei ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.dm, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <2 x i64>, ptr %next.gep198, align 8
  %wide.load200 = load <2 x i64>, ptr %i.ej, align 8
  %i.ek = getelementptr i8, ptr %next.gep197, i64 16
  store <2 x i64> %wide.load199, ptr %next.gep197, align 8
  store <2 x i64> %wide.load200, ptr %i.ek, align 8
  %index.next201 = add nuw i64 %index196, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.el, label %middle.block202, label %vector.body195, !llvm.loop !407

middle.block202:                                  ; preds = %vector.body195
  %cmp.n203 = icmp eq i64 %i.ed, %n.vec194
  br i1 %cmp.n203, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader252

.lr.ph.i.i.i.i.i59.preheader252:                  ; preds = %.lr.ph.i.i.i.i.i59.preheader, %middle.block202
  %.08.i.i.i.i.i60.ph = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.eg, %middle.block202 ]
  %.sroa.04.07.i.i.i.i.i61.ph = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.eh, %middle.block202 ]
  br label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %.lr.ph.i.i.i.i.i59.preheader252, %.lr.ph.i.i.i.i.i59
  %.08.i.i.i.i.i60 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i59 ], [ %.08.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i61 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i59 ], [ %.sroa.04.07.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %i.em = load i64, ptr %.sroa.04.07.i.i.i.i.i61, align 8
  store i64 %i.em, ptr %.08.i.i.i.i.i60, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i61, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i60, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %1
  br i1 %i.ep, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !408

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i59, %middle.block202, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.dy, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit ], [ %i.eg, %middle.block202 ], [ %i.eo, %.lr.ph.i.i.i.i.i59 ] ; 4 uses
  %i.eq = sub i64 %i.a, %i.b
  %i.er = add i64 %i.eq, -8                       ; 2 uses
  %i.es = lshr i64 %i.er, 3
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %i.er, 72
  %.0.lcssa.i.i.i.i.i62207 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i62 to i64
  %i.eu = sub i64 %i.b, %.0.lcssa.i.i.i.i.i62207
  %diff.check208 = icmp ugt i64 %i.eu, -32
  %or.cond248 = select i1 %min.iters.check210, i1 true, i1 %diff.check208
  br i1 %or.cond248, label %.lr.ph.i.i.i.i64.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec213 = and i64 %i.et, 4611686018427387900  ; 3 uses
  %i.ev = shl i64 %n.vec213, 3                    ; 2 uses
  %i.ew = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ev ; 2 uses
  %i.ex = getelementptr i8, ptr %2, i64 %i.ev
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.ey = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ey ; 2 uses
  %next.gep217 = getelementptr i8, ptr %2, i64 %i.ey ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <2 x i64>, ptr %next.gep217, align 8
  %wide.load219 = load <2 x i64>, ptr %i.ez, align 8
  %i.fa = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x i64> %wide.load218, ptr %next.gep216, align 8
  store <2 x i64> %wide.load219, ptr %i.fa, align 8
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.fb, label %middle.block221, label %vector.body214, !llvm.loop !409

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.et, %n.vec213
  br i1 %cmp.n222, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64.preheader

.lr.ph.i.i.i.i64.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block221
  %.011.i.i.i.i65.ph = phi ptr [ %.0.lcssa.i.i.i.i.i62, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.ew, %middle.block221 ]
  %.0810.i.i.i.i66.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.ex, %middle.block221 ]
  br label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i.i.i64.preheader, %.lr.ph.i.i.i.i64
  %.011.i.i.i.i65 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i64 ], [ %.011.i.i.i.i65.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %.0810.i.i.i.i66 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i64 ], [ %.0810.i.i.i.i66.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %i.fc = load i64, ptr %.0810.i.i.i.i66, align 8
  store i64 %i.fc, ptr %.011.i.i.i.i65, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i66, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.fd, %3
  br i1 %.not.i.i.i.i67, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64, !llvm.loop !410

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69: ; preds = %.lr.ph.i.i.i.i64, %middle.block221
  %.lcssa109 = phi ptr [ %i.ew, %middle.block221 ], [ %i.fe, %.lr.ph.i.i.i.i64 ] ; 5 uses
  %i.ff = icmp eq ptr %1, %i.h
  br i1 %i.ff, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.lcssa109226 = ptrtoaddr ptr %.lcssa109 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.fg = sub i64 %i.j, %7
  %8 = add i64 %i.fg, -8                          ; 2 uses
  %i.fh = lshr i64 %8, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %8, 72
  %i.fj = sub i64 %4, %.lcssa109226
  %diff.check227 = icmp ugt i64 %i.fj, -32
  %or.cond249 = select i1 %min.iters.check229, i1 true, i1 %diff.check227
  br i1 %or.cond249, label %.lr.ph.i.i.i.i.i70.preheader250, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec232 = and i64 %i.fi, 4611686018427387900  ; 3 uses
  %i.fk = shl i64 %n.vec232, 3                    ; 2 uses
  %i.fl = getelementptr i8, ptr %.lcssa109, i64 %i.fk ; 2 uses
  %i.fm = getelementptr i8, ptr %1, i64 %i.fk
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph230
  %index234 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.fn = shl i64 %index234, 3                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.lcssa109, i64 %i.fn ; 2 uses
  %next.gep236 = getelementptr i8, ptr %1, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load237 = load <2 x i64>, ptr %next.gep236, align 8
  %wide.load238 = load <2 x i64>, ptr %i.fo, align 8
  %i.fp = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x i64> %wide.load237, ptr %next.gep235, align 8
  store <2 x i64> %wide.load238, ptr %i.fp, align 8
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.fq, label %middle.block240, label %vector.body233, !llvm.loop !411

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.fi, %n.vec232
  br i1 %cmp.n241, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader250

.lr.ph.i.i.i.i.i70.preheader250:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block240
  %.08.i.i.i.i.i71.ph = phi ptr [ %.lcssa109, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fl, %middle.block240 ]
  %.sroa.04.07.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fm, %middle.block240 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader250, %.lr.ph.i.i.i.i.i70
  %.08.i.i.i.i.i71 = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i70 ], [ %.08.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i72 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.04.07.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %i.fr = load i64, ptr %.sroa.04.07.i.i.i.i.i72, align 8
  store i64 %i.fr, ptr %.08.i.i.i.i.i71, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i72, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i71, i64 8 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.h
  br i1 %i.fu, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !412

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block240, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa109, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69 ], [ %i.fl, %middle.block240 ], [ %i.ft, %.lr.ph.i.i.i.i.i70 ]
  %.not.i75 = icmp eq ptr %i.dm, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74
  %i.fv = load ptr, ptr %i.e, align 8
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.fx) #28
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, %bb.k
  store ptr %i.dy, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.g, align 8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dv
  store ptr %i.fy, ptr %i.e, align 8
  br label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i54, %.lr.ph.i.i.i.i.i47, %middle.block146, %middle.block183, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 9 uses
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 16 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 4 uses
  %i.q = sub i64 %i.a, %i.b
  %i.r = add i64 %i.q, -8                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check154 = icmp ult i64 %i.r, 72
  %i.u = sub i64 %i.b, %i.a
  %diff.check152 = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check154, %diff.check152
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.d
  %n.vec157 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.v = shl i64 %n.vec157, 3                     ; 2 uses
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = getelementptr i8, ptr %i.p, i64 %i.v
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.y = shl i64 %index159, 3                     ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.h, i64 %i.y ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load162 = load <2 x i64>, ptr %next.gep161, align 8
  %wide.load163 = load <2 x i64>, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %wide.load162, ptr %next.gep160, align 8
  store <2 x i64> %wide.load163, ptr %i.aa, align 8
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.ab, label %middle.block165, label %vector.body158, !llvm.loop !413

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.t, %n.vec157
  br i1 %cmp.n166, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block165
  %.08.i.i.i.i.i.ph = phi ptr [ %i.h, %bb.d ], [ %i.w, %middle.block165 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block165 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 8
  store i64 %i.ac, ptr %.08.i.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.af = icmp eq ptr %i.ad, %i.h
  br i1 %i.af, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !414

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block165
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.c
  store ptr %i.ah, ptr %i.g, align 8
  %i.ai = ptrtoint ptr %i.p to i64
  %i.aj = sub i64 %i.ai, %i.l                     ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.e, label %bb.f, !prof !34

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %1, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ao = icmp eq i64 %i.aj, 8
  br i1 %i.ao, label %bb.g, label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.aq = load i64, ptr %1, align 8
  store i64 %i.aq, ptr %i.ap, align 8
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ar = icmp sgt i64 %i.d, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i47.preheader, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit
  %min.iters.check172 = icmp ult i64 %i.d, 8
  %i.as = sub i64 %i.b, %i.l
  %diff.check170 = icmp ugt i64 %i.as, -32
  %or.cond244 = or i1 %min.iters.check172, %diff.check170
  br i1 %or.cond244, label %.lr.ph.i.i.i.i.i47.preheader254, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %n.vec175 = and i64 %i.d, 9223372036854775804   ; 3 uses
  %i.at = and i64 %i.d, 3
  %i.au = shl i64 %n.vec175, 3                    ; 2 uses
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %i.aw = getelementptr i8, ptr %2, i64 %i.au
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.ax = shl i64 %index177, 3                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.ax ; 2 uses
  %next.gep179 = getelementptr i8, ptr %2, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load180 = load <2 x i64>, ptr %next.gep179, align 8
  %wide.load181 = load <2 x i64>, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %next.gep178, i64 16
  store <2 x i64> %wide.load180, ptr %next.gep178, align 8
  store <2 x i64> %wide.load181, ptr %i.az, align 8
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.ba, label %middle.block183, label %vector.body176, !llvm.loop !415

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.d, %n.vec175
  br i1 %cmp.n184, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i47.preheader254

.lr.ph.i.i.i.i.i47.preheader254:                  ; preds = %.lr.ph.i.i.i.i.i47.preheader, %middle.block183
  %.012.i.i.i.i.i.ph = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.at, %middle.block183 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.av, %middle.block183 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.aw, %middle.block183 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader254, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i47 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i47 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %i.bb = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.bb, ptr %.0811.i.i.i.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.be = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bf = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i47, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !416

_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.m ; 4 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bg, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bh = add i64 %i.a, %i.l
  %i.bi = add i64 %i.j, %i.b
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = add i64 %i.bj, -8                       ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bk, 72
  %i.bn = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.bn, -32
  %or.cond245 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond245, label %.lr.ph.i.i.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.h, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bg, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.br ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bg, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep111, align 8
  %wide.load112 = load <2 x i64>, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load112, ptr %i.bt, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !417

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader258

.lr.ph.i.i.i.i.preheader258:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader258, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %i.bv = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bv, ptr %.011.i.i.i.i, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bw, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !418

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.g, align 8
  br label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.by = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bz = ptrtoaddr ptr %i.by to i64
  %i.ca = sub nuw nsw i64 %i.d, %i.n
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca ; 6 uses
  store ptr %i.cb, ptr %i.g, align 8
  %i.cc = icmp eq ptr %1, %i.h
  br i1 %i.cc, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, label %.lr.ph.i.i.i.i.i48.preheader

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cd = sub i64 %i.j, %i.l
  %i.ce = add i64 %i.cd, -8                       ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %i.ce, 136
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %i.ch = add i64 %i.c, %i.bz
  %i.ci = sub i64 %i.j, %i.ch
  %diff.check115 = icmp ugt i64 %i.ci, -32
  br i1 %diff.check115, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec120 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.cj = shl i64 %n.vec120, 3                    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cb, i64 %i.cj
  %i.cl = getelementptr i8, ptr %1, i64 %i.cj
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.cm = shl i64 %index122, 3                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.cb, i64 %i.cm ; 2 uses
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load125 = load <2 x i64>, ptr %next.gep124, align 8
  %wide.load126 = load <2 x i64>, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x i64> %wide.load125, ptr %next.gep123, align 8
  store <2 x i64> %wide.load126, ptr %i.co, align 8
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.cp, label %middle.block128, label %vector.body121, !llvm.loop !419

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.cg, %n.vec120
  br i1 %cmp.n129, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48.preheader257

.lr.ph.i.i.i.i.i48.preheader257:                  ; preds = %vector.memcheck114, %.lr.ph.i.i.i.i.i48.preheader, %middle.block128
  %.08.i.i.i.i.i49.ph = phi ptr [ %i.cb, %vector.memcheck114 ], [ %i.cb, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.ck, %middle.block128 ]
  %.sroa.04.07.i.i.i.i.i50.ph = phi ptr [ %1, %vector.memcheck114 ], [ %1, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cl, %middle.block128 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader257, %.lr.ph.i.i.i.i.i48
  %.08.i.i.i.i.i49 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i48 ], [ %.08.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i50 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.04.07.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %i.cq = load i64, ptr %.sroa.04.07.i.i.i.i.i50, align 8
  store i64 %i.cq, ptr %.08.i.i.i.i.i49, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i50, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i49, i64 8
  %i.ct = icmp eq ptr %i.cr, %i.h
  br i1 %i.ct, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48, !llvm.loop !420

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit: ; preds = %.lr.ph.i.i.i.i.i48, %middle.block128
  %.pre90 = load ptr, ptr %i.g, align 8
  br label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52: ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cu = phi ptr [ %.pre90, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit ], [ %i.cb, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.m
  store ptr %i.cv, ptr %i.g, align 8
  %i.cw = ashr exact i64 %i.m, 3                  ; 6 uses
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i54.preheader, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52
  %min.iters.check135 = icmp ult i64 %i.cw, 8
  %i.cy = sub i64 %i.b, %i.l
  %diff.check133 = icmp ugt i64 %i.cy, -32
  %or.cond246 = or i1 %min.iters.check135, %diff.check133
  br i1 %or.cond246, label %.lr.ph.i.i.i.i.i54.preheader255, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec138 = and i64 %i.cw, 9223372036854775804  ; 3 uses
  %i.cz = and i64 %i.cw, 3
  %i.da = shl i64 %n.vec138, 3                    ; 2 uses
  %i.db = getelementptr i8, ptr %1, i64 %i.da
  %i.dc = getelementptr i8, ptr %2, i64 %i.da
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.dd = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.dd ; 2 uses
  %next.gep142 = getelementptr i8, ptr %2, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep142, align 8
  %wide.load144 = load <2 x i64>, ptr %i.de, align 8
  %i.df = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep141, align 8
  store <2 x i64> %wide.load144, ptr %i.df, align 8
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.dg, label %middle.block146, label %vector.body139, !llvm.loop !421

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.cw, %n.vec138
  br i1 %cmp.n147, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i54.preheader255

.lr.ph.i.i.i.i.i54.preheader255:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block146
  %.012.i.i.i.i.i55.ph = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cz, %middle.block146 ]
  %.0811.i.i.i.i.i56.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.db, %middle.block146 ]
  %.0910.i.i.i.i.i57.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.dc, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader255, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0811.i.i.i.i.i56 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i54 ], [ %.0811.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0910.i.i.i.i.i57 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i54 ], [ %.0910.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %i.dh = load i64, ptr %.0910.i.i.i.i.i57, align 8
  store i64 %i.dh, ptr %.0811.i.i.i.i.i56, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i57, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i56, i64 8
  %i.dk = add nsw i64 %.012.i.i.i.i.i55, -1
  %i.dl = icmp samesign ugt i64 %.012.i.i.i.i.i55, 1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i54, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !422

bb.h:                                             ; preds = %bb.b
  %i.dm = load ptr, ptr %0, align 8               ; 7 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 4 uses
  %i.do = sub i64 %i.j, %i.dn
  %i.dp = ashr exact i64 %i.do, 3                 ; 4 uses
  %i.dq = sub nsw i64 1152921504606846975, %i.dp
  %i.dr = icmp ult i64 %i.dq, %i.d
  br i1 %i.dr, label %bb.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #27
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.d)
  %i.ds = add nsw i64 %.sroa.speculated.i, %i.dp  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dp
  %i.du = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975)
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #26
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dy = phi ptr [ %i.dx, %bb.j ], [ null, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.dz = icmp eq ptr %i.dm, %1
  br i1 %i.dz, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i59.preheader:                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit
  %i.ea = ptrtoaddr ptr %i.dy to i64
  %5 = ptrtoint ptr %1 to i64
  %i.eb = sub i64 %5, %i.dn
  %6 = add i64 %i.eb, -8                          ; 2 uses
  %i.ec = lshr i64 %6, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check191 = icmp ult i64 %6, 72
  %i.ee = sub i64 %i.dn, %i.ea
  %diff.check189 = icmp ugt i64 %i.ee, -32
  %or.cond247 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond247, label %.lr.ph.i.i.i.i.i59.preheader252, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i.i.i.i59.preheader
  %n.vec194 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec194, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dy, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dm, i64 %i.ef
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph192
  %index196 = phi i64 [ 0, %vector.ph192 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ei = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.dy, i64 %i.ei ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.dm, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <2 x i64>, ptr %next.gep198, align 8
  %wide.load200 = load <2 x i64>, ptr %i.ej, align 8
  %i.ek = getelementptr i8, ptr %next.gep197, i64 16
  store <2 x i64> %wide.load199, ptr %next.gep197, align 8
  store <2 x i64> %wide.load200, ptr %i.ek, align 8
  %index.next201 = add nuw i64 %index196, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.el, label %middle.block202, label %vector.body195, !llvm.loop !423

middle.block202:                                  ; preds = %vector.body195
  %cmp.n203 = icmp eq i64 %i.ed, %n.vec194
  br i1 %cmp.n203, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader252

.lr.ph.i.i.i.i.i59.preheader252:                  ; preds = %.lr.ph.i.i.i.i.i59.preheader, %middle.block202
  %.08.i.i.i.i.i60.ph = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.eg, %middle.block202 ]
  %.sroa.04.07.i.i.i.i.i61.ph = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.eh, %middle.block202 ]
  br label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %.lr.ph.i.i.i.i.i59.preheader252, %.lr.ph.i.i.i.i.i59
  %.08.i.i.i.i.i60 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i59 ], [ %.08.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i61 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i59 ], [ %.sroa.04.07.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %i.em = load i64, ptr %.sroa.04.07.i.i.i.i.i61, align 8
  store i64 %i.em, ptr %.08.i.i.i.i.i60, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i61, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i60, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %1
  br i1 %i.ep, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !424

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i59, %middle.block202, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.dy, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit ], [ %i.eg, %middle.block202 ], [ %i.eo, %.lr.ph.i.i.i.i.i59 ] ; 4 uses
  %i.eq = sub i64 %i.a, %i.b
  %i.er = add i64 %i.eq, -8                       ; 2 uses
  %i.es = lshr i64 %i.er, 3
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %i.er, 72
  %.0.lcssa.i.i.i.i.i62207 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i62 to i64
  %i.eu = sub i64 %i.b, %.0.lcssa.i.i.i.i.i62207
  %diff.check208 = icmp ugt i64 %i.eu, -32
  %or.cond248 = select i1 %min.iters.check210, i1 true, i1 %diff.check208
  br i1 %or.cond248, label %.lr.ph.i.i.i.i64.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec213 = and i64 %i.et, 4611686018427387900  ; 3 uses
  %i.ev = shl i64 %n.vec213, 3                    ; 2 uses
  %i.ew = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ev ; 2 uses
  %i.ex = getelementptr i8, ptr %2, i64 %i.ev
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.ey = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ey ; 2 uses
  %next.gep217 = getelementptr i8, ptr %2, i64 %i.ey ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <2 x i64>, ptr %next.gep217, align 8
  %wide.load219 = load <2 x i64>, ptr %i.ez, align 8
  %i.fa = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x i64> %wide.load218, ptr %next.gep216, align 8
  store <2 x i64> %wide.load219, ptr %i.fa, align 8
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.fb, label %middle.block221, label %vector.body214, !llvm.loop !425

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.et, %n.vec213
  br i1 %cmp.n222, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64.preheader

.lr.ph.i.i.i.i64.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block221
  %.011.i.i.i.i65.ph = phi ptr [ %.0.lcssa.i.i.i.i.i62, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.ew, %middle.block221 ]
  %.0810.i.i.i.i66.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.ex, %middle.block221 ]
  br label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i.i.i64.preheader, %.lr.ph.i.i.i.i64
  %.011.i.i.i.i65 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i64 ], [ %.011.i.i.i.i65.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %.0810.i.i.i.i66 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i64 ], [ %.0810.i.i.i.i66.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %i.fc = load i64, ptr %.0810.i.i.i.i66, align 8
  store i64 %i.fc, ptr %.011.i.i.i.i65, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i66, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.fd, %3
  br i1 %.not.i.i.i.i67, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64, !llvm.loop !426

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69: ; preds = %.lr.ph.i.i.i.i64, %middle.block221
  %.lcssa109 = phi ptr [ %i.ew, %middle.block221 ], [ %i.fe, %.lr.ph.i.i.i.i64 ] ; 5 uses
  %i.ff = icmp eq ptr %1, %i.h
  br i1 %i.ff, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.lcssa109226 = ptrtoaddr ptr %.lcssa109 to i64
  %7 = ptrtoint ptr %1 to i64
  %i.fg = sub i64 %i.j, %7
  %8 = add i64 %i.fg, -8                          ; 2 uses
  %i.fh = lshr i64 %8, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %8, 72
  %i.fj = sub i64 %4, %.lcssa109226
  %diff.check227 = icmp ugt i64 %i.fj, -32
  %or.cond249 = select i1 %min.iters.check229, i1 true, i1 %diff.check227
  br i1 %or.cond249, label %.lr.ph.i.i.i.i.i70.preheader250, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec232 = and i64 %i.fi, 4611686018427387900  ; 3 uses
  %i.fk = shl i64 %n.vec232, 3                    ; 2 uses
  %i.fl = getelementptr i8, ptr %.lcssa109, i64 %i.fk ; 2 uses
  %i.fm = getelementptr i8, ptr %1, i64 %i.fk
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph230
  %index234 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.fn = shl i64 %index234, 3                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.lcssa109, i64 %i.fn ; 2 uses
  %next.gep236 = getelementptr i8, ptr %1, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load237 = load <2 x i64>, ptr %next.gep236, align 8
  %wide.load238 = load <2 x i64>, ptr %i.fo, align 8
  %i.fp = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x i64> %wide.load237, ptr %next.gep235, align 8
  store <2 x i64> %wide.load238, ptr %i.fp, align 8
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.fq, label %middle.block240, label %vector.body233, !llvm.loop !427

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.fi, %n.vec232
  br i1 %cmp.n241, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader250

.lr.ph.i.i.i.i.i70.preheader250:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block240
  %.08.i.i.i.i.i71.ph = phi ptr [ %.lcssa109, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fl, %middle.block240 ]
  %.sroa.04.07.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fm, %middle.block240 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader250, %.lr.ph.i.i.i.i.i70
  %.08.i.i.i.i.i71 = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i70 ], [ %.08.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i72 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.04.07.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %i.fr = load i64, ptr %.sroa.04.07.i.i.i.i.i72, align 8
  store i64 %i.fr, ptr %.08.i.i.i.i.i71, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i72, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i71, i64 8 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.h
  br i1 %i.fu, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !428

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block240, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa109, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69 ], [ %i.fl, %middle.block240 ], [ %i.ft, %.lr.ph.i.i.i.i.i70 ]
  %.not.i75 = icmp eq ptr %i.dm, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74
  %i.fv = load ptr, ptr %i.e, align 8
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.fx) #28
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, %bb.k
  store ptr %i.dy, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.g, align 8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dv
  store ptr %i.fy, ptr %i.e, align 8
  br label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i54, %.lr.ph.i.i.i.i.i47, %middle.block146, %middle.block183, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_node_builtins.cc() #0 section ".text.startup" {
bb.a:
  %i.a = tail call noundef i32 @uv_mutex_init(ptr noundef nonnull @_ZN4node8builtins12_GLOBAL__N_127externalized_builtins_mutexE) #25
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %__cxx_global_var_init.21.exit, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node9MutexBaseINS_16LibuvMutexTraitsEEC1EvE20error_and_abort_args) #25
  tail call void @abort() #27
  unreachable

__cxx_global_var_init.21.exit:                    ; preds = %bb.a
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4node9MutexBaseINS_16LibuvMutexTraitsEED2Ev, ptr nonnull @_ZN4node8builtins12_GLOBAL__N_127externalized_builtins_mutexE, ptr nonnull @__dso_handle) #25 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, i64 48), ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, align 8
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, i64 32), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, i64 40), i8 0, i64 16, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN4node26StaticExternalByteResourceIttN2v86String22ExternalStringResourceEEESt14default_deleteISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEED2Ev, ptr nonnull @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress noinline nounwind optsize uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { "function-inline-cost-multiplier"="2" }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { cold nounwind }
attributes #32 = { cold }
attributes #33 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE: argument 0"}
!10 = distinct !{!10, !"_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN8simdjson8internal18structure_analyzer15analyze_elementERKNS_3dom7elementEm: argument 0"}
!13 = distinct !{!13, !"_ZN8simdjson8internal18structure_analyzer15analyze_elementERKNS_3dom7elementEm"}
!14 = !{!12, !9}
!15 = !{ptr @_ZN8simdjson8internal18structure_analyzer15analyze_elementERKNS_3dom7elementEm}
!16 = distinct !{null, null, null}
!17 = distinct !{null, null}
!18 = distinct !{null}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN8simdjson8internal18structure_analyzer13analyze_arrayERKNS_3dom5arrayERKNS_22fractured_json_optionsE: argument 0"}
!21 = distinct !{!21, !"_ZN8simdjson8internal18structure_analyzer13analyze_arrayERKNS_3dom5arrayERKNS_22fractured_json_optionsE"}
!22 = distinct !{null}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN8simdjson8internal18structure_analyzer14analyze_objectERKNS_3dom6objectERKNS_22fractured_json_optionsE: argument 0"}
!25 = distinct !{!25, !"_ZN8simdjson8internal18structure_analyzer14analyze_objectERKNS_3dom6objectERKNS_22fractured_json_optionsE"}
!26 = !{i8 0, i8 2}
!27 = distinct !{null}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZSt11make_sharedIN4node8builtins13BuiltinLoader16BuiltinCodeCacheEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!30 = distinct !{!30, !"_ZSt11make_sharedIN4node8builtins13BuiltinLoader16BuiltinCodeCacheEJEESt10shared_ptrIT_EDpOT0_"}
!31 = !{!32, !29}
!32 = distinct !{!32, !33, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN4node8builtins13BuiltinLoader16BuiltinCodeCacheESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!33 = distinct !{!33, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN4node8builtins13BuiltinLoader16BuiltinCodeCacheESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZSt11make_sharedIN4node21ThreadsafeCopyOnWriteISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8builtins13BuiltinSourceESt4lessIS8_ESaISt4pairIKS8_SA_EEEE4ImplEJSH_EESt10shared_ptrIT_EDpOT0_: argument 0"}
end_hunk_0
