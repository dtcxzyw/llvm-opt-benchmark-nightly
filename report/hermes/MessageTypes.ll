inline.NumInlined: 13240
inline.NumDeleted: 6779
begin_hunk_0_@_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !293  ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !2123
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !87
  %i.x = icmp eq i64 %.sroa.22.0.copyload, %2
  br i1 %i.x, label %bb.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %2, 0
  br i1 %i.y, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread11, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.d
  %bcmp = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %1, i64 %2)
  %i.z = icmp eq i32 %bcmp, 0
  br i1 %i.z, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread11, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread11:     ; preds = %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.aa = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.ab = sub i64 %i.aa, %i.d
  %i.ac = ashr exact i64 %i.ab, 3
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.c, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11
  %.sroa.09.0 = phi i64 [ %i.ac, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11 ], [ undef, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit ], [ undef, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ undef, %bb.c ]
  %.sroa.2.0 = phi i8 [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11 ], [ 0, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes3cdp7message12NotificationD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #25
  unreachable
}

declare noundef ptr @_ZN6hermes6parser11JSONFactory9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare { ptr, i8 } @_ZN8facebook6hermes3cdp8parseStrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN6hermes6parser11JSONFactoryE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEEC2ESt16initializer_listISO_EmRKSV_RKST_RKSP_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %.idx = mul nuw nsw i64 %2, 40
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 1, ptr %i.c, align 8, !tbaa !289
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !2125
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %3) #21 ; 6 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !289
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEEC2EmRKSV_RKST_RKSP_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !301

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !2126
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.k, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISF_EEPKN6hermes6parser10JSONObjectEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, !prof !301

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISF_EEPKN6hermes6parser10JSONObjectEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISF_EEPKN6hermes6parser10JSONObjectEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.b, %bb.c ], [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISF_EEPKN6hermes6parser10JSONObjectEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i ]
  store ptr %.0.i.i.i, ptr %0, align 8, !tbaa !288
  store i64 %i.g, ptr %i.c, align 8, !tbaa !289
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEEC2EmRKSV_RKST_RKSP_.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEEC2EmRKSV_RKST_RKSP_.exit.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %0, ptr %7, align 8, !tbaa !2127
  %.not7.i.i.i = icmp eq i64 %2, 0
  br i1 %.not7.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKSO_EET_S15_mRKSV_RKST_RKSP_St17integral_constantIbLb1EE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEEC2EmRKSV_RKST_RKSP_.exit.i, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEEC2EmRKSV_RKST_RKSP_.exit.i ] ; 3 uses
  %i.o = call { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_insert_uniqueIRS7_RKSO_NSQ_10_AllocNodeISaINSQ_10_Hash_nodeISO_Lb1EEEEEEEES6_INSQ_14_Node_iteratorISO_Lb0ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.a
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKSO_EET_S15_mRKSV_RKST_RKSP_St17integral_constantIbLb1EE.exit, label %.lr.ph.i.i.i, !llvm.loop !2129

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKSO_EET_S15_mRKSV_RKST_RKSP_St17integral_constantIbLb1EE.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEEC2EmRKSV_RKST_RKSP_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_insert_uniqueIRS7_RKSO_NSQ_10_AllocNodeISaINSQ_10_Hash_nodeISO_Lb1EEEEEEEES6_INSQ_14_Node_iteratorISO_Lb0ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2130
  %.not = icmp ugt i64 %i.c, 20
  br i1 %.not, label %..thread_crit_edge, label %bb.b

..thread_crit_edge:                               ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !9
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.025.040 = load ptr, ptr %i.d, align 8, !tbaa !285 ; 3 uses
  %.not3341 = icmp eq ptr %.sroa.025.040, null
  %.pre54 = load ptr, ptr %1, align 8             ; 4 uses
  br i1 %.not3341, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  %.fr44 = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp eq i64 %.fr44, 0
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29.us
  %.sroa.025.042.us = phi ptr [ %.sroa.025.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29.us ], [ %.sroa.025.040, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.025.042.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29.us: ; preds = %.lr.ph.split.us
  %.sroa.025.0.us = load ptr, ptr %.sroa.025.042.us, align 8, !tbaa !285 ; 2 uses
  %.not33.us = icmp eq ptr %.sroa.025.0.us, null
  br i1 %.not33.us, label %.thread, label %.lr.ph.split.us, !llvm.loop !2131

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29
  %.sroa.025.042 = phi ptr [ %.sroa.025.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29 ], [ %.sroa.025.040, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.025.042, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !45
  %i.m = icmp eq i64 %.fr44, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.042, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.pre54, ptr %i.o, i64 %.fr44)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit
  %.sroa.025.0 = load ptr, ptr %.sroa.025.042, align 8, !tbaa !285 ; 2 uses
  %.not33 = icmp eq ptr %.sroa.025.0, null
  br i1 %.not33, label %.thread, label %.lr.ph.split, !llvm.loop !2131

.thread:                                          ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29.us, %..thread_crit_edge, %bb.b
  %i.q = phi ptr [ %.pre, %..thread_crit_edge ], [ %.pre54, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29.us ], [ %.pre54, %bb.b ], [ %.pre54, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread29 ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = tail call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911) #21 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !289  ; 3 uses
  %i.w = urem i64 %i.t, %i.v                      ; 4 uses
  %i.x = load i64, ptr %i.b, align 8, !tbaa !2130
  %i.y = icmp ugt i64 %i.x, 20
  br i1 %i.y, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.thread
  %i.z = load ptr, ptr %0, align 8, !tbaa !288
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2132 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !285 ; 3 uses
  %4 = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %4                      ; 3 uses
  %i.ad = icmp eq i64 %.fr22.i.i, 0
  %5 = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !2133 ; 2 uses
  br i1 %i.ad, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.d, %bb.f
  %i.ae = phi i64 [ %i.al, %bb.f ], [ %.pre26.i.i, %bb.d ]
  %.0.us.i.i = phi ptr [ %i.aj, %bb.f ], [ %i.ac, %bb.d ] ; 3 uses
  %i.af = icmp eq i64 %i.t, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.us.i.i

bb.e:                                             ; preds = %.split.us.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !45
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.e, %.split.us.i.i
  %i.aj = load ptr, ptr %.0.us.i.i, align 8, !tbaa !285 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.us.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.us.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2133 ; 2 uses
  %i.am = urem i64 %i.al, %i.v
  %.not19.us.i.i = icmp eq i64 %i.am, %i.w
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge, !llvm.loop !2135

.split.i.i:                                       ; preds = %bb.d, %bb.h
  %i.an = phi i64 [ %i.ax, %bb.h ], [ %.pre26.i.i, %bb.d ]
  %.0.i.i = phi ptr [ %i.av, %bb.h ], [ %i.ac, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ap = icmp eq i64 %i.t, %i.an
  br i1 %i.ap, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.i.i

bb.g:                                             ; preds = %.split.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = icmp eq i64 %.fr22.i.i, %i.ar
  br i1 %i.as, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !9
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %5, ptr %i.at, i64 %.fr22.i.i)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.i.i, %bb.g, %.split.i.i
  %i.av = load ptr, ptr %.0.i.i, align 8, !tbaa !285 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.av, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !2133 ; 2 uses
  %i.ay = urem i64 %i.ax, %i.v
  %.not19.i.i = icmp eq i64 %i.ay, %i.w
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge, !llvm.loop !2135

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.i.i, %bb.h, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread.us.i.i, %bb.c, %.thread
  %i.az = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #23 ; 12 uses
  store ptr null, ptr %i.az, align 8, !tbaa !285
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !44
  %6 = load ptr, ptr %1, align 8, !tbaa !9        ; 2 uses
  %7 = load i64, ptr %i.r, align 8, !tbaa !45     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %7, ptr %i.a, align 8, !tbaa !87
  %i.bc = icmp ugt i64 %7, 15
  br i1 %i.bc, label %bb.i, label %._crit_edge.i.i.i.i.i.i

bb.i:                                             ; preds = %.critedge
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !9
  %i.be = load i64, ptr %i.a, align 8, !tbaa !87
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %.critedge
  %i.bf = phi ptr [ %i.bd, %bb.i ], [ %i.bb, %.critedge ] ; 2 uses
  switch i64 %7, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt8__detail12_NodeBuilderINS_10_Select1stEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairISA_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISI_EEPKN6hermes6parser10JSONObjectEEENS_10_AllocNodeISaINS_10_Hash_nodeIST_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKS11_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bg = load i8, ptr %6, align 1, !tbaa !15
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !15
  br label %_ZNSt8__detail12_NodeBuilderINS_10_Select1stEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairISA_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISI_EEPKN6hermes6parser10JSONObjectEEENS_10_AllocNodeISaINS_10_Hash_nodeIST_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKS11_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %6, i64 %7, i1 false)
  br label %_ZNSt8__detail12_NodeBuilderINS_10_Select1stEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairISA_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISI_EEPKN6hermes6parser10JSONObjectEEENS_10_AllocNodeISaINS_10_Hash_nodeIST_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKS11_.exit

_ZNSt8__detail12_NodeBuilderINS_10_Select1stEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairISA_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISI_EEPKN6hermes6parser10JSONObjectEEENS_10_AllocNodeISaINS_10_Hash_nodeIST_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKS11_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.j, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !45
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !316
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load i64, ptr %i.u, align 8, !tbaa !289
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !2130
  %i.br = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 noundef %i.bp, i64 noundef %i.bq, i64 noundef 1) #21 ; 2 uses
  %i.bs = extractvalue { i8, i64 } %i.br, 0
  %i.bt = trunc i8 %i.bs to i1
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt8__detail12_NodeBuilderINS_10_Select1stEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairISA_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISI_EEPKN6hermes6parser10JSONObjectEEENS_10_AllocNodeISaINS_10_Hash_nodeIST_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKS11_.exit
  %i.bu = extractvalue { i8, i64 } %i.br, 1
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bu)
  %i.bv = load i64, ptr %i.u, align 8, !tbaa !289
  %i.bw = urem i64 %i.t, %i.bv
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt8__detail12_NodeBuilderINS_10_Select1stEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairISA_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISI_EEPKN6hermes6parser10JSONObjectEEENS_10_AllocNodeISaINS_10_Hash_nodeIST_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKS11_.exit
  %.0.i17 = phi i64 [ %i.bw, %bb.l ], [ %i.w, %_ZNSt8__detail12_NodeBuilderINS_10_Select1stEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairISA_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISI_EEPKN6hermes6parser10JSONObjectEEENS_10_AllocNodeISaINS_10_Hash_nodeIST_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKS11_.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 %i.t, ptr %i.bx, align 8, !tbaa !2133
  %i.by = load ptr, ptr %0, align 8, !tbaa !288   ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.0.i17 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2132 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i18, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !285
  store ptr %i.cb, ptr %i.az, align 8, !tbaa !285
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !2132
  store ptr %i.az, ptr %i.cc, align 8, !tbaa !285
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !277 ; 3 uses
  store ptr %i.ce, ptr %i.az, align 8, !tbaa !285
  store ptr %i.az, ptr %i.cd, align 8, !tbaa !277
  %.not11.i.i = icmp eq ptr %i.ce, null
  br i1 %.not11.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !289
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !2133
  %i.ci = urem i64 %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ci
  store ptr %i.az, ptr %i.cj, align 8, !tbaa !2132
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !2132
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.q, %bb.n
  %i.ck = load i64, ptr %i.b, align 8, !tbaa !2130
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.b, align 8, !tbaa !2130
  br label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.i.i, %bb.e, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.028.1 = phi ptr [ %i.az, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.025.042.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.e ], [ %.sroa.025.042, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %.lr.ph.split.us ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueISP_Lb1EEE.exit.i.i ], [ 0, %bb.e ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISE_EEPKN6hermes6parser10JSONObjectEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueISP_Lb1EEE.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !301

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !2126
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISF_EEPKN6hermes6parser10JSONObjectEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !301

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISF_EEPKN6hermes6parser10JSONObjectEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISF_EEPKN6hermes6parser10JSONObjectEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISF_EEPKN6hermes6parser10JSONObjectEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !277  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !277
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !285 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2133
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2132 ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !277
  store ptr %i.o, ptr %.031, align 8, !tbaa !285
  store ptr %.031, ptr %i.g, align 8, !tbaa !277
  store ptr %i.g, ptr %i.m, align 8, !tbaa !2132
  %i.p = load ptr, ptr %.031, align 8, !tbaa !285
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !2132
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !285
  store ptr %i.r, ptr %.031, align 8, !tbaa !285
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !2132
  store ptr %.031, ptr %i.s, align 8, !tbaa !285
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2136

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !288    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !289
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #22
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10unique_ptrIN8facebook6hermes3cdp7message7RequestESt14default_deleteISD_EEPKN6hermes6parser10JSONObjectEEESaISO_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSQ_18_Mod_range_hashingENSQ_20_Default_ranged_hashENSQ_20_Prime_rehash_policyENSQ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !289
  store ptr %.0.i, ptr %0, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes3cdp7message13valueFromJsonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S9_EE5valueESt10unique_ptrISB_St14default_deleteISB_EEE4typeEPKN6hermes6parser9JSONValueE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.1229") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !73
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit, label %bb.h

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !296  ; 4 uses
end_hunk_0
