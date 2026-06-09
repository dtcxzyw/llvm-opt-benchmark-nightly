inline.NumInlined: 1069
inline.NumDeleted: 614
begin_hunk_0_@_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJSA_EEES7_INSD_14_Node_iteratorISA_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %i.bk = load i64, ptr %i.ah, align 8
  %i.bl = urem i64 %i.ag, %i.bk
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge17
  %.0.i18 = phi i64 [ %i.bl, %bb.j ], [ %i.aj, %.critedge17 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.ag, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.0.i18
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bq, align 8
  store ptr %i.br, ptr %i.i, align 8
  %i.bs = load ptr, ptr %i.bn, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0.i18
  %i.bu = load ptr, ptr %i.bt, align 8
  store ptr %i.i, ptr %i.bu, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISA_Lb1EEEm.exit

bb.m:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  store ptr %i.bw, ptr %i.i, align 8
  store ptr %i.i, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not11.i.i = icmp eq ptr %i.bx, null
  br i1 %.not11.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.bn, align 8
  %i.bz = load i64, ptr %i.ah, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = urem i64 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cc
  store ptr %i.i, ptr %i.cd, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ce = load ptr, ptr %i.bn, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0.i18
  store ptr %i.bv, ptr %i.cf, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISA_Lb1EEEm.exit

_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISA_Lb1EEEm.exit: ; preds = %bb.l, %bb.o
  %i.cg = load i64, ptr %i.l, align 8
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.l, align 8
  br label %_ZNKSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit

_ZNKSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit: ; preds = %bb.e, %bb.h, %bb.g, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISA_Lb1EEEm.exit
  %.sroa.030.0 = phi ptr [ %i.i, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISA_Lb1EEEm.exit ], [ %i.bb, %bb.h ], [ %i.ao, %bb.g ], [ %.sroa.024.0, %bb.e ]
  %.sroa.4.0 = phi i8 [ 1, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISA_Lb1EEEm.exit ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.030.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #4

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = icmp ult i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3                        ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = icmp ugt i64 %i.e, %i.j
  br i1 %i.k, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_14IterationCountEELb1EEEEEE19_M_allocate_bucketsEm.exit.i, !prof !40

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.e) #13
  %.pre.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_14IterationCountEELb1EEEEEE19_M_allocate_bucketsEm.exit.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_14IterationCountEELb1EEEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.f, %bb.e
  %i.l = phi i64 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = add i64 %i.l, %i.e
  store i64 %i.n, ptr %i.h, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_14IterationCountEELb1EEEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.m, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_14IterationCountEELb1EEEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  store ptr null, ptr %i.o, align 8
  %.not29 = icmp eq ptr %i.p, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.q, %bb.j ], [ %i.p, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.q = load ptr, ptr %.031, align 8             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.031, i64 32
  %i.s = load i64, ptr %i.r, align 8
  %i.t = urem i64 %i.s, %1                        ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.v, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.o, align 8
  store ptr %i.w, ptr %.031, align 8
  store ptr %.031, ptr %i.o, align 8
  store ptr %i.o, ptr %i.u, align 8
  %i.x = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.x, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.y, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.v, align 8
  store ptr %i.z, ptr %.031, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  store ptr %.031, ptr %i.aa, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.t, %bb.h ], [ %i.t, %bb.g ]
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_14IterationCountEENS1_13ZoneAllocatorISA_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE22find_or_prepare_insertIjEESt4pairINSD_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !44
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !noalias !44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_smallIjEESt4pairINSD_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !noalias !44
  %i.h = load i32, ptr %2, align 4, !noalias !44
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_smallIjEESt4pairINSD_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !44
  store ptr %1, ptr %3, align 8, !noalias !44
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.j, align 8, !noalias !44
  %i.k = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIjEEjLb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #13, !noalias !44 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !44
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !44
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.m, align 8, !noalias !44
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_smallIjEESt4pairINSD_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !49 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !49
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !49
  %sext.i = shl i64 %i.q, 48
  %i.r = ashr exact i64 %sext.i, 48
  %i.s = load i32, ptr %2, align 4, !noalias !49  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = xor i64 %i.r, %i.t
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 8779197792823184629 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64                   ; 3 uses
  %i.aa = lshr i64 %i.z, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ac, align 8, !noalias !49 ; 3 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.z, %bb.f ], [ %i.bd, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bc, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1), !noalias !49
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !noalias !49 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ae, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not65.i = icmp eq i16 %i.aj, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.066.i = phi i16 [ %i.as, %.critedge.i ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0.i, %i.al
  %i.an = and i64 %i.am, %i.a                     ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !49
  %i.aq = icmp eq i32 %i.ap, %i.s
  br i1 %i.aq, label %.critedge21.i, label %.critedge.i, !prof !42

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ar = add i16 %.sroa.035.066.i, -1
  %i.as = and i16 %i.ar, %.sroa.035.066.i         ; 2 uses
  %.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.at = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.au, 0
  br i1 %.not57.i, label %bb.h, label %.thread.i, !prof !40

.thread.i:                                        ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.a
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i64 %i.ay, i64 %.sroa.15.0.i) #13, !noalias !49 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.o, align 8, !noalias !49
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.az
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ac, align 8, !noalias !49
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_largeIjEESt4pairINSD_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.bc = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bd = add i64 %i.bc, %.sroa.7.0.i
  br label %bb.g

.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.an
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.an
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_largeIjEESt4pairINSD_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_largeIjEESt4pairINSD_8iteratorEbERKT_.exit: ; preds = %.thread.i, %.critedge21.i
  %.sink83.i = phi ptr [ %i.ba, %.thread.i ], [ %i.bf, %.critedge21.i ] ; 2 uses
  %.sink81.i = phi ptr [ %i.bb, %.thread.i ], [ %i.be, %.critedge21.i ]
  %.sink.i = phi i8 [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink83.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_smallIjEESt4pairINSD_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_smallIjEESt4pairINSD_8iteratorEbERKT_.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_largeIjEESt4pairINSD_8iteratorEbERKT_.exit
  %.sink83.i.sink = phi ptr [ %.sink83.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_largeIjEESt4pairINSD_8iteratorEbERKT_.exit ], [ %i.l, %bb.e ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ @_ZN4absl18container_internal11kSooControlE, %bb.d ]
  %.sink81.i.sink = phi ptr [ %.sink81.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_largeIjEESt4pairINSD_8iteratorEbERKT_.exit ], [ %i.n, %bb.e ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %.sink.i.sink = phi i8 [ %.sink.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE28find_or_prepare_insert_largeIjEESt4pairINSD_8iteratorEbERKT_.exit ], [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store ptr %.sink83.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.bg, align 8
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIjEEjLb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = xor i64 %2, %i.b
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm4EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #8 comdat {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m(ptr noundef %0, i64 noundef %1) #8 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %1, 7                            ; 2 uses
  %.not.i = icmp ugt i64 %i.b, -9
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ugt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.c) #13
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8
  br label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit

_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = add i64 %i.j, %i.c
  store i64 %i.l, ptr %i.f, align 8
  ret ptr %i.k
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #8 comdat {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSJ_PFvSJ_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #6 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !52

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bb, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = load i32, ptr %i.u, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = xor i64 %i.w, %i.y
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64                 ; 6 uses
  %i.af = lshr i64 %i.ae, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8           ; 2 uses
  %i.ah = sub i64 %i.t, %i.ae                     ; 2 uses
  %i.ai = and i64 %i.h, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ah, 15
  %i.al = add i64 %i.ak, %i.ae
  %i.am = and i64 %i.al, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.b, %i.ae
  %.not.i = icmp ult i64 %i.an, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %i.a, %i.ae                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.as, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !40

bb.g:                                             ; preds = %bb.f
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %i.ao, %i.au
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ag, i64 noundef %i.t, i64 noundef %i.ae) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.av, %bb.g ], [ %i.am, %bb.d ] ; 3 uses
  %i.aw = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ag, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.az = load i32, ptr %i.u, align 4
  store i32 %i.az, ptr %i.ay, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i16 %.sroa.052.061, -1
  %i.bb = and i16 %i.ba, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIjEEjLb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !align !53
  %i.c = load i32, ptr %i.b, align 4
end_hunk_0
